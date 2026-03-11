import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb, kDebugMode;
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/limit/usage_service.dart';

import 'package:ayara/features/settings/controllers/settings_controller.dart';

import '../widgets/language_section.dart';
import '../widgets/account_section.dart';
import '../widgets/delete_account_section.dart';
import '../widgets/guidance_disclaimer_section.dart';
import '../widgets/free_plan_blocked_notice.dart';
import '../widgets/ai_limit_section.dart';

import 'package:ayara/features/premium/purchase_controller.dart';
import 'package:ayara/features/premium/widgets/premium_section.dart' as premium;
import 'package:ayara/features/premium/widgets/restore_purchases_section.dart'
    as restore;

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
    required this.currentCode, // tag/code: "sv" / "sv-SE" / "en-US"
    required this.onLocalePicked,
    required this.supportedLocales, // ✅ SAFE list from main.dart
  });

  final String currentCode;
  final Future<void> Function(String code) onLocalePicked;

  /// Must match MaterialApp.supportedLocales (safe-filtered by delegates).
  final List<Locale> supportedLocales;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _busy = false;
  final SettingsController _controller = SettingsController();

  bool get _isIos => !kIsWeb && Platform.isIOS;
  bool get _isAndroid => !kIsWeb && Platform.isAndroid;

  void _snack(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  void _onUsageChanged() {
    if (!mounted) return;
    setState(() {});
  }

  void _onIapChanged() {
    if (!mounted) return;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    UsageService.instance.addListener(_onUsageChanged);
    PurchaseController.instance.addListener(_onIapChanged);

    _controller.loadUsagePeek();

    // Initiera IAP bara om det inte redan är initierat.
    Future.microtask(() async {
      final pc = PurchaseController.instance;
      if (pc.didInit || pc.isLoading) return;

      await pc.init();

      if (kDebugMode) {
        debugPrint(
          '🧾 IAP DEBUG: init done. available=${pc.isAvailable} products=${pc.products.length}',
        );
      }
    });
  }

  @override
  void dispose() {
    UsageService.instance.removeListener(_onUsageChanged);
    PurchaseController.instance.removeListener(_onIapChanged);
    super.dispose();
  }

  Future<void> _upgradeWithGoogle() async {
    if (_busy) return;

    if (!_isAndroid) {
      _snack('Google sign-in is only available on Android.');
      return;
    }

    setState(() => _busy = true);
    try {
      await _controller.upgradeWithGoogle(context);
      await _controller.loadUsagePeek();
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _upgradeWithApple() async {
    if (_busy) return;

    if (!_isIos) {
      _snack('Sign in with Apple is only available on iPhone/iPad.');
      return;
    }

    setState(() => _busy = true);
    try {
      await _controller.upgradeWithApple(context);
      await _controller.loadUsagePeek();
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _signOut() async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await _controller.signOut(context);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    final user = FirebaseAuth.instance.currentUser;
    final bool isGuest = (user == null) || user.isAnonymous;
    final String accountStatus = isGuest ? t.guestMode : t.signedIn;
    final String? email = user?.email;

    final usage = UsageService.instance.current;

    // Plan: basic | premium
    final String plan = (usage?.plan ?? 'basic').toLowerCase();
    final bool isPremiumPlan = plan == 'premium';

    // Blocked notice: basic + 0 remaining (still backed by creditsRemaining in model for now)
    final bool isStarterReflectionsBlocked =
        usage != null && plan == 'basic' && (usage.creditsRemaining == 0);

    final bool iapBusy = PurchaseController.instance.isLoading;

    // Block interaction for BOTH: auth busy + IAP busy
    final bool blockUi = _busy || iapBusy;

    // ✅ Always keep content above gesture/nav bars
    final safeBottom = MediaQuery.of(context).padding.bottom;
    final bottomPad = 24.0 + safeBottom + 16.0;

    return Scaffold(
        appBar: AppBar(
          title: Text(t.settingsTitle),
        ),
        body: AbsorbPointer(
          absorbing: blockUi,
          child: SafeArea(
            bottom: true,
            child: ListView(
              padding: EdgeInsets.fromLTRB(16, 12, 16, bottomPad),
              children: [
                LanguageSection(
                  initialCode: widget.currentCode,
                  busy: blockUi,
                  supportedLocales: widget.supportedLocales, // ✅ safe list
                  onApplyLocale: (code) async {
                    // ✅ Apply locale but DO NOT pop Settings
                    await widget.onLocalePicked(code);
                  },
                ),

                const SizedBox(height: 28),

                AccountSection(
                  isGuest: isGuest,
                  accountStatus: accountStatus,
                  email: email,
                  isPremiumPlan: isPremiumPlan,
                  busy: blockUi,
                  onUpgradeWithGoogle: _upgradeWithGoogle,
                  onUpgradeWithApple: _upgradeWithApple,
                  onSignOut: _signOut,
                ),

                const SizedBox(height: 24),

                // ✅ FIX: correct required param name
                FreePlanBlockedNotice(
                  isFreePlanBlocked: isStarterReflectionsBlocked,
                ),

                const SizedBox(height: 24),

                const AiLimitSection(),

                const SizedBox(height: 24),

                premium.PremiumSection(
                  isPremiumPlan: isPremiumPlan,
                  usage: usage,
                  busy: blockUi,
                ),

                const SizedBox(height: 12),

                restore.RestorePurchasesSection(busy: blockUi),

                const SizedBox(height: 32),

                const GuidanceDisclaimerSection(),

                const SizedBox(height: 32),

                const DeleteAccountSection(),

                // ✅ Extra breathing room (in addition to bottom padding)
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
    );
  }
}

