// lib/features/history/presentation/widgets/history_sheet.dart
import 'package:flutter/material.dart';
import 'package:nuria/core/config/theme.dart';
import 'package:nuria/features/chat/presentation/screens/result_screen.dart';
import 'package:nuria/features/chat/presentation/utils/route_fade.dart';
import 'package:nuria/l10n/app_localizations.dart';
import 'package:nuria/core/utils/date_formatting.dart';

// ✅ Model
import 'package:nuria/models/history_item.dart';

// ✅ Service
import 'package:nuria/features/history/history_service.dart';

// ✅ Återanvänd samma accent-logik som grid
import 'package:nuria/features/chat/presentation/utils/accent_colors.dart';

// ✅ Category helpers (titles + icons + normalize)
import 'package:nuria/features/chat/presentation/utils/category_data.dart'
    show normalizeCategoryId, CategoryId, localizedTitleFor, iconFor;

class HistorySheet extends StatelessWidget {
  const HistorySheet({
    super.key,
    required this.scrollController,
    required this.title,
  });

  final ScrollController scrollController;
  final String title;

  String _categoryLabel(BuildContext context, String id) {
    return localizedTitleFor(context, id);
  }

  IconData _iconForCategory(String rawId) {
    final id = normalizeCategoryId(rawId);

    final mapped = iconFor(id);
    if (mapped != Icons.category_outlined) return mapped;

    switch (id) {
      case CategoryId.dailyGuidance:
        return Icons.calendar_today_outlined;
      case CategoryId.faithTrust:
        return Icons.volunteer_activism_outlined;
      case CategoryId.prayerReflection:
        return Icons.self_improvement_outlined;
      case CategoryId.hopeDifficultTimes:
        return Icons.wb_sunny_outlined;
      case CategoryId.forgiveness:
        return Icons.handshake_outlined;
      case CategoryId.loveCompassion:
        return Icons.favorite_border;
      case CategoryId.strengthCourage:
        return Icons.shield_outlined;
      case CategoryId.gratitude:
        return Icons.auto_awesome_outlined;
      case CategoryId.purposeCalling:
        return Icons.explore_outlined;
      case CategoryId.familyRelationships:
        return Icons.groups_outlined;
      case CategoryId.peaceAnxietyRelief:
        return Icons.spa_outlined;
      case CategoryId.wisdomOfJesus:
        return Icons.menu_book_outlined;
      case CategoryId.humilityCharacter:
        return Icons.emoji_people_outlined;
      case CategoryId.overcomingTemptation:
        return Icons.lock_open_outlined;
      case CategoryId.eveningReflection:
        return Icons.nightlight_outlined;
      default:
        return Icons.auto_awesome_outlined;
    }
  }

  Widget _categoryBadge({required Color accent, required IconData icon}) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: accent.withValues(alpha: 0.14),
        shape: BoxShape.circle,
        border: Border.all(color: accent.withValues(alpha: 0.26)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.22),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Center(
        child: Icon(icon, size: 20, color: accent.withValues(alpha: 0.98)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.navy.withValues(alpha: 0.97),
              AppColors.navyDeep.withValues(alpha: 0.99),
            ],
          ),
          border: Border(
            top: BorderSide(
              color: AppColors.gold.withValues(alpha: 0.18),
              width: 1,
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: 44,
              height: 5,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.22),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Row(
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.white.withValues(alpha: 0.92),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<List<HistoryItem>>(
                stream: HistoryService.instance.streamRecent(limit: 50),
                builder: (context, snap) {
                  if (!snap.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final items = snap.data!;
                  if (items.isEmpty) {
                    return Center(
                      child: Text(
                        t.historyEmpty,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withValues(alpha: 0.70),
                        ),
                      ),
                    );
                  }

                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.fromLTRB(14, 6, 14, 18),
                    itemCount: items.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 10),
                    itemBuilder: (context, i) {
                      final p = items[i];

                      final categoryLabel =
                          _categoryLabel(context, p.categoryId);
                      final createdAt = p.createdAt ?? DateTime.now();
                      final dateStr = DateFmt.format(createdAt, context);
                      final accent = accentColorFor(categoryLabel);
                      final icon = _iconForCategory(p.categoryId);

                      return InkWell(
                        borderRadius: BorderRadius.circular(18),
                        onTap: () {
                          Navigator.of(context).push(
                            fadeRoute(
                              ResultScreen(
                                category: categoryLabel,
                                response: p.responseText,
                                onRegenerate: null,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(12, 12, 10, 12),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.05),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.09),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _categoryBadge(accent: accent, icon: icon),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      p.responseText,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          theme.textTheme.bodyLarge?.copyWith(
                                        color: Colors.white
                                            .withValues(alpha: 0.92),
                                        height: 1.25,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      '$categoryLabel • $dateStr',
                                      style:
                                          theme.textTheme.bodySmall?.copyWith(
                                        color: Colors.white
                                            .withValues(alpha: 0.52),
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.delete_outline,
                                  color: Colors.white.withValues(alpha: 0.55),
                                ),
                                onPressed: () async {
                                  final ok = await showDialog<bool>(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      backgroundColor: AppColors.navy,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16),
                                      ),
                                      title: Text(
                                        t.historyDeleteTitle,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                      content: Text(
                                        t.historyDeleteBody,
                                        style: const TextStyle(
                                            color: Colors.white70),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(ctx, false),
                                          child: Text(t.cancelCta),
                                        ),
                                        FilledButton(
                                          onPressed: () =>
                                              Navigator.pop(ctx, true),
                                          child: Text(t.deleteCta),
                                        ),
                                      ],
                                    ),
                                  );

                                  if (ok == true) {
                                    await HistoryService.instance.delete(p.id);
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

