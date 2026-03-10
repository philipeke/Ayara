// lib/features/settings/controllers/settings_controller.dart
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:ayara/core/services/locale_service.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/limit/usage_service.dart';
import 'package:ayara/features/limit/usage_refresh_service.dart';
import 'package:ayara/features/premium/premium_service.dart';

class SettingsController {
  final UsageService _usageService;
  final PremiumService _premiumService;
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  SettingsController({
    UsageService? usageService,
    PremiumService? premiumService,
    FirebaseAuth? auth,
    GoogleSignIn? googleSignIn,
  })  : _usageService = usageService ?? UsageService.instance,
        _premiumService = premiumService ?? PremiumService.instance,
        _auth = auth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(scopes: const ['email']);

  bool get _isIos => Platform.isIOS;
  bool get _isAndroid => Platform.isAndroid;

  // Guards to prevent double-taps / parallel flows (stability).
  bool _authInFlight = false;

  void _snack(BuildContext context, String msg) {
    final messenger = ScaffoldMessenger.maybeOf(context);
    if (messenger == null) return;
    messenger.showSnackBar(SnackBar(content: Text(msg)));
  }

  void _log(String msg) {
    if (kDebugMode) debugPrint('⚙️ Settings: $msg');
  }

  String _platformString() {
    if (_isIos) return 'ios';
    if (_isAndroid) return 'android';
    if (Platform.isMacOS) return 'macos';
    return 'unknown';
  }

  Future<void> _refreshUsageAfterAuth() async {
    final user = _auth.currentUser;
    if (user == null) return;

    // Force a fresh peek now (not "once" guarded).
    UsageRefreshService.instance.resetSessionGuard();

    await UsageRefreshService.instance.silentPeekOncePerSession(
      platform: _platformString(),
    );
  }

  // ─────────────────────────────────────────────────────────────
  // Locale (safe helper)
  // ─────────────────────────────────────────────────────────────

  /// Saves user-selected locale code/tag (e.g. "sv-SE" or "sv").
  /// Does NOT mutate UI state by itself; UI should rebuild based on your app-level locale state.
  Future<void> saveLocaleCode(String code) async {
    await LocaleService.setSavedLocaleCode(code);
  }

  // ─────────────────────────────────────────────────────────────
  // Usage peek
  // ─────────────────────────────────────────────────────────────

  /// 🔹 Peek utan att dra credits – men bara för inloggade (ej guest).
  Future<void> loadUsagePeek() async {
    try {
      await _refreshUsageAfterAuth();
    } catch (_) {
      // Silent fail
    }
  }

  // ─────────────────────────────────────────────────────────────
  // Sign-in / upgrade (Guest → account)
  // ─────────────────────────────────────────────────────────────

