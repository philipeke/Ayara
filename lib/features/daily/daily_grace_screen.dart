// lib/features/daily/daily_grace_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/models/content_models.dart';
import 'package:ayara/core/services/content_repository.dart';
import 'package:ayara/l10n/app_localizations.dart';

/// Daily Grace — a meditative screen showing scripture of the day,
/// saint of the week, and an evening reflection prompt.
class DailyGraceWidget extends StatefulWidget {
  const DailyGraceWidget({super.key});

  @override
  State<DailyGraceWidget> createState() => _DailyGraceWidgetState();
}

class _DailyGraceWidgetState extends State<DailyGraceWidget>
    with TickerProviderStateMixin {
  late final AnimationController _intro = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 800),
  )..forward();

  late final Animation<double> _fade =
      CurvedAnimation(parent: _intro, curve: Curves.easeOut);

  // Content lists — start with bundled fallbacks, upgraded from Firestore.
  List<DailyScriptureModel> _scriptures = ContentRepository.instance.bundledScriptures;
  List<DailyRoleModelModel> _roleModels = ContentRepository.instance.bundledRoleModels;
  List<DailyReflectionModel> _reflections = ContentRepository.instance.bundledReflections;

  @override
  void initState() {
    super.initState();
    _refreshFromRepository();
  }

  Future<void> _refreshFromRepository() async {
    try {
      final results = await Future.wait([
        ContentRepository.instance.getScriptures(),
        ContentRepository.instance.getRoleModels(),
        ContentRepository.instance.getReflections(),
      ]);
      if (!mounted) return;
      final scr = results[0] as List<DailyScriptureModel>;
      final rm  = results[1] as List<DailyRoleModelModel>;
      final ref = results[2] as List<DailyReflectionModel>;
      if (scr.isEmpty && rm.isEmpty && ref.isEmpty) return;
      setState(() {
        if (scr.isNotEmpty) _scriptures = [...scr]..sort((a, b) => a.order.compareTo(b.order));
        if (rm.isNotEmpty)  _roleModels = [...rm]..sort((a, b) => a.order.compareTo(b.order));
        if (ref.isNotEmpty) _reflections = [...ref]..sort((a, b) => a.order.compareTo(b.order));
      });
    } catch (_) {
      // Network unavailable — keep bundled data.
    }
  }

  @override
  void dispose() {
    _intro.dispose();
    super.dispose();
  }

  // ── Content selection ───────────────────────────────────────────────────────

  ({String ref, String text}) get _scripture {
    final day = DateTime.now().difference(DateTime(DateTime.now().year, 1, 1)).inDays
        % _scriptures.length;
    final s = _scriptures[day];
    return (ref: s.ref, text: s.text);
  }

  String get _roleModel {
    final dayOfYear = DateTime.now().difference(DateTime(DateTime.now().year, 1, 1)).inDays;
    final week = (dayOfYear ~/ 7) % _roleModels.length;
    return _roleModels[week].text;
  }

  String get _reflection {
    final dayOfYear = DateTime.now().difference(DateTime(DateTime.now().year, 1, 1)).inDays;
    final index = dayOfYear % _reflections.length;
    return _reflections[index].text;
  }

  String get _dateLabel {
    const weekdays = [
      'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday',
    ];
    const months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December',
    ];
    final now = DateTime.now();
    return '${weekdays[now.weekday - 1]}, ${months[now.month - 1]} ${now.day}';
  }

  void _copyScripture(AppLocalizations t) {
    final s = _scripture;
    Clipboard.setData(ClipboardData(text: '"${s.text}" — ${s.ref}'));
    HapticFeedback.lightImpact();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(t.dailyGraceCopiedToast),
        backgroundColor: AppColors.crimsonDeep,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final size = MediaQuery.of(context).size;
    final isXS = size.width < 340;
    final isS = size.width < 380;
    final h = size.height;

    final horizontalPad = isXS ? 20.0 : (isS ? 24.0 : 28.0);
    final settingsIconSize = isXS ? 26.0 : (isS ? 30.0 : 32.0);
    const settingsTapSize = 44.0;

    final scripture = _scripture;
    final saint = _roleModel;
    final reflection = _reflection;

    return FadeTransition(
      opacity: _fade,
      child: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                // ── Top bar ─────────────────────────────────────────────
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 6, horizontalPad, 0),
                  child: SizedBox(
                    height: settingsTapSize,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: AppColors.gold,
                          ),
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            Navigator.of(context).pop();
                          },
                        ),
                        const Spacer(),
                        SizedBox(
                          width: settingsTapSize,
                          height: settingsTapSize,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            tooltip: t.settingsTitle,
                            icon: Icon(
                              Icons.settings_rounded,
                              color: AppColors.islamic,
                              size: settingsIconSize,
                            ),
                            onPressed: () {
                              HapticFeedback.selectionClick();
                              Navigator.pushNamed(context, '/settings');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

            // ── Scrollable content ────────────────────────────────────────
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: horizontalPad),
                child: Column(
                  children: [
                    SizedBox(height: h * 0.025),

                    const Icon(
                      Icons.nightlight_round,
                      color: AppColors.islamic,
                      size: 64,
                    ),
                    const SizedBox(height: 10),

                    // Title
                    Text(
                      t.dailyGraceTitle,
                      style: GoogleFonts.lora(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: AppColors.islamic,
                        letterSpacing: 0.4,
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Date
                    Text(
                      _dateLabel,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.islamic,
                        letterSpacing: 0.9,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: h * 0.04),

                    // Scripture card
                    _ScriptureCard(
                      label: t.dailyGraceScriptureLabel,
                      ref: scripture.ref,
                      text: scripture.text,
                      onCopy: () => _copyScripture(t),
                    ),
                    const SizedBox(height: 16),

                    // Saint of the week
                    _SaintRow(label: t.dailyGraceSaintLabel, saint: saint),
                    const SizedBox(height: 16),

                    // Evening reflection
                    _ReflectionCard(
                      label: t.dailyGraceReflectionLabel,
                      text: reflection,
                    ),
                    const SizedBox(height: 28),

                    // Arabic Islamic verse
                    const _IslamicVerseSection(),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Scripture card
// ─────────────────────────────────────────────────────────────────────────────

class _ScriptureCard extends StatelessWidget {
  final String label;
  final String ref;
  final String text;
  final VoidCallback onCopy;

  const _ScriptureCard({
    required this.label,
    required this.ref,
    required this.text,
    required this.onCopy,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.navy.withValues(alpha: 0.90),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.gold.withValues(alpha: 0.45),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.30),
            blurRadius: 24,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 22, 22, 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Label
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                color: AppColors.gold,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 14),

            // Scripture text — golden shining
            Text(
              '"$text"',
              style: GoogleFonts.lora(
                fontSize: 15.5,
                fontStyle: FontStyle.italic,
                color: Colors.white.withValues(alpha: 0.90),
                height: 1.68,
              ),
            ),
            const SizedBox(height: 14),

            // Reference row + copy button
            Row(
              children: [
                Text(
                  '— $ref',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.gold,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: onCopy,
                  behavior: HitTestBehavior.opaque,
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      Icons.copy_rounded,
                      size: 17,
                      color: AppColors.gold.withValues(alpha: 0.55),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Saint of the week row
// ─────────────────────────────────────────────────────────────────────────────

class _SaintRow extends StatelessWidget {
  final String label;
  final String saint;
  const _SaintRow({required this.label, required this.saint});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.navy.withValues(alpha: 0.90),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.40)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.auto_awesome_rounded,
            size: 17,
            color: AppColors.gold,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.gold,
                    letterSpacing: 1.3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  saint,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withValues(alpha: 0.90),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Islamic verse section
// ─────────────────────────────────────────────────────────────────────────────

class _IslamicVerseSection extends StatelessWidget {
  const _IslamicVerseSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Ornamental divider
        Row(
          children: [
            Expanded(
              child: Divider(
                color: AppColors.gold.withValues(alpha: 0.35),
                thickness: 0.8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Icon(
                Icons.nightlight_round,
                color: AppColors.islamic,
                size: 16,
              ),
            ),
            Expanded(
              child: Divider(
                color: AppColors.gold.withValues(alpha: 0.35),
                thickness: 0.8,
              ),
            ),
          ],
        ),
        const SizedBox(height: 22),

        // Quranic verse — Quran 13:28
        Text(
          'أَلَا بِذِكْرِ ٱللَّهِ تَطْمَئِنُّ ٱلْقُلُوبُ',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: GoogleFonts.amiri(
            fontSize: 26,
            color: AppColors.islamic,
            height: 2.0,
          ),
        ),
        const SizedBox(height: 10),

        // Reference
        Text(
          '— سورة الرعد، الآية ٢٨',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 12,
            color: AppColors.textSecondary,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.2,
          ),
        ),
        const SizedBox(height: 6),

        // Translation hint (optional — English below)
        Text(
          '"${AppLocalizations.of(context).quranVerseHeartAtRest}"',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11.5,
            color: AppColors.textSecondary,
            fontStyle: FontStyle.italic,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Evening reflection card
// ─────────────────────────────────────────────────────────────────────────────

class _ReflectionCard extends StatelessWidget {
  final String label;
  final String text;
  const _ReflectionCard({required this.label, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.navy,
            AppColors.navyDeep,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.gold.withValues(alpha: 0.35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.nights_stay_rounded,
                size: 16,
                color: AppColors.gold,
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.gold,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            text,
            style: TextStyle(
              fontSize: 14.5,
              color: Colors.white.withValues(alpha: 0.90),
              height: 1.60,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
