// lib/features/pilgrimage/hajj_guide_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/models/content_models.dart';
import 'package:ayara/core/services/content_repository.dart';
import 'package:ayara/l10n/app_localizations.dart';

// ─────────────────────────────────────────────────────────────────────────────
// UI metadata per step (icon + accent) — not content, stays local
// ─────────────────────────────────────────────────────────────────────────────

const _stepMeta = [
  (icon: Icons.self_improvement_rounded,     accent: AppColors.gold),
  (icon: Icons.rotate_right_rounded,         accent: AppColors.emeraldBright),
  (icon: Icons.swap_horiz_rounded,           accent: AppColors.goldBright),
  (icon: Icons.wb_sunny_rounded,             accent: AppColors.crimsonLight),
  (icon: Icons.nights_stay_rounded,          accent: AppColors.emeraldLight),
  (icon: Icons.radio_button_checked_rounded, accent: AppColors.crimsonBright),
  (icon: Icons.favorite_rounded,             accent: AppColors.gold),
  (icon: Icons.content_cut_rounded,          accent: AppColors.emeraldBright),
  (icon: Icons.rotate_right_rounded,         accent: AppColors.goldBright),
  (icon: Icons.hotel_rounded,                accent: AppColors.emeraldLight),
  (icon: Icons.waving_hand_rounded,          accent: AppColors.crimsonLight),
];

// ─────────────────────────────────────────────────────────────────────────────
// Screen
// ─────────────────────────────────────────────────────────────────────────────

class HajjGuideScreen extends StatefulWidget {
  const HajjGuideScreen({super.key});

  @override
  State<HajjGuideScreen> createState() => _HajjGuideScreenState();
}

class _HajjGuideScreenState extends State<HajjGuideScreen> {
  List<PilgrimageStepModel> _steps = ContentRepository.instance.bundledHajjSteps;
  Map<String, bool> _completedSteps = {};

  @override
  void initState() {
    super.initState();
    _loadProgress(_steps);
    _refresh();
  }

  Future<void> _loadProgress(List<PilgrimageStepModel> steps) async {
    final prefs = await SharedPreferences.getInstance();
    final map = <String, bool>{};
    for (final s in steps) {
      map[s.id] = prefs.getBool('hajj_done_${s.id}') ?? false;
    }
    if (mounted) setState(() => _completedSteps = map);
  }

  Future<void> _refresh() async {
    try {
      final result = await ContentRepository.instance.getHajjSteps();
      if (!mounted || result.isEmpty) return;
      result.sort((a, b) => a.order.compareTo(b.order));
      await _loadProgress(result);
      if (mounted) setState(() => _steps = result);
    } catch (_) {}
  }

  Future<void> _toggleStep(String id) async {
    HapticFeedback.lightImpact();
    final prefs = await SharedPreferences.getInstance();
    final newVal = !(_completedSteps[id] ?? false);
    await prefs.setBool('hajj_done_$id', newVal);
    if (mounted) setState(() => _completedSteps[id] = newVal);
  }

  int get _completedCount => _completedSteps.values.where((v) => v).length;

