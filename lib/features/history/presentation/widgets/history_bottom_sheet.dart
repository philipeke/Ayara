// lib/features/history/presentation/widgets/history_bottom_sheet.dart
import 'package:flutter/material.dart';

import 'package:nuria/l10n/app_localizations.dart';
import 'package:nuria/core/utils/date_formatting.dart';
import 'package:nuria/features/chat/presentation/screens/result_screen.dart';
import 'package:nuria/features/chat/presentation/utils/route_fade.dart';

// ✅ Model
import 'package:nuria/models/history_item.dart';

// ✅ Service
import 'package:nuria/features/history/history_service.dart';

// ✅ Category localization (new ids)
import 'package:nuria/features/chat/presentation/utils/category_data.dart'
    show localizedTitleFor;

class HistoryBottomSheet extends StatelessWidget {
  const HistoryBottomSheet({
    super.key,
    required this.scrollController,
    required this.title,
  });

  final ScrollController scrollController;
  final String title;

  String _categoryLabel(BuildContext context, String id) {
    // Uses normalize + localized strings from category_data.dart
    return localizedTitleFor(context, id);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Column(
      children: [
        const SizedBox(height: 8),
        Container(
          width: 44,
          height: 5,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
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
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                );
              }

              return ListView.builder(
                controller: scrollController,
                padding: const EdgeInsets.only(bottom: 12),
                itemCount: items.length,
                itemBuilder: (context, i) {
                  final p = items[i];
                  final category = _categoryLabel(context, p.categoryId);

                  // createdAt can be null → fallback
                  final createdAt = p.createdAt ?? DateTime.now();
                  final dateStr = DateFmt.format(createdAt, context);

                  return ListTile(
                    title: Text(
                      p.responseText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      '$category • $dateStr',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () async {
                        final ok = await showDialog<bool>(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Text(t.historyDeleteTitle),
                            content: Text(t.historyDeleteBody),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(ctx, false),
                                child: Text(t.cancelCta),
                              ),
                              FilledButton(
                                onPressed: () => Navigator.pop(ctx, true),
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
                    onTap: () {
                      Navigator.of(context).push(
                        fadeRoute(
                          ResultScreen(
                            category: category,
                            response: p.responseText,
                            onRegenerate: null,
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
