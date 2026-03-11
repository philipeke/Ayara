// lib/features/calendar/shia_event_model.dart

enum ShiaEventType { birth, martyrdom, occasion }


class ShiaEvent {
  final String id;
  final String nameEn;
  final String nameAr;

  /// Which Imam / figure this event concerns (null for general occasions).
  final String? personEn;

  final ShiaEventType type;

  /// 1 = Muharram … 12 = Dhu al-Hijja
  final int hijriMonth;
  final int hijriDay;

  final String description;

  /// True for the highest-importance days (Ashura, Arbaeen, Eid al-Ghadir, etc.)
  final bool isHighImportance;

  const ShiaEvent({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    this.personEn,
    required this.type,
    required this.hijriMonth,
    required this.hijriDay,
    required this.description,
    this.isHighImportance = false,
  });
}

/// Computed: an event resolved to a concrete Gregorian date.
class ResolvedShiaEvent {
  final ShiaEvent event;
  final DateTime gregorianDate;

  const ResolvedShiaEvent({required this.event, required this.gregorianDate});

  /// Days until this event (negative = already passed today).
  int get daysUntil {
    final today = DateTime.now();
    final eventDay = DateTime(gregorianDate.year, gregorianDate.month, gregorianDate.day);
    final todayDay = DateTime(today.year, today.month, today.day);
    return eventDay.difference(todayDay).inDays;
  }

  bool get isToday   => daysUntil == 0;
  bool get isTomorrow => daysUntil == 1;
}
