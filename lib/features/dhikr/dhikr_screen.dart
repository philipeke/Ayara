// lib/features/dhikr/dhikr_screen.dart
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';

// ─── Data model ─────────────────────────────────────────────────────────────

class _Phrase {
  final String arabic;
  final String transliteration;

  const _Phrase({
    required this.arabic,
    required this.transliteration,
  });
}

const _phrases = [
  _Phrase(arabic: 'سُبْحَانَ ٱللَّهِ', transliteration: 'Subhanallah'),
  _Phrase(arabic: 'ٱلْحَمْدُ لِلَّهِ', transliteration: 'Alhamdulillah'),
  _Phrase(arabic: 'ٱللَّهُ أَكْبَرُ', transliteration: 'Allahu Akbar'),
];

String _phraseMeaning(int index, AppLocalizations t) {
  switch (index) {
    case 0: return t.dhikrMeaningSubhanallah;
    case 1: return t.dhikrMeaningAlhamdulillah;
    case 2: return t.dhikrMeaningAllahuAkbar;
    default: return '';
  }
}

const _targetPerPhrase = 33;
const _totalTarget = _targetPerPhrase * 3; // 99

// ─── Screen ─────────────────────────────────────────────────────────────────

class DhikrScreen extends StatefulWidget {
  const DhikrScreen({super.key});

  @override
  State<DhikrScreen> createState() => _DhikrScreenState();
}

