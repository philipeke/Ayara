// lib/features/qibla/qibla_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/chat/services/chat_service.dart';

import 'package:ayara/features/qibla/widgets/qibla_compass_widget.dart';
import 'package:ayara/features/qibla/widgets/prayer_times_widget.dart';
import 'package:ayara/features/qibla/ask_result_screen.dart';
import 'package:ayara/core/utils/error_ui.dart';
import 'package:ayara/features/limit/usage_service.dart';

class QiblaScreen extends StatefulWidget {
  final PageController pageController;

  const QiblaScreen({super.key, required this.pageController});

  @override
  State<QiblaScreen> createState() => _QiblaScreenState();
}

class _QiblaScreenState extends State<QiblaScreen> {
  final TextEditingController _askController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  Position? _position;
  bool _locationDenied = false;
  bool _locationPermanentlyDenied = false;
  bool _locationLoading = true;
  bool _gpsUnavailable = false;

  bool _askLoading = false;
  String? _askError;

  @override
  void initState() {
    super.initState();
    UsageService.instance.addListener(_onPlanChanged);
    _maybeInitLocation();
  }

  @override
  void dispose() {
    UsageService.instance.removeListener(_onPlanChanged);
    _askController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onPlanChanged() {
    if (!mounted) return;
    final isBlessed =
        (UsageService.instance.current?.plan ?? 'grace') == 'blessed';
    // If the user just upgraded and location hasn't been loaded yet, start now.
    if (isBlessed && _position == null && !_locationDenied && !_locationPermanentlyDenied) {
      _initLocation();
    }
  }

  void _maybeInitLocation() {
    final snap = UsageService.instance.current;
    // If plan is not yet known, wait for _onPlanChanged.
    // If plan is known and blessed, start location. Otherwise stay idle.
    if (snap == null) return;
    final isBlessed = snap.plan == 'blessed';
    if (isBlessed) {
      _initLocation();
    } else {
      // Not blessed — keep locationLoading=false, never prompt for location.
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

  Future<void> _submitQuestion() async {
    final question = _askController.text.trim();
    final t = AppLocalizations.of(context);

    if (question.isEmpty) {
      setState(() => _askError = t.askPageInputEmptyError);
      return;
    }

    setState(() {
      _askError = null;
      _askLoading = true;
    });

    _focusNode.unfocus();

    try {
      final response = await ChatService.sendPrompt(
        question,
        context: context,
      );

      if (!mounted) return;

      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => AskResultScreen(
            question: question,
            response: response,
          ),
        ),
      );
    } catch (e, st) {
      if (!mounted) return;
      final msg = e.toString().contains('Exception: ')
          ? e.toString().split('Exception: ').last
          : e.toString();
      // Silently swallow known rate/auth errors (already shown as snackbar)
      final known = {
        'local_rate_limited',
        'remote_rate_limited',
        'appcheck_throttled',
        'ai_unauthenticated',
        'ai_rate_limited',
        'ai_timeout',
        'ai_unavailable',
        'ai_misconfigured',
        'ai_error',
        'request_in_flight',
        'credits_exhausted',
        'guest_not_allowed',
        'device_bound_to_other_account',
        'device_key_mismatch',
      };
      if (!known.contains(msg)) {
        showAppErrorSnack(context, e, stackTrace: st);
      }
    } finally {
      if (mounted) setState(() => _askLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.islamicDeep,
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
                    Color(0xFF061D0F),
                    Color(0xFF0C3A1E),
                    Color(0xFF061D0F),
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
                width: 200,
                height: 200,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        AppColors.gold.withValues(alpha: 0.07),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Animated left nav arrow — bottom-left → go to DailyGrace (page 1)
          Builder(builder: (ctx) {
            final bottomPad = MediaQuery.of(ctx).padding.bottom;
            return Positioned(
              left: 6,
              bottom: bottomPad + 170,
              child: _QiblaNavArrow(
                direction: AxisDirection.left,
                onTap: () => widget.pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeInOut,
                ),
              ),
            );
          }),
          // Animated right nav arrow — bottom-right → go to Dhikr (page 3)
          Builder(builder: (ctx) {
            final bottomPad = MediaQuery.of(ctx).padding.bottom;
            return Positioned(
              right: 6,
              bottom: bottomPad + 170,
              child: _QiblaNavArrow(
                direction: AxisDirection.right,
                onTap: () => widget.pageController.animateToPage(
                  3,
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeInOut,
                ),
              ),
            );
          }),
          SafeArea(
            child: CustomScrollView(
              slivers: [
                // Top bar: back arrow + title + settings (reflections below)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 6, 8, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 16),
                            Text(
                              t.guidancePageTitle,
                              style: GoogleFonts.lora(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: AppColors.gold,
                                letterSpacing: 0.3,
                              ),
                            ),
                            const Spacer(),
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
                        // Remaining reflections — below title row to avoid overflow
                        Padding(
                          padding: const EdgeInsets.only(left: 14, bottom: 2),
                          child: AnimatedBuilder(
                            animation: UsageService.instance,
                            builder: (context, _) {
                              final remaining = UsageService
                                  .instance.current?.creditsRemaining;
                              return Text(
                                t.reflectionsRemainingLabel(remaining ?? '—'),
                                style: TextStyle(
                                  color: AppColors.gold.withValues(alpha: 0.65),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.2,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ── Ask Ayara section ──────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Section label
                        Row(
                          children: [
                            const Icon(Icons.auto_awesome_rounded,
                                color: AppColors.gold, size: 16),
                            const SizedBox(width: 8),
                            Text(
                              t.askPageTitle.toUpperCase(),
                              style: const TextStyle(
                                color: AppColors.gold,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.4,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          t.askPageDescription,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.75),
                            fontSize: 12,
                            height: 1.45,
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Text field
                        TextField(
                          controller: _askController,
                          focusNode: _focusNode,
                          minLines: 2,
                          maxLines: 4,
                          maxLength: 200,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1.5,
                          ),
                          decoration: InputDecoration(
                            hintText: t.askPageInputHint,
                            hintStyle: TextStyle(
                              color: Colors.white.withValues(alpha: 0.35),
                              fontSize: 14,
                            ),
                            counterStyle: TextStyle(
                              color: Colors.white.withValues(alpha: 0.30),
                              fontSize: 11,
                            ),
                            filled: true,
                            fillColor: Colors.white.withValues(alpha: 0.06),
                            errorText: _askError,
                            errorStyle: const TextStyle(
                              color: Color(0xFFFFB3B3),
                              fontSize: 12,
                            ),
                            contentPadding: const EdgeInsets.all(14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: AppColors.gold.withValues(alpha: 0.30),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: AppColors.gold.withValues(alpha: 0.30),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: AppColors.gold.withValues(alpha: 0.65),
                                width: 1.5,
                              ),
                            ),
                          ),
                          onChanged: (_) {
                            if (_askError != null) {
                              setState(() => _askError = null);
                            }
                          },
                          onSubmitted: (_) => _submitQuestion(),
                        ),
                        const SizedBox(height: 10),

                        // Submit button
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: _askLoading ? null : _submitQuestion,
                            style: FilledButton.styleFrom(
                              backgroundColor: AppColors.gold,
                              foregroundColor: AppColors.islamicDeep,
                              disabledBackgroundColor:
                                  AppColors.gold.withValues(alpha: 0.35),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                letterSpacing: 0.3,
                              ),
                            ),
                            child: _askLoading
                                ? SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: AppColors.islamicDeep
                                          .withValues(alpha: 0.7),
                                    ),
                                  )
                                : Text(t.askPageSubmitCta),
                          ),
                        ),
                      ],
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

                // ── Qibla compass ──────────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AnimatedBuilder(
                      animation: UsageService.instance,
                      builder: (context, _) {
                        final isBlessed =
                            (UsageService.instance.current?.plan ?? 'grace') ==
                                'blessed';
                        if (!isBlessed) {
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
                        final isBlessed =
                            (UsageService.instance.current?.plan ?? 'grace') ==
                                'blessed';
                        if (!isBlessed) {
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
// Animated left nav arrow — gold to match dark page background
// ─────────────────────────────────────────────────────────────────────────────

class _QiblaNavArrow extends StatefulWidget {
  final VoidCallback onTap;
  final AxisDirection direction;

  const _QiblaNavArrow({
    required this.onTap,
    this.direction = AxisDirection.left,
  });

  @override
  State<_QiblaNavArrow> createState() => _QiblaNavArrowState();
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
        final isBlessed = (usage?.plan ?? 'grace') == 'blessed';

        if (isBlessed) return child;

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
                        t.blessedFeatureLocked,
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
                          t.blessedButtonBecomeBlessed,
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

class _QiblaNavArrowState extends State<_QiblaNavArrow>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bounce = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 950),
  )..repeat(reverse: true);

  late final Animation<double> _offset =
      Tween<double>(begin: 0, end: 9).animate(
    CurvedAnimation(parent: _bounce, curve: Curves.easeInOut),
  );

  @override
  void dispose() {
    _bounce.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLeft = widget.direction == AxisDirection.left;
    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick();
        widget.onTap();
      },
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: AnimatedBuilder(
          animation: _offset,
          builder: (_, _) => Transform.translate(
            offset: Offset(isLeft ? -_offset.value : _offset.value, 0),
            child: Icon(
              isLeft ? Icons.chevron_left_rounded : Icons.chevron_right_rounded,
              color: AppColors.gold.withValues(alpha: 0.55),
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
