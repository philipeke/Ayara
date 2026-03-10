// lib/features/settings/widgets/free_plan_blocked_notice.dart
import 'package:flutter/material.dart';
import 'package:ayara/l10n/app_localizations.dart';

class FreePlanBlockedNotice extends StatelessWidget {
  const FreePlanBlockedNotice({
    super.key,
    required this.isFreePlanBlocked,
  });

  final bool isFreePlanBlocked;

  @override
  Widget build(BuildContext context) {
    if (!isFreePlanBlocked) {
      return const SizedBox.shrink();
    }

    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.settingsFreeLimitUsedTitle,
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.red.shade400,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          t.settingsFreeLimitUsedDescription,
          style: theme.textTheme.bodySmall?.copyWith(
            color: const Color(0xFF555555),
            height: 1.3,
          ),
        ),
      ],
    );
  }
}
