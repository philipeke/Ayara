// lib/features/qibla/qibla_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';

import 'package:ayara/features/qibla/widgets/qibla_compass_widget.dart';
import 'package:ayara/features/qibla/widgets/prayer_times_widget.dart';
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

                // ── Divider ────────────────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 28, 20, 28),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AppColors.gold.withValues(alpha: 0.25),
                            thickness: 0.7,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Icon(
                            Icons.star_rounded,
                            color: AppColors.gold.withValues(alpha: 0.45),
                            size: 14,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: AppColors.gold.withValues(alpha: 0.25),
                            thickness: 0.7,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ── Prayer times + notifications ───────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                    child: AnimatedBuilder(
                      animation: UsageService.instance,
                      builder: (context, _) {
                        final isPremium =
                            (UsageService.instance.current?.plan ?? 'basic') ==
                                'premium';
                        if (!isPremium) {
                          // Locked prayer times — real names, no time values
                          final prayerNames = [
                            t.prayerTimesFajr,
                            t.prayerTimesDhuhr,
                            t.prayerTimesAsr,
                            t.prayerTimesMaghrib,
                            t.prayerTimesIsha,
                          ];
                          const prayerEmojis = [
                            '🌅', '☀️', '🌤️', '🌇', '🌙'
                          ];
                          return _FeatureLock(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section header
                                Row(
                                  children: [
                                    const Icon(Icons.access_time_rounded,
                                        color: AppColors.gold, size: 18),
                                    const SizedBox(width: 8),
                                    Text(
                                      t.prayerTimesTitle.toUpperCase(),
                                      style: const TextStyle(
                                        color: AppColors.gold,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                // Prayer rows — name only, no time
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: 0.04),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: AppColors.gold.withValues(alpha: 0.22),
                                    ),
                                  ),
                                  child: Column(
                                    children: List.generate(5, (i) {
                                      final isLast = i == 4;
                                      return Container(
                                        decoration: BoxDecoration(
                                          border: isLast
                                              ? null
                                              : Border(
                                                  bottom: BorderSide(
                                                    color: AppColors.gold
                                                        .withValues(alpha: 0.10),
                                                  ),
                                                ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18, vertical: 14),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                              child: Icon(Icons.circle_outlined,
                                                  size: 10,
                                                  color: Colors.white
                                                      .withValues(alpha: 0.25)),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              prayerEmojis[i],
                                              style: const TextStyle(fontSize: 15),
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              prayerNames[i],
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withValues(alpha: 0.85),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.2,
                                              ),
                                            ),
                                            // No time shown intentionally
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                // Notification section — header + disabled switch
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: 0.04),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: AppColors.gold.withValues(alpha: 0.22),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(18, 16, 12, 0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                                Icons.notifications_rounded,
                                                color: AppColors.gold,
                                                size: 18),
                                            const SizedBox(width: 8),
                                            Expanded(
                                              child: Text(
                                                t.prayerNotificationsTitle
                                                    .toUpperCase(),
                                                style: const TextStyle(
                                                  color: AppColors.gold,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.4,
                                                ),
                                              ),
                                            ),
                                            Switch(
                                              value: false,
                                              onChanged: null,
                                              inactiveThumbColor: Colors.white
                                                  .withValues(alpha: 0.35),
                                              inactiveTrackColor: Colors.white
                                                  .withValues(alpha: 0.10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(18, 10, 18, 16),
                                        child: Text(
                                          t.prayerNotificationsDescription,
                                          style: TextStyle(
                                            color:
                                                Colors.white.withValues(alpha: 0.60),
                                            fontSize: 13,
                                            height: 1.5,
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
                        if (_locationLoading) return const SizedBox.shrink();
                        return PrayerTimesWidget(
                          position: _position,
                          locationDenied: _locationDenied,
                          locationPermanentlyDenied: _locationPermanentlyDenied,
                          gpsUnavailable: _gpsUnavailable,
                          onRetry: _fetchPosition,
                        );
                      },
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

        final t = AppLocalizations.of(context)!;

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


