// lib/features/premium/premium_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'package:nuria/features/limit/usage_service.dart';
import 'package:nuria/features/limit/device_id_service.dart';
import 'package:nuria/models/iap_entitlement.dart';
import 'package:nuria/models/iap_transaction.dart';

class IapResult {
  final bool ok;

  /// Client plan naming (Nuria):
  /// "grace" | "blessed" | "guest"
  final String plan;

  final int creditsTotal;
  final int creditsUsed;
  final int creditsRemaining;
  final bool alreadyGranted;

  /// True om backend faktiskt skickade plan-fältet.
  final bool planPresent;

  /// True om backend faktiskt skickade credits-fälten.
  /// (Annars ska klienten aldrig "nolla" credits pga defaults.)
  final bool creditsPresent;

  /// Vid fel (t.ex. verify-fail osv)
  final String? errorCode;
  final String? errorMessage;

  const IapResult({
    required this.ok,
    required this.plan,
    required this.creditsTotal,
    required this.creditsUsed,
    required this.creditsRemaining,
    required this.alreadyGranted,
    required this.planPresent,
    required this.creditsPresent,
    this.errorCode,
    this.errorMessage,
  });

  static int _asInt(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    if (v is double) return v.toInt();
    if (v is num) return v.toInt();
    if (v is String) return int.tryParse(v) ?? 0;
    return 0;
  }

  static String _normalizePlan(dynamic raw) {
    final v = (raw ?? '').toString().trim().toLowerCase();
    if (v.isEmpty) return 'grace';

    // tolerate legacy / backend
    if (v == 'basic' || v == 'free' || v == 'starter') return 'grace';
    if (v == 'champion') return 'blessed';

    // already new
    if (v == 'grace' || v == 'blessed' || v == 'guest') return v;

    return v; // fallback (never crash)
  }

  factory IapResult.fromJson(Map<String, dynamic> json) {
    final hasPlan = json.containsKey('plan') && json['plan'] != null;

    final hasCreditsTotal =
        json.containsKey('creditsTotal') && json['creditsTotal'] != null;
    final hasCreditsUsed =
        json.containsKey('creditsUsed') && json['creditsUsed'] != null;
    final hasCreditsRemaining =
        json.containsKey('creditsRemaining') && json['creditsRemaining'] != null;

    final hasAnyCredits = hasCreditsTotal || hasCreditsUsed || hasCreditsRemaining;

    final rawPlan = (json['plan'] as String?) ?? 'basic';

    return IapResult(
      ok: json['ok'] as bool? ?? false,
      plan: _normalizePlan(rawPlan),
      creditsTotal: _asInt(json['creditsTotal']),
      creditsUsed: _asInt(json['creditsUsed']),
      creditsRemaining: _asInt(json['creditsRemaining']),
      alreadyGranted: json['alreadyGranted'] as bool? ?? false,
      planPresent: hasPlan,
      creditsPresent: hasAnyCredits,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );
  }

  factory IapResult.error({
    required String code,
    required String? message,
  }) {
    return IapResult(
      ok: false,
      plan: 'grace',
      creditsTotal: 0,
      creditsUsed: 0,
      creditsRemaining: 0,
      alreadyGranted: false,
      planPresent: false,
      creditsPresent: false,
      errorCode: code,
      errorMessage: message,
    );
  }

  bool get isBlessed => plan == 'blessed';
}

class PremiumService {
  PremiumService._internal();
  static final PremiumService instance = PremiumService._internal();

  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  /// ✅ Sätt samma region som dina functions kör i.
  final FirebaseFunctions _functions = FirebaseFunctions.instanceFor(
    region: 'us-central1',
  );

  static String _normalizePlan(dynamic raw) {
    final v = (raw ?? '').toString().trim().toLowerCase();
    if (v.isEmpty) return 'grace';

    if (v == 'basic' || v == 'free' || v == 'starter') return 'grace';
    if (v == 'champion') return 'blessed';

    if (v == 'grace' || v == 'blessed' || v == 'guest') return v;

    return v;
  }

