// lib/features/onboarding/language_gate_screen.dart
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/services/locale_service.dart';
import 'package:ayara/core/utils/language_meta.dart';
import 'package:ayara/l10n/app_localizations.dart';

class LanguageGateScreen extends StatefulWidget {
  const LanguageGateScreen({
    super.key,
    this.currentCode, // may be "sv" or "sv-SE" or null
    required this.onSelected,
  });

  final String? currentCode;
  final void Function(Locale locale) onSelected;

  @override
  State<LanguageGateScreen> createState() => _LanguageGateScreenState();
}

class _LanguageGateScreenState extends State<LanguageGateScreen> {
  // ✅ Use ONLY locales supported by ALL delegates (prevents warnings/crashes)
  late final List<Locale> _supportedLocalesSafe = _buildSupportedLocalesSafe();

  late final List<String> _supportedTags =
      _supportedLocalesSafe.map(LocaleService.toTag).toList(growable: false);

  // Visible tags = supportedTags minus hidden base languages (en/es/pt/zh) if variants exist.
  late final List<String> _visibleTags = _buildVisibleTags();

  late String _selectedTag; // e.g. "en-GB"
  String? _suggestedTag; // device-locale if supported (tag if possible)

  final TextEditingController _searchCtrl = TextEditingController();
  final ScrollController _listCtrl = ScrollController();

  String _query = '';
  bool _busy = false;

  // Anchor once per open (and again when clearing search)
  bool _didInitialAnchor = false;

  // Keys per row so we can Scrollable.ensureVisible() to center suggested reliably.
  final Map<String, GlobalKey> _rowKeys = {};

  static const double _rowGap = 14.0;

  List<Locale> _buildSupportedLocalesSafe() {
    final all = AppLocalizations.supportedLocales;
    final safe = all.where(_isSupportedByDelegates).toList(growable: false);

    // Safety: always keep at least English
    if (safe.isEmpty) return const [Locale('en')];
    return safe;
  }

  bool _isSupportedByDelegates(Locale l) {
    final materialOk = GlobalMaterialLocalizations.delegate.isSupported(l);
    final cupertinoOk = GlobalCupertinoLocalizations.delegate.isSupported(l);
    final widgetsOk = GlobalWidgetsLocalizations.delegate.isSupported(l);
    return materialOk && cupertinoOk && widgetsOk;
  }