  /// 🔹 Uppgradera guest → "riktigt" konto via Google (Android).
  Future<void> upgradeWithGoogle(BuildContext context) async {
    final t = AppLocalizations.of(context)!;

    if (!_isAndroid) {
      _snack(context, 'Google sign-in is only available on Android.');
      return;
    }

    if (_authInFlight) return;

    try {
      _authInFlight = true;

      // This action is intended for upgrading a guest OR signing in after sign-out.
      final wasGuestBefore = _auth.currentUser?.isAnonymous == true;

      await _googleSignIn.signOut().catchError((_) {});
      final acc = await _googleSignIn.signIn();
      if (acc == null) return;

      final authData = await acc.authentication;
      final cred = GoogleAuthProvider.credential(
        idToken: authData.idToken,
        accessToken: authData.accessToken,
      );

      bool didUpgradeFromGuest;
      try {
        didUpgradeFromGuest = await _linkOrSignInWithCredential(cred);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'credential-already-in-use' ||
            e.code == 'provider-already-linked') {
          // Link failed — sign out happened in _linkOrSignInWithCredential.
          // Re-sign in with same Google credential (Google tokens are reusable).
          _log('Google link failed (${e.code}), signing in to existing account');
          await _auth.signInWithCredential(cred);
          didUpgradeFromGuest = false;
        } else {
          rethrow;
        }
      }

      // ✅ Immediately refresh plan/credits after auth (silent)
      await _refreshUsageAfterAuth();

      if (wasGuestBefore && didUpgradeFromGuest) {
        _snack(context, t.snackUpgradedGoogle);
      } else {
        _snack(context, t.snackSignedInGoogle);
      }
    } catch (e, st) {
      _log('upgradeWithGoogle error: $e\n$st');
      _snack(context, e.toString());
    } finally {
      _authInFlight = false;
    }
  }

  /// 🔹 Uppgradera / logga in via Apple (iOS).
  ///
  /// IMPORTANT FOR STABILITY:
  /// - We use ONLY sign_in_with_apple (nonce/rawNonce) -> Firebase credential.
  ///
  /// ✅ FIX: include authorizationCode as accessToken when building Firebase OAuth credential.
  Future<void> upgradeWithApple(BuildContext context) async {
    final t = AppLocalizations.of(context)!;

    if (!_isIos) {
      _snack(context, 'Sign in with Apple is only available on iPhone/iPad.');
      return;
    }

    if (_authInFlight) return;

    try {
      _authInFlight = true;

      _log('🍎 upgradeWithApple start (PLUGIN ONLY)');

      final wasGuestBefore = _auth.currentUser?.isAnonymous == true;

      // If user is fully signed out (currentUser == null), this is SIGN IN.
      // If user is guest, this is UPGRADE (link).
      final didUpgradeFromGuest = await _signInWithApplePluginFlow();

      // ✅ Immediately refresh plan/credits after auth (silent)
      await _refreshUsageAfterAuth();

      if (wasGuestBefore && didUpgradeFromGuest) {
        _snack(context, t.snackUpgradedApple);
      } else {
        _snack(context, t.snackSignedInApple);
      }
    } on SignInWithAppleAuthorizationException catch (e, st) {
      _log(
        '🍎 SignInWithAppleAuthorizationException: ${e.code} ${e.message}\n$st',
      );
      if (e.code == AuthorizationErrorCode.canceled) return;
      _snack(context, e.message ?? e.code.toString());
    } on FirebaseAuthException catch (e, st) {
      _log('🔥 FirebaseAuthException (Apple): ${e.code} ${e.message}\n$st');
      _snack(context, '${e.code}: ${e.message ?? ''}'.trim());
    } catch (e, st) {
      _log('🔥 upgradeWithApple unknown error: $e\n$st');
      _snack(context, e.toString());
    } finally {
      _authInFlight = false;
    }
  }

  /// Links credential if current user is anonymous, otherwise signs in.
  /// Returns true if it *upgraded* from guest (anonymous -> linked).
  ///
  /// When linking fails (credential-already-in-use), the nonce is consumed
  /// by Firebase and cannot be reused. In that case we set a flag so the
  /// caller can retry with a fresh Apple credential.
  Future<bool> _linkOrSignInWithCredential(AuthCredential cred) async {
    final current = _auth.currentUser;

    if (current != null && current.isAnonymous) {
      try {
        await current.linkWithCredential(cred);
        return true; // ✅ upgraded
      } on FirebaseAuthException catch (e) {
        if (e.code == 'credential-already-in-use' ||
            e.code == 'provider-already-linked') {
          // The nonce was consumed by the failed link attempt.
          // Sign out the anonymous user so a fresh sign-in can proceed.
          _log('link failed (${e.code}), will retry with fresh credential');
          await _auth.signOut();
          rethrow; // Let caller handle the retry with fresh nonce
        } else {
          rethrow;
        }
      }
    } else {
      await _auth.signInWithCredential(cred);
      return false; // signed in (not an upgrade)
    }
  }

  // ─────────────────────────────────────────────────────────────
  // Apple iOS helper (PLUGIN ONLY)
  // ─────────────────────────────────────────────────────────────

  /// sign_in_with_apple plugin + nonce/rawNonce → Firebase OAuth credential.
  /// Returns true if it upgraded from guest (anonymous link).
  ///
  /// ✅ Critical: include authorizationCode as accessToken.
  /// ✅ If linking fails (credential-already-in-use), the nonce is consumed.
  ///    We retry once with a fresh Apple credential + nonce.
  Future<bool> _signInWithApplePluginFlow() async {
    try {
      return await _doAppleSignIn();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'credential-already-in-use' ||
          e.code == 'provider-already-linked') {
        // Link failed and nonce was consumed. _linkOrSignInWithCredential
        // already signed out the anonymous user. Retry with fresh nonce →
        // this time _linkOrSignInWithCredential will call signInWithCredential
        // directly (currentUser is null after sign-out).
        _log('🍎 retrying Apple sign-in with fresh nonce');
        return await _doAppleSignIn();
      }
      rethrow;
    }
  }

  Future<bool> _doAppleSignIn() async {
    final rawNonce = _generateNonce();
    final nonce = _sha256OfString(rawNonce);

    final appleCred = await SignInWithApple.getAppleIDCredential(
      scopes: const [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
      // No webAuthenticationOptions on iOS.
    );

    final idToken = appleCred.identityToken;
    if (idToken == null || idToken.isEmpty) {
      throw Exception('Missing identityToken from Apple.');
    }

    // ✅ authorizationCode is required by Firebase in many cases.
    final authCode = appleCred.authorizationCode;
    if (authCode.isEmpty) {
      throw Exception('Missing authorizationCode from Apple.');
    }

    _logAppleIdentityTokenClaims(idToken);

    final oauthCred = OAuthProvider('apple.com').credential(
      idToken: idToken,
      rawNonce: rawNonce,
      // ✅ prevents "Invalid OAuth response from apple.com" in many edge cases
      accessToken: authCode,
    );

    return _linkOrSignInWithCredential(oauthCred);
  }

  // ─────────────────────────────────────────────────────────────
  // Sign out
  // ─────────────────────────────────────────────────────────────

  /// 🔹 Sign out + nolla lokalt usage-snapshot.
  Future<void> signOut(BuildContext context) async {
    final t = AppLocalizations.of(context)!;

    if (_authInFlight) return;

    try {
      _authInFlight = true;
      _log('signOut start');

      // Clear local usage state BEFORE Firebase signOut so that any
      // authStateChanges listener that fires during signOut already sees
      // a clean (zero) usage snapshot instead of the previous user's credits.
      UsageRefreshService.instance.resetSessionGuard();
      _usageService.clear();

      // Important: cancel any lingering Google session (safe on iOS too).
      try {
        await _googleSignIn.signOut();
      } catch (_) {}

      await _auth.signOut();

      // ✅ Auto-sign-in anonymously so the user always has a valid Firebase
      // session. This allows guest purchases, CF calls, and prevents
      // "not_signed_in" errors from the IAP purchase stream.
      await _auth.signInAnonymously();

      // ✅ Immediately sync usage for the new anonymous session so the UI
      // shows the correct guest state (not stale data from the previous account).
      await _refreshUsageAfterAuth();

      _snack(context, t.snackSignedOut);
      _log('signOut done (now anonymous)');
    } catch (e, st) {
      _log('signOut error: $e\n$st');
      _snack(context, e.toString());
    } finally {
      _authInFlight = false;
    }
  }

  // ─────────────────────────────────────────────────────────────
  // Dev-only
  // ─────────────────────────────────────────────────────────────

  /// 🔹 Dev-only: aktivera test-Blessed.
  ///
  /// NOTE:
  /// - Ayara plan naming uses: grace/blessed/guest
  /// - We keep the method name for now so the rest of UI doesn’t break.
  Future<void> activateTestChampion(BuildContext context) async {
    try {
      await _premiumService.activateTestPremium();

      final current = _usageService.current;
      final currentUsed = current?.creditsUsed ?? 0;

      // Ayara: Blessed test
      const total = 2000;
      final remaining = (total - currentUsed).clamp(0, total);

      _usageService.updateFromMap({
        'allowed': true,
        'plan': 'blessed',
        'creditsTotal': total,
        'creditsUsed': currentUsed,
        'creditsRemaining': remaining,
        'dailyLimit': current?.dailyLimit ?? 0,
        'dailyUsed': current?.dailyUsed ?? 0,
      });

      UsageRefreshService.instance.resetSessionGuard();
      _snack(context, 'Blessed (test) activated for this account.');
    } catch (e) {
      _snack(context, 'Failed to activate Blessed (test): $e');
    }
  }

  // ─────────────────────────────────────────────────────────────
  // Crypto / nonce / logging
  // ─────────────────────────────────────────────────────────────

  String _sha256OfString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  void _logAppleIdentityTokenClaims(String jwtToken) {
    try {
      final parts = jwtToken.split('.');
      if (parts.length < 2) return;

      String payload = parts[1];
      payload = payload.replaceAll('-', '+').replaceAll('_', '/');
      while (payload.length % 4 != 0) {
        payload += '=';
      }

      final decoded = utf8.decode(base64.decode(payload));
      final jsonMap = json.decode(decoded);

      final aud = jsonMap is Map ? jsonMap['aud'] : null;
      final iss = jsonMap is Map ? jsonMap['iss'] : null;
      final nonce = jsonMap is Map ? jsonMap['nonce'] : null;

      _log(
        '🍎 Apple idToken claims: aud=$aud iss=$iss nonce=${nonce != null ? '(present)' : '(missing)'}',
      );
    } catch (e) {
      _log('🍎 Could not decode apple identityToken claims: $e');
    }
  }
}
