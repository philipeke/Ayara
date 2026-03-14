// lib/features/qibla/qibla_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';

import 'package:ayara/features/qibla/widgets/qibla_compass_widget.dart';
import 'package:ayara/features/qibla/widgets/qibla_info_card.dart';
import 'package:ayara/features/qibla/widgets/tasbih_fatima_widget.dart';
import 'package:ayara/features/limit/usage_service.dart';

class QiblaScreen extends StatefulWidget {
  const QiblaScreen({super.key});

  @override
  State<QiblaScreen> createState() => _QiblaScreenState();
}

class _QiblaScreenState extends State<QiblaScreen> {
  Position? _position;
  bool _locationDenied = false;
  bool _locationPermanentlyDenied = false;
  bool _locationLoading = true;
  bool _gpsUnavailable = false;

  @override
  void initState() {
    super.initState();
    UsageService.instance.addListener(_onPlanChanged);
    _maybeInitLocation();
  }

  @override
  void dispose() {
    UsageService.instance.removeListener(_onPlanChanged);
    super.dispose();
  }

  void _onPlanChanged() {
    if (!mounted) return;
    final isPremium =
        (UsageService.instance.current?.plan ?? 'basic') == 'premium';
    // If the user just upgraded and location hasn't been loaded yet, start now.
    if (isPremium && _position == null && !_locationDenied && !_locationPermanentlyDenied) {
      _initLocation();
    }
  }

  void _maybeInitLocation() {
    final snap = UsageService.instance.current;
    // If plan is not yet known, wait for _onPlanChanged.
    // If plan is known and blessed, start location. Otherwise stay idle.
    if (snap == null) return;
    final isPremium = snap.plan == 'premium';
    if (isPremium) {
      _initLocation();
    } else {
      // Not premium — keep locationLoading=false, never prompt for location.
      setState(() => _locationLoading = false);
    }
  }

  Future<void> _initLocation() async {
    if (!mounted) return;
    setState(() {
      _locationLoading = true;
      _locationDenied = false;
      _locationPermanentlyDenied = false;
      _gpsUnavailable = false;
    });

    // ── 1. Check permission (no prompt yet) ────────────────────────────────
    var perm = await Geolocator.checkPermission();

    // ── 2. Request if denied (but not permanently) ─────────────────────────
    if (perm == LocationPermission.denied) {
      perm = await Geolocator.requestPermission();
    }

    // ── 3. Permanently denied → show settings link ─────────────────────────
    if (perm == LocationPermission.deniedForever) {
      if (mounted) {
        setState(() {
          _locationDenied = true;
          _locationPermanentlyDenied = true;
          _locationLoading = false;
        });
      }
      return;
    }

    // ── 4. Still denied after prompt ───────────────────────────────────────
    if (perm == LocationPermission.denied) {
      if (mounted) {
        setState(() {
          _locationDenied = true;
          _locationLoading = false;
        });
      }
      return;
    }

    // ── 5. Permission granted — fetch position ─────────────────────────────
    await _fetchPosition();
  }