class _DhikrScreenState extends State<DhikrScreen>
    with SingleTickerProviderStateMixin {
  int _phraseIndex = 0;
  int _count = 0;
  bool _complete = false;

  late final AnimationController _pulseCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 110),
    lowerBound: 0.0,
    upperBound: 1.0,
  );

  late final Animation<double> _scaleAnim = Tween<double>(begin: 1.0, end: 0.91)
      .animate(CurvedAnimation(parent: _pulseCtrl, curve: Curves.easeOut));

  @override
  void dispose() {
    _pulseCtrl.dispose();
    super.dispose();
  }

  void _tap() {
    if (_complete) return;
    HapticFeedback.lightImpact();
    _pulseCtrl.forward(from: 0).then((_) => _pulseCtrl.reverse());

    setState(() {
      _count++;
      if (_count >= _targetPerPhrase) {
        if (_phraseIndex < _phrases.length - 1) {
          _phraseIndex++;
          _count = 0;
        } else {
          _complete = true;
          HapticFeedback.heavyImpact();
        }
      }
    });
  }

  void _reset() {
    HapticFeedback.selectionClick();
    setState(() {
      _phraseIndex = 0;
      _count = 0;
      _complete = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          // ── Background ────────────────────────────────────────────────────
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.navy,
                    AppColors.deepNavy,
                    AppColors.navyDeep,
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          // Gold glow — top-left, large
          Positioned(
            top: -80,
            left: -80,
            child: IgnorePointer(
              child: SizedBox(
                width: 480,
                height: 480,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        AppColors.gold.withValues(alpha: 0.13),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Crimson glow — bottom-right, large
          Positioned(
            bottom: -80,
            right: -80,
            child: IgnorePointer(
              child: SizedBox(
                width: 500,
                height: 500,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        AppColors.crimsonDeep.withValues(alpha: 0.16),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Crimson bleed — top-right edge, distant
          Positioned(
            top: -40,
            right: -40,
            child: IgnorePointer(
              child: SizedBox(
                width: 340,
                height: 340,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        AppColors.crimsonDeep.withValues(alpha: 0.08),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Soft centre glow — wider, lower alpha so it blends
          const Positioned.fill(
            child: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.75,
                    colors: [
                      Color(0x18C9A84C),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ── Main content ─────────────────────────────────────────────────
          SafeArea(
            child: Column(
              children: [
                _buildHeader(t),
                Expanded(
                  child: _complete ? _buildComplete(t) : _buildCounter(t),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(AppLocalizations t) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 6, 8, 0),
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
          const Spacer(),
          Text(
            t.dhikrPageTitle.toUpperCase(),
            style: const TextStyle(
              color: AppColors.gold,
              fontSize: 13,
              fontWeight: FontWeight.w800,
              letterSpacing: 2.5,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.settings_rounded,
              color: AppColors.gold,
              size: 30,
            ),
            tooltip: t.settingsTitle,
            onPressed: () {
              HapticFeedback.selectionClick();
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCounter(AppLocalizations t) {
    final phrase = _phrases[_phraseIndex];
    final progress = _count / _targetPerPhrase;
    final totalCompleted = _phraseIndex * _targetPerPhrase + _count;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ── Phase dots ──────────────────────────────────────────────────────
        _PhaseDots(current: _phraseIndex, total: _phrases.length),
        const SizedBox(height: 28),

        // ── Arabic ──────────────────────────────────────────────────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            phrase.arabic,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: GoogleFonts.amiri(
              fontSize: 38,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              height: 1.55,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          phrase.transliteration,
          style: GoogleFonts.lora(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: AppColors.gold,
            letterSpacing: 0.4,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          _phraseMeaning(_phraseIndex, t),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 36),

        // ── Circular counter button ──────────────────────────────────────────
        ScaleTransition(
          scale: _scaleAnim,
          child: GestureDetector(
            onTap: _tap,
            behavior: HitTestBehavior.opaque,
            child: _CircularCounter(
              count: _count,
              target: _targetPerPhrase,
              progress: progress,
            ),
          ),
        ),
        const SizedBox(height: 28),

        // ── Total progress ───────────────────────────────────────────────────
        Text(
          '$totalCompleted / $_totalTarget',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          t.dhikrTapToCount,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.90),
            fontSize: 11,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 20),

        // ── Reset ───────────────────────────────────────────────────────────
        TextButton(
          onPressed: _reset,
          child: Text(
            t.dhikrResetButton,
            style: TextStyle(
              color: AppColors.gold,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.4,
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildComplete(AppLocalizations t) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Star ornament
        Icon(
          Icons.star_rounded,
          color: AppColors.gold.withValues(alpha: 0.90),
          size: 52,
        ),
        const SizedBox(height: 20),
        Text(
          t.dhikrComplete,
          style: GoogleFonts.lora(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: AppColors.gold,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: Text(
            t.dhikrCompleteMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.80),
              fontSize: 15,
              height: 1.55,
            ),
          ),
        ),
        const SizedBox(height: 40),
        FilledButton.icon(
          onPressed: _reset,
          icon: const Icon(Icons.refresh_rounded, size: 18),
          label: Text(t.dhikrResetButton),
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.gold,
            foregroundColor: AppColors.islamicDeep,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ],
    );
  }
}

// ─── Phase dots ──────────────────────────────────────────────────────────────

class _PhaseDots extends StatelessWidget {
  final int current;
  final int total;

  const _PhaseDots({required this.current, required this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(total, (i) {
        final active = i == current;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 260),
          curve: Curves.easeInOut,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: active ? 22 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: active
                ? AppColors.gold
                : AppColors.gold.withValues(alpha: 0.25),
            borderRadius: BorderRadius.circular(999),
          ),
        );
      }),
    );
  }
}

// ─── Circular counter ────────────────────────────────────────────────────────

class _CircularCounter extends StatelessWidget {
  final int count;
  final int target;
  final double progress;

  const _CircularCounter({
    required this.count,
    required this.target,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 188,
      height: 188,
      child: CustomPaint(
        painter: _ArcPainter(progress: progress),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$count',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w200,
                  height: 1.0,
                ),
              ),
              Text(
                '/ $target',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.90),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ArcPainter extends CustomPainter {
  final double progress;

  const _ArcPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 10;

    // Track ring
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color = Colors.white.withValues(alpha: 0.07)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 7
        ..strokeCap = StrokeCap.round,
    );

    if (progress <= 0) return;

    // Gold progress arc
    final rect = Rect.fromCircle(center: center, radius: radius);
    canvas.drawArc(
      rect,
      -math.pi / 2,
      math.pi * 2 * progress,
      false,
      Paint()
        ..shader = SweepGradient(
          startAngle: -math.pi / 2,
          endAngle: -math.pi / 2 + math.pi * 2 * progress,
          colors: const [
            Color(0xFFC9A84C),
            Color(0xFFE9C980),
            Color(0xFFC9A84C),
          ],
          stops: const [0.0, 0.55, 1.0],
        ).createShader(rect)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 7
        ..strokeCap = StrokeCap.round,
    );

    // Dot at the progress tip
    if (progress > 0.01) {
      final angle = -math.pi / 2 + math.pi * 2 * progress;
      final tipX = center.dx + radius * math.cos(angle);
      final tipY = center.dy + radius * math.sin(angle);
      canvas.drawCircle(
        Offset(tipX, tipY),
        4.5,
        Paint()..color = const Color(0xFFE9C980),
      );
    }
  }

  @override
  bool shouldRepaint(_ArcPainter old) => old.progress != progress;
}

