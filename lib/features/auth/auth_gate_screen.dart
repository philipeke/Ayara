// lib/features/auth/auth_gate_screen.dart
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:nuria/features/auth/widgets/ai_wave_loader.dart';
import 'package:nuria/features/auth/controllers/auth_gate_controller.dart';

import 'package:nuria/features/chat/presentation/screens/category_screen.dart';
import 'package:nuria/features/limit/usage_refresh_service.dart';
import 'package:nuria/features/qibla/services/prayer_notification_service.dart';
import 'package:nuria/l10n/app_localizations.dart';

class AuthGateScreen extends StatefulWidget {
  const AuthGateScreen({super.key});

  @override
  State<AuthGateScreen> createState() => _AuthGateScreenState();
}

class _AuthGateScreenState extends State<AuthGateScreen> {
  bool _terms = false;
  bool _privacy = false;
  bool _marketing = false;
  bool _locationConsent = false;
  bool _notificationsConsent = false;
  bool _busy = false;

  /// Visar om vi fortfarande kollar befintlig session + consent.
  bool _checkingExistingSession = false;

  late final AuthGateController _controller;

  AppLocalizations get t => AppLocalizations.of(context)!;

  bool get _isIos => !kIsWeb && Platform.isIOS;
  bool get _isAndroid => !kIsWeb && Platform.isAndroid;

  // ✅ Policy URLs (Nuria)
  static const String _privacyUrl = 'https://nuria.oakdev.app/privacy/';
  static const String _termsUrl = 'https://nuria.oakdev.app/terms/';

