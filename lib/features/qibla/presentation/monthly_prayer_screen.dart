// lib/features/qibla/presentation/monthly_prayer_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:share_plus/share_plus.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/qibla/services/prayer_time_service.dart';
import 'package:ayara/l10n/app_localizations.dart';

class MonthlyPrayerScreen extends StatefulWidget {
  final Position position;

  const MonthlyPrayerScreen({super.key, required this.position});

  @override
  State<MonthlyPrayerScreen> createState() => _MonthlyPrayerScreenState();
}

class _MonthlyPrayerScreenState extends State<MonthlyPrayerScreen> {
  late final PageController _pageController = PageController();
  double _rightVisibility = 1.0;
  double _leftVisibility = 0.0;

  final DateTime _now = DateTime.now();

  late final List<DayPrayers> _currentDays;
  late final List<DayPrayers> _nextDays;
  late final int _nextYear;
  late final int _nextMonth;

  @override
  void initState() {
    super.initState();
    _nextYear  = _now.month == 12 ? _now.year + 1 : _now.year;
    _nextMonth = _now.month == 12 ? 1 : _now.month + 1;

    _currentDays = PrayerTimeService.calculateMonth(
      widget.position.latitude,
      widget.position.longitude,
      _now.year,
      _now.month,
    );
    _nextDays = PrayerTimeService.calculateMonth(
      widget.position.latitude,
      widget.position.longitude,
      _nextYear,
      _nextMonth,
    );

    _pageController.addListener(_onPage);
  }

