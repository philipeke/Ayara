// lib/features/qibla/services/location_service.dart
import 'dart:math';
import 'package:geolocator/geolocator.dart';

class LocationService {
  static const double _meccaLat = 21.3891;
  static const double _meccaLng = 39.8579;

  /// Check current permission status without prompting.
  static Future<LocationPermission> getStatus() =>
      Geolocator.checkPermission();

  /// Request permission if not yet granted. Returns true if usable.
  static Future<bool> requestPermission() async {
    var status = await Geolocator.checkPermission();
    if (status == LocationPermission.denied) {
      status = await Geolocator.requestPermission();
    }
    return status == LocationPermission.whileInUse ||
        status == LocationPermission.always;
  }

  /// Returns true when permanently denied — user must open device settings.
  static Future<bool> isPermanentlyDenied() async {
    final s = await Geolocator.checkPermission();
    return s == LocationPermission.deniedForever;
  }

  /// Open the app's location settings page on the device.
  static Future<void> openSettings() => Geolocator.openAppSettings();

  /// Fetch the device's current position (medium accuracy, 10 s timeout).
  static Future<Position> getPosition() => Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.medium,
          timeLimit: Duration(seconds: 10),
        ),
      );

  // ── Calculations ──────────────────────────────────────────────────────────

  /// Great-circle bearing from [lat,lng] toward Mecca, 0–360° clockwise from North.
  static double qiblaAngle(double lat, double lng) {
    final phi1 = lat * pi / 180;
    final lam1 = lng * pi / 180;
    const phi2 = _meccaLat * pi / 180;
    const lam2 = _meccaLng * pi / 180;
    final dLam = lam2 - lam1;
    final y = sin(dLam) * cos(phi2);
    final x =
        cos(phi1) * sin(phi2) - sin(phi1) * cos(phi2) * cos(dLam);
    return (atan2(y, x) * 180 / pi + 360) % 360;
  }

  /// Haversine distance in km from [lat,lng] to Mecca.
  static double distanceKm(double lat, double lng) {
    const R = 6371.0;
    final dLat = (_meccaLat - lat) * pi / 180;
    final dLng = (_meccaLng - lng) * pi / 180;
    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(lat * pi / 180) *
            cos(_meccaLat * pi / 180) *
            sin(dLng / 2) *
            sin(dLng / 2);
    return R * 2 * atan2(sqrt(a), sqrt(1 - a));
  }
}
