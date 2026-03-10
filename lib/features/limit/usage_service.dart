import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:nuria/models/app_user.dart';

class UsageSnapshot {
  /// If user was allowed (from checkAndConsumePrompt)
  final bool allowed;

  /// Reason when blocked, e.g. "credits_exhausted"
  final String? reason;

  /// Legacy fields (from old backend responses) – still parsed for compatibility
  final int dailyUsed;
  final int dailyLimit;

  /// Generic naming (legacy UI compatibility)
  final int usageUsed; // how many used
  final int usageLimit; // total available

  /// Credits model fields (backend/DB naming, kept for compatibility)
  final int creditsUsed;
  final int creditsTotal;
  final int creditsRemaining;

  /// Plan: "grace" | "blessed" | "guest"
  final String plan;

  const UsageSnapshot({
    this.allowed = true,
    this.reason,
    required this.dailyUsed,
    required this.dailyLimit,
    required this.usageUsed,
    required this.usageLimit,
    required this.creditsUsed,
    required this.creditsTotal,
    required this.creditsRemaining,
    required this.plan,
  });

  // ---------------------------------------------------------------------------
  // ✅ Reflections aliases (Nuria naming)
  // ---------------------------------------------------------------------------

  int get reflectionsUsed => creditsUsed;
  int get reflectionsTotal => creditsTotal;
  int get reflectionsRemaining => creditsRemaining;

  double get reflectionsFraction => creditsFraction;

  // ---------------------------------------------------------------------------
  // ✅ Fractions
  // ---------------------------------------------------------------------------

  /// 0.0–1.0 for progress bar (generic)
  double get usageFraction {
    final limit = usageLimit > 0 ? usageLimit : creditsTotal;
    final used = usageLimit > 0 ? usageUsed : creditsUsed;

    if (limit <= 0) return 0.0;
    final raw = used / limit;
    if (raw < 0) return 0.0;
    if (raw > 1) return 1.0;
    return raw;
  }

  /// Preferred fraction (credits/reflections model)
  double get creditsFraction {
    if (creditsTotal <= 0) return 0.0;
    final raw = creditsUsed / creditsTotal;
    if (raw < 0) return 0.0;
    if (raw > 1) return 1.0;
    return raw;
  }

  bool get isBlessed => plan == 'blessed';
  bool get isGrace => plan == 'grace';
  bool get isGuest => plan == 'guest';
}

class UsageService extends ChangeNotifier {
  UsageService._internal();
  static final UsageService instance = UsageService._internal();

  UsageSnapshot? _current;
  UsageSnapshot? get current => _current;

