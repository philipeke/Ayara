// lib/features/qibla/ask_result_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart' show SharePlus, ShareParams;
import 'package:google_fonts/google_fonts.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/chat/presentation/widgets/result_text_box.dart';
import 'package:ayara/features/chat/presentation/widgets/actions_sheet.dart';
import 'package:ayara/features/chat/presentation/widgets/result_bottom_bar.dart';

/// Result screen for the free-text Ask feature.
/// Displays the user's question above the AI answer with copy/share actions.
class AskResultScreen extends StatefulWidget {
  const AskResultScreen({
    super.key,
    required this.question,
    required this.response,
  });

  final String question;
  final String response;

  @override
  State<AskResultScreen> createState() => _AskResultScreenState();
}

class _AskResultScreenState extends State<AskResultScreen> {
  late String _text;

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

  Future<void> _onCopy() async {
    final t = AppLocalizations.of(context);
    await HapticFeedback.selectionClick();
    final full = '${widget.question}\n\n$_text';
    await Clipboard.setData(ClipboardData(text: full));
    if (!mounted) return;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(t.copiedToast)));
  }

  Future<void> _onShare() async {
    await HapticFeedback.selectionClick();
    if (_text.trim().isEmpty) return;
    final full = '${widget.question}\n\n$_text';
    await SharePlus.instance.share(ShareParams(text: full));
  }

  Future<void> _openActions() async {
    await showActionsSheet(
      context: context,
      onCopy: _onCopy,
      onShare: _onShare,
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xFF061D0F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.white, size: 20),
          onPressed: () {
            HapticFeedback.lightImpact();
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: AppColors.gold.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.gold.withValues(alpha: 0.35),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.help_outline_rounded,
                        size: 12, color: AppColors.gold),
                    const SizedBox(width: 6),
                    Text(
                      t.askResultYourQuestion,
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              t.wordCount(_wordCount),
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.copy, color: Colors.white, size: 20),
            tooltip: t.copy,
            onPressed: _onCopy,
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Colors.white, size: 20),
            tooltip: t.share,
            onPressed: _onShare,
          ),
          const SizedBox(width: 4),
        ],
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
                    Color(0xFF061D0F),
                    Color(0xFF0C3A1E),
                    Color(0xFF061D0F),
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Question box
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.islamic.withValues(alpha: 0.50),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: AppColors.gold.withValues(alpha: 0.25),
                  ),
                ),
                child: Text(
                  widget.question,
                  style: GoogleFonts.lora(
                    fontSize: 14,
                    color: AppColors.goldSubtle,
                    fontStyle: FontStyle.italic,
                    height: 1.55,
                  ),
                ),
              ),
            ),

            // AI answer
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 4, 24, 0),
                child: ResultTextBox(
                  text: _text,
                  perChar: const Duration(milliseconds: 22),
                ),
              ),
            ),
          ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ResultBottomBar(
        onOpenActions: _openActions,
        // No regenerate for free-text ask (each question is unique)
      ),
    );
  }
}
