// lib/features/calendar/calendar_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/home/home_shell.dart';
import 'package:ayara/features/calendar/calendar_service.dart';
import 'package:ayara/features/calendar/calendar_notification_service.dart';
import 'package:ayara/features/calendar/shia_event_model.dart';
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

String _formatDate(AppLocalizations t, DateTime d) {
  final months = [
    '', t.calendarMonthJan, t.calendarMonthFeb, t.calendarMonthMar,
    t.calendarMonthApr, t.calendarMonthMay, t.calendarMonthJun,
    t.calendarMonthJul, t.calendarMonthAug, t.calendarMonthSep,
    t.calendarMonthOct, t.calendarMonthNov, t.calendarMonthDec,
  ];
  return '${months[d.month]} ${d.day}, ${d.year}';
}

// ── Screen ────────────────────────────────────────────────────────────────────

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  bool _notificationsEnabled = false;
  bool _notifBusy = false;
  late List<ResolvedShiaEvent> _events;

  @override
  void initState() {
    super.initState();
    _events = CalendarService.upcomingEvents(withinDays: 365);
    _loadNotifPref();
  }

  Future<void> _loadNotifPref() async {
    final enabled = await CalendarNotificationService.instance.isEnabled();
    if (mounted) setState(() => _notificationsEnabled = enabled);
  }

  Future<void> _toggleNotifications(bool value) async {
    final t = AppLocalizations.of(context);
    setState(() => _notifBusy = true);
    try {
      if (value) {
        final granted =
            await CalendarNotificationService.instance.requestPermission();
        if (!granted && mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(t.calendarNotifPermissionDenied)),
          );
          return;
        }
      }
      await CalendarNotificationService.instance.setEnabled(value);
      if (mounted) setState(() => _notificationsEnabled = value);
    } finally {
      if (mounted) setState(() => _notifBusy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context, t),
          SliverToBoxAdapter(child: _buildHijriHeader(context, t)),
          SliverToBoxAdapter(child: _buildNotifToggle(context, t)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
              child: Text(
                t.calendarUpcomingOccasions,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.goldBright,
                      fontFamily: 'Cinzel',
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
          ),
          _buildEventList(context, t),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, AppLocalizations t) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.deepNavy,
      expandedHeight: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded,
            color: AppColors.gold),
        onPressed: () => HomeShell.of(context)?.jumpTo(0),
      ),
      title: Text(
        t.calendarScreenTitle,
        style: GoogleFonts.cinzel(
          color: AppColors.goldBright,
          fontWeight: FontWeight.w700,
          fontSize: 18,
          letterSpacing: 0.5,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _buildHijriHeader(BuildContext context, AppLocalizations t) {
    final h = CalendarService.todayHijri;
    final monthName = _localizedHijriMonth(t, h.hMonth);
    final seasonal = _localizedSeason(t, CalendarService.currentSeason());

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: CalendarService.isMourningPeriod
              ? AppColors.crimsonBright.withValues(alpha: 0.6)
              : AppColors.borderMid,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: CalendarService.isMourningPeriod
                  ? AppColors.crimsonDeep.withValues(alpha: 0.5)
                  : AppColors.goldDim.withValues(alpha: 0.25),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                '${h.hDay}',
                style: GoogleFonts.cinzel(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: CalendarService.isMourningPeriod
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
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  '${h.hYear} ${t.calendarAH}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textDim,
                        letterSpacing: 0.3,
                      ),
                ),
                if (seasonal != null) ...[
                  const SizedBox(height: 6),
                  Text(
                    seasonal,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: CalendarService.isMourningPeriod
                              ? AppColors.crimsonLight
                              : AppColors.gold,
                          letterSpacing: 0.3,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.05, end: 0);
  }

  Widget _buildNotifToggle(BuildContext context, AppLocalizations t) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 4),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border, width: 0.8),
      ),
      child: Row(
        children: [
          Icon(
            Icons.notifications_rounded,
            color: _notificationsEnabled ? AppColors.goldBright : AppColors.textMuted,
            size: 22,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.calendarOccasionRemindersTitle,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  t.calendarOccasionRemindersHint,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.textDim,
                      ),
                ),
              ],
            ),
          ),
          _notifBusy
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Switch(
                  value: _notificationsEnabled,
                  onChanged: _toggleNotifications,
                ),
        ],
      ),
    );
  }

  Widget _buildEventList(BuildContext context, AppLocalizations t) {
    if (_events.isEmpty) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Text(
              t.calendarNoEvents,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.textMuted),
            ),
          ),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => _EventTile(resolved: _events[index], index: index),
        childCount: _events.length,
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _EventTile extends StatelessWidget {
  final ResolvedShiaEvent resolved;
  final int index;

  const _EventTile({required this.resolved, required this.index});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final event = resolved.event;
    final days = resolved.daysUntil;

    final isMartyrdom = event.type == ShiaEventType.martyrdom;
    final isBirth     = event.type == ShiaEventType.birth;
    final isHigh      = event.isHighImportance;

    final Color accentColor = isMartyrdom
        ? AppColors.crimsonBright
        : isBirth
            ? AppColors.emeraldBright
            : AppColors.gold;

    final IconData icon = isMartyrdom
        ? Icons.local_fire_department_rounded
        : isBirth
            ? Icons.star_rounded
            : Icons.event_rounded;

    final String dateLabel = _formatDate(t, resolved.gregorianDate);
    final String hijriLabel =
        '${event.hijriDay} ${_localizedHijriMonth(t, event.hijriMonth)}';

    final String countdownLabel = resolved.isToday
        ? t.calendarCountdownToday
        : resolved.isTomorrow
            ? t.calendarCountdownTomorrow
            : t.calendarCountdownDays(days);

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 6, 16, 0),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isHigh
              ? accentColor.withValues(alpha: 0.35)
              : AppColors.border,
          width: isHigh ? 1.2 : 0.8,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => _showDetail(context),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: accentColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: accentColor, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            event.nameEn,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.textPrimary,
                                  height: 1.3,
                                ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        _CountdownBadge(label: countdownLabel, color: accentColor),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      event.nameAr,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: accentColor.withValues(alpha: 0.85),
                            fontFamily: 'Arial',
                            fontSize: 13,
                          ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(Icons.calendar_today_rounded,
                            size: 11, color: AppColors.textMuted),
                        const SizedBox(width: 4),
                        Text(
                          '$dateLabel  ·  $hijriLabel ${t.calendarAH}',
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: AppColors.textDim,
                                letterSpacing: 0.2,
                              ),
                        ),
                      ],
                    ),
                    if (isHigh) ...[
                      const SizedBox(height: 6),
                      Text(
                        event.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: AppColors.textMuted,
                              height: 1.45,
                            ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    )
        .animate(delay: (index * 40).ms)
        .fadeIn(duration: 350.ms)
        .slideX(begin: 0.04, end: 0);
  }

  void _showDetail(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => _EventDetailSheet(resolved: resolved, event: resolved.event),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _CountdownBadge extends StatelessWidget {
  final String label;
  final Color color;

  const _CountdownBadge({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.35), width: 0.8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 10,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.6,
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _EventDetailSheet extends StatelessWidget {
  final ResolvedShiaEvent resolved;
  final ShiaEvent event;

  const _EventDetailSheet({required this.resolved, required this.event});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final isMartyrdom = event.type == ShiaEventType.martyrdom;
    final isBirth     = event.type == ShiaEventType.birth;

    final Color accent = isMartyrdom
        ? AppColors.crimsonBright
        : isBirth
            ? AppColors.emeraldBright
            : AppColors.gold;

    final String hijriLabel =
        '${event.hijriDay} ${_localizedHijriMonth(t, event.hijriMonth)}';

    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.35,
      maxChildSize: 0.88,
      expand: false,
      builder: (_, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.navy,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            border: Border.all(
                color: accent.withValues(alpha: 0.25), width: 0.8),
          ),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 12, bottom: 16),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppColors.borderMid,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Center(
                child: Text(
                  event.nameAr,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: accent,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Arial',
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  event.nameEn,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w700,
                        height: 1.35,
                      ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _datePill('${event.hijriDay} $hijriLabel ${t.calendarAH}', accent),
                  const SizedBox(width: 8),
                  _datePill(
                    '${resolved.gregorianDate.day}/${resolved.gregorianDate.month}/${resolved.gregorianDate.year}',
                    AppColors.textMuted,
                  ),
                ],
              ),
              if (event.personEn != null) ...[
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    event.personEn!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: accent.withValues(alpha: 0.8),
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ),
              ],
              const SizedBox(height: 20),
              const Divider(height: 1, color: AppColors.border),
              const SizedBox(height: 16),
              Text(
                event.description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textDim,
                      height: 1.65,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _datePill(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.3), width: 0.8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}
