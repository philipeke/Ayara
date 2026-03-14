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
      backgroundColor: AppColors.deepNavy,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.gold),
          onPressed: () {
            HapticFeedback.lightImpact();
            Navigator.of(context).pop();
          },
        ),
        titleSpacing: 0,
        title: Builder(builder: (context) {
          final shortest = MediaQuery.of(context).size.shortestSide;
          final scale = (shortest / 360.0).clamp(0.85, 1.35);
          final double badgeFont = (14.0 * scale).clamp(12.0, 16.0);
          final double badgePadV = (6.0 * scale).clamp(4.0, 8.0);
          final double badgePadH = (10.0 * scale).clamp(8.0, 14.0);
          final double wordFont = (12.0 * scale).clamp(11.0, 14.0);
          final double gap = (8.0 * scale).clamp(6.0, 10.0);

          return Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: badgePadH, vertical: badgePadV),
                  decoration: BoxDecoration(
                    color: AppColors.gold.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: AppColors.gold.withValues(alpha: 0.35)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.help_outline_rounded,
                          size: badgeFont * 0.75, color: AppColors.gold),
                      SizedBox(width: gap * 0.6),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              t.askResultYourQuestion,
                              maxLines: 1,
                              softWrap: false,
                              style: GoogleFonts.raleway(
                                color: AppColors.gold,
                                fontSize: badgeFont,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: gap),
              Text(
                t.wordCount(_wordCount),
                style: GoogleFonts.raleway(
                  color: Colors.white70,
                  fontSize: wordFont,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.1,
                ),
              ),
            ],
          );
        }),
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
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.navy,
                    AppColors.deepNavy,
                    AppColors.navyDeep,
                  ],
                  stops: [0.0, 0.50, 1.0],
                ),
              ),
            ),
          ),
          SafeArea(
            top: false,
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
                  color: AppColors.navy.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: AppColors.gold.withValues(alpha: 0.40),
                  ),
                ),
                child: Text(
                  widget.question,
                  style: GoogleFonts.lora(
                    fontSize: 14,
                    color: Colors.white.withValues(alpha: 0.82),
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
