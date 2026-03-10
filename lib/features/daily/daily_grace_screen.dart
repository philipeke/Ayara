// lib/features/daily/daily_grace_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nuria/core/config/theme.dart';
import 'package:nuria/l10n/app_localizations.dart';

/// Daily Grace — a meditative second page showing scripture of the day,
/// saint of the week, and an evening reflection prompt.
/// Displayed as page 1 in the home PageView.
class DailyGraceWidget extends StatefulWidget {
  final PageController pageController;

  const DailyGraceWidget({super.key, required this.pageController});

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

  @override
  void dispose() {
    _intro.dispose();
    super.dispose();
  }

  // ── Content helpers — all text sourced from AppLocalizations ────────────────

  ({String ref, String text}) _scripture(AppLocalizations t) {
    final now = DateTime.now();
    final day = now.difference(DateTime(now.year, 1, 1)).inDays % 28;
    final texts = [
      t.dailyScripture0Text,  t.dailyScripture1Text,  t.dailyScripture2Text,
      t.dailyScripture3Text,  t.dailyScripture4Text,  t.dailyScripture5Text,
      t.dailyScripture6Text,  t.dailyScripture7Text,  t.dailyScripture8Text,
      t.dailyScripture9Text,  t.dailyScripture10Text, t.dailyScripture11Text,
      t.dailyScripture12Text, t.dailyScripture13Text, t.dailyScripture14Text,
      t.dailyScripture15Text, t.dailyScripture16Text, t.dailyScripture17Text,
      t.dailyScripture18Text, t.dailyScripture19Text, t.dailyScripture20Text,
      t.dailyScripture21Text, t.dailyScripture22Text, t.dailyScripture23Text,
      t.dailyScripture24Text, t.dailyScripture25Text, t.dailyScripture26Text,
      t.dailyScripture27Text,
    ];
    final refs = [
      t.dailyScripture0Ref,  t.dailyScripture1Ref,  t.dailyScripture2Ref,
      t.dailyScripture3Ref,  t.dailyScripture4Ref,  t.dailyScripture5Ref,
      t.dailyScripture6Ref,  t.dailyScripture7Ref,  t.dailyScripture8Ref,
      t.dailyScripture9Ref,  t.dailyScripture10Ref, t.dailyScripture11Ref,
      t.dailyScripture12Ref, t.dailyScripture13Ref, t.dailyScripture14Ref,
      t.dailyScripture15Ref, t.dailyScripture16Ref, t.dailyScripture17Ref,
      t.dailyScripture18Ref, t.dailyScripture19Ref, t.dailyScripture20Ref,
      t.dailyScripture21Ref, t.dailyScripture22Ref, t.dailyScripture23Ref,
      t.dailyScripture24Ref, t.dailyScripture25Ref, t.dailyScripture26Ref,
      t.dailyScripture27Ref,
    ];
    return (ref: refs[day], text: texts[day]);
  }

  String _roleModel(AppLocalizations t) {
    final now = DateTime.now();
    final dayOfYear = now.difference(DateTime(now.year, 1, 1)).inDays;
    final week = (dayOfYear ~/ 7) % 60;
    final roleModels = [
      t.dailyRoleModel0,  t.dailyRoleModel1,  t.dailyRoleModel2,  t.dailyRoleModel3,
      t.dailyRoleModel4,  t.dailyRoleModel5,  t.dailyRoleModel6,  t.dailyRoleModel7,
      t.dailyRoleModel8,  t.dailyRoleModel9,  t.dailyRoleModel10, t.dailyRoleModel11,
      t.dailyRoleModel12, t.dailyRoleModel13, t.dailyRoleModel14, t.dailyRoleModel15,
      t.dailyRoleModel16, t.dailyRoleModel17, t.dailyRoleModel18, t.dailyRoleModel19,
      t.dailyRoleModel20, t.dailyRoleModel21, t.dailyRoleModel22, t.dailyRoleModel23,
      t.dailyRoleModel24, t.dailyRoleModel25, t.dailyRoleModel26, t.dailyRoleModel27,
      t.dailyRoleModel28, t.dailyRoleModel29, t.dailyRoleModel30, t.dailyRoleModel31,
      t.dailyRoleModel32, t.dailyRoleModel33, t.dailyRoleModel34, t.dailyRoleModel35,
      t.dailyRoleModel36, t.dailyRoleModel37, t.dailyRoleModel38, t.dailyRoleModel39,
      t.dailyRoleModel40, t.dailyRoleModel41, t.dailyRoleModel42, t.dailyRoleModel43,
      t.dailyRoleModel44, t.dailyRoleModel45, t.dailyRoleModel46, t.dailyRoleModel47,
      t.dailyRoleModel48, t.dailyRoleModel49, t.dailyRoleModel50, t.dailyRoleModel51,
      t.dailyRoleModel52, t.dailyRoleModel53, t.dailyRoleModel54, t.dailyRoleModel55,
      t.dailyRoleModel56, t.dailyRoleModel57, t.dailyRoleModel58, t.dailyRoleModel59,
    ];
    return roleModels[week];
  }

