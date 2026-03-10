import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore: users/{uid}
///
/// Keeps backend/DB fields as creditsTotal/creditsUsed for migration safety,
/// but exposes Nuria naming (Reflections) as aliases.
class AppUser {
  final String uid;

  /// "grace" | "blessed" | "guest"
  final String plan;

  /// Current schema
  final int creditsTotal;
  final int creditsUsed;

  /// Timestamps (optional, but useful)
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? creditsUpdatedAt;

  const AppUser({
    required this.uid,
    required this.plan,
    required this.creditsTotal,
    required this.creditsUsed,
    this.createdAt,
    this.updatedAt,
    this.creditsUpdatedAt,
  });

  // ---------------------------------------------------------------------------
  // ✅ Credits + Reflections aliases
  // ---------------------------------------------------------------------------

  int get creditsRemaining => (creditsTotal - creditsUsed).clamp(0, 1 << 31);

  int get reflectionsTotal => creditsTotal;
  int get reflectionsUsed => creditsUsed;
  int get reflectionsRemaining => creditsRemaining;

  bool get isBlessed => plan == 'blessed';
  bool get isGrace => plan == 'grace';
  bool get isGuest => plan == 'guest';

  static int _asInt(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    if (v is double) return v.toInt();
    if (v is num) return v.toInt();
    if (v is String) return int.tryParse(v) ?? 0;
    return 0;
  }

  static DateTime? _asDate(dynamic v) {
    if (v == null) return null;
    if (v is Timestamp) return v.toDate();
    if (v is DateTime) return v;
    return null;
  }

  static String _normalizePlan(String raw) {
    final v = raw.trim().toLowerCase();

    // Legacy mappings from TipsyPal / earlier experiments
    if (v.isEmpty) return 'grace';
    if (v == 'free') return 'grace';
    if (v == 'starter') return 'grace';
    if (v == 'basic') return 'grace';

    if (v == 'champion') return 'blessed';

    if (v == 'anonymous') return 'guest';
    if (v == 'guest') return 'guest';

    // Already new values: grace/blessed
    return v;
  }

  /// ✅ Normalizes:
  /// - If creditsTotal exists: use creditsTotal/creditsUsed
  /// - Else: creditsRemaining + creditsUsed => creditsTotal
  factory AppUser.fromMap(String uid, Map<String, dynamic> data) {
    final rawPlan = (data['plan'] as String?)?.trim();
    final plan = _normalizePlan(rawPlan ?? 'grace');

    final creditsUsed = _asInt(data['creditsUsed']);

    final hasCreditsTotal =
        data.containsKey('creditsTotal') && data['creditsTotal'] != null;
    if (hasCreditsTotal) {
      final creditsTotal = _asInt(data['creditsTotal']);
      return AppUser(
        uid: uid,
        plan: plan,
        creditsTotal: creditsTotal,
        creditsUsed: creditsUsed,
        createdAt: _asDate(data['createdAt']),
        updatedAt: _asDate(data['updatedAt']),
        creditsUpdatedAt: _asDate(data['creditsUpdatedAt']),
      );
    }

    final creditsRemaining = _asInt(data['creditsRemaining']);
    final derivedTotal = creditsRemaining + creditsUsed;

    return AppUser(
      uid: uid,
      plan: plan,
      creditsTotal: derivedTotal,
      creditsUsed: creditsUsed,
      createdAt: _asDate(data['createdAt']),
      updatedAt: _asDate(data['updatedAt']),
      creditsUpdatedAt: _asDate(data['creditsUpdatedAt']),
    );
  }

  factory AppUser.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() ?? <String, dynamic>{};
    return AppUser.fromMap(doc.id, data);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plan': plan,
      'creditsTotal': creditsTotal,
      'creditsUsed': creditsUsed,
      // creditsRemaining is not source-of-truth anymore
      'creditsUpdatedAt': creditsUpdatedAt,
      'updatedAt': updatedAt,
      'createdAt': createdAt,
    };
  }

  AppUser copyWith({
    String? plan,
    int? creditsTotal,
    int? creditsUsed,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? creditsUpdatedAt,
  }) {
    return AppUser(
      uid: uid,
      plan: plan ?? this.plan,
      creditsTotal: creditsTotal ?? this.creditsTotal,
      creditsUsed: creditsUsed ?? this.creditsUsed,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      creditsUpdatedAt: creditsUpdatedAt ?? this.creditsUpdatedAt,
    );
  }
}
