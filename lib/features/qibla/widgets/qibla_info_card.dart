// lib/features/qibla/widgets/qibla_info_card.dart
import 'dart:async';
import 'dart:math' show pi, sin, cos, atan2;
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/qibla/services/location_service.dart';

/// Two-tile info card shown below the compass.
///   Left  — Qibla bearing in degrees + cardinal + distance to Mecca
///   Right — Live device heading in degrees + cardinal direction
class QiblaInfoCard extends StatefulWidget {
  final Position position;
  const QiblaInfoCard({super.key, required this.position});

  @override
  State<QiblaInfoCard> createState() => _QiblaInfoCardState();
}

class _QiblaInfoCardState extends State<QiblaInfoCard> {
  StreamSubscription<CompassEvent>? _sub;
  double _heading = 0;
  double _smoothSin = 0;
  double _smoothCos = 1;
  bool _hasFirst = false;
  static const double _alpha = 0.15;

  @override
  void initState() {
    super.initState();
    _sub = FlutterCompass.events?.listen(_onEvent);
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  void _onEvent(CompassEvent e) {
    if (!mounted) return;
    final h = e.heading;
    if (h == null) return;
    final rad = h * pi / 180;
    if (!_hasFirst) {
      _smoothSin = sin(rad);
      _smoothCos = cos(rad);
      _hasFirst = true;
    } else {
      _smoothSin = _alpha * sin(rad) + (1 - _alpha) * _smoothSin;
      _smoothCos = _alpha * cos(rad) + (1 - _alpha) * _smoothCos;
    }
    setState(
        () => _heading = (atan2(_smoothSin, _smoothCos) * 180 / pi + 360) % 360);
  }

  static String _cardinal(double deg) {
    const dirs = ['N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW'];
    return dirs[((deg + 22.5) / 45).floor() % 8];
  }

  static String _cardinalFull(double deg) {
    const dirs = [
      'North', 'Northeast', 'East', 'Southeast',
      'South', 'Southwest', 'West', 'Northwest',
    ];
    return dirs[((deg + 22.5) / 45).floor() % 8];
  }

  static String _fmtDeg(double deg) {
    final d = deg.round() % 360;
    return '${d.toString().padLeft(3, '0')}°';
  }

  @override
  Widget build(BuildContext context) {
    final pos = widget.position;
    final qibla = LocationService.qiblaAngle(pos.latitude, pos.longitude);
    final distKm = LocationService.distanceKm(pos.latitude, pos.longitude);
    final distStr = distKm.round().toString().replaceAllMapped(
          RegExp(r'(\d)(?=(\d{3})+$)'),
          (m) => '${m[1]},',
        );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: _InfoTile(
              label: 'QIBLA BEARING',
              degStr: _fmtDeg(qibla),
              cardinal: _cardinal(qibla),
              subtitle: '${_cardinalFull(qibla)} · $distStr km',
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _InfoTile(
              label: 'YOUR HEADING',
              degStr: _fmtDeg(_heading),
              cardinal: _cardinal(_heading),
              subtitle: _cardinalFull(_heading),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String degStr;
  final String cardinal;
  final String subtitle;

  const _InfoTile({
    required this.label,
    required this.degStr,
    required this.cardinal,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.navy.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: AppColors.gold.withValues(alpha: 0.70),
              fontSize: 9,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.6,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                degStr,
                style: GoogleFonts.raleway(
                  color: AppColors.gold,
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                cardinal,
                style: GoogleFonts.raleway(
                  color: AppColors.gold.withValues(alpha: 0.72),
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.48),
              fontSize: 11,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
