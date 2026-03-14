// lib/features/settings/services/daily_reminder_service.dart
//
// Schedules a single repeating daily reflection notification.
// Notification ID: 4000.

import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/timezone.dart' as tz;

class DailyReminderService {
  DailyReminderService._();
  static final instance = DailyReminderService._();

  static const _channelId   = 'ayara_daily_reflection';
  static const _channelName = 'Daily Reflection';
  static const _channelDesc = 'Daily reminder to open Ayara for spiritual reflection';

  static const _notifId       = 4000;
  static const _prefEnabled   = 'daily_reminder_enabled';
  static const _prefHour      = 'daily_reminder_hour';
  static const _prefMinute    = 'daily_reminder_minute';
  static const _defaultHour   = 9;
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
    return true; // iOS: assume granted once permission was given
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
        '✨ Time for your daily reflection',
        'Take a moment to connect with your faith. Open Ayara for today\'s spiritual guidance.',
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
      debugPrint('DailyReminderService: schedule failed — $e');
    }
  }

  Future<void> _cancel() async {
    await init();
    await _plugin.cancel(_notifId);
  }
}
