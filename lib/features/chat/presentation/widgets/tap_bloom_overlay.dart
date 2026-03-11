// lib/features/chat/presentation/widgets/tap_bloom_overlay.dart
//
// "Noor" effect — mature Islamic aesthetic. Contemplative, not celebratory.
// Thin light rays, slow expanding rings, drifting diamond sparks, crescent moons.
// Pure gold palette, low opacity, long graceful duration.

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:ayara/core/config/theme.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Public API
// ─────────────────────────────────────────────────────────────────────────────

// ignore: avoid_unused_parameters — accent kept for API compatibility
void showCategoryBloom(BuildContext context, Offset center, Color accent) {
  OverlayEntry? entry;
  entry = OverlayEntry(
    builder: (_) => _BloomOverlay(
      center: center,
      onDone: () { try { entry?.remove(); } catch (_) {} },
    ),
  );
  Overlay.of(context).insert(entry);
}

// ─────────────────────────────────────────────────────────────────────────────
// Particle model
// ─────────────────────────────────────────────────────────────────────────────

enum _Shape { ray, diamond, crescent }

class _Particle {
  final Offset origin;
  final double angle;
  final double distance;
  final double size;
  final Color  color;
  final _Shape shape;
  final double spin;
  final double spawnAt;
  final double fadeAt;
  final double gravity;

  const _Particle({
    required this.origin,
    required this.angle,
    required this.distance,
    required this.size,
    required this.color,
    required this.shape,
    required this.spin,
    required this.spawnAt,
    required this.fadeAt,
    this.gravity = 0.0,
  });
}

// ─────────────────────────────────────────────────────────────────────────────
// Particle factory
// ─────────────────────────────────────────────────────────────────────────────

List<_Particle> _buildParticles(Offset center) {
  final rng = math.Random();
  double rr(double lo, double hi) => lo + rng.nextDouble() * (hi - lo);

  final results = <_Particle>[];

  // ── 12 thin noor rays — evenly spaced, divine light emanating outward
  for (var i = 0; i < 12; i++) {
    final angle = (i / 12) * 2 * math.pi;
    results.add(_Particle(
      origin:   center,
      angle:    angle,
      distance: rr(55, 110),
      size:     rr(0.6, 1.3),  // stroke width — very thin
      color:    AppColors.goldBright,
      shape:    _Shape.ray,
      spin:     0,
      spawnAt:  0.00,
      fadeAt:   0.30,           // fades quickly — a momentary flash of light
      gravity:  0,
    ));
  }

  // ── 7 diamond sparks — drift upward slowly like prayers ascending
  for (var i = 0; i < 7; i++) {
    final angle = rr(-math.pi * 0.9, -math.pi * 0.1); // upper half
    results.add(_Particle(
      origin:   center,
      angle:    angle,
      distance: rr(28, 90),
      size:     rr(3.0, 5.5),
      color:    i % 2 == 0 ? AppColors.goldBright : AppColors.gold,
      shape:    _Shape.diamond,
      spin:     rr(-0.6, 0.6),
      spawnAt:  rr(0.08, 0.22),
      fadeAt:   0.55,
      gravity:  rr(-28, -14),
    ));
  }

  // ── 2 crescent moons — graceful, slow, gold only
  for (var i = 0; i < 2; i++) {
    final angle = (i / 2) * 2 * math.pi + rr(-0.3, 0.3);
    results.add(_Particle(
      origin:   center,
      angle:    angle,
      distance: rr(70, 115),
      size:     rr(7, 11),
      color:    AppColors.gold,
      shape:    _Shape.crescent,
      spin:     rr(-0.5, 0.5),
      spawnAt:  rr(0.10, 0.18),
      fadeAt:   0.50,
      gravity:  rr(-14, -6),
    ));
  }

  return results;
}

// ─────────────────────────────────────────────────────────────────────────────
// Painter
// ─────────────────────────────────────────────────────────────────────────────

class _BloomPainter extends CustomPainter {
  final List<_Particle> particles;
  final double t;

  const _BloomPainter({required this.particles, required this.t});

  @override
  bool shouldRepaint(_BloomPainter old) => old.t != t;

  static double _easeOut(double x) {
    if (x <= 0) return 0;
    if (x >= 1) return 1;
    return 1 - math.pow(1 - x, 3).toDouble();
  }

