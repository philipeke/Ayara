// lib/features/home/dashboard_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/services/dhikr_streak_service.dart';
import 'package:ayara/core/services/prayer_data_notifier.dart';
import 'package:ayara/features/calendar/calendar_service.dart';
import 'package:ayara/features/calendar/calendar_screen.dart' show EventDetailSheet;
import 'package:ayara/features/calendar/shia_event_model.dart';
import 'package:ayara/features/daily/daily_grace_screen.dart' show DailyGraceWidget;
import 'package:ayara/features/dhikr/dhikr_screen.dart';
import 'package:ayara/features/qibla/qibla_screen.dart';
import 'package:ayara/features/prayer/prayer_times_screen.dart';
import 'package:ayara/features/hadith/hadith_screen.dart';
import 'package:ayara/features/imams/imams_screen.dart';
import 'package:ayara/features/duas/dua_audio_screen.dart';
import 'package:ayara/features/pilgrimage/hajj_guide_screen.dart';
import 'package:ayara/features/pilgrimage/umrah_guide_screen.dart';
import 'package:ayara/features/tasbihat/tasbihat_screen.dart';
import 'package:ayara/core/services/locale_service.dart';
import 'package:ayara/features/home/home_shell.dart';
import 'package:ayara/features/home/dashboard_background.dart';
import 'package:ayara/features/limit/usage_service.dart';
import 'package:ayara/core/services/sound_service.dart';
import 'package:ayara/core/services/content_repository.dart';
import 'package:ayara/core/models/content_models.dart';
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


