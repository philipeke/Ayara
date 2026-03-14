// lib/features/auth/controllers/auth_gate_controller.dart
import 'dart:convert';
import 'dart:io' show Platform;
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:ayara/core/config/policy_constants.dart';
import 'package:ayara/core/services/locale_service.dart';

class AuthBootstrapResult {
  final bool termsAccepted;
  final bool privacyAccepted;
  final bool marketingAccepted;
  final String? localeCode;

  const AuthBootstrapResult({
    required this.termsAccepted,
    required this.privacyAccepted,
    required this.marketingAccepted,
    required this.localeCode,
  });

  bool get hasConsent => termsAccepted && privacyAccepted;
}

class AuthGateController {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  /// Om du vill isolera bort anon-link (felsökning), sätt true temporärt.
  static const bool _disableAnonymousLinkForDebug = false;

  // Services ID / redirect (behövs främst för web-flow / plugin på Android)
  static const String _appleServiceId = 'com.oakdev.ayara.service';
  static final Uri _appleRedirectUri =
      Uri.parse('https://ayara-mobile-app.firebaseapp.com/__/auth/handler');

  // Guards to prevent double-taps / parallel flows (stability).
  bool _authInFlight = false;

  AuthGateController({
    FirebaseAuth? auth,
    FirebaseFirestore? firestore,
  })  : _auth = auth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  Future<AuthBootstrapResult?> loadExistingUserAndConsent() async {
    final user = _auth.currentUser;
    if (user == null) return null;

    final doc = await _firestore
        .doc('users/${user.uid}')
        .get()
        .timeout(const Duration(seconds: 6));
    if (!doc.exists) return null;

    final data = doc.data() ?? {};

    final bool hasTerms =
        (data['termsAccepted']?['version'] == PolicyConstants.termsVersion);
    final bool hasPrivacy =
        (data['privacyAccepted']?['version'] == PolicyConstants.privacyVersion);
    final bool marketingAccepted =
        (data['marketingConsent']?['accepted'] ?? false) as bool;

    final String? localeCode = data['locale'] as String?;

    return AuthBootstrapResult(
      termsAccepted: hasTerms,
      privacyAccepted: hasPrivacy,
      marketingAccepted: marketingAccepted,
      localeCode: localeCode,
    );
  }

  Future<void> initUserDoc({
    required bool withConsent,
    required bool marketingAccepted,
  }) async {
    final user = _auth.currentUser;
    if (user == null) {
      throw Exception('No signed-in user.');
    }

    final now = FieldValue.serverTimestamp();
    final savedLocale = await LocaleService.getSavedLocaleCode();

    final email = user.email;
    final displayName = user.displayName;

    String providerId = 'unknown';
    if (user.isAnonymous) {
      providerId = 'anonymous';
    } else if (user.providerData.isNotEmpty) {
      providerId = user.providerData.first.providerId;
    }

    final data = <String, dynamic>{
      'locale': savedLocale,
      'updatedAt': now,
      'lastLoginAt': now,
      'deletedAt': null,
      'email': email,
      'displayName': displayName,
      'signInProvider': providerId,
    };

    if (withConsent) {
      data.addAll({
        'createdAt': now,
        'termsAccepted': {
          'version': PolicyConstants.termsVersion,
          'at': now,
        },
        'privacyAccepted': {
          'version': PolicyConstants.privacyVersion,
          'at': now,
        },
        'marketingConsent': {
          'accepted': marketingAccepted,
          'version': PolicyConstants.privacyVersion,
          'at': now,
        },
      });
    }

    await _firestore.doc('users/${user.uid}').set(
          data,
          SetOptions(merge: true),
        );
  }

  Future<void> signInAnonymously() async {
    if (_authInFlight) return;
    _authInFlight = true;
    try {
      final cred = await _auth.signInAnonymously();
      if (cred.user == null) {
        throw Exception('Anonymous auth failed.');
      }
    } finally {
      _authInFlight = false;
    }
  }

