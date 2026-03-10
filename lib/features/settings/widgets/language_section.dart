// lib/features/settings/widgets/language_section.dart
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/services/locale_service.dart';
import 'package:ayara/core/utils/language_meta.dart';
import 'package:ayara/l10n/app_localizations.dart';

class LanguageSection extends StatefulWidget {
  const LanguageSection({
    super.key,
    required this.initialCode, // legacy: 'en' | 'sv' | 'bs' OR tag: 'en-US'
    required this.onApplyLocale,
    required this.busy,
    required this.supportedLocales, // ✅ SAFE list from main.dart
  });

  final String initialCode;
  final Future<void> Function(String code) onApplyLocale;
  final bool busy;

  /// Must match MaterialApp.supportedLocales (safe-filtered by delegates).
  final List<Locale> supportedLocales;

  @override
  State<LanguageSection> createState() => _LanguageSectionState();
}

class _LanguageSectionState extends State<LanguageSection> {
  late final List<Locale> _supportedLocales = widget.supportedLocales;
  late final List<String> _supportedTags =
      _supportedLocales.map(LocaleService.toTag).toList(growable: false);

  late final List<String> _visibleTags = _buildVisibleTags();

  late final String _initialTag = _normalizeToVisibleTag(widget.initialCode);
  late String _selectedTag = _initialTag;

  List<String> _buildVisibleTags() {
    final tags = [..._supportedTags];

    // Hide base languages if variants exist (en + en-US etc)
    tags.removeWhere((t) {
      final norm = LanguageMetaRegistry.normalizeTag(t);
      if (!norm.contains('-')) {
        final lang = norm.toLowerCase();
        return LanguageMetaRegistry.shouldHideBaseLanguage(
          languageCode: lang,
          supportedLocales: _supportedLocales,
          hideForLanguages: const {'en', 'es', 'pt', 'zh'},
        );
      }
      return false;
    });

    // Normalize + De-duplicate
    final seen = <String>{};
    final out = <String>[];
    for (final t in tags) {
      final norm = LanguageMetaRegistry.normalizeTag(t);
      if (norm.isEmpty) continue;
      if (seen.add(norm.toLowerCase())) out.add(norm);
    }

    // Safety: never empty
    if (out.isEmpty) return const ['en'];
    return out;
  }

  bool _isHiddenBaseTag(String tag) {
    final norm = LanguageMetaRegistry.normalizeTag(tag);
    if (norm.isEmpty) return true;
    if (norm.contains('-')) return false;
    return !_visibleTags.any((t) => t.toLowerCase() == norm.toLowerCase());
  }

  String _normalizeToVisibleTag(String raw) {
    final wanted = LocaleService.normalize(raw);

    // 1) Exact visible match
    for (final t in _visibleTags) {
      if (t.toLowerCase() == wanted.toLowerCase()) return t;
    }

    // 2) If exact supported but hidden base (e.g. "en"), map to best visible variant
    for (final t in _supportedTags) {
      if (t.toLowerCase() == wanted.toLowerCase() && _isHiddenBaseTag(t)) {
        final lang = t.split('-').first.toLowerCase();

        // Prefer device region if available
        final device = ui.PlatformDispatcher.instance.locale;
        final deviceTag = LocaleService.toTag(device).toLowerCase();
        for (final v in _visibleTags) {
          if (v.toLowerCase() == deviceTag &&
              v.split('-').first.toLowerCase() == lang) {
            return v;
          }
        }

        // Else first visible variant
        for (final v in _visibleTags) {
          if (v.split('-').first.toLowerCase() == lang) return v;
        }
      }
    }

    // 3) Match language only
    final wantedLang = wanted.split('-').first.toLowerCase();
    for (final t in _visibleTags) {
      if (t.split('-').first.toLowerCase() == wantedLang) return t;
    }

    // 4) Fallback
    return _visibleTags.first;
  }

  String? get _suggestedTag {
    final device = ui.PlatformDispatcher.instance.locale;

    // 1) exact visible tag match
    final deviceTag = LocaleService.toTag(device).toLowerCase();
    for (final t in _visibleTags) {
      if (t.toLowerCase() == deviceTag) return t;
    }

    // 2) language-only match
    for (final t in _visibleTags) {
      if (t.split('-').first.toLowerCase() ==
          device.languageCode.toLowerCase()) {
        return t;
      }
    }

    return null;
  }

