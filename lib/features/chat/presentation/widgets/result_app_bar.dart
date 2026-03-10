// lib/features/chat/presentation/widgets/result_app_bar.dart
import 'package:flutter/material.dart';
import 'package:nuria/l10n/app_localizations.dart';
import 'package:nuria/core/config/theme.dart';

class ResultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ResultAppBar({
    super.key,
    required this.category,
    required this.wordCount,
    required this.onBack,
    required this.onCopy,
    required this.onShare,
    this.isLoading = false,
  });

  final String category;
  final int wordCount;
  final VoidCallback onBack;
  final VoidCallback onCopy;
  final VoidCallback onShare;
  final bool isLoading;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    // ✅ Nuria brand rule:
    // Result badge ALWAYS uses brand gold (same as category icons)
    final Color categoryColor = AppColors.gold;

    // Adaptiv skala
    final size = MediaQuery.of(context).size;
    final shortest = size.shortestSide;
    final scale = (shortest / 360.0).clamp(0.85, 1.35);

    final double iconSize = (22.0 * scale).clamp(18.0, 28.0);
    final double badgeFont = (14.0 * scale).clamp(12.0, 16.0);
    final double badgePadV = (6.0 * scale).clamp(4.0, 8.0);
    final double badgePadH = (10.0 * scale).clamp(8.0, 14.0);
    final double wordFont = (12.0 * scale).clamp(11.0, 14.0);
    final double gap = (8.0 * scale).clamp(6.0, 10.0);

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        iconSize: iconSize,
        icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        onPressed: onBack,
      ),
      titleSpacing: 0,
      title: Row(
        children: [
          // Badge
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: badgePadH,
                vertical: badgePadV,
              ),
              decoration: BoxDecoration(
                color: categoryColor.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: categoryColor.withValues(alpha: 0.35),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: badgeFont * 0.6,
                    color: categoryColor,
                  ),
                  SizedBox(width: gap * 0.6),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          category,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                            color: categoryColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2,
                            fontSize: badgeFont,
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

          // Word count + loading
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                t.wordCount(wordCount),
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: wordFont,
                ),
              ),
              if (isLoading) ...[
                SizedBox(width: gap * 0.75),
                SizedBox(
                  width: iconSize * 0.72,
                  height: iconSize * 0.72,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(categoryColor),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          iconSize: iconSize,
          tooltip: t.copy,
          onPressed: isLoading ? null : onCopy,
          icon: const Icon(Icons.copy, color: Colors.white),
        ),
        IconButton(
          iconSize: iconSize,
          tooltip: t.share,
          onPressed: isLoading ? null : onShare,
          icon: const Icon(Icons.share, color: Colors.white),
        ),
        SizedBox(width: gap),
      ],
    );
  }
}
