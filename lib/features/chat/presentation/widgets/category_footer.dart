// lib/features/chat/presentation/widgets/category_footer.dart
import 'package:flutter/material.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';

class CategoryFooter extends StatelessWidget {
  const CategoryFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

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
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 18),
          child: Column(
            children: [
              Text(
                t.footerTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: AppColors.islamic,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.9,
                  fontSize: 36,
                  height: 1.1,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
                  Text(
                    t.footerSubtitle,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppColors.textSecondary,
                      fontSize: 16,
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
                          size: 26,
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