  Future<bool> signInWithGoogle() async {
    if (_authInFlight) return false;
    _authInFlight = true;

    try {
      final g = GoogleSignIn(scopes: const ['email']);
      try {
        await g.signOut();
      } catch (_) {}

      final acc = await g.signIn();
      if (acc == null) return false;

      final auth = await acc.authentication;
      final cred = GoogleAuthProvider.credential(
        idToken: auth.idToken,
        accessToken: auth.accessToken,
      );

      await _linkOrSignInWithCredential(cred);
      return true;
    } finally {
      _authInFlight = false;
    }
  }

  /// ✅ Apple sign-in:
  /// 1) iOS: försök Firebase native provider
  /// 2) fallback: sign_in_with_apple + nonce/rawNonce (+ authorizationCode som accessToken)
  ///
  /// Viktigt: plugin-credential MÅSTE ofta inkludera authorizationCode som accessToken,
  /// annars kan Firebase ge: "Invalid OAuth response from apple.com"
  Future<bool> signInWithApple() async {
    if (_authInFlight) return false;
    _authInFlight = true;

    try {
      // ignore: avoid_print
      print('🍎 Apple sign-in start | platform=${Platform.operatingSystem}');

      if (Platform.isIOS) {
        final okNative = await _tryFirebaseNativeAppleProvider();
        // ignore: avoid_print
        print('🍎 Apple native result: $okNative');
        if (okNative) return true;
      }

      // ignore: avoid_print
      print('🍎 Apple falling back to plugin flow');
      final okPlugin = await _signInWithApplePlugin();
      // ignore: avoid_print
      print('🍎 Apple plugin result: $okPlugin');
      return okPlugin;
    } on SignInWithAppleAuthorizationException catch (e, st) {
      // ignore: avoid_print
      print('🔥 Apple plugin exception: code=${e.code} msg=${e.message}\n$st');
      if (e.code == AuthorizationErrorCode.canceled) return false;
      rethrow;
    } on FirebaseAuthException catch (e, st) {
      // ignore: avoid_print
      print(
        '🔥 FirebaseAuthException (Apple): code=${e.code} message=${e.message}\n$st',
      );
      rethrow;
    } catch (e, st) {
      // ignore: avoid_print
      print('🔥 Apple sign-in unknown error: $e\n$st');
      rethrow;
    } finally {
      _authInFlight = false;
    }
  }

  /// iOS-native via Firebase.
  /// OBS: Returnerar false på fel för att kunna falla tillbaka till plugin-flödet.
  Future<bool> _tryFirebaseNativeAppleProvider() async {
    final provider = AppleAuthProvider()
      ..addScope('email')
      ..addScope('name');

    final current = _auth.currentUser;

    try {
      // ignore: avoid_print
      print(
        '🍎 [native] start | currentUser=${current?.uid} anon=${current?.isAnonymous}',
      );

      if (_disableAnonymousLinkForDebug) {
        final res = await _auth.signInWithProvider(provider);
        // ignore: avoid_print
        print('🍎 [native] signInWithProvider OK uid=${res.user?.uid}');
        return res.user != null;
      }

      if (current != null && current.isAnonymous) {
        try {
          final linkRes = await current.linkWithProvider(provider);
          // ignore: avoid_print
          print('🍎 [native] linkWithProvider OK uid=${linkRes.user?.uid}');
          return linkRes.user != null;
        } on FirebaseAuthException catch (e, st) {
          // ignore: avoid_print
          print(
            '🔥 [native] linkWithProvider FAILED code=${e.code} msg=${e.message}\n$st',
          );

          final res = await _auth.signInWithProvider(provider);
          // ignore: avoid_print
          print(
            '🍎 [native] fallback signInWithProvider OK uid=${res.user?.uid}',
          );
          return res.user != null;
        }
      }

      final res = await _auth.signInWithProvider(provider);
      // ignore: avoid_print
      print('🍎 [native] signInWithProvider OK uid=${res.user?.uid}');
      return res.user != null;
    } on FirebaseAuthException catch (e, st) {
      // ignore: avoid_print
      print(
        '🔥 [native] FirebaseAuthException code=${e.code} msg=${e.message}\n$st',
      );
      return false; // allow plugin fallback
    } catch (e, st) {
      // ignore: avoid_print
      print('🔥 [native] unknown error: $e\n$st');
      return false; // allow plugin fallback
    }
  }

