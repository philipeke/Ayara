import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore: iap_transactions/{platform}:{transactionIdOrToken}
///
/// Ledger for idempotency + anti-reuse.
/// Created/updated by Cloud Function iapAcknowledgeAndGrant.
///
/// Ayara naming:
/// - entitlement: "premium" (legacy: "premium", "premium")
/// - credits are referred to as Reflections in UI, but stored as credits in backend.
class IapTransaction {
  /// doc id = "ios:123" / "android:token" (platform + unique key)
  final String id;

  final String uid;
  final String platform; // ios | android
  final String productId;

  /// "consumable" | "non_consumable" | "entitlement" (we tolerate multiple)
  final String type;

  /// payload.transactionId (iOS) or token (Android) if stored.
  /// NOTE: doc-id may use another key; this is the saved "human/debug" id.
  final String transactionId;

  /// verified | granted | rejected | refunded | pending | etc
  final String status;

  final String? deviceId;

  /// Hashes (optional) to avoid storing receipts/tokens in plaintext.
  final String? receiptHash;
  final String? purchaseTokenHash;

  // timestamps
  final DateTime? createdAt;
  final DateTime? verifiedAt;
  final DateTime? grantedAt;
  final DateTime? rejectedAt;

  // rejection reason / debug message
  final String? reason;

  // granted payload (shape varies)
  final IapGranted? granted;

  // apple subobject (optional)
  final IapAppleMeta? apple;

  const IapTransaction({
    required this.id,
    required this.uid,
    required this.platform,
    required this.productId,
    required this.type,
    required this.transactionId,
    required this.status,
    this.deviceId,
    this.receiptHash,
    this.purchaseTokenHash,
    this.createdAt,
    this.verifiedAt,
    this.grantedAt,
    this.rejectedAt,
    this.reason,
    this.granted,
    this.apple,
  });

  // -----------------------------
  // Helpers
  // -----------------------------

  bool get isGranted => status == 'granted';
  bool get isRejected => status == 'rejected';
  bool get isRefunded => status == 'refunded';
  bool get isVerified => status == 'verified' || status == 'granted';

  bool get isConsumable =>
      type == 'consumable' || type == 'consumable_v2' || type == 'credits';

  /// Treat as entitlement/non-consumable upgrade.
  ///
  /// Accepts both:
  /// - "premium" (current Ayara)
  /// - "premium" (legacy Ayara)
  /// - "premium" (legacy TipsyPal)
  bool get isEntitlement =>
      type == 'entitlement' ||
      type == 'non_consumable' ||
      type == 'premium' ||
      type == 'premium' || // legacy
      type == 'premium'; // legacy

  /// Extract platform from doc-id if field is missing.
  /// Example: "ios:123" => "ios"
  static String platformFromId(String id) {
    final i = id.indexOf(':');
    if (i <= 0) return '';
    return id.substring(0, i).trim().toLowerCase();
  }

  // -----------------------------
  // Parsing utils
  // -----------------------------

  static DateTime? _asDate(dynamic v) {
    if (v == null) return null;
    if (v is Timestamp) return v.toDate();
    if (v is DateTime) return v;
    if (v is String) return DateTime.tryParse(v);
    return null;
  }

  static int _asInt(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    if (v is double) return v.toInt();
    if (v is num) return v.toInt();
    if (v is String) return int.tryParse(v) ?? 0;
    return 0;
  }

  static String _asString(dynamic v) {
    if (v == null) return '';
    return v.toString();
  }

  static String _cleanLower(dynamic v) {
    return _asString(v).trim().toLowerCase();
  }

  // -----------------------------
  // Factories
  // -----------------------------

  factory IapTransaction.fromMap(String id, Map<String, dynamic> data) {
    final grantedRaw = data['granted'];
    IapGranted? granted;
    if (grantedRaw is Map) {
      granted = IapGranted.fromMap(grantedRaw.cast<String, dynamic>());
    }

    final appleRaw = data['apple'];
    IapAppleMeta? apple;
    if (appleRaw is Map) {
      apple = IapAppleMeta.fromMap(appleRaw.cast<String, dynamic>());
    }

    // tolerate varying naming from backend:
    final uid = _asString(data['uid']).trim();
    final productId = _asString(data['productId']).trim();

    // platform can exist as field, but we can also take it from doc-id.
    final platformField = _cleanLower(data['platform']);
    final platformFromDoc = platformFromId(id);
    final platform = platformField.isNotEmpty ? platformField : platformFromDoc;

    // type can be "type" or "kind" depending on implementation
    final typeRaw = data.containsKey('type') ? data['type'] : data['kind'];
    final type = _cleanLower(typeRaw);

    // transactionId can be "transactionId", "purchaseToken", or custom.
    final tx = _asString(data['transactionId']).trim();
    final token = _asString(data['purchaseToken']).trim();
    final transactionId = tx.isNotEmpty ? tx : token;

    final status = _cleanLower(data['status']);
    final deviceId = (data['deviceId'] as String?)?.trim();

    return IapTransaction(
      id: id,
      uid: uid,
      platform: platform,
      productId: productId,
      type: type,
      transactionId: transactionId,
      status: status,
      deviceId: deviceId,
      receiptHash: (data['receiptHash'] as String?)?.trim(),
      purchaseTokenHash: (data['purchaseTokenHash'] as String?)?.trim(),
      createdAt: _asDate(data['createdAt']),
      verifiedAt: _asDate(data['verifiedAt']),
      grantedAt: _asDate(data['grantedAt']),
      rejectedAt: _asDate(data['rejectedAt']),
      reason: (data['reason'] as String?)?.trim(),
      granted: granted,
      apple: apple,
    );
  }

