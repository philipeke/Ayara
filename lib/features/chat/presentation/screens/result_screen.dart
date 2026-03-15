import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart' show SharePlus, ShareParams;
import 'package:ayara/core/config/theme.dart';

import 'package:ayara/l10n/app_localizations.dart';
import '../widgets/result_app_bar.dart';
import '../widgets/result_text_box.dart';
import '../widgets/result_bottom_bar.dart';
import '../widgets/actions_sheet.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    super.key,
    required this.category,
    required this.response,
    this.onRegenerate,
  });

  final String category;
  final String response;
  final Future<String> Function()? onRegenerate;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late String _text;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _text = widget.response;
  }

  int get _wordCount {
    final trimmed = _text.trim();
    if (trimmed.isEmpty) return 0;
    return trimmed.split(RegExp(r'\s+')).length;
  }

  /// 📋 Kopiera text
  Future<void> _onCopy() async {
    final t = AppLocalizations.of(context);
    await HapticFeedback.selectionClick();
    await Clipboard.setData(ClipboardData(text: _text));
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(t.copiedToast)),
    );
  }

  /// 📨 Dela text
  Future<void> _onShare() async {
    final t = AppLocalizations.of(context);
    await HapticFeedback.selectionClick();
    if (_text.trim().isEmpty) return;
    final subject = t.shareSubject(widget.category); // ex: "Ayara — Daily Guidance"
    await SharePlus.instance.share(ShareParams(text: _text, subject: subject));
  }

  /// 🔁 Generera nytt svar (för bottenknappen)
  Future<void> _onRegenerate() async {
    final t = AppLocalizations.of(context);
    if (widget.onRegenerate == null || _loading) return;
    setState(() => _loading = true);

    try {
      await HapticFeedback.selectionClick();
      final newText = await widget.onRegenerate!();
      if (!mounted) return;
      setState(() => _text = newText); // ResultTextBox animerar vid text-change
    } catch (e, st) {
      if (!mounted) return;

      if (kDebugMode) {
        debugPrint('ResultScreen _onRegenerate error: $e\n$st');
      }

      final msg = e.toString();

      // 🔹 Lokal/remote rate-limit → snackbar visas redan i ChatService
      if (msg.contains('local_rate_limited') ||
          msg.contains('remote_rate_limited')) {
        return;
      }

      // 🔹 Övriga fel → visa snygg dialog utan "Exception: ..."
      String cleaned = msg;
      const prefix = 'Exception: ';
      if (cleaned.startsWith(prefix)) {
        cleaned = cleaned.substring(prefix.length);
      }

      final retry = await showDialog<bool>(
        context: context,
        builder: (_) => AlertDialog(
          backgroundColor: AppColors.navy,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            t.regenerateErrorTitle,
            style: const TextStyle(color: AppColors.warmWhite),
          ),
          content: Text(
            t.regenerateErrorBody(cleaned),
            style: TextStyle(color: AppColors.warmWhite.withValues(alpha: 0.75)),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(t.cancelCta),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(t.retryCta),
            ),
          ],
        ),
      );

      if (retry == true) await _onRegenerate();
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  /// 📎 Öppna sheet med alternativ (Kopiera / Dela)
  Future<void> _openActions() async {
    await showActionsSheet(
      context: context,
      onCopy: _onCopy,
      onShare: _onShare,
    );
  }

  @override
  Widget build(BuildContext context) {
    // 🌗 Ljus statusbar-ikon mot mörk bakgrund
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      extendBodyBehindAppBar: true,
      appBar: ResultAppBar(
        category: widget.category,
        wordCount: _wordCount,
        onBack: () async {
          await HapticFeedback.lightImpact();
          await Future.delayed(const Duration(milliseconds: 100));
          if (!context.mounted) return;
          Navigator.of(context).pop();
        },
        onCopy: _onCopy,
        onShare: _onShare,
        isLoading: _loading,
      ),
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.navy,
                    AppColors.deepNavy,
                    AppColors.navyDeep,
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              24,
              MediaQuery.of(context).padding.top + kToolbarHeight + 4,
              24,
              24,
            ),
            child: ResultTextBox(
              text: _text,
              perChar: const Duration(milliseconds: 28),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ResultBottomBar(
        onOpenActions: _openActions,
        onRegenerate: widget.onRegenerate != null ? _onRegenerate : null,
        loading: _loading,
      ),
    );
  }
}
