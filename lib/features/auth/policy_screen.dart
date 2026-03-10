// lib/features/auth/policy_screen.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:nuria/l10n/app_localizations.dart';

class PolicyScreen extends StatefulWidget {
  final bool isTerms;
  const PolicyScreen({super.key, required this.isTerms});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  bool _opening = false;

  void _snack(String msg) {
    final m = ScaffoldMessenger.maybeOf(context);
    if (m == null) return;
    m.showSnackBar(SnackBar(content: Text(msg)));
  }

  static const String _privacyUrl = 'https://nuria.oakdev.app/privacy/';
  static const String _termsUrl = 'https://nuria.oakdev.app/terms/';

  Uri _policyUri({required bool isTerms}) {
    return Uri.parse(isTerms ? _termsUrl : _privacyUrl);
  }

  Future<void> _open() async {
    if (_opening) return;
    setState(() => _opening = true);

    final uri = _policyUri(isTerms: widget.isTerms);

    try {
      // 1) Försök öppna i in-app webview (smidigt i auth-flödet)
      final okInApp = await launchUrl(
        uri,
        mode: LaunchMode.inAppWebView,
        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: true,
          enableDomStorage: true,
        ),
      );

      if (!okInApp) {
        // 2) Fallback: extern browser
        final okExternal = await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        if (!okExternal) _snack('Could not open link.');
      }

      // När vi lyckats öppna: stäng denna skärm så användaren inte fastnar här.
      if (mounted) Navigator.of(context).pop();
    } catch (e) {
      _snack('Could not open link: $e');
    } finally {
      if (mounted) setState(() => _opening = false);
    }
  }

  @override
  void initState() {
    super.initState();
    // Öppna direkt när skärmen pushas
    WidgetsBinding.instance.addPostFrameCallback((_) => _open());
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isTerms ? l.openTerms : l.openPrivacy),
      ),
      body: Center(
        child: _opening
            ? const CircularProgressIndicator()
            : FilledButton(
                onPressed: _open,
                child: Text(widget.isTerms ? l.openTerms : l.openPrivacy),
              ),
      ),
    );
  }
}
