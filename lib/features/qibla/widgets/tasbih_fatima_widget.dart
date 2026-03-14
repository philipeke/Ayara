// lib/features/qibla/widgets/tasbih_fatima_widget.dart
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/services/dhikr_streak_service.dart';
import 'package:ayara/l10n/app_localizations.dart';

class TasbihFatimaWidget extends StatefulWidget {
  const TasbihFatimaWidget({super.key});

  @override
  State<TasbihFatimaWidget> createState() => _TasbihFatimaWidgetState();
}

class _TasbihFatimaWidgetState extends State<TasbihFatimaWidget>
    with TickerProviderStateMixin {
  final List<int> _counts = [0, 0, 0];
  static const List<int> _targets = [34, 33, 33];
  static const List<int> _arabicOrder = [2, 1, 0];

  static const List<String> _arabic = [
    'سُبْحَانَ ٱللَّٰهِ',
    'ٱلْحَمْدُ لِلَّٰهِ',
    'ٱللَّٰهُ أَكْبَرُ',
  ];

  late final List<AnimationController> _pulseCtrl;
  late final List<Animation<double>> _pulseAnim;
  late final AnimationController _completeCtrl;
  late final Animation<double> _completeFade;

  bool _completed = false;

  @override
  void initState() {
    super.initState();

    _pulseCtrl = List.generate(
      3,
      (_) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 240),
      ),
    );

    _pulseAnim = _pulseCtrl.map((c) {
      return TweenSequence<double>([
        TweenSequenceItem(
            tween: Tween(begin: 1.0, end: 1.13)
                .chain(CurveTween(curve: Curves.easeOut)),
            weight: 45),
        TweenSequenceItem(
            tween: Tween(begin: 1.13, end: 1.0)
                .chain(CurveTween(curve: Curves.easeIn)),
            weight: 55),
      ]).animate(c);
    }).toList();

    _completeCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _completeFade =
        CurvedAnimation(parent: _completeCtrl, curve: Curves.easeOut);
  }

  @override
  void dispose() {
    for (final c in _pulseCtrl) {
      c.dispose();
    }
    _completeCtrl.dispose();
    super.dispose();
  }

  void _onTap(int index) {
    if (_counts[index] >= _targets[index]) return;
    HapticFeedback.selectionClick();
    setState(() => _counts[index]++);
    _pulseCtrl[index].forward(from: 0);

    final allDone = _counts[0] >= _targets[0] &&
        _counts[1] >= _targets[1] &&
        _counts[2] >= _targets[2];
    if (allDone && !_completed) {
      setState(() => _completed = true);
      HapticFeedback.heavyImpact();
      _completeCtrl.forward(from: 0);
      DhikrStreakService.instance.recordCompletion();
    }
  }

  void _reset() {
    HapticFeedback.mediumImpact();
    _completeCtrl.reverse();
    setState(() {
      _counts[0] = 0;
      _counts[1] = 0;
      _counts[2] = 0;
      _completed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final meanings = [
      t.tasbihAllahuAkbarMeaning,
      t.tasbihAlhamdulillahMeaning,
      t.tasbihSubhanallahMeaning,
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.fromLTRB(18, 20, 18, 22),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.035),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.gold.withValues(alpha: 0.22),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.gold.withValues(alpha: 0.04),
            blurRadius: 24,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          // ── Section header ────────────────────────────────────────────────
          Row(
            children: [
              const Icon(Icons.auto_awesome_rounded,
                  color: AppColors.gold, size: 15),
              const SizedBox(width: 8),
              Text(
                'TASBĪḤ AL-ZAHRĀ (SA)',
                style: const TextStyle(
                  color: AppColors.gold,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            '${t.tasbihFatimaGiftPre} ﷺ · ${t.tasbihFatimaGiftPost}',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.40),
              fontSize: 11,
              height: 1.4,
              letterSpacing: 0.1,
            ),
          ),

          const SizedBox(height: 22),

          // ── Three circles ─────────────────────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              3,
              (i) => _CircleCounter(
                count: _counts[i],
                target: _targets[i],
                arabic: _arabic[_arabicOrder[i]],
                meaning: meanings[i],
                pulseAnim: _pulseAnim[i],
                onTap: () => _onTap(i),
              ),
            ),
          ),

          const SizedBox(height: 18),

          // ── Completion message ────────────────────────────────────────────
          AnimatedBuilder(
            animation: _completeFade,
            builder: (context, child) {
              if (_completeFade.value < 0.01) return const SizedBox.shrink();
              return Opacity(
                opacity: _completeFade.value,
                child: child,
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Column(
                children: [
                  Text(
                    t.tasbihCompleteTitle,
                    style: GoogleFonts.lora(
                      color: AppColors.goldBright,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    t.tasbihCompleteMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.60),
                      fontSize: 12,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ── Reset button ──────────────────────────────────────────────────
          GestureDetector(
            onTap: _reset,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22, vertical: 9),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.055),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.refresh_rounded,
                    color: Colors.white.withValues(alpha: 0.50),
                    size: 15,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    t.tasbihResetTooltip,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.50),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
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

class _CircleCounter extends StatelessWidget {
  const _CircleCounter({
    required this.count,
    required this.target,
    required this.arabic,
    required this.meaning,
    required this.pulseAnim,
    required this.onTap,
  });

  final int count;
  final int target;
  final String arabic;
  final String meaning;
  final Animation<double> pulseAnim;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final done = count >= target;
    final progress = (count / target).clamp(0.0, 1.0);

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedBuilder(
        animation: pulseAnim,
        builder: (context, child) => Transform.scale(
          scale: pulseAnim.value,
          child: child,
        ),
        child: Column(
          children: [
            SizedBox(
              width: 88,
              height: 88,
              child: CustomPaint(
                painter: _ArcPainter(progress: progress, done: done),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '$count',
                        style: TextStyle(
                          color:
                              done ? AppColors.goldBright : Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          height: 1.0,
                        ),
                      ),
                      Text(
                        '/ $target',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.35),
                          fontSize: 10,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 9),
            Text(
              arabic,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: done ? AppColors.goldBright : AppColors.gold,
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 3),
            SizedBox(
              width: 90,
              child: Text(
                meaning,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.40),
                  fontSize: 10,
                  height: 1.35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _ArcPainter extends CustomPainter {
  const _ArcPainter({required this.progress, required this.done});

  final double progress;
  final bool done;

  static const _gold = Color(0xFFC9A84C);
  static const _goldBright = Color(0xFFFFD966);
  static const _startAngle = -math.pi / 2;
  static const _strokeWidth = 5.5;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.shortestSide / 2 - 7;
    final rect = Rect.fromCircle(center: center, radius: radius);

    // Background track
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color = Colors.white.withValues(alpha: 0.07)
        ..style = PaintingStyle.stroke
        ..strokeWidth = _strokeWidth
        ..strokeCap = StrokeCap.round,
    );

    if (progress <= 0) return;

    // Foreground arc
    final fgPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = _strokeWidth
      ..strokeCap = StrokeCap.round;

    if (done) {
      fgPaint.shader = SweepGradient(
        colors: const [_gold, _goldBright, _gold],
        transform: const GradientRotation(_startAngle),
      ).createShader(rect);

      // Completion glow
      canvas.drawArc(
        rect.inflate(1.5),
        _startAngle,
        2 * math.pi,
        false,
        Paint()
          ..color = _gold.withValues(alpha: 0.25)
          ..style = PaintingStyle.stroke
          ..strokeWidth = _strokeWidth + 4
          ..strokeCap = StrokeCap.round
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6),
      );
    } else {
      fgPaint.color = _gold;
    }

    canvas.drawArc(
      rect,
      _startAngle,
      2 * math.pi * progress,
      false,
      fgPaint,
    );
  }

  @override
  bool shouldRepaint(_ArcPainter old) =>
      old.progress != progress || old.done != done;
}