  void _onPage() {
    final page = _pageController.page ?? 0.0;
    final right = (1.0 - page).clamp(0.0, 1.0);
    final left = page.clamp(0.0, 1.0);
    if (mounted && (right != _rightVisibility || left != _leftVisibility)) {
      setState(() {
        _rightVisibility = right;
        _leftVisibility = left;
      });
    }
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPage);
    _pageController.dispose();
    super.dispose();
  }

  void _share(int pageIndex) {
    final days  = pageIndex == 0 ? _currentDays : _nextDays;
    final year  = pageIndex == 0 ? _now.year : _nextYear;
    final month = pageIndex == 0 ? _now.month : _nextMonth;
    final monthLabel = DateFormat('MMMM y').format(DateTime(year, month));

    final buf = StringBuffer();
    buf.writeln('🕌 Ayara — Prayer Times');
    buf.writeln(monthLabel);
    buf.writeln();
    buf.writeln('Day  | Fajr  | Dhuhr | Asr   | Maghrib | Isha');
    buf.writeln('─────┼───────┼───────┼───────┼─────────┼──────');
    for (final d in days) {
      final day = d.date.day.toString().padLeft(2);
      buf.writeln(
        '$day   | ${_fmt(d.fajr)} | ${_fmt(d.dhuhr)} | '
        '${_fmt(d.asr)} | ${_fmt(d.maghrib)}   | ${_fmt(d.isha)}',
      );
    }
    buf.writeln();
    buf.writeln('Shared via Ayara — Islamic Guidance App');

    SharePlus.instance.share(ShareParams(text: buf.toString()));
  }

  String _fmt(DateTime dt) =>
      '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    final t = AppLocalizations.of(context)!;

    // Which page is currently shown (rounded)
    final currentPage = ((_pageController.hasClients
            ? (_pageController.page ?? 0)
            : 0.0) +
        0.5)
        .toInt()
        .clamp(0, 1);

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
                    Color(0xFF071510),
                    Color(0xFF040A06),
                  ],
                ),
              ),
            ),
          ),
          // Subtle gold shimmer top-right
          Positioned(
            top: 0,
            right: 0,
            child: IgnorePointer(
              child: SizedBox(
                width: 220,
                height: 220,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0x20C49A3C),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Main content
          SafeArea(
            child: Column(
              children: [
                // Top bar
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 8, 0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: AppColors.gold,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Expanded(
                        child: Text(
                          t.monthlyPrayerTimesTitle,
                          style: GoogleFonts.amiri(
                            color: AppColors.gold,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                      // Share button
                      IconButton(
                        icon: const Icon(Icons.share_rounded),
                        color: AppColors.gold.withValues(alpha: 0.85),
                        tooltip: t.sharePrayerTimes,
                        onPressed: () => _share(currentPage),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                // PageView: current month + next month.
                // Force LTR so page order and swipe direction are consistent
                // regardless of locale (Arabic etc.).
                Expanded(
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: PageView(
                      controller: _pageController,
                      children: [
                        _MonthPage(
                          days: _currentDays,
                          year: _now.year,
                          month: _now.month,
                          today: _now,
                        ),
                        _MonthPage(
                          days: _nextDays,
                          year: _nextYear,
                          month: _nextMonth,
                          today: _now,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Right arrow (page 0 → 1), left arrow (page 1 → 0)
          Builder(
            builder: (ctx) {
              final bottomPad = MediaQuery.of(ctx).padding.bottom;
              final arrowBottom = bottomPad + 170;
              return Stack(
                children: [
                  Positioned(
                    left: 10,
                    bottom: arrowBottom,
                    child: IgnorePointer(
                      child: AnimatedOpacity(
                        opacity: _leftVisibility,
                        duration: const Duration(milliseconds: 150),
                        child: const _BounceArrow(pointLeft: true),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: arrowBottom,
                    child: IgnorePointer(
                      child: AnimatedOpacity(
                        opacity: _rightVisibility,
                        duration: const Duration(milliseconds: 150),
                        child: const _BounceArrow(),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Month page
// ─────────────────────────────────────────────────────────────────────────────

class _MonthPage extends StatelessWidget {
  final List<DayPrayers> days;
  final int year;
  final int month;
  final DateTime today;

  const _MonthPage({
    required this.days,
    required this.year,
    required this.month,
    required this.today,
  });

  String _fmt(DateTime dt) =>
      '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final monthLabel = DateFormat('MMMM y').format(DateTime(year, month));

    return LayoutBuilder(
      builder: (context, constraints) {
        // 16 = horizontal list padding (8 each side)
        // 20 = inner row horizontal padding (10 each side)
        // 46 = day column width (Gregorian + Hijri stacked)
        final prayerColWidth = (constraints.maxWidth - 16 - 20 - 46) / 5;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Month + year label
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Text(
                monthLabel,
                style: const TextStyle(
                  color: AppColors.gold,
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.3,
                ),
              ),
            ),
            // Column headers
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.islamic.withValues(alpha: 0.55),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 46,
                      child: Text(
                        t.monthlyPrayerTimesDayHeader.toUpperCase(),
                        style: TextStyle(
                          color: AppColors.gold,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                    for (final name in [
                      t.prayerTimesFajr,
                      t.prayerTimesDhuhr,
                      t.prayerTimesAsr,
                      t.prayerTimesMaghrib,
                      t.prayerTimesIsha,
                    ])
                      SizedBox(
                        width: prayerColWidth,
                        child: Text(
                          name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.gold.withValues(alpha: 0.80),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4),
            // Day rows
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                itemCount: days.length,
                itemBuilder: (context, index) {
                  final day = days[index];
                  final isToday = day.date.year == today.year &&
                      day.date.month == today.month &&
                      day.date.day == today.day;
                  return _DayRow(
                    day: day,
                    isToday: isToday,
                    prayerColWidth: prayerColWidth,
                    fmt: _fmt,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Single day row
// ─────────────────────────────────────────────────────────────────────────────

class _DayRow extends StatelessWidget {
  final DayPrayers day;
  final bool isToday;
  final double prayerColWidth;
  final String Function(DateTime) fmt;

  const _DayRow({
    required this.day,
    required this.isToday,
    required this.prayerColWidth,
    required this.fmt,
  });

  @override
  Widget build(BuildContext context) {
    final textColor =
        isToday ? AppColors.islamicDeep : Colors.white.withValues(alpha: 0.85);
    final timeColor = isToday
        ? AppColors.islamicDeep.withValues(alpha: 0.88)
        : Colors.white.withValues(alpha: 0.60);

    final hijri = HijriCalendar.fromDate(day.date);

    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: isToday
            ? AppColors.gold.withValues(alpha: 0.88)
            : (day.date.day.isEven
                ? Colors.white.withValues(alpha: 0.03)
                : Colors.transparent),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Day column: Gregorian over Hijri
          SizedBox(
            width: 46,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  day.date.day.toString().padLeft(2, ' '),
                  style: TextStyle(
                    color: textColor,
                    fontSize: 13,
                    fontWeight:
                        isToday ? FontWeight.w800 : FontWeight.w500,
                    fontFeatures: const [FontFeature.tabularFigures()],
                  ),
                ),
                Text(
                  '${hijri.hDay}',
                  style: TextStyle(
                    color: isToday
                        ? AppColors.islamicDeep.withValues(alpha: 0.65)
                        : AppColors.gold.withValues(alpha: 0.50),
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                    fontFeatures: const [FontFeature.tabularFigures()],
                  ),
                ),
              ],
            ),
          ),
          for (final time in [
            day.fajr,
            day.dhuhr,
            day.asr,
            day.maghrib,
            day.isha,
          ])
            SizedBox(
              width: prayerColWidth,
              child: Text(
                fmt(time),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: timeColor,
                  fontSize: 11,
                  fontWeight:
                      isToday ? FontWeight.w700 : FontWeight.w400,
                  fontFeatures: const [FontFeature.tabularFigures()],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Bouncing arrow swipe hint
// ─────────────────────────────────────────────────────────────────────────────

class _BounceArrow extends StatefulWidget {
  final bool pointLeft;
  const _BounceArrow({this.pointLeft = false});

  @override
  State<_BounceArrow> createState() => _BounceArrowState();
}

class _BounceArrowState extends State<_BounceArrow>
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
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AnimatedBuilder(
        animation: _offset,
        builder: (_, _) => Transform.translate(
          offset: widget.pointLeft
              ? Offset(-_offset.value, 0)
              : Offset(_offset.value, 0),
          child: Icon(
            widget.pointLeft
                ? Icons.chevron_left_rounded
                : Icons.chevron_right_rounded,
            color: AppColors.gold.withValues(alpha: 0.55),
            size: 32,
          ),
        ),
      ),
    );
  }
}
