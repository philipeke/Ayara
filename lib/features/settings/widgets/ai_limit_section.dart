// lib/features/settings/widgets/ai_limit_section.dart
import 'dart:ui' show FontFeature;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nuria/l10n/app_localizations.dart';
import 'package:nuria/features/limit/usage_service.dart';

class AiLimitSection extends StatelessWidget {
  const AiLimitSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return AnimatedBuilder(
      animation: UsageService.instance,
      builder: (context, _) {
        final usage = UsageService.instance.current;
        final user = FirebaseAuth.instance.currentUser;
        final bool isGuest = (user == null) || user.isAnonymous;

        // 🟣 1) Guest / utloggad → ingen "loading", visa tydlig info-kort
        if (isGuest) {
          return Card(
            color: theme.colorScheme.surface.withOpacity(0.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t.limitSectionTitle,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        t.guestMode,
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.rateGuestMustSignIn,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                      height: 1.35,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        // 🟡 2) Inloggad men usage == null → riktig "loading"-skeleton
        if (usage == null) {
          return Card(
            color: theme.colorScheme.surface.withOpacity(0.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t.limitSectionTitle,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '…',
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(999),
                          child: LinearProgressIndicator(
                            minHeight: 6,
                            backgroundColor:
                                theme.colorScheme.onSurface.withOpacity(0.06),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        t.limitLoadingLabel,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }

        // 🟢 3) Inloggad + usage finns → visa bara remaining
        final remaining = usage.creditsRemaining;
        final total = usage.creditsTotal <= 0 ? 1 : usage.creditsTotal;

        // progress = andel kvar (OK att den baseras på total, men texten visar bara remaining)
        final double remainingFraction = (remaining / total).clamp(0.0, 1.0);

        // Nuria plan naming: "grace" | "blessed" | "guest"
        final bool isBlessed = usage.plan == 'blessed';
        final String planLabel = isBlessed ? t.planBlessed : t.planGrace;

        return Card(
          color: theme.colorScheme.surface.withOpacity(0.9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titel + plan
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      t.limitSectionTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      t.limitPlanLabel(planLabel),
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // ✅ Endast kvarvarande credits som text
                _RemainingRow(
                  // Reuse samma nyckel – justera texten i ARB så den blir:
                  // "Remaining Reflections" / "Kvarvarande Reflections" osv.
                  text: t.limitCreditsLabel(remaining),
                  fraction: remainingFraction,
                  isBlessed: isBlessed,
                ),

                if (isBlessed) ...[
                  const SizedBox(height: 10),
                  Text(
                    t.blessedDescription,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                      height: 1.3,
                    ),
                  ),
                ],
                if (!isBlessed && remaining <= 0) ...[
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.arrow_downward_rounded,
                          size: 14, color: Colors.red.shade400),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          t.outOfReflectionsBannerText,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.red.shade400,
                            fontWeight: FontWeight.w600,
                            height: 1.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}

class _RemainingRow extends StatelessWidget {
  final String text;
  final double fraction;
  final bool isBlessed;

  const _RemainingRow({
    required this.text,
    required this.fraction,
    required this.isBlessed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Gold for Blessed, otherwise primary
    final Color barColor =
        isBlessed ? const Color(0xFFFFC107) : theme.colorScheme.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Remaining …: 144"
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                text,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFeatures: const [FontFeature.tabularFigures()],
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: LinearProgressIndicator(
            value: fraction,
            minHeight: 6,
            backgroundColor: theme.colorScheme.onSurface.withOpacity(0.06),
            valueColor: AlwaysStoppedAnimation<Color>(
              barColor.withOpacity(0.9),
            ),
          ),
        ),
      ],
    );
  }
}
