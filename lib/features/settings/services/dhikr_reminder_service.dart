// lib/features/settings/services/dhikr_reminder_service.dart
//
// Schedules a single repeating daily Tasbīḥ reminder notification.
// Notification ID: 4001.

import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/timezone.dart' as tz;

class DhikrReminderService {
  DhikrReminderService._();
  static final instance = DhikrReminderService._();

  static const _channelId   = 'ayara_dhikr_reminder';
  static const _channelName = 'Tasbīḥ Reminder';
  static const _channelDesc = 'Daily reminder to recite Tasbīḥ al-Zahrā (SA)';

  static const _notifId       = 4001;
  static const _prefEnabled   = 'dhikr_reminder_enabled';
  static const _prefHour      = 'dhikr_reminder_hour';
  static const _prefMinute    = 'dhikr_reminder_minute';
  static const _defaultHour   = 21;
  static const _defaultMinute = 0;

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  bool _initialized = false;

  // ── Init ─────────────────────────────────────────────────────────────────

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

  // ── Preferences ──────────────────────────────────────────────────────────

  Future<bool> isEnabled() async {
    final p = await SharedPreferences.getInstance();
    return p.getBool(_prefEnabled) ?? false;
  }

  Future<int> getHour() async {
    final p = await SharedPreferences.getInstance();
    return p.getInt(_prefHour) ?? _defaultHour;
  }

  Future<int> getMinute() async {
    final p = await SharedPreferences.getInstance();
    return p.getInt(_prefMinute) ?? _defaultMinute;
  }

  // ── Permission ───────────────────────────────────────────────────────────

  Future<bool> areNotificationsEnabled() async {
    await init();
    if (kIsWeb) return false;
    if (Platform.isAndroid) {
      final android = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
      return await android?.areNotificationsEnabled() ?? false;
    }
    return true;
  }

  Future<bool> requestPermission() async {
    await init();
    if (kIsWeb) return false;
    if (Platform.isIOS) {
      final ios = _plugin.resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>();
      return await ios?.requestPermissions(
            alert: true, badge: true, sound: true,
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

  // ── Enable / Disable ─────────────────────────────────────────────────────

  Future<void> setEnabled(bool value) async {
    final p = await SharedPreferences.getInstance();
    await p.setBool(_prefEnabled, value);
    if (value) {
      await _schedule(await getHour(), await getMinute());
    } else {
      await _cancel();
    }
  }

  Future<void> setTime(int hour, int minute) async {
    final p = await SharedPreferences.getInstance();
    await p.setInt(_prefHour, hour);
    await p.setInt(_prefMinute, minute);
    if (await isEnabled()) {
      await _schedule(hour, minute);
    }
  }

  // ── Scheduling ───────────────────────────────────────────────────────────

  Future<void> _schedule(int hour, int minute) async {
    await init();
    if (kIsWeb) return;
    await _cancel();

    final now = tz.TZDateTime.now(tz.local);
    var scheduled = tz.TZDateTime(
      tz.local, now.year, now.month, now.day, hour, minute,
    );
    if (!scheduled.isAfter(now)) {
      scheduled = scheduled.add(const Duration(days: 1));
    }

    try {
      await _plugin.zonedSchedule(
        _notifId,
        '🕌 Time for your Tasbīḥ al-Zahrā',
        'Recite 33 Subhanallah · 33 Alhamdulillah · 34 Allahu Akbar. Open Ayara to begin.',
        scheduled,
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
            presentBadge: true,
            presentSound: true,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time,
      );
    } catch (e) {
      debugPrint('DhikrReminderService: schedule failed — $e');
    }
  }

  Future<void> _cancel() async {
    await init();
    await _plugin.cancel(_notifId);
  }
}
