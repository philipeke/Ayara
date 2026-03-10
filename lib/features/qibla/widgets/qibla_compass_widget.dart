// lib/features/qibla/widgets/qibla_compass_widget.dart
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:nuria/core/config/theme.dart';
import 'package:nuria/features/qibla/services/location_service.dart';
import 'package:nuria/l10n/app_localizations.dart';

class QiblaCompassWidget extends StatefulWidget {
  final Position? position;
  final bool locationDenied;
  final bool locationPermanentlyDenied;
  final bool gpsUnavailable;
  final VoidCallback onRetry;

  const QiblaCompassWidget({
    super.key,
    required this.position,
    required this.locationDenied,
    required this.locationPermanentlyDenied,
    required this.gpsUnavailable,
    required this.onRetry,
  });

  @override
  State<QiblaCompassWidget> createState() => _QiblaCompassWidgetState();
}

class _QiblaCompassWidgetState extends State<QiblaCompassWidget> {
  StreamSubscription<CompassEvent>? _compassSub;
  double _deviceHeading = 0;

  // Low-pass filter state (sin/cos components to handle 0°/360° wrap)
  double _smoothSin = 0;
  double _smoothCos = 1;
  bool _hasFirstReading = false;
  static const double _alpha = 0.15; // smoothing factor: lower = smoother but slower

  @override
  void initState() {
    super.initState();
    _compassSub = FlutterCompass.events?.listen(_onCompassEvent);
  }

  @override
  void dispose() {
    _compassSub?.cancel();
    super.dispose();
  }

