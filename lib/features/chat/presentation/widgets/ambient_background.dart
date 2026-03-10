// lib/features/chat/presentation/widgets/ambient_background.dart
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:ayara/core/config/theme.dart';

class GridGlassPanel extends StatelessWidget {
  const GridGlassPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}

/// Slow-breathing ambient background with animated corner shines.
/// Shia Islamic deep green / gold palette — serene and contemplative.
class AmbientBackground extends StatefulWidget {
  const AmbientBackground({super.key});

  @override
  State<AmbientBackground> createState() => _AmbientBackgroundState();
}

class _AmbientBackgroundState extends State<AmbientBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 7200),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _ctrl,
      builder: (_, _) => CustomPaint(
        painter: AmbientNavyGoldPainter(t: _ctrl.value),
        size: Size.infinite,
      ),
    );
  }
}

/// Rich multi-layer deep green + gold ambient mesh with animated corner shines.
/// [t] is the breathing animation value (0.0–1.0); defaults to 0 (static).
class AmbientNavyGoldPainter extends CustomPainter {
  final double t;

  const AmbientNavyGoldPainter({this.t = 0.0});

  void _glow(Canvas canvas, Paint p, Color color, double sigma,
      Offset center, double radius) {
    p
      ..color = color
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, sigma);
    canvas.drawCircle(center, radius, p);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint();
    final w = size.width;
    final h = size.height;

    // Smooth eased pulse (0 → 1 → 0 over the animation cycle)
    final pulse = math.sin(t * math.pi);

    // ── TOP-RIGHT CORNER — warm gold shine, lantern feel ─────────────────
    // Wide diffuse halo
    _glow(canvas, p,
        AppColors.gold.withValues(alpha: 0.18 + pulse * 0.10),
        170, Offset(w * 1.04, h * -0.03), w * 0.42);
    // Tighter warm amber focused highlight
    _glow(canvas, p,
        const Color(0xFFE8C87A).withValues(alpha: 0.13 + pulse * 0.11),
        85, Offset(w * 0.95, h * 0.018), w * 0.16);
    // Tiny hot-spot glint
    _glow(canvas, p,
        Colors.white.withValues(alpha: 0.07 + pulse * 0.08),
        38, Offset(w * 0.92, h * 0.024), w * 0.07);

    // ── TOP-LEFT CORNER — deep emerald refraction ─────────────────────────
    // Wide deep green halo
    _glow(canvas, p,
        const Color(0xFF0E5A28).withValues(alpha: 0.18 + pulse * 0.08),
        140, Offset(w * -0.04, h * -0.02), w * 0.38);
    // Inner warm gold highlight
    _glow(canvas, p,
        const Color(0xFFE8C87A).withValues(alpha: 0.10 + pulse * 0.08),
        60, Offset(w * 0.045, h * 0.028), w * 0.11);

    // ── Deep green depth glows ────────────────────────────────────────────
    // Top-left deep forest swell
    _glow(canvas, p, const Color(0xFF0C3A1E).withValues(alpha: 0.44),
        130, Offset(w * -0.02, h * 0.02), w * 0.28);

    // Upper-right mid-green accent
    _glow(canvas, p, const Color(0xFF1A5C35).withValues(alpha: 0.26),
        100, Offset(w * 1.02, h * 0.12), w * 0.20);

    // Right-edge warm gold mid-screen
    _glow(canvas, p, AppColors.gold.withValues(alpha: 0.22),
        110, Offset(w * 1.08, h * 0.30), w * 0.18);

    // Tiny gold spark — just inside top-right
    _glow(canvas, p, AppColors.gold.withValues(alpha: 0.20),
        55, Offset(w * 0.90, h * 0.03), w * 0.09);

    // Bottom-left dark vignette
    _glow(canvas, p, AppColors.islamicDeep.withValues(alpha: 0.55),
        170, Offset(w * -0.05, h * 0.96), w * 0.42);

    // Bottom-right deep forest green
    _glow(canvas, p, const Color(0xFF030A04).withValues(alpha: 0.32),
        130, Offset(w * 1.05, h * 0.80), w * 0.28);

    // Very soft center-low green warmth
    _glow(canvas, p, const Color(0xFF0A2A12).withValues(alpha: 0.20),
        200, Offset(w * 0.50, h * 0.78), w * 0.35);

    // Left-edge subtle gold accent
    _glow(canvas, p, AppColors.gold.withValues(alpha: 0.10),
        65, Offset(w * -0.08, h * 0.52), w * 0.14);

    // ── BOTTOM-RIGHT — faint gold glow, breathes opposite to top shines ──
    _glow(canvas, p,
        AppColors.gold.withValues(alpha: 0.06 + (1 - pulse) * 0.05),
        110, Offset(w * 1.06, h * 1.03), w * 0.30);
  }

  @override
  bool shouldRepaint(covariant AmbientNavyGoldPainter old) => old.t != t;
}

// Keep the old name as an alias so any file still referencing it compiles.
typedef AmbientLilacPainter = AmbientNavyGoldPainter;

