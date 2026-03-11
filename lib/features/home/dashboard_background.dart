// lib/features/home/dashboard_background.dart
//
// Website-matching background: layered radial gradients + twinkling star field
// + rotating geometric star around the logo. All pure Flutter — no packages.

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ayara/core/config/theme.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Background gradient layers (matches ayara.oakdev.app exactly)
// ─────────────────────────────────────────────────────────────────────────────

class DashboardBackground extends StatelessWidget {
  const DashboardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        // Base deep navy
        const ColoredBox(color: AppColors.deepNavy),

        // Crimson glow — top-left  (website: ellipse 80% 55% at 15% 10%)
        Positioned(
          top: -size.height * 0.15,
          left: -size.width * 0.25,
          child: _RadialBlob(
            width: size.width * 1.4,
            height: size.height * 0.7,
            color: const Color(0xFFC23B5A),
            alpha: 0.14,
          ),
        ),

        // Gold glow — top-right  (website: ellipse 65% 50% at 85% 15%)
        Positioned(
          top: -size.height * 0.12,
          right: -size.width * 0.20,
          child: _RadialBlob(
            width: size.width * 1.1,
            height: size.height * 0.55,
            color: const Color(0xFFC9A84C),
            alpha: 0.10,
          ),
        ),

        // Emerald glow — center  (website: ellipse 75% 60% at 50% 50%)
        Positioned(
          top: size.height * 0.15,
          left: size.width * 0.05,
          child: _RadialBlob(
            width: size.width * 0.9,
            height: size.height * 0.55,
            color: const Color(0xFF26B070),
            alpha: 0.07,
          ),
        ),

        // Crimson glow — bottom-right  (website: ellipse 90% 40% at 80% 90%)
        Positioned(
          bottom: -size.height * 0.10,
          right: -size.width * 0.20,
          child: _RadialBlob(
            width: size.width * 1.5,
            height: size.height * 0.45,
            color: const Color(0xFFC23B5A),
            alpha: 0.08,
          ),
        ),

        // Top dark overlay (website: body::after linear-gradient dark→transparent)
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: IgnorePointer(
            child: Container(
              height: 220,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xB2060c18), Colors.transparent],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _RadialBlob extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double alpha;

  const _RadialBlob({
    required this.width,
    required this.height,
    required this.color,
    required this.alpha,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: SizedBox(
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                color.withValues(alpha: alpha),
                color.withValues(alpha: alpha * 0.4),
                Colors.transparent,
              ],
              stops: const [0.0, 0.45, 1.0],
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Twinkling star field — canvas-based, matches website star animation
// ─────────────────────────────────────────────────────────────────────────────

class StarfieldWidget extends StatefulWidget {
  const StarfieldWidget({super.key});

  @override
  State<StarfieldWidget> createState() => _StarfieldWidgetState();
}

class _StarfieldWidgetState extends State<StarfieldWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 120),
  )..repeat();

  late final List<_Star> _stars;

  @override
  void initState() {
    super.initState();
    final rng = Random(42);
    _stars = List.generate(110, (_) {
      // 88% white, 6% crimson-tinted, 6% gold-tinted
      final roll = rng.nextDouble();
      final Color color;
      if (roll < 0.88) {
        color = Colors.white;
      } else if (roll < 0.94) {
        color = const Color(0xFFC23B5A);
      } else {
        color = const Color(0xFFC9A84C);
      }
      return _Star(
        xFrac: rng.nextDouble(),
        yFrac: rng.nextDouble(),
        radius: 0.3 + rng.nextDouble() * 1.1,
        baseAlpha: 0.25 + rng.nextDouble() * 0.65,
        speed: 0.2 + rng.nextDouble() * 0.6,
        phase: rng.nextDouble() * 2 * pi,
        color: color,
      );
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _ctrl,
        builder: (_, child) => CustomPaint(
          painter: _StarfieldPainter(
            time: _ctrl.value * 120.0,
            stars: _stars,
          ),
          size: Size.infinite,
        ),
      ),
    );
  }
}

class _Star {
  final double xFrac;
  final double yFrac;
  final double radius;
  final double baseAlpha;
  final double speed;
  final double phase;
  final Color color;

  const _Star({
    required this.xFrac,
    required this.yFrac,
    required this.radius,
    required this.baseAlpha,
    required this.speed,
    required this.phase,
    required this.color,
  });
}

class _StarfieldPainter extends CustomPainter {
  final double time;
  final List<_Star> stars;