  String _reflection(AppLocalizations t) {
    final now = DateTime.now();
    final dayOfYear = now.difference(DateTime(now.year, 1, 1)).inDays;
    final index = dayOfYear % 28;
    return [
      t.dailyReflection0,  t.dailyReflection1,  t.dailyReflection2,
      t.dailyReflection3,  t.dailyReflection4,  t.dailyReflection5,
      t.dailyReflection6,  t.dailyReflection7,  t.dailyReflection8,
      t.dailyReflection9,  t.dailyReflection10, t.dailyReflection11,
      t.dailyReflection12, t.dailyReflection13, t.dailyReflection14,
      t.dailyReflection15, t.dailyReflection16, t.dailyReflection17,
      t.dailyReflection18, t.dailyReflection19, t.dailyReflection20,
      t.dailyReflection21, t.dailyReflection22, t.dailyReflection23,
      t.dailyReflection24, t.dailyReflection25, t.dailyReflection26,
      t.dailyReflection27,
    ][index];
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
    final s = _scripture(t);
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
    final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final isXS = size.width < 340;
    final isS = size.width < 380;
    final h = size.height;

    final horizontalPad = isXS ? 20.0 : (isS ? 24.0 : 28.0);
    final settingsIconSize = isXS ? 26.0 : (isS ? 30.0 : 32.0);
    const settingsTapSize = 44.0;

    final scripture = _scripture(t);
    final saint = _roleModel(t);
    final reflection = _reflection(t);

    return FadeTransition(
      opacity: _fade,
      child: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                // ── Top bar ─────────────────────────────────────────────
                Padding(
                  padding: EdgeInsets.fromLTRB(horizontalPad, 6, horizontalPad, 0),
                  child: SizedBox(
                    height: settingsTapSize,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
      // ── Animated nav arrows — same style & position as category swipe hint ──
      Builder(builder: (ctx) {
        final bp = MediaQuery.of(ctx).padding.bottom + 170;
        return Stack(children: [
          Positioned(
            left: 6,
            bottom: bp,
            child: _DailyNavArrow(
              direction: _NavDirection.left,
              onTap: () => widget.pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeInOut,
              ),
            ),
          ),
          Positioned(
            right: 6,
            bottom: bp,
            child: _DailyNavArrow(
              direction: _NavDirection.right,
              onTap: () => widget.pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeInOut,
              ),
            ),
          ),
        ]);
      }),
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
        color: const Color(0xFF0C3A1E),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.gold.withValues(alpha: 0.45),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0C3A1E).withValues(alpha: 0.40),
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
                color: AppColors.gold.withValues(alpha: 0.75),
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
                color: AppColors.goldSubtle,
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
        color: const Color(0xFF0C3A1E),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.gold.withValues(alpha: 0.65),
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                saint,
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.goldSubtle,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                ),
              ),
            ],
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
            const Color(0xFF0E3D20),
            const Color(0xFF0A2A16),
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
                color: AppColors.gold.withValues(alpha: 0.65),
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.gold.withValues(alpha: 0.70),
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
              color: AppColors.goldSubtle,
              height: 1.60,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Animated nav arrows — mirrors the _SwipeHint in category_screen.dart
// ─────────────────────────────────────────────────────────────────────────────

enum _NavDirection { left, right }

class _DailyNavArrow extends StatefulWidget {
  final _NavDirection direction;
  final VoidCallback onTap;

  const _DailyNavArrow({required this.direction, required this.onTap});

  @override
  State<_DailyNavArrow> createState() => _DailyNavArrowState();
}

class _DailyNavArrowState extends State<_DailyNavArrow>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bounce = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 950),
  )..repeat(reverse: true);

  late final Animation<double> _offset =
      Tween<double>(begin: 0, end: 9).animate(
    CurvedAnimation(parent: _bounce, curve: Curves.easeInOut),
  );

  @override
  void dispose() {
    _bounce.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLeft = widget.direction == _NavDirection.left;
    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick();
        widget.onTap();
      },
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: AnimatedBuilder(
          animation: _offset,
          builder: (_, _) => Transform.translate(
            offset: Offset(isLeft ? -_offset.value : _offset.value, 0),
            child: Icon(
              isLeft
                  ? Icons.chevron_left_rounded
                  : Icons.chevron_right_rounded,
              color: AppColors.islamic.withValues(alpha: 0.45),
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
