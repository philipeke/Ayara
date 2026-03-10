import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class StarfieldBackground extends StatefulWidget {
  const StarfieldBackground({
    super.key,
    this.starCount = 150,
    this.opacity = 1.0,

    // Small but visible
    this.minRadius = 0.18,
    this.maxRadius = 0.70,
    this.minBaseAlpha = 0.28,
    this.maxBaseAlpha = 0.78,

    // Slow breathing
    this.breathDensity = 0.55,
    this.minBreathSpeed = 0.010,
    this.maxBreathSpeed = 0.035,
    this.minBreathAmp = 0.08,
    this.maxBreathAmp = 0.22,

    // Always visible warm/cool mix
    this.warmStarProbability = 0.18,
    this.warmGlowBoost = 2.35,
    this.minWarmStars = 12,
    this.minCoolStars = 34,

    // Cross “sparkles”
    this.sparkleDensity = 0.34,
    this.minSparklesPerMinute = 1.2,
    this.maxSparklesPerMinute = 3.4,
    this.sparklePulseWidth = 0.16,
    this.minSparkleBoost = 0.30,
    this.maxSparkleBoost = 0.72,

    // Shooting stars
    this.enableShootingStars = true,
    this.shootingStarsPerMinute = 0.75,

    // Keep stars away from logo/header area
    this.topSafeZoneFraction = 0.22,
    this.bottomSafeZoneFraction = 0.06,

    this.seed = 1337,
  });

  final int starCount;
  final double opacity;

  final double minRadius;
  final double maxRadius;
  final double minBaseAlpha;
  final double maxBaseAlpha;

  final double breathDensity;
  final double minBreathSpeed;
  final double maxBreathSpeed;
  final double minBreathAmp;
  final double maxBreathAmp;

  final double warmStarProbability;
  final double warmGlowBoost;
  final int minWarmStars;
  final int minCoolStars;

  final double sparkleDensity;
  final double minSparklesPerMinute;
  final double maxSparklesPerMinute;
  final double sparklePulseWidth;
  final double minSparkleBoost;
  final double maxSparkleBoost;

  final bool enableShootingStars;
  final double shootingStarsPerMinute;

  final double topSafeZoneFraction;
  final double bottomSafeZoneFraction;

  final int seed;

  @override
  State<StarfieldBackground> createState() => _StarfieldBackgroundState();
}

