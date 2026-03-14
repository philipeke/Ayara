// lib/features/tasbihat/tasbihat_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/dhikr/dhikr_screen.dart';
import 'package:ayara/l10n/app_localizations.dart';

// ─────────────────────────────────────────────────────────────────────────────

class TasbihatScreen extends StatefulWidget {
  const TasbihatScreen({super.key});

  @override
  State<TasbihatScreen> createState() => _TasbihatScreenState();
}

class _TasbihatScreenState extends State<TasbihatScreen>
    with TickerProviderStateMixin {
  // ── Tasbihat al-Arba'a counter ───────────────────────────────────────────
  int _arba3Count = 0;
  bool _arba3Done = false;

  late final AnimationController _arba3PulseCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 180),
  );
  late final Animation<double> _arba3Scale = TweenSequence([
    TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.06)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 40),
    TweenSequenceItem(
        tween: Tween(begin: 1.06, end: 1.0)
            .chain(CurveTween(curve: Curves.easeIn)),
        weight: 60),
  ]).animate(_arba3PulseCtrl);

  late final AnimationController _completePulse = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1800),
  );

  @override
  void dispose() {
    _arba3PulseCtrl.dispose();
    _completePulse.dispose();
    super.dispose();
  }

  void _tapArba3() {
    if (_arba3Done) return;
    HapticFeedback.lightImpact();
    _arba3PulseCtrl.forward(from: 0);
    setState(() {
      _arba3Count++;
      if (_arba3Count >= 3) {
        _arba3Done = true;
        HapticFeedback.heavyImpact();
        _completePulse.repeat(reverse: true);
      }
    });
  }

  void _resetArba3() {
    HapticFeedback.selectionClick();
    _completePulse.stop();
    _completePulse.value = 0;
    setState(() {
      _arba3Count = 0;
      _arba3Done = false;
    });
  }

  // ── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          // ── Atmospheric background ──────────────────────────────────────
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.navy, AppColors.deepNavy, AppColors.navyDeep],
                  stops: [0.0, 0.55, 1.0],
                ),
              ),
            ),
          ),
          // Emerald radiance — top
          Positioned(
            top: -120, left: -100,
            child: IgnorePointer(
              child: SizedBox(
                width: 560, height: 560,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [
                      AppColors.emerald.withValues(alpha: 0.09),
                      Colors.transparent,
                    ]),
                  ),
                ),
              ),
            ),
          ),
          // Gold radiance — bottom right
          Positioned(
            bottom: -100, right: -80,
            child: IgnorePointer(
              child: SizedBox(
                width: 480, height: 480,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [
                      AppColors.gold.withValues(alpha: 0.07),
                      Colors.transparent,
                    ]),
                  ),
                ),
              ),
            ),
          ),
          // Crimson accent — mid right
          Positioned(
            top: 240, right: -60,
            child: IgnorePointer(
              child: SizedBox(
                width: 320, height: 320,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [
                      AppColors.crimsonDeep.withValues(alpha: 0.10),
                      Colors.transparent,
                    ]),
                  ),
                ),
              ),
            ),
          ),

          // ── Content ──────────────────────────────────────────────────────
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 40),
                    children: [
                      _buildIntroCard(),
                      const SizedBox(height: 18),
                      _buildArba3Section(),
                      const SizedBox(height: 18),
                      _buildTasbihZahraSection(),
                      const SizedBox(height: 18),
                      _buildPostPrayerDuas(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ── Header ───────────────────────────────────────────────────────────────

  Widget _buildHeader() {
    final t = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 6, 16, 0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: AppColors.gold),
            onPressed: () {
              HapticFeedback.lightImpact();
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            child: Text(
              t.tasbihatScreenTitle,
              style: GoogleFonts.lora(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppColors.gold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Intro card ───────────────────────────────────────────────────────────

  Widget _buildIntroCard() {
    final t = AppLocalizations.of(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 22, 20, 22),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.gold.withValues(alpha: 0.10),
            AppColors.emerald.withValues(alpha: 0.06),
          ],
        ),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.22)),
        boxShadow: [
          BoxShadow(
            color: AppColors.gold.withValues(alpha: 0.06),
            blurRadius: 28,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'تَسْبِيحَاتُ الصَّلَاة',
            textDirection: TextDirection.rtl,
            style: GoogleFonts.amiri(
              fontSize: 30,
              color: AppColors.goldBright,
              fontWeight: FontWeight.w700,
              height: 1.55,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            t.tasbihatScreenSubtitle,
            style: TextStyle(
              color: AppColors.gold,
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: 2.2,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            height: 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.transparent,
                AppColors.gold.withValues(alpha: 0.35),
                Colors.transparent,
              ]),
            ),
          ),
          const SizedBox(height: 14),
          Text(
            t.tasbihatScreenDescription,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.80),
              fontSize: 13,
              height: 1.65,
            ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(duration: 450.ms)
        .slideY(begin: 0.06, end: 0, curve: Curves.easeOut);
  }

  // ── Section 1: Tasbihat al-Arba'a ────────────────────────────────────────

  Widget _buildArba3Section() {
    final t = AppLocalizations.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.028),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: AppColors.emerald.withValues(alpha: 0.38),
          width: 1.1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.emeraldDeep.withValues(alpha: 0.12),
            blurRadius: 24,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Container(
            padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(22)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.emerald.withValues(alpha: 0.22),
                  AppColors.emeraldDeep.withValues(alpha: 0.08),
                ],
              ),
            ),
            child: Row(
              children: [
                _SectionBadge(number: '1', color: AppColors.emeraldBright),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t.tasbihatArba3Title,
                        style: TextStyle(
                          color: AppColors.emeraldBright,
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.6,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        t.tasbihatArba3Subtitle,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.70),
                          fontSize: 11.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.emerald.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: AppColors.emeraldBright.withValues(alpha: 0.40)),
                  ),
                  child: Text(
                    '× 3',
                    style: TextStyle(
                      color: AppColors.emeraldLight,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(18, 4, 18, 20),
            child: Column(
              children: [
                // Explanation
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.emeraldDeep.withValues(alpha: 0.30),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                        color: AppColors.emerald.withValues(alpha: 0.22)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.info_outline_rounded,
                          color: AppColors.emeraldLight.withValues(alpha: 0.60),
                          size: 15),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          t.tasbihatArba3Info,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.82),
                            fontSize: 12,
                            height: 1.65,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                // Arabic text card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(18, 22, 18, 22),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.022),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                        color: AppColors.gold.withValues(alpha: 0.20)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'سُبْحَانَ ٱللَّهِ وَٱلْحَمْدُ لِلَّهِ\nوَلَا إِلٰهَ إِلَّا ٱللَّهُ وَٱللَّهُ أَكْبَرُ',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.amiri(
                          fontSize: 23,
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                          height: 2.0,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.transparent,
                            AppColors.gold.withValues(alpha: 0.28),
                            Colors.transparent,
                          ]),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Subḥānallāhi wal-ḥamdu lillāhi\nwa lā ilāha illallāhu wallāhu akbar',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lora(
                          fontSize: 13.5,
                          color: AppColors.gold,
                          fontStyle: FontStyle.italic,
                          height: 1.75,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '"${t.tasbihatArba3Translation}"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.68),
                          fontSize: 11.5,
                          height: 1.65,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                // Interactive counter
                ScaleTransition(
                  scale: _arba3Scale,
                  child: GestureDetector(
                    onTap: _tapArba3,
                    behavior: HitTestBehavior.opaque,
                    child: AnimatedBuilder(
                      animation: _completePulse,
                      builder: (context, child) {
                        final glow = _arba3Done
                            ? AppColors.emeraldBright
                                .withValues(alpha: 0.10 + _completePulse.value * 0.18)
                            : Colors.transparent;
                        return Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 22),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: _arba3Done
                                  ? [
                                      AppColors.emerald.withValues(alpha: 0.30),
                                      AppColors.emeraldDeep
                                          .withValues(alpha: 0.25),
                                    ]
                                  : [
                                      AppColors.emerald.withValues(alpha: 0.12),
                                      AppColors.emerald.withValues(alpha: 0.06),
                                    ],
                            ),
                            border: Border.all(
                              color: _arba3Done
                                  ? AppColors.emeraldBright
                                      .withValues(alpha: 0.65)
                                  : AppColors.emerald.withValues(alpha: 0.32),
                              width: _arba3Done ? 1.5 : 1.0,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: glow,
                                blurRadius: 24,
                                spreadRadius: 4,
                              ),
                            ],
                          ),
                          child: child,
                        );
                      },
                      child: Column(
                        children: [
                          if (_arba3Done) ...[
                            const Icon(Icons.check_circle_rounded,
                                color: AppColors.emeraldBright, size: 32),
                            const SizedBox(height: 8),
                            Text(
                              t.tasbihatArba3CompleteTitle,
                              style: TextStyle(
                                color: AppColors.emeraldBright,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.3,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              t.tasbihatArba3CompleteMessage,
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.76),
                                fontSize: 12,
                              ),
                            ),
                          ] else ...[
                            Text(
                              '$_arba3Count',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 52,
                                fontWeight: FontWeight.w200,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              '/ 3',
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.62),
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 14),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(3, (i) {
                                final done = i < _arba3Count;
                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 260),
                                  curve: Curves.easeOut,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5),
                                  width: done ? 36 : 26,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    gradient: done
                                        ? LinearGradient(colors: [
                                            AppColors.emerald,
                                            AppColors.emeraldBright,
                                          ])
                                        : null,
                                    color: done
                                        ? null
                                        : AppColors.emerald
                                            .withValues(alpha: 0.22),
                                    borderRadius: BorderRadius.circular(3),
                                    boxShadow: done
                                        ? [
                                            BoxShadow(
                                              color: AppColors.emeraldBright
                                                  .withValues(alpha: 0.35),
                                              blurRadius: 6,
                                            )
                                          ]
                                        : null,
                                  ),
                                );
                              }),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              t.tasbihatArba3TapHint,
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.84),
                                fontSize: 11,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),

                if (_arba3Done) ...[
                  const SizedBox(height: 10),
                  TextButton.icon(
                    onPressed: _resetArba3,
                    icon: Icon(Icons.refresh_rounded,
                        size: 14,
                        color: AppColors.emeraldLight.withValues(alpha: 0.70)),
                    label: Text(
                      t.tasbihResetTooltip,
                      style: TextStyle(
                        color: AppColors.emeraldLight.withValues(alpha: 0.70),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    )
        .animate(delay: 80.ms)
        .fadeIn(duration: 450.ms)
        .slideY(begin: 0.06, end: 0, curve: Curves.easeOut);
  }

  // ── Section 2: Tasbih al-Zahra ───────────────────────────────────────────

  Widget _buildTasbihZahraSection() {
    final t = AppLocalizations.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.028),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: AppColors.gold.withValues(alpha: 0.32),
          width: 1.1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.gold.withValues(alpha: 0.07),
            blurRadius: 24,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Container(
            padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(22)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.gold.withValues(alpha: 0.18),
                  AppColors.goldDim.withValues(alpha: 0.05),
                ],
              ),
            ),
            child: Row(
              children: [
                _SectionBadge(number: '2', color: AppColors.goldBright),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TASBĪḤ AL-ZAHRĀ (SA)',
                        style: TextStyle(
                          color: AppColors.gold,
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.6,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        t.tasbihatZahraSubtitle,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.70),
                          fontSize: 11.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(18, 4, 18, 20),
            child: Column(
              children: [
                // Hadith context
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.gold.withValues(alpha: 0.09),
                        AppColors.goldDim.withValues(alpha: 0.04),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                        color: AppColors.gold.withValues(alpha: 0.20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.format_quote_rounded,
                              color: AppColors.gold, size: 16),
                          const SizedBox(width: 8),
                          Text(
                            t.tasbihatZahraOriginLabel,
                            style: TextStyle(
                              color: AppColors.gold,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.8,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        _tasbihZahraSequenceText(t),
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.84),
                          fontSize: 12.5,
                          height: 1.70,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          t.tasbihatZahraHadithSource,
                          style: TextStyle(
                            color: AppColors.gold.withValues(alpha: 0.84),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Three count pills
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    _CountPill(
                        arabic: 'سُبْحَانَ ٱللَّهِ',
                        transliteration: 'Subḥānallāh',
                        count: 33,
                        color: AppColors.emeraldBright),
                    const SizedBox(width: 8),
                    _CountPill(
                        arabic: 'ٱلْحَمْدُ لِلَّهِ',
                        transliteration: 'Alḥamdulillāh',
                        count: 33,
                        color: AppColors.gold),
                    const SizedBox(width: 8),
                    _CountPill(
                        arabic: 'ٱللَّهُ أَكْبَرُ',
                        transliteration: 'Allāhu Akbar',
                        count: 34,
                        color: AppColors.goldBright),
                  ],
                ),

                const SizedBox(height: 16),

                // Open counter button
                GestureDetector(
                  onTap: () {
                    HapticFeedback.lightImpact();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const DhikrScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 17),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.gold.withValues(alpha: 0.26),
                          AppColors.goldDim.withValues(alpha: 0.14),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: AppColors.gold.withValues(alpha: 0.55),
                          width: 1.2),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.gold.withValues(alpha: 0.10),
                          blurRadius: 14,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.touch_app_rounded,
                            color: AppColors.goldBright, size: 18),
                        const SizedBox(width: 10),
                        Text(
                          t.tasbihatZahraOpenCounter,
                          style: TextStyle(
                            color: AppColors.goldBright,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.4,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(Icons.arrow_forward_ios_rounded,
                            color: AppColors.gold.withValues(alpha: 0.84),
                            size: 13),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        .animate(delay: 160.ms)
        .fadeIn(duration: 450.ms)
        .slideY(begin: 0.06, end: 0, curve: Curves.easeOut);
  }

  // ── Section 3: Post-prayer Duas ──────────────────────────────────────────

  String _tasbihZahraSequenceText(AppLocalizations t) {
    return '${t.tasbihAllahuAkbarMeaning} × 34\n'
        '${t.tasbihAlhamdulillahMeaning} × 33\n'
        '${t.tasbihSubhanallahMeaning} × 33';
  }

  Widget _buildPostPrayerDuas() {
    final t = AppLocalizations.of(context);
    final duas = [
      _DuaData(
        title: t.tasbihatDuaAyatKursiTitle,
        titleAr: 'آيَةُ الْكُرْسِيّ',
        when: t.tasbihatDuaAyatKursiWhen,
        source: t.tasbihatDuaAyatKursiSource,
        arabic:
            'ٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلْحَيُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُۥ مَا فِي ٱلسَّمَٰوَٰتِ وَمَا فِي ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِي يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ...',
        note: t.tasbihatDuaAyatKursiNote,
      ),
      _DuaData(
        title: t.tasbihatDuaSalawatTitle,
        titleAr: 'اَلصَّلَوَاتُ',
        when: t.tasbihatDuaSalawatWhen,
        source: t.tasbihatDuaSalawatSource,
        arabic: 'اَللّٰهُمَّ صَلِّ عَلىٰ مُحَمَّدٍ وَآلِ مُحَمَّدٍ',
        note: t.tasbihatDuaSalawatNote,
      ),
      _DuaData(
        title: t.tasbihatDuaFarajTitle,
        titleAr: 'دُعَاءُ الْفَرَج',
        when: t.tasbihatDuaFarajWhen,
        source: t.tasbihatDuaFarajSource,
        arabic:
            'اَللّٰهُمَّ كُنْ لِوَلِيِّكَ الْحُجَّةِ بْنِ الْحَسَنِ صَلَوَاتُكَ عَلَيْهِ وَعَلىٰ آبَائِهِ فِي هَٰذِهِ السَّاعَةِ وَفِي كُلِّ سَاعَةٍ وَلِيًّا وَحَافِظًا وَقَائِدًا وَنَاصِرًا وَدَلِيلًا وَعَيْنًا حَتَّىٰ تُسْكِنَهُ أَرْضَكَ طَوْعًا وَتُمَتِّعَهُ فِيهَا طَوِيلًا',
        note: t.tasbihatDuaFarajNote,
      ),
      _DuaData(
        title: t.tasbihatDuaTasbihFatimaTitle,
        titleAr: 'تَسْبِيحُ سَيِّدَةِ نِسَاءِ الْعَالَمِين',
        when: t.tasbihatDuaTasbihFatimaWhen,
        source: t.tasbihatDuaTasbihFatimaSource,
        arabic:
            'يَا فَاطِمَةُ اقْنَعِي مِنَ الدُّنْيَا بِالْيَسِيرِ وَارْضَيْ مِنَ الزَّوْجِ بِالْقَلِيلِ',
        note: t.tasbihatDuaTasbihFatimaNote,
      ),
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.028),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: AppColors.crimson.withValues(alpha: 0.30),
          width: 1.1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.crimsonDeep.withValues(alpha: 0.10),
            blurRadius: 24,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Container(
            padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(22)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.crimson.withValues(alpha: 0.18),
                  AppColors.crimsonDeep.withValues(alpha: 0.06),
                ],
              ),
            ),
            child: Row(
              children: [
                _SectionBadge(number: '3', color: AppColors.crimsonLight),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.tasbihatDuasTitle,
                      style: TextStyle(
                        color: AppColors.crimsonLight,
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.6,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      t.tasbihatDuasSubtitle,
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.70),
                        fontSize: 11.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          ...duas.mapIndexed((i, d) => _DuaCard(
                item: d,
                isLast: i == duas.length - 1,
              )),
        ],
      ),
    )
        .animate(delay: 240.ms)
        .fadeIn(duration: 450.ms)
        .slideY(begin: 0.06, end: 0, curve: Curves.easeOut);
  }
}