  static double _easeInOut(double x) {
    if (x <= 0) return 0;
    if (x >= 1) return 1;
    return x < 0.5 ? 4 * x * x * x : 1 - math.pow(-2 * x + 2, 3).toDouble() / 2;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (particles.isEmpty) return;
    final origin = particles.first.origin;

    // ── 1. Very soft central glow — fades by 25%, barely visible ─────────────
    if (t < 0.28) {
      final gt    = _easeOut(t / 0.28);
      final glowR = 52.0 * gt;
      final alpha = (1.0 - gt) * 0.28;
      canvas.drawCircle(
        origin, glowR,
        Paint()..color = AppColors.goldBright.withValues(alpha: alpha),
      );
    }

    // ── 2. Two slow expanding rings — thin, gold only ─────────────────────────
    _ring(canvas, origin, t, 0.00, 130, AppColors.gold.withValues(alpha: 0.30));
    _ring(canvas, origin, t, 0.14, 100, AppColors.goldBright.withValues(alpha: 0.16));

    // ── 3. Particles ─────────────────────────────────────────────────────────
    for (final p in particles) {
      final localT = t - p.spawnAt;
      if (localT <= 0) continue;

      final progress = (localT / (1.0 - p.spawnAt)).clamp(0.0, 1.0);

      // Smooth opacity: gentle fade in, hold, graceful fade out
      final double opacity;
      if (progress < 0.15) {
        opacity = _easeOut(progress / 0.15);
      } else if (progress > p.fadeAt) {
        opacity = 1.0 - _easeInOut((progress - p.fadeAt) / (1.0 - p.fadeAt));
      } else {
        opacity = 1.0;
      }
      if (opacity <= 0.01) continue;

      final dist   = p.distance * _easeOut(progress);
      final yDrift = p.gravity * progress * progress;
      final pos    = Offset(
        p.origin.dx + math.cos(p.angle) * dist,
        p.origin.dy + math.sin(p.angle) * dist + yDrift,
      );

      final sz    = p.size;
      final rot   = p.spin * _easeInOut(progress);
      final alpha = p.color.a * opacity;

      final paint = Paint()
        ..color = p.color.withValues(alpha: alpha)
        ..style = PaintingStyle.fill;

      switch (p.shape) {
        case _Shape.ray:      _paintRay(canvas, origin, pos, p.size, alpha);
        case _Shape.diamond:  _paintDiamond(canvas, pos, sz, rot, paint);
        case _Shape.crescent: _paintCrescent(canvas, pos, sz, rot, paint);
      }
    }
  }

  // ── Ring ─────────────────────────────────────────────────────────────────

  void _ring(Canvas canvas, Offset c, double t, double delay, double maxR, Color color) {
    final rt = (t - delay).clamp(0.0, 1.0);
    if (rt <= 0) return;
    final rp = _easeOut(rt);
    final a  = (1.0 - rp) * color.a;
    if (a < 0.01) return;
    canvas.drawCircle(
      c, maxR * rp,
      Paint()
        ..color       = color.withValues(alpha: a)
        ..style       = PaintingStyle.stroke
        ..strokeWidth = 0.8,
    );
  }

  // ── Noor ray — thin line from centre, fades as it extends ────────────────

  void _paintRay(Canvas canvas, Offset origin, Offset tip, double strokeW, double alpha) {
    canvas.drawLine(
      origin,
      tip,
      Paint()
        ..color       = AppColors.goldBright.withValues(alpha: alpha * 0.60)
        ..strokeWidth = strokeW.clamp(0.4, 1.4)
        ..strokeCap   = StrokeCap.round,
    );
  }

  // ── Diamond spark — small rotated square, elegant and geometric ───────────

  void _paintDiamond(Canvas canvas, Offset center, double sz, double rot, Paint paint) {
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(rot + math.pi / 4);
    final half = sz * 0.5;
    canvas.drawRect(Rect.fromCenter(center: Offset.zero, width: half * 2, height: half * 2), paint);
    canvas.restore();
  }

  // ── Crescent moon — saveLayer + BlendMode.clear ───────────────────────────

  void _paintCrescent(Canvas canvas, Offset center, double sz, double rot, Paint paint) {
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(rot);

    final bounds = Rect.fromCircle(center: Offset.zero, radius: sz * 1.5);
    canvas.saveLayer(bounds, Paint());

    canvas.drawCircle(Offset.zero, sz, paint);
    canvas.drawCircle(
      Offset(sz * 0.38, 0),
      sz * 0.72,
      Paint()..blendMode = BlendMode.clear,
    );

    canvas.restore();
    canvas.restore();
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Overlay widget
// ─────────────────────────────────────────────────────────────────────────────

class _BloomOverlay extends StatefulWidget {
  final Offset       center;
  final VoidCallback onDone;

  const _BloomOverlay({
    required this.center,
    required this.onDone,
  });

  @override
  State<_BloomOverlay> createState() => _BloomOverlayState();
}

class _BloomOverlayState extends State<_BloomOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(
    vsync:    this,
    duration: const Duration(milliseconds: 1400),
  );

  late final List<_Particle> _particles;
  late final CurvedAnimation  _curved;

  @override
  void initState() {
    super.initState();
    _particles = _buildParticles(widget.center);
    _curved    = CurvedAnimation(parent: _ctrl, curve: Curves.linear);
    _ctrl.forward().whenComplete(() {
      if (mounted) widget.onDone();
    });
  }

  @override
  void dispose() {
    _curved.dispose();
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: RepaintBoundary(
        child: AnimatedBuilder(
          animation: _curved,
          builder: (_, _) => CustomPaint(
            painter: _BloomPainter(
              particles: _particles,
              t:         _curved.value,
            ),
            child: const SizedBox.expand(),
          ),
        ),
      ),
    );
  }
}
