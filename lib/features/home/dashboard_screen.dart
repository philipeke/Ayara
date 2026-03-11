// lib/features/home/dashboard_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/calendar/calendar_service.dart';
import 'package:ayara/features/calendar/shia_event_model.dart';
import 'package:ayara/features/daily/daily_grace_screen.dart' show DailyGraceWidget;
import 'package:ayara/features/dhikr/dhikr_screen.dart';
import 'package:ayara/features/qibla/qibla_screen.dart';
import 'package:ayara/features/prayer/prayer_times_screen.dart';
import 'package:ayara/core/services/locale_service.dart';
import 'package:ayara/features/home/home_shell.dart';
import 'package:ayara/features/home/dashboard_background.dart';
import 'package:ayara/l10n/app_localizations.dart';

// ── Localization helpers ──────────────────────────────────────────────────────

String _localizedHijriMonth(AppLocalizations t, int month) {
  switch (month) {
    case 1:  return t.hijriMonth1;
    case 2:  return t.hijriMonth2;
    case 3:  return t.hijriMonth3;
    case 4:  return t.hijriMonth4;
    case 5:  return t.hijriMonth5;
    case 6:  return t.hijriMonth6;
    case 7:  return t.hijriMonth7;
    case 8:  return t.hijriMonth8;
    case 9:  return t.hijriMonth9;
    case 10: return t.hijriMonth10;
    case 11: return t.hijriMonth11;
    case 12: return t.hijriMonth12;
    default: return '';
  }
}

String? _localizedSeason(AppLocalizations t, ShiaSeason? season) {
  if (season == null) return null;
  switch (season) {
    case ShiaSeason.muharramEarly:   return t.calendarSeasonMuharramEarly;
    case ShiaSeason.ashura:          return t.calendarSeasonAshura;
    case ShiaSeason.muharramLate:    return t.calendarSeasonMuharramLate;
    case ShiaSeason.arbaeen:         return t.calendarSeasonArbaeen;
    case ShiaSeason.roadToArbaeen:   return t.calendarSeasonRoadToArbaeen;
    case ShiaSeason.mabath:          return t.calendarSeasonMabath;
    case ShiaSeason.midShaban:       return t.calendarSeasonMidShaban;
    case ShiaSeason.ramadan:         return t.calendarSeasonRamadan;
    case ShiaSeason.ghadir:          return t.calendarSeasonGhadir;
  }
}

({String text, String source}) _todayWisdom(AppLocalizations t) {
  final index = (DateTime.now().day - 1) % 31;
  final texts = [
    t.wisdomQuote0,  t.wisdomQuote1,  t.wisdomQuote2,  t.wisdomQuote3,
    t.wisdomQuote4,  t.wisdomQuote5,  t.wisdomQuote6,  t.wisdomQuote7,
    t.wisdomQuote8,  t.wisdomQuote9,  t.wisdomQuote10, t.wisdomQuote11,
    t.wisdomQuote12, t.wisdomQuote13, t.wisdomQuote14, t.wisdomQuote15,
    t.wisdomQuote16, t.wisdomQuote17, t.wisdomQuote18, t.wisdomQuote19,
    t.wisdomQuote20, t.wisdomQuote21, t.wisdomQuote22, t.wisdomQuote23,
    t.wisdomQuote24, t.wisdomQuote25, t.wisdomQuote26, t.wisdomQuote27,
    t.wisdomQuote28, t.wisdomQuote29, t.wisdomQuote30,
  ];
  final sources = [
    t.wisdomQuoteSource0,  t.wisdomQuoteSource1,  t.wisdomQuoteSource2,
    t.wisdomQuoteSource3,  t.wisdomQuoteSource4,  t.wisdomQuoteSource5,
    t.wisdomQuoteSource6,  t.wisdomQuoteSource7,  t.wisdomQuoteSource8,
    t.wisdomQuoteSource9,  t.wisdomQuoteSource10, t.wisdomQuoteSource11,
    t.wisdomQuoteSource12, t.wisdomQuoteSource13, t.wisdomQuoteSource14,
    t.wisdomQuoteSource15, t.wisdomQuoteSource16, t.wisdomQuoteSource17,
    t.wisdomQuoteSource18, t.wisdomQuoteSource19, t.wisdomQuoteSource20,
    t.wisdomQuoteSource21, t.wisdomQuoteSource22, t.wisdomQuoteSource23,
    t.wisdomQuoteSource24, t.wisdomQuoteSource25, t.wisdomQuoteSource26,
    t.wisdomQuoteSource27, t.wisdomQuoteSource28, t.wisdomQuoteSource29,
    t.wisdomQuoteSource30,
  ];
  return (text: texts[index], source: sources[index]);
}

