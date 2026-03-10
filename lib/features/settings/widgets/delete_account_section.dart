// lib/features/settings/widgets/delete_account_section.dart
import 'package:flutter/material.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'delete_account_button.dart';

class DeleteAccountSection extends StatelessWidget {
  const DeleteAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.settingsDeleteTitle,
          style: theme.textTheme.titleMedium!.copyWith(
            color: const Color(0xFF8B1A1A), // dark wine red
          ),
        ),

        const SizedBox(height: 8),

        Text(
          t.settingsDeleteDescription,
          style: theme.textTheme.bodySmall?.copyWith(
            color: const Color(0xFF424242),
            height: 1.4,
          ),
        ),

        const SizedBox(height: 10),

        // Permanent warning text — dark green, serious but calm
        Text(
          t.settingsDeletePermanentWarning,
          style: theme.textTheme.bodySmall?.copyWith(
            color: const Color(0xFF8B1A1A),
            fontWeight: FontWeight.w600,
            height: 1.3,
          ),
        ),

        const SizedBox(height: 16),

        const DeleteAccountButton(),
      ],
    );
  }
}
