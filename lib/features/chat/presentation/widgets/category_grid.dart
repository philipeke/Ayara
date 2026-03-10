// lib/features/chat/presentation/widgets/category_grid.dart
import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'category_tile.dart';
import '../utils/category_data.dart' show CategoryActionItem;
import '../utils/accent_colors.dart';
import 'package:ayara/features/limit/usage_service.dart';
import 'package:ayara/core/config/theme.dart';

class CategoryGrid extends StatefulWidget {
  final List<CategoryActionItem> items;
  final int crossAxisCount;
  final String? busyCategory;
  final bool disabled;

  /// Called when a locked (premium) tile is tapped.
  /// If null, falls back to navigating to /settings.
  final VoidCallback? onLockedTap;

  const CategoryGrid({
    super.key,
    required this.items,
    this.crossAxisCount = 3,
    this.busyCategory,
    this.disabled = false,
    this.onLockedTap,
  });

  @override
  State<CategoryGrid> createState() => _CategoryGridState();
}

class _CategoryGridState extends State<CategoryGrid>
    with TickerProviderStateMixin {
  // ── Entry stagger ──────────────────────────────────────────────
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 700),
  )..forward();

  static const _stagger = 0.055;

  int _lastCols = 0;
  int _lastCount = 0;

  static const double _smallPhoneWidth = 380;

  // ── Scroll tracking ────────────────────────────────────────────
  late final ScrollController _scrollController = ScrollController();
  bool _hasMoreBelow = false;

  // ── Down-arrow bounce ──────────────────────────────────────────
  late final AnimationController _arrowCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 720),
  )..repeat(reverse: true);

  late final Animation<double> _arrowDy = Tween<double>(begin: 0.0, end: 6.0)
      .animate(CurvedAnimation(parent: _arrowCtrl, curve: Curves.easeInOut));

  // ──────────────────────────────────────────────────────────────

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkHasMore());
  }

  void _onScroll() => _checkHasMore();

  void _checkHasMore() {
    if (!mounted || !_scrollController.hasClients) return;
    final hasMore = _scrollController.position.extentAfter > 16.0;
    if (hasMore != _hasMoreBelow) setState(() => _hasMoreBelow = hasMore);
  }

  @override
  void reassemble() {
    super.reassemble();
    _controller
      ..reset()
      ..forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final w = MediaQuery.of(context).size.width;
    _lastCols = _computeCols(w);
    _lastCount = widget.items.length;
  }

  @override
  void didUpdateWidget(covariant CategoryGrid oldWidget) {
    super.didUpdateWidget(oldWidget);

    final w = MediaQuery.of(context).size.width;
    final colsNow = _computeCols(w);
    final countNow = widget.items.length;

    final structureChanged = (colsNow != _lastCols) || (countNow != _lastCount);
    if (structureChanged) {
      _lastCols = colsNow;
      _lastCount = countNow;
      _controller.forward(from: 0);
    }
  }

  int _computeCols(double w) {
    if (w < _smallPhoneWidth) return 2;
    final bool isTablet = w >= 700;
    if (!isTablet) return 3;
    final wanted = widget.crossAxisCount;
    return math.min(6, math.max(3, wanted));
  }

  Interval _intervalForIndex(int index) {
    final start = (index * _stagger).clamp(0.0, 0.8);
    final end = (start + 0.5).clamp(0.0, 1.0);
    return Interval(start, end, curve: Curves.easeOutCubic);
  }

  double _tileHeight({
    required double width,
    required bool isTablet,
    required bool isLargeTablet,
    required int cols,
  }) {
    if (isLargeTablet) return 142;
    if (isTablet) return 136;
    if (cols == 2) {
      if (width < 360) return 132;
      return 130;
    }
    if (width < 420) return 128;
    return 126;
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _arrowCtrl.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    final bool isTablet = w >= 700;
    final bool isLargeTablet = w >= 1000;

    final cols = _computeCols(w);

    final double gap = isTablet ? 18.0 : 12.0;

    // Reduced top padding; extra bottom clearance for the scroll arrow.
    final EdgeInsets gridPadding = isTablet
        ? const EdgeInsets.fromLTRB(22, 0, 22, 52)
        : const EdgeInsets.fromLTRB(12, 0, 12, 52);

    final tileHeight = _tileHeight(
      width: w,
      isTablet: isTablet,
      isLargeTablet: isLargeTablet,
      cols: cols,
    );

    return Stack(
        children: [
          // ── Grid ────────────────────────────────────────────────
          AnimatedBuilder(
            animation: UsageService.instance,
            builder: (context, _) {
              final items = widget.items;

              final usage = UsageService.instance.current;
              final String plan = usage?.plan ?? 'grace';
              final bool isBlessed = plan == 'blessed';

              return GridView.builder(
                controller: _scrollController,
                padding: gridPadding,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: cols,
                  mainAxisSpacing: gap,
                  crossAxisSpacing: gap,
                  mainAxisExtent: tileHeight,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final it = items[index];
                  final interval = _intervalForIndex(index);
                  final fade =
                      CurvedAnimation(parent: _controller, curve: interval);
                  final slide = Tween<Offset>(
                    begin: const Offset(0, 0.10),
                    end: Offset.zero,
                  ).animate(
                    CurvedAnimation(parent: _controller, curve: interval),
                  );

                  final accent = accentColorFor(it.id);
                  final isBusy = widget.busyCategory != null &&
                      widget.busyCategory == it.id;

                  final bool isLockedPremium = it.isPremium && !isBlessed;

                  final bool baseDimmed = widget.disabled && !isBusy;
                  final bool dimmed = (baseDimmed || isLockedPremium) && !isBusy;

                  void handleTap() {
                    if (isLockedPremium) {
                      if (widget.onLockedTap != null) {
                        widget.onLockedTap!();
                      } else {
                        Navigator.of(context).pushNamed('/settings');
                      }
                      return;
                    }
                    it.onTap();
                  }

                  return FadeTransition(
                    opacity: fade,
                    child: SlideTransition(
                      position: slide,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 140),
                        curve: Curves.easeOut,
                        opacity: dimmed ? 0.55 : 1.0,
                        child: CategoryTile(
                          key: ValueKey(it.id),
                          title: it.title,
                          icon: it.icon,
                          onTap: handleTap,
                          accent: accent,
                          isBusy: isBusy,
                          dimmed: dimmed,
                          locked: isLockedPremium,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // ── Scroll-down indicator ────────────────────────────────
          Positioned(
            bottom: 6,
            left: 0,
            right: 0,
            child: IgnorePointer(
              child: AnimatedOpacity(
                opacity: _hasMoreBelow ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 350),
                child: Center(
                  child: AnimatedBuilder(
                    animation: _arrowDy,
                    builder: (context, _) => Transform.translate(
                      offset: Offset(0, _arrowDy.value),
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.gold.withValues(alpha: 0.10),
                          border: Border.all(
                            color: AppColors.gold.withValues(alpha: 0.42),
                            width: 1.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.gold.withValues(alpha: 0.28),
                              blurRadius: 14,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColors.gold,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
    );
  }
}

