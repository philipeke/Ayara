import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/calendar/calendar_notification_service.dart';
import 'package:ayara/features/qibla/services/prayer_notification_service.dart';
import 'package:ayara/features/settings/services/daily_reminder_service.dart';
import 'package:ayara/features/settings/services/dhikr_reminder_service.dart';
import 'package:ayara/l10n/app_localizations.dart';

import 'settings_sheet_widgets.dart';

class NotificationsSection extends StatelessWidget {
  const NotificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return SettingsEntryTile(
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
      final perPrayer = <String, bool>{};

      for (final key in _prayerKeys) {
        perPrayer[key] = await _prayerSvc.isPrayerEnabled(key);
      }

      if (!mounted) {
        return;
      }

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
        _perPrayer.addAll(perPrayer);
        _loading = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Map<String, ({String title, String body})> _labels(AppLocalizations t) => {
    'fajr': (title: t.prayerNotifTitleFajr, body: t.prayerNotifBodyFajr),
    'dhuhr': (title: t.prayerNotifTitleDhuhr, body: t.prayerNotifBodyDhuhr),
    'asr': (title: t.prayerNotifTitleAsr, body: t.prayerNotifBodyAsr),
    'maghrib': (
      title: t.prayerNotifTitleMaghrib,
      body: t.prayerNotifBodyMaghrib,
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

      try {
        final position = await Geolocator.getLastKnownPosition();
        if (position != null) {
          await _prayerSvc.scheduleForPosition(
            position.latitude,
            position.longitude,
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
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _disablePrayer() async {
    await _prayerSvc.cancelAll();
    await _prayerSvc.setEnabled(false);
    if (mounted) {
      setState(() => _prayerEnabled = false);
    }
  }

  Future<void> _togglePerPrayer(String key, bool value) async {
    final t = AppLocalizations.of(context);
    await _prayerSvc.setPrayerEnabled(key, value);

    if (mounted) {
      setState(() => _perPrayer[key] = value);
    }

    try {
      final position = await Geolocator.getLastKnownPosition();
      if (position != null) {
        await _prayerSvc.scheduleForPosition(
          position.latitude,
          position.longitude,
          labels: _labels(t),
        );
      }
    } catch (_) {}
  }

  Future<void> _toggleCalendar(bool value) async {
    await _calSvc.setEnabled(value);
    if (mounted) {
      setState(() => _calEnabled = value);
    }
  }

  Future<void> _enableDaily() async {
    setState(() => _loading = true);

    try {
      final granted = await _dailySvc.requestPermission();
      if (!granted) {
        if (mounted) {
          setState(() {
            _dailyOsDenied = true;
            _loading = false;
          });
        }
        return;
      }

      await _dailySvc.setEnabled(true);
      if (mounted) {
        setState(() {
          _dailyEnabled = true;
          _dailyOsDenied = false;
          _loading = false;
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _disableDaily() async {
    await _dailySvc.setEnabled(false);
    if (mounted) {
      setState(() => _dailyEnabled = false);
    }
  }

  Future<void> _enableDhikr() async {
    setState(() => _loading = true);

    try {
      final granted = await _dhikrSvc.requestPermission();
      if (!granted) {
        if (mounted) {
          setState(() {
            _dhikrOsDenied = true;
            _loading = false;
          });
        }
        return;
      }

      await _dhikrSvc.setEnabled(true);
      if (mounted) {
        setState(() {
          _dhikrEnabled = true;
          _dhikrOsDenied = false;
          _loading = false;
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _disableDhikr() async {
    await _dhikrSvc.setEnabled(false);
    if (mounted) {
      setState(() => _dhikrEnabled = false);
    }
  }

  Future<void> _pickDhikrTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: _dhikrHour, minute: _dhikrMinute),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
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
    if (picked == null || !mounted) {
      return;
    }

    await _dhikrSvc.setTime(picked.hour, picked.minute);
    setState(() {
      _dhikrHour = picked.hour;
      _dhikrMinute = picked.minute;
    });
  }

  Future<void> _pickDailyTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: _dailyHour, minute: _dailyMinute),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
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
    if (picked == null || !mounted) {
      return;
    }

    await _dailySvc.setTime(picked.hour, picked.minute);
    setState(() {
      _dailyHour = picked.hour;
      _dailyMinute = picked.minute;
    });
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

  Widget _buildTimeRow({
    required String emoji,
    required String label,
    required int hour,
    required int minute,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Row(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.88),
                  fontSize: 14.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}',
              style: const TextStyle(
                color: AppColors.gold,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 6),
            Icon(
              Icons.edit_rounded,
              size: 14,
              color: Colors.white.withValues(alpha: 0.35),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return SettingsSheetScaffold(
      title: t.notificationsSectionTitle,
      icon: Icons.notifications_rounded,
      children: [
        if (_loading)
          const Center(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: CircularProgressIndicator(
                color: AppColors.gold,
                strokeWidth: 2,
              ),
            ),
          )
        else ...[
          SettingsSectionHeader(t.prayerNotificationsTitle.toUpperCase()),
          const SizedBox(height: 8),
          SettingsSheetCard(
            child: Column(
              children: [
                SettingsToggleRow(
                  emoji: '🕌',
                  title: t.prayerNotificationsTitle,
                  subtitle: t.prayerNotificationsDescription,
                  value: _prayerEnabled,
                  onChanged: (value) =>
                      value ? _enablePrayer() : _disablePrayer(),
                ),
                if (_osDenied) ...[
                  const SettingsSheetDivider(),
                  SettingsWarningRow(
                    message: t.prayerNotificationsDenied,
                    actionLabel: t.prayerNotificationsOpenSettings,
                    onTap: () => Geolocator.openAppSettings(),
                  ),
                ],
                if (_prayerEnabled && !_osDenied) ...[
                  const SettingsSheetDivider(),
                  ...List.generate(_prayerKeys.length, (index) {
                    final key = _prayerKeys[index];
                    return SettingsToggleRow(
                      emoji: _prayerEmojis[index],
                      title: _prayerName(t, key),
                      value: _perPrayer[key] ?? true,
                      onChanged: (value) => _togglePerPrayer(key, value),
                      compact: true,
                    );
                  }),
                ],
              ],
            ),
          ),
          const SizedBox(height: 20),
          SettingsSectionHeader(t.calendarOccasionRemindersTitle.toUpperCase()),
          const SizedBox(height: 8),
          SettingsSheetCard(
            child: SettingsToggleRow(
              emoji: '📅',
              title: t.calendarOccasionRemindersTitle,
              subtitle: t.calendarOccasionRemindersHint,
              value: _calEnabled,
              onChanged: _toggleCalendar,
            ),
          ),
          const SizedBox(height: 20),
          SettingsSectionHeader(t.dhikrReminderTitle.toUpperCase()),
          const SizedBox(height: 8),
          SettingsSheetCard(
            child: Column(
              children: [
                SettingsToggleRow(
                  emoji: '🕌',
                  title: t.dhikrReminderTitle,
                  subtitle: t.dhikrReminderDescription,
                  value: _dhikrEnabled,
                  onChanged: (value) =>
                      value ? _enableDhikr() : _disableDhikr(),
                ),
                if (_dhikrOsDenied) ...[
                  const SettingsSheetDivider(),
                  SettingsWarningRow(
                    message: t.prayerNotificationsDenied,
                    actionLabel: t.prayerNotificationsOpenSettings,
                    onTap: () => Geolocator.openAppSettings(),
                  ),
                ],
                if (_dhikrEnabled && !_dhikrOsDenied) ...[
                  const SettingsSheetDivider(),
                  _buildTimeRow(
                    emoji: '🕐',
                    label: t.dhikrReminderTimeLabel,
                    hour: _dhikrHour,
                    minute: _dhikrMinute,
                    onTap: _pickDhikrTime,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 20),
          SettingsSectionHeader(t.dailyReflectionReminderTitle.toUpperCase()),
          const SizedBox(height: 8),
          SettingsSheetCard(
            child: Column(
              children: [
                SettingsToggleRow(
                  emoji: '✨',
                  title: t.dailyReflectionReminderTitle,
                  subtitle: t.dailyReflectionReminderDescription,
                  value: _dailyEnabled,
                  onChanged: (value) =>
                      value ? _enableDaily() : _disableDaily(),
                ),
                if (_dailyOsDenied) ...[
                  const SettingsSheetDivider(),
                  SettingsWarningRow(
                    message: t.prayerNotificationsDenied,
                    actionLabel: t.prayerNotificationsOpenSettings,
                    onTap: () => Geolocator.openAppSettings(),
                  ),
                ],
                if (_dailyEnabled && !_dailyOsDenied) ...[
                  const SettingsSheetDivider(),
                  _buildTimeRow(
                    emoji: '🕐',
                    label: t.dailyReflectionReminderTimeLabel,
                    hour: _dailyHour,
                    minute: _dailyMinute,
                    onTap: _pickDailyTime,
                  ),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}
