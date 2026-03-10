// lib/core/services/account_service.dart
import 'dart:io' show Platform;

import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// Typed exception so UI can translate via ARB keys.
class AccountDeleteException implements Exception {
  /// e.g. 'server_failed', 'reauth_required', 'reauth_cancelled'
  final String code;

  /// Optional detail (keep user-facing messages in ARB; this is mainly for logs/dev)
  final String? details;

  AccountDeleteException(this.code, {this.details});

  @override
  String toString() {
    if (details != null && details!.isNotEmpty) {
      return 'AccountDeleteException($code): $details';
    }
    return 'AccountDeleteException($code)';
  }
}

class AccountService {
  final FirebaseAuth _auth;
  final FirebaseFunctions _functions;
  final GoogleSignIn _googleSignIn;

  AccountService({
    FirebaseAuth? auth,
    FirebaseFunctions? functions,
    GoogleSignIn? googleSignIn,
  })  : _auth = auth ?? FirebaseAuth.instance,
        _functions = functions ?? FirebaseFunctions.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(scopes: const ['email']);

  /// Public entrypoint:
  /// 1) Delete/anonymize server-side (Cloud Function, Admin SDK)
  /// 2) Delete Firebase Auth user (reauth if needed)
  /// 3) Sign out (safety)
  Future<void> deleteCurrentUserAccount() async {
    final user = _auth.currentUser;
    if (user == null) {
      throw AccountDeleteException(
        'server_failed',
        details: 'No signed-in user',
      );
    }

    // 1) Always delete data server-side first (rules-safe, Admin SDK)
    await _deleteUserDataServerSide();

    // 2) Delete auth user (reauth if required)
    await _deleteFirebaseAuthUserWithReauth(user);

    // 3) Safety sign out
    try {
      await _googleSignIn.signOut().catchError((_) {});
    } catch (_) {}
    try {
      await _auth.signOut();
    } catch (_) {}
  }

  /// Calls callable Cloud Function `deleteAccount`.
  Future<void> _deleteUserDataServerSide() async {
    try {
      final callable = _functions.httpsCallable(
        'deleteAccount',
        options: HttpsCallableOptions(timeout: const Duration(seconds: 60)),
      );

      final res = await callable.call(<String, dynamic>{});
      final data = res.data;

      if (data is Map && data['ok'] == false) {
        throw AccountDeleteException(
          'server_failed',
          details:
              'deleteAccount returned ok=false message=${data['message'] ?? '(null)'}',
        );
      }
    } on FirebaseFunctionsException catch (e) {
      final msg = (e.message ?? '').trim();
      throw AccountDeleteException(
        'server_failed',
        details: msg.isNotEmpty
            ? 'Functions deleteAccount failed: ${e.code} — $msg'
            : 'Functions deleteAccount failed: ${e.code}',
      );
    } catch (e) {
      throw AccountDeleteException(
        'server_failed',
        details: 'deleteAccount unknown error: $e',
      );
    }
  }

  /// Delete FirebaseAuth user. If session is old, tries reauth and retries once.
  Future<void> _deleteFirebaseAuthUserWithReauth(User user) async {
    // First try straight delete
    try {
      await user.delete();
      return;
    } on FirebaseAuthException catch (e) {
      if (e.code != 'requires-recent-login') {
        throw AccountDeleteException(
          'server_failed',
          details: 'user.delete failed: ${e.code} ${e.message}',
        );
      }
    }

    // requires-recent-login -> try reauth then retry once
    await _reauthenticateCurrentUser(user);

    try {
      await user.delete();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        throw AccountDeleteException('reauth_required');
      }
      throw AccountDeleteException(
        'server_failed',
        details: 'user.delete after reauth failed: ${e.code} ${e.message}',
      );
    }
  }

  /// Reauthenticate using the provider the user actually used.
  ///
  /// We prioritize checking user.providerData rather than Platform,
  /// because iOS can still have Google users (and vice versa).
  Future<void> _reauthenticateCurrentUser(User user) async {
    final providers = user.providerData.map((p) => p.providerId).toSet();

    // Google (google.com)
    if (providers.contains('google.com')) {
      await _reauthGoogle(user);
      return;
    }

    // Apple (apple.com)
    if (providers.contains('apple.com')) {
      // Apple provider reauth is only supported on iOS via Firebase native provider.
      if (!Platform.isIOS) {
        throw AccountDeleteException('reauth_required');
      }
      await _reauthAppleNative(user);
      return;
    }

    // Unknown provider (email/password etc.) -> require manual re-login
    throw AccountDeleteException('reauth_required');
  }

  /// Apple reauth using Firebase native provider (recommended).
  Future<void> _reauthAppleNative(User user) async {
    try {
      final provider = AppleAuthProvider()
        ..addScope('email')
        ..addScope('name');

      await user.reauthenticateWithProvider(provider);
    } on FirebaseAuthException catch (e) {
      final code = e.code.toLowerCase();
      if (code.contains('cancel')) {
        throw AccountDeleteException('reauth_cancelled');
      }
      if (e.code == 'requires-recent-login') {
        throw AccountDeleteException('reauth_required');
      }
      throw AccountDeleteException(
        'server_failed',
        details: 'Reauth Apple failed: ${e.code} ${e.message}',
      );
    } catch (e) {
      final msg = e.toString().toLowerCase();
      if (msg.contains('cancel')) {
        throw AccountDeleteException('reauth_cancelled');
      }
      throw AccountDeleteException(
        'server_failed',
        details: 'Reauth Apple unknown error: $e',
      );
    }
  }

  /// Google reauth via fresh Google tokens.
  Future<void> _reauthGoogle(User user) async {
    try {
      await _googleSignIn.signOut().catchError((_) {});
      final acc = await _googleSignIn.signIn();
      if (acc == null) {
        throw AccountDeleteException('reauth_cancelled');
      }

      final auth = await acc.authentication;
      final cred = GoogleAuthProvider.credential(
        idToken: auth.idToken,
        accessToken: auth.accessToken,
      );

      await user.reauthenticateWithCredential(cred);
    } on AccountDeleteException {
      rethrow;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        throw AccountDeleteException('reauth_required');
      }
      throw AccountDeleteException(
        'server_failed',
        details: 'Reauth Google failed: ${e.code} ${e.message}',
      );
    } catch (e) {
      final msg = e.toString().toLowerCase();
      if (msg.contains('cancel')) {
        throw AccountDeleteException('reauth_cancelled');
      }
      throw AccountDeleteException(
        'server_failed',
        details: 'Reauth Google unknown error: $e',
      );
    }
  }
}
