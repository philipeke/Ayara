// lib/core/services/dhikr_streak_service.dart
//
// Tracks the user's daily Tasbīḥ al-Zahrā streak.
// A streak increments when the user completes dhikr on consecutive days.
// Missing a day resets the streak to 1 on the next completion.

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DhikrStreakService extends ChangeNotifier {
  DhikrStreakService._();
  static final instance = DhikrStreakService._();

  static const _prefLastDate = 'dhikr_last_date';
  static const _prefStreak   = 'dhikr_streak';

  String get _today => DateTime.now().toIso8601String().substring(0, 10);

  Future<bool> isCompletedToday() async {
    final p = await SharedPreferences.getInstance();
    return p.getString(_prefLastDate) == _today;
  }

  Future<int> getStreak() async {
    final p = await SharedPreferences.getInstance();
    final lastDate = p.getString(_prefLastDate);
    if (lastDate == null) return 0;
    // If the user missed more than one day, the streak is broken — show 0
    // so the dashboard reflects reality rather than the stale stored value.
    // Compare as strings first (cheap); only parse dates when they differ.
    final today = _today;
    if (lastDate == today) return p.getInt(_prefStreak) ?? 0;
    final diff = DateTime.parse(today).difference(DateTime.parse(lastDate)).inDays;
    if (diff > 1) return 0;
    return p.getInt(_prefStreak) ?? 0;
  }

  /// Call this whenever the user finishes a full Tasbīḥ al-Zahrā session.
  /// Safe to call multiple times in one day — only the first call counts.
  Future<void> recordCompletion() async {
    final p = await SharedPreferences.getInstance();
    final today = _today;
    final lastDate = p.getString(_prefLastDate);

    if (lastDate == today) return; // already recorded today

    final currentStreak = p.getInt(_prefStreak) ?? 0;
    int newStreak;

    if (lastDate != null) {
      final last = DateTime.parse(lastDate);
      final now = DateTime.parse(today);
      final diff = now.difference(last).inDays;
      newStreak = (diff == 1) ? currentStreak + 1 : 1;
    } else {
      newStreak = 1;
    }

    await p.setString(_prefLastDate, today);
    await p.setInt(_prefStreak, newStreak);
    notifyListeners();
  }
}
