import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore: iap_entitlements/{uid}
///
/// Primary truth for Blessed (formerly Champion).
/// Created/updated by Cloud Function iapAcknowledgeAndGrant.
class IapEntitlement {
  final String uid;

  /// Nuria primary flag (new).
  final bool isBlessed;

  /// Legacy flag (read-only compatibility).
  /// Not written by Nuria anymore, but we may read it if present.
  final bool isChampionLegacy;

  final String? productId; // e.g. com.oakdev.nuria.premium
  final String? platform; // ios | android
  final String status; // active | inactive | refunded | etc

  final DateTime? lastVerifiedAt;

  // Apple metadata (optional)
  final String? originalTransactionId;
  final String? environment; // Sandbox | Production

  // Repair marker (optional)
  final DateTime? repairedAt;

  const IapEntitlement({
    required this.uid,
    required this.isBlessed,
    required this.status,
    this.isChampionLegacy = false,
    this.productId,
    this.platform,
    this.lastVerifiedAt,
    this.originalTransactionId,
    this.environment,
    this.repairedAt,
  });

  bool get isActive => isBlessed == true && status == 'active';

  static DateTime? _asDate(dynamic v) {
    if (v == null) return null;
    if (v is Timestamp) return v.toDate();
    if (v is DateTime) return v;
    return null;
  }

  static bool _asBool(dynamic v) {
    if (v is bool) return v;
    if (v is String) return v.toLowerCase().trim() == 'true';
    if (v is num) return v != 0;
    return false;
  }

  factory IapEntitlement.fromMap(String uid, Map<String, dynamic> data) {
    final blessedPresent = data.containsKey('isBlessed');
    final isBlessed = blessedPresent
        ? _asBool(data['isBlessed'])
        : _asBool(data['isChampion']); // legacy fallback

    final legacyChampion = _asBool(data['isChampion']);

    return IapEntitlement(
      uid: uid,
      isBlessed: isBlessed,
      isChampionLegacy: legacyChampion,
      productId: (data['productId'] as String?)?.trim(),
      platform: (data['platform'] as String?)?.trim(),
      status: ((data['status'] as String?)?.trim().isNotEmpty == true)
          ? (data['status'] as String).trim()
          : 'inactive',
      lastVerifiedAt: _asDate(data['lastVerifiedAt']),
      originalTransactionId: (data['originalTransactionId'] as String?)?.trim(),
      environment: (data['environment'] as String?)?.trim(),
      repairedAt: _asDate(data['repairedAt']),
    );
  }

  factory IapEntitlement.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() ?? <String, dynamic>{};
    return IapEntitlement.fromMap(doc.id, data);
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
        // ✅ Nuria writes only isBlessed going forward.
        'isBlessed': isBlessed,

        'productId': productId,
        'platform': platform,
        'status': status,
        'lastVerifiedAt': lastVerifiedAt,
        'originalTransactionId': originalTransactionId,
        'environment': environment,
        'repairedAt': repairedAt,

        // 🚫 Intentionally NOT writing legacy isChampion anymore.
      };

  IapEntitlement copyWith({
    bool? isBlessed,
    String? productId,
    String? platform,
    String? status,
    DateTime? lastVerifiedAt,
    String? originalTransactionId,
    String? environment,
    DateTime? repairedAt,
  }) {
    return IapEntitlement(
      uid: uid,
      isBlessed: isBlessed ?? this.isBlessed,
      isChampionLegacy: isChampionLegacy,
      productId: productId ?? this.productId,
      platform: platform ?? this.platform,
      status: status ?? this.status,
      lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
      originalTransactionId: originalTransactionId ?? this.originalTransactionId,
      environment: environment ?? this.environment,
      repairedAt: repairedAt ?? this.repairedAt,
    );
  }
}
