// lib/features/limit/usage_refresh_service.dart
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'device_id_service.dart';
import 'usage_service.dart';

class UsageRefreshService {
  UsageRefreshService._internal();
  static final UsageRefreshService instance = UsageRefreshService._internal();

  bool _didInitialPeekThisSession = false;

  /// ✅ Sätt samma region som dina functions kör i.
  final FirebaseFunctions _functions = FirebaseFunctions.instanceFor(
    region: 'us-central1',
  );

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  bool _hasMeaningfulUsagePayload(Map<dynamic, dynamic> data) {
    if (data.isEmpty) return false;

    // Credits nested
    final credits = data['credits'];
    if (credits is Map && credits.isNotEmpty) return true;

    // Credits top-level
    if (data.containsKey('creditsTotal') ||
        data.containsKey('creditsUsed') ||
        data.containsKey('creditsRemaining')) {
      return true;
    }

    // Legacy monthly
    if (data.containsKey('monthlyLimit') || data.containsKey('monthlyUsed')) {
      return true;
    }

    // Plan-only payload is not enough to overwrite anything (but our merge-safe
    // UsageService would handle it). Still: we treat it as not meaningful here
    // to avoid accidental regressions.
    return false;
  }

  /// Tyst "peek refresh" av usage (plan/credits/champion), utan snackbars.
  ///
  /// - Kör bara om user är inloggad och inte anonymous.
  /// - Kör max 1 gång per app-session (kan återställas med resetSessionGuard()).
  /// - Uppdaterar UsageService.instance med Cloud Function-svaret (om payloaden är relevant).
  Future<void> silentPeekOncePerSession({
    String? appVersion,
    String? platform,
  }) async {
    if (_didInitialPeekThisSession) return;
    _didInitialPeekThisSession = true;

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    // 1) Firestore first (snabbt & stabilt)
    try {
      final doc = await _db.collection('users').doc(user.uid).get();
      if (doc.exists) {
        UsageService.instance.updateFromUserDoc(doc);
        if (kDebugMode) {
          final snap = UsageService.instance.current;
          debugPrint(
            '[UsageRefreshService] Firestore sync ok: plan=${snap?.plan} remaining=${snap?.creditsRemaining}',
          );
        }
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[UsageRefreshService] Firestore sync failed: $e');
      }
      // fortsätt ändå till CF-peek
    }

    // 2) Cloud Function peek (sanning)
    try {
      final deviceId = await DeviceIdService.instance.getDeviceId();
      final deviceKey = await DeviceIdService.instance.getDeviceKey();
      final hardwareId = await DeviceIdService.instance.getHardwareId();

      final callable = _functions.httpsCallable('checkAndConsumePrompt');

      Map<dynamic, dynamic> data = <dynamic, dynamic>{};

      try {
        // ✅ Preferred: send both deviceId + deviceKey
        final result = await callable.call(<String, dynamic>{
          'peek': true,
          'deviceId': deviceId,
          'deviceKey': deviceKey,
          if (hardwareId != null) 'hardwareId': hardwareId,
          if (platform != null) 'platform': platform,
          if (appVersion != null) 'appVersion': appVersion,
        });

        final raw = result.data;
        data = (raw is Map) ? raw : <dynamic, dynamic>{};
      } on FirebaseFunctionsException catch (e) {
        // 🔁 Backward compatible fallback if backend isn't deployed yet
        final msg = (e.message ?? '').toLowerCase();
        final code = e.code.toLowerCase();
        final isMissingDeviceKey =
            code == 'invalid-argument' && msg.contains('devicekey');

        if (!isMissingDeviceKey) rethrow;

        final result = await callable.call(<String, dynamic>{
          'peek': true,
          'deviceId': deviceId,
          if (platform != null) 'platform': platform,
          if (appVersion != null) 'appVersion': appVersion,
        });

        final raw = result.data;
        data = (raw is Map) ? raw : <dynamic, dynamic>{};
      }

      if (!_hasMeaningfulUsagePayload(data)) {
        if (kDebugMode) {
          debugPrint(
            '[UsageRefreshService] silent peek skipped: empty/partial payload',
          );
        }
        return;
      }

      UsageService.instance.updateFromMap(data);

      if (kDebugMode) {
        final plan = (data['plan'] ?? '').toString();
        dynamic remaining;
        if (data['credits'] is Map) {
          remaining = (data['credits'] as Map)['remaining'];
        } else {
          remaining = data['creditsRemaining'];
        }
        debugPrint(
          '[UsageRefreshService] CF peek ok: plan=$plan remaining=$remaining',
        );
      }
    } on FirebaseFunctionsException catch (e) {
      if (kDebugMode) {
        debugPrint(
          '[UsageRefreshService] CF peek functions error: ${e.code} ${e.message}',
        );
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[UsageRefreshService] CF peek error: $e');
      }
    }
  }

  /// Om du vill kunna forcera en ny "once" (t.ex. efter sign out / sign in).
  void resetSessionGuard() {
    _didInitialPeekThisSession = false;
  }
}
