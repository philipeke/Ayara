import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({
    super.key,
    required this.isGuest,
    required this.accountStatus,
    required this.email,
    required this.isPremiumPlan,
    required this.busy,
    required this.onUpgradeWithGoogle,
    required this.onUpgradeWithApple,
    required this.onSignOut,
  });

  final bool isGuest;
  final String accountStatus;
  final String? email;
  final bool isPremiumPlan;
  final bool busy;

  final VoidCallback onUpgradeWithGoogle;
  final VoidCallback onUpgradeWithApple;
  final VoidCallback onSignOut;

  bool get _showAppleButton {
    if (kIsWeb) return false;
    return Platform.isIOS;
  }

  bool get _showGoogleButton {
    if (kIsWeb) return false;
    return Platform.isAndroid;
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.accountSection,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(isGuest ? Icons.person_outline : Icons.verified_user),
                    const SizedBox(width: 8),
                    Text(
                      accountStatus,
                      style: theme.textTheme.titleMedium,
                    ),
                    if (isPremiumPlan) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          gradient: const LinearGradient(
                            colors: [AppColors.goldSubtle, AppColors.gold],
                          ),
                          border: Border.all(
                            color: AppColors.gold,
                            width: 0.8,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              size: 14,
                              color: AppColors.navyDeep,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              t.planPremium,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: AppColors.navyDeep,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),

                const SizedBox(height: 8),

                if (!isGuest && email != null)
                  Text(
                    email!,
                    style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
                  ),

                const SizedBox(height: 12),

                if (isGuest) ...[
                  Text(
                    t.upgradeHint,
                    style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
                  ),
                  const SizedBox(height: 10),

                  // ✅ Visa endast relevant provider per plattform
                  if (_showGoogleButton)
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        icon: const Icon(Icons.login),
                        label: Text(t.upgradeWithGoogle),
                        onPressed: busy ? null : onUpgradeWithGoogle,
                      ),
                    ),

                  if (_showAppleButton)
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.apple),
                        label: Text(t.upgradeWithApple),
                        onPressed: busy ? null : onUpgradeWithApple,
                      ),
                    ),
                ] else ...[
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      icon: const Icon(Icons.logout),
                      label: Text(t.signOut),
                      onPressed: busy ? null : onSignOut,
                    ),
                  ),
                ],

                if (busy) ...[
                  const SizedBox(height: 12),
                  const LinearProgressIndicator(minHeight: 2),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
