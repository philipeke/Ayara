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

    canvas.save();
    canvas.translate(cx, cy);
    canvas.rotate(angle);
    canvas.translate(-cx, -cy);

    // ── Traditional Islamic 12-pointed star ───────────────────────────────────
    // 12 outer points at radius R (every 30°) and 12 inner vertices at radius r
    // (at 15° offset between each outer point). This is the star pattern found
    // on the domes of Imam Ali shrine (Najaf) and Imam Hussein shrine (Karbala).
    //
    // Layered: outer star → middle star → inner star → rosette circles

    _drawTwelvePointedStar(
      canvas,
      Offset(cx, cy),
      outerR: maxR * 1.00,
      innerR: maxR * 0.50,
      opacity: 0.38,
      strokeWidth: 1.8,
    );

    _drawTwelvePointedStar(
      canvas,
      Offset(cx, cy),
      outerR: maxR * 0.65,
      innerR: maxR * 0.32,
      opacity: 0.28,
      strokeWidth: 1.4,
    );

    _drawTwelvePointedStar(
      canvas,
      Offset(cx, cy),
      outerR: maxR * 0.38,
      innerR: maxR * 0.19,
      opacity: 0.22,
      strokeWidth: 1.1,
    );

    // Decorative concentric circles (rosette bands)
    for (final (r, op, sw) in [
      (maxR * 0.98, 0.18, 0.7),
      (maxR * 0.76, 0.14, 0.6),
      (maxR * 0.55, 0.12, 0.5),
      (maxR * 0.20, 0.24, 0.9),
    ]) {
      canvas.drawCircle(
        Offset(cx, cy),
        r,
        Paint()
          ..color = AppColors.gold.withValues(alpha: op)
          ..style = PaintingStyle.stroke
          ..strokeWidth = sw,
      );
    }

    // Centre dot
    canvas.drawCircle(
      Offset(cx, cy),
      maxR * 0.028,
      Paint()
        ..color = AppColors.gold.withValues(alpha: 0.45)
        ..style = PaintingStyle.fill,
    );

    canvas.restore();
  }

  /// Draws a single 12-pointed star polygon centred at [centre].
  /// [outerR] is the tip radius; [innerR] is the valley radius.
  void _drawTwelvePointedStar(
    Canvas canvas,
    Offset centre, {
    required double outerR,
    required double innerR,
    required double opacity,
    required double strokeWidth,
  }) {
    final path = Path();
    const points = 12;
    for (int i = 0; i < points * 2; i++) {
      // Alternate between outer (tip) and inner (valley) vertices
      final r = i.isEven ? outerR : innerR;
      final a = (i * pi / points) - pi / 2; // start pointing straight up
      final x = centre.dx + r * cos(a);
      final y = centre.dy + r * sin(a);
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    path.close();

    canvas.drawPath(
      path,
      Paint()
        ..color = AppColors.gold.withValues(alpha: opacity)
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth,
    );
  }

  @override
  bool shouldRepaint(_GeoStarPainter old) => old.angle != angle;
}

// ─────────────────────────────────────────────────────────────────────────────
// Logo section with geo star + glow halo
// ─────────────────────────────────────────────────────────────────────────────

class LogoSection extends StatelessWidget {
  final Widget? middleContent;
  const LogoSection({super.key, this.middleContent});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final logoWidth = w * 0.85;
    final starSize = w * 0.80;
    final glowSize = logoWidth * 1.2;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 24),
      child: Column(
        children: [
          // Rotating 12-pointed star above logo
          Opacity(
            opacity: 0.80,
            child: GeoStarWidget(size: starSize * 0.55),
          ),
          if (middleContent != null) ...[
            const SizedBox(height: 24),
            middleContent!,
            const SizedBox(height: 24),
          ] else
            const SizedBox(height: 16),

          // Logo with multi-layer glow + edge-fade blending.
          // Extra vertical padding (72px top, 24px bottom) so the radial glow
          // has room to breathe without hitting a hard-clipped edge.
          SizedBox(
            width: glowSize,
            height: glowSize * 0.65 + 96,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Outer diffuse gold aura — sized larger than the logo so the
                // gradient fades to zero well before the container edge.
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.center,
                        radius: 0.60,
                        colors: [
                          AppColors.gold.withValues(alpha: 0.20),
                          AppColors.gold.withValues(alpha: 0.07),
                          Colors.transparent,
                        ],
                        stops: const [0.0, 0.40, 1.0],
                      ),
                    ),
                  ),
                ),

                // Inner bright halo (tighter, more intense)
                SizedBox(
                  width: glowSize * 0.6,
                  height: glowSize * 0.40,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          AppColors.gold.withValues(alpha: 0.25),
                          Colors.transparent,
                        ],
                        stops: const [0.0, 1.0],
                      ),
                    ),
                  ),
                ),

                // Logo — faded at edges via ShaderMask so it dissolves into background
                ShaderMask(
                  shaderCallback: (bounds) => const RadialGradient(
                    center: Alignment.center,
                    radius: 0.72,
                    colors: [Colors.white, Colors.white, Colors.transparent],
                    stops: [0.0, 0.55, 1.0],
                  ).createShader(bounds),
                  blendMode: BlendMode.dstIn,
                  child: ClipRect(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      heightFactor: 0.82,
                      child: Image.asset(
                        'assets/logo.png',
                        width: logoWidth,
                      ),
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