// ─── Helper widgets ───────────────────────────────────────────────────────────

class _SectionBadge extends StatelessWidget {
  final String number;
  final Color color;

  const _SectionBadge({required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.16),
        shape: BoxShape.circle,
        border: Border.all(color: color.withValues(alpha: 0.50)),
        boxShadow: [
          BoxShadow(
              color: color.withValues(alpha: 0.20),
              blurRadius: 8,
              spreadRadius: 1),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            color: color,
            fontSize: 13,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _CountPill extends StatelessWidget {
  final String arabic;
  final String transliteration;
  final int count;
  final Color color;

  const _CountPill({
    required this.arabic,
    required this.transliteration,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color.withValues(alpha: 0.12),
              color.withValues(alpha: 0.05),
            ],
          ),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: color.withValues(alpha: 0.28)),
        ),
        child: Column(
          children: [
            Text(
              '$count',
              style: TextStyle(
                color: color,
                fontSize: 28,
                fontWeight: FontWeight.w800,
                height: 1.0,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              arabic,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: Colors.white.withValues(alpha: 0.80),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              transliteration,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.60),
                fontSize: 9.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _DuaData {
  final String title;
  final String titleAr;
  final String when;
  final String source;
  final String arabic;
  final String note;

  const _DuaData({
    required this.title,
    required this.titleAr,
    required this.when,
    required this.source,
    required this.arabic,
    required this.note,
  });
}

// ─────────────────────────────────────────────────────────────────────────────

class _DuaCard extends StatefulWidget {
  final _DuaData item;
  final bool isLast;

  const _DuaCard({required this.item, required this.isLast});

  @override
  State<_DuaCard> createState() => _DuaCardState();
}

class _DuaCardState extends State<_DuaCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            HapticFeedback.selectionClick();
            setState(() => _expanded = !_expanded);
          },
          behavior: HitTestBehavior.opaque,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 14, 18, 14),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.item.title,
                            style: const TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            widget.item.titleAr,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.amiri(
                              color: AppColors.gold.withValues(alpha: 0.88),
                              fontSize: 13.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.item.when,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.68),
                          fontSize: 11.5,
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedRotation(
                  turns: _expanded ? 0.5 : 0,
                  duration: const Duration(milliseconds: 220),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white.withValues(alpha: 0.32),
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: _expanded
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.022),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                              color: AppColors.gold.withValues(alpha: 0.16)),
                        ),
                        child: Text(
                          widget.item.arabic,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.amiri(
                            fontSize: 18,
                            color: AppColors.textPrimary,
                            height: 2.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        widget.item.note,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.82),
                          fontSize: 12.5,
                          height: 1.68,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '— ${widget.item.source}',
                        style: TextStyle(
                          color: AppColors.gold.withValues(alpha: 0.84),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ),
        if (!widget.isLast)
          Divider(
            color: Colors.white.withValues(alpha: 0.055),
            height: 1,
            indent: 18,
            endIndent: 18,
          ),
      ],
    );
  }
}

// ─── Extension helper ─────────────────────────────────────────────────────────

extension _IndexedIterable<T> on Iterable<T> {
  Iterable<R> mapIndexed<R>(R Function(int index, T item) f) sync* {
    var i = 0;
    for (final item in this) {
      yield f(i++, item);
    }
  }
}
