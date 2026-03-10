// lib/features/chat/presentation/widgets/actions_sheet.dart
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nuria/l10n/app_localizations.dart';
import 'package:nuria/core/config/theme.dart';

Future<void> showActionsSheet({
  required BuildContext context,
  required Future<void> Function() onCopy,
  required Future<void> Function() onShare,
}) async {
  if (!context.mounted) return;

  await showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withValues(alpha: 0.35),
    builder: (ctx) {
      final t = AppLocalizations.of(ctx)!;
      final theme = Theme.of(ctx);

      final bottomInset = MediaQuery.of(ctx).viewPadding.bottom;

      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
          child: Container(
            padding: EdgeInsets.fromLTRB(18, 12, 18, 14 + bottomInset),
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(24)),

              // ✅ VESPERA PANEL (match category tiles)
              color: AppColors.warmWhite.withValues(alpha: 0.96),

              border: Border.all(
                color: AppColors.gold.withValues(alpha: 0.35),
              ),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.18),
                  blurRadius: 28,
                  offset: const Offset(0, -6),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // drag handle
                Container(
                  width: 42,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 14),
                  decoration: BoxDecoration(
                    color: AppColors.navy.withValues(alpha: 0.25),
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),

                Text(
                  t.actionsTitle,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: AppColors.navy,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                const SizedBox(height: 16),

                Row(
                  children: [
                    Expanded(
                      child: _NuriaActionButton(
                        icon: Icons.copy_rounded,
                        label: t.copy,
                        onPressed: () async {
                          Navigator.pop(ctx);
                          await onCopy();
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _NuriaActionButton.filled(
                        icon: Icons.share_rounded,
                        label: t.share,
                        onPressed: () async {
                          Navigator.pop(ctx);
                          await onShare();
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: Text(
                    t.close,
                    style: TextStyle(
                      color: AppColors.navy.withValues(alpha: 0.65),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

class _NuriaActionButton extends StatelessWidget {
  const _NuriaActionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    this.filled = false,
  });

  const _NuriaActionButton.filled({
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : filled = true;

  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final bg = filled
        ? AppColors.gold.withValues(alpha: 0.14)
        : AppColors.gold.withValues(alpha: 0.06);

    final fg = AppColors.navy;

    final border = AppColors.gold.withValues(alpha: 0.45);

    return SizedBox(
      height: 50,
      child: TextButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: fg),
        label: Text(
          label,
          style: TextStyle(
            color: fg,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: bg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: BorderSide(color: border),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14),
        ),
      ),
    );
  }
}