  const _StarfieldPainter({required this.time, required this.stars});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    for (final star in stars) {
      final alpha =
          (star.baseAlpha * (0.5 + 0.5 * sin(time * star.speed + star.phase)))
              .clamp(0.0, 1.0);
      paint.color = star.color.withValues(alpha: alpha);
      canvas.drawCircle(
        Offset(star.xFrac * size.width, star.yFrac * size.height),
        star.radius,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_StarfieldPainter old) => old.time != time;
}

// ─────────────────────────────────────────────────────────────────────────────
// Rotating geometric star — matches website hero SVG (geoSpin 80s)
// ─────────────────────────────────────────────────────────────────────────────

class GeoStarWidget extends StatefulWidget {
  final double size;
  const GeoStarWidget({super.key, this.size = 320});

  @override
  State<GeoStarWidget> createState() => _GeoStarWidgetState();
}

class _GeoStarWidgetState extends State<GeoStarWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 80),
  )..repeat();

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _ctrl,
        builder: (_, child) => CustomPaint(
          painter: _GeoStarPainter(angle: _ctrl.value * 2 * pi),
          size: Size(widget.size, widget.size),
        ),
      ),
    );
  }
}

class _GeoStarPainter extends CustomPainter {
  final double angle;

  const _GeoStarPainter({required this.angle});

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final maxR = size.width / 2;

    // ── 12-pointed star: three interlaced equilateral triangles ──────────────
    // This is a sacred Shia geometric symbol representing the 12 Imams,
    // prominently featured in the architecture of shrines in Najaf and Karbala.
    //
    // Outer ring: three large triangles (full radius)
    // Middle ring: three medium triangles (75%)
    // Inner ring: three small triangles (45%)
    // Centre circle accent

    final rings = [
      (maxR * 1.00, 0.14, 1.4),
      (maxR * 0.75, 0.09, 1.1),
      (maxR * 0.46, 0.07, 0.9),
    ];

    for (final (r, opacity, sw) in rings) {
      final paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = sw
        ..color = AppColors.gold.withValues(alpha: opacity);

      // Three equilateral triangles at 0°, 120°, 240° offset
      for (int t = 0; t < 3; t++) {
        final offset = angle + (t * 2 * pi / 3);
        canvas.drawPath(_trianglePath(cx, cy, r, offset), paint);
      }
    }

    // Outer circle
    canvas.drawCircle(
      Offset(cx, cy),
      maxR * 0.98,
      Paint()
        ..color = AppColors.gold.withValues(alpha: 0.06)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.6,
    );

    // Inner circle
    canvas.drawCircle(
      Offset(cx, cy),
      maxR * 0.10,
      Paint()
        ..color = AppColors.gold.withValues(alpha: 0.18)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.8,
    );

    // Centre dot
    canvas.drawCircle(
      Offset(cx, cy),
      maxR * 0.025,
      Paint()
        ..color = AppColors.gold.withValues(alpha: 0.20)
        ..style = PaintingStyle.fill,
    );
  }

  /// Equilateral triangle centred at (cx, cy) with circumradius [r],
  /// rotated by [rotation] radians.
  Path _trianglePath(double cx, double cy, double r, double rotation) {
    final path = Path();
    for (int i = 0; i < 3; i++) {
      final a = rotation + (i * 2 * pi / 3) - pi / 2;
      final x = cx + r * cos(a);
      final y = cy + r * sin(a);
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    path.close();
    return path;
  }

  @override
  bool shouldRepaint(_GeoStarPainter old) => old.angle != angle;
}

// ─────────────────────────────────────────────────────────────────────────────
// Logo section with geo star + glow halo
// ─────────────────────────────────────────────────────────────────────────────

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final logoWidth = w * 0.85;
    final starSize = w * 0.80;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 24),
      child: Column(
        children: [
          // Rotating 12-pointed star as standalone decorative element above logo
          Opacity(
            opacity: 0.55,
            child: GeoStarWidget(size: starSize * 0.55),
          ),
          const SizedBox(height: 16),

          // Logo image — lighter & cropped, fully separate from the star
          Stack(
            alignment: Alignment.center,
            children: [
              // Subtle gold glow behind logo only
              SizedBox(
                width: logoWidth * 0.7,
                height: logoWidth * 0.35,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        AppColors.gold.withValues(alpha: 0.08),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              ClipRect(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 0.82,
                  child: Opacity(
                    opacity: 0.88,
                    child: Image.asset(
                      'assets/logo.png',
                      width: logoWidth,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
