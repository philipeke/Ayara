// lib/features/chat/presentation/widgets/category_tile.dart
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:nuria/core/config/theme.dart';

class CategoryTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color accent;
  final bool isBusy;
  final bool dimmed;
  final bool locked;

  const CategoryTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.accent,
    this.isBusy = false,
    this.dimmed = false,
    this.locked = false,
  });

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile>
    with TickerProviderStateMixin {
  bool _hovered = false;
  bool _tapInFlight = false;
  Timer? _releaseTimer;

  // Icon ring pulse: expands outward on tap
  late final AnimationController _pulse = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 220),
  );

  // Spring bounce: dip → overshoot → settle (plays once per tap)
  late final AnimationController _bounce = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 560),
  );

  late final Animation<double> _bounceAnim = TweenSequence<double>([
    // Quick press-down
    TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.91), weight: 10),
    // Elastic spring back overshoot
    TweenSequenceItem(
      tween: Tween(begin: 0.91, end: 1.06)
          .chain(CurveTween(curve: Curves.easeOut)),
      weight: 28,
    ),
    // Settle
    TweenSequenceItem(
      tween: Tween(begin: 1.06, end: 0.99)
          .chain(CurveTween(curve: Curves.easeIn)),
      weight: 12,
    ),
    TweenSequenceItem(tween: Tween(begin: 0.99, end: 1.0), weight: 5),
  ]).animate(_bounce);

  // Gold shimmer trigger: one-shot sweep on each tap
  late final AnimationController _shimmerCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 700),
  );

  // Continuous shimmer while AI is generating — driven externally (no extra ticker)
  late final AnimationController _busyShimmerCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1500),
  );

  // Gentle breathing scale while AI is generating
  late final AnimationController _breatheCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 950),
  );

  @override
  void dispose() {
    _releaseTimer?.cancel();
    _pulse.dispose();
    _bounce.dispose();
    _shimmerCtrl.dispose();
    _busyShimmerCtrl.dispose();
    _breatheCtrl.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CategoryTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_tapInFlight && oldWidget.isBusy && !widget.isBusy) {
      _releaseTapGuard();
    }
    if (widget.isBusy && !oldWidget.isBusy) {
      _busyShimmerCtrl.repeat();
      _breatheCtrl.repeat(reverse: true);
    } else if (!widget.isBusy && oldWidget.isBusy) {
      _busyShimmerCtrl
        ..stop()
        ..reset();
      _breatheCtrl
        ..stop()
        ..reset();
    }
  }

  // Blocked when busy OR when dimmed for a reason other than being locked
  // (i.e. another tile is currently generating). Locked tiles must still
  // deliver taps so the "upgrade" dialog can open.
  bool get _blocked => widget.isBusy || (widget.dimmed && !widget.locked);

  void _releaseTapGuard() {
    _releaseTimer?.cancel();
    _tapInFlight = false;
  }

  void _handleTapDown(TapDownDetails _) {
    if (_blocked) return;
    // Locked tiles get a light haptic only — no press animations.
    if (widget.locked) {
      HapticFeedback.selectionClick();
      return;
    }
    HapticFeedback.mediumImpact();
    _pulse.forward(from: 0);
    _bounce.forward(from: 0);
    _shimmerCtrl.forward(from: 0);
  }

  void _handleTapCancel() {}

  void _handleTap() {
    if (_blocked) return;
    // Locked tiles bypass the in-flight guard and go straight to onTap
    // (which shows the locked/upgrade dialog — fast, no network call).
    if (widget.locked) {
      widget.onTap();
      return;
    }
    if (_tapInFlight) return;
    _tapInFlight = true;
    widget.onTap();
    _releaseTimer?.cancel();
    _releaseTimer = Timer(const Duration(milliseconds: 1200), () {
      if (!mounted) return;
      if (widget.isBusy) return;
      _releaseTapGuard();
    });
  }

  String _normalizeSpaces(String s) =>
      s.trim().replaceAll(RegExp(r'\s+'), ' ');

  // Balanced two-line split: finds the word break that makes lines most even.
  String _bestTwoLineTitle(String s) {
    final t = _normalizeSpaces(s);
    final parts = t.split(' ');
    if (parts.length <= 1) return t;

    String best = t;
    int bestScore = 1 << 30;

    for (int i = 1; i < parts.length; i++) {
      final line1 = parts.sublist(0, i).join(' ');
      final line2 = parts.sublist(i).join(' ');
      final score = line1.length > line2.length ? line1.length : line2.length;
      if (score < bestScore) {
        bestScore = score;
        best = '$line1\n$line2';
      }
    }
    return best;
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    final bool isTablet = w >= 600;
    final bool isLargeTablet = w >= 900;

    final double radius = isLargeTablet ? 18 : (isTablet ? 18 : 20);
    final double padH = isLargeTablet ? 10 : (isTablet ? 10 : 12);
    final double padV = isLargeTablet ? 10 : (isTablet ? 10 : 12);

    final double iconSize = isLargeTablet ? 28 : (isTablet ? 26 : 24);
    final double iconOuterPad = isLargeTablet ? 10.0 : (isTablet ? 9.5 : 9.0);
    final double iconBorderWidth = 1.0;
    final double iconOuterPadPulseMax = isLargeTablet ? 1.3 : 1.2;
    final double titleMaxSize =
        isLargeTablet ? 17.2 : (isTablet ? 16.4 : 16.0);
    final double gap = isLargeTablet ? 14 : (isTablet ? 12 : 10);

    final textColor = widget.dimmed
        ? AppColors.goldSubtle.withValues(alpha: 0.35)
        : AppColors.goldSubtle;
    final iconBgMul = widget.dimmed ? 0.06 : 0.13;
    final iconBorderMul = widget.dimmed ? 0.14 : 0.38;

    final supportsHover = kIsWeb ||
        Theme.of(context).platform == TargetPlatform.macOS ||
        Theme.of(context).platform == TargetPlatform.linux ||
        Theme.of(context).platform == TargetPlatform.windows;

    final rawTitle = _normalizeSpaces(widget.title);
    final String displayTitle = _bestTwoLineTitle(rawTitle);

    final double iconRestDiameter =
        iconSize + (iconOuterPad * 2) + (iconBorderWidth * 2);

    // ── Tile visual — border/glow intensify when busy ────────────────────────
    final innerTile = AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      padding: EdgeInsets.symmetric(vertical: padV, horizontal: padH),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: widget.isBusy
            ? const Color(0xFF5C4228).withValues(alpha: 0.96)
            : widget.dimmed
                ? const Color(0xFF2E2010).withValues(alpha: 0.45)
                : const Color(0xFF4A3420).withValues(alpha: 0.88),
        border: Border.all(
          color: AppColors.gold.withValues(
            alpha: widget.isBusy ? 0.65 : (widget.dimmed ? 0.12 : 0.42),
          ),
          width: widget.isBusy ? 1.5 : (widget.dimmed ? 0.8 : 1.1),
        ),
        boxShadow: [
          // Warm brown drop shadow
          BoxShadow(
            color: const Color(0xFF1A0E04).withValues(
                alpha: widget.dimmed ? 0.10 : 0.30),
            blurRadius: isTablet ? 24 : 18,
            spreadRadius: -2,
            offset: Offset(0, isTablet ? 6.0 : 4.0),
          ),
          // No BoxShadow for busy glow here — ShaderMask (shimmer) clips box
          // shadows. The glow is painted as a CustomPaint circle in its own
          // Stack layer outside all flutter_animate wrappers (see build return).
        ],
      ),
      child: LayoutBuilder(
        builder: (context, c) {
          final dir = Directionality.of(context);
          final scaler = MediaQuery.textScalerOf(context)
              .clamp(minScaleFactor: 0.90, maxScaleFactor: 1.08);

          final double textW = (c.maxWidth - 10).clamp(20.0, c.maxWidth);
          final double textH =
              (c.maxHeight - iconRestDiameter - gap - 6).clamp(16.0, c.maxHeight);

          final baseStyle = TextStyle(
            color: textColor,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.1,
            height: 1.10,
          );

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Icon with ring pulse
              SizedBox(
                width: iconRestDiameter,
                height: iconRestDiameter,
                child: Center(
                  child: AnimatedBuilder(
                    animation: _pulse,
                    builder: (_, child) {
                      final t = (widget.isBusy || widget.dimmed)
                          ? 0.0
                          : _pulse.value;
                      return OverflowBox(
                        maxWidth:
                            iconRestDiameter + iconOuterPadPulseMax * 2,
                        maxHeight:
                            iconRestDiameter + iconOuterPadPulseMax * 2,
                        child: Container(
                          padding: EdgeInsets.all(
                            iconOuterPad + iconOuterPadPulseMax * t,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.gold.withValues(
                              alpha: iconBgMul +
                                  0.04 * t +
                                  (widget.isBusy ? 0.06 : 0.0),
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.gold.withValues(
                                alpha: iconBorderMul +
                                    0.08 * t +
                                    (widget.isBusy ? 0.18 : 0.0),
                              ),
                              width: iconBorderWidth,
                            ),
                          ),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            switchInCurve: Curves.easeOut,
                            switchOutCurve: Curves.easeIn,
                            child: widget.isBusy
                                ? SizedBox(
                                    key: const ValueKey('loader'),
                                    width: iconSize,
                                    height: iconSize,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.5,
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(
                                              AppColors.gold),
                                    ),
                                  )
                                : Icon(
                                    key: const ValueKey('icon'),
                                    widget.icon,
                                    size: iconSize,
                                    color: AppColors.gold.withValues(
                                      alpha: widget.dimmed ? 0.50 : 1.0,
                                    ),
                                  ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: gap),

              // Title — FittedBox scales down; never clips or breaks words
              SizedBox(
                width: textW,
                height: textH,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: Text(
                    displayTitle,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.visible,
                    style: baseStyle.copyWith(fontSize: titleMaxSize),
                    textScaler: scaler,
                    textDirection: dir,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );

    // ── Spring bounce scale ───────────────────────────────────────────────────
    Widget tile = AnimatedBuilder(
      animation: _bounceAnim,
      builder: (_, child) {
        final bounce = widget.dimmed ? 1.0 : _bounceAnim.value;
        final hover =
            (_hovered && !_blocked && !_bounce.isAnimating) ? 1.015 : 1.0;
        return Transform.scale(
          scale: bounce * hover,
          child: child,
        );
      },
      child: innerTile,
    );

    // ── One-shot gold shimmer on tap ──────────────────────────────────────────
    tile = tile
        .animate(controller: _shimmerCtrl, autoPlay: false)
        .shimmer(
          duration: 700.ms,
          color: AppColors.gold.withValues(alpha: 0.70),
          angle: 22,
          size: 0.45,
        );

    // ── Continuous shimmer while generating (external controller = no new ticker)
    if (widget.isBusy) {
      tile = tile
          .animate(controller: _busyShimmerCtrl, autoPlay: false)
          .shimmer(
            duration: 1500.ms,
            color: AppColors.gold.withValues(alpha: 0.55),
            angle: 22,
            size: 0.50,
          );
    }

    // ── Breathing scale while generating (AnimatedBuilder — no flutter_animate)
    if (widget.isBusy) {
      tile = AnimatedBuilder(
        animation: _breatheCtrl,
        builder: (_, child) => Transform.scale(
          scale: 1.0 + 0.025 * _breatheCtrl.value,
          child: child,
        ),
        child: tile,
      );
    }

    // ── Outer stack — clipBehavior.none lets the gold glow bleed outside ─────
    return Semantics(
      button: true,
      enabled: !_blocked,
      label: widget.title,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Gold circle glow painted in its own layer, OUTSIDE all ShaderMask
          // wrappers, so it is never clipped into a rectangle.
          if (widget.isBusy)
            Positioned.fill(
              child: IgnorePointer(
                child: AnimatedBuilder(
                  animation: _breatheCtrl,
                  builder: (_, _) => CustomPaint(
                    painter: _CircularGoldGlowPainter(
                      color: AppColors.gold,
                      intensity: _breatheCtrl.value,
                    ),
                  ),
                ),
              ),
            ),

          MouseRegion(
            onEnter:
                supportsHover ? (_) => setState(() => _hovered = true) : null,
            onExit:
                supportsHover ? (_) => setState(() => _hovered = false) : null,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTapDown: _handleTapDown,
              onTapCancel: _handleTapCancel,
              onTap: _handleTap,
              child: Stack(
                children: [
                  tile,
                  if (widget.locked)
                    Positioned(
                      top: padV,
                      right: padH,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.35),
                          borderRadius: BorderRadius.circular(999),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.14),
                          ),
                        ),
                        child: const Icon(
                          Icons.lock,
                          size: 14,
                          color: Colors.white,
                        ),
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

/// Draws a soft circular Gaussian glow centered on the tile.
/// Uses [canvas.drawCircle] + [MaskFilter.blur] — same technique as the
/// ambient background — so the result is a true radial cloud, not a rectangle.
class _CircularGoldGlowPainter extends CustomPainter {
  final Color color;

  /// 0.0–1.0 from the breathing animation; pulses sigma and alpha slightly.
  final double intensity;

  const _CircularGoldGlowPainter({
    required this.color,
    required this.intensity,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;

    // Radius: slightly smaller than the tile's shortest dimension so the
    // glow emanates from inside the tile and blends outward organically.
    final radius = size.shortestSide * 0.30 + intensity * 5.0;

    // Sigma drives the Gaussian spread — larger = softer, more diffuse.
    final sigma = 26.0 + intensity * 8.0;

    // Alpha pulses gently with the breathing animation.
    final alpha = 0.44 + intensity * 0.14;

    final paint = Paint()
      ..color = color.withValues(alpha: alpha)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, sigma);

    canvas.drawCircle(Offset(cx, cy), radius, paint);
  }

  @override
  bool shouldRepaint(_CircularGoldGlowPainter old) =>
      old.intensity != intensity || old.color != color;
}