  void _snack(String msg) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));

  @override
  void initState() {
    super.initState();
    _controller = AuthGateController();
    _checkingExistingSession = true;
    _bootstrapFromExistingUser();
  }

  /// ✅ Central “peek refresh” för usage så Blessed/reflections är korrekt innan CategoryScreen.
  Future<void> _silentUsagePeekRefresh() async {
    try {
      await UsageRefreshService.instance.silentPeekOncePerSession(
        platform: _isIos
            ? 'ios'
            : _isAndroid
                ? 'android'
                : Platform.isMacOS
                    ? 'macos'
                    : 'unknown',
      );
    } catch (_) {
      // Silent fail – auth-flödet ska aldrig blockeras av usage.
    }
  }

  /// Om det finns en inloggad user + godkända terms/privacy i Firestore
  /// hoppar vi direkt till CategoryScreen.
  Future<void> _bootstrapFromExistingUser() async {
    bool redirecting = false;

    try {
      final result = await _controller.loadExistingUserAndConsent();
      if (result == null) return;

      if (mounted) {
        setState(() {
          _terms = result.termsAccepted;
          _privacy = result.privacyAccepted;
          _marketing = result.marketingAccepted;
        });
      }

      if (result.hasConsent && mounted) {
        redirecting = true;

        final localeCode = result.localeCode;
        if (localeCode != null && localeCode.isNotEmpty) {
          try {
            await FirebaseAuth.instance.setLanguageCode(localeCode);
          } catch (_) {}
        }

        // ✅ Viktigt: refresh usage innan vi går hem så plan/reflections syns direkt
        UsageRefreshService.instance.resetSessionGuard();
        await _silentUsagePeekRefresh();

        if (!mounted) return;
        WidgetsBinding.instance.addPostFrameCallback((_) => _goHome());
      }
    } catch (_) {
      // valfritt: debugPrint
    } finally {
      if (mounted && !redirecting) {
        setState(() => _checkingExistingSession = false);
      }
    }
  }

  Future<void> _initUserDoc({required bool withConsent}) async {
    await _controller.initUserDoc(
      withConsent: withConsent,
      marketingAccepted: _marketing,
    );
  }

  /// If the user opted into notifications on this screen, request OS permission
  /// now (after auth). Silently no-ops on failure — user can enable later.
  Future<void> _maybeRequestNotifications() async {
    if (!_notificationsConsent) return;
    try {
      await PrayerNotificationService.instance.requestPermission();
      await PrayerNotificationService.instance.setEnabled(true);
    } catch (_) {}
  }

  Future<void> _goHome() async {
    if (!mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const CategoryScreen()),
      (route) => false,
    );
  }

  Future<void> _continueAsGuest() async {
    if (_busy) return;
    if (!_terms || !_privacy) {
      _snack(t.mustAccept);
      return;
    }

    setState(() => _busy = true);
    try {
      await _controller.signInAnonymously();
      await _initUserDoc(withConsent: true);

      // ✅ Peek so guests with Blessed (or restored credits) see correct state
      // immediately on CategoryScreen instead of stale/zero data.
      UsageRefreshService.instance.resetSessionGuard();
      await _silentUsagePeekRefresh();
      await _maybeRequestNotifications();

      await _goHome();
    } catch (e) {
      _snack(e.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _confirmGuestThenContinue() async {
    if (_busy) return;
    if (!_terms || !_privacy) {
      _snack(t.mustAccept);
      return;
    }

    final choice = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (ctx) => AlertDialog(
        title: Text(t.guestNoReflectionsTitle),
        content: Text(t.guestNoReflectionsBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(t.guestDialogLoginInstead),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(t.guestDialogContinue),
          ),
        ],
      ),
    );

    if (choice == true) {
      await _continueAsGuest();
      return;
    }

    // choice == false => user chose "Login instead"
    if (_isIos) {
      await _signInWithApple();
    } else if (_isAndroid) {
      await _signInWithGoogle();
    } else {
      _snack('Login is only supported on iOS/Android.');
    }
  }

  Future<void> _signInWithGoogle() async {
    if (_busy) return;
    if (!_terms || !_privacy) {
      _snack(t.mustAccept);
      return;
    }

    setState(() => _busy = true);
    try {
      final didSignIn = await _controller.signInWithGoogle();
      if (!didSignIn) return; // user cancelled

      await _initUserDoc(withConsent: true);

      // ✅ After login: tvinga ny peek i den här sessionen
      UsageRefreshService.instance.resetSessionGuard();
      await _silentUsagePeekRefresh();
      await _maybeRequestNotifications();

      await _goHome();
    } catch (e) {
      _snack(e.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _signInWithApple() async {
    if (_busy) return;
    if (!_terms || !_privacy) {
      _snack(t.mustAccept);
      return;
    }
    if (!_isIos) {
      _snack('Sign in with Apple is only available on iPhone/iPad.');
      return;
    }

    setState(() => _busy = true);
    try {
      final didSignIn = await _controller.signInWithApple();
      if (!didSignIn) return; // user cancelled

      await _initUserDoc(withConsent: true);

      // ✅ After login: tvinga ny peek i den här sessionen
      UsageRefreshService.instance.resetSessionGuard();
      await _silentUsagePeekRefresh();
      await _maybeRequestNotifications();

      await _goHome();
    } catch (e) {
      _snack(e.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _showDisclaimerDialog() {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (ctx) {
        final theme = Theme.of(ctx);
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                Icons.info_outline_rounded,
                size: 22,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  t.disclaimerTitle,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Text(
                t.disclaimerBody,
                style: theme.textTheme.bodyMedium?.copyWith(height: 1.55),
              ),
            ),
          ),
          actions: [
            FilledButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: Text(t.disclaimerClose),
            ),
          ],
        );
      },
    );
  }

  Future<void> _openUrlExternal(String url) async {
    final uri = Uri.parse(url);
    final ok = await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
    if (!ok) _snack('Could not open link.');
  }

  Widget _safeLabel(String text) {
    // ✅ Prevent “half cut” text: enforce line-height + scale down if needed.
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.center,
      child: Text(
        text,
        maxLines: 1,
        softWrap: false,
        overflow: TextOverflow.visible,
        style: const TextStyle(height: 1.15),
      ),
    );
  }

  /// Returns a [Text.rich] widget with [phrases] styled like the
  /// Terms of Service / Privacy Policy TextButton links (primary colour).
  Widget _boldPhrases(String full, List<String> phrases) {
    final linkStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontWeight: FontWeight.w600,
      height: 1.15,
    );
    final spans = <InlineSpan>[];
    int pos = 0;
    final lower = full.toLowerCase();
    final matches = <(int, int)>[];
    for (final phrase in phrases) {
      int from = 0;
      while (true) {
        final idx = lower.indexOf(phrase.toLowerCase(), from);
        if (idx == -1) break;
        matches.add((idx, idx + phrase.length));
        from = idx + phrase.length;
      }
    }
    matches.sort((a, b) => a.$1.compareTo(b.$1));
    for (final m in matches) {
      if (m.$1 > pos) spans.add(TextSpan(text: full.substring(pos, m.$1)));
      spans.add(TextSpan(text: full.substring(m.$1, m.$2), style: linkStyle));
      pos = m.$2;
    }
    if (pos < full.length) spans.add(TextSpan(text: full.substring(pos)));
    return Text.rich(
      TextSpan(children: spans),
      softWrap: true,
      style: const TextStyle(height: 1.20),
    );
  }

  Widget _consentTile({
    required bool value,
    required ValueChanged<bool> onChanged,
    required String label,
    Widget? labelWidget,
    String? linkText,
    VoidCallback? onLink,
    bool optional = false,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => onChanged(!value),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: value,
              onChanged: (v) => onChanged(v ?? false),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 6,
                runSpacing: 4,
                children: [
                  labelWidget ?? Text(
                    label,
                    softWrap: true,
                    style: const TextStyle(height: 1.20),
                  ),
                  if (optional)
                    Text(
                      '(${t.optionalLabel})',
                      style: TextStyle(
                        height: 1.20,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  if (linkText != null && onLink != null)
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: onLink,
                      child: Text(
                        linkText,
                        style: const TextStyle(height: 1.15),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _authButtons({
    required bool disabled,
    required bool showGoogle,
    required bool showApple,
  }) {
    final commonStyle = FilledButton.styleFrom(
      minimumSize: const Size.fromHeight(48),
      textStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        height: 1.15,
      ),
    );

    final tonalStyle = FilledButton.styleFrom(
      minimumSize: const Size.fromHeight(48),
      textStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        height: 1.15,
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showGoogle) ...[
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              style: commonStyle,
              onPressed: disabled ? null : _signInWithGoogle,
              child: _safeLabel(t.signInGoogle),
            ),
          ),
          const SizedBox(height: 12),
        ],
        if (showApple) ...[
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              style: commonStyle,
              onPressed: disabled ? null : _signInWithApple,
              child: _safeLabel(t.signInApple),
            ),
          ),
          const SizedBox(height: 12),
        ],
        SizedBox(
          width: double.infinity,
          child: FilledButton.tonal(
            style: tonalStyle,
            onPressed: disabled ? null : _confirmGuestThenContinue,
            child: _safeLabel(t.continueAsGuest),
          ),
        ),
        const SizedBox(height: 12),
        if (_busy) const LinearProgressIndicator(minHeight: 2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final disabled = !(_terms && _privacy) || _busy;

    // ✅ Platform rules:
    // iOS: Apple + Guest
    // Android: Google + Guest
    final showGoogle = _isAndroid;
    final showApple = _isIos;

    if (_checkingExistingSession) {
      return const Scaffold(
        backgroundColor: Color(0xFF0D0205),
        body: Center(child: AIWaveLoader()),
      );
    }

    final bottomSafe = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.authTitle),
        actions: [
          IconButton(
            tooltip: t.disclaimerInfoTooltip,
            icon: const Icon(Icons.info_outline_rounded),
            onPressed: _showDisclaimerDialog,
          ),
        ],
      ),
      body: AbsorbPointer(
        absorbing: _busy,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 8),
                      _consentTile(
                        value: _terms,
                        onChanged: (v) => setState(() => _terms = v),
                        label: t.termsLabel,
                        linkText: t.openTerms,
                        onLink: () => _openUrlExternal(_termsUrl),
                      ),
                      _consentTile(
                        value: _privacy,
                        onChanged: (v) => setState(() => _privacy = v),
                        label: t.privacyLabel,
                        linkText: t.openPrivacy,
                        onLink: () => _openUrlExternal(_privacyUrl),
                      ),
                      _consentTile(
                        value: _locationConsent,
                        onChanged: (v) => setState(() => _locationConsent = v),
                        label: t.locationConsentLabel,
                        labelWidget: _boldPhrases(
                          t.locationConsentLabel,
                          ['location', 'Qibla direction', 'prayer times'],
                        ),
                        optional: true,
                      ),
                      _consentTile(
                        value: _notificationsConsent,
                        onChanged: (v) =>
                            setState(() => _notificationsConsent = v),
                        label: t.notificationsConsentLabel,
                        labelWidget: _boldPhrases(
                          t.notificationsConsentLabel,
                          ['notifications', 'prayer times'],
                        ),
                        optional: true,
                      ),
                      _consentTile(
                        value: _marketing,
                        onChanged: (v) => setState(() => _marketing = v),
                        label: t.marketingOptIn,
                        optional: true,
                      ),
                      const SizedBox(height: 14),

                      // ✅ Instead of Spacer pushing buttons *to the very bottom*,
                      // we keep some breathing room below them -> they appear higher.
                      Expanded(child: Container()),

                      _authButtons(
                        disabled: disabled,
                        showGoogle: showGoogle,
                        showApple: showApple,
                      ),

                      // ✅ This is what moves buttons UP on tall screens:
                      // we intentionally keep extra space below the buttons.
                      const SizedBox(height: 34),

                      // ✅ Extra bottom padding for gesture nav bars
                      SizedBox(height: bottomSafe),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
