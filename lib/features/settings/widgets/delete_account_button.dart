// lib/features/settings/widgets/delete_account_button.dart
import 'dart:io' show Platform;

import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:nuria/features/limit/usage_service.dart';
import 'package:nuria/features/limit/usage_refresh_service.dart';
import 'package:nuria/l10n/app_localizations.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        icon: const Icon(Icons.delete_forever, color: Colors.red),
        label: Text(
          t.settingsDeleteButtonLabel,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.red,
          side: const BorderSide(color: Colors.red),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        onPressed: () => _showConfirmDialog(context),
      ),
    );
  }

  void _showConfirmDialog(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(t.settingsDeleteDialogTitle),
        content: Text(t.settingsDeleteDialogBody),
        actions: [
          TextButton(
            child: Text(t.settingsDeleteDialogCancel),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: Text(
              t.settingsDeleteDialogConfirm,
              style: const TextStyle(color: Colors.red),
            ),
            onPressed: () async {
              Navigator.of(context).pop();
              await _performDelete(context);
            },
          ),
        ],
      ),
    );
  }

  Future<void> _performDelete(BuildContext context) async {
    final t = AppLocalizations.of(context)!;
    final navigator = Navigator.of(context);

    // Loader
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      // 1) Backend delete (Firestore + anonymize ledger etc.)
      await FirebaseFunctions.instance
          .httpsCallable('deleteAccount')
          .call(<String, dynamic>{});

      // 2) Delete Firebase Auth user (reauth if needed)
      await _deleteAuthUserWithReauthIfNeeded(context);

      if (!context.mounted) return;

      navigator.pop(); // close loader

      // ✅ Clear stale usage so CategoryScreen doesn't show the deleted
      // account's credits when the user continues as guest.
      UsageRefreshService.instance.resetSessionGuard();
      UsageService.instance.clear();

      // Success dialog
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
          title: Text(t.accountDeleteSuccessTitle),
          content: Text(t.accountDeleteSuccessBody),
          actions: [
            TextButton(
              child: Text(t.accountDeleteSuccessClose),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );

      // Back to auth
      navigator.pushNamedAndRemoveUntil('/auth', (_) => false);
    } catch (e) {
      // Close loader
      try {
        navigator.pop();
      } catch (_) {}

      if (!context.mounted) return;

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(t.accountDeleteErrorTitle),
          content: Text(e.toString()),
          actions: [
            TextButton(
              child: Text(t.accountDeleteErrorClose),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );
    }
  }

  Future<void> _deleteAuthUserWithReauthIfNeeded(BuildContext context) async {
    final t = AppLocalizations.of(context)!;

    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user == null) return;

    // First try straight delete
    try {
      await user.delete();
      return;
    } on FirebaseAuthException catch (e) {
      if (e.code != 'requires-recent-login') rethrow;
    }

    // requires-recent-login -> attempt reauth based on provider
    final providers = user.providerData.map((p) => p.providerId).toSet();
    final hasGoogle = providers.contains('google.com');

    // 🤖 Android: Google reauth
    if (Platform.isAndroid && hasGoogle) {
      final g = GoogleSignIn(scopes: const ['email']);
      await g.signOut().catchError((_) {});
      final acc = await g.signIn();

      if (acc == null) {
        // User closed picker
        throw Exception(t.accountDeleteReauthCancelled);
      }

      try {
        final authData = await acc.authentication;
        final cred = GoogleAuthProvider.credential(
          idToken: authData.idToken,
          accessToken: authData.accessToken,
        );

        await user.reauthenticateWithCredential(cred);
        await user.delete();
        return;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'requires-recent-login') {
          throw Exception(t.accountDeleteReauthRequired);
        }
        throw Exception('${t.accountDeleteErrorTitle}: ${e.message ?? e.code}');
      }
    }

    // 🍎 iOS (Nuria): use the built-in provider UI (no sign_in_with_apple import needed).
    // This avoids an extra plugin dependency in this widget.
    try {
      final hasApple = providers.contains('apple.com');
      if (Platform.isIOS && hasApple) {
        final provider = AppleAuthProvider()
          ..addScope('email')
          ..addScope('name');

        await user.reauthenticateWithProvider(provider);
        await user.delete();
        return;
      }
    } on FirebaseAuthException catch (e) {
      final code = e.code.toLowerCase();
      if (code.contains('cancel')) {
        throw Exception(t.accountDeleteReauthCancelled);
      }
      if (code == 'requires-recent-login') {
        throw Exception(t.accountDeleteReauthRequired);
      }
      throw Exception('${t.accountDeleteErrorTitle}: ${e.message ?? e.code}');
    } catch (e) {
      final msg = e.toString().toLowerCase();
      if (msg.contains('cancel')) {
        throw Exception(t.accountDeleteReauthCancelled);
      }
      rethrow;
    }

    // Fallback (email/pass etc) -> tell user to sign out/in again
    throw Exception(t.accountDeleteReauthRequired);
  }
}