  Future<bool> _signInWithApplePlugin() async {
    // 1) nonce + hashed nonce
    final rawNonce = _generateNonce();
    final nonce = _sha256OfString(rawNonce);

    // ignore: avoid_print
    print('🍎 Using sign_in_with_apple plugin flow');

    // ✅ IMPORTANT: On iOS we MUST NOT pass webAuthenticationOptions at all.
    // (Not even "null") — some setups/versions behave weirdly.
    final AuthorizationCredentialAppleID appleCred = Platform.isIOS
        ? await SignInWithApple.getAppleIDCredential(
            scopes: const [
              AppleIDAuthorizationScopes.email,
              AppleIDAuthorizationScopes.fullName,
            ],
            nonce: nonce,
          )
        : await SignInWithApple.getAppleIDCredential(
            scopes: const [
              AppleIDAuthorizationScopes.email,
              AppleIDAuthorizationScopes.fullName,
            ],
            nonce: nonce,
            webAuthenticationOptions: WebAuthenticationOptions(
              clientId: _appleServiceId,
              redirectUri: _appleRedirectUri,
            ),
          );

    final idToken = appleCred.identityToken;
    if (idToken == null || idToken.isEmpty) {
      throw Exception('Missing identityToken from Apple.');
    }

    // ✅ Logga JWT claims (aud/nonce) för att se mismatch
    _logAppleIdentityTokenClaims(idToken);

    // ✅ VIKTIGT: Firebase vill ofta ha authorizationCode som "accessToken"
    // för att slippa "Invalid OAuth response from apple.com" i vissa states.
    final authCode = appleCred.authorizationCode;
    if (authCode.isEmpty) {
      // Fail fast här – annars får du random "Invalid OAuth response..." senare.
      // ignore: avoid_print
      print('❌ Apple authorizationCode missing/empty');
      throw Exception('Missing authorizationCode from Apple.');
    }

    final oauthCred = OAuthProvider('apple.com').credential(
      idToken: idToken,
      rawNonce: rawNonce,
      accessToken: authCode, // ✅ critical
    );

    await _linkOrSignInWithCredential(oauthCred);
    return true;
  }

  Future<void> _linkOrSignInWithCredential(AuthCredential cred) async {
    if (_disableAnonymousLinkForDebug) {
      final res = await _auth.signInWithCredential(cred);
      if (res.user == null) throw Exception('Sign-in failed.');
      return;
    }

    final current = _auth.currentUser;

    if (current != null && current.isAnonymous) {
      try {
        await current.linkWithCredential(cred);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'credential-already-in-use' ||
            e.code == 'provider-already-linked') {
          await _auth.signInWithCredential(cred);
        } else {
          // ignore: avoid_print
          print(
            '🔥 linkWithCredential failed: code=${e.code} message=${e.message}',
          );
          rethrow;
        }
      }
    } else {
      try {
        final res = await _auth.signInWithCredential(cred);
        if (res.user == null) throw Exception('Sign-in failed.');
      } on FirebaseAuthException catch (e) {
        // ignore: avoid_print
        print(
          '🔥 signInWithCredential failed: code=${e.code} message=${e.message}',
        );
        rethrow;
      }
    }
  }

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

      // ignore: avoid_print
      print(
        '🍎 Apple idToken claims: aud=$aud iss=$iss nonce=${nonce != null ? '(present)' : '(missing)'}',
      );
    } catch (e) {
      // ignore: avoid_print
      print('🍎 Could not decode apple identityToken claims: $e');
    }
  }
}