// ── Screen ────────────────────────────────────────────────────────────────────

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late List<ResolvedShiaEvent> _todayEvents;
  late ResolvedShiaEvent? _nextEvent;

  List<WisdomModel> _wisdom = ContentRepository.instance.bundledWisdom;
  List<PilgrimageStepModel> _hajjSteps =
      ContentRepository.instance.bundledHajjSteps;
  List<PilgrimageStepModel> _umrahSteps =
      ContentRepository.instance.bundledUmrahSteps;
  int _hajjCompletedCount = 0;
  int _umrahCompletedCount = 0;

  final ScrollController _scrollCtrl = ScrollController();
  bool _atBottom = false;

  @override
  void initState() {
    super.initState();
    _todayEvents = CalendarService.todayEvents;
    _nextEvent   = CalendarService.nextEvent;
    _scrollCtrl.addListener(_onScroll);
    _refreshWisdom();
    _refreshPilgrimageProgress();
  }

  Future<void> _refreshWisdom() async {
    try {
      final result = await ContentRepository.instance.getWisdom();
      if (!mounted || result.isEmpty) return;
      setState(() => _wisdom = result..sort((a, b) => a.order.compareTo(b.order)));
    } catch (_) {}
  }

  Future<void> _refreshPilgrimageProgress() async {
    try {
      final hajjResult = await ContentRepository.instance.getHajjSteps();
      final umrahResult = await ContentRepository.instance.getUmrahSteps();
      final prefs = await SharedPreferences.getInstance();

      final hajjSteps = hajjResult.isNotEmpty
          ? (hajjResult..sort((a, b) => a.order.compareTo(b.order)))
          : _hajjSteps;
      final umrahSteps = umrahResult.isNotEmpty
          ? (umrahResult..sort((a, b) => a.order.compareTo(b.order)))
          : _umrahSteps;

      final hajjDone = hajjSteps
          .where((step) => prefs.getBool('hajj_done_${step.id}') ?? false)
          .length;
      final umrahDone = umrahSteps
          .where((step) => prefs.getBool('umrah_done_${step.id}') ?? false)
          .length;

      if (!mounted) return;
      setState(() {
        _hajjSteps = hajjSteps;
        _umrahSteps = umrahSteps;
        _hajjCompletedCount = hajjDone;
        _umrahCompletedCount = umrahDone;
      });
    } catch (_) {}
  }

  WisdomModel get _todayWisdom {
    if (_wisdom.isEmpty) return const WisdomModel(id: '', order: 0, quote: '', source: '');
    final index = (DateTime.now().day - 1) % _wisdom.length;
    return _wisdom[index];
  }

  void _onScroll() {
    if (!_scrollCtrl.hasClients) return;
    final atBottom = _scrollCtrl.position.pixels >=
        _scrollCtrl.position.maxScrollExtent - 40;
    if (atBottom != _atBottom) setState(() => _atBottom = atBottom);
  }

  @override
  void dispose() {
    _scrollCtrl.dispose();
    super.dispose();
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
            controller: _scrollCtrl,
            slivers: [
              _buildAppBar(context),
              SliverToBoxAdapter(child: _buildHijriCard(context, isMourning)),
              if (_todayEvents.isNotEmpty)
                SliverToBoxAdapter(child: _buildTodayBanner(context)),
              if (_nextEvent != null && _todayEvents.isEmpty)
                SliverToBoxAdapter(
                    child: _buildNextEventCard(context, _nextEvent!)),
              SliverToBoxAdapter(child: _PrayerSummaryCard()),
              SliverToBoxAdapter(child: _DhikrStreakCard()),
              SliverToBoxAdapter(child: _buildQuickActions(context)),
              SliverToBoxAdapter(child: _buildEventsCountdown(context)),
              SliverToBoxAdapter(child: _buildWisdomCard(context)),
              SliverToBoxAdapter(
                child: LogoSection(middleContent: _buildPilgrimageSection(context)),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 32)),
            ],
          ),
          Positioned(
            bottom: 0, left: 0, right: 0,
            child: IgnorePointer(child: _ScrollDownArrow(visible: !_atBottom)),
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
      leadingWidth: 100,
      leading: AnimatedBuilder(
        animation: UsageService.instance,
        builder: (context, _) {
          final isPremium =
              (UsageService.instance.current?.plan ?? '').toLowerCase() ==
                  'premium';
          if (!isPremium) return const SizedBox.shrink();
          return Padding(
            padding: const EdgeInsetsDirectional.only(start: 12),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                decoration: BoxDecoration(
                  color: AppColors.gold.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: AppColors.gold.withValues(alpha: 0.55)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.star_rounded,
                        size: 14, color: AppColors.goldBright),
                    const SizedBox(width: 4),
                    Text(
                      AppLocalizations.of(context).planPremium,
                      style: const TextStyle(
                        color: AppColors.goldBright,
                        fontWeight: FontWeight.w800,
                        fontSize: 11,
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
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/icon.png',
            width: 52,
            height: 52,
          ),
          const SizedBox(width: 1),
          Text(
            AppLocalizations.of(context).appTitle,
            style: GoogleFonts.cinzel(
              color: AppColors.goldBright,
              fontWeight: FontWeight.w700,
              fontSize: 22,
              letterSpacing: 1.2,
            ),
          ),
          // Balances the icon so the text stays visually centered
          const SizedBox(width: 53),
        ],
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

  Widget _buildPilgrimageCompletionBanner(BuildContext context) {
    final hasHajjProgress = _hajjCompletedCount > 0;
    final hasUmrahProgress = _umrahCompletedCount > 0;
    if (!hasHajjProgress && !hasUmrahProgress) {
      return const SizedBox.shrink();
    }

    final t = AppLocalizations.of(context);
    final completedJourneys = [
      if (_hajjSteps.isNotEmpty && _hajjCompletedCount == _hajjSteps.length)
        t.hajjCardTitle,
      if (_umrahSteps.isNotEmpty && _umrahCompletedCount == _umrahSteps.length)
        t.umrahCardTitle,
    ];
    final subtitle = completedJourneys.isNotEmpty
        ? '${completedJourneys.join(' • ')} ${t.pilgrimageComplete.replaceFirst('✓ ', '')}'
        : t.pilgrimageSectionSubtitle;

    return Container(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.gold.withValues(alpha: 0.14),
            AppColors.deepNavy,
            AppColors.emeraldBright.withValues(alpha: 0.08),
          ],
          stops: const [0.0, 0.58, 1.0],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.borderBright.withValues(alpha: 0.50),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.gold.withValues(alpha: 0.08),
            blurRadius: 22,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.goldBright.withValues(alpha: 0.28),
                      AppColors.gold.withValues(alpha: 0.10),
                    ],
                  ),
                  border: Border.all(
                    color: AppColors.gold.withValues(alpha: 0.40),
                  ),
                ),
                child: const Icon(
                  Icons.workspace_premium_rounded,
                  color: AppColors.goldBright,
                  size: 22,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.pilgrimageSectionTitle,
                      style: GoogleFonts.cinzel(
                        color: AppColors.goldBright,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.6,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: AppColors.textDim,
                        fontSize: 11,
                        height: 1.35,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              if (hasHajjProgress)
                Expanded(
                  child: _PilgrimageCompletionBadge(
                    title: t.hajjCardTitle,
                    icon: Icons.explore_rounded,
                    done: _hajjCompletedCount,
                    total: _hajjSteps.length,
                    accent: AppColors.gold,
                  ),
                ),
              if (hasHajjProgress && hasUmrahProgress) const SizedBox(width: 10),
              if (hasUmrahProgress)
                Expanded(
                  child: _PilgrimageCompletionBadge(
                    title: t.umrahCardTitle,
                    icon: Icons.auto_awesome_rounded,
                    done: _umrahCompletedCount,
                    total: _umrahSteps.length,
                    accent: AppColors.emeraldBright,
                  ),
                ),
            ],
          ),
        ],
      ),
    ).animate().fadeIn(duration: 450.ms).slideY(begin: 0.04, end: 0);
  }

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
                    builder: (_) => const Scaffold(
                      body: DailyGraceWidget(),
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
              _QuickCard(
                icon: Icons.format_quote_rounded,
                label: t.quickActionDailyHadith,
                color: AppColors.goldBright,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const HadithScreen()),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _QuickCard(
                icon: Icons.auto_awesome_mosaic_rounded,
                label: t.quickAction14Masumeen,
                color: AppColors.crimsonLight,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ImamsScreen()),
                ),
              ),
              const SizedBox(width: 10),
              _QuickCard(
                icon: Icons.headphones_rounded,
                label: t.quickActionListenDuas,
                color: AppColors.emeraldLight,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const DuaAudioScreen()),
                ),
              ),
              const SizedBox(width: 10),
              _QuickCard(
                icon: Icons.mosque_rounded,
                label: t.quickActionTasbihat,
                color: AppColors.emeraldLight,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const TasbihatScreen()),
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

  // ── Shia events countdown ─────────────────────────────────────────────────

  Widget _buildEventsCountdown(BuildContext context) {
    final t = AppLocalizations.of(context);
    final events = CalendarService.upcomingEvents(withinDays: 365)
        .where((e) => e.daysUntil >= 0)
        .take(6)
        .toList();

    if (events.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.stars_rounded, color: AppColors.gold, size: 14),
              const SizedBox(width: 7),
              Text(
                t.calendarUpcomingOccasions.toUpperCase(),
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.textDim,
                      letterSpacing: 1.4,
                      fontSize: 10.5,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 112,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: events.length,
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemBuilder: (context, i) => _EventCountdownCard(event: events[i]),
            ),
          ),
        ],
      ),
    ).animate(delay: 160.ms).fadeIn(duration: 400.ms);
  }

  // ── Daily wisdom card ─────────────────────────────────────────────────────

  Widget _buildWisdomCard(BuildContext context) {
    final t = AppLocalizations.of(context);
    final wisdom = _todayWisdom;

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
            '"${wisdom.quote}"',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textPrimary,
                  height: 1.7,
                  fontStyle: FontStyle.italic,
                ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: AlignmentDirectional.centerEnd,
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

  // ── Pilgrimage section ────────────────────────────────────────────────────

  Widget _buildPilgrimageSection(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Row(
            children: [
              Container(
                width: 3, height: 22,
                decoration: BoxDecoration(
                  color: AppColors.gold,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.pilgrimageSectionTitle,
                      style: GoogleFonts.cinzel(
                        color: AppColors.gold,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.6,
                      ),
                    ),
                    Text(
                      t.pilgrimageSectionSubtitle,
                      style: TextStyle(
                        color: AppColors.textDim,
                        fontSize: 11,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          // Cards row
          Row(
            children: [
              // Hajj card
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    HapticFeedback.lightImpact();
                    SoundService.instance.playGuideTap();
                    await Navigator.of(context).push(_PilgrimageRoute(
                      destination: const HajjGuideScreen(),
                      emoji: '🕋',
                      accentColor: AppColors.gold,
                      title: t.hajjCardTitle.toUpperCase(),
                      arabicTitle: 'الحج',
                    ));
                    if (mounted) _refreshPilgrimageProgress();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.gold.withValues(alpha: 0.18),
                          AppColors.gold.withValues(alpha: 0.06),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: AppColors.gold.withValues(alpha: 0.40), width: 1.1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('🕋', style: TextStyle(fontSize: 28)),
                        const SizedBox(height: 10),
                        Text(
                          t.hajjCardTitle,
                          style: GoogleFonts.cinzel(
                            color: AppColors.gold,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          t.hajjCardSubtitle,
                          style: TextStyle(
                            color: AppColors.gold.withValues(alpha: 0.65),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          t.hajjCardDescription,
                          style: TextStyle(
                            color: AppColors.textDim,
                            fontSize: 11,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              t.pilgrimageStepsTitle,
                              style: TextStyle(
                                color: AppColors.gold,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.3,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(Icons.arrow_forward_ios_rounded,
                                size: 9, color: AppColors.gold),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // Umrah card
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    HapticFeedback.lightImpact();
                    SoundService.instance.playGuideTap();
                    await Navigator.of(context).push(_PilgrimageRoute(
                      destination: const UmrahGuideScreen(),
                      emoji: '🕌',
                      accentColor: AppColors.emeraldBright,
                      title: t.umrahCardTitle.toUpperCase(),
                      arabicTitle: 'العمرة',
                    ));
                    if (mounted) _refreshPilgrimageProgress();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.emeraldBright.withValues(alpha: 0.16),
                          AppColors.emeraldBright.withValues(alpha: 0.05),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: AppColors.emeraldBright.withValues(alpha: 0.38),
                          width: 1.1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('🕌', style: TextStyle(fontSize: 28)),
                        const SizedBox(height: 10),
                        Text(
                          t.umrahCardTitle,
                          style: GoogleFonts.cinzel(
                            color: AppColors.emeraldBright,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          t.umrahCardSubtitle,
                          style: TextStyle(
                            color: AppColors.emeraldBright.withValues(alpha: 0.65),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          t.umrahCardDescription,
                          style: TextStyle(
                            color: AppColors.textDim,
                            fontSize: 11,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              t.pilgrimageStepsTitle,
                              style: TextStyle(
                                color: AppColors.emeraldBright,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.3,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(Icons.arrow_forward_ios_rounded,
                                size: 9, color: AppColors.emeraldBright),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_hajjCompletedCount > 0 || _umrahCompletedCount > 0) ...[
            const SizedBox(height: 12),
            _buildPilgrimageCompletionBanner(context),
          ],
        ],
      ),
    );
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

class _PilgrimageCompletionBadge extends StatelessWidget {
  final String title;
  final IconData icon;
  final int done;
  final int total;
  final Color accent;

  const _PilgrimageCompletionBadge({
    required this.title,
    required this.icon,
    required this.done,
    required this.total,
    required this.accent,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final isComplete = total > 0 && done == total;
    final badgeColor = isComplete ? AppColors.goldBright : accent;
    final surfaceColor = isComplete ? AppColors.gold : accent;
    final statusText = isComplete
        ? t.pilgrimageComplete
        : t.pilgrimageProgress(done, total);

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            surfaceColor.withValues(alpha: isComplete ? 0.24 : 0.16),
            surfaceColor.withValues(alpha: 0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: surfaceColor.withValues(alpha: isComplete ? 0.60 : 0.34),
          width: isComplete ? 1.2 : 1.0,
        ),
        boxShadow: isComplete
            ? [
                BoxShadow(
                  color: AppColors.gold.withValues(alpha: 0.12),
                  blurRadius: 18,
                  spreadRadius: 1,
                ),
              ]
            : null,
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: badgeColor.withValues(alpha: isComplete ? 0.22 : 0.16),
              border: Border.all(
                color: badgeColor.withValues(alpha: isComplete ? 0.55 : 0.35),
              ),
            ),
            child: Icon(
              isComplete ? Icons.workspace_premium_rounded : icon,
              color: badgeColor,
              size: 19,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.cinzel(
                    color: badgeColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  statusText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: isComplete ? AppColors.goldBright : AppColors.textDim,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                    letterSpacing: 0.2,
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

// ─────────────────────────────────────────────────────────────────────────────
// Event Countdown Card
// ─────────────────────────────────────────────────────────────────────────────

class _EventCountdownCard extends StatelessWidget {
  final ResolvedShiaEvent event;

  const _EventCountdownCard({required this.event});

  Color get _color {
    switch (event.event.type) {
      case ShiaEventType.martyrdom:
        return AppColors.crimsonBright;
      case ShiaEventType.birth:
        return AppColors.emeraldBright;
      case ShiaEventType.occasion:
        return AppColors.gold;
    }
  }

  IconData get _icon {
    switch (event.event.type) {
      case ShiaEventType.martyrdom:
        return Icons.water_drop_rounded;
      case ShiaEventType.birth:
        return Icons.star_rounded;
      case ShiaEventType.occasion:
        return Icons.cruelty_free_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final color = _color;
    final days = event.daysUntil;
    final isToday = days == 0;
    final isTomorrow = days == 1;
    final isSoon = days <= 7;

    String countLabel;
    String countSub;
    if (isToday) {
      countLabel = t.dashboardToday;
      countSub = '';
    } else if (isTomorrow) {
      countLabel = '1';
      countSub = t.dashboardDaysUnit(1);
    } else {
      countLabel = '$days';
      countSub = t.dashboardDaysUnit(days);
    }

    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick();
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (_) => EventDetailSheet(resolved: event, event: event.event),
        );
      },
      child: Container(
      width: 118,
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color.withValues(alpha: isToday ? 0.22 : 0.10),
            color.withValues(alpha: isToday ? 0.12 : 0.04),
          ],
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: color.withValues(alpha: isSoon ? 0.55 : 0.25),
          width: isSoon ? 1.2 : 0.8,
        ),
        boxShadow: isSoon
            ? [
                BoxShadow(
                  color: color.withValues(alpha: 0.14),
                  blurRadius: 12,
                  spreadRadius: 1,
                ),
              ]
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Type icon
          Icon(_icon, color: color.withValues(alpha: 0.80), size: 15),
          // Count
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                countLabel,
                style: TextStyle(
                  color: isToday ? color : Colors.white,
                  fontSize: isToday ? 15 : 30,
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                  letterSpacing: isToday ? 0.5 : -0.5,
                ),
              ),
              if (countSub.isNotEmpty) ...[
                const SizedBox(width: 3),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    countSub,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.38),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ],
          ),
          // Event name
          Text(
            event.event.nameEn,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.72),
              fontSize: 10.5,
              fontWeight: FontWeight.w600,
              height: 1.35,
            ),
          ),
        ],
      ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Prayer Summary Card — compact home-screen tracker
// ─────────────────────────────────────────────────────────────────────────────

class _PrayerSummaryCard extends StatefulWidget {
  const _PrayerSummaryCard();

  @override
  State<_PrayerSummaryCard> createState() => _PrayerSummaryCardState();
}

class _PrayerSummaryCardState extends State<_PrayerSummaryCard> {
  static const _keys = ['fajr', 'dhuhr', 'asr', 'maghrib', 'isha'];
  static const _emojis = ['🌅', '☀️', '🌤️', '🌇', '🌙'];


  Map<String, bool> _checked = {
    'fajr': false, 'dhuhr': false, 'asr': false,
    'maghrib': false, 'isha': false,
  };
  int _streak = 0;
  bool _loading = true;

  String get _todayKey => DateTime.now().toIso8601String().substring(0, 10);

  @override
  void initState() {
    super.initState();
    PrayerDataNotifier.instance.addListener(_load);
    _load();
  }

  @override
  void dispose() {
    PrayerDataNotifier.instance.removeListener(_load);
    super.dispose();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final today = _todayKey;
    final checked = Map<String, bool>.fromEntries(
      _keys.map((k) => MapEntry(k, prefs.getBool('pt_${today}_$k') ?? false)),
    );
    if (mounted) {
      setState(() {
        _checked = checked;
        _streak = prefs.getInt('pt_streak') ?? 0;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const SizedBox(height: 8);
    final t = AppLocalizations.of(context);
    final done = _checked.values.where((v) => v).length;
    final allDone = done == 5;
    final hasStreak = _streak > 0;
    final accent = allDone ? AppColors.emeraldBright : AppColors.gold;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: GestureDetector(
        onTap: () async {
          HapticFeedback.selectionClick();
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const PrayerTimesScreen()),
          );
          _load(); // refresh after returning
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
          decoration: BoxDecoration(
            color: accent.withValues(alpha: hasStreak || done > 0 ? 0.07 : 0.04),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: accent.withValues(alpha: hasStreak || done > 0 ? 0.32 : 0.16),
            ),
          ),
          child: Row(
            children: [
              // Prayer dots
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.prayerTrackerTitle,
                      style: TextStyle(
                        color: accent,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.3,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: List.generate(5, (i) {
                        final isDone = _checked[_keys[i]] ?? false;
                        return Padding(
                          padding: EdgeInsetsDirectional.only(end: i < 4 ? 8 : 0),
                          child: Column(
                            children: [
                              Text(_emojis[i],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: isDone ? null : const Color(0x66FFFFFF),
                                  )),
                              const SizedBox(height: 4),
                              Container(
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isDone
                                      ? accent
                                      : Colors.white.withValues(alpha: 0.18),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),

              // Right side: streak + progress + arrow
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (hasStreak)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
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
                              color: AppColors.goldBright, size: 12),
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
                  SizedBox(height: hasStreak ? 8 : 0),
                  Text(
                    t.prayerTrackerProgress(done, 5),
                    style: TextStyle(
                      color: accent,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.2,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Icon(Icons.chevron_right_rounded,
                      color: Colors.white.withValues(alpha: 0.25), size: 18),
                ],
              ),
            ],
          ),
        ),
      ),
    ).animate(delay: 80.ms).fadeIn(duration: 400.ms).slideY(begin: 0.04, end: 0);
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Dhikr streak card
// ─────────────────────────────────────────────────────────────────────────────

class _DhikrStreakCard extends StatefulWidget {
  const _DhikrStreakCard();

  @override
  State<_DhikrStreakCard> createState() => _DhikrStreakCardState();
}

class _DhikrStreakCardState extends State<_DhikrStreakCard> {
  int _streak = 0;
  bool _completedToday = false;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    DhikrStreakService.instance.addListener(_load);
    _load();
  }

  @override
  void dispose() {
    DhikrStreakService.instance.removeListener(_load);
    super.dispose();
  }

  Future<void> _load() async {
    final streak = await DhikrStreakService.instance.getStreak();
    final done = await DhikrStreakService.instance.isCompletedToday();
    if (mounted) {
      setState(() {
        _streak = streak;
        _completedToday = done;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const SizedBox(height: 8);
    final t = AppLocalizations.of(context);
    final hasStreak = _streak > 0;
    final accent = _completedToday ? AppColors.emeraldBright : AppColors.gold;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: GestureDetector(
        onTap: () async {
          HapticFeedback.selectionClick();
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const DhikrScreen()),
          );
          _load();
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
          decoration: BoxDecoration(
            color: accent.withValues(
                alpha: _completedToday || hasStreak ? 0.07 : 0.04),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: accent.withValues(
                  alpha: _completedToday || hasStreak ? 0.32 : 0.16),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.dhikrTrackerTitle,
                      style: TextStyle(
                        color: accent,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.3,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      _completedToday
                          ? t.dhikrTrackerCompletedToday
                          : t.dhikrTrackerNotDoneToday,
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.70),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (hasStreak)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
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
                              color: AppColors.goldBright, size: 12),
                          const SizedBox(width: 4),
                          Text(
                            t.dhikrTrackerDayStreak(_streak),
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
                  SizedBox(height: hasStreak ? 8 : 0),
                  Icon(Icons.chevron_right_rounded,
                      color: Colors.white.withValues(alpha: 0.25), size: 18),
                ],
              ),
            ],
          ),
        ),
      ),
    ).animate(delay: 100.ms).fadeIn(duration: 400.ms).slideY(begin: 0.04, end: 0);
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Animated scroll-down arrow
// ─────────────────────────────────────────────────────────────────────────────

class _ScrollDownArrow extends StatefulWidget {
  final bool visible;
  const _ScrollDownArrow({required this.visible});

  @override
  State<_ScrollDownArrow> createState() => _ScrollDownArrowState();
}

class _ScrollDownArrowState extends State<_ScrollDownArrow>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1100),
  )..repeat(reverse: true);

  late final Animation<double> _offset = Tween<double>(begin: 0, end: 8)
      .animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));


  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 300),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: AnimatedBuilder(
          animation: _ctrl,
          builder: (context2, child2) => Transform.translate(
            offset: Offset(0, _offset.value),
            child: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.gold,
              size: 36,
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Pilgrimage intro transition
// ─────────────────────────────────────────────────────────────────────────────

class _PilgrimageRoute extends PageRouteBuilder<void> {
  _PilgrimageRoute({
    required this.destination,
    required this.emoji,
    required this.accentColor,
    required this.title,
    required this.arabicTitle,
  }) : super(
          pageBuilder: (ctx, anim, secondary) => _PilgrimageIntroPage(
            destination: destination,
            emoji: emoji,
            accentColor: accentColor,
            title: title,
            arabicTitle: arabicTitle,
          ),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: const Duration(milliseconds: 350),
          transitionsBuilder: (ctx, anim, _, child) =>
              FadeTransition(opacity: anim, child: child),
        );

  final Widget destination;
  final String emoji;
  final Color accentColor;
  final String title;
  final String arabicTitle;
}

class _PilgrimageIntroPage extends StatefulWidget {
  const _PilgrimageIntroPage({
    required this.destination,
    required this.emoji,
    required this.accentColor,
    required this.title,
    required this.arabicTitle,
  });

  final Widget destination;
  final String emoji;
  final Color accentColor;
  final String title;
  final String arabicTitle;

  @override
  State<_PilgrimageIntroPage> createState() => _PilgrimageIntroPageState();
}

class _PilgrimageIntroPageState extends State<_PilgrimageIntroPage>
    with TickerProviderStateMixin {

  late final AnimationController _bgCtrl = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 500));
  late final AnimationController _iconCtrl = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 900));
  late final AnimationController _textCtrl = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 600));
  late final AnimationController _pulseCtrl = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1500));
  late final AnimationController _revealCtrl = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 700));

  late final Animation<double> _iconScale = Tween<double>(begin: 0.0, end: 1.0)
      .animate(CurvedAnimation(parent: _iconCtrl, curve: Curves.elasticOut));
  late final Animation<double> _titleFade =
      CurvedAnimation(parent: _textCtrl, curve: Curves.easeOut);
  late final Animation<double> _titleOffset =
      Tween<double>(begin: 24.0, end: 0.0)
          .animate(CurvedAnimation(parent: _textCtrl, curve: Curves.easeOut));

  @override
  void initState() {
    super.initState();
    _runSequence();
  }

  Future<void> _runSequence() async {
    _bgCtrl.forward();
    await Future.delayed(const Duration(milliseconds: 200));
    if (!mounted) return;
    _iconCtrl.forward();
    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    _textCtrl.forward();
    await Future.delayed(const Duration(milliseconds: 200));
    if (!mounted) return;
    _pulseCtrl.repeat();
    await Future.delayed(const Duration(milliseconds: 1600));
    if (!mounted) return;
    _revealCtrl.forward();
  }

  @override
  void dispose() {
    _bgCtrl.dispose();
    _iconCtrl.dispose();
    _textCtrl.dispose();
    _pulseCtrl.dispose();
    _revealCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Destination page fades in
        AnimatedBuilder(
          animation: _revealCtrl,
          builder: (_, child) =>
              Opacity(opacity: _revealCtrl.value, child: child),
          child: widget.destination,
        ),
        // Intro overlay fades out
        AnimatedBuilder(
          animation: _revealCtrl,
          builder: (_, child) => IgnorePointer(
            ignoring: _revealCtrl.isCompleted,
            child: Opacity(opacity: 1.0 - _revealCtrl.value, child: child),
          ),
          child: _buildOverlay(),
        ),
      ],
    );
  }

  Widget _buildOverlay() {
    final accent = widget.accentColor;
    return Stack(
      fit: StackFit.expand,
      children: [
        // Solid background base
        AnimatedBuilder(
          animation: _bgCtrl,
          builder: (_, child) => Opacity(
            opacity: _bgCtrl.value,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: AppColors.deepNavy),
            ),
          ),
        ),
        // Radial accent glow
        AnimatedBuilder(
          animation: _bgCtrl,
          builder: (_, child) => Opacity(
            opacity: _bgCtrl.value,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 1.4,
                  colors: [
                    accent.withValues(alpha: 0.28),
                    accent.withValues(alpha: 0.06),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.45, 1.0],
                ),
              ),
            ),
          ),
        ),
        // Pulse rings — two offset by half a cycle
        for (final phase in [0.0, 0.5])
          Center(
            child: AnimatedBuilder(
              animation: _pulseCtrl,
              builder: (_, child) {
                final t = (_pulseCtrl.value + phase) % 1.0;
                return Opacity(
                  opacity: (1.0 - t) * 0.40,
                  child: Transform.scale(
                    scale: 1.0 + t * 1.4,
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: accent, width: 2.0),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        // Icon glow
        Center(
          child: AnimatedBuilder(
            animation: _iconCtrl,
            builder: (_, child) => Opacity(
              opacity: _iconCtrl.value * 0.55,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      accent.withValues(alpha: 0.60),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // Emoji + title
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedBuilder(
                animation: _iconScale,
                builder: (_, child) => Transform.scale(
                  scale: _iconScale.value,
                  child: Text(
                    widget.emoji,
                    style: const TextStyle(fontSize: 90),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              AnimatedBuilder(
                animation: _textCtrl,
                builder: (_, child) => Opacity(
                  opacity: _titleFade.value,
                  child: Transform.translate(
                    offset: Offset(0, _titleOffset.value),
                    child: Text(
                      widget.title,
                      style: GoogleFonts.cinzel(
                        color: accent,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              AnimatedBuilder(
                animation: _textCtrl,
                builder: (_, child) {
                  final p =
                      ((_textCtrl.value - 0.35) / 0.65).clamp(0.0, 1.0);
                  return Opacity(
                    opacity: p,
                    child: Text(
                      widget.arabicTitle,
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.amiri(
                        color: accent.withValues(alpha: 0.75),
                        fontSize: 26,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