  void _onCompassEvent(CompassEvent event) {
    if (!mounted) return;
    final h = event.heading;
    if (h == null) return;

    final rad = h * pi / 180;

    if (!_hasFirstReading) {
      // Snap to first reading instantly — no lag on initial display
      _smoothSin = sin(rad);
      _smoothCos = cos(rad);
      _hasFirstReading = true;
    } else {
      // Exponential low-pass filter on unit-vector components
      _smoothSin = _alpha * sin(rad) + (1 - _alpha) * _smoothSin;
      _smoothCos = _alpha * cos(rad) + (1 - _alpha) * _smoothCos;
    }

    final smoothed = (atan2(_smoothSin, _smoothCos) * 180 / pi + 360) % 360;
    setState(() => _deviceHeading = smoothed);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final pos = widget.position;

    if (widget.locationDenied) {
      return _PermissionNeeded(
        permanent: widget.locationPermanentlyDenied,
        t: t,
      );
    }

    if (widget.gpsUnavailable || pos == null) {
      return _GpsUnavailable(t: t, onRetry: widget.onRetry);
    }

    final qibla = LocationService.qiblaAngle(pos.latitude, pos.longitude);
    final distKm = LocationService.distanceKm(pos.latitude, pos.longitude);
    final distStr = distKm.round().toString().replaceAllMapped(
          RegExp(r'(\d)(?=(\d{3})+$)'),
          (m) => '${m[1]},',
        );

    return Column(
      children: [
        // Static QIBLA direction label — like "North" above a traditional compass
        Text(
          'QIBLA',
          style: TextStyle(
            color: AppColors.gold.withValues(alpha: 0.88),
            fontSize: 11,
            fontWeight: FontWeight.w800,
            letterSpacing: 2.5,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 1.5,
          height: 14,
          color: AppColors.gold.withValues(alpha: 0.60),
        ),
        const SizedBox(height: 2),
        // Compass rose
        SizedBox(
          width: 260,
          height: 260,
          child: CustomPaint(
            painter: _CompassPainter(
              deviceHeading: _deviceHeading,
              qiblaAngle: qibla,
            ),
          ),
        ),
        const SizedBox(height: 14),
        // Instruction
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            t.qiblaCompassInstruction,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.55),
              fontSize: 12,
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(height: 8),
        // Distance label
        Text(
          t.qiblaDistanceLabel(distStr),
          style: TextStyle(
            color: AppColors.goldSubtle.withValues(alpha: 0.85),
            fontSize: 13,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.4,
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Compass CustomPainter — Golden jewelled Islamic compass
// ─────────────────────────────────────────────────────────────────────────────

class _CompassPainter extends CustomPainter {
  final double deviceHeading; // degrees, clockwise from North
  final double qiblaAngle;   // degrees, clockwise from North

  const _CompassPainter({required this.deviceHeading, required this.qiblaAngle});

  // ── Islamic ornament helpers ──────────────────────────────────────────────

  /// 8-pointed Islamic star — used for the centre ornament.
  static void _drawStar8(Canvas canvas, Offset pos, double outerR, double innerR, Color color) {
    final path = Path();
    for (int i = 0; i < 16; i++) {
      final r = i.isEven ? outerR : innerR;
      final angle = i * pi / 8 - pi / 2;
      final x = pos.dx + r * cos(angle);
      final y = pos.dy + r * sin(angle);
      if (i == 0) path.moveTo(x, y); else path.lineTo(x, y);
    }
    path.close();
    canvas.drawPath(path, Paint()..color = color.withAlpha(225)..style = PaintingStyle.fill);
    canvas.drawPath(path, Paint()
      ..color = Colors.white.withAlpha(55)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5);
  }

  /// Flat diamond lozenge — clean Islamic bezel marker at cardinal positions.
  static void _drawDiamond(Canvas canvas, Offset pos, double s, Color color) {
    final path = Path()
      ..moveTo(pos.dx, pos.dy - s)
      ..lineTo(pos.dx + s * 0.44, pos.dy)
      ..lineTo(pos.dx, pos.dy + s)
      ..lineTo(pos.dx - s * 0.44, pos.dy)
      ..close();
    canvas.drawPath(path, Paint()..color = color.withAlpha(235)..style = PaintingStyle.fill);
    canvas.drawPath(path, Paint()
      ..color = Colors.white.withAlpha(55)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 6; // 124 for a 260-wide canvas

    // ── 1. Background disc ────────────────────────────────────────────────
    canvas.drawCircle(center, radius, Paint()
      ..shader = RadialGradient(
        colors: const [
          Color(0xFF1E6640),
          Color(0xFF0D3B1F),
          Color(0xFF04100A),
        ],
        stops: const [0.0, 0.55, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius)));

    // Subtle golden shimmer in the outer gem band
    canvas.drawCircle(center, radius, Paint()
      ..shader = RadialGradient(
        colors: [Colors.transparent, Colors.transparent,
                 AppColors.gold.withAlpha(22)],
        stops: const [0.0, 0.68, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius)));

    // ── 2. Rotating compass rose (gems · rings · ticks · cardinals) ───────
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(-deviceHeading * pi / 180);

    // Three concentric gold rings
    canvas.drawCircle(Offset.zero, radius,       Paint()..color = AppColors.gold.withAlpha(210)..style = PaintingStyle.stroke..strokeWidth = 2.2);
    canvas.drawCircle(Offset.zero, radius - 13,  Paint()..color = AppColors.gold.withAlpha(130)..style = PaintingStyle.stroke..strokeWidth = 1.0);
    canvas.drawCircle(Offset.zero, radius - 23,  Paint()..color = AppColors.gold.withAlpha(185)..style = PaintingStyle.stroke..strokeWidth = 1.5);

    // ── Islamic bezel ornaments ─────────────────────────────────────────
    final bezelR = radius - 6.5;

    // Cardinal diamonds (N/E/S/W) — N is brighter to mark north clearly
    for (int i = 0; i < 4; i++) {
      final angle = i * pi / 2;
      _drawDiamond(
        canvas,
        Offset(sin(angle) * bezelR, -cos(angle) * bezelR),
        5.5,
        i == 0 ? AppColors.goldLight : AppColors.gold,
      );
    }

    // Intercardinal dots (NE/SE/SW/NW) — small engraved studs
    final dotFill = Paint()..color = AppColors.gold.withAlpha(190);
    final dotRing = Paint()
      ..color = AppColors.goldLight.withAlpha(100)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.7;
    for (int i = 0; i < 4; i++) {
      final angle = (i * pi / 2) + pi / 4;
      final p = Offset(sin(angle) * bezelR, -cos(angle) * bezelR);
      canvas.drawCircle(p, 3.0, dotFill);
      canvas.drawCircle(p, 3.0, dotRing);
    }

    // ── Tick marks (between ring 2 and ring 3) ──────────────────────────
    final minorTick = Paint()..color = AppColors.gold.withAlpha(135)..strokeWidth = 1.0..style = PaintingStyle.stroke;
    final majorTick = Paint()..color = AppColors.gold.withAlpha(215)..strokeWidth = 1.6..style = PaintingStyle.stroke;
    for (int i = 0; i < 360; i += 5) {
      final rad = i * pi / 180;
      final isMajor = i % 30 == 0;
      canvas.drawLine(
        Offset(sin(rad) * (isMajor ? radius - 23 : radius - 18),
               -cos(rad) * (isMajor ? radius - 23 : radius - 18)),
        Offset(sin(rad) * (radius - 13), -cos(rad) * (radius - 13)),
        isMajor ? majorTick : minorTick,
      );
    }

    // ── Cardinal labels ─────────────────────────────────────────────────
    final labelR = radius - 36.0;
    for (int i = 0; i < 4; i++) {
      final rad = [0.0, 90.0, 180.0, 270.0][i] * pi / 180;
      final isN = i == 0;
      final tp = TextPainter(
        text: TextSpan(
          text: ['N', 'E', 'S', 'W'][i],
          style: TextStyle(
            color: isN ? AppColors.gold : AppColors.goldSubtle.withAlpha(205),
            fontSize: isN ? 15.0 : 12.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas, Offset(sin(rad) * labelR - tp.width / 2,
                              -cos(rad) * labelR - tp.height / 2));
    }

    canvas.restore();

    // ── 3. Static inner sunburst decoration ───────────────────────────────
    canvas.save();
    canvas.translate(center.dx, center.dy);

    // 16 faint spokes radiating from near-centre
    final spokePaint = Paint()..color = AppColors.gold.withAlpha(20)..strokeWidth = 0.8..style = PaintingStyle.stroke;
    for (int i = 0; i < 16; i++) {
      final angle = i * 2 * pi / 16;
      canvas.drawLine(Offset(sin(angle) * 10, -cos(angle) * 10),
                      Offset(sin(angle) * 50, -cos(angle) * 50), spokePaint);
    }
    // Accent ring + 8 micro-dots
    canvas.drawCircle(Offset.zero, 50, Paint()..color = AppColors.gold.withAlpha(32)..style = PaintingStyle.stroke..strokeWidth = 1.0);
    for (int i = 0; i < 8; i++) {
      final angle = i * 2 * pi / 8;
      canvas.drawCircle(Offset(sin(angle) * 50, -cos(angle) * 50), 2.2,
                        Paint()..color = AppColors.gold.withAlpha(75));
    }

    canvas.restore();

    // ── 4. Qibla needle ───────────────────────────────────────────────────
    final needleRad = (qiblaAngle - deviceHeading) * pi / 180;
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(needleRad);

    final tipY = -(radius - 26);

    // Glow aura behind needle
    canvas.drawPath(
      Path()..moveTo(0, tipY)..lineTo(-13, -6)..lineTo(13, -6)..close(),
      Paint()..color = AppColors.gold.withAlpha(55)
             ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 9),
    );

    // Needle head with horizontal metallic shimmer
    final headPath = Path()
      ..moveTo(0, tipY)..lineTo(-11, -7)..lineTo(11, -7)..close();
    canvas.drawPath(headPath, Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [AppColors.gold, AppColors.goldLight, AppColors.gold],
        stops: const [0.0, 0.5, 1.0],
      ).createShader(Rect.fromLTWH(-11, tipY, 22, -7 - tipY)));
    // Inner centre-strip highlight
    canvas.drawPath(
      Path()..moveTo(0, tipY + 9)..lineTo(-3.5, -5)..lineTo(3.5, -5)..close(),
      Paint()..color = Colors.white.withAlpha(90),
    );
    // Border
    canvas.drawPath(headPath, Paint()
      ..color = AppColors.goldLight.withAlpha(170)
      ..style = PaintingStyle.stroke..strokeWidth = 1.0);
    // Dim tail
    canvas.drawPath(
      Path()..moveTo(0, 28)..lineTo(-8, 8)..lineTo(8, 8)..close(),
      Paint()..color = AppColors.gold.withAlpha(55),
    );

    canvas.restore();

    // ── 5. Centre ornament — Islamic 8-pointed star ──────────────────────
    canvas.drawCircle(center, 11, Paint()
      ..color = AppColors.gold.withAlpha(170)
      ..style = PaintingStyle.stroke..strokeWidth = 1.5);
    canvas.drawCircle(center, 7.5, Paint()
      ..color = AppColors.gold.withAlpha(80)
      ..style = PaintingStyle.stroke..strokeWidth = 0.8);
    _drawStar8(canvas, center, 5.0, 2.2, AppColors.gold);
  }

  @override
  bool shouldRepaint(_CompassPainter old) =>
      old.deviceHeading != deviceHeading || old.qiblaAngle != qiblaAngle;
}

// ─────────────────────────────────────────────────────────────────────────────
// "Dead" compass shown when permission is denied
// ─────────────────────────────────────────────────────────────────────────────

class _PermissionNeeded extends StatelessWidget {
  final bool permanent;
  final AppLocalizations t;

  const _PermissionNeeded({required this.permanent, required this.t});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dead (greyed) compass
        SizedBox(
          width: 240,
          height: 240,
          child: CustomPaint(painter: _DeadCompassPainter()),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: AppColors.gold.withValues(alpha: 0.25),
            ),
          ),
          child: Column(
            children: [
              Text(
                t.qiblaLocationNeededTitle,
                style: const TextStyle(
                  color: AppColors.gold,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  letterSpacing: 0.3,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                t.qiblaLocationNeededBody,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.70),
                  fontSize: 13,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 14),
              FilledButton.icon(
                onPressed: () => LocationService.openSettings(),
                icon: const Icon(Icons.settings_rounded, size: 16),
                label: Text(t.qiblaOpenSettings),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.gold,
                  foregroundColor: AppColors.islamicDeep,
                  textStyle: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// GPS unavailable (permission granted but no fix yet)
// ─────────────────────────────────────────────────────────────────────────────

class _GpsUnavailable extends StatelessWidget {
  final AppLocalizations t;
  final VoidCallback onRetry;

  const _GpsUnavailable({required this.t, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 260,
          height: 260,
          child: CustomPaint(painter: _DeadCompassPainter()),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.gold.withValues(alpha: 0.25)),
          ),
          child: Column(
            children: [
              Text(
                t.qiblaCompassLoading,
                style: const TextStyle(
                  color: AppColors.gold,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  letterSpacing: 0.3,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                t.qiblaGpsUnavailableBody,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.70),
                  fontSize: 13,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 14),
              FilledButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded, size: 16),
                label: Text(t.qiblaRetry),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.gold,
                  foregroundColor: AppColors.islamicDeep,
                  textStyle: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DeadCompassPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 6;

    final bgPaint = Paint()
      ..color = const Color(0xFF0C1A10).withValues(alpha: 0.6);
    canvas.drawCircle(center, radius, bgPaint);

    final ringPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.12)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawCircle(center, radius, ringPaint);

    // Question mark in center
    final span = TextSpan(
      text: '?',
      style: TextStyle(
        color: Colors.white.withValues(alpha: 0.25),
        fontSize: 72,
        fontWeight: FontWeight.w300,
      ),
    );
    final tp = TextPainter(text: span, textDirection: TextDirection.ltr)
      ..layout();
    tp.paint(canvas, Offset(center.dx - tp.width / 2, center.dy - tp.height / 2));
  }

  @override
  bool shouldRepaint(_DeadCompassPainter old) => false;
}
