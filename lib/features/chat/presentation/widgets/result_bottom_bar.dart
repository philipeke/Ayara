// lib/features/chat/presentation/widgets/result_bottom_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nuria/l10n/app_localizations.dart';

class ResultBottomBar extends StatefulWidget {
  const ResultBottomBar({
    super.key,
    required this.onOpenActions,
    this.onRegenerate,
    this.loading = false,
  });

  final Future<void> Function() onOpenActions;
  final Future<void> Function()? onRegenerate;
  final bool loading;

  @override
  State<ResultBottomBar> createState() => _ResultBottomBarState();
}

class _ResultBottomBarState extends State<ResultBottomBar> {
  bool _altPressed = false;
  bool _regenPressed = false;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final isRegenAvailable = widget.onRegenerate != null;

    // Liten, kontrollerad marginal ovanför navbar/home-indicator
    const designBottomGap = 4.0;

    return SafeArea(
      top: false,
      minimum: const EdgeInsets.only(bottom: designBottomGap),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
        child: Row(
          children: [
            Expanded(
              child: Listener(
                onPointerDown: (_) => setState(() => _altPressed = true),
                onPointerUp: (_) => setState(() => _altPressed = false),
                onPointerCancel: (_) => setState(() => _altPressed = false),
                child: AnimatedScale(
                  scale: _altPressed ? 0.98 : 1.0,
                  duration: const Duration(milliseconds: 110),
                  curve: Curves.easeOut,
                  child: OutlinedButton.icon(
                    onPressed: () async {
                      await HapticFeedback.selectionClick();
                      await widget.onOpenActions();
                    },
                    icon: const Icon(Icons.more_horiz),
                    label: Text(t.optionsCta),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.white.withValues(alpha: 0.07),
                      side: BorderSide(
                          color: Colors.white.withValues(alpha: 0.22)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            if (isRegenAvailable)
              Expanded(
                child: Listener(
                  onPointerDown: (_) {
                    if (widget.loading) return;
                    setState(() => _regenPressed = true);
                  },
                  onPointerUp: (_) => setState(() => _regenPressed = false),
                  onPointerCancel: (_) => setState(() => _regenPressed = false),
                  child: AnimatedScale(
                    scale: (_regenPressed && !widget.loading) ? 0.98 : 1.0,
                    duration: const Duration(milliseconds: 110),
                    curve: Curves.easeOut,
                    child: FilledButton.icon(
                      onPressed: widget.loading ? null : widget.onRegenerate,
                      icon: widget.loading
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.refresh),
                      label: Text(t.newCta),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
