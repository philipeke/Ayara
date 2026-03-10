// lib/features/chat/presentation/screens/category_screen.dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:ayara/features/chat/services/chat_service.dart';
import 'package:ayara/features/chat/presentation/utils/route_fade.dart';
import 'package:ayara/features/chat/presentation/screens/result_screen.dart';

import 'package:ayara/features/chat/presentation/widgets/category_header.dart';
import 'package:ayara/features/chat/presentation/widgets/category_grid.dart';
import 'package:ayara/features/chat/presentation/widgets/category_footer.dart';

import 'package:ayara/features/chat/presentation/utils/category_data.dart'
    show CategoryActionItem, buildActionItems, normalizeCategoryId;

import 'package:ayara/features/history/presentation/widgets/history_sheet.dart';

import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/limit/usage_service.dart';
import 'package:ayara/features/limit/usage_refresh_service.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/utils/app_error.dart';
import 'package:ayara/core/utils/error_ui.dart';

import 'package:ayara/features/daily/daily_grace_screen.dart';
import 'package:ayara/features/qibla/qibla_screen.dart';
import 'package:ayara/features/dhikr/dhikr_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool _loading = false;
  String? _busyCategoryId;

  // When App Check starts rate-limiting we avoid triggering more attempts immediately.
  DateTime? _appCheckCooldownUntil;

  List<CategoryActionItem> _items = const [];

  /// Premium (Blessed-only) categories. Leave empty to lock nothing.
  final Set<String> _premiumCategoryIds = <String>{
    // TODO: fill in Ayara premium IDs if you want to lock categories
  };

  late final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    UsageService.instance.addListener(_onUsageChanged);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      UsageRefreshService.instance.silentPeekOncePerSession();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = buildActionItems(context, (item) => _onTap(item));
  }

  @override
  void dispose() {
    _pageController.dispose();
    UsageService.instance.removeListener(_onUsageChanged);
    super.dispose();
  }

  void _onUsageChanged() {
    if (!mounted) return;
    if (_loading) return;
    setState(() {});
  }

  bool _isPremiumCategory(String normalizedId) {
    return _premiumCategoryIds.contains(normalizedId);
  }

  bool _isInAppCheckCooldown() {
    final until = _appCheckCooldownUntil;
    if (until == null) return false;
    return DateTime.now().isBefore(until);
  }

  void _setAppCheckCooldown(Duration duration) {
    _appCheckCooldownUntil = DateTime.now().add(duration);
  }

  bool _looksLikeAppCheckRateLimit(Object e) {
    final s = e.toString().toLowerCase();
    return s.contains('app check') ||
        s.contains('firebasecontextprovider') ||
        s.contains('too many attempts') ||
        s.contains('appcheck');
  }

  Future<void> _generateAndOpenResult(
    CategoryActionItem item,
    String normalizedId,
  ) async {
    if (_loading) return;

    setState(() {
      _loading = true;
      _busyCategoryId = normalizedId;
    });

    try {
      final text = await ChatService.generateForCategory(context, normalizedId);
      if (!mounted) return;

      setState(() {
        _loading = false;
        _busyCategoryId = null;
      });

      await Navigator.of(context).push(
        fadeRoute(
          ResultScreen(
            category: item.title,
            response: text,
            onRegenerate: () async {
              if (_loading) {
                throw Exception('regenerate_in_progress');
              }

              setState(() {
                _loading = true;
                _busyCategoryId = normalizedId;
              });

              try {
                final regenerated =
                    await ChatService.generateForCategory(context, normalizedId);
                return regenerated;
              } catch (e, st) {
                if (_looksLikeAppCheckRateLimit(e as Object)) {
                  _setAppCheckCooldown(const Duration(seconds: 30));
                }
                rethrow;
              } finally {
                if (mounted) {
                  setState(() {
                    _loading = false;
                    _busyCategoryId = null;
                  });
                }
              }
            },
          ),
        ),
      );
    } catch (e, st) {
      if (!mounted) return;

      if (_looksLikeAppCheckRateLimit(e as Object)) {
        if (!kDebugMode) _setAppCheckCooldown(const Duration(seconds: 30));
        final t = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 6),
            content: Text(
              kDebugMode
                  ? 'App Check rejected. Register the token from startup logs in Firebase Console → App Check → Manage debug tokens.'
                  : t.rateCheckGenericError,
            ),
          ),
        );
        return;
      }

      final appErr = AppError.from(e as Object, st);
      if (appErr.shouldBeSilent) {
        appErr.debugLog('CategoryScreen silent');
        // Do NOT navigate away — the snackbar shown by _checkRemoteLimit or
        // _consumeOneReflectionOrThrow already tells the user what happened.
        // Silently pushing /settings was confusing reviewers and users.
        return;
      }

      showAppErrorSnack(
        context,
        e as Object,
        stackTrace: st,
      );
    } finally {
      if (mounted && _loading) {
        setState(() {
          _loading = false;
          _busyCategoryId = null;
        });
      }
    }
  }

  Future<void> _onTap(CategoryActionItem item) async {
    if (_loading) return;
    HapticFeedback.selectionClick();

    if (_isInAppCheckCooldown()) {
      final t = AppLocalizations.of(context)!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.rateCheckGenericError)),
      );
      return;
    }

    final normalizedId = normalizeCategoryId(item.id);

    final usage = UsageService.instance.current;
    final plan = (usage?.plan ?? 'grace').toLowerCase();

    // Allow Blessed status regardless of guest/anonymous — guests who
    // purchased Blessed via IAP should access premium categories.
    final isBlessed = plan == 'blessed';

    final locked = _isPremiumCategory(normalizedId) && !isBlessed;
    if (locked) {
      final t = AppLocalizations.of(context)!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.blessedRequiredForCategory)),
      );
      return;
    }

    await _generateAndOpenResult(item, normalizedId);
  }

  void _showLockedDialog(BuildContext context) {
    HapticFeedback.selectionClick();
    final t = AppLocalizations.of(context)!;
    showDialog<void>(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.60),
      builder: (ctx) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF0C3A1E), Color(0xFF061D0F)],
            ),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: AppColors.gold.withValues(alpha: 0.35),
              width: 1.2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.45),
                blurRadius: 30,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppColors.gold.withValues(alpha: 0.12),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.gold.withValues(alpha: 0.45),
                  ),
                ),
                child: const Icon(
                  Icons.lock_rounded,
                  color: AppColors.gold,
                  size: 28,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                t.lockedCategoriesHint,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.88),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.55,
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    Navigator.pushNamed(context, '/settings');
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.gold,
                    foregroundColor: AppColors.islamicDeep,
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      letterSpacing: 0.3,
                    ),
                  ),
                  child: Text(t.blessedButtonBecomeBlessed),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: Text(
                  t.close,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.45),
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openHistorySheet() {
    final t = AppLocalizations.of(context)!;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.70,
        minChildSize: 0.40,
        maxChildSize: 0.95,
        builder: (context, controller) {
          return HistorySheet(
            scrollController: controller,
            title: t.historyTitle,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    final media = MediaQuery.of(context);
    final width = media.size.width;

    final bool isTablet = width >= 700;
    final bool isLargeTablet = width >= 1000;

    final double maxContentWidth =
        isLargeTablet ? 920 : (isTablet ? 760 : double.infinity);

    final int columns =
        isLargeTablet ? 5 : (isTablet ? 4 : (width < 380 ? 2 : 3));

    final items = _items;

    final isXS = width < 340;
    final isS = width < 380;

    final historyTopGap = isXS ? 6.0 : (isS ? 8.0 : 10.0);
    final historyBottomGap = isXS ? 6.0 : (isS ? 8.0 : 10.0);

    // Capture locale text direction BEFORE we force LTR on the PageView.
    // Each page child restores this so Arabic/RTL content renders correctly
    // while the PageView swipe direction remains consistently left-to-right.
    final contentDirection = Directionality.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFF9E9688),
      body: Stack(
        children: [
          // Strong 3-stop diagonal gradient — dark taupe top-left → bright cream bottom-right
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF9E9688), // dark warm taupe
                    Color(0xFFCABFA8), // mid parchment
                    Color(0xFFE8D8C0), // bright warm cream
                  ],
                  stops: [0.0, 0.50, 1.0],
                ),
              ),
            ),
          ),
          // Top-right gold shimmer — strong, clearly visible
          Positioned(
            top: -30,
            right: -30,
            child: IgnorePointer(
              child: SizedBox(
                width: 420,
                height: 420,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0x72C49A3C), // warm gold — clearly visible
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Bottom-left green accent — clearly visible
          Positioned(
            bottom: -30,
            left: -30,
            child: IgnorePointer(
              child: SizedBox(
                width: 380,
                height: 380,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0x450C3A1E), // Islamic green
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Bottom-right warm amber — visible balance accent
          Positioned(
            bottom: -20,
            right: -20,
            child: IgnorePointer(
              child: SizedBox(
                width: 300,
                height: 300,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0x44C49A3C),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Three-page horizontal PageView.
          // Forced LTR so swipe direction is always consistent (left = next page).
          // Each page restores the locale's natural text direction via contentDirection,
          // so Arabic/RTL content still renders correctly inside the pages.
          Directionality(
            textDirection: TextDirection.ltr,
            child: PageView(
              controller: _pageController,
              children: [
                // Page 0 — Category grid
                Directionality(
                  textDirection: contentDirection,
                  child: SafeArea(
                    child: Column(
                      children: [
                        const CategoryHeader(showTitle: false),
                        // Out-of-reflections banner
                        AnimatedBuilder(
                          animation: UsageService.instance,
                          builder: (context, _) {
                            final usage = UsageService.instance.current;
                            if (usage == null) return const SizedBox.shrink();
                            final plan = usage.plan.toLowerCase();
                            if (plan == 'blessed') return const SizedBox.shrink();
                            if (usage.creditsRemaining > 0) return const SizedBox.shrink();
                            final t = AppLocalizations.of(context)!;
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(16, 0, 16, 6),
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(14),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(14),
                                  onTap: () {
                                    HapticFeedback.selectionClick();
                                    Navigator.pushNamed(context, '/settings');
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: AppColors.gold.withValues(alpha: 0.10),
                                      borderRadius: BorderRadius.circular(14),
                                      border: Border.all(
                                        color: AppColors.gold.withValues(alpha: 0.38),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.stars_rounded,
                                            color: AppColors.gold, size: 18),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Text(
                                            t.outOfReflectionsBannerText,
                                            style: TextStyle(
                                              color: AppColors.islamic,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              height: 1.3,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          t.outOfReflectionsBannerCta,
                                          style: const TextStyle(
                                            color: AppColors.gold,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        const Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 12,
                                          color: AppColors.gold,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: maxContentWidth,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                                child: IgnorePointer(
                                  ignoring: _loading,
                                  child: CategoryGrid(
                                    items: items,
                                    crossAxisCount: columns,
                                    busyCategory: _busyCategoryId,
                                    disabled: false,
                                    onLockedTap: () => _showLockedDialog(context),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: historyTopGap,
                            bottom: historyBottomGap,
                          ),
                          child: Center(
                            child: Builder(
                              builder: (context) {
                                final t = AppLocalizations.of(context)!;
                                return OutlinedButton.icon(
                                  icon: const Icon(Icons.history, size: 20),
                                  onPressed: _openHistorySheet,
                                  label: Text(t.historyOpenCta),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: AppColors.islamic,
                                    side: BorderSide(
                                      color: AppColors.islamic.withValues(alpha: 0.55),
                                    ),
                                    backgroundColor: AppColors.islamic.withValues(alpha: 0.08),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 10,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.2,
                                    ),
                                  ).copyWith(
                                    overlayColor:
                                        WidgetStateProperty.resolveWith((states) {
                                      if (states.contains(WidgetState.pressed)) {
                                        return Colors.white.withValues(alpha: 0.16);
                                      }
                                      if (states.contains(WidgetState.hovered) ||
                                          states.contains(WidgetState.focused)) {
                                        return Colors.white.withValues(alpha: 0.10);
                                      }
                                      return null;
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const CategoryFooter(),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
                // Page 1 — Daily Grace
                Directionality(
                  textDirection: contentDirection,
                  child: DailyGraceWidget(pageController: _pageController),
                ),
                // Page 2 — Qibla, Prayer Times & Ask Ayara
                Directionality(
                  textDirection: contentDirection,
                  child: QiblaScreen(pageController: _pageController),
                ),
                // Page 3 — Dhikr counter
                Directionality(
                  textDirection: contentDirection,
                  child: DhikrScreen(pageController: _pageController),
                ),
              ],
            ),
          ),
          // Animated swipe hint — vertically aligned with the history button
          Positioned(
            right: 6,
            bottom: MediaQuery.of(context).padding.bottom + 170,
            child: IgnorePointer(
              child: _SwipeHint(pageController: _pageController),
            ),
          ),
        ],
      ),
    );
  }
}

/// Animated right-pointing chevrons that hint the user can swipe left
/// to reveal the Daily Grace page. Fades out as the page scrolls.
class _SwipeHint extends StatefulWidget {
  final PageController pageController;
  const _SwipeHint({required this.pageController});

  @override
  State<_SwipeHint> createState() => _SwipeHintState();
}

class _SwipeHintState extends State<_SwipeHint>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bounce = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 950),
  )..repeat(reverse: true);

  late final Animation<double> _offset = Tween<double>(begin: 0, end: 9).animate(
    CurvedAnimation(parent: _bounce, curve: Curves.easeInOut),
  );

  double _visibility = 1.0;

  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(_onPage);
  }

  void _onPage() {
    final page = widget.pageController.page ?? 0.0;
    final v = (1.0 - page).clamp(0.0, 1.0);
    if (mounted && v != _visibility) setState(() => _visibility = v);
  }

  @override
  void dispose() {
    widget.pageController.removeListener(_onPage);
    _bounce.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visibility,
      duration: const Duration(milliseconds: 150),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: AnimatedBuilder(
          animation: _offset,
          builder: (_, _) => Transform.translate(
            offset: Offset(_offset.value, 0),
            child: Icon(
              Icons.chevron_right_rounded,
              color: AppColors.islamic.withValues(alpha: 0.45),
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}

