// lib/features/chat/presentation/widgets/category_header.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/limit/usage_service.dart';
import 'package:ayara/features/home/home_shell.dart';

class CategoryHeader extends StatefulWidget implements PreferredSizeWidget {
  const CategoryHeader({super.key, this.showTitle = true});

  final bool showTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<CategoryHeader> createState() => _CategoryHeaderState();
}

class _CategoryHeaderState extends State<CategoryHeader>
    with TickerProviderStateMixin {
  late final AnimationController _intro = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 720),
  )..forward();

  late final Animation<double> _fade =
      CurvedAnimation(parent: _intro, curve: Curves.easeOut);

  late final Animation<Offset> _slide = Tween<Offset>(
    begin: const Offset(0, -0.04),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(parent: _intro, curve: Curves.easeOutCubic),
  );

  @override
  void dispose() {
    _intro.dispose();
    super.dispose();
  }

  String _reflectionsLabel(AppLocalizations t) {
    final snap = UsageService.instance.current;
    final remaining = snap?.creditsRemaining;

    if (remaining == null) return t.creditsRemainingLabel('—');
    return t.creditsRemainingLabel(remaining);
  }

  bool _isPremium() {
    final snap = UsageService.instance.current;
    return (snap?.plan ?? 'basic') == 'premium';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return LayoutBuilder(
      builder: (context, constraints) {
        final w = constraints.maxWidth;

        final isXS = w < 340;
        final isS = w < 380;

        final horizontalPad = isXS ? 12.0 : (isS ? 16.0 : 20.0);

        final settingsIconSize = isXS ? 26.0 : (isS ? 30.0 : 32.0);
        final settingsTapSize = isXS ? 40.0 : 44.0;

        final reflectionsFont = isXS ? 12.0 : (isS ? 12.5 : 13.0);

        return FadeTransition(
          opacity: _fade,
          child: SlideTransition(
            position: _slide,
            child: Padding(
              padding: EdgeInsets.fromLTRB(horizontalPad, 0, horizontalPad, 0),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: settingsTapSize + 4),

                      if (widget.showTitle) ...[
                        Text(
                          t.footerTitle,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: AppColors.islamic,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.4,
                            fontSize: 27,
                            height: 1.15,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          t.footerSubtitle,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: AppColors.textSecondary,
                            fontSize: 15,
                            height: 1.35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ],
                  ),

                  /// ✅ TOP ROW: Premium badge + reflections (scaleDown as a unit) + settings (pinned right)
                  Positioned(
                    top: 2,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: settingsTapSize,
                      child: AnimatedBuilder(
                        animation: UsageService.instance,
                        builder: (context, _) {
                          final premium = _isPremium();

                          final cluster = Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (premium) ...[
                                const _PremiumBadge(),
                                const SizedBox(width: 8),
                              ],
                              Text(
                                _reflectionsLabel(t),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: AppColors.islamic.withValues(alpha: 0.70),
                                  fontSize: reflectionsFont,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.25,
                                  height: 1.0,
                                ),
                              ),
                            ],
                          );

                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: settingsTapSize,
                                height: settingsTapSize,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  tooltip: t.navHome,
                                  icon: const Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: AppColors.gold,
                                  ),
                                  onPressed: () {
                                    HapticFeedback.lightImpact();
                                    HomeShell.of(context)?.jumpTo(0);
                                  },
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                    child: cluster,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: settingsTapSize,
                                height: settingsTapSize,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  tooltip: t.settingsTitle,
                                  icon: Icon(
                                    Icons.settings_rounded,
                                    color: AppColors.islamic,
                                    size: settingsIconSize,
                                  ),
                                  onPressed: () {
                                    HapticFeedback.selectionClick();
                                    Navigator.pushNamed(context, '/settings');
                                  },
                                ),
                              ),
                            ],
                          );
                        },
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
}

class _PremiumBadge extends StatelessWidget {
  const _PremiumBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.gold.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.55)),
        boxShadow: [
          BoxShadow(
            color: AppColors.gold.withValues(alpha: 0.12),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star_rounded, size: 16, color: AppColors.goldBright),
          const SizedBox(width: 6),
          Text(
            AppLocalizations.of(context)!.planPremium,
            style: const TextStyle(
              color: AppColors.goldBright,
              fontWeight: FontWeight.w800,
              fontSize: 12.0,
              height: 1.0,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
