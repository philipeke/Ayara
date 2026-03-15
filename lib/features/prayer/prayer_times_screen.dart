// lib/features/prayer/prayer_times_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/widgets/feature_lock_overlay.dart';
import 'package:ayara/core/services/prayer_data_notifier.dart';
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

                // Prayer tracker
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: _PrayerTracker(),
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
                          return FeatureLockOverlay(
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
        // ── Prayer times list ───────────────────────────────────────────────
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
                    Expanded(
                      child: Text(
                        prayerNames[i],
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    // Placeholder time dash
                    Text(
                      '——:——',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.25),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        const SizedBox(height: 12),

        // ── View full month button placeholder ──────────────────────────────
        Center(
          child: OutlinedButton.icon(
            icon: const Icon(Icons.calendar_month_rounded, size: 16),
            label: Text(t.monthlyPrayerTimesViewButton),
            onPressed: null, // disabled — greyed-out under the lock overlay
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.gold,
              side: BorderSide(color: AppColors.gold.withValues(alpha: 0.50)),
              backgroundColor: AppColors.gold.withValues(alpha: 0.07),
              padding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                letterSpacing: 0.2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),

        // ── Prayer notifications placeholder ────────────────────────────────
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
                padding: const EdgeInsets.fromLTRB(18, 16, 12, 0),
                child: Row(
                  children: [
                    const Icon(Icons.notifications_rounded,
                        color: AppColors.gold, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        t.prayerNotificationsTitle.toUpperCase(),
                        style: const TextStyle(
                          color: AppColors.gold,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                    // Decorative disabled switch
                    Switch(
                      value: false,
                      onChanged: null,
                      inactiveThumbColor:
                          Colors.white.withValues(alpha: 0.35),
                      inactiveTrackColor:
                          Colors.white.withValues(alpha: 0.10),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 16),
                child: Text(
                  t.prayerNotificationsDescription,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.60),
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 18, 16),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: const Icon(
                        Icons.notifications_active_rounded,
                        size: 18),
                    label: Text(t.prayerNotificationsEnable),
                    onPressed: null, // disabled — under lock overlay
                    style: FilledButton.styleFrom(
                      disabledBackgroundColor:
                          AppColors.gold.withValues(alpha: 0.60),
                      disabledForegroundColor: AppColors.islamicDeep,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                      padding:
                          const EdgeInsets.symmetric(vertical: 13),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Prayer Tracker — daily 5-prayer checklist with streak
// ─────────────────────────────────────────────────────────────────────────────

class _PrayerTracker extends StatefulWidget {
  const _PrayerTracker();

  @override
  State<_PrayerTracker> createState() => _PrayerTrackerState();
}

class _PrayerTrackerState extends State<_PrayerTracker> {
  static const _prayerKeys = ['fajr', 'dhuhr', 'asr', 'maghrib', 'isha'];
  static const _prayerEmojis = ['🌅', '☀️', '🌤️', '🌇', '🌙'];

  Map<String, bool> _checked = {
    'fajr': false,
    'dhuhr': false,
    'asr': false,
    'maghrib': false,
    'isha': false,
  };
  int _streak = 0;
  bool _loading = true;

  String get _todayKey =>
      DateTime.now().toIso8601String().substring(0, 10);

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final today = _todayKey;
    final stored = prefs.getString('pt_date') ?? '';

    if (stored != today) {
      // Day changed — check if streak is broken (missed a day)
      if (stored.isNotEmpty) {
        final yesterday = DateTime.now()
            .subtract(const Duration(days: 1))
            .toIso8601String()
            .substring(0, 10);
        final lastCompleteDate =
            prefs.getString('pt_last_complete_date') ?? '';
        // If the last completed day is not yesterday or today, streak is broken
        if (lastCompleteDate != yesterday && lastCompleteDate != today) {
          await prefs.setInt('pt_streak', 0);
        }
      }
      await prefs.setString('pt_date', today);
      for (final k in _prayerKeys) {
        await prefs.setBool('pt_${today}_$k', false);
      }
    }

    final checked = Map<String, bool>.fromEntries(
      _prayerKeys.map((k) =>
          MapEntry(k, prefs.getBool('pt_${today}_$k') ?? false)),
    );

    if (mounted) {
      setState(() {
        _checked = checked;
        _streak = prefs.getInt('pt_streak') ?? 0;
        _loading = false;
      });
    }
  }

  Future<void> _toggle(String key) async {
    HapticFeedback.lightImpact();
    final prefs = await SharedPreferences.getInstance();
    final today = _todayKey;
    final newVal = !(_checked[key] ?? false);
    await prefs.setBool('pt_${today}_$key', newVal);
    setState(() => _checked[key] = newVal);

    // All 5 complete — celebrate + extend streak (only once per day)
    final allDone = _checked.values.every((v) => v);
    if (allDone) {
      HapticFeedback.heavyImpact();
      final lastCompleteDate =
          prefs.getString('pt_last_complete_date') ?? '';
      if (lastCompleteDate != today) {
        final newStreak = _streak + 1;
        await prefs.setInt('pt_streak', newStreak);
        await prefs.setString('pt_last_complete_date', today);
        setState(() => _streak = newStreak);
      }
    }
    // Notify home screen summary card to refresh
    PrayerDataNotifier.instance.notify();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const SizedBox.shrink();
    final t = AppLocalizations.of(context);
    final completedCount = _checked.values.where((v) => v).length;
    final allDone = completedCount == 5;

    final prayerNames = [
      t.prayerTimesFajr,
      t.prayerTimesDhuhr,
      t.prayerTimesAsr,
      t.prayerTimesMaghrib,
      t.prayerTimesIsha,
    ];

    final accentColor =
        allDone ? AppColors.emeraldBright : AppColors.gold;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: accentColor.withValues(alpha: 0.28),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header row ───────────────────────────────────────────────────
          Row(
            children: [
              Icon(
                allDone
                    ? Icons.check_circle_rounded
                    : Icons.radio_button_unchecked_rounded,
                color: accentColor,
                size: 18,
              ),
              const SizedBox(width: 8),
              Text(
                t.prayerTrackerTitle,
                style: TextStyle(
                  color: accentColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
              const Spacer(),
              if (_streak > 0)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.gold.withValues(alpha: 0.14),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: AppColors.gold.withValues(alpha: 0.38)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.local_fire_department_rounded,
                          color: AppColors.goldBright, size: 13),
                      const SizedBox(width: 4),
                      Text(
                        t.prayerTrackerDayStreak(_streak),
                        style: const TextStyle(
                          color: AppColors.goldBright,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),

          const SizedBox(height: 16),

          // ── Progress bar ─────────────────────────────────────────────────
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: completedCount / 5,
                    minHeight: 5,
                    backgroundColor:
                        Colors.white.withValues(alpha: 0.08),
                    valueColor: AlwaysStoppedAnimation<Color>(accentColor),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                t.prayerTrackerProgress(completedCount, 5),
                style: TextStyle(
                  color: accentColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          // ── Prayer rows ──────────────────────────────────────────────────
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.03),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                  color: Colors.white.withValues(alpha: 0.08)),
            ),
            child: Column(
              children: List.generate(_prayerKeys.length, (i) {
                final key = _prayerKeys[i];
                final isChecked = _checked[key] ?? false;
                final isLast = i == _prayerKeys.length - 1;

                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => _toggle(key),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 13),
                    decoration: BoxDecoration(
                      border: isLast
                          ? null
                          : Border(
                              bottom: BorderSide(
                                color: Colors.white.withValues(alpha: 0.07),
                              ),
                            ),
                    ),
                    child: Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 220),
                          curve: Curves.easeOut,
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isChecked
                                ? AppColors.emeraldBright
                                    .withValues(alpha: 0.15)
                                : Colors.transparent,
                            border: Border.all(
                              color: isChecked
                                  ? AppColors.emeraldBright
                                  : Colors.white.withValues(alpha: 0.3),
                              width: 1.5,
                            ),
                          ),
                          child: isChecked
                              ? const Icon(Icons.check_rounded,
                                  color: AppColors.emeraldBright, size: 14)
                              : null,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          _prayerEmojis[i],
                          style: const TextStyle(fontSize: 15),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          prayerNames[i],
                          style: TextStyle(
                            color: isChecked
                                ? AppColors.emeraldBright
                                : AppColors.textPrimary,
                            fontSize: 14,
                            fontWeight: isChecked
                                ? FontWeight.w600
                                : FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                        ),
                        const Spacer(),
                        if (isChecked)
                          Text(
                            t.prayerTrackerPrayed,
                            style: TextStyle(
                              color: AppColors.emeraldBright
                                  .withValues(alpha: 0.8),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),

          // ── Completion message ───────────────────────────────────────────
          if (allDone) ...[
            const SizedBox(height: 14),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.emeraldBright.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: AppColors.emeraldBright.withValues(alpha: 0.35)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.stars_rounded,
                      color: AppColors.emeraldBright, size: 18),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      t.prayerTrackerAllComplete,
                      style: TextStyle(
                        color: AppColors.emeraldBright
                            .withValues(alpha: 0.9),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
