// lib/core/widgets/feature_lock_overlay.dart
//
// Shared premium-gate overlay used across the app.
// Wraps any child with a grayscale+opacity filter and a centred lock overlay
// when the current plan is not premium. Tapping navigates to /settings.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/limit/usage_service.dart';
import 'package:ayara/l10n/app_localizations.dart';

class FeatureLockOverlay extends StatelessWidget {
  final Widget child;

  const FeatureLockOverlay({super.key, required this.child});

  // ITU-R BT.709 grayscale + 45 % opacity — avoids BlendMode.saturation
  // leaking to the parent compositing layer.
  static const _kGrayscaleFilter = ColorFilter.matrix([
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0,      0,      0,      0.45, 0,
  ]);

  // Minimum Stack height so the lock overlay (icon + text + button ≈ 130 px)
  // always fits without causing a render overflow on short children.
  static const double _kMinHeight = 140.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: UsageService.instance,
      builder: (context, _) {
        final isPremium =
            (UsageService.instance.current?.plan ?? 'basic') == 'premium';

        if (isPremium) return child;

        final t = AppLocalizations.of(context);

        return Stack(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: _kMinHeight),
              child: ColorFiltered(
                colorFilter: _kGrayscaleFilter,
                child: IgnorePointer(child: child),
              ),
            ),
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  HapticFeedback.selectionClick();
                  Navigator.pushNamed(context, '/settings');
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.38),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.22),
                          ),
                        ),
                        child: const Icon(
                          Icons.lock_rounded,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        t.premiumFeatureLocked,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.92),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          height: 1.3,
                          shadows: [
                            Shadow(
                              color: Colors.black.withValues(alpha: 0.65),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 9),
                        decoration: BoxDecoration(
                          color: AppColors.gold.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                            color: AppColors.gold.withValues(alpha: 0.70),
                            width: 1.2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.30),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Text(
                          t.premiumButtonBecomePremium,
                          style: const TextStyle(
                            color: AppColors.gold,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
