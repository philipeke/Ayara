// lib/features/calendar/calendar_service.dart
//
// Converts Hijri dates → Gregorian and builds a sorted upcoming-events list.

import 'package:hijri/hijri_calendar.dart';

import 'shia_event_model.dart';
import 'shia_events.dart';

enum ShiaSeason {
  muharramEarly,
  ashura,
  muharramLate,
  arbaeen,
  roadToArbaeen,
  mabath,
  midShaban,
  ramadan,
  ghadir,
}

abstract final class CalendarService {
  // ── Month names ─────────────────────────────────────────────────────────

  static const Map<int, String> hijriMonthNames = {
    1:  'Muharram',
    2:  'Safar',
    3:  "Rabi' al-Awwal",
    4:  "Rabi' al-Thani",
    5:  'Jumada al-Awwal',
    6:  'Jumada al-Thani',
    7:  'Rajab',
    8:  "Sha'ban",
    9:  'Ramadan',
    10: 'Shawwal',
    11: "Dhu al-Qi'da",
    12: 'Dhu al-Hijja',
  };

  static const Map<int, String> hijriMonthNamesAr = {
    1:  'محرم',
    2:  'صفر',
    3:  'ربيع الأول',
    4:  'ربيع الثاني',
    5:  'جمادى الأولى',
    6:  'جمادى الثانية',
    7:  'رجب',
    8:  'شعبان',
    9:  'رمضان',
    10: 'شوال',
    11: 'ذو القعدة',
    12: 'ذو الحجة',
  };

  // ── Current Hijri date ───────────────────────────────────────────────────

  static HijriCalendar get todayHijri => HijriCalendar.now();

  static String get todayHijriFormatted {
    final h = todayHijri;
    final month = hijriMonthNames[h.hMonth] ?? '';
    return '${h.hDay} $month ${h.hYear} AH';
  }

  static String get todayHijriArabic {
    final h = todayHijri;
    final month = hijriMonthNamesAr[h.hMonth] ?? '';
    return '${h.hDay} $month ${h.hYear}';
  }

  /// True if currently in Muharram (mourning season).
  static bool get isMuharram => todayHijri.hMonth == 1;

  /// True if currently in Safar (up to and including Arbaeen on 20 Safar).
  static bool get isSafarSeason =>
      todayHijri.hMonth == 2 && todayHijri.hDay <= 20;

  /// True if currently in the core mourning period (Muharram or early Safar).
  static bool get isMourningPeriod => isMuharram || isSafarSeason;

  /// True if currently in Ramadan.
  static bool get isRamadan => todayHijri.hMonth == 9;

  // ── Hijri → Gregorian conversion ────────────────────────────────────────

  /// Returns the next Gregorian date when the given [hijriMonth]/[hijriDay]
  /// occurs. Looks up to 3 years ahead. Returns null on conversion failure.
  static DateTime? nextGregorianFor(int hijriMonth, int hijriDay) {
    final todayH = HijriCalendar.now();
    final todayG = DateTime.now();
    final todayDateOnly = DateTime(todayG.year, todayG.month, todayG.day);

    for (int yearOffset = 0; yearOffset <= 2; yearOffset++) {
      final hYear = todayH.hYear + yearOffset;
      try {
        final greg = HijriCalendar().hijriToGregorian(hYear, hijriMonth, hijriDay);
        final gregDateOnly = DateTime(greg.year, greg.month, greg.day);
        if (!gregDateOnly.isBefore(todayDateOnly)) {
          return greg;
        }
      } catch (_) {
        // Skip invalid Hijri dates (e.g., month 2 day 29 in a 28-day Safar)
        continue;
      }
    }
    return null;
  }

  // ── Upcoming events ──────────────────────────────────────────────────────

  /// Returns all events resolved to their next Gregorian occurrence,
  /// sorted ascending by date, limited to the next [withinDays] days.
  static List<ResolvedShiaEvent> upcomingEvents({int withinDays = 180}) {
    final results = <ResolvedShiaEvent>[];
    final cutoff = DateTime.now().add(Duration(days: withinDays));

    for (final event in kShiaEvents) {
      final date = nextGregorianFor(event.hijriMonth, event.hijriDay);
      if (date == null) continue;
      if (date.isAfter(cutoff)) continue;
      results.add(ResolvedShiaEvent(event: event, gregorianDate: date));
    }

    results.sort((a, b) => a.gregorianDate.compareTo(b.gregorianDate));
    return results;
  }

  /// Returns the single next upcoming event (closest future date).
  static ResolvedShiaEvent? get nextEvent {
    final list = upcomingEvents(withinDays: 370);
    return list.isEmpty ? null : list.first;
  }

  /// Returns events happening today.
  static List<ResolvedShiaEvent> get todayEvents {
    return upcomingEvents(withinDays: 1)
        .where((e) => e.isToday)
        .toList();
  }

  // ── Seasonal helpers ─────────────────────────────────────────────────────

  /// Returns the current [ShiaSeason], or null outside of special periods.
  static ShiaSeason? currentSeason() {
    final h = todayHijri;
    if (h.hMonth == 1) {
      if (h.hDay < 10) return ShiaSeason.muharramEarly;
      if (h.hDay == 10) return ShiaSeason.ashura;
      return ShiaSeason.muharramLate;
    }
    if (h.hMonth == 2 && h.hDay <= 20) {
      if (h.hDay == 20) return ShiaSeason.arbaeen;
      return ShiaSeason.roadToArbaeen;
    }
    if (h.hMonth == 7 && h.hDay == 27) return ShiaSeason.mabath;
    if (h.hMonth == 8 && h.hDay == 15) return ShiaSeason.midShaban;
    if (h.hMonth == 9) return ShiaSeason.ramadan;
    if (h.hMonth == 12 && h.hDay == 18) return ShiaSeason.ghadir;
    return null;
  }
}