  Future<void> _fetchPosition() async {
    try {
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 25),
        ),
      );
      if (mounted) {
        setState(() {
          _position = pos;
          _gpsUnavailable = false;
          _locationLoading = false;
        });
      }
    } catch (_) {
      // GPS timeout or service unavailable — try last known position
      try {
        final last = await Geolocator.getLastKnownPosition();
        if (mounted) {
          setState(() {
            _position = last;
            _gpsUnavailable = last == null;
            _locationLoading = false;
          });
        }
      } catch (_) {
        if (mounted) {
          setState(() {
            _gpsUnavailable = true;
            _locationLoading = false;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          // Background gradient
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
          // Gold shimmer top-right
          Positioned(
            top: 0,
            right: 0,
            child: IgnorePointer(
              child: SizedBox(
                width: 260,
                height: 260,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        AppColors.gold.withValues(alpha: 0.14),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Gold shimmer bottom-left
          Positioned(
            bottom: 0,
            left: 0,
            child: IgnorePointer(
              child: SizedBox(
                width: 220,
                height: 220,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        AppColors.gold.withValues(alpha: 0.09),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Soft centre glow
          const Positioned.fill(
            child: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.50,
                    colors: [
                      Color(0x18C9A84C),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ),

          SafeArea(
            child: CustomScrollView(
              slivers: [
                // Top bar: back arrow + title + settings
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(4, 6, 8, 0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: AppColors.gold,
                          ),
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            Navigator.of(context).pop();
                          },
                        ),
                        Expanded(
                          child: Text(
                            t.guidancePageTitle,
                            style: GoogleFonts.lora(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: AppColors.gold,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),
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
                  ),
                ),

                // ── Qibla compass ──────────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AnimatedBuilder(
                      animation: UsageService.instance,
                      builder: (context, _) {
                        final isPremium =
                            (UsageService.instance.current?.plan ?? 'basic') ==
                                'premium';
                        if (!isPremium) {
                          // Real dead compass — no sensors, frozen, greyed out
                          return _FeatureLock(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.explore_rounded,
                                        color: AppColors.gold, size: 18),
                                    const SizedBox(width: 8),
                                    Text(
                                      t.qiblaTitle.toUpperCase(),
                                      style: const TextStyle(
                                        color: AppColors.gold,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Center(
                                  child: QiblaCompassWidget(
                                    position: null,
                                    locationDenied: true,
                                    locationPermanentlyDenied: false,
                                    gpsUnavailable: false,
                                    onRetry: () {},
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.explore_rounded,
                                    color: AppColors.gold, size: 18),
                                const SizedBox(width: 8),
                                Text(
                                  t.qiblaTitle.toUpperCase(),
                                  style: const TextStyle(
                                    color: AppColors.gold,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.4,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: _locationLoading
                                  ? Column(
                                      children: [
                                        const SizedBox(
                                          width: 240,
                                          height: 240,
                                          child: Center(
                                            child: CircularProgressIndicator(
                                              color: AppColors.gold,
                                              strokeWidth: 2,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        Text(
                                          t.qiblaCompassLoading,
                                          style: TextStyle(
                                            color: Colors.white
                                                .withValues(alpha: 0.55),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    )
                                  : QiblaCompassWidget(
                                      position: _position,
                                      locationDenied: _locationDenied,
                                      locationPermanentlyDenied:
                                          _locationPermanentlyDenied,
                                      gpsUnavailable: _gpsUnavailable,
                                      onRetry: _fetchPosition,
                                    ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),

                // ── Qibla info card (bearing + live heading) ───────────────
                SliverToBoxAdapter(
                  child: AnimatedBuilder(
                    animation: UsageService.instance,
                    builder: (context, _) {
                      final isPremium =
                          (UsageService.instance.current?.plan ?? 'basic') ==
                              'premium';
                      // Show a locked placeholder for standard users;
                      // hide only when loading/denied (no meaningful UI to lock)
                      final hasData = _position != null &&
                          !_locationLoading &&
                          !_locationDenied &&
                          !_gpsUnavailable;
                      if (!isPremium) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: _FeatureLock(
                            child: _InfoCardPlaceholder(),
                          ),
                        );
                      }
                      if (!hasData) return const SizedBox.shrink();
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: QiblaInfoCard(position: _position!),
                      );
                    },
                  ),
                ),

                // ── Tasbih al-Zahrā ────────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 28, 0, 40),
                    child: _FeatureLock(child: TasbihFatimaWidget()),
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

// ─────────────────────────────────────────────────────────────────────────────
// Premium gate overlay — greys out child and shows a lock when not Barakah
// ─────────────────────────────────────────────────────────────────────────────

class _FeatureLock extends StatelessWidget {
  final Widget child;
  const _FeatureLock({required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: UsageService.instance,
      builder: (context, _) {
        final usage = UsageService.instance.current;
        final isPremium = (usage?.plan ?? 'basic') == 'premium';

        if (isPremium) return child;

        final t = AppLocalizations.of(context);

        return Stack(
          children: [
            // Greyed-out, non-interactive content — grayscale + 45% opacity
            // via color matrix (avoids BlendMode.saturation leaking to parent layer)
            ColorFiltered(
              colorFilter: const ColorFilter.matrix([
                // Luminance grayscale rows (ITU-R BT.709)
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                // Alpha row — scale to 45% opacity
                0,      0,      0,      0.45, 0,
              ]),
              child: IgnorePointer(child: child),
            ),
            // Lock overlay — no dark box, just centered icon + text on top
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

// ─────────────────────────────────────────────────────────────────────────────
// Static placeholder for the info card — used as the child of _FeatureLock
// so standard users see a greyed/locked version of the two tiles.
// ─────────────────────────────────────────────────────────────────────────────

class _InfoCardPlaceholder extends StatelessWidget {
  const _InfoCardPlaceholder();

  Widget _tile(String label, String deg, String cardinal) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.navy.withValues(alpha: 0.55),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.gold.withValues(alpha: 0.30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: AppColors.gold.withValues(alpha: 0.70),
                fontSize: 9,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.6,
              ),
            ),
            const SizedBox(height: 6),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  deg,
                  style: const TextStyle(
                    color: AppColors.gold,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    height: 1.0,
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  cardinal,
                  style: TextStyle(
                    color: AppColors.gold.withValues(alpha: 0.72),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    height: 1.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              '———',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.30),
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          _tile('QIBLA BEARING', '127°', 'SE'),
          const SizedBox(width: 12),
          _tile('YOUR HEADING', '042°', 'NE'),
        ],
      ),
    );
  }
}
