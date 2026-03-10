// lib/features/chat/presentation/widgets/category_footer.dart
import 'package:flutter/material.dart';
import 'package:nuria/core/config/theme.dart';
import 'package:nuria/l10n/app_localizations.dart';

class CategoryFooter extends StatelessWidget {
  const CategoryFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 18),
      child: Column(
        children: [
          // Title
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
          // Subtitle + crescent inline — text centered, crescent follows
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
    );
  }
}

