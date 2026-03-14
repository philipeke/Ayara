// lib/features/duas/dua_detail_screen.dart

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/services/sound_service.dart';
import 'package:ayara/features/chat/services/chat_service.dart';
import 'package:ayara/features/limit/usage_service.dart';
import 'package:ayara/features/qibla/ask_result_screen.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'dua_model.dart';

class DuaDetailScreen extends StatelessWidget {
  final DuaEntry dua;

  const DuaDetailScreen({super.key, required this.dua});

  @override
  Widget build(BuildContext context) {
    if (dua.isTasbih) {
      return _TasbihScreen(dua: dua);
    }
    return _DuaReaderScreen(dua: dua);
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Standard dua reader
// ─────────────────────────────────────────────────────────────────────────────

class _DuaReaderScreen extends StatefulWidget {
  final DuaEntry dua;

  const _DuaReaderScreen({required this.dua});

  @override
  State<_DuaReaderScreen> createState() => _DuaReaderScreenState();
}

class _DuaReaderScreenState extends State<_DuaReaderScreen> {
  bool _showTransliteration = true;
  bool _showTranslation = true;
  bool _aiLoading = false;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final dua = widget.dua;
    final accentColor = _accentFor(dua.category);

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context, t, dua, accentColor),
          SliverToBoxAdapter(child: _buildHeader(context, dua, accentColor)),
          SliverToBoxAdapter(child: _buildToggles(context, t)),
          ..._buildSections(context, dua, accentColor),
          if (dua.hasAiExplain)
            SliverToBoxAdapter(child: _buildAiButton(context, t, dua)),
          const SliverToBoxAdapter(child: SizedBox(height: 48)),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(
      BuildContext context, AppLocalizations t, DuaEntry dua, Color accent) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.deepNavy,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_rounded, color: AppColors.gold),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        dua.nameEn,
        style: GoogleFonts.cinzel(
          color: AppColors.goldBright,
          fontWeight: FontWeight.w700,
          fontSize: 15,
          letterSpacing: 0.3,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.copy_rounded, size: 18, color: AppColors.gold),
          tooltip: t.duaCopyTooltip,
          onPressed: () => _copyAll(context, t, dua),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, DuaEntry dua, Color accent) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: accent.withValues(alpha: 0.35), width: 1),
      ),
      child: Column(
        children: [
          Text(
            dua.nameAr,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: accent,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              height: 1.5,
            ),
          ),
          const SizedBox(height: 12),
          const Divider(height: 1, color: AppColors.border),
          const SizedBox(height: 12),
          _infoRow(context, Icons.schedule_rounded, dua.recommendedTime),
          const SizedBox(height: 6),
          _infoRow(context, Icons.person_rounded, dua.taughtBy),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.05, end: 0);
  }

  Widget _infoRow(BuildContext context, IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 14, color: AppColors.gold),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColors.textDim,
                  height: 1.45,
                  letterSpacing: 0.2,
                ),
          ),
        ),
      ],
    );
  }

  Widget _buildToggles(BuildContext context, AppLocalizations t) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Row(
        children: [
          _ToggleChip(
            label: t.duaToggleTransliteration,
            active: _showTransliteration,
            onTap: () =>
                setState(() => _showTransliteration = !_showTransliteration),
          ),
          const SizedBox(width: 8),
          _ToggleChip(
            label: t.duaToggleTranslation,
            active: _showTranslation,
            onTap: () =>
                setState(() => _showTranslation = !_showTranslation),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSections(
      BuildContext context, DuaEntry dua, Color accent) {
    return dua.sections.asMap().entries.map((entry) {
      final i = entry.key;
      final section = entry.value;
      return SliverToBoxAdapter(
        child: _SectionCard(
          section: section,
          accentColor: accent,
          showTransliteration: _showTransliteration,
          showTranslation: _showTranslation,
          index: i,
        ),
      );
    }).toList();
  }

  Widget _buildAiButton(
      BuildContext context, AppLocalizations t, DuaEntry dua) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      child: ListenableBuilder(
        listenable: UsageService.instance,
        builder: (context, _) {
          final isPremium = UsageService.instance.current?.isPremium ?? false;
          return SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: _aiLoading ? null : () => _askAi(context, t, dua, isPremium),
              icon: _aiLoading
                  ? SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: isPremium ? AppColors.goldBright : AppColors.textMuted,
                      ),
                    )
                  : Icon(
                      Icons.auto_awesome_rounded,
                      size: 18,
                      color: isPremium ? AppColors.goldBright : AppColors.textMuted,
                    ),
              label: Text(
                isPremium ? t.duaAskAiLabel : t.duaAskAiLockedLabel,
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor:
                    isPremium ? AppColors.goldBright : AppColors.textMuted,
                side: BorderSide(
                  color: isPremium
                      ? AppColors.gold.withValues(alpha: 0.6)
                      : AppColors.border,
                  width: 1.2,
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                textStyle: GoogleFonts.raleway(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _askAi(BuildContext ctx, AppLocalizations t, DuaEntry dua,
      bool isPremium) async {
    if (!isPremium) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(content: Text(t.duaAiLockedMessage)),
      );
      return;
    }
    if (_aiLoading) return;

    final translationSnippet = dua.sections
        .take(3)
        .map((s) {
          final title = s.sectionTitle != null ? '[${s.sectionTitle}]\n' : '';
          return '$title${s.translation.trim()}';
        })
        .join('\n\n')
        .trim();

    final prompt =
        'Explain this supplication from the Twelver Shia Islamic tradition:\n\n'
        'Name: ${dua.nameEn} (${dua.nameAr})\n'
        'Transmitted by: ${dua.taughtBy}\n'
        'When recited: ${dua.recommendedTime}\n\n'
        'Translation:\n$translationSnippet\n\n'
        'Explain its spiritual significance, the virtue or state of heart it cultivates, '
        "and what the believer should hold in their heart while reciting it — "
        "drawing from the Qur'an and the teachings of the Ahl al-Bayt (peace be upon them).";

    SoundService.instance.playAskAyara();
    setState(() => _aiLoading = true);
    await Navigator.of(ctx).push(
      PageRouteBuilder<void>(
        opaque: false,
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => _DuaAiLoadingScreen(
          duaName: dua.nameEn,
          duaNameAr: dua.nameAr,
          prompt: prompt,
          accentColor: _accentFor(dua.category),
        ),
        transitionsBuilder: (_, anim, __, child) =>
            FadeTransition(opacity: anim, child: child),
      ),
    );
    if (mounted) setState(() => _aiLoading = false);
  }

  void _copyAll(BuildContext context, AppLocalizations t, DuaEntry dua) {
    final buffer = StringBuffer('${dua.nameEn}\n${dua.nameAr}\n\n');
    for (final section in dua.sections) {
      if (section.sectionTitle != null) {
        buffer.writeln('── ${section.sectionTitle} ──');
      }
      if (section.arabic.isNotEmpty) buffer.writeln(section.arabic);
      if (section.transliteration.isNotEmpty) {
        buffer.writeln(section.transliteration);
      }
      buffer.writeln(section.translation);
      buffer.writeln();
    }
    Clipboard.setData(ClipboardData(text: buffer.toString()));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(t.duaCopiedToast)),
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
}

// ─────────────────────────────────────────────────────────────────────────────

class _SectionCard extends StatelessWidget {
  final DuaSection section;
  final Color accentColor;
  final bool showTransliteration;
  final bool showTranslation;
  final int index;

  const _SectionCard({
    required this.section,
    required this.accentColor,
    required this.showTransliteration,
    required this.showTranslation,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final hasArabic = section.arabic.isNotEmpty;
    final hasTranslit = section.transliteration.isNotEmpty;
    final hasTranslation = section.translation.isNotEmpty;

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border, width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (section.sectionTitle != null)
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: accentColor.withValues(alpha: 0.10),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                border: Border(
                  bottom: BorderSide(
                      color: accentColor.withValues(alpha: 0.2), width: 0.8),
                ),
              ),
              child: Text(
                section.sectionTitle!,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: accentColor,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.4,
                    ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (hasArabic) ...[
                  Text(
                    section.arabic,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 20,
                      fontFamily: 'Arial',
                      height: 1.9,
                      letterSpacing: 0.3,
                    ),
                  ),
                ],
                if (hasTranslit && showTransliteration) ...[
                  if (hasArabic) const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: accentColor.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      section.transliteration,
                      style:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                color:
                                    accentColor.withValues(alpha: 0.85),
                                fontStyle: FontStyle.italic,
                                height: 1.7,
                                letterSpacing: 0.1,
                              ),
                    ),
                  ),
                ],
                if (hasTranslation && showTranslation) ...[
                  const SizedBox(height: 12),
                  Text(
                    section.translation,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.textDim,
                          height: 1.7,
                        ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    )
        .animate(delay: (index * 60).ms)
        .fadeIn(duration: 350.ms)
        .slideY(begin: 0.04, end: 0);
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _ToggleChip extends StatelessWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _ToggleChip({
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: active
              ? AppColors.gold.withValues(alpha: 0.18)
              : AppColors.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: active ? AppColors.gold : AppColors.border,
            width: active ? 1.2 : 0.8,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: active ? AppColors.goldBright : AppColors.textMuted,
            fontSize: 11,
            fontWeight: active ? FontWeight.w700 : FontWeight.w500,
            letterSpacing: 0.2,
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Tasbih counter screen
// ─────────────────────────────────────────────────────────────────────────────

class _TasbihScreen extends StatefulWidget {
  final DuaEntry dua;

  const _TasbihScreen({required this.dua});

  @override
  State<_TasbihScreen> createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<_TasbihScreen>
    with SingleTickerProviderStateMixin {
  // Tasbih of Sayyida Fatima (SA):
  // Phase 0: Allahu Akbar × 34
  // Phase 1: Alhamdulillah × 33
  // Phase 2: SubhanAllah × 33
  static const _phases = [
    _TasbihPhase(
      arabic: 'اللَّهُ أَكْبَرُ',
      transliteration: 'Allāhu Akbar',
      count: 34,
    ),
    _TasbihPhase(
      arabic: 'الْحَمْدُ لِلَّهِ',
      transliteration: 'Alḥamdu lillāh',
      count: 33,
    ),
    _TasbihPhase(
      arabic: 'سُبْحَانَ اللَّهِ',
      transliteration: 'Subḥāna-llāh',
      count: 33,
    ),
  ];

  int _phase = 0;
  int _count = 0;
  bool _complete = false;

  late final AnimationController _bounceCtrl;
  late final Animation<double> _bounceAnim;

  @override
  void initState() {
    super.initState();
    _bounceCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _bounceAnim = Tween<double>(begin: 1.0, end: 0.93).animate(
      CurvedAnimation(parent: _bounceCtrl, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _bounceCtrl.dispose();
    super.dispose();
  }

  void _tap() {
    if (_complete) return;

    HapticFeedback.lightImpact();
    _bounceCtrl.forward().then((_) => _bounceCtrl.reverse());

    setState(() {
      _count++;
      final target = _phases[_phase].count;
      if (_count >= target) {
        if (_phase < _phases.length - 1) {
          _phase++;
          _count = 0;
        } else {
          _complete = true;
        }
      }
    });
  }

  void _reset() {
    HapticFeedback.mediumImpact();
    setState(() {
      _phase = 0;
      _count = 0;
      _complete = false;
    });
  }

  String _phaseTranslation(AppLocalizations t, int phaseIndex) {
    switch (phaseIndex) {
      case 0: return t.tasbihAllahuAkbarMeaning;
      case 1: return t.tasbihAlhamdulillahMeaning;
      case 2: return t.tasbihSubhanallahMeaning;
      default: return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final current = _phases[_phase];
    final progress = _complete
        ? 1.0
        : (_count / current.count).clamp(0.0, 1.0);

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: AppColors.gold),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          widget.dua.nameEn,
          style: GoogleFonts.cinzel(
            color: AppColors.goldBright,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded, color: AppColors.gold),
            onPressed: _reset,
            tooltip: t.tasbihResetTooltip,
          ),
        ],
      ),
      body: Column(
        children: [
          // ── Phase progress ────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
            child: Row(
              children: List.generate(_phases.length, (i) {
                final done = i < _phase || _complete;
                final active = i == _phase && !_complete;
                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: done
                          ? AppColors.emeraldBright
                          : active
                              ? AppColors.gold
                              : AppColors.border,
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(_phases.length, (i) {
                final done = i < _phase || _complete;
                final active = i == _phase && !_complete;
                return Text(
                  '×${_phases[i].count}',
                  style: TextStyle(
                    color: done
                        ? AppColors.emeraldBright
                        : active
                            ? AppColors.goldBright
                            : AppColors.textMuted,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                );
              }),
            ),
          ),

          // ── Main tap area ─────────────────────────────────────────────────
          Expanded(
            child: GestureDetector(
              onTap: _tap,
              behavior: HitTestBehavior.opaque,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_complete) ...[
                    const Icon(
                      Icons.check_circle_rounded,
                      color: AppColors.emeraldBright,
                      size: 80,
                    ).animate().scale(
                        duration: 400.ms, curve: Curves.elasticOut),
                    const SizedBox(height: 16),
                    Text(
                      t.tasbihCompleteTitle,
                      style: GoogleFonts.cinzel(
                        color: AppColors.emeraldBright,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ).animate().fadeIn(delay: 200.ms),
                    const SizedBox(height: 8),
                    Text(
                      t.tasbihCompleteMessage,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textDim,
                          ),
                    ).animate().fadeIn(delay: 400.ms),
                  ] else ...[
                    Text(
                      current.arabic,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 36,
                        fontFamily: 'Arial',
                        height: 1.6,
                      ),
                    ).animate().fadeIn(duration: 300.ms),
                    const SizedBox(height: 8),
                    Text(
                      current.transliteration,
                      style: GoogleFonts.raleway(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _phaseTranslation(t, _phase),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textDim,
                          ),
                    ),
                    const SizedBox(height: 48),

                    ScaleTransition(
                      scale: _bounceAnim,
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.surface,
                          border: Border.all(
                            color: AppColors.gold.withValues(alpha: 0.6),
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.gold.withValues(alpha: 0.15),
                              blurRadius: 30,
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$_count',
                              style: GoogleFonts.cinzel(
                                color: AppColors.goldBright,
                                fontSize: 52,
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                            ),
                            Text(
                              '/ ${current.count}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: AppColors.textMuted),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      t.tasbihTapHint,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: AppColors.textMuted,
                            fontStyle: FontStyle.italic,
                          ),
                    ),

                    const SizedBox(height: 32),
                    SizedBox(
                      width: 240,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 4,
                          backgroundColor:
                              AppColors.border.withValues(alpha: 0.4),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              AppColors.gold),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),

          // ── Phase labels ──────────────────────────────────────────────────
          if (!_complete)
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(_phases.length, (i) {
                  final active = i == _phase;
                  final done = i < _phase;
                  return Text(
                    _phases[i].transliteration,
                    style: TextStyle(
                      color: done
                          ? AppColors.emeraldBright
                          : active
                              ? AppColors.goldBright
                              : AppColors.textMuted,
                      fontSize: 11,
                      fontWeight:
                          active ? FontWeight.w700 : FontWeight.w400,
                    ),
                  );
                }),
              ),
            ),
        ],
      ),
    );
  }
}

class _TasbihPhase {
  final String arabic;
  final String transliteration;
  final int count;

  const _TasbihPhase({
    required this.arabic,
    required this.transliteration,
    required this.count,
  });
}

// ─────────────────────────────────────────────────────────────────────────────
// AI loading screen — shown while Ayara is consulting the teachings
// ─────────────────────────────────────────────────────────────────────────────

class _DuaAiLoadingScreen extends StatefulWidget {
  final String duaName;
  final String duaNameAr;
  final String prompt;
  final Color accentColor;

  const _DuaAiLoadingScreen({
    required this.duaName,
    required this.duaNameAr,
    required this.prompt,
    required this.accentColor,
  });

  @override
  State<_DuaAiLoadingScreen> createState() => _DuaAiLoadingScreenState();
}

class _DuaAiLoadingScreenState extends State<_DuaAiLoadingScreen>
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
          await ChatService.sendPrompt(widget.prompt, context: context);
      if (!mounted) return;
      await Navigator.of(context).pushReplacement(
        PageRouteBuilder<void>(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (_, __, ___) => AskResultScreen(
            question: '${widget.duaName}  •  ${widget.duaNameAr}',
            response: response,
          ),
          transitionsBuilder: (_, anim, __, child) =>
              FadeTransition(opacity: anim, child: child),
        ),
      );
    } catch (_) {
      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context).genericErrorSnack),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          // Background gradient
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

          // Ambient gold glow
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

          // Center content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Pulsing rings + rotating star
                SizedBox(
                  width: 160,
                  height: 160,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer pulse ring 1
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
                      // Outer pulse ring 2 (offset phase)
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
                                  color: widget.accentColor.withValues(alpha: 0.35),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Inner glow circle
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
                      // Rotating star
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

                const SizedBox(height: 36),

                // Dua name
                Text(
                  widget.duaNameAr,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    color: AppColors.gold,
                    fontSize: 22,
                    fontFamily: 'Arial',
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ).animate().fadeIn(duration: 500.ms),

                const SizedBox(height: 8),

                Text(
                  widget.duaName,
                  style: GoogleFonts.cinzel(
                    color: Colors.white.withValues(alpha: 0.55),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.8,
                  ),
                ).animate().fadeIn(duration: 500.ms, delay: 100.ms),

                const SizedBox(height: 32),

                // Loading label with shimmer dots
                _ShimmerDots().animate().fadeIn(duration: 400.ms, delay: 200.ms),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 300.ms);
  }
}

class _ShimmerDots extends StatefulWidget {
  @override
  State<_ShimmerDots> createState() => _ShimmerDotsState();
}

class _ShimmerDotsState extends State<_ShimmerDots>
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
          'Consulting the teachings',
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
