// lib/features/qibla/widgets/prayer_times_widget.dart
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ayara/core/config/theme.dart';
import 'package:ayara/features/qibla/presentation/monthly_prayer_screen.dart';
import 'package:ayara/features/qibla/services/location_service.dart';
import 'package:ayara/features/qibla/services/prayer_time_service.dart';
import 'package:ayara/features/qibla/widgets/prayer_notification_section.dart';
import 'package:ayara/l10n/app_localizations.dart';

class PrayerTimesWidget extends StatelessWidget {
  final Position? position;
  final bool locationDenied;
  final bool locationPermanentlyDenied;
  final bool gpsUnavailable;
  final VoidCallback onRetry;

  const PrayerTimesWidget({
    super.key,
    required this.position,
    required this.locationDenied,
    required this.locationPermanentlyDenied,
    required this.gpsUnavailable,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final pos = position;

    if (locationDenied) {
      return _PermissionNeeded(permanent: locationPermanentlyDenied, t: t);
    }

    if (gpsUnavailable || pos == null) {
      return _GpsUnavailable(t: t, onRetry: onRetry);
    }

    final prayers = PrayerTimeService.calculate(pos.latitude, pos.longitude);

    if (prayers.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section header
        Row(
          children: [
            const Icon(Icons.access_time_rounded,
                color: AppColors.gold, size: 18),
            const SizedBox(width: 8),
            Text(
              t.prayerTimesTitle.toUpperCase(),
              style: TextStyle(
                color: AppColors.gold,
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.4,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Prayer rows
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.04),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.gold.withValues(alpha: 0.22),
            ),
          ),
          child: Column(
            children: [
              for (int i = 0; i < prayers.length; i++)
                _PrayerRow(
                  entry: prayers[i],
                  isLast: i == prayers.length - 1,
                  t: t,
                ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        // View Full Month button
        Center(
          child: OutlinedButton.icon(
            icon: const Icon(Icons.calendar_month_rounded, size: 16),
            label: Text(t.monthlyPrayerTimesViewButton),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => MonthlyPrayerScreen(position: pos),
              ),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.gold,
              side: BorderSide(color: AppColors.gold.withValues(alpha: 0.50)),
              backgroundColor: AppColors.gold.withValues(alpha: 0.07),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                letterSpacing: 0.2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Prayer notifications section
        PrayerNotificationSection(position: pos),
      ],
    );
  }
}

class _PrayerRow extends StatelessWidget {
  final PrayerEntry entry;
  final bool isLast;
  final AppLocalizations t;

  const _PrayerRow({
    required this.entry,
    required this.isLast,
    required this.t,
  });

  String _prayerName(AppLocalizations t) {
    switch (entry.key) {
      case 'fajr':
        return t.prayerTimesFajr;
      case 'dhuhr':
        return t.prayerTimesDhuhr;
      case 'asr':
        return t.prayerTimesAsr;
      case 'maghrib':
        return t.prayerTimesMaghrib;
      case 'isha':
        return t.prayerTimesIsha;
      default:
        return entry.key;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isNext = entry.status == PrayerStatus.next;
    final isDone = entry.status == PrayerStatus.done;

    final timeStr =
        '${entry.time.hour.toString().padLeft(2, '0')}:${entry.time.minute.toString().padLeft(2, '0')}';

    return Container(
      decoration: BoxDecoration(
        color: isNext
            ? AppColors.gold.withValues(alpha: 0.12)
            : Colors.transparent,
        borderRadius: isLast
            ? const BorderRadius.vertical(bottom: Radius.circular(16))
            : null,
        border: isLast
            ? null
            : Border(
                bottom: BorderSide(
                  color: AppColors.gold.withValues(alpha: 0.10),
                ),
              ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Row(
        children: [
          // Status icon
          SizedBox(
            width: 22,
            child: isDone
                ? Icon(Icons.check_rounded,
                    size: 16,
                    color: AppColors.gold.withValues(alpha: 0.55))
                : isNext
                    ? const Icon(Icons.arrow_forward_ios_rounded,
                        size: 12, color: AppColors.gold)
                    : Icon(Icons.circle_outlined,
                        size: 10,
                        color: Colors.white.withValues(alpha: 0.25)),
          ),
          const SizedBox(width: 10),
          // Prayer name (+ sunset icon for Maghrib)
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _prayerName(t),
                  style: TextStyle(
                    color: isDone
                        ? Colors.white.withValues(alpha: 0.40)
                        : isNext
                            ? AppColors.gold
                            : Colors.white.withValues(alpha: 0.85),
                    fontSize: 14,
                    fontWeight: isNext ? FontWeight.w700 : FontWeight.w500,
                    letterSpacing: 0.2,
                  ),
                ),
                if (entry.key == 'maghrib') ...[
                  const SizedBox(width: 6),
                  Icon(
                    Icons.wb_twilight_rounded,
                    size: 14,
                    color: isDone
                        ? Colors.orange.withValues(alpha: 0.30)
                        : isNext
                            ? Colors.orange.withValues(alpha: 0.90)
                            : Colors.orange.withValues(alpha: 0.60),
                  ),
                ],
              ],
            ),
          ),
          // Status badge
          if (isNext)
            Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: AppColors.gold.withValues(alpha: 0.18),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.gold.withValues(alpha: 0.45),
                ),
              ),
              child: Text(
                t.prayerTimesNextLabel,
                style: const TextStyle(
                  color: AppColors.gold,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          // Time
          Text(
            timeStr,
            style: TextStyle(
              color: isDone
                  ? Colors.white.withValues(alpha: 0.30)
                  : isNext
                      ? AppColors.gold
                      : Colors.white.withValues(alpha: 0.70),
              fontSize: 14,
              fontWeight: isNext ? FontWeight.w700 : FontWeight.w400,
              fontFeatures: const [FontFeature.tabularFigures()],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Permission needed placeholder
// ─────────────────────────────────────────────────────────────────────────────

class _PermissionNeeded extends StatelessWidget {
  final bool permanent;
  final AppLocalizations t;

  const _PermissionNeeded({required this.permanent, required this.t});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.gold.withValues(alpha: 0.22),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.access_time_rounded,
                  color: AppColors.gold, size: 18),
              const SizedBox(width: 8),
              Text(
                t.prayerTimesTitle.toUpperCase(),
                style: const TextStyle(
                  color: AppColors.gold,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            t.prayerTimesLocationNeededBody,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.65),
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
    );
  }
}

class _GpsUnavailable extends StatelessWidget {
  final AppLocalizations t;
  final VoidCallback onRetry;

  const _GpsUnavailable({required this.t, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.22)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.access_time_rounded,
                  color: AppColors.gold, size: 18),
              const SizedBox(width: 8),
              Text(
                t.prayerTimesTitle.toUpperCase(),
                style: const TextStyle(
                  color: AppColors.gold,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            t.qiblaGpsUnavailableBody,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.65),
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
    );
  }
}
