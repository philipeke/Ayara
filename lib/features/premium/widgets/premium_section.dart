import 'package:flutter/material.dart';

import 'package:ayara/features/limit/usage_service.dart';
import 'package:ayara/features/premium/purchase_controller.dart';
import 'package:ayara/features/premium/widgets/glass_button.dart';
import 'package:ayara/l10n/app_localizations.dart';

enum _PremiumAction { buyBlessed, buy100, buy200, buy400 }

class PremiumSection extends StatefulWidget {
  /// True when the user has Blessed entitlement.
  final bool isBlessedPlan;

  final UsageSnapshot? usage;

  /// Parent busy (e.g. SettingsScreen doing work)
  final bool busy;

  const PremiumSection({
    super.key,
    required this.isBlessedPlan,
    required this.usage,
    required this.busy,
  });

  @override
  State<PremiumSection> createState() => _PremiumSectionState();
}

class _PremiumSectionState extends State<PremiumSection> {
  _PremiumAction? _busyAction;

  bool get _hasLocalBusy => _busyAction != null;

  bool _isThisButtonBusy(_PremiumAction action, bool controllerLoading) {
    return _busyAction == action || (controllerLoading && _busyAction == action);
  }

  bool _isThisButtonDisabled(_PremiumAction action, bool controllerLoading) {
    return widget.busy || controllerLoading || _busyAction == action;
  }

  bool _shouldBlockTapForOtherButtons(_PremiumAction action) {
    return _hasLocalBusy && _busyAction != action;
  }

  double _softLockOpacity(_PremiumAction action) {
    if (!_hasLocalBusy) return 1.0;
    if (_busyAction == action) return 1.0;
    return 0.78;
  }

  Future<void> _runAction(
    _PremiumAction action,
    Future<void> Function() fn,
  ) async {
    if (!mounted) return;
    if (_hasLocalBusy) return;

    setState(() => _busyAction = action);
    try {
      await fn();
    } catch (e) {
      if (!mounted) return;
      final t = AppLocalizations.of(context);
      final msg = e is StateError
          ? t.blessedProductNotAvailable
          : t.blessedPurchaseError;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    } finally {
      if (mounted) setState(() => _busyAction = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    final currentPlanLabel = widget.isBlessedPlan ? t.planBlessed : t.planGrace;

    final remaining = widget.usage?.creditsRemaining ?? 0;

    return AnimatedBuilder(
      animation: PurchaseController.instance,
      builder: (context, _) {
        final isLoading = PurchaseController.instance.isLoading;
        final isAvailable = PurchaseController.instance.isAvailable;
        final didInit = PurchaseController.instance.didInit;

        final bool waitingForIapInit = !didInit;

        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star_rounded, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        t.blessedTitle,
                        style: Theme.of(context).textTheme.titleMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (widget.isBlessedPlan)
                      Chip(
                        label: Text(
                          t.blessedBadge,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: Colors.white),
                        ),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  widget.isBlessedPlan
                      ? t.blessedSubtitleBlessed
                      : t.blessedSubtitleGrace,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey[700]),
                ),
                const SizedBox(height: 12),
                Text(
                  t.blessedCurrentPlan(currentPlanLabel),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                // Show only how many reflections remain, not the total
                Text(
                  t.limitCreditsLabel(remaining),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey[600]),
                ),
                const SizedBox(height: 14),

                if (waitingForIapInit)
                  Text(
                    t.blessedLoadingStore,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.grey[700]),
                  )
                else if (!isAvailable)
                  Text(
                    t.blessedPurchasesUnavailable,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.redAccent),
                  )
                else
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // ── Grace: upgrade to Blessed ─────────────────────────
                      if (!widget.isBlessedPlan) ...[
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 140),
                          curve: Curves.easeOut,
                          opacity: _softLockOpacity(_PremiumAction.buyBlessed),
                          child: GlassButton(
                            label: t.blessedButtonBecomeBlessed,
                            icon: Icons.star_rounded,
                            variant: GlassButtonVariant.gold,
                            busy: _isThisButtonBusy(
                              _PremiumAction.buyBlessed,
                              isLoading,
                            ),
                            onPressed: _isThisButtonDisabled(
                                      _PremiumAction.buyBlessed,
                                      isLoading,
                                    )
                                ? null
                                : () async {
                                    if (_shouldBlockTapForOtherButtons(
                                      _PremiumAction.buyBlessed,
                                    )) return;
                                    await _runAction(
                                      _PremiumAction.buyBlessed,
                                      () => PurchaseController.instance.buyBlessed(),
                                    );
                                  },
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          t.blessedBenefitsGrace,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 14),
                      ],

                      // ── Blessed: top-up reflections ───────────────────────
                      if (widget.isBlessedPlan) ...[
                        // 100 reflections — gold (same as Become Blessed)
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 140),
                          curve: Curves.easeOut,
                          opacity: _softLockOpacity(_PremiumAction.buy100),
                          child: GlassButton(
                            label: t.blessedBuyReflections100,
                            icon: Icons.add_circle_outline_rounded,
                            variant: GlassButtonVariant.gold,
                            busy: _isThisButtonBusy(
                              _PremiumAction.buy100,
                              isLoading,
                            ),
                            onPressed: _isThisButtonDisabled(
                                      _PremiumAction.buy100,
                                      isLoading,
                                    )
                                ? null
                                : () async {
                                    if (_shouldBlockTapForOtherButtons(
                                      _PremiumAction.buy100,
                                    )) return;
                                    await _runAction(
                                      _PremiumAction.buy100,
                                      () => PurchaseController.instance.buyReflections100(),
                                    );
                                  },
                          ),
                        ),
                        const SizedBox(height: 12),

                        // 200 reflections — gold
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 140),
                          curve: Curves.easeOut,
                          opacity: _softLockOpacity(_PremiumAction.buy200),
                          child: GlassButton(
                            label: t.blessedBuyReflections200,
                            icon: Icons.add_circle_outline_rounded,
                            variant: GlassButtonVariant.gold,
                            busy: _isThisButtonBusy(
                              _PremiumAction.buy200,
                              isLoading,
                            ),
                            onPressed: _isThisButtonDisabled(
                                      _PremiumAction.buy200,
                                      isLoading,
                                    )
                                ? null
                                : () async {
                                    if (_shouldBlockTapForOtherButtons(
                                      _PremiumAction.buy200,
                                    )) return;
                                    await _runAction(
                                      _PremiumAction.buy200,
                                      () => PurchaseController.instance.buyReflections200(),
                                    );
                                  },
                          ),
                        ),
                        // Extra top spacing so the "Best value" badge doesn't clip
                        const SizedBox(height: 18),

                        // 400 reflections — gold with "Best value" badge
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 140),
                          curve: Curves.easeOut,
                          opacity: _softLockOpacity(_PremiumAction.buy400),
                          child: GlassButton(
                            label: t.blessedBuyReflections400,
                            icon: Icons.add_circle_outline_rounded,
                            variant: GlassButtonVariant.gold,
                            badgeLabel: 'Best value',
                            busy: _isThisButtonBusy(
                              _PremiumAction.buy400,
                              isLoading,
                            ),
                            onPressed: _isThisButtonDisabled(
                                      _PremiumAction.buy400,
                                      isLoading,
                                    )
                                ? null
                                : () async {
                                    if (_shouldBlockTapForOtherButtons(
                                      _PremiumAction.buy400,
                                    )) return;
                                    await _runAction(
                                      _PremiumAction.buy400,
                                      () => PurchaseController.instance.buyReflections400(),
                                    );
                                  },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          t.blessedTopupHint,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey[600]),
                        ),
                      ],
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