  Future<void> activateTestPremium() async {
    final user = _auth.currentUser;
    if (user == null) throw Exception('User is not signed in.');

    final userRef = _firestore.collection('users').doc(user.uid);

    await userRef.set(
      <String, dynamic>{
        // Nuria plan naming
        'plan': 'blessed',
        'testBlessed': true,
        'updatedAt': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );

    final current = UsageService.instance.current;
    UsageService.instance.updateFromMap(<String, dynamic>{
      'allowed': true,
      'plan': 'blessed',
      'creditsTotal': current?.creditsTotal ?? 0,
      'creditsUsed': current?.creditsUsed ?? 0,
      'creditsRemaining': current?.creditsRemaining ?? 0,
    });
  }

  void _applyToUsage(IapResult res) {
    if (!res.ok) return;

    final current = UsageService.instance.current;

    // ✅ Important: never overwrite with defaults if fields were not sent.
    final nextPlan =
        res.planPresent ? _normalizePlan(res.plan) : (current?.plan ?? 'grace');

    final nextCreditsTotal =
        res.creditsPresent ? res.creditsTotal : (current?.creditsTotal ?? 0);
    final nextCreditsUsed =
        res.creditsPresent ? res.creditsUsed : (current?.creditsUsed ?? 0);
    final nextCreditsRemaining = res.creditsPresent
        ? res.creditsRemaining
        : (current?.creditsRemaining ?? 0);

    UsageService.instance.updateFromMap(<String, dynamic>{
      'allowed': true,
      'plan': nextPlan,
      'creditsTotal': nextCreditsTotal,
      'creditsUsed': nextCreditsUsed,
      'creditsRemaining': nextCreditsRemaining,
    });

    if (kDebugMode) {
      debugPrint(
        '[IAP] applyToUsage: plan=$nextPlan total=$nextCreditsTotal '
        'used=$nextCreditsUsed remaining=$nextCreditsRemaining '
        '(planPresent=${res.planPresent} creditsPresent=${res.creditsPresent})',
      );
    }
  }

  /// ✅ Extra safety: after a successful grant, re-sync the authoritative numbers
  /// from Firestore users/{uid}. Never throws.
  Future<void> syncUsageFromFirestoreBestEffort({
    String reason = 'post_purchase',
  }) async {
    final user = _auth.currentUser;
    if (user == null) return;
    // Anonymous Firebase users can purchase (Apple guideline 5.1.1v).

    try {
      final snap = await _firestore.collection('users').doc(user.uid).get();
      if (!snap.exists) return;

      final data = snap.data() ?? <String, dynamic>{};

      final plan = _normalizePlan(
        (data['plan'] as String?) ?? (UsageService.instance.current?.plan ?? 'grace'),
      );

      int asInt(dynamic v) {
        if (v == null) return 0;
        if (v is int) return v;
        if (v is double) return v.toInt();
        if (v is num) return v.toInt();
        if (v is String) return int.tryParse(v) ?? 0;
        return 0;
      }

      // Support both legacy (creditsTotal) and current (reflectionsTotal) field names.
      final total = asInt(data['reflectionsTotal'] ?? data['creditsTotal']);
      final used = asInt(data['reflectionsUsed'] ?? data['creditsUsed']);
      final remaining = (total - used) < 0 ? 0 : (total - used);

      UsageService.instance.updateFromMap(<String, dynamic>{
        'allowed': true,
        'plan': plan,
        'creditsTotal': total,
        'creditsUsed': used,
        'creditsRemaining': remaining,
      });

      if (kDebugMode) {
        debugPrint(
          '[IAP] syncUsageFromFirestore ($reason): plan=$plan total=$total used=$used remaining=$remaining',
        );
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[IAP] syncUsageFromFirestore error ($reason): $e');
      }
    }
  }

  HttpsCallable get _iapCallable => _functions.httpsCallable('iapAcknowledgeAndGrant');

  /// Generisk payload efter att ett köp är klart.
  Future<IapResult> acknowledgeIapPurchase({
    required String platform,
    required String productId,
    required String transactionId,
    String? purchaseToken, // Android
    String? receipt, // iOS
  }) async {
    final user = _auth.currentUser;

    // ✅ Critical: never throw here — stream must not crash the app.
    if (user == null) {
      return IapResult.error(
        code: 'not_signed_in',
        message: 'User is not signed in.',
      );
    }
    // Anonymous Firebase users are allowed to purchase (Apple guideline 5.1.1v).

    final deviceId = await DeviceIdService.instance.getDeviceId();

    final body = <String, dynamic>{
      'platform': platform,
      'productId': productId,
      'deviceId': deviceId,
      'payload': <String, dynamic>{
        'transactionId': transactionId,
        if (purchaseToken != null) 'purchaseToken': purchaseToken,
        if (receipt != null) 'receipt': receipt,
      },
    };

    try {
      if (kDebugMode) {
        debugPrint(
          '[IAP] calling CF iapAcknowledgeAndGrant: platform=$platform productId=$productId tx=$transactionId',
        );
      }

      final result = await _iapCallable.call(body);

      final data = Map<String, dynamic>.from(result.data as Map);
      final res = IapResult.fromJson(data);

      if (kDebugMode) {
        debugPrint(
          '[IAP] CF result: ok=${res.ok} plan=${res.plan} '
          'total=${res.creditsTotal} remaining=${res.creditsRemaining} '
          'alreadyGranted=${res.alreadyGranted} '
          'planPresent=${res.planPresent} creditsPresent=${res.creditsPresent} '
          'err=${res.errorCode} msg=${res.errorMessage}',
        );
      }

      _applyToUsage(res);

      // ✅ Post-purchase authoritative sync (prevents "purchase ok but UI didn't update")
      if (res.ok) {
        await syncUsageFromFirestoreBestEffort(reason: 'after_cf_ack');
      }

      return res;
    } on FirebaseFunctionsException catch (e) {
      if (kDebugMode) {
        debugPrint(
          '[IAP] FirebaseFunctionsException: code=${e.code} message=${e.message} details=${e.details}',
        );
      }
      return IapResult.error(code: e.code, message: e.message);
    } catch (e) {
      if (kDebugMode) debugPrint('[IAP] Unknown error: $e');
      return IapResult.error(
        code: 'unknown',
        message: 'Unknown error while acknowledging purchase: $e',
      );
    }
  }

  Future<IapResult> acknowledgePurchaseIos({
    required String productId,
    required String transactionId,
    String? receipt,
  }) {
    return acknowledgeIapPurchase(
      platform: 'ios',
      productId: productId,
      transactionId: transactionId,
      receipt: receipt,
    );
  }

  Future<IapResult> acknowledgeIapPurchaseAndroid({
    required String productId,
    required String transactionId,
    required String purchaseToken,
  }) {
    return acknowledgeIapPurchase(
      platform: 'android',
      productId: productId,
      transactionId: transactionId,
      purchaseToken: purchaseToken,
    );
  }

  /// ------------------------------------------------------------
  /// Typed read: Firestore iap_entitlements/{uid} -> IapEntitlement
  /// Används för restore/debug/sanity sync (read-only).
  /// ------------------------------------------------------------
  Future<IapEntitlement?> fetchEntitlement() async {
    final user = _auth.currentUser;
    if (user == null) return null;

    try {
      final doc =
          await _firestore.collection('iap_entitlements').doc(user.uid).get();

      if (!doc.exists) {
        if (kDebugMode) {
          debugPrint('[IAP] No entitlement doc found for uid=${user.uid}');
        }
        return null;
      }

      final entitlement = IapEntitlement.fromDoc(doc);

      if (kDebugMode) {
        debugPrint(
          '[IAP] entitlement fetched: '
          'isBlessed=${entitlement.isBlessed} '
          'status=${entitlement.status} '
          'platform=${entitlement.platform} '
          'productId=${entitlement.productId}',
        );
      }

      return entitlement;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[IAP] fetchEntitlement error: $e');
      }
      return null;
    }
  }