  // Build a flat list of items: String = day-group header, PilgrimageStepModel = step
  List<Object> _buildItems() {
    final items = <Object>[];
    String? lastDay;
    for (final step in _steps) {
      if (step.dayLabel.isNotEmpty && step.dayLabel != lastDay) {
        items.add(step.dayLabel);
        lastDay = step.dayLabel;
      }
      items.add(step);
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final items = _buildItems();
    final total = _steps.length;
    final done = _completedCount;

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
          Positioned(
            top: 0, right: 0,
            child: IgnorePointer(
              child: SizedBox(
                width: 280, height: 280,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [AppColors.gold.withValues(alpha: 0.12), Colors.transparent],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: CustomScrollView(
              slivers: [
                // ── App Bar ──────────────────────────────────────────────────
                SliverAppBar(
                  pinned: true,
                  backgroundColor: AppColors.navy,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.gold),
                    onPressed: () { HapticFeedback.lightImpact(); Navigator.of(context).pop(); },
                  ),
                  title: Text(
                    t.hajjScreenTitle,
                    style: GoogleFonts.cinzel(
                      color: AppColors.gold, fontWeight: FontWeight.w700,
                      fontSize: 18, letterSpacing: 0.8,
                    ),
                  ),
                  centerTitle: true,
                  actions: [
                    if (total > 0)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 14),
                        child: _ProgressChip(done: done, total: total),
                      ),
                  ],
                ),

                // ── Hero Banner ───────────────────────────────────────────────
                SliverToBoxAdapter(
                  child: _HeroBanner(t: t, done: done, total: total)
                      .animate().fadeIn(duration: 500.ms),
                ),

                // ── Section label ─────────────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                    child: Text(
                      t.pilgrimageStepsTitle.toUpperCase(),
                      style: const TextStyle(
                        color: AppColors.gold, fontSize: 11,
                        fontWeight: FontWeight.w800, letterSpacing: 1.6,
                      ),
                    ),
                  ),
                ),

