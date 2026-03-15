// lib/features/chat/presentation/screens/category_screen.dart
import 'dart:math' as math;

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech_to_text/speech_to_text.dart';


import 'package:ayara/core/services/content_repository.dart';
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
import 'package:ayara/core/services/sound_service.dart';
import 'package:ayara/core/utils/error_ui.dart';

import 'package:ayara/features/qibla/ask_result_screen.dart';

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

  /// Premium-only categories. Leave empty to lock nothing.
  final Set<String> _premiumCategoryIds = <String>{
    // TODO: fill in Ayara premium IDs if you want to lock categories
  };

  late final PageController _pageController = PageController();

  // Ask state
  final TextEditingController _askController = TextEditingController();
  final FocusNode _askFocusNode = FocusNode();
  String? _askError;

  // Voice input state
  final SpeechToText _speech = SpeechToText();
  bool _isListening = false;

  @override
  void initState() {
    super.initState();

    UsageService.instance.addListener(_onUsageChanged);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      UsageRefreshService.instance.silentPeekOncePerSession();
      ContentRepository.instance.warmPrompts().ignore();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = buildActionItems(context, (item) => _onTap(item));
  }

  @override
  void dispose() {
    _speech.cancel();
    _pageController.dispose();
    _askController.dispose();
    _askFocusNode.dispose();
    UsageService.instance.removeListener(_onUsageChanged);
    super.dispose();
  }

  Future<void> _toggleVoiceInput() async {
    if (_isListening) {
      await _speech.stop();
      if (mounted) setState(() => _isListening = false);
      return;
    }

    // Capture context-sensitive objects before any async gap
    final messenger = ScaffoldMessenger.of(context);
    final permDeniedMsg = AppLocalizations.of(context).voiceInputPermissionDenied;
    _askFocusNode.unfocus();

    // Initialize and request mic permission on first use — never prompts at screen load
    if (!_speech.isAvailable) {
      final available = await _speech.initialize(
        onError: (_) {
          if (mounted) setState(() => _isListening = false);
        },
        onStatus: (status) {
          if ((status == 'done' || status == 'notListening') && mounted) {
            setState(() => _isListening = false);
          }
        },
      );
      if (!available) {
        if (mounted) {
          messenger.showSnackBar(
            SnackBar(content: Text(permDeniedMsg)),
          );
        }
        return;
      }
    }

    await HapticFeedback.mediumImpact();
    if (mounted) setState(() => _isListening = true);

    await _speech.listen(
      onResult: (result) {
        if (!mounted) return;
        _askController.text = result.recognizedWords;
        _askController.selection = TextSelection.fromPosition(
          TextPosition(offset: _askController.text.length),
        );
        if (_askError != null) setState(() => _askError = null);
      },
      pauseFor: const Duration(seconds: 4),
      listenOptions: SpeechListenOptions(partialResults: true, cancelOnError: true),
    );
  }

  Future<void> _submitQuestion() async {
    if (_isListening) {
      await _speech.stop();
      if (!mounted) return;
      setState(() => _isListening = false);
    }
    final question = _askController.text.trim();
    final t = AppLocalizations.of(context);
    if (question.isEmpty) {
      setState(() => _askError = t.askPageInputEmptyError);
      return;
    }
    setState(() => _askError = null);
    _askFocusNode.unfocus();
    SoundService.instance.playAskAyara();
    await Navigator.of(context).push(
      PageRouteBuilder<void>(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => _AskLoadingScreen(question: question),
        transitionsBuilder: (_, anim, __, child) =>
            FadeTransition(opacity: anim, child: child),
      ),
    );
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
    setState(() => _loading = true);

    await Navigator.of(context).push(
      PageRouteBuilder<void>(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => _CategoryLoadingScreen(
          category: item,
          normalizedId: normalizedId,
          onCooldown: _setAppCheckCooldown,
          onLooksLikeRateLimit: _looksLikeAppCheckRateLimit,
        ),
        transitionsBuilder: (_, anim, __, child) =>
            FadeTransition(opacity: anim, child: child),
      ),
    );

    if (mounted) setState(() => _loading = false);
  }

  Future<void> _onTap(CategoryActionItem item) async {
    if (_loading) return;
    HapticFeedback.selectionClick();

    if (_isInAppCheckCooldown()) {
      final t = AppLocalizations.of(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.rateCheckGenericError)),
      );
      return;
    }

    final normalizedId = normalizeCategoryId(item.id);

    final usage = UsageService.instance.current;
    final plan = (usage?.plan ?? 'basic').toLowerCase();

    // Allow Premium status regardless of guest/anonymous — guests who
    // purchased Premium via IAP should access premium categories.
    final isPremium = plan == 'premium';

    final locked = _isPremiumCategory(normalizedId) && !isPremium;
    if (locked) {
      final t = AppLocalizations.of(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.premiumRequiredForCategory)),
      );
      return;
    }

    await _generateAndOpenResult(item, normalizedId);
  }

  void _showLockedDialog(BuildContext context) {
    HapticFeedback.selectionClick();
    final t = AppLocalizations.of(context);
    showDialog<void>(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.60),
      builder: (ctx) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.navy, AppColors.navyDeep],
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
                  child: Text(t.premiumButtonBecomePremium),
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
    final t = AppLocalizations.of(context);

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
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          // Solid base — ensures old/software-render GPUs have a fully opaque
          // background before the gradient layer is composited on top.
          const Positioned.fill(
            child: ColoredBox(color: AppColors.deepNavy),
          ),
          // Dark navy diagonal gradient
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.navy,     // 0xFF0B1628 — top-left
                    AppColors.deepNavy, // 0xFF060C18 — centre
                    AppColors.navyDeep, // 0xFF04080F — bottom-right
                  ],
                  stops: [0.0, 0.50, 1.0],
                ),
              ),
            ),
          ),
          // Top-right crimson accent (moved from bottom-right)
          Positioned(
            top: -20,
            right: -20,
            child: IgnorePointer(
              child: SizedBox(
                width: 260,
                height: 260,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0x15B52344), // crimson 8%
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Bottom-left emerald accent
          Positioned(
            bottom: -40,
            left: -40,
            child: IgnorePointer(
              child: SizedBox(
                width: 320,
                height: 320,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0x1A1A7A50), // emerald 10%
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Bottom-right gold shimmer accent (moved from top-right)
          Positioned(
            bottom: -40,
            right: -40,
            child: IgnorePointer(
              child: SizedBox(
                width: 380,
                height: 380,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0x2AC9A84C), // gold 16%
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
                        const CategoryFooter(),
                        // Out-of-reflections banner
                        AnimatedBuilder(
                          animation: UsageService.instance,
                          builder: (context, _) {
                            final usage = UsageService.instance.current;
                            if (usage == null) return const SizedBox.shrink();
                            final plan = usage.plan.toLowerCase();
                            if (plan == 'premium') return const SizedBox.shrink();
                            if (usage.creditsRemaining > 0) return const SizedBox.shrink();
                            final t = AppLocalizations.of(context);
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
                                final t = AppLocalizations.of(context);
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
                      ],
                    ),
                  ),
                ),
                // Page 1 — Ask Ayara + Meditation
                Directionality(
                  textDirection: contentDirection,
                  child: _AskMeditationPage(
                    pageController: _pageController,
                    askController: _askController,
                    focusNode: _askFocusNode,
                    error: _askError,
                    onSubmit: _submitQuestion,
                    onErrorClear: () => setState(() => _askError = null),
                    isListening: _isListening,
                    onVoiceToggle: _toggleVoiceInput,
                  ),
                ),
              ],
            ),
          ),
          // Swipe hint — right on page 0, left on page 1
          Positioned(
            right: 6,
            bottom: MediaQuery.of(context).padding.bottom + 170,
            child: IgnorePointer(
              child: _SwipeHint(pageController: _pageController, direction: _SwipeDirection.right),
            ),
          ),
          // Page indicator dots
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom + 4,
            child: IgnorePointer(
              child: _PageDots(pageController: _pageController, count: 2),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Swipe hint direction
// ─────────────────────────────────────────────────────────────────────────────

enum _SwipeDirection { right }

// ─────────────────────────────────────────────────────────────────────────────
// Animated swipe hint arrows
// ─────────────────────────────────────────────────────────────────────────────

class _SwipeHint extends StatefulWidget {
  final PageController pageController;
  final _SwipeDirection direction;
  const _SwipeHint({required this.pageController, required this.direction});

  @override
  State<_SwipeHint> createState() => _SwipeHintState();
}

class _SwipeHintState extends State<_SwipeHint>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bounce = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 950),
  )..repeat(reverse: true);

  late final Animation<double> _offset =
      Tween<double>(begin: 0, end: 9).animate(
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
    // right hint visible on page 0, left hint visible on page 1
    final v = widget.direction == _SwipeDirection.right
        ? (1.0 - page).clamp(0.0, 1.0)
        : page.clamp(0.0, 1.0);
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
    final isRight = widget.direction == _SwipeDirection.right;
    return AnimatedOpacity(
      opacity: _visibility,
      duration: const Duration(milliseconds: 150),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: AnimatedBuilder(
          animation: _offset,
          builder: (_, child) => Transform.translate(
            offset: Offset(isRight ? _offset.value : -_offset.value, 0),
            child: Icon(
              isRight
                  ? Icons.chevron_right_rounded
                  : Icons.chevron_left_rounded,
              color: AppColors.islamic.withValues(alpha: 0.45),
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Page indicator dots
// ─────────────────────────────────────────────────────────────────────────────

class _PageDots extends StatefulWidget {
  final PageController pageController;
  final int count;
  const _PageDots({required this.pageController, required this.count});

  @override
  State<_PageDots> createState() => _PageDotsState();
}

class _PageDotsState extends State<_PageDots> {
  double _page = 0;

  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(_onPage);
  }

  void _onPage() {
    final p = widget.pageController.page ?? 0;
    if (mounted && p != _page) setState(() => _page = p);
  }

  @override
  void dispose() {
    widget.pageController.removeListener(_onPage);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.count, (i) {
        final dist = (_page - i).abs();
        final active = dist < 0.5;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: active ? 18 : 7,
          height: 7,
          decoration: BoxDecoration(
            color: active
                ? AppColors.islamic.withValues(alpha: 0.75)
                : AppColors.islamic.withValues(alpha: 0.25),
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Page 1 — Ask Ayara + spiritual meditation animation
// ─────────────────────────────────────────────────────────────────────────────

class _AskMeditationPage extends StatelessWidget {
  final PageController pageController;
  final TextEditingController askController;
  final FocusNode focusNode;
  final String? error;
  final VoidCallback onSubmit;
  final VoidCallback onErrorClear;
  final bool isListening;
  final VoidCallback onVoiceToggle;

  const _AskMeditationPage({
    required this.pageController,
    required this.askController,
    required this.focusNode,
    required this.error,
    required this.onSubmit,
    required this.onErrorClear,
    required this.isListening,
    required this.onVoiceToggle,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return SafeArea(
      child: Column(
        children: [
          // Fixed top bar: badge + reflections (same position as home screen)
          AnimatedBuilder(
            animation: UsageService.instance,
            builder: (context, _) {
              final snap = UsageService.instance.current;
              final isPremium = (snap?.plan ?? 'basic') == 'premium';
              final remaining = snap?.creditsRemaining;
              final label = remaining == null
                  ? t.creditsRemainingLabel('—')
                  : t.creditsRemainingLabel(remaining);
              return Container(
                width: double.infinity,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    if (isPremium) ...[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: AppColors.gold.withValues(alpha: 0.18),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                              color: AppColors.gold.withValues(alpha: 0.55)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star_rounded,
                                size: 14, color: AppColors.goldBright),
                            const SizedBox(width: 5),
                            Text(
                              t.planPremium,
                              style: const TextStyle(
                                color: AppColors.goldBright,
                                fontWeight: FontWeight.w800,
                                fontSize: 11.5,
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                    ],
                    Text(
                      label,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: AppColors.crimsonLight,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.25,
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          // Section title
          Text(
            t.askAyaraTitle,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: AppColors.islamic,
              fontWeight: FontWeight.w800,
              fontSize: 22,
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            t.askAyaraSubtitle,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary,
              fontSize: 13.5,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 20),

          // Question input
          Container(
            decoration: BoxDecoration(
              color: AppColors.islamic.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.islamic.withValues(alpha: 0.25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: TextField(
              controller: askController,
              focusNode: focusNode,
              maxLines: 4,
              minLines: 3,
              textInputAction: TextInputAction.newline,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.textPrimary,
                fontSize: 15,
                height: 1.55,
              ),
              decoration: InputDecoration(
                hintText: t.askAyaraHint,
                hintStyle: TextStyle(
                  color: AppColors.textSecondary.withValues(alpha: 0.6),
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
            ),
          ),

          if (error != null) ...[
            const SizedBox(height: 10),
            GestureDetector(
              onTap: onErrorClear,
              child: Text(
                error!,
                style: const TextStyle(color: Colors.red, fontSize: 13),
              ),
            ),
          ],

          const SizedBox(height: 14),

          // Submit button
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onSubmit,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.islamic,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Text(
                t.askAyaraSubmit,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Voice input button
          _VoiceMicButton(isListening: isListening, onTap: onVoiceToggle),

          const SizedBox(height: 28),

          // Spiritual animation
          const _SpiritualAnimation(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Shimmer dots — animating dots with "Seeking an answer" text
// ─────────────────────────────────────────────────────────────────────────────

class _ShimmerDots extends StatefulWidget {
  const _ShimmerDots();

  @override
  State<_ShimmerDots> createState() => _ShimmerDotsState();
}

class _ShimmerDotsState extends State<_ShimmerDots>
    with TickerProviderStateMixin {
  late List<AnimationController> _dotCtrllers;

  @override
  void initState() {
    super.initState();
    _dotCtrllers = List.generate(
      3,
      (i) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
      )
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            Future.delayed(const Duration(milliseconds: 200), () {
              if (mounted) _dotCtrllers[i].reverse();
            });
          } else if (status == AnimationStatus.dismissed && mounted) {
            Future.delayed(Duration(milliseconds: (100 * i).toInt()), () {
              if (mounted) _dotCtrllers[i].forward();
            });
          }
        }),
    );
    _dotCtrllers[0].forward();
  }

  @override
  void dispose() {
    for (final ctrl in _dotCtrllers) {
      ctrl.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Seeking an answer',
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.70),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (i) {
            return AnimatedBuilder(
              animation: _dotCtrllers[i],
              builder: (_, child) => Opacity(
                opacity: _dotCtrllers[i].value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.gold.withValues(
                        alpha: 0.6 + (_dotCtrllers[i].value * 0.4),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Spiritual ambient animation
// ─────────────────────────────────────────────────────────────────────────────

class _SpiritualAnimation extends StatefulWidget {
  const _SpiritualAnimation();

  @override
  State<_SpiritualAnimation> createState() => _SpiritualAnimationState();
}

class _SpiritualAnimationState extends State<_SpiritualAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _glow = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 3200),
  )..repeat(reverse: true);

  late final AnimationController _rise = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 4500),
  )..repeat();

  late final AnimationController _pulse = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2100),
  )..repeat(reverse: true);

  late final Listenable _all = Listenable.merge([_glow, _rise, _pulse]);

  @override
  void dispose() {
    _glow.dispose();
    _rise.dispose();
    _pulse.dispose();
    super.dispose();
  }

  List<Widget> _buildParticles(double riseValue) {
    const positions = [
      (0.12, 0.85), (0.30, 0.70), (0.50, 0.90), (0.68, 0.75),
      (0.85, 0.88), (0.22, 0.55), (0.60, 0.60), (0.78, 0.45),
    ];
    const delays = [0.0, 0.15, 0.30, 0.45, 0.60, 0.72, 0.85, 0.10];

    return List.generate(positions.length, (i) {
      final (px, py) = positions[i];
      final delayed = ((riseValue + delays[i]) % 1.0);
      final opacity = (delayed < 0.3
              ? delayed / 0.3
              : delayed > 0.7
                  ? (1 - delayed) / 0.3
                  : 1.0)
          .clamp(0.0, 1.0);
      final dy = -120.0 * delayed;
      return Positioned(
        left: px * 300,
        top: py * 200 + dy,
        child: Opacity(
          opacity: opacity * 0.6,
          child: Container(
            width: 5 + (i % 3) * 2.0,
            height: 5 + (i % 3) * 2.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: i % 3 == 0
                  ? AppColors.gold
                  : i % 3 == 1
                      ? AppColors.islamic
                      : const Color(0xFF9C3030),
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: AnimatedBuilder(
        animation: _all,
        builder: (context, _) {
          final glowAlpha = 0.06 + _glow.value * 0.10;
          final pulseScale = 0.92 + _pulse.value * 0.12;

          return LayoutBuilder(
            builder: (context, constraints) {
              final w = constraints.maxWidth;
              final cx = w / 2;

              return Stack(
                clipBehavior: Clip.none,
                children: [
                  // Gold glow orb
                  Positioned(
                    left: cx - 100,
                    top: 20,
                    child: Transform.scale(
                      scale: pulseScale,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [
                              AppColors.gold.withValues(alpha: glowAlpha * 1.8),
                              AppColors.gold.withValues(alpha: glowAlpha * 0.4),
                              Colors.transparent,
                            ],
                            stops: const [0.0, 0.5, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Emerald glow
                  Positioned(
                    left: cx - 140,
                    top: 60,
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            AppColors.islamic
                                .withValues(alpha: glowAlpha * 1.2),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Crimson glow
                  Positioned(
                    right: cx - 140,
                    top: 80,
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            const Color(0xFF9C3030)
                                .withValues(alpha: glowAlpha * 0.9),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Rising particles (use fixed 300px coordinate space)
                  ..._buildParticles(_rise.value),
                  // Bismillah text
                  Positioned(
                    bottom: 12,
                    left: 0,
                    right: 0,
                    child: Opacity(
                      opacity: 0.18 + _pulse.value * 0.14,
                      child: Text(
                        'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.gold,
                          fontWeight: FontWeight.w500,
                          height: 1.6,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Ask Ayara loading screen
// ─────────────────────────────────────────────────────────────────────────────

class _AskLoadingScreen extends StatefulWidget {
  final String question;
  const _AskLoadingScreen({required this.question});

  @override
  State<_AskLoadingScreen> createState() => _AskLoadingScreenState();
}

class _AskLoadingScreenState extends State<_AskLoadingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _rotateCtrl = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 6),
  )..repeat();

  late final AnimationController _pulseCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1800),
  )..repeat();

  late final Animation<double> _pulse1 = CurvedAnimation(
    parent: _pulseCtrl,
    curve: Curves.easeOut,
  );

  late final Animation<double> _pulse2 = CurvedAnimation(
    parent: _pulseCtrl,
    curve: const Interval(0.35, 1.0, curve: Curves.easeOut),
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _run());
  }

  @override
  void dispose() {
    _rotateCtrl.dispose();
    _pulseCtrl.dispose();
    super.dispose();
  }

  Future<void> _run() async {
    try {
      final response =
          await ChatService.sendPrompt(widget.question, context: context);
      if (!mounted) return;
      await Navigator.of(context).pushReplacement(
        PageRouteBuilder<void>(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (ctx, a1, a2) => AskResultScreen(
            question: widget.question,
            response: response,
          ),
          transitionsBuilder: (ctx, anim, a2, child) =>
              FadeTransition(opacity: anim, child: child),
        ),
      );
    } catch (e, st) {
      if (!mounted) return;
      Navigator.of(context).pop();
      final msg = e.toString().contains('Exception: ')
          ? e.toString().split('Exception: ').last
          : e.toString();
      const known = {
        'local_rate_limited', 'remote_rate_limited', 'appcheck_throttled',
        'ai_unauthenticated', 'ai_rate_limited', 'ai_timeout',
        'ai_unavailable', 'ai_misconfigured', 'ai_error',
        'request_in_flight', 'credits_exhausted', 'guest_not_allowed',
      };
      if (!known.contains(msg)) showAppErrorSnack(context, e, stackTrace: st);
    }
  }

  @override
  Widget build(BuildContext context) {
    final preview = widget.question.length > 100
        ? '${widget.question.substring(0, 100).trimRight()}…'
        : widget.question;

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.navy, AppColors.deepNavy, AppColors.navyDeep],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.65,
                    colors: [
                      AppColors.gold.withValues(alpha: 0.10),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 160,
                    height: 160,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedBuilder(
                          animation: _pulse1,
                          builder: (_, __) => Opacity(
                            opacity: (1.0 - _pulse1.value).clamp(0.0, 1.0),
                            child: SizedBox(
                              width: 60 + 100 * _pulse1.value,
                              height: 60 + 100 * _pulse1.value,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.gold.withValues(alpha: 0.45),
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        AnimatedBuilder(
                          animation: _pulse2,
                          builder: (_, __) => Opacity(
                            opacity: (1.0 - _pulse2.value).clamp(0.0, 1.0),
                            child: SizedBox(
                              width: 60 + 100 * _pulse2.value,
                              height: 60 + 100 * _pulse2.value,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.islamic.withValues(alpha: 0.35),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.gold.withValues(alpha: 0.08),
                            border: Border.all(
                              color: AppColors.gold.withValues(alpha: 0.40),
                              width: 1.5,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.gold.withValues(alpha: 0.20),
                                blurRadius: 24,
                                spreadRadius: 4,
                              ),
                            ],
                          ),
                        ),
                        AnimatedBuilder(
                          animation: _rotateCtrl,
                          builder: (_, child) => Transform.rotate(
                            angle: _rotateCtrl.value * 2 * math.pi,
                            child: child,
                          ),
                          child: const Icon(
                            Icons.auto_awesome_rounded,
                            color: AppColors.goldBright,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    preview,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.55),
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      height: 1.55,
                    ),
                  ).animate().fadeIn(duration: 500.ms),
                  const SizedBox(height: 28),
                  const _AskShimmerDots()
                      .animate()
                      .fadeIn(duration: 400.ms, delay: 200.ms),
                ],
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 300.ms);
  }
}

class _AskShimmerDots extends StatefulWidget {
  const _AskShimmerDots();

  @override
  State<_AskShimmerDots> createState() => _AskShimmerDotsState();
}

class _AskShimmerDotsState extends State<_AskShimmerDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1200),
  )..repeat();

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Seeking an answer',
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.50),
            fontSize: 13,
            fontStyle: FontStyle.italic,
            letterSpacing: 0.2,
          ),
        ),
        const SizedBox(width: 2),
        AnimatedBuilder(
          animation: _ctrl,
          builder: (_, __) {
            final v = _ctrl.value;
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(3, (i) {
                final threshold = i / 3.0;
                final opacity = v >= threshold
                    ? ((v - threshold) * 3).clamp(0.0, 1.0)
                    : 0.15;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.5),
                  child: Opacity(
                    opacity: opacity,
                    child: Text(
                      '.',
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        height: 0.9,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Loading screen — full-screen animation while generating category response
// ─────────────────────────────────────────────────────────────────────────────

class _CategoryLoadingScreen extends StatefulWidget {
  final CategoryActionItem category;
  final String normalizedId;
  final Function(Duration) onCooldown;
  final Function(Object) onLooksLikeRateLimit;

  const _CategoryLoadingScreen({
    required this.category,
    required this.normalizedId,
    required this.onCooldown,
    required this.onLooksLikeRateLimit,
  });

  @override
  State<_CategoryLoadingScreen> createState() => _CategoryLoadingScreenState();
}

class _CategoryLoadingScreenState extends State<_CategoryLoadingScreen>
    with TickerProviderStateMixin {
  late AnimationController _ringCtrl1, _ringCtrl2, _starCtrl;
  late Animation<double> _ring1Scale, _ring2Scale, _starRotate;

  @override
  void initState() {
    super.initState();
    _ringCtrl1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat();
    _ringCtrl2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2600),
    )..repeat();
    _starCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat();

    _ring1Scale = Tween<double>(begin: 1.0, end: 1.8).animate(
      CurvedAnimation(parent: _ringCtrl1, curve: Curves.easeOut),
    );
    _ring2Scale = Tween<double>(begin: 1.0, end: 1.6).animate(
      CurvedAnimation(parent: _ringCtrl2, curve: Curves.easeOut),
    );
    _starRotate = Tween<double>(begin: 0, end: 2 * math.pi).animate(
      CurvedAnimation(parent: _starCtrl, curve: Curves.linear),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => _run());
  }

  @override
  void dispose() {
    _ringCtrl1.dispose();
    _ringCtrl2.dispose();
    _starCtrl.dispose();
    super.dispose();
  }

  Future<void> _run() async {
    const known = {
      'credits_exhausted',
      'local_rate_limited',
      'too many attempts',
      'appcheck',
    };

    try {
      final text = await ChatService.generateForCategory(context, widget.normalizedId);
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        fadeRoute(
          ResultScreen(
            category: widget.category.title,
            response: text,
            onRegenerate: () async {
              final regenerated =
                  await ChatService.generateForCategory(context, widget.normalizedId);
              return regenerated;
            },
          ),
        ),
      );
    } catch (e, st) {
      if (!mounted) return;

      final errStr = e.toString().toLowerCase();
      final isKnown = known.any((k) => errStr.contains(k));

      if (widget.onLooksLikeRateLimit(e)) {
        widget.onCooldown(const Duration(seconds: 30));
        if (!kDebugMode) {
          Navigator.of(context).pop();
          return;
        }
      }

      if (isKnown) {
        Navigator.of(context).pop();
        return;
      }

      Navigator.of(context).pop();
      showAppErrorSnack(context, e, stackTrace: st);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.navy,
                    AppColors.deepNavy,
                    AppColors.navyDeep,
                  ],
                  stops: [0.0, 0.50, 1.0],
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Pulsing rings
                SizedBox(
                  width: 240,
                  height: 240,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedBuilder(
                        animation: _ring1Scale,
                        builder: (_, __) => Opacity(
                          opacity: (1.0 - _ringCtrl1.value).clamp(0.0, 1.0),
                          child: Container(
                            width: 180 * _ring1Scale.value,
                            height: 180 * _ring1Scale.value,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.gold.withValues(alpha: 0.6),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: _ring2Scale,
                        builder: (_, __) => Opacity(
                          opacity: (1.0 - _ringCtrl2.value).clamp(0.0, 1.0),
                          child: Container(
                            width: 140 * _ring2Scale.value,
                            height: 140 * _ring2Scale.value,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.gold.withValues(alpha: 0.4),
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Rotating star
                      AnimatedBuilder(
                        animation: _starRotate,
                        builder: (_, __) => Transform.rotate(
                          angle: _starRotate.value,
                          child: Text(
                            '✨',
                            style: TextStyle(
                              fontSize: 56,
                              shadows: [
                                Shadow(
                                  color: AppColors.gold.withValues(alpha: 0.4),
                                  blurRadius: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // Category name
                Text(
                  widget.category.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cinzel(
                    color: AppColors.gold,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 20),
                // Shimmer dots
                _ShimmerDots(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Voice mic button — tap once to start, tap again (or auto-silence after 4 s)
// to stop. Pulses while listening.
// ─────────────────────────────────────────────────────────────────────────────

class _VoiceMicButton extends StatefulWidget {
  final bool isListening;
  final VoidCallback onTap;

  const _VoiceMicButton({required this.isListening, required this.onTap});

  @override
  State<_VoiceMicButton> createState() => _VoiceMicButtonState();
}

class _VoiceMicButtonState extends State<_VoiceMicButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulse = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 850),
  );

  @override
  void didUpdateWidget(_VoiceMicButton old) {
    super.didUpdateWidget(old);
    if (widget.isListening) {
      if (!_pulse.isAnimating) _pulse.repeat(reverse: true);
    } else {
      _pulse.stop();
      _pulse.reset();
    }
  }

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.isListening ? AppColors.crimsonLight : AppColors.islamic;

    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 13),
        decoration: BoxDecoration(
          color: widget.isListening
              ? AppColors.crimsonLight.withValues(alpha: 0.08)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: widget.isListening
                ? AppColors.crimsonLight.withValues(alpha: 0.50)
                : AppColors.islamic.withValues(alpha: 0.35),
            width: 1.2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _pulse,
              builder: (_, child) => Opacity(
                opacity: widget.isListening ? 0.5 + 0.5 * _pulse.value : 1.0,
                child: child,
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 220),
                child: Icon(
                  widget.isListening
                      ? Icons.stop_circle_rounded
                      : Icons.mic_rounded,
                  key: ValueKey(widget.isListening),
                  color: color,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(width: 8),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 220),
              child: Builder(
                key: ValueKey(widget.isListening),
                builder: (context) {
                  final t = AppLocalizations.of(context);
                  return Text(
                    widget.isListening ? t.voiceInputListening : t.voiceInputSpeak,
                    style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
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