  /// ------------------------------------------------------------
  /// Typed read: Firestore iap_transactions/* -> List<IapTransaction>
  /// Read-only debug helper (safe for launch).
  /// ------------------------------------------------------------
  /// Restore consumable credits from previous guest sessions on the same device.
  ///
  /// Apple/Google don't restore consumables. When a guest signs out (new anonymous
  /// UID), credits on the old UID are stranded. This CF finds device-matched
  /// anonymous transactions and re-grants them to the current user.
  Future<({int creditsRestored, int entitlementsRestored})> restoreDevicePurchases() async {
    final user = _auth.currentUser;
    if (user == null) return (creditsRestored: 0, entitlementsRestored: 0);

    final deviceId = await DeviceIdService.instance.getDeviceId();

    try {
      if (kDebugMode) {
        debugPrint('[IAP] calling CF restoreDevicePurchases');
      }

      final callable = _functions.httpsCallable('restoreDevicePurchases');
      final result = await callable.call({'deviceId': deviceId});
      final data = Map<String, dynamic>.from(result.data as Map);

      final credits = (data['creditsRestored'] as num?)?.toInt() ?? 0;
      final entitlements = (data['entitlementsRestored'] as num?)?.toInt() ?? 0;

      if (kDebugMode) {
        debugPrint('[IAP] restoreDevicePurchases: credits=$credits entitlements=$entitlements');
      }

      if (credits > 0 || entitlements > 0) {
        // Re-sync usage from Firestore to reflect restored credits
        await syncUsageFromFirestoreBestEffort(reason: 'device_restore');
      }

      return (creditsRestored: credits, entitlementsRestored: entitlements);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[IAP] restoreDevicePurchases error: $e');
      }
      return (creditsRestored: 0, entitlementsRestored: 0);
    }
  }

  Future<List<IapTransaction>> fetchRecentTransactions({int limit = 25}) async {
    final user = _auth.currentUser;
    if (user == null) return <IapTransaction>[];

    try {
      final qs = await _firestore
          .collection('iap_transactions')
          .where('uid', isEqualTo: user.uid)
          .orderBy('createdAt', descending: true)
          .limit(limit)
          .get();

      final out = <IapTransaction>[];
      for (final doc in qs.docs) {
        out.add(IapTransaction.fromDoc(doc));
      }

      if (kDebugMode) {
        debugPrint(
          '[IAP] fetched ${out.length} transactions for uid=${user.uid}',
        );
        for (final t in out.take(5)) {
          debugPrint(
            '[IAP] tx: id=${t.id} status=${t.status} type=${t.type} productId=${t.productId}',
          );
        }
      }

      return out;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[IAP] fetchRecentTransactions error: $e');
      }
      return <IapTransaction>[];
    }
  }
}