  // ---------------------------------------------------------------------------
  // ✅ 1) Update from Cloud Function result map (checkAndConsumePrompt)
  // ---------------------------------------------------------------------------
  /// Supports:
  /// - New fields: { allowed, reason, credits: { total, used, remaining }, plan }
  /// - Fallback: { creditsTotal, creditsUsed, creditsRemaining, plan }
  /// - Legacy: { monthlyUsed/monthlyLimit, dailyUsed/dailyLimit }
  ///
  /// ✅ Merge-safe: if fields are missing in `data` we keep previous state.
  void updateFromMap(Map<dynamic, dynamic> data) {
    final prev = _current;

    // allowed/reason: if not present -> keep previous
    final bool allowed = data.containsKey('allowed')
        ? (data['allowed'] is bool ? data['allowed'] as bool : true)
        : (prev?.allowed ?? true);

    final String? reason =
        data.containsKey('reason') ? data['reason']?.toString() : prev?.reason;

    // plan: if not present -> keep previous
    final String plan = data.containsKey('plan')
        ? _normalizePlan((data['plan'] ?? 'grace').toString())
        : (prev?.plan ?? 'grace');

    // daily: if not present -> keep previous
    final int dailyUsed = data.containsKey('dailyUsed')
        ? _asInt(data['dailyUsed'])
        : (prev?.dailyUsed ?? 0);
    final int dailyLimit = data.containsKey('dailyLimit')
        ? _asInt(data['dailyLimit'])
        : (prev?.dailyLimit ?? 0);

    // --- Credits: merge-safe parsing ---
    // Only overwrite credits if we actually received credits data.
    bool creditsPresent = false;

    int creditsUsed = prev?.creditsUsed ?? 0;
    int creditsTotal = prev?.creditsTotal ?? 0;
    int creditsRemaining = prev?.creditsRemaining ?? 0;

    final dynamic creditsRaw = data['credits'];
    if (creditsRaw is Map) {
      final credits = creditsRaw.cast<String, dynamic>();

      final hasUsed = credits.containsKey('used');
      final hasTotal = credits.containsKey('total');
      final hasRemaining = credits.containsKey('remaining');

      creditsPresent = hasUsed || hasTotal || hasRemaining;

      if (hasUsed) creditsUsed = _asInt(credits['used']);
      if (hasTotal) creditsTotal = _asInt(credits['total']);

      if (hasRemaining) {
        creditsRemaining = _asInt(credits['remaining']);
      } else if (hasUsed || hasTotal) {
        creditsRemaining = creditsTotal - creditsUsed;
      }
    } else {
      // Fallback top-level credits
      final hasUsed = data.containsKey('creditsUsed');
      final hasTotal = data.containsKey('creditsTotal');
      final hasRemaining = data.containsKey('creditsRemaining');

      creditsPresent = hasUsed || hasTotal || hasRemaining;

      if (hasUsed) creditsUsed = _asInt(data['creditsUsed']);
      if (hasTotal) creditsTotal = _asInt(data['creditsTotal']);

      if (hasRemaining) {
        creditsRemaining = _asInt(data['creditsRemaining']);
      } else if (hasUsed || hasTotal) {
        creditsRemaining = creditsTotal - creditsUsed;
      }
    }

    if (creditsRemaining < 0) creditsRemaining = 0;

    // --- UsageUsed/Limit ---
    // Legacy monthly fields (if present)
    final bool hasLegacyUsed = data.containsKey('monthlyUsed');
    final bool hasLegacyLimit = data.containsKey('monthlyLimit');
    final int legacyUsed = hasLegacyUsed ? _asInt(data['monthlyUsed']) : 0;
    final int legacyLimit = hasLegacyLimit ? _asInt(data['monthlyLimit']) : 0;

    // Recompute usage if we received either legacy monthly or credits update.
    final bool shouldRecomputeUsage = (legacyLimit > 0) || creditsPresent;

    final int resolvedLimit;
    final int resolvedUsed;

    if (shouldRecomputeUsage) {
      resolvedLimit = legacyLimit > 0 ? legacyLimit : creditsTotal;
      resolvedUsed = legacyLimit > 0 ? legacyUsed : creditsUsed;
    } else {
      resolvedLimit = prev?.usageLimit ?? creditsTotal;
      resolvedUsed = prev?.usageUsed ?? creditsUsed;
    }

    _current = UsageSnapshot(
      allowed: allowed,
      reason: reason,
      dailyUsed: dailyUsed,
      dailyLimit: dailyLimit,
      usageUsed: resolvedUsed,
      usageLimit: resolvedLimit,
      creditsUsed: creditsUsed,
      creditsTotal: creditsTotal,
      creditsRemaining: creditsRemaining,
      plan: plan,
    );

    if (kDebugMode) {
      debugPrint(
        '[UsageService] updateFromMap: '
        'allowed=$allowed plan=$plan '
        'creditsTotal=$creditsTotal creditsUsed=$creditsUsed creditsRemaining=$creditsRemaining '
        '(creditsPresent=$creditsPresent, shouldRecomputeUsage=$shouldRecomputeUsage)',
      );
    }

    notifyListeners();
  }

  // ---------------------------------------------------------------------------
  // ✅ 2) Update from Firestore users/{uid} via AppUser model
  // ---------------------------------------------------------------------------
  /// Use this when reading users/{uid} directly (app start / refresh).
  ///
  /// Sets allowed=true (only CF should block consumption).
  void updateFromAppUser(AppUser user) {
    _current = UsageSnapshot(
      allowed: true,
      reason: null,
      dailyUsed: 0,
      dailyLimit: 0,
      usageUsed: user.creditsUsed,
      usageLimit: user.creditsTotal,
      creditsUsed: user.creditsUsed,
      creditsTotal: user.creditsTotal,
      creditsRemaining: user.creditsRemaining,
      plan: _normalizePlan(user.plan),
    );

    notifyListeners();
  }

  /// Convenience if you have DocumentSnapshot from Firestore.
  void updateFromUserDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final u = AppUser.fromDoc(doc);
    updateFromAppUser(u);
  }

  /// Convenience if you have Map from Firestore.
  void updateFromUserMap(String uid, Map<String, dynamic> data) {
    final u = AppUser.fromMap(uid, data);
    updateFromAppUser(u);
  }

  /// Reset usage (e.g. sign out)
  void clear() {
    _current = null;
    notifyListeners();
  }

  static String _normalizePlan(String raw) {
    final v = raw.trim().toLowerCase();

    // Legacy mappings from TipsyPal and earlier experiments
    if (v == 'free') return 'grace';
    if (v == 'starter') return 'grace';
    if (v == 'basic') return 'grace';

    if (v == 'champion') return 'blessed';

    if (v.isEmpty) return 'grace';
    if (v == 'guest' || v == 'anonymous') return 'guest';

    // Already new values: grace/blessed
    return v;
  }

  static int _asInt(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    if (v is double) return v.toInt();
    if (v is num) return v.toInt();
    if (v is String) return int.tryParse(v) ?? 0;
    return 0;
  }
}