  @override
  void initState() {
    super.initState();

    _suggestedTag = _resolveSuggestedVisibleTag();

    final initialRaw = widget.currentCode?.trim().isNotEmpty == true
        ? widget.currentCode!
        : (_suggestedTag ?? _visibleTags.first);

    _selectedTag = _normalizeToVisibleTag(initialRaw);

    _searchCtrl.addListener(() {
      final q = _searchCtrl.text.trim();
      if (q == _query) return;

      setState(() => _query = q);

      // When searching: do not auto-anchor.
      // When clearing search: re-anchor to suggested (center).
      if (q.isEmpty) {
        _didInitialAnchor = false;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          _anchorToSuggestedCenteredRobust();
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _anchorToSuggestedCenteredRobust();
    });
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    _listCtrl.dispose();
    super.dispose();
  }

  List<String> _buildVisibleTags() {
    final tags = [..._supportedTags];

    // Hide base languages if variants exist (configurable list)
    tags.removeWhere((t) {
      final norm = LanguageMetaRegistry.normalizeTag(t);
      if (!norm.contains('-')) {
        final lang = norm.toLowerCase();
        return LanguageMetaRegistry.shouldHideBaseLanguage(
          languageCode: lang,
          supportedLocales: _supportedLocalesSafe,
          hideForLanguages: const {'en', 'es', 'pt', 'zh'},
        );
      }
      return false;
    });

    // Normalize + de-duplicate safely
    final seen = <String>{};
    final out = <String>[];
    for (final t in tags) {
      final norm = LanguageMetaRegistry.normalizeTag(t);
      if (norm.isEmpty) continue;
      if (seen.add(norm.toLowerCase())) out.add(norm);
    }

    // Safety
    if (out.isEmpty) return const ['en'];
    return out;
  }

  String _normalizeToVisibleTag(String raw) {
    final wanted = LocaleService.normalize(raw);

    // 1) exact visible tag
    for (final t in _visibleTags) {
      if (t.toLowerCase() == wanted.toLowerCase()) return t;
    }

    // 2) If asked for a hidden base tag (e.g. "en"), pick best visible variant
    final wantedNorm = LanguageMetaRegistry.normalizeTag(wanted);
    if (!wantedNorm.contains('-')) {
      final lang = wantedNorm.toLowerCase();

      // Prefer device region variant if possible
      final device = ui.PlatformDispatcher.instance.locale;
      final deviceTag = LocaleService.toTag(device).toLowerCase();
      for (final v in _visibleTags) {
        if (v.toLowerCase() == deviceTag &&
            v.split('-').first.toLowerCase() == lang) {
          return v;
        }
      }

      // Else first visible variant for that language
      for (final v in _visibleTags) {
        if (v.split('-').first.toLowerCase() == lang) return v;
      }
    }

    // 3) language-only match
    final wantedLang = wanted.split('-').first.toLowerCase();
    for (final t in _visibleTags) {
      if (t.split('-').first.toLowerCase() == wantedLang) return t;
    }

    return _visibleTags.first;
  }

  String? _resolveSuggestedVisibleTag() {
    final device = ui.PlatformDispatcher.instance.locale;
    final deviceTag = LocaleService.toTag(device).toLowerCase();

    // 1) exact visible match
    for (final t in _visibleTags) {
      if (t.toLowerCase() == deviceTag) return t;
    }

    // 2) language-only visible match
    for (final t in _visibleTags) {
      if (t.split('-').first.toLowerCase() ==
          device.languageCode.toLowerCase()) {
        return t;
      }
    }

    return null;
  }

  String _displayLabel(String tag) {
    final flag = LanguageMetaRegistry.flagForTag(tag);
    final label = LanguageMetaRegistry.labelForTag(tag);
    return '$flag  $label';
  }

  /// ✅ ALWAYS alphabetical A→Ö by endonym label.
  List<String> _orderedTagsAlphabetical() {
    final tags = [..._visibleTags];
    tags.sort((a, b) {
      final la = LanguageMetaRegistry.labelForTag(a).toLowerCase();
      final lb = LanguageMetaRegistry.labelForTag(b).toLowerCase();
      return la.compareTo(lb);
    });
    return tags;
  }

  List<String> _filteredTags(List<String> tags) {
    final q = _query.toLowerCase();
    if (q.isEmpty) return tags;

    bool matches(String tag) {
      final norm = LanguageMetaRegistry.normalizeTag(tag).toLowerCase();
      final label = LanguageMetaRegistry.labelForTag(tag).toLowerCase();
      return label.startsWith(q) ||
          label.contains(q) ||
          norm.startsWith(q) ||
          norm.contains(q);
    }

    return tags.where(matches).toList(growable: false);
  }

  GlobalKey _keyForTag(String tag) {
    final k = tag.toLowerCase();
    return _rowKeys.putIfAbsent(k, () => GlobalKey(debugLabel: 'lang_$k'));
  }

  double _rowHeightApprox(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    if (w >= 700) return 66;
    if (w >= 420) return 62;
    return 60;
  }

  /// ✅ Robust anchor:
  /// 1) Pre-jump by index so we don't start at top.
  /// 2) Then ensureVisible() to center when row ctx is ready.
  void _anchorToSuggestedCenteredRobust() {
    if (_didInitialAnchor) return;
    if (_query.isNotEmpty) return;

    final suggested = _suggestedTag;
    if (suggested == null) return;

    if (!_listCtrl.hasClients) return;

    final ordered = _orderedTagsAlphabetical();
    final idx = ordered
        .indexWhere((t) => t.toLowerCase() == suggested.toLowerCase());
    if (idx < 0) return;

    final rowH = _rowHeightApprox(context);
    final viewport = _listCtrl.position.viewportDimension;
    final approxTarget =
        (idx * (rowH + _rowGap)) - (viewport * 0.5) + (rowH * 0.5);

    final max = _listCtrl.position.maxScrollExtent;
    final prejump = approxTarget.clamp(0.0, max);

    _didInitialAnchor = true;
    _listCtrl.jumpTo(prejump);

    // Next frame: center precisely via ensureVisible
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final key = _keyForTag(suggested);
      final ctx = key.currentContext;
      if (ctx == null) {
        // If not built yet, allow one more attempt
        _didInitialAnchor = false;
        return;
      }
      Scrollable.ensureVisible(
        ctx,
        alignment: 0.5,
        duration: Duration.zero,
        curve: Curves.linear,
      );
    });
  }

  Future<void> _confirm() async {
    if (_busy) return;
    HapticFeedback.selectionClick();
    setState(() => _busy = true);

    try {
      await Future.delayed(const Duration(milliseconds: 150));
      final locale = LocaleService.toLocale(_selectedTag);

      final coerced = _supportedLocalesSafe.firstWhere(
        (l) =>
            LocaleService.toTag(l).toLowerCase() ==
            LocaleService.toTag(locale).toLowerCase(),
        orElse: () => _supportedLocalesSafe.firstWhere(
          (l) =>
              l.languageCode.toLowerCase() ==
              locale.languageCode.toLowerCase(),
          orElse: () => _supportedLocalesSafe.first,
        ),
      );

      widget.onSelected(coerced);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Widget _sectionHeader(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.2,
        ),
      ),
    );
  }

  Widget _suggestedBadge(String text) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.gold.withValues(alpha: 0.18),
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: AppColors.gold.withValues(alpha: 0.40)),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.visible,
              style: const TextStyle(
                color: AppColors.goldLight,
                fontSize: 12,
                height: 1.05,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.15,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchBox() {
    final t = AppLocalizations.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withValues(alpha: 0.10)),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.white.withValues(alpha: 0.70), size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: _searchCtrl,
              style: const TextStyle(color: Colors.white),
              cursorColor: AppColors.gold,
              decoration: InputDecoration(
                hintText: t.languageSearchHint,
                hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.45)),
                border: InputBorder.none,
                filled: false,
                isDense: true,
              ),
            ),
          ),
          if (_query.isNotEmpty)
            GestureDetector(
              onTap: () {
                HapticFeedback.selectionClick();
                _searchCtrl.clear();
                FocusScope.of(context).unfocus();
              },
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(Icons.close,
                    color: Colors.white.withValues(alpha: 0.70), size: 18),
              ),
            ),
        ],
      ),
    );
  }

  Widget _langRow({
    required String tag,
    required bool selected,
    required bool suggested,
    required VoidCallback onTap,
  }) {
    const accent = AppColors.gold;
    final label = _displayLabel(tag);

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 60),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: selected
                ? accent.withValues(alpha: 0.25)
                : Colors.white.withValues(alpha: 0.04),
            border: Border.all(
              color: selected
                  ? accent.withValues(alpha: 0.80)
                  : Colors.white.withValues(alpha: 0.08),
              width: selected ? 2.0 : 1.0,
            ),
            boxShadow: [
              if (selected)
                BoxShadow(
                  color: accent.withValues(alpha: 0.25),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.15,
                    fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                  ),
                ),
              ),
              if (suggested) ...[
                const SizedBox(width: 10),
                _suggestedBadge(
                  AppLocalizations.of(context).languageSuggestedBadge,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context);

    final suggested = _suggestedTag;

    final ordered = _orderedTagsAlphabetical();
    final filtered = _filteredTags(ordered);

    // Keep attempting anchor until it succeeds once.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _anchorToSuggestedCenteredRobust();
    });

    return Scaffold(
      backgroundColor: AppColors.navyDeep,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [AppColors.navyDeep, AppColors.navy],
              ),
            ),
          ),
          const IgnorePointer(
            child: CustomPaint(
              painter: _AmbientNavyGoldPainter(),
              size: Size.infinite,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),

                  // ✅ Brand name from l10n
                  Text(
                    t.appTitle, // "Ayara"
                    style: theme.textTheme.headlineLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 36,
                      letterSpacing: 0.8,
                      shadows: const [
                        Shadow(
                          blurRadius: 8,
                          color: Colors.black45,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),
                  Text(
                    t.languageSelectTitle,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    t.languageSelectSub,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white54,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: _sectionHeader(t.languageAllHeader),
                  ),

                  _searchBox(),
                  const SizedBox(height: 12),

                  Expanded(
                    child: ListView.separated(
                      controller: _listCtrl,
                      itemCount: filtered.length,
                      separatorBuilder: (_, __) =>
                          const SizedBox(height: _rowGap),
                      itemBuilder: (_, i) {
                        final tag = filtered[i];
                        final isSuggestedRow = suggested != null &&
                            suggested.toLowerCase() == tag.toLowerCase();

                        return KeyedSubtree(
                          key: _keyForTag(tag),
                          child: _langRow(
                            tag: tag,
                            selected: _selectedTag.toLowerCase() ==
                                tag.toLowerCase(),
                            suggested: isSuggestedRow,
                            onTap: () => setState(() => _selectedTag = tag),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _busy ? null : _confirm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.gold,
                        foregroundColor: AppColors.navyDeep,
                        shadowColor: AppColors.gold.withValues(alpha: 0.40),
                        elevation: 4,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: _busy
                          ? const SizedBox(
                              width: 22,
                              height: 22,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              ),
                            )
                          : Text(
                              t.continueCta,
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.4,
                                color: AppColors.navyDeep,
                              ),
                            ),
                    ),
                  ),

                  const SizedBox(height: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AmbientNavyGoldPainter extends CustomPainter {
  const _AmbientNavyGoldPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 80);

    paint.color = AppColors.navyLight.withValues(alpha: 0.18);
    canvas.drawCircle(Offset(size.width * 0.18, size.height * 0.14), 170, paint);

    paint.color = AppColors.gold.withValues(alpha: 0.07);
    canvas.drawCircle(Offset(size.width * 0.85, size.height * 0.36), 220, paint);

    paint.color = AppColors.navyDeep.withValues(alpha: 0.14);
    canvas.drawCircle(Offset(size.width * 0.42, size.height * 0.92), 250, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
