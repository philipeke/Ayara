// lib/features/premium/widgets/glass_button.dart
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

enum GlassButtonVariant { navy, gold, glass }

class GlassButton extends StatefulWidget {
  const GlassButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.busy = false,
    this.height = 52,
    this.variant = GlassButtonVariant.navy,
    this.badgeLabel,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool busy;
  final double height;
  final GlassButtonVariant variant;

  /// Optional badge text overlaid on top-right (e.g. "Best value").
  final String? badgeLabel;

  bool get _disabled => onPressed == null || busy;

  @override
  State<GlassButton> createState() => _GlassButtonState();
}

class _GlassButtonState extends State<GlassButton>
    with TickerProviderStateMixin {
  // Ayara premium gold palette
  static const Color _gold = Color(0xFFC9A84C);
  static const Color _goldLight = Color(0xFFE9C980);

  // Spring bounce — same feel as CategoryTile, slightly tighter for buttons
  late final AnimationController _bounce = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 480),
  );

  late final Animation<double> _bounceAnim = TweenSequence<double>([
    TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.93), weight: 10),
    TweenSequenceItem(
      tween: Tween(begin: 0.93, end: 1.04)
          .chain(CurveTween(curve: Curves.easeOut)),
      weight: 24,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 1.04, end: 0.99)
          .chain(CurveTween(curve: Curves.easeIn)),
      weight: 10,
    ),
    TweenSequenceItem(tween: Tween(begin: 0.99, end: 1.0), weight: 4),
  ]).animate(_bounce);

  // One-shot gold shimmer on tap
  late final AnimationController _shimmerCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 650),
  );

  bool _hovered = false;

  @override
  void dispose() {
    _bounce.dispose();
    _shimmerCtrl.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails _) {
    if (widget._disabled) return;
    HapticFeedback.lightImpact();
    _bounce.forward(from: 0);
    _shimmerCtrl.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(18);

    final bool isGold = widget.variant == GlassButtonVariant.gold;
    final bool isGlass = widget.variant == GlassButtonVariant.glass;
    final bool dis = widget._disabled;

    final baseNavy = const Color(0xFF1A2744).withValues(alpha: dis ? 0.50 : 0.92);
    final baseGlass = const Color(0xFF1A2744).withValues(alpha: dis ? 0.46 : 0.78);


    final tint = isGold
        ? _goldLight
        : isGlass
            ? const Color(0xFFFFFFFF)
            : _gold;

    final glow = isGold
        ? _goldLight
        : isGlass
            ? _goldLight
            : _gold;

    final border = isGold
        ? _goldLight.withValues(alpha: dis ? 0.14 : 0.18)
        : Colors.white.withValues(alpha: dis ? 0.14 : (isGlass ? 0.18 : 0.26));

    final supportsHover = Theme.of(context).platform == TargetPlatform.macOS ||
        Theme.of(context).platform == TargetPlatform.linux ||
        Theme.of(context).platform == TargetPlatform.windows;

    // ── Core button visual ────────────────────────────────────────────────────
    final buttonCore = Opacity(
      opacity: dis ? 0.62 : 1.0,
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadius,
        clipBehavior: Clip.antiAlias,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: _handleTapDown,
          onTap: dis ? null : widget.onPressed,
          child: SizedBox(
            height: widget.height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                  child: const SizedBox.expand(),
                ),

                // Base + shadow
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    gradient: isGold
                        ? LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              _goldLight.withValues(alpha: dis ? 0.55 : 1.0),
                              _gold.withValues(alpha: dis ? 0.55 : 1.0),
                            ],
                          )
                        : null,
                    color: isGold
                        ? null // gradient covers the background; color + gradient conflict causes assert in debug
                        : (isGlass ? baseGlass : baseNavy),
                    border: Border.all(color: border, width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: glow.withValues(
                          alpha: dis
                              ? 0.08
                              : isGold
                                  ? 0.16
                                  : isGlass
                                      ? 0.12
                                      : 0.18,
                        ),
                        blurRadius: isGold ? 18 : (isGlass ? 18 : 22),
                        offset: const Offset(0, 10),
                      ),
                      BoxShadow(
                        color: Colors.black.withValues(alpha: dis ? 0.08 : 0.16),
                        blurRadius: 18,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: const SizedBox.expand(),
                ),

                // Warm shade overlay (gold only)
                if (isGold)
                  Positioned.fill(
                    child: IgnorePointer(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: borderRadius,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withValues(alpha: dis ? 0.06 : 0.03),
                              Colors.transparent,
                              Colors.black.withValues(alpha: dis ? 0.08 : 0.04),
                            ],
                            stops: const [0.0, 0.55, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ),

                // Tint glow
                Positioned.fill(
                  child: IgnorePointer(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: borderRadius,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            tint.withValues(
                              alpha: dis
                                  ? 0.05
                                  : isGold
                                      ? 0.10
                                      : isGlass
                                          ? 0.10
                                          : 0.28,
                            ),
                            Colors.transparent,
                            tint.withValues(
                              alpha: dis
                                  ? 0.03
                                  : isGold
                                      ? 0.06
                                      : isGlass
                                          ? 0.06
                                          : 0.18,
                            ),
                          ],
                          stops: const [0.0, 0.55, 1.0],
                        ),
                      ),
                    ),
                  ),
                ),

                // Top highlight (not for gold)
                if (!isGold)
                  Positioned.fill(
                    child: IgnorePointer(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: borderRadius,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.white.withValues(
                                alpha:
                                    dis ? 0.10 : (isGlass ? 0.14 : 0.18),
                              ),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                // Inner stroke
                Positioned.fill(
                  child: IgnorePointer(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(
                            color: isGold
                                ? _goldLight.withValues(
                                    alpha: dis ? 0.07 : 0.11)
                                : Colors.white.withValues(
                                    alpha:
                                        dis ? 0.08 : (isGlass ? 0.12 : 0.14),
                                  ),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Label + icon
                Center(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 160),
                    switchInCurve: Curves.easeOut,
                    switchOutCurve: Curves.easeIn,
                    child: widget.busy
                        ? const SizedBox(
                            key: ValueKey('busy'),
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : LayoutBuilder(
                            key: const ValueKey('content'),
                            builder: (context, constraints) {
                              final double maxW = constraints.maxWidth > 24
                                  ? constraints.maxWidth - 24
                                  : constraints.maxWidth;
                              return ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: maxW),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        if (widget.icon != null) ...[
                                          Icon(
                                            widget.icon,
                                            size: 18,
                                            color: isGold
                                                ? const Color(0xFF0C3A1E)
                                                : Colors.white.withValues(
                                                    alpha: 0.95),
                                          ),
                                          const SizedBox(width: 10),
                                        ],
                                        Text(
                                          widget.label,
                                          maxLines: 1,
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: isGold
                                                ? const Color(0xFF0C3A1E)
                                                : Colors.white,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 0.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // ── Spring bounce scale ───────────────────────────────────────────────────
    Widget animated = AnimatedBuilder(
      animation: _bounceAnim,
      builder: (_, child) {
        final bounce = dis ? 1.0 : _bounceAnim.value;
        final hover = (_hovered && !dis && !_bounce.isAnimating) ? 1.012 : 1.0;
        return Transform.scale(
          scale: bounce * hover,
          child: child,
        );
      },
      child: buttonCore,
    );

    // ── One-shot shimmer on tap ───────────────────────────────────────────────
    animated = animated
        .animate(controller: _shimmerCtrl, autoPlay: false)
        .shimmer(
          duration: 650.ms,
          color: isGold
              ? _goldLight.withValues(alpha: 0.65)
              : _gold.withValues(alpha: 0.55),
          angle: 22,
          size: 0.50,
        );

    // ── Hover wrapper (desktop) ───────────────────────────────────────────────
    Widget result = supportsHover
        ? MouseRegion(
            onEnter: (_) => setState(() => _hovered = true),
            onExit: (_) => setState(() => _hovered = false),
            child: animated,
          )
        : animated;

    // ── "Best value" badge overlay ────────────────────────────────────────────
    if (widget.badgeLabel != null) {
      result = Stack(
        clipBehavior: Clip.none,
        children: [
          result,
          Positioned(
            top: -9,
            right: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFE9C980), Color(0xFFC9A84C)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(999),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFC9A84C).withValues(alpha: 0.55),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                widget.badgeLabel!,
                style: const TextStyle(
                  color: Color.fromARGB(255, 55, 44, 10),
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.3,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return result;
  }
}

