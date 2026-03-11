// lib/features/qibla/widgets/qibla_compass_widget.dart
import 'dart:async';
import 'dart:math' show pi, sin, cos, atan2;
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/qibla/services/location_service.dart';
import 'package:ayara/l10n/app_localizations.dart';

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
          width: 280,
          height: 280,
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
  final double deviceHeading;
  final double qiblaAngle;

  const _CompassPainter({required this.deviceHeading, required this.qiblaAngle});

  static void _drawStar8(Canvas canvas, Offset pos, double outerR, double innerR, Color color) {
    final path = Path();
    for (int i = 0; i < 16; i++) {
      final r = i.isEven ? outerR : innerR;
      final angle = i * pi / 8 - pi / 2;
      final x = pos.dx + r * cos(angle);
      final y = pos.dy + r * sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    canvas.drawPath(path, Paint()..color = color..style = PaintingStyle.fill);
    canvas.drawPath(path, Paint()
      ..color = Colors.white.withAlpha(60)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5);
  }

  static void _drawDiamond(Canvas canvas, Offset pos, double s, Color color) {
    final path = Path()
      ..moveTo(pos.dx, pos.dy - s)
      ..lineTo(pos.dx + s * 0.44, pos.dy)
      ..lineTo(pos.dx, pos.dy + s)
      ..lineTo(pos.dx - s * 0.44, pos.dy)
      ..close();
    canvas.drawPath(path, Paint()..color = color..style = PaintingStyle.fill);
    canvas.drawPath(path, Paint()
      ..color = Colors.white.withAlpha(70)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.6);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 4;

    // ── 1. Background disc — deep navy radial gradient ──────────────────
    canvas.drawCircle(center, radius, Paint()
      ..shader = RadialGradient(
        colors: const [
          Color(0xFF0F2744),
          Color(0xFF071830),
          Color(0xFF030C1C),
        ],
        stops: const [0.0, 0.58, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius)));

    // Subtle golden shimmer ring at outer edge
    canvas.drawCircle(center, radius, Paint()
      ..shader = RadialGradient(
        colors: [
          Colors.transparent,
          Colors.transparent,
          AppColors.gold.withAlpha(28),
        ],
        stops: const [0.0, 0.70, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius)));

    // ── 2. Rotating compass rose ────────────────────────────────────────
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(-deviceHeading * pi / 180);

    // Outer bezel rings (3 rings for depth)
    canvas.drawCircle(Offset.zero, radius,
        Paint()..color = AppColors.gold.withAlpha(220)..style = PaintingStyle.stroke..strokeWidth = 2.2);
    canvas.drawCircle(Offset.zero, radius - 3.5,
        Paint()..color = AppColors.goldBright.withAlpha(60)..style = PaintingStyle.stroke..strokeWidth = 0.5);
    canvas.drawCircle(Offset.zero, radius - 22,
        Paint()..color = AppColors.gold.withAlpha(150)..style = PaintingStyle.stroke..strokeWidth = 1.1);
    canvas.drawCircle(Offset.zero, radius - 34,
        Paint()..color = AppColors.gold.withAlpha(100)..style = PaintingStyle.stroke..strokeWidth = 0.8);

    // 8 jewel studs on outer bezel at 45° intervals
    for (int i = 0; i < 8; i++) {
      final angle = i * pi / 4;
      final p = Offset(sin(angle) * (radius - 1.8), -cos(angle) * (radius - 1.8));
      canvas.drawCircle(p, 3.2,
          Paint()..color = (i % 2 == 0 ? AppColors.goldBright : AppColors.gold).withAlpha(230));
      canvas.drawCircle(p, 3.2,
          Paint()..color = Colors.white.withAlpha(50)..style = PaintingStyle.stroke..strokeWidth = 0.5);
    }

    // Cardinal diamonds (N/E/S/W) at inner face of outer ring
    for (int i = 0; i < 4; i++) {
      final angle = i * pi / 2;
      _drawDiamond(
        canvas,
        Offset(sin(angle) * (radius - 8), -cos(angle) * (radius - 8)),
        6.0,
        i == 0 ? AppColors.goldBright : AppColors.gold,
      );
    }

    // ── Tick marks (in bezel band: radius-4 to radius-22) ─────────────
    for (int i = 0; i < 360; i += 5) {
      final rad = i * pi / 180;
      final isMajor30 = i % 30 == 0;
      final isMajor10 = i % 10 == 0;
      final outerEdge = radius - 4;
      final innerEdge = isMajor30 ? radius - 22 : isMajor10 ? radius - 18 : radius - 14;
      final alpha = isMajor30 ? 220 : isMajor10 ? 170 : 110;
      final sw = isMajor30 ? 1.5 : isMajor10 ? 1.1 : 0.8;
      canvas.drawLine(
        Offset(sin(rad) * outerEdge, -cos(rad) * outerEdge),
        Offset(sin(rad) * innerEdge, -cos(rad) * innerEdge),
        Paint()..color = AppColors.gold.withAlpha(alpha)..strokeWidth = sw..style = PaintingStyle.stroke,
      );
    }

    // ── Degree numbers at 30° intervals ───────────────────────────────
    final labelR = radius - 28.0;
    final degreesToShow = [0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330];
    final labels = ['N', '30', '60', 'E', '120', '150', 'S', '210', '240', 'W', '300', '330'];
    for (int i = 0; i < degreesToShow.length; i++) {
      final rad = degreesToShow[i] * pi / 180;
      final isCardinal = i % 3 == 0;
      final tp = TextPainter(
        text: TextSpan(
          text: labels[i],
          style: TextStyle(
            color: isCardinal
                ? (i == 0 ? AppColors.goldBright : AppColors.gold)
                : AppColors.gold.withAlpha(160),
            fontSize: isCardinal ? 13.5 : 9.0,
            fontWeight: isCardinal ? FontWeight.w800 : FontWeight.w600,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      // Rotate the label so it faces outward correctly
      canvas.save();
      canvas.rotate(rad);
      canvas.translate(0, -labelR);
      canvas.rotate(-rad);
      tp.paint(canvas, Offset(-tp.width / 2, -tp.height / 2));
      canvas.restore();
    }

    canvas.restore(); // end compass rose rotation

    // ── 3. Static inner decorative ring and sunburst ───────────────────
    canvas.save();
    canvas.translate(center.dx, center.dy);

    // Inner accent ring
    canvas.drawCircle(Offset.zero, 58,
        Paint()..color = AppColors.gold.withAlpha(40)..style = PaintingStyle.stroke..strokeWidth = 0.8);

    // 16 very faint spokes
    for (int i = 0; i < 16; i++) {
      final angle = i * 2 * pi / 16;
      canvas.drawLine(
        Offset(sin(angle) * 14, -cos(angle) * 14),
        Offset(sin(angle) * 56, -cos(angle) * 56),
        Paint()..color = AppColors.gold.withAlpha(18)..strokeWidth = 0.7..style = PaintingStyle.stroke,
      );
    }
    // 8 micro-dots on inner ring
    for (int i = 0; i < 8; i++) {
      final angle = i * 2 * pi / 8 + pi / 8;
      canvas.drawCircle(
        Offset(sin(angle) * 58, -cos(angle) * 58),
        2.0,
        Paint()..color = AppColors.gold.withAlpha(80),
      );
    }

    canvas.restore();

    // ── 4. Qibla needle ───────────────────────────────────────────────
    final needleRad = (qiblaAngle - deviceHeading) * pi / 180;
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(needleRad);

    final tipY = -(radius - 22).toDouble();
    final shoulderY = -8.0;
    final baseY = 24.0;

    // Elegant lance-shaped needle body
    final needlePath = Path()
      ..moveTo(0, tipY)
      ..lineTo(-9, shoulderY)
      ..lineTo(-4, baseY)
      ..lineTo(4, baseY)
      ..lineTo(9, shoulderY)
      ..close();

    canvas.drawPath(needlePath, Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          AppColors.gold.withAlpha(190),
          AppColors.goldBright,
          AppColors.goldBright,
          AppColors.gold.withAlpha(190),
        ],
        stops: const [0.0, 0.35, 0.65, 1.0],
      ).createShader(Rect.fromLTWH(-9, tipY, 18, baseY - tipY)));

    // White highlight stripe down needle
    canvas.drawPath(
      Path()
        ..moveTo(0, tipY + 6)
        ..lineTo(-2.5, shoulderY)
        ..lineTo(2.5, shoulderY)
        ..close(),
      Paint()..color = Colors.white.withAlpha(100),
    );

    // Needle border
    canvas.drawPath(needlePath, Paint()
      ..color = AppColors.goldBright.withAlpha(160)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8);

    // Small crescent at the tip
    canvas.save();
    canvas.translate(0, tipY - 8);
    final crescentBounds = Rect.fromCircle(center: Offset.zero, radius: 9);
    canvas.saveLayer(crescentBounds, Paint());
    canvas.drawCircle(Offset.zero, 5.5, Paint()..color = AppColors.goldBright.withAlpha(230));
    canvas.drawCircle(const Offset(2.2, 0), 4.0,
        Paint()..blendMode = BlendMode.clear);
    canvas.restore(); // saveLayer
    canvas.restore(); // translate

    // Tail (dim, opposite direction)
    canvas.drawPath(
      Path()
        ..moveTo(0, baseY + 6)
        ..lineTo(-5, baseY)
        ..lineTo(5, baseY)
        ..close(),
      Paint()..color = AppColors.gold.withAlpha(60),
    );

    canvas.restore(); // end needle rotation

    // ── 5. Centre ornament ────────────────────────────────────────────
    canvas.save();
    canvas.translate(center.dx, center.dy);
    // Outer pivot ring
    canvas.drawCircle(Offset.zero, 13,
        Paint()..color = AppColors.gold.withAlpha(180)..style = PaintingStyle.stroke..strokeWidth = 1.6);
    canvas.drawCircle(Offset.zero, 13,
        Paint()..color = const Color(0xFF0A1E3A)); // fill behind star
    // Inner accent ring
    canvas.drawCircle(Offset.zero, 9,
        Paint()..color = AppColors.gold.withAlpha(80)..style = PaintingStyle.stroke..strokeWidth = 0.7);
    // 8-pointed star
    _drawStar8(canvas, Offset.zero, 6.5, 2.8, AppColors.gold.withAlpha(210));
    // Pivot dot
    canvas.drawCircle(Offset.zero, 2.0,
        Paint()..color = AppColors.goldBright);
    canvas.restore();
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
    final radius = size.width / 2 - 4;

    canvas.drawCircle(center, radius, Paint()
      ..shader = RadialGradient(
        colors: const [Color(0xFF0A1E3A), Color(0xFF040E1C)],
        stops: const [0.0, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius)));

    canvas.drawCircle(center, radius,
        Paint()..color = AppColors.gold.withAlpha(60)..style = PaintingStyle.stroke..strokeWidth = 1.8);
    canvas.drawCircle(center, radius - 22,
        Paint()..color = AppColors.gold.withAlpha(35)..style = PaintingStyle.stroke..strokeWidth = 0.8);

    final span = TextSpan(
      text: '?',
      style: TextStyle(
        color: Colors.white.withValues(alpha: 0.18),
        fontSize: 72,
        fontWeight: FontWeight.w300,
      ),
    );
    final tp = TextPainter(text: span, textDirection: TextDirection.ltr)..layout();
    tp.paint(canvas, Offset(center.dx - tp.width / 2, center.dy - tp.height / 2));
  }

  @override
  bool shouldRepaint(_DeadCompassPainter old) => false;
}
