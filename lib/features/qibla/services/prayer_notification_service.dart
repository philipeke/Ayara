// lib/features/qibla/services/prayer_notification_service.dart
import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/timezone.dart' as tz;

import 'package:ayara/features/qibla/services/prayer_time_service.dart';

class PrayerNotificationService {
  PrayerNotificationService._();
  static final instance = PrayerNotificationService._();

  static const _channelId   = 'ayara_prayer_times';
  static const _channelName = 'Prayer Times';
  static const _channelDesc = 'Daily prayer time reminders';

  // SharedPreferences keys
  static const _prefEnabled = 'prayer_notif_enabled';
  static const _prefFajr    = 'prayer_notif_fajr';
  static const _prefDhuhr   = 'prayer_notif_dhuhr';
  static const _prefAsr     = 'prayer_notif_asr';
  static const _prefMaghrib = 'prayer_notif_maghrib';
  static const _prefIsha    = 'prayer_notif_isha';

  // Notification ID: dayOffset (0-6) * 10 + prayerIndex (0-4)  → IDs 0-64
  static const _prayerKeys   = ['fajr', 'dhuhr', 'asr', 'maghrib', 'isha'];
  static const _prayerEmojis = ['🌅', '☀️', '🌤️', '🌇', '🌙'];
  static const _prayerArabic = ['الفجر', 'الظهر', 'العصر', 'المغرب', 'العشاء'];

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  bool _initialized = false;

  // ── Init ────────────────────────────────────────────────────────────────────

  Future<void> init() async {
    if (_initialized) return;
    _initialized = true;

    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwin = DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );
    await _plugin.initialize(
      const InitializationSettings(android: android, iOS: darwin),
    );
  }

  // ── Permissions ─────────────────────────────────────────────────────────────

  /// Request OS notification permission. Returns true if granted.
  Future<bool> requestPermission() async {
    await init();
    if (kIsWeb) return false;

    if (Platform.isIOS) {
      final ios = _plugin.resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>();
      return await ios?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          ) ??
          false;
    }

    if (Platform.isAndroid) {
      final android = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
      return await android?.requestNotificationsPermission() ?? false;
    }

    return false;
  }

  /// Returns true if OS notifications are currently enabled for the app.
  Future<bool> areNotificationsEnabled() async {
    await init();
    if (kIsWeb) return false;

    if (Platform.isAndroid) {
      final android = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
      return await android?.areNotificationsEnabled() ?? false;
    }

    // iOS: no direct API without requesting — check our stored pref instead
    return isEnabled();
  }

  // ── Preferences ─────────────────────────────────────────────────────────────

  Future<bool> isEnabled() async {
    final p = await SharedPreferences.getInstance();
    return p.getBool(_prefEnabled) ?? false;
  }

  Future<void> setEnabled(bool value) async {
    final p = await SharedPreferences.getInstance();
    await p.setBool(_prefEnabled, value);
  }

  Future<bool> isPrayerEnabled(String key) async {
    final p = await SharedPreferences.getInstance();
    return p.getBool(_prefKeyFor(key)) ?? true; // all on by default
  }

  Future<void> setPrayerEnabled(String key, bool value) async {
    final p = await SharedPreferences.getInstance();
    await p.setBool(_prefKeyFor(key), value);
    // Re-schedule if notifications are still globally on
    // (caller must pass position; we just persist the flag here)
  }

  String _prefKeyFor(String prayer) {
    switch (prayer) {
      case 'fajr':    return _prefFajr;
      case 'dhuhr':   return _prefDhuhr;
      case 'asr':     return _prefAsr;
      case 'maghrib': return _prefMaghrib;
      case 'isha':    return _prefIsha;
      default:        return 'prayer_notif_$prayer';
    }
  }

  // ── Scheduling ──────────────────────────────────────────────────────────────

  /// Schedule the next 7 days of prayer notifications for [lat]/[lng].
  /// Pass [labels] (built from AppLocalizations in the UI layer) so notification
  /// text is fully localised. Falls back to English if omitted.
  Future<void> scheduleForPosition(
    double lat,
    double lng, {
    Map<String, ({String title, String body})>? labels,
  }) async {
    await init();
    await cancelAll();

    if (!await isEnabled()) return;

    final now = DateTime.now();

    for (int dayOffset = 0; dayOffset < 7; dayOffset++) {
      final d = now.add(Duration(days: dayOffset));
      final day = PrayerTimeService.calculateForDate(
          lat, lng, d.year, d.month, d.day);
      if (day == null) continue;

      final times = {
        'fajr':    day.fajr,
        'dhuhr':   day.dhuhr,
        'asr':     day.asr,
        'maghrib': day.maghrib,
        'isha':    day.isha,
      };

      for (int pi = 0; pi < _prayerKeys.length; pi++) {
        final key = _prayerKeys[pi];
        if (!await isPrayerEnabled(key)) continue;

        final prayerTime = times[key]!;
        if (prayerTime.isBefore(now)) continue;

        final notifId = dayOffset * 10 + pi;
        final tzTime = tz.TZDateTime.from(prayerTime, tz.local);
        final label = labels?[key];
        final title = label?.title ?? '${_prayerEmojis[pi]} ${_nameFor(key)}';
        final body  = label?.body  ?? 'Time for ${_nameFor(key)} — ${_prayerArabic[pi]}';

        await _plugin.zonedSchedule(
          notifId,
          title,
          body,
          tzTime,
          NotificationDetails(
            android: AndroidNotificationDetails(
              _channelId,
              _channelName,
              channelDescription: _channelDesc,
              importance: Importance.high,
              priority: Priority.high,
              icon: '@mipmap/ic_launcher',
              color: const Color(0xFFC49A3C),
            ),
            iOS: const DarwinNotificationDetails(
              presentAlert: true,
              presentBadge: false,
              presentSound: true,
            ),
          ),
          androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
        );
      }
    }
  }

  /// Cancel only prayer notifications (IDs 0-64), leaving calendar IDs intact.
  Future<void> cancelAll() async {
    await init();
    for (int i = 0; i < 65; i++) {
      await _plugin.cancel(i);
    }
  }

  // ── Helpers ─────────────────────────────────────────────────────────────────

  static String _nameFor(String key) {
    switch (key) {
      case 'fajr':    return 'Fajr';
      case 'dhuhr':   return 'Dhuhr';
      case 'asr':     return 'Asr';
      case 'maghrib': return 'Maghrib';
      case 'isha':    return 'Isha';
      default:        return key;
    }
  }
}