  factory IapTransaction.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() ?? <String, dynamic>{};
    return IapTransaction.fromMap(doc.id, data);
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
        'uid': uid,
        'platform': platform,
        'productId': productId,
        'type': type,
        'transactionId': transactionId,
        'status': status,
        'deviceId': deviceId,
        'receiptHash': receiptHash,
        'purchaseTokenHash': purchaseTokenHash,
        // NOTE: When writing from app these may be DateTime.
        // Backend often sets serverTimestamp, but serializing DateTime here is ok.
        'createdAt': createdAt,
        'verifiedAt': verifiedAt,
        'grantedAt': grantedAt,
        'rejectedAt': rejectedAt,
        'reason': reason,
        'granted': granted?.toMap(),
        'apple': apple?.toMap(),
      };

  IapTransaction copyWith({
    String? uid,
    String? platform,
    String? productId,
    String? type,
    String? transactionId,
    String? status,
    String? deviceId,
    String? receiptHash,
    String? purchaseTokenHash,
    DateTime? createdAt,
    DateTime? verifiedAt,
    DateTime? grantedAt,
    DateTime? rejectedAt,
    String? reason,
    IapGranted? granted,
    IapAppleMeta? apple,
  }) {
    return IapTransaction(
      id: id,
      uid: uid ?? this.uid,
      platform: platform ?? this.platform,
      productId: productId ?? this.productId,
      type: type ?? this.type,
      transactionId: transactionId ?? this.transactionId,
      status: status ?? this.status,
      deviceId: deviceId ?? this.deviceId,
      receiptHash: receiptHash ?? this.receiptHash,
      purchaseTokenHash: purchaseTokenHash ?? this.purchaseTokenHash,
      createdAt: createdAt ?? this.createdAt,
      verifiedAt: verifiedAt ?? this.verifiedAt,
      grantedAt: grantedAt ?? this.grantedAt,
      rejectedAt: rejectedAt ?? this.rejectedAt,
      reason: reason ?? this.reason,
      granted: granted ?? this.granted,
      apple: apple ?? this.apple,
    );
  }
}

/// granted: { credits } or { entitlement: "premium", bonusCredits }
class IapGranted {
  final int credits; // for consumables
  final String? entitlement; // "premium" (legacy: "premium", "premium")
  final int bonusCredits; // for premium upgrade (legacy: blessed/champion)

  const IapGranted({
    required this.credits,
    this.entitlement,
    required this.bonusCredits,
  });

  bool get hasCredits => credits > 0;

  bool get isPremiumEntitlement {
    final e = (entitlement ?? '').trim().toLowerCase();
    return e == 'premium' || e == 'premium' || e == 'premium'; // legacy accepted
  }

  factory IapGranted.fromMap(Map<String, dynamic> data) {
    return IapGranted(
      credits: IapTransaction._asInt(data['credits']),
      entitlement: (data['entitlement'] as String?)?.trim(),
      bonusCredits: IapTransaction._asInt(data['bonusCredits']),
    );
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
        'credits': credits,
        'entitlement': entitlement,
        'bonusCredits': bonusCredits,
      };
}

/// apple: { environment, bundleId, originalTransactionId, productId }
class IapAppleMeta {
  final String? environment;
  final String? bundleId;
  final String? originalTransactionId;
  final String? productId;

  const IapAppleMeta({
    this.environment,
    this.bundleId,
    this.originalTransactionId,
    this.productId,
  });

  factory IapAppleMeta.fromMap(Map<String, dynamic> data) {
    return IapAppleMeta(
      environment: (data['environment'] as String?)?.trim(),
      bundleId: (data['bundleId'] as String?)?.trim(),
      originalTransactionId: (data['originalTransactionId'] as String?)?.trim(),
      productId: (data['productId'] as String?)?.trim(),
    );
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
        'environment': environment,
        'bundleId': bundleId,
        'originalTransactionId': originalTransactionId,
        'productId': productId,
      };
}