class _StarfieldBackgroundState extends State<StarfieldBackground>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  math.Random _rnd = math.Random(0);
  double _t = 0;

  Size? _lastSize;
  List<_Star> _stars = const [];
  final List<_Sparkle> _sparkles = [];
  final List<_ShootingStar> _shooting = [];

  double _nextSparkleAt = 0;
  double _nextShootAt = 0;

  @override
  void initState() {
    super.initState();
    _rnd = math.Random(widget.seed);

    _ticker = createTicker((elapsed) {
      _t = elapsed.inMicroseconds / 1e6;
      _tickSparkles();
      _tickShooting();
      setState(() {});
    })..start();
  }

  @override
  void didUpdateWidget(covariant StarfieldBackground oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.seed != widget.seed) {
      _rnd = math.Random(widget.seed);
      _nextSparkleAt = 0;
      _nextShootAt = 0;
    }
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  double _lerp(double a, double b, double t) => a + (b - a) * t;

  void _regenerateIfNeeded(Size size) {
    if (_lastSize == size) return;
    _lastSize = size;

    _stars = _generateStars(size);
    _sparkles.clear();
    _shooting.clear();
    _nextSparkleAt = 0;
    _nextShootAt = 0;
  }

  List<_Star> _generateStars(Size size) {
    final rnd = math.Random(widget.seed);

    const pad = 10.0;
    final topPad = size.height * widget.topSafeZoneFraction;
    final botPad = size.height * widget.bottomSafeZoneFraction;

    final usableTop = pad + topPad;
    final usableBottom = size.height - pad - botPad;

    final minY = math.min(usableTop, size.height * 0.35);
    final maxY = math.max(usableBottom, size.height * 0.65);

    final total = widget.starCount.clamp(40, 600);
    final warmMin = widget.minWarmStars.clamp(0, total);
    final coolMin = widget.minCoolStars.clamp(0, total - warmMin);

    final stars = <_Star>[];

    _Star makeStar({required bool warm}) {
      final canBreathe = rnd.nextDouble() < widget.breathDensity;
      final canSparkle = rnd.nextDouble() < widget.sparkleDensity;

      return _Star(
        pos: Offset(
          pad + rnd.nextDouble() * (size.width - pad * 2),
          minY + rnd.nextDouble() * (maxY - minY),
        ),
        radius: _lerp(widget.minRadius, widget.maxRadius, rnd.nextDouble()),
        baseAlpha:
            _lerp(widget.minBaseAlpha, widget.maxBaseAlpha, rnd.nextDouble())
                .clamp(0.0, 1.0),
        amp: canBreathe
            ? _lerp(widget.minBreathAmp, widget.maxBreathAmp, rnd.nextDouble())
            : 0.0,
        speed: canBreathe
            ? _lerp(widget.minBreathSpeed, widget.maxBreathSpeed, rnd.nextDouble())
            : 0.0,
        phase: rnd.nextDouble() * math.pi * 2,
        sparkleCapable: canSparkle,
        sparkleBoost: canSparkle
            ? _lerp(widget.minSparkleBoost, widget.maxSparkleBoost, rnd.nextDouble())
            : 0.0,
        warm: warm,
      );
    }

    for (var i = 0; i < warmMin; i++) stars.add(makeStar(warm: true));
    for (var i = 0; i < coolMin; i++) stars.add(makeStar(warm: false));

    for (var i = stars.length; i < total; i++) {
      final warm = rnd.nextDouble() < widget.warmStarProbability;
      stars.add(makeStar(warm: warm));
    }

    return stars;
  }

  void _tickSparkles() {
    if (_lastSize == null || _stars.isEmpty) return;

    _sparkles.removeWhere((s) => (_t - s.startTime) >= s.duration);

    if (_nextSparkleAt == 0) {
      _scheduleNextSparkle();
      return;
    }

    if (_t >= _nextSparkleAt) {
      _spawnSparkle();
      _scheduleNextSparkle();
    }
  }

  void _scheduleNextSparkle() {
    final minRate = widget.minSparklesPerMinute.clamp(0.1, 30.0);
    final maxRate = widget.maxSparklesPerMinute.clamp(minRate, 60.0);
    final rate = _lerp(minRate, maxRate, _rnd.nextDouble());

    final mean = 60.0 / rate;
    final u = _rnd.nextDouble().clamp(1e-6, 1.0);
    final dt = (-math.log(u)) * mean;

    _nextSparkleAt = _t + dt;
  }

  void _spawnSparkle() {
    final sparkleCandidates = _stars.where((s) => s.sparkleCapable).toList();
    final pickFrom = sparkleCandidates.isNotEmpty ? sparkleCandidates : _stars;

    final s = pickFrom[_rnd.nextInt(pickFrom.length)];

    // ✅ Kort “glint”: ca 0.46–0.62s (din “halvsekund”)
    final duration = _lerp(0.46, 0.62, _rnd.nextDouble());

    // ✅ Mycket mer kontrollerad styrka (ingen disco)
    // SparkleBoost påverkar lite, men kan aldrig skjuta i höjden.
    final baseStrength = _lerp(0.55, 0.85, _rnd.nextDouble());
    final boosted = baseStrength * (0.75 + (s.sparkleBoost * 0.35));

    _sparkles.add(_Sparkle(
      pos: s.pos,
      warm: s.warm,
      startTime: _t,
      duration: duration,
      strength: boosted.clamp(0.45, 0.95),
    ));
  }

  void _tickShooting() {
    if (!widget.enableShootingStars || _lastSize == null) return;

    _shooting.removeWhere((s) => (_t - s.startTime) >= s.duration);

    final rate = widget.shootingStarsPerMinute;
    if (rate <= 0) return;

    if (_nextShootAt == 0) {
      _scheduleNextShoot();
      return;
    }

    if (_t >= _nextShootAt) {
      _spawnShootingStar();
      _scheduleNextShoot();
    }
  }

  void _scheduleNextShoot() {
    final rate = widget.shootingStarsPerMinute.clamp(0.1, 60.0);
    final mean = 60.0 / rate;

    final u = _rnd.nextDouble().clamp(1e-6, 1.0);
    final dt = (-math.log(u)) * mean;

    _nextShootAt = _t + dt;
  }

  void _spawnShootingStar() {
    final size = _lastSize!;
    final rnd = math.Random((widget.seed + (_t * 1000).floor()) ^ 0x9E3779B9);

    final topPad = size.height * widget.topSafeZoneFraction;
    final start = Offset(rnd.nextDouble() * size.width, -18 + topPad * 0.25);

    final angle = _lerp(0.35, 0.55, rnd.nextDouble());
    final length = size.shortestSide * _lerp(0.55, 0.85, rnd.nextDouble());

    final end = start + Offset(math.cos(angle) * length, math.sin(angle) * length);

    _shooting.add(_ShootingStar(
      start: start,
      end: end,
      startTime: _t,
      duration: _lerp(0.85, 1.35, rnd.nextDouble()),
      alpha: _lerp(0.18, 0.42, rnd.nextDouble()),
      thickness: _lerp(1.0, 1.7, rnd.nextDouble()),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, c) {
        final size = Size(c.maxWidth, c.maxHeight);
        _regenerateIfNeeded(size);

        return IgnorePointer(
          child: RepaintBoundary(
            child: Opacity(
              opacity: widget.opacity,
              child: CustomPaint(
                size: Size.infinite,
                painter: _StarfieldPainter(
                  t: _t,
                  stars: _stars,
                  sparkles: _sparkles,
                  shooting: _shooting,
                  warmGlowBoost: widget.warmGlowBoost,
                  sparklePulseWidth: widget.sparklePulseWidth,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/* ======================= Models ======================= */

class _Star {
  const _Star({
    required this.pos,
    required this.radius,
    required this.baseAlpha,
    required this.amp,
    required this.speed,
    required this.phase,
    required this.sparkleCapable,
    required this.sparkleBoost,
    required this.warm,
  });

  final Offset pos;
  final double radius;

  final double baseAlpha;
  final double amp;
  final double speed;
  final double phase;

  final bool sparkleCapable;
  final double sparkleBoost;

  final bool warm;
}

class _Sparkle {
  const _Sparkle({
    required this.pos,
    required this.warm,
    required this.startTime,
    required this.duration,
    required this.strength,
  });

  final Offset pos;
  final bool warm;
  final double startTime;
  final double duration;
  final double strength;
}

class _ShootingStar {
  const _ShootingStar({
    required this.start,
    required this.end,
    required this.startTime,
    required this.duration,
    required this.alpha,
    required this.thickness,
  });

  final Offset start;
  final Offset end;
  final double startTime;
  final double duration;
  final double alpha;
  final double thickness;
}

/* ======================= Painter ======================= */

class _StarfieldPainter extends CustomPainter {
  _StarfieldPainter({
    required this.t,
    required this.stars,
    required this.sparkles,
    required this.shooting,
    required this.warmGlowBoost,
    required this.sparklePulseWidth,
  });

  final double t;
  final List<_Star> stars;
  final List<_Sparkle> sparkles;
  final List<_ShootingStar> shooting;

  final double warmGlowBoost;
  final double sparklePulseWidth;

  static final Paint _p = Paint()..isAntiAlias = true;

  double _ease(double x) => Curves.easeInOut.transform(x.clamp(0.0, 1.0));

  double _gaussPulse01(double x, {double width = 0.16}) {
    final d = (x - 0.5);
    final w = width.clamp(0.10, 0.26); // lite tajtare än innan
    final v = math.exp(-(d * d) / (2 * w * w));
    return v.clamp(0.0, 1.0);
  }

  @override
  void paint(Canvas canvas, Size size) {
    const coolGlow = Color(0xFFEAF2FF);
    const coolCore = Color(0xFFFFFFFF);

    const warmCore = Color(0xFFFFD2A2);
    const warmGlow = Color(0xFFFF7A2E);

    // --- Base stars ---
    for (final s in stars) {
      final breath = (s.amp == 0 || s.speed == 0)
          ? 0.0
          : _ease((math.sin(t * s.speed * math.pi * 2 + s.phase) + 1) * 0.5);

      double alpha = s.baseAlpha * (1 + s.amp * (breath - 0.5));
      alpha = alpha.clamp(0.0, 1.0);

      final isWarm = s.warm;

      if (isWarm) {
        _p.color = warmGlow.withOpacity((alpha * 0.22).clamp(0.0, 1.0));
        canvas.drawCircle(s.pos, (s.radius * 2.1) * warmGlowBoost, _p);
      } else {
        _p.color = coolGlow.withOpacity((alpha * 0.20).clamp(0.0, 1.0));
        canvas.drawCircle(s.pos, s.radius * 1.9, _p);
      }

      _p.color = (isWarm ? warmCore : coolCore).withOpacity(alpha);
      canvas.drawCircle(s.pos, math.max(0.14, s.radius), _p);
    }

    // --- Sparkles: minimal “glint” (no big blobs, same star size) ---
    for (final sp in sparkles) {
      final p = ((t - sp.startTime) / sp.duration).clamp(0.0, 1.0);

      // ✅ Mjuk peak utan “snap”
      final pulse = _gaussPulse01(p, width: sparklePulseWidth);
      final a = _ease(pulse) * sp.strength;

      final cCore = sp.warm ? warmCore : coolCore;
      final cGlow = sp.warm ? warmGlow : coolGlow;

      // ✅ Minimal glow (ingen stor “bubbla”)
      _p.color = cGlow.withOpacity((a * 0.16).clamp(0.0, 1.0));
      canvas.drawCircle(sp.pos, 4.0 + 3.5 * a, _p);

      // ✅ Kortare cross-armar = mer premium, mindre “blink”
      final linePaint = Paint()
        ..isAntiAlias = true
        ..strokeWidth = 1.0
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..color = cCore.withOpacity((a * 0.70).clamp(0.0, 1.0));

      final len = 4.6 + 2.8 * a;

      canvas.drawLine(
        sp.pos + Offset(-len, 0),
        sp.pos + Offset(len, 0),
        linePaint,
      );
      canvas.drawLine(
        sp.pos + Offset(0, -len),
        sp.pos + Offset(0, len),
        linePaint,
      );

      // Tiny core
      _p.color = cCore.withOpacity((a * 0.85).clamp(0.0, 1.0));
      canvas.drawCircle(sp.pos, 0.85 + 0.55 * a, _p);
    }

    // --- Shooting stars ---
    for (final sh in shooting) {
      final p = ((t - sh.startTime) / sh.duration).clamp(0.0, 1.0);
      final fade = _ease(p) * _ease(1 - p);
      final alpha = (fade * sh.alpha).clamp(0.0, 1.0);

      final pe = _ease(p);
      final pos = Offset(
        sh.start.dx + (sh.end.dx - sh.start.dx) * pe,
        sh.start.dy + (sh.end.dy - sh.start.dy) * pe,
      );

      final dx = sh.end.dx - sh.start.dx;
      final dy = sh.end.dy - sh.start.dy;
      final len = math.sqrt(dx * dx + dy * dy);
      if (len < 0.001) continue;

      final ux = dx / len;
      final uy = dy / len;

      final trailLen = math.min(140.0, len * 0.34);
      final tail = Offset(pos.dx - ux * trailLen, pos.dy - uy * trailLen);

      final glow = Paint()
        ..isAntiAlias = true
        ..strokeWidth = sh.thickness * 3.0
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..color = Colors.white.withOpacity(alpha * 0.14);

      canvas.drawLine(tail, pos, glow);

      final shader = ui.Gradient.linear(
        tail,
        pos,
        [
          Colors.white.withOpacity(0.0),
          Colors.white.withOpacity(alpha * 0.90),
        ],
      );

      final core = Paint()
        ..isAntiAlias = true
        ..strokeWidth = sh.thickness
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..shader = shader;

      canvas.drawLine(tail, pos, core);

      _p.color = Colors.white.withOpacity(alpha);
      canvas.drawCircle(pos, sh.thickness * 1.2, _p);
    }
  }

  @override
  bool shouldRepaint(covariant _StarfieldPainter old) => old.t != t;
}