                // ── Steps / Day groups ────────────────────────────────────────
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) {
                      final item = items[i];

                      if (item is String) {
                        return _DayHeader(label: item)
                            .animate(delay: Duration(milliseconds: 40 * i))
                            .fadeIn(duration: 350.ms);
                      }

                      final step = item as PilgrimageStepModel;
                      final stepIndex = _steps.indexOf(step);
                      final meta = stepIndex < _stepMeta.length
                          ? _stepMeta[stepIndex]
                          : _stepMeta.last;
                      final isLast = stepIndex == _steps.length - 1;

                      return _StepCard(
                        step: step,
                        stepNumber: stepIndex + 1,
                        icon: meta.icon,
                        accent: meta.accent,
                        isCompleted: _completedSteps[step.id] ?? false,
                        isLast: isLast,
                        onToggle: () => _toggleStep(step.id),
                      ).animate(delay: Duration(milliseconds: 60 * stepIndex))
                          .fadeIn(duration: 400.ms)
                          .slideY(begin: 0.06, end: 0);
                    },
                    childCount: items.length,
                  ),
                ),

                // ── Global Shia Note ──────────────────────────────────────────
                SliverToBoxAdapter(
                  child: _ShiaNoteCard(t: t)
                      .animate(delay: 200.ms).fadeIn(duration: 400.ms),
                ),

                const SliverToBoxAdapter(child: SizedBox(height: 40)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Progress chip (app bar)
// ─────────────────────────────────────────────────────────────────────────────

class _ProgressChip extends StatelessWidget {
  final int done;
  final int total;
  const _ProgressChip({required this.done, required this.total});

  @override
  Widget build(BuildContext context) {
    final allDone = done == total;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: (allDone ? AppColors.emeraldBright : AppColors.gold).withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: (allDone ? AppColors.emeraldBright : AppColors.gold).withValues(alpha: 0.40),
        ),
      ),
      child: Text(
        '$done/$total',
        style: TextStyle(
          color: allDone ? AppColors.emeraldBright : AppColors.gold,
          fontSize: 12, fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Hero Banner
// ─────────────────────────────────────────────────────────────────────────────

class _HeroBanner extends StatelessWidget {
  final AppLocalizations t;
  final int done;
  final int total;
  const _HeroBanner({required this.t, required this.done, required this.total});

  @override
  Widget build(BuildContext context) {
    final progress = total > 0 ? done / total : 0.0;

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.gold.withValues(alpha: 0.18),
            AppColors.gold.withValues(alpha: 0.06),
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.40), width: 1.2),
      ),
      child: Column(
        children: [
          Container(
            width: 72, height: 72,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.gold.withValues(alpha: 0.12),
              border: Border.all(color: AppColors.gold.withValues(alpha: 0.40)),
            ),
            child: const Center(child: Text('🕋', style: TextStyle(fontSize: 34))),
          ),
          const SizedBox(height: 16),
          Text(
            t.hajjCardTitle,
            style: GoogleFonts.cinzel(
              color: AppColors.gold, fontSize: 26,
              fontWeight: FontWeight.w700, letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            t.hajjCardSubtitle,
            style: TextStyle(
              color: AppColors.gold.withValues(alpha: 0.70),
              fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 1.0,
            ),
          ),
          const SizedBox(height: 16),
          Container(height: 1, color: AppColors.gold.withValues(alpha: 0.20)),
          const SizedBox(height: 16),
          Text(
            t.hajjIntro,
            textAlign: TextAlign.center,
            style: GoogleFonts.lora(color: AppColors.textPrimary, fontSize: 14, height: 1.75),
          ),
          if (total > 0) ...[
            const SizedBox(height: 16),
            Container(height: 1, color: AppColors.gold.withValues(alpha: 0.20)),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: progress,
                      minHeight: 6,
                      backgroundColor: AppColors.gold.withValues(alpha: 0.15),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        done == total ? AppColors.emeraldBright : AppColors.gold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  done == total ? t.pilgrimageComplete : t.pilgrimageProgress(done, total),
                  style: TextStyle(
                    color: done == total ? AppColors.emeraldBright : AppColors.gold.withValues(alpha: 0.80),
                    fontSize: 12, fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Day group header
// ─────────────────────────────────────────────────────────────────────────────

class _DayHeader extends StatelessWidget {
  final String label;
  const _DayHeader({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 4),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.gold.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.gold.withValues(alpha: 0.35)),
            ),
            child: Text(
              label.toUpperCase(),
              style: const TextStyle(
                color: AppColors.gold, fontSize: 10,
                fontWeight: FontWeight.w800, letterSpacing: 1.2,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(height: 1, color: AppColors.gold.withValues(alpha: 0.15)),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Step Card
// ─────────────────────────────────────────────────────────────────────────────

class _StepCard extends StatefulWidget {
  final PilgrimageStepModel step;
  final int stepNumber;
  final IconData icon;
  final Color accent;
  final bool isCompleted;
  final bool isLast;
  final VoidCallback onToggle;

  const _StepCard({
    required this.step,
    required this.stepNumber,
    required this.icon,
    required this.accent,
    required this.isCompleted,
    required this.isLast,
    required this.onToggle,
  });

  @override
  State<_StepCard> createState() => _StepCardState();
}

class _StepCardState extends State<_StepCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final step = widget.step;
    final accent = widget.accent;
    final completed = widget.isCompleted;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Timeline column ─────────────────────────────────────────────
          SizedBox(
            width: 44,
            child: Column(
              children: [
                const SizedBox(height: 14),
                GestureDetector(
                  onTap: widget.onToggle,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: completed ? accent : accent.withValues(alpha: 0.14),
                      border: Border.all(
                        color: completed ? accent : accent.withValues(alpha: 0.50),
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: completed
                          ? const Icon(Icons.check_rounded, color: Colors.white, size: 16)
                          : Text(
                              '${widget.stepNumber}',
                              style: TextStyle(
                                color: accent,
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                    ),
                  ),
                ),
                if (!widget.isLast)
                  Container(
                    width: 2,
                    height: 32,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      color: accent.withValues(alpha: 0.20),
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(width: 4),

          // ── Card body ────────────────────────────────────────────────────
          Expanded(
            child: GestureDetector(
              onTap: () {
                HapticFeedback.selectionClick();
                setState(() => _expanded = !_expanded);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: completed
                      ? accent.withValues(alpha: 0.10)
                      : accent.withValues(alpha: 0.06),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: accent.withValues(
                        alpha: _expanded ? 0.45 : (completed ? 0.35 : 0.20)),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: accent.withValues(alpha: completed ? 0.85 : 0.30),
                          width: 4,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ── Header ──────────────────────────────────────
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 12, 12, 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(widget.icon, color: accent, size: 18),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      step.title,
                                      style: GoogleFonts.lora(
                                        color: AppColors.textPrimary,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    if (step.arabic.isNotEmpty)
                                      Text(
                                        step.arabic,
                                        textDirection: TextDirection.rtl,
                                        style: GoogleFonts.amiri(
                                          color: accent.withValues(alpha: 0.80),
                                          fontSize: 14,
                                        ),
                                      ),
                                    const SizedBox(height: 6),
                                    Wrap(
                                      spacing: 6,
                                      runSpacing: 4,
                                      children: [
                                        if (step.location.isNotEmpty)
                                          _TagPill(
                                            icon: Icons.location_on_rounded,
                                            label: step.location,
                                            color: accent,
                                          ),
                                        _TagPill(
                                          icon: Icons.schedule_rounded,
                                          label: AppLocalizations.of(context)
                                              .pilgrimageReadTime(step.readTimeMin),
                                          color: AppColors.textSecondary,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 4),
                              AnimatedRotation(
                                turns: _expanded ? 0.5 : 0,
                                duration: const Duration(milliseconds: 220),
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: accent.withValues(alpha: 0.70),
                                  size: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ── Expanded content ─────────────────────────────
                        AnimatedSize(
                          duration: const Duration(milliseconds: 260),
                          curve: Curves.easeInOut,
                          alignment: Alignment.topCenter,
                          child: _expanded
                              ? _ExpandedContent(step: step, accent: accent)
                              : const SizedBox.shrink(),
                        ),
                        // ── Completion bar ───────────────────────────────
                        GestureDetector(
                          onTap: widget.onToggle,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: completed
                                  ? accent.withValues(alpha: 0.18)
                                  : accent.withValues(alpha: 0.06),
                              border: Border(
                                top: BorderSide(
                                  color: accent.withValues(alpha: 0.20),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 220),
                                  child: Icon(
                                    completed
                                        ? Icons.check_circle_rounded
                                        : Icons.radio_button_unchecked_rounded,
                                    key: ValueKey(completed),
                                    color: completed
                                        ? accent
                                        : accent.withValues(alpha: 0.45),
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(width: 7),
                                Text(
                                  completed
                                      ? AppLocalizations.of(context).pilgrimageComplete
                                      : AppLocalizations.of(context).pilgrimageMarkDone,
                                  style: TextStyle(
                                    color: completed
                                        ? accent
                                        : accent.withValues(alpha: 0.55),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Expanded content area (body + optional blocks)
// ─────────────────────────────────────────────────────────────────────────────

class _ExpandedContent extends StatelessWidget {
  final PilgrimageStepModel step;
  final Color accent;
  const _ExpandedContent({required this.step, required this.accent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Divider
          Container(
            height: 1,
            color: accent.withValues(alpha: 0.18),
            margin: const EdgeInsets.only(bottom: 12),
          ),

          // Body text
          Text(
            step.body,
            style: GoogleFonts.lora(
              color: AppColors.textPrimary, fontSize: 13.5, height: 1.80,
            ),
          ),

          // Warnings
          if (step.warnings.isNotEmpty) ...[
            const SizedBox(height: 14),
            _WarningsBlock(warnings: step.warnings),
          ],

          // Dua block
          if (step.dua != null) ...[
            const SizedBox(height: 14),
            _DuaBlock(dua: step.dua!, accent: accent),
          ],

          // Shia note
          if (step.shiaNote.isNotEmpty) ...[
            const SizedBox(height: 14),
            _ShiaCallout(note: step.shiaNote),
          ],
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Tag pill (location / read time)
// ─────────────────────────────────────────────────────────────────────────────

class _TagPill extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const _TagPill({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.28)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: color.withValues(alpha: 0.75)),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              color: color.withValues(alpha: 0.85),
              fontSize: 10.5, fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Warnings block
// ─────────────────────────────────────────────────────────────────────────────

class _WarningsBlock extends StatelessWidget {
  final List<String> warnings;
  const _WarningsBlock({required this.warnings});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.crimsonDeep.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.crimsonBright.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.warning_amber_rounded, color: AppColors.crimsonLight, size: 14),
              const SizedBox(width: 6),
              Text(
                t.pilgrimageImportantNotesTitle.toUpperCase(),
                style: const TextStyle(
                  color: AppColors.crimsonLight, fontSize: 10,
                  fontWeight: FontWeight.w800, letterSpacing: 1.1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ...warnings.map((w) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        width: 5, height: 5,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.crimsonLight.withValues(alpha: 0.70),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        w,
                        style: GoogleFonts.lora(
                          color: AppColors.textPrimary.withValues(alpha: 0.88),
                          fontSize: 12.5, height: 1.55,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Dua block
// ─────────────────────────────────────────────────────────────────────────────

class _DuaBlock extends StatelessWidget {
  final PilgrimageStepDua dua;
  final Color accent;
  const _DuaBlock({required this.dua, required this.accent});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: accent.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: accent.withValues(alpha: 0.30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(Icons.auto_stories_rounded, size: 13, color: accent.withValues(alpha: 0.80)),
              const SizedBox(width: 6),
              Text(
                t.pilgrimageDuaTitle.toUpperCase(),
                style: TextStyle(
                  color: accent.withValues(alpha: 0.90),
                  fontSize: 10, fontWeight: FontWeight.w800, letterSpacing: 1.1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            dua.arabic,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: GoogleFonts.amiri(
              color: accent, fontSize: 18, height: 1.8,
            ),
          ),
          if (dua.transliteration.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              dua.transliteration,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 12, fontStyle: FontStyle.italic, height: 1.5,
              ),
            ),
          ],
          if (dua.translation.isNotEmpty) ...[
            const SizedBox(height: 6),
            Container(height: 1, color: accent.withValues(alpha: 0.15)),
            const SizedBox(height: 6),
            Text(
              '"${dua.translation}"',
              style: GoogleFonts.lora(
                color: AppColors.textPrimary.withValues(alpha: 0.85),
                fontSize: 12.5, fontStyle: FontStyle.italic, height: 1.55,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Per-step Shia callout
// ─────────────────────────────────────────────────────────────────────────────

class _ShiaCallout extends StatelessWidget {
  final String note;
  const _ShiaCallout({required this.note});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.gold.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.28)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.star_rounded, color: AppColors.goldBright, size: 13),
              const SizedBox(width: 6),
              Text(
                t.pilgrimageJafariNoteTitle.toUpperCase(),
                style: const TextStyle(
                  color: AppColors.goldBright, fontSize: 10,
                  fontWeight: FontWeight.w800, letterSpacing: 1.1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            note,
            style: GoogleFonts.lora(
              color: AppColors.textPrimary.withValues(alpha: 0.88),
              fontSize: 12.5, height: 1.55,
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Global Shia note at bottom
// ─────────────────────────────────────────────────────────────────────────────

class _ShiaNoteCard extends StatelessWidget {
  final AppLocalizations t;
  const _ShiaNoteCard({required this.t});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.crimsonDeep.withValues(alpha: 0.20),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.crimsonBright.withValues(alpha: 0.40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.star_rounded, color: AppColors.crimsonLight, size: 18),
              const SizedBox(width: 8),
              Text(
                t.pilgrimageShiaNoteTitle.toUpperCase(),
                style: const TextStyle(
                  color: AppColors.crimsonLight, fontSize: 11,
                  fontWeight: FontWeight.w800, letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            t.pilgrimageShiaNoteBody,
            style: GoogleFonts.lora(color: AppColors.textPrimary, fontSize: 13.5, height: 1.75),
          ),
        ],
      ),
    );
  }
}