  (String flag, String label) _flagAndLabelFromTag(String tag) {
    final flag = LanguageMetaRegistry.flagForTag(tag);
    final label = LanguageMetaRegistry.labelForTag(tag);
    return (flag, label);
  }

  /// ✅ Always alphabetical (Suggested is NOT moved; we scroll to it instead).
  List<String> _orderedTagsAlphabetical() {
    final tags = [..._visibleTags];
    tags.sort((a, b) {
      final la = _flagAndLabelFromTag(a).$2.toLowerCase();
      final lb = _flagAndLabelFromTag(b).$2.toLowerCase();
      return la.compareTo(lb);
    });
    return tags;
  }

  Future<void> _openLanguagePicker(BuildContext context) async {
    if (widget.busy) return;

    HapticFeedback.selectionClick();

    final t = AppLocalizations.of(context)!;

    final ordered = _orderedTagsAlphabetical();
    final suggestedLower = _suggestedTag?.toLowerCase();

    final picked = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return _LanguagePickerSheet(
          title: t.chooseLanguage,
          suggestedBadgeText: t.languageSuggestedBadge,
          initialSelectedTag: _selectedTag,
          suggestedTagLower: suggestedLower,
          tags: ordered,
          flagForTag: LanguageMetaRegistry.flagForTag,
          labelForTag: LanguageMetaRegistry.labelForTag,
          continueLabel: t.actionContinue,
        );
      },
    );

    if (!mounted) return;
    if (picked == null) return;

    setState(() => _selectedTag = picked);
    await widget.onApplyLocale(picked);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    final (flag, label) = _flagAndLabelFromTag(_selectedTag);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: theme.dividerColor.withOpacity(0.2)),
          ),
          child: Row(
            children: [
              Text(flag, style: const TextStyle(fontSize: 22)),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  '${t.currentLanguage}: $label',
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        InkWell(
          onTap: widget.busy ? null : () => _openLanguagePicker(context),
          borderRadius: BorderRadius.circular(14),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: theme.dividerColor.withOpacity(0.25)),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  color: theme.colorScheme.onSurface.withOpacity(0.7),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    t.chooseLanguage,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Icon(
                  Icons.expand_more,
                  color: theme.colorScheme.onSurface.withOpacity(0.6),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _LanguagePickerSheet extends StatefulWidget {
  const _LanguagePickerSheet({
    required this.title,
    required this.suggestedBadgeText,
    required this.initialSelectedTag,
    required this.suggestedTagLower,
    required this.tags,
    required this.flagForTag,
    required this.labelForTag,
    required this.continueLabel,
  });

  final String title;
  final String suggestedBadgeText;
  final String initialSelectedTag;
  final String? suggestedTagLower;
  final List<String> tags;
  final String Function(String tag) flagForTag;
  final String Function(String tag) labelForTag;
  final String continueLabel;

  @override
  State<_LanguagePickerSheet> createState() => _LanguagePickerSheetState();
}

class _LanguagePickerSheetState extends State<_LanguagePickerSheet> {
  final TextEditingController _searchCtrl = TextEditingController();
  final ScrollController _scrollCtrl = ScrollController();

  // Keys per row so we can ensureVisible center suggested, reliably.
  final Map<String, GlobalKey> _rowKeys = {};

  String _query = '';
  late String _selected = widget.initialSelectedTag;

  bool _didInitialAnchor = false;

  GlobalKey _keyForTag(String tag) {
    final k = tag.toLowerCase();
    return _rowKeys.putIfAbsent(
      k,
      () => GlobalKey(debugLabel: 'settings_lang_$k'),
    );
  }

  @override
  void initState() {
    super.initState();

    _searchCtrl.addListener(() {
      final q = _searchCtrl.text.trim();
      if (q == _query) return;
      setState(() => _query = q);

      // If search cleared: re-anchor to suggested again.
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
    _scrollCtrl.dispose();
    super.dispose();
  }

  List<String> _filtered() {
    final q = _query.toLowerCase();
    if (q.isEmpty) return widget.tags;

    bool matches(String tag) {
      final norm = LanguageMetaRegistry.normalizeTag(tag).toLowerCase();
      final label = widget.labelForTag(tag).toLowerCase();
      return label.startsWith(q) ||
          label.contains(q) ||
          norm.startsWith(q) ||
          norm.contains(q);
    }

    return widget.tags.where(matches).toList(growable: false);
  }

  double _rowHeightApprox(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    if (w >= 700) return 64;
    if (w >= 420) return 60;
    return 58;
  }

  void _anchorToSuggestedCenteredRobust() {
    if (_didInitialAnchor) return;
    if (_query.isNotEmpty) return;

    final s = widget.suggestedTagLower;
    if (s == null) return;

    if (!_scrollCtrl.hasClients) return;

    final ordered = widget.tags;
    final idx = ordered.indexWhere((t) => t.toLowerCase() == s);
    if (idx < 0) return;

    final rowH = _rowHeightApprox(context);
    final viewport = _scrollCtrl.position.viewportDimension;

    final approxTarget = (idx * rowH) - (viewport * 0.5) + (rowH * 0.5);
    final max = _scrollCtrl.position.maxScrollExtent;
    final prejump = approxTarget.clamp(0.0, max);

    _didInitialAnchor = true;
    _scrollCtrl.jumpTo(prejump);

    // Next frame: ensureVisible to center perfectly when ctx exists
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final key = _keyForTag(s);
      final ctx = key.currentContext;
      if (ctx == null) {
        _didInitialAnchor = false; // allow another attempt
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

  @override
  Widget build(BuildContext context) {
    final filtered = _filtered();

    // keep anchoring attempt safe on rebuilds until it happens once
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _anchorToSuggestedCenteredRobust();
    });

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(22)),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 18, sigmaY: 18),
        child: Container(
          color: const Color(0xFF152E1E).withValues(alpha: 0.97),
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 14,
            bottom: 14 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                Container(
                  width: 46,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.18),
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.close,
                        color: Colors.white.withOpacity(0.75),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white.withOpacity(0.10)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search,
                          color: Colors.white.withOpacity(0.70), size: 18),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final t = AppLocalizations.of(context)!;
                            return TextField(
                              controller: _searchCtrl,
                              style: const TextStyle(color: Colors.white),
                              cursorColor: AppColors.gold,
                              decoration: InputDecoration(
                                hintText: t.languageSearchHint,
                                hintStyle: TextStyle(
                                    color: Colors.white.withValues(alpha: 0.45)),
                                border: InputBorder.none,
                                filled: false,
                                isDense: true,
                              ),
                            );
                          },
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
                                color: Colors.white.withOpacity(0.70), size: 18),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView.separated(
                    controller: _scrollCtrl,
                    itemCount: filtered.length,
                    separatorBuilder: (_, __) => Divider(
                      color: Colors.white.withOpacity(0.08),
                      height: 1,
                    ),
                    itemBuilder: (_, i) {
                      final tag = filtered[i];
                      final flag = widget.flagForTag(tag);
                      final label = widget.labelForTag(tag);

                      final isSuggested = widget.suggestedTagLower != null &&
                          tag.toLowerCase() == widget.suggestedTagLower;
                      final isSelected =
                          tag.toLowerCase() == _selected.toLowerCase();

                      return KeyedSubtree(
                        key: _keyForTag(tag),
                        child: ListTile(
                          onTap: () {
                            HapticFeedback.selectionClick();
                            setState(() => _selected = tag);
                          },
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          minVerticalPadding: 12,
                          leading:
                              Text(flag, style: const TextStyle(fontSize: 20)),
                          title: Text(
                            label,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (isSuggested) ...[
                                _SuggestedBadge(text: widget.suggestedBadgeText),
                                const SizedBox(width: 8),
                              ],
                              if (isSelected)
                                Icon(
                                  Icons.check,
                                  color: AppColors.gold.withValues(alpha: 0.95),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      HapticFeedback.selectionClick();
                      Navigator.of(context).pop(_selected);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.navy,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Text(
                      widget.continueLabel,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.2,
                        height: 1.1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SuggestedBadge extends StatelessWidget {
  final String text;
  const _SuggestedBadge({required this.text});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.gold.withValues(alpha: 0.18),
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: AppColors.gold.withValues(alpha: 0.45),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.auto_awesome,
                size: 14,
                color: AppColors.goldLight.withValues(alpha: 0.95),
              ),
              const SizedBox(width: 6),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    text,
                    maxLines: 1,
                    softWrap: false,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.2,
                          height: 1.05,
                          color: AppColors.goldLight.withValues(alpha: 0.95),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
