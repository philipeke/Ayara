// lib/features/settings/widgets/notifications_section.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/qibla/services/prayer_notification_service.dart';
import 'package:ayara/features/calendar/calendar_notification_service.dart';
import 'package:ayara/features/settings/services/daily_reminder_service.dart';
import 'package:ayara/features/settings/services/dhikr_reminder_service.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Entry row shown in the Settings list
// ─────────────────────────────────────────────────────────────────────────────

class NotificationsSection extends StatelessWidget {
  const NotificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return _SettingsTile(
      icon: Icons.notifications_rounded,
      title: t.notificationsSectionTitle,
      subtitle: t.notificationsSectionSubtitle,
      onTap: () => _showSheet(context),
    );
  }

  void _showSheet(BuildContext context) {
    HapticFeedback.selectionClick();
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const _NotificationsSheet(),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Shared tile style used within the settings list
// ─────────────────────────────────────────────────────────────────────────────

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 14, 16),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.04),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.gold.withValues(alpha: 0.22),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: AppColors.gold.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: AppColors.gold, size: 18),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.45),
                      fontSize: 12,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: Colors.white.withValues(alpha: 0.30),
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Bottom sheet with all notification controls
// ─────────────────────────────────────────────────────────────────────────────

class _NotificationsSheet extends StatefulWidget {
  const _NotificationsSheet();

  @override
  State<_NotificationsSheet> createState() => _NotificationsSheetState();
}

class _NotificationsSheetState extends State<_NotificationsSheet> {
  static const _prayerKeys = ['fajr', 'dhuhr', 'asr', 'maghrib', 'isha'];
  static const _prayerEmojis = ['🌅', '☀️', '🌤️', '🌇', '🌙'];

  final _prayerSvc = PrayerNotificationService.instance;
  final _calSvc = CalendarNotificationService.instance;
  final _dailySvc = DailyReminderService.instance;
  final _dhikrSvc = DhikrReminderService.instance;

  bool _prayerEnabled = false;
  bool _osDenied = false;
  bool _calEnabled = false;
  bool _dailyEnabled = false;
  bool _dailyOsDenied = false;
  int _dailyHour = 9;
  int _dailyMinute = 0;
  bool _dhikrEnabled = false;
  bool _dhikrOsDenied = false;
  int _dhikrHour = 21;
  int _dhikrMinute = 0;
  bool _loading = true;

  // Voice input / microphone
  final SpeechToText _speech = SpeechToText();
  bool _micGranted = false;
  bool _micDenied = false;