// ── Screen ────────────────────────────────────────────────────────────────────

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late List<ResolvedShiaEvent> _todayEvents;
  late ResolvedShiaEvent? _nextEvent;

  @override
  void initState() {
    super.initState();
    _todayEvents = CalendarService.todayEvents;
    _nextEvent   = CalendarService.nextEvent;
  }

  @override
  Widget build(BuildContext context) {
    final isMourning = CalendarService.isMourningPeriod;

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          const Positioned.fill(child: DashboardBackground()),
          const Positioned.fill(child: StarfieldWidget()),
          CustomScrollView(
            slivers: [
              _buildAppBar(context),
              SliverToBoxAdapter(child: _buildHijriCard(context, isMourning)),
              if (_todayEvents.isNotEmpty)
                SliverToBoxAdapter(child: _buildTodayBanner(context)),
              if (_nextEvent != null && _todayEvents.isEmpty)
                SliverToBoxAdapter(
                    child: _buildNextEventCard(context, _nextEvent!)),
              SliverToBoxAdapter(child: _buildQuickActions(context)),
              SliverToBoxAdapter(child: _buildWisdomCard(context)),
              const SliverToBoxAdapter(child: LogoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 32)),
            ],
          ),
        ],
      ),
    );
  }

  // ── App bar ───────────────────────────────────────────────────────────────

  SliverAppBar _buildAppBar(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.deepNavy,
      expandedHeight: 0,
      title: Text(
        AppLocalizations.of(context).appTitle,
        style: GoogleFonts.cinzel(
          color: AppColors.goldBright,
          fontWeight: FontWeight.w700,
          fontSize: 22,
          letterSpacing: 1.2,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.settings_rounded, color: AppColors.gold),
          onPressed: () => _openSettings(context),
        ),
      ],
    );
  }

  // ── Hijri date hero card ──────────────────────────────────────────────────

  Widget _buildHijriCard(BuildContext context, bool isMourning) {
    final t = AppLocalizations.of(context);
    final h = CalendarService.todayHijri;
    final monthName = _localizedHijriMonth(t, h.hMonth);
    final monthAr   = CalendarService.hijriMonthNamesAr[h.hMonth] ?? '';
    final seasonal  = _localizedSeason(t, CalendarService.currentSeason());

    final Color borderColor = isMourning
        ? AppColors.crimsonBright.withValues(alpha: 0.55)
        : AppColors.borderMid;

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isMourning
                    ? AppColors.crimsonDeep.withValues(alpha: 0.45)
                    : AppColors.goldDim.withValues(alpha: 0.22),
                border: Border.all(
                  color: isMourning
                      ? AppColors.crimsonBright.withValues(alpha: 0.5)
                      : AppColors.gold.withValues(alpha: 0.4),
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Text(
                  '${h.hDay}',
                  style: GoogleFonts.cinzel(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: isMourning
                        ? AppColors.crimsonLight
                        : AppColors.goldBright,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    monthName,
                    style: GoogleFonts.cinzel(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    '$monthAr  ·  ${h.hYear} ${t.calendarAH}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textDim,
                          letterSpacing: 0.3,
                        ),
                  ),
                  if (seasonal != null) ...[
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: isMourning
                            ? AppColors.crimsonDeep.withValues(alpha: 0.4)
                            : AppColors.goldDim.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        seasonal,
                        style: TextStyle(
                          color: isMourning
                              ? AppColors.crimsonLight
                              : AppColors.gold,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    )
        .animate()
        .fadeIn(duration: 500.ms)
        .slideY(begin: 0.06, end: 0);
  }

  // ── Today's event banner ──────────────────────────────────────────────────

  Widget _buildTodayBanner(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Column(
      children: _todayEvents.map((resolved) {
        final event = resolved.event;
        final isMartyrdom = event.type == ShiaEventType.martyrdom;
        final color = isMartyrdom ? AppColors.crimsonBright : AppColors.gold;

        return Container(
          margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.10),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: color.withValues(alpha: 0.45), width: 1.2),
          ),
          child: Row(
            children: [
              Icon(
                isMartyrdom
                    ? Icons.local_fire_department_rounded
                    : Icons.star_rounded,
                color: color,
                size: 22,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.dashboardToday,
                      style: TextStyle(
                        color: color,
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      event.nameEn,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    Text(
                      event.nameAr,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: color.withValues(alpha: 0.7),
                        fontSize: 13,
                        fontFamily: 'Arial',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ).animate().fadeIn(duration: 400.ms).slideX(begin: -0.04, end: 0);
      }).toList(),
    );
  }

  // ── Next event countdown card ─────────────────────────────────────────────

  Widget _buildNextEventCard(
      BuildContext context, ResolvedShiaEvent resolved) {
    final t = AppLocalizations.of(context);
    final event = resolved.event;
    final days = resolved.daysUntil;
    final isMartyrdom = event.type == ShiaEventType.martyrdom;
    final color = isMartyrdom ? AppColors.crimsonBright : AppColors.gold;

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border, width: 0.8),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                '$days',
                style: GoogleFonts.cinzel(
                  color: color,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Text(
                t.dashboardDaysUnit(days),
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: AppColors.textMuted),
              ),
            ],
          ),
          const SizedBox(width: 16),
          const VerticalDivider(color: AppColors.border, width: 1),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.dashboardComingUp,
                  style: const TextStyle(
                    color: AppColors.textMuted,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  event.nameEn,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                ),
                Text(
                  event.nameAr,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: color.withValues(alpha: 0.7),
                    fontSize: 13,
                    fontFamily: 'Arial',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate(delay: 100.ms).fadeIn(duration: 400.ms).slideY(begin: 0.05, end: 0);
  }

  // ── Quick actions ─────────────────────────────────────────────────────────

  Widget _buildQuickActions(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.dashboardQuickAccess,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AppColors.textDim,
                  letterSpacing: 0.4,
                ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _QuickCard(
                icon: Icons.auto_awesome_rounded,
                label: t.navReflect,
                color: AppColors.crimsonBright,
                onTap: () => HomeShell.of(context)?.jumpTo(1),
              ),
              const SizedBox(width: 10),
              _QuickCard(
                icon: Icons.menu_book_rounded,
                label: t.navDuas,
                color: AppColors.gold,
                onTap: () => HomeShell.of(context)?.jumpTo(2),
              ),
              const SizedBox(width: 10),
              _QuickCard(
                icon: Icons.explore_rounded,
                label: t.quickActionQibla,
                color: AppColors.emeraldBright,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const QiblaScreen()),
                ),
              ),
              const SizedBox(width: 10),
              _QuickCard(
                icon: Icons.self_improvement_rounded,
                label: t.quickActionDhikr,
                color: AppColors.goldBright,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const DhikrScreen()),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _QuickCard(
                icon: Icons.brightness_5_rounded,
                label: t.quickActionDailyGrace,
                color: AppColors.emeraldLight,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Scaffold(
                      appBar: AppBar(title: Text(t.quickActionDailyGrace)),
                      body: const DailyGraceWidget(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              _QuickCard(
                icon: Icons.calendar_month_rounded,
                label: t.navCalendar,
                color: AppColors.crimsonLight,
                onTap: () => HomeShell.of(context)?.jumpTo(3),
              ),
              const SizedBox(width: 10),
              _QuickCard(
                icon: Icons.access_time_rounded,
                label: t.quickActionPrayerTimes,
                color: AppColors.emeraldBright,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const PrayerTimesScreen(),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    ).animate(delay: 150.ms).fadeIn(duration: 400.ms);
  }

  // ── Daily wisdom card ─────────────────────────────────────────────────────

  Widget _buildWisdomCard(BuildContext context) {
    final t = AppLocalizations.of(context);
    final wisdom = _todayWisdom(t);

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.borderMid, width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.format_quote_rounded,
                  color: AppColors.gold, size: 18),
              const SizedBox(width: 8),
              Text(
                t.wisdomOfTheDayTitle,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.gold,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            '"${wisdom.text}"',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textPrimary,
                  height: 1.7,
                  fontStyle: FontStyle.italic,
                ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '— ${wisdom.source}',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.gold,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                  ),
            ),
          ),
        ],
      ),
    ).animate(delay: 200.ms).fadeIn(duration: 400.ms).slideY(begin: 0.05, end: 0);
  }

  // ── Navigation helpers ────────────────────────────────────────────────────

  void _openSettings(BuildContext context) {
    final locale = Localizations.maybeLocaleOf(context);
    final currentCode = locale != null ? LocaleService.toTag(locale) : 'en';
    Navigator.of(context).pushNamed(
      '/settings',
      arguments: currentCode,
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _QuickCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _QuickCard({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.10),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: color.withValues(alpha: 0.25), width: 0.8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: color, size: 24),
              const SizedBox(height: 6),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textDim,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
