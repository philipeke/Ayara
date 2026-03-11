// lib/features/calendar/calendar_notification_service.dart
//
// Schedules local notifications for Shia Islamic occasions.
// Notification IDs: 2000–2099 (evening-before), 3000–3099 (day-of).
// Does NOT cancel prayer notifications (IDs 0-64).

import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/timezone.dart' as tz;

import 'calendar_service.dart';
import 'shia_event_model.dart';

class CalendarNotificationService {
  CalendarNotificationService._();
  static final instance = CalendarNotificationService._();

  static const _channelId   = 'ayara_shia_calendar';
  static const _channelName = 'Shia Islamic Calendar';
  static const _channelDesc = 'Reminders for Shia Islamic occasions and Masumeen commemorations';

  static const _prefEnabled  = 'shia_calendar_notif_enabled';

  // Re-use the same FlutterLocalNotificationsPlugin singleton via the
  // PrayerNotificationService. We piggyback on the already-initialised plugin.
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
    // Safe to call multiple times — the plugin deduplicates.
    await _plugin.initialize(
      const InitializationSettings(android: android, iOS: darwin),
    );
  }

  // ── Preferences ──────────────────────────────────────────────────────────

  Future<bool> isEnabled() async {
    final p = await SharedPreferences.getInstance();
    return p.getBool(_prefEnabled) ?? false;
  }

  Future<void> setEnabled(bool value) async {
    final p = await SharedPreferences.getInstance();
    await p.setBool(_prefEnabled, value);
    if (value) {
      await scheduleAll();
    } else {
      await _cancelAll();
    }
  }

  // ── Scheduling ───────────────────────────────────────────────────────────

  /// Schedule notifications for all upcoming Shia events.
  /// Replaces any previously scheduled calendar notifications.
  Future<void> scheduleAll() async {
    await init();
    if (kIsWeb) return;
    if (!await isEnabled()) return;

    await _cancelAll();

    final events = CalendarService.upcomingEvents(withinDays: 180);

    for (int i = 0; i < events.length && i < 99; i++) {
      final resolved = events[i];
      await _scheduleForEvent(resolved, index: i);
    }
  }

  Future<void> _scheduleForEvent(
    ResolvedShiaEvent resolved, {
    required int index,
  }) async {
    final event = resolved.event;
    final eventDate = resolved.gregorianDate;
    final now = DateTime.now();

    // ── Evening-before notification (at 20:00 the prior day) ────────────
    final eveBefore = DateTime(
      eventDate.year, eventDate.month, eventDate.day - 1, 20, 0,
    );
    if (eveBefore.isAfter(now)) {
      final tzEve = tz.TZDateTime.from(eveBefore, tz.local);
      await _scheduleOne(
        id: 2000 + index,
        title: _eveTitle(event),
        body: _eveBody(event),
        scheduledDate: tzEve,
      );
    }

    // ── Day-of notification (at 08:00 on the event day) ──────────────────
    final dayOf = DateTime(
      eventDate.year, eventDate.month, eventDate.day, 8, 0,
    );
    if (dayOf.isAfter(now)) {
      final tzDay = tz.TZDateTime.from(dayOf, tz.local);
      await _scheduleOne(
        id: 3000 + index,
        title: _dayTitle(event),
        body: event.description.length > 120
            ? '${event.description.substring(0, 117)}...'
            : event.description,
        scheduledDate: tzDay,
      );
    }
  }

  Future<void> _scheduleOne({
    required int id,
    required String title,
    required String body,
    required tz.TZDateTime scheduledDate,
  }) async {
    try {
      await _plugin.zonedSchedule(
        id,
        title,
        body,
        scheduledDate,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _channelId,
            _channelName,
            channelDescription: _channelDesc,
            importance: Importance.high,
            priority: Priority.high,
            icon: '@mipmap/ic_launcher',
            color: const Color(0xFFC49A3C), // gold
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
      );
    } catch (e) {
      debugPrint('📅 CalendarNotif: failed to schedule id=$id — $e');
    }
  }

  /// Cancel only calendar notifications (IDs 2000–3099), leaving prayer IDs intact.
  Future<void> _cancelAll() async {
    await init();
    for (int i = 2000; i < 3100; i++) {
      await _plugin.cancel(i);
    }
  }

  // ── Notification text helpers ─────────────────────────────────────────────

  static String _eveTitle(ShiaEvent event) {
    switch (event.type) {
      case ShiaEventType.martyrdom:
        return '🕯️ Tomorrow — ${event.nameEn}';
      case ShiaEventType.birth:
        return '✨ Tomorrow — ${event.nameEn}';
      case ShiaEventType.occasion:
        return '📅 Tomorrow — ${event.nameEn}';
    }
  }

  static String _eveBody(ShiaEvent event) {
    if (event.personEn != null) {
      final typeWord = switch (event.type) {
        ShiaEventType.birth     => 'birth',
        ShiaEventType.martyrdom => 'martyrdom',
        ShiaEventType.occasion  => 'occasion',
      };
      return 'Prepare your heart. Tomorrow marks the $typeWord of ${event.personEn}.';
    }
    return 'Tomorrow is ${event.nameEn}. Open Ayara to reflect and remember.';
  }

  static String _dayTitle(ShiaEvent event) {
    switch (event.type) {
      case ShiaEventType.martyrdom:
        return '🕯️ ${event.nameEn}';
      case ShiaEventType.birth:
        return '✨ ${event.nameEn}';
      case ShiaEventType.occasion:
        return '🌙 ${event.nameEn}';
    }
  }

  // ── Permission ───────────────────────────────────────────────────────────

  Future<bool> requestPermission() async {
    await init();
    if (kIsWeb) return false;

    if (!kIsWeb && Platform.isIOS) {
      final ios = _plugin.resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>();
      return await ios?.requestPermissions(
            alert: true, badge: true, sound: true,
          ) ??
          false;
    }

    if (!kIsWeb && Platform.isAndroid) {
      final android = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
      return await android?.requestNotificationsPermission() ?? false;
    }

    return false;
  }
}