  final Map<String, bool> _perPrayer = {
    'fajr': true,
    'dhuhr': true,
    'asr': true,
    'maghrib': true,
    'isha': true,
  };

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final prayerOn = await _prayerSvc.isEnabled();
      final osOk = await _prayerSvc.areNotificationsEnabled();
      final calOn = await _calSvc.isEnabled();
      final dailyOn = await _dailySvc.isEnabled();
      final dailyOsOk = await _dailySvc.areNotificationsEnabled();
      final dHour = await _dailySvc.getHour();
      final dMinute = await _dailySvc.getMinute();
      final dhikrOn = await _dhikrSvc.isEnabled();
      final dhikrOsOk = await _dhikrSvc.areNotificationsEnabled();
      final dhHour = await _dhikrSvc.getHour();
      final dhMinute = await _dhikrSvc.getMinute();
      final Map<String, bool> pp = {};
      for (final k in _prayerKeys) {
        pp[k] = await _prayerSvc.isPrayerEnabled(k);
      }
      // Check actual OS mic permission state. On iOS/Android, if the user
      // has already decided (granted or denied), this returns immediately
      // without showing any dialog.
      final micGranted = await _speech.initialize(
        onError: (_) {},
        onStatus: (_) {},
      );
      if (mounted) {
        setState(() {
          _prayerEnabled = prayerOn;
          _osDenied = prayerOn && !osOk;
          _calEnabled = calOn;
          _dailyEnabled = dailyOn;
          _dailyOsDenied = dailyOn && !dailyOsOk;
          _dailyHour = dHour;
          _dailyMinute = dMinute;
          _dhikrEnabled = dhikrOn;
          _dhikrOsDenied = dhikrOn && !dhikrOsOk;
          _dhikrHour = dhHour;
          _dhikrMinute = dhMinute;
          _perPrayer.addAll(pp);
          _micGranted = micGranted;
          _loading = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  Map<String, ({String title, String body})> _labels(AppLocalizations t) => {
        'fajr': (title: t.prayerNotifTitleFajr, body: t.prayerNotifBodyFajr),
        'dhuhr':
            (title: t.prayerNotifTitleDhuhr, body: t.prayerNotifBodyDhuhr),
        'asr': (title: t.prayerNotifTitleAsr, body: t.prayerNotifBodyAsr),
        'maghrib': (
          title: t.prayerNotifTitleMaghrib,
          body: t.prayerNotifBodyMaghrib
        ),
        'isha': (title: t.prayerNotifTitleIsha, body: t.prayerNotifBodyIsha),
      };

  Future<void> _enablePrayer() async {
    final t = AppLocalizations.of(context);
    setState(() => _loading = true);
    try {
      final granted = await _prayerSvc.requestPermission();
      if (!granted) {
        if (mounted) {
          setState(() {
            _osDenied = true;
            _loading = false;
          });
        }
        return;
      }
      await _prayerSvc.setEnabled(true);
      // Try last known position to schedule immediately
      try {
        final pos = await Geolocator.getLastKnownPosition();
        if (pos != null) {
          await _prayerSvc.scheduleForPosition(
            pos.latitude,
            pos.longitude,
            labels: _labels(t),
          );
        }
      } catch (_) {}
      if (mounted) {
        setState(() {
          _prayerEnabled = true;
          _osDenied = false;
          _loading = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _disablePrayer() async {
    await _prayerSvc.cancelAll();
    await _prayerSvc.setEnabled(false);
    if (mounted) setState(() => _prayerEnabled = false);
  }

  Future<void> _togglePerPrayer(String key, bool value) async {
    final t = AppLocalizations.of(context);
    await _prayerSvc.setPrayerEnabled(key, value);
    if (mounted) setState(() => _perPrayer[key] = value);
    try {
      final pos = await Geolocator.getLastKnownPosition();
      if (pos != null) {
        await _prayerSvc.scheduleForPosition(
          pos.latitude,
          pos.longitude,
          labels: _labels(t),
        );
      }
    } catch (_) {}
  }

  Future<void> _toggleCalendar(bool value) async {
    await _calSvc.setEnabled(value);
    if (mounted) setState(() => _calEnabled = value);
  }

  Future<void> _enableDaily() async {
    setState(() => _loading = true);
    try {
      final granted = await _dailySvc.requestPermission();
      if (!granted) {
        if (mounted) setState(() { _dailyOsDenied = true; _loading = false; });
        return;
      }
      await _dailySvc.setEnabled(true);
      if (mounted) setState(() { _dailyEnabled = true; _dailyOsDenied = false; _loading = false; });
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _disableDaily() async {
    await _dailySvc.setEnabled(false);
    if (mounted) setState(() => _dailyEnabled = false);
  }

  Future<void> _enableDhikr() async {
    setState(() => _loading = true);
    try {
      final granted = await _dhikrSvc.requestPermission();
      if (!granted) {
        if (mounted) setState(() { _dhikrOsDenied = true; _loading = false; });
        return;
      }
      await _dhikrSvc.setEnabled(true);
      if (mounted) setState(() { _dhikrEnabled = true; _dhikrOsDenied = false; _loading = false; });
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _disableDhikr() async {
    await _dhikrSvc.setEnabled(false);
    if (mounted) setState(() => _dhikrEnabled = false);
  }

  Future<void> _requestMic() async {
    setState(() => _loading = true);
    final available = await _speech.initialize(
      onError: (_) {},
      onStatus: (_) {},
    );
    if (mounted) {
      setState(() {
        _micGranted = available;
        _micDenied = !available;
        _loading = false;
      });
    }
  }

  Future<void> _pickDhikrTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: _dhikrHour, minute: _dhikrMinute),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme: const ColorScheme.dark(
            primary: AppColors.gold,
            onPrimary: AppColors.islamicDeep,
            surface: AppColors.navy,
            onSurface: Colors.white,
          ),
        ),
        child: child!,
      ),
    );
    if (picked == null || !mounted) return;
    await _dhikrSvc.setTime(picked.hour, picked.minute);
    if (mounted) setState(() { _dhikrHour = picked.hour; _dhikrMinute = picked.minute; });
  }

  Future<void> _pickDailyTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: _dailyHour, minute: _dailyMinute),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme: const ColorScheme.dark(
            primary: AppColors.gold,
            onPrimary: AppColors.islamicDeep,
            surface: AppColors.navy,
            onSurface: Colors.white,
          ),
        ),
        child: child!,
      ),
    );
    if (picked == null || !mounted) return;
    await _dailySvc.setTime(picked.hour, picked.minute);
    if (mounted) setState(() { _dailyHour = picked.hour; _dailyMinute = picked.minute; });
  }

  String _prayerName(AppLocalizations t, String key) {
    switch (key) {
      case 'fajr':
        return t.prayerTimesFajr;
      case 'dhuhr':
        return t.prayerTimesDhuhr;
      case 'asr':
        return t.prayerTimesAsr;
      case 'maghrib':
        return t.prayerTimesMaghrib;
      case 'isha':
        return t.prayerTimesIsha;
      default:
        return key;
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final bottomPad = MediaQuery.of(context).padding.bottom;

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.navy,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 24 + bottomPad),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // ── Handle ────────────────────────────────────────────────────────
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 14),
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.20),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          // ── Sheet title ───────────────────────────────────────────────────
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: AppColors.gold, size: 18),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.notifications_rounded,
                  color: AppColors.gold, size: 20),
              const SizedBox(width: 10),
              Text(
                t.notificationsSectionTitle,
                style: const TextStyle(
                  color: AppColors.goldBright,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          if (_loading)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: CircularProgressIndicator(
                    color: AppColors.gold, strokeWidth: 2),
              ),
            )
          else ...[
            // ── Prayer Notifications ────────────────────────────────────────
            _SectionHeader(t.prayerNotificationsTitle.toUpperCase()),
            const SizedBox(height: 8),
            _SheetCard(
              child: Column(
                children: [
                  // Master toggle
                  _ToggleRow(
                    emoji: '🕌',
                    title: t.prayerNotificationsTitle,
                    subtitle: t.prayerNotificationsDescription,
                    value: _prayerEnabled,
                    onChanged: (v) => v ? _enablePrayer() : _disablePrayer(),
                  ),

                  // OS denied warning
                  if (_osDenied) ...[
                    _Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.warning_amber_rounded,
                              color: Colors.orange.withValues(alpha: 0.85),
                              size: 15),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  t.prayerNotificationsDenied,
                                  style: TextStyle(
                                    color:
                                        Colors.orange.withValues(alpha: 0.85),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                GestureDetector(
                                  onTap: () => Geolocator.openAppSettings(),
                                  child: Text(
                                    t.prayerNotificationsOpenSettings,
                                    style: TextStyle(
                                      color: AppColors.gold,
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.gold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  // Per-prayer toggles
                  if (_prayerEnabled && !_osDenied) ...[
                    _Divider(),
                    ...List.generate(_prayerKeys.length, (i) {
                      final key = _prayerKeys[i];
                      return _ToggleRow(
                        emoji: _prayerEmojis[i],
                        title: _prayerName(t, key),
                        value: _perPrayer[key] ?? true,
                        onChanged: (v) => _togglePerPrayer(key, v),
                        compact: true,
                      );
                    }),
                  ],
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ── Calendar Notifications ──────────────────────────────────────
            _SectionHeader(t.calendarOccasionRemindersTitle.toUpperCase()),
            const SizedBox(height: 8),
            _SheetCard(
              child: _ToggleRow(
                emoji: '📅',
                title: t.calendarOccasionRemindersTitle,
                subtitle: t.calendarOccasionRemindersHint,
                value: _calEnabled,
                onChanged: _toggleCalendar,
              ),
            ),

            const SizedBox(height: 20),

            // ── Tasbīḥ Reminder ─────────────────────────────────────────────
            _SectionHeader(t.dhikrReminderTitle.toUpperCase()),
            const SizedBox(height: 8),
            _SheetCard(
              child: Column(
                children: [
                  _ToggleRow(
                    emoji: '🕌',
                    title: t.dhikrReminderTitle,
                    subtitle: t.dhikrReminderDescription,
                    value: _dhikrEnabled,
                    onChanged: (v) => v ? _enableDhikr() : _disableDhikr(),
                  ),

                  if (_dhikrOsDenied) ...[
                    _Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.warning_amber_rounded,
                              color: Colors.orange.withValues(alpha: 0.85),
                              size: 15),
                          const SizedBox(width: 8),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Geolocator.openAppSettings(),
                              child: Text(
                                t.prayerNotificationsOpenSettings,
                                style: TextStyle(
                                  color: AppColors.gold,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.gold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  if (_dhikrEnabled && !_dhikrOsDenied) ...[
                    _Divider(),
                    GestureDetector(
                      onTap: _pickDhikrTime,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 12),
                        child: Row(
                          children: [
                            const Text('🕐', style: TextStyle(fontSize: 18)),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                t.dhikrReminderTimeLabel,
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.88),
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              '${_dhikrHour.toString().padLeft(2, '0')}:${_dhikrMinute.toString().padLeft(2, '0')}',
                              style: const TextStyle(
                                color: AppColors.gold,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Icon(Icons.edit_rounded,
                                size: 14,
                                color: Colors.white.withValues(alpha: 0.35)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ── Daily Reflection Reminder ───────────────────────────────────
            _SectionHeader(t.dailyReflectionReminderTitle.toUpperCase()),
            const SizedBox(height: 8),
            _SheetCard(
              child: Column(
                children: [
                  _ToggleRow(
                    emoji: '✨',
                    title: t.dailyReflectionReminderTitle,
                    subtitle: t.dailyReflectionReminderDescription,
                    value: _dailyEnabled,
                    onChanged: (v) => v ? _enableDaily() : _disableDaily(),
                  ),

                  if (_dailyOsDenied) ...[
                    _Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.warning_amber_rounded,
                              color: Colors.orange.withValues(alpha: 0.85),
                              size: 15),
                          const SizedBox(width: 8),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Geolocator.openAppSettings(),
                              child: Text(
                                t.prayerNotificationsOpenSettings,
                                style: TextStyle(
                                  color: AppColors.gold,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.gold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  if (_dailyEnabled && !_dailyOsDenied) ...[
                    _Divider(),
                    GestureDetector(
                      onTap: _pickDailyTime,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 12),
                        child: Row(
                          children: [
                            const Text('🕐',
                                style: TextStyle(fontSize: 18)),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                t.dailyReflectionReminderTimeLabel,
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.88),
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              '${_dailyHour.toString().padLeft(2, '0')}:${_dailyMinute.toString().padLeft(2, '0')}',
                              style: const TextStyle(
                                color: AppColors.gold,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Icon(Icons.edit_rounded,
                                size: 14,
                                color: Colors.white.withValues(alpha: 0.35)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 20),

            // ── Voice Input ─────────────────────────────────────────────────
            _SectionHeader(t.voiceInputTitle.toUpperCase()),
            const SizedBox(height: 8),
            _SheetCard(
              child: Column(
                children: [
                  _ToggleRow(
                    emoji: '🎙️',
                    title: t.voiceInputMicTitle,
                    subtitle: t.voiceInputMicSubtitle,
                    value: _micGranted,
                    onChanged: (v) =>
                        v ? _requestMic() : Geolocator.openAppSettings(),
                  ),

                  if (_micDenied) ...[
                    _Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.warning_amber_rounded,
                              color: Colors.orange.withValues(alpha: 0.85),
                              size: 15),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  t.voiceInputMicDenied,
                                  style: TextStyle(
                                    color:
                                        Colors.orange.withValues(alpha: 0.85),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                GestureDetector(
                                  onTap: () => Geolocator.openAppSettings(),
                                  child: Text(
                                    t.prayerNotificationsOpenSettings,
                                    style: TextStyle(
                                      color: AppColors.gold,
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.gold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Sheet sub-widgets
// ─────────────────────────────────────────────────────────────────────────────

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.text);
  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: const TextStyle(
          color: AppColors.gold,
          fontSize: 10,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.3,
        ),
      );
}

class _SheetCard extends StatelessWidget {
  const _SheetCard({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.gold.withValues(alpha: 0.18),
          ),
        ),
        child: child,
      );
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Divider(
        height: 1,
        thickness: 0.5,
        color: AppColors.gold.withValues(alpha: 0.12),
        indent: 14,
        endIndent: 14,
      );
}

class _ToggleRow extends StatelessWidget {
  const _ToggleRow({
    required this.emoji,
    required this.title,
    this.subtitle,
    required this.value,
    required this.onChanged,
    this.compact = false,
  });

  final String emoji;
  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 14, vertical: compact ? 2 : 12),
      child: Row(
        crossAxisAlignment:
            subtitle != null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Text(emoji, style: TextStyle(fontSize: compact ? 15 : 18)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.88),
                    fontSize: compact ? 13.5 : 14.5,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 3),
                  Text(
                    subtitle!,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.42),
                      fontSize: 11.5,
                      height: 1.35,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: 8),
          Switch(
            value: value,
            onChanged: (v) {
              HapticFeedback.selectionClick();
              onChanged(v);
            },
            activeThumbColor: AppColors.gold,
            activeTrackColor: AppColors.gold.withValues(alpha: 0.30),
            inactiveThumbColor: Colors.white.withValues(alpha: 0.40),
            inactiveTrackColor: Colors.white.withValues(alpha: 0.10),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ],
      ),
    );
  }
}
