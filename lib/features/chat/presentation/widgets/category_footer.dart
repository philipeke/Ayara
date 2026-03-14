// lib/features/chat/presentation/widgets/category_footer.dart
import 'package:flutter/material.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';

class CategoryFooter extends StatelessWidget {
  const CategoryFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context);
    final screenHeight = MediaQuery.of(context).size.height;

    // Scale down aggressively on small screens so the category grid stays visible.
    final bool isXS = screenHeight < 640;
    final bool isSmall = screenHeight < 720;

    final double titleFont = isXS ? 22.0 : (isSmall ? 26.0 : 36.0);
    final double subtitleFont = isXS ? 12.0 : (isSmall ? 13.0 : 16.0);
    final double iconSize = isXS ? 18.0 : (isSmall ? 20.0 : 26.0);
    final EdgeInsets contentPadding = isXS
        ? const EdgeInsets.fromLTRB(20, 4, 20, 6)
        : isSmall
            ? const EdgeInsets.fromLTRB(20, 6, 20, 10)
            : const EdgeInsets.fromLTRB(20, 10, 20, 18);
    final double gapBetween = isXS ? 4.0 : (isSmall ? 6.0 : 10.0);

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        // Glow bleeds 80px outside widget bounds on all sides — no hard edges
        Positioned(
          top: -80,
          bottom: -80,
          left: -60,
          right: -60,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.65,
                colors: [
                  AppColors.crimson.withValues(alpha: 0.20),
                  AppColors.crimsonDeep.withValues(alpha: 0.10),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.50, 1.0],
              ),
            ),
          ),
        ),

        // Content
        Padding(
          padding: contentPadding,
          child: Column(
            children: [
              Text(
                t.footerTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: AppColors.islamic,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.9,
                  fontSize: titleFont,
                  height: 1.1,
                ),
              ),
              SizedBox(height: gapBetween),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
                  Text(
                    t.footerSubtitle,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppColors.textSecondary,
                      fontSize: subtitleFont,
                      height: 1.65,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.nightlight_round,
                          color: AppColors.gold,
                          size: iconSize,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
