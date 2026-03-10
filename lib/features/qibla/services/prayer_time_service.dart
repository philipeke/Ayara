// lib/features/qibla/services/prayer_time_service.dart
import 'package:adhan/adhan.dart';

enum PrayerStatus { done, next, upcoming }

class PrayerEntry {
  final String key;   // 'fajr' | 'dhuhr' | 'asr' | 'maghrib' | 'isha'
  final DateTime time;
  final PrayerStatus status;

  const PrayerEntry({
    required this.key,
    required this.time,
    required this.status,
  });
}

class DayPrayers {
  final DateTime date;
  final DateTime fajr;
  final DateTime dhuhr;
  final DateTime asr;
  final DateTime maghrib;
  final DateTime isha;

  const DayPrayers({
    required this.date,
    required this.fajr,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });
}

class PrayerTimeService {
  /// Calculate today's five Sunni prayer times for [lat]/[lng].
  /// Returns an empty list on error.
  static List<PrayerEntry> calculate(double lat, double lng) {
    try {
      final coords = Coordinates(lat, lng);
      final params = CalculationMethod.muslim_world_league.getParameters();
      params.madhab = Madhab.shafi;

      final date = DateComponents.from(DateTime.now());
      final pt = PrayerTimes(coords, date, params);

      final now = DateTime.now();

      final raw = <(String, DateTime)>[
        ('fajr', pt.fajr.toLocal()),
        ('dhuhr', pt.dhuhr.toLocal()),
        ('asr', pt.asr.toLocal()),
        ('maghrib', pt.maghrib.toLocal()),
        ('isha', pt.isha.toLocal()),
      ];

      // Find first prayer that is still upcoming
      DateTime? nextTime;
      for (final r in raw) {
        if (r.$2.isAfter(now)) {
          nextTime = r.$2;
          break;
        }
      }

      return raw.map((r) {
        final t = r.$2;
        PrayerStatus status;
        if (t.isAfter(now)) {
          status =
              (nextTime != null && _sameMinute(t, nextTime))
                  ? PrayerStatus.next
                  : PrayerStatus.upcoming;
        } else {
          status = PrayerStatus.done;
        }
        return PrayerEntry(key: r.$1, time: t, status: status);
      }).toList();
    } catch (_) {
      return [];
    }
  }

  /// Calculate prayer times for a single [year]/[month]/[day].
  /// Returns null on error.
  static DayPrayers? calculateForDate(
      double lat, double lng, int year, int month, int day) {
    try {
      final coords = Coordinates(lat, lng);
      final params = CalculationMethod.muslim_world_league.getParameters();
      params.madhab = Madhab.shafi;
      final date = DateComponents(year, month, day);
      final pt = PrayerTimes(coords, date, params);
      return DayPrayers(
        date: DateTime(year, month, day),
        fajr: pt.fajr.toLocal(),
        dhuhr: pt.dhuhr.toLocal(),
        asr: pt.asr.toLocal(),
        maghrib: pt.maghrib.toLocal(),
        isha: pt.isha.toLocal(),
      );
    } catch (_) {
      return null;
    }
  }

  /// Calculate every day's five prayer times for a given [year]/[month].
  /// Returns an empty list on error.
  static List<DayPrayers> calculateMonth(
      double lat, double lng, int year, int month) {
    try {
      final coords = Coordinates(lat, lng);
      final params = CalculationMethod.muslim_world_league.getParameters();
      params.madhab = Madhab.shafi;

      final daysInMonth = DateTime(year, month + 1, 0).day;

      return List.generate(daysInMonth, (i) {
        final day = i + 1;
        final date = DateComponents(year, month, day);
        final pt = PrayerTimes(coords, date, params);
        return DayPrayers(
          date: DateTime(year, month, day),
          fajr: pt.fajr.toLocal(),
          dhuhr: pt.dhuhr.toLocal(),
          asr: pt.asr.toLocal(),
          maghrib: pt.maghrib.toLocal(),
          isha: pt.isha.toLocal(),
        );
      });
    } catch (_) {
      return [];
    }
  }

  static bool _sameMinute(DateTime a, DateTime b) =>
      a.year == b.year &&
      a.month == b.month &&
      a.day == b.day &&
      a.hour == b.hour &&
      a.minute == b.minute;
}
