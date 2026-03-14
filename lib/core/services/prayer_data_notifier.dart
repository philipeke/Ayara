// lib/core/services/prayer_data_notifier.dart
import 'package:flutter/foundation.dart';

/// Lightweight notifier that fires whenever prayer tracking data changes.
/// Listened to by the home screen summary card so it stays in sync
/// with the prayer times tracker without polling.
class PrayerDataNotifier extends ChangeNotifier {
  PrayerDataNotifier._();
  static final instance = PrayerDataNotifier._();

  void notify() => notifyListeners();
}
