// lib/features/duas/duas_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/home/home_shell.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'duas_data.dart';
import 'dua_model.dart';
import 'dua_detail_screen.dart';

String _duaCategoryLabel(AppLocalizations t, DuaCategory cat) {
  switch (cat) {
    case DuaCategory.daily:     return t.duaCategoryDaily;
    case DuaCategory.weekly:    return t.duaCategoryWeekly;
    case DuaCategory.occasions: return t.duaCategoryOccasions;
    case DuaCategory.ziyarat:   return t.duaCategoryZiyarat;
    case DuaCategory.tasbih:    return t.duaCategoryTasbih;
  }
}

class DuasScreen extends StatefulWidget {
  const DuasScreen({super.key});

  @override
  State<DuasScreen> createState() => _DuasScreenState();
}

class _DuasScreenState extends State<DuasScreen> {
  DuaCategory? _selectedCategory;
  String _searchQuery = '';
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<DuaEntry> get _filtered {
    var list = kDuaLibrary;

    if (_selectedCategory != null) {
      list = list.where((d) => d.category == _selectedCategory).toList();
    }

    if (_searchQuery.trim().isNotEmpty) {
      final q = _searchQuery.toLowerCase();
      list = list
          .where((d) =>
              d.nameEn.toLowerCase().contains(q) ||
              d.nameAr.contains(q) ||
              d.shortDesc.toLowerCase().contains(q) ||
              d.taughtBy.toLowerCase().contains(q))
          .toList();
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context, t),
          SliverToBoxAdapter(child: _buildSearch(context, t)),
          SliverToBoxAdapter(child: _buildCategoryFilter(context, t)),
          SliverToBoxAdapter(child: _buildSubtitle(context, t)),
          _buildList(context),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, AppLocalizations t) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.deepNavy,
      expandedHeight: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded,
            color: AppColors.gold),
        onPressed: () => HomeShell.of(context)?.jumpTo(0),
      ),
      title: Text(
        t.duasScreenTitle,
        style: GoogleFonts.cinzel(
          color: AppColors.goldBright,
          fontWeight: FontWeight.w700,
          fontSize: 18,
          letterSpacing: 0.5,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _buildSearch(BuildContext context, AppLocalizations t) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: TextField(
        controller: _searchController,
        onChanged: (v) => setState(() => _searchQuery = v),
        style: const TextStyle(color: AppColors.textPrimary),
        decoration: InputDecoration(
          hintText: t.duasSearchHint,
          prefixIcon: const Icon(Icons.search_rounded,
              color: AppColors.textMuted, size: 20),
          suffixIcon: _searchQuery.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear_rounded,
                      color: AppColors.textMuted, size: 18),
                  onPressed: () {
                    _searchController.clear();
                    setState(() => _searchQuery = '');
                  },
                )
              : null,
        ),
      ),
    );
  }

  Widget _buildCategoryFilter(BuildContext context, AppLocalizations t) {
    final cats = [null, ...DuaCategory.values];
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: cats.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (_, i) {
          final cat = cats[i];
          final label = cat == null ? t.duasFilterAll : _duaCategoryLabel(t, cat);
          final selected = _selectedCategory == cat;
          return GestureDetector(
            onTap: () => setState(() => _selectedCategory = cat),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
              decoration: BoxDecoration(
                color: selected
                    ? AppColors.gold.withValues(alpha: 0.22)
                    : AppColors.surface,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: selected ? AppColors.gold : AppColors.border,
                  width: selected ? 1.4 : 0.8,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                label,
                style: TextStyle(
                  color: selected ? AppColors.goldBright : AppColors.textDim,
                  fontSize: 12,
                  fontWeight:
                      selected ? FontWeight.w700 : FontWeight.w500,
                  letterSpacing: 0.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context, AppLocalizations t) {
    final count = _filtered.length;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
      child: Text(
        t.duasCount(count),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppColors.textMuted,
              letterSpacing: 0.3,
            ),
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    final t = AppLocalizations.of(context);
    final items = _filtered;

    if (items.isEmpty) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Center(
            child: Text(
              t.duasEmpty,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.textMuted),
            ),
          ),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final dua = items[index];
          return _DuaTile(dua: dua, index: index)
              .animate(delay: (index * 35).ms)
              .fadeIn(duration: 320.ms)
              .slideY(begin: 0.05, end: 0);
        },
        childCount: items.length,
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _DuaTile extends StatelessWidget {
  final DuaEntry dua;
  final int index;

  const _DuaTile({required this.dua, required this.index});

  @override
  Widget build(BuildContext context) {
    final Color accent = _accentFor(dua.category);
    final IconData icon = _iconFor(dua.category);

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 6, 16, 0),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border, width: 0.8),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => DuaDetailScreen(dua: dua)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.13),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: accent, size: 22),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            dua.nameEn,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        _CategoryBadge(category: dua.category),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      dua.nameAr,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: accent.withValues(alpha: 0.75),
                        fontSize: 13,
                        fontFamily: 'Arial',
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      dua.shortDesc,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: AppColors.textDim,
                            height: 1.4,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.schedule_rounded,
                            size: 10, color: AppColors.textMuted),
                        const SizedBox(width: 3),
                        Expanded(
                          child: Text(
                            dua.recommendedTime,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: AppColors.textMuted,
                                  fontSize: 10,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.chevron_right_rounded,
                  color: AppColors.textMuted, size: 18),
            ],
          ),
        ),
      ),
    );
  }

  static Color _accentFor(DuaCategory cat) {
    switch (cat) {
      case DuaCategory.daily:     return AppColors.emeraldBright;
      case DuaCategory.weekly:    return AppColors.gold;
      case DuaCategory.occasions: return AppColors.crimsonBright;
      case DuaCategory.ziyarat:   return AppColors.goldBright;
      case DuaCategory.tasbih:    return AppColors.emeraldLight;
    }
  }

  static IconData _iconFor(DuaCategory cat) {
    switch (cat) {
      case DuaCategory.daily:     return Icons.wb_sunny_rounded;
      case DuaCategory.weekly:    return Icons.auto_awesome_rounded;
      case DuaCategory.occasions: return Icons.event_rounded;
      case DuaCategory.ziyarat:   return Icons.mosque_rounded;
      case DuaCategory.tasbih:    return Icons.radio_button_checked_rounded;
    }
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _CategoryBadge extends StatelessWidget {
  final DuaCategory category;

  const _CategoryBadge({required this.category});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final color = _colorFor(category);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.3), width: 0.7),
      ),
      child: Text(
        _duaCategoryLabel(t, category),
        style: TextStyle(
          color: color,
          fontSize: 9,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.4,
        ),
      ),
    );
  }

  static Color _colorFor(DuaCategory cat) {
    switch (cat) {
      case DuaCategory.daily:     return AppColors.emeraldBright;
      case DuaCategory.weekly:    return AppColors.gold;
      case DuaCategory.occasions: return AppColors.crimsonBright;
      case DuaCategory.ziyarat:   return AppColors.goldBright;
      case DuaCategory.tasbih:    return AppColors.emeraldLight;
    }
  }
}
