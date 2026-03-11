// lib/features/prayer/prayer_times_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/qibla/widgets/prayer_times_widget.dart';
import 'package:ayara/features/limit/usage_service.dart';

class PrayerTimesScreen extends StatefulWidget {
  const PrayerTimesScreen({super.key});

  @override
  State<PrayerTimesScreen> createState() => _PrayerTimesScreenState();
}

class _PrayerTimesScreenState extends State<PrayerTimesScreen> {
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
    if (isPremium &&
        _position == null &&
        !_locationDenied &&
        !_locationPermanentlyDenied) {
      _initLocation();
    }
  }

  void _maybeInitLocation() {
    final snap = UsageService.instance.current;
    if (snap == null) return;
    final isPremium = snap.plan == 'premium';
    if (isPremium) {
      _initLocation();
    } else {
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

    var perm = await Geolocator.checkPermission();
    if (perm == LocationPermission.denied) {
      perm = await Geolocator.requestPermission();
    }
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
    if (perm == LocationPermission.denied) {
      if (mounted) {
        setState(() {
          _locationDenied = true;
          _locationLoading = false;
        });
      }
      return;
    }
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
                            t.prayerTimesTitle,
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

                // Prayer times widget
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                    child: AnimatedBuilder(
                      animation: UsageService.instance,
                      builder: (context, _) {
                        final isPremium =
                            (UsageService.instance.current?.plan ?? 'basic') ==
                                'premium';
                        if (!isPremium) {
                          return _FeatureLock(
                            child: _LockedPrayerList(t: t),
                          );
                        }
                        if (_locationLoading) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 60),
                              child: CircularProgressIndicator(
                                color: AppColors.gold,
                                strokeWidth: 2,
                              ),
                            ),
                          );
                        }
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
// Locked placeholder — shown to non-premium users
// ─────────────────────────────────────────────────────────────────────────────

class _LockedPrayerList extends StatelessWidget {
  final AppLocalizations t;
  const _LockedPrayerList({required this.t});

  @override
  Widget build(BuildContext context) {
    final prayerNames = [
      t.prayerTimesFajr,
      t.prayerTimesDhuhr,
      t.prayerTimesAsr,
      t.prayerTimesMaghrib,
      t.prayerTimesIsha,
    ];
    const prayerEmojis = ['🌅', '☀️', '🌤️', '🌇', '🌙'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                            color: AppColors.gold.withValues(alpha: 0.10),
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
                          color: Colors.white.withValues(alpha: 0.25)),
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
                        color: Colors.white.withValues(alpha: 0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Premium gate overlay
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
            ColorFiltered(
              colorFilter: const ColorFilter.matrix([
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0,      0,      0,      0.45, 0,
              ]),
              child: IgnorePointer(child: child),
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
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
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
