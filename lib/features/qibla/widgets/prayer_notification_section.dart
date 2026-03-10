// lib/features/qibla/widgets/prayer_notification_section.dart
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:nuria/core/config/theme.dart';
import 'package:nuria/features/qibla/services/prayer_notification_service.dart';
import 'package:nuria/l10n/app_localizations.dart';

class PrayerNotificationSection extends StatefulWidget {
  final Position position;

  const PrayerNotificationSection({super.key, required this.position});

  @override
  State<PrayerNotificationSection> createState() =>
      _PrayerNotificationSectionState();
}

class _PrayerNotificationSectionState
    extends State<PrayerNotificationSection> {
  static const _prayerKeys = ['fajr', 'dhuhr', 'asr', 'maghrib', 'isha'];
  static const _prayerEmojis = ['🌅', '☀️', '🌤️', '🌇', '🌙'];

  bool _enabled = false;
  bool _osDenied = false;
  bool _loading = true;
  final Map<String, bool> _perPrayer = {
    'fajr': true,
    'dhuhr': true,
    'asr': true,
    'maghrib': true,
    'isha': true,
  };

  final _svc = PrayerNotificationService.instance;

  @override
  void initState() {
    super.initState();
    _loadState();
  }

  Future<void> _loadState() async {
    final enabled = await _svc.isEnabled();
    final osOk = await _svc.areNotificationsEnabled();
    final Map<String, bool> pp = {};
    for (final k in _prayerKeys) {
      pp[k] = await _svc.isPrayerEnabled(k);
    }
    if (mounted) {
      setState(() {
        _enabled = enabled;
        _osDenied = enabled && !osOk;
        _perPrayer.addAll(pp);
        _loading = false;
      });
    }
  }

  /// Build a fully-localised label map to pass to the notification service,
  /// so every scheduled notification uses the user's chosen language.
  Map<String, ({String title, String body})> _labels(AppLocalizations t) => {
    'fajr':    (title: t.prayerNotifTitleFajr,    body: t.prayerNotifBodyFajr),
    'dhuhr':   (title: t.prayerNotifTitleDhuhr,   body: t.prayerNotifBodyDhuhr),
    'asr':     (title: t.prayerNotifTitleAsr,      body: t.prayerNotifBodyAsr),
    'maghrib': (title: t.prayerNotifTitleMaghrib,  body: t.prayerNotifBodyMaghrib),
    'isha':    (title: t.prayerNotifTitleIsha,     body: t.prayerNotifBodyIsha),
  };

  Future<void> _enable() async {
    final t = AppLocalizations.of(context)!; // capture before any await
    setState(() => _loading = true);
    final granted = await _svc.requestPermission();
    if (!granted) {
      if (mounted) {
        setState(() {
          _osDenied = true;
          _loading = false;
        });
      }
      return;
    }
    await _svc.setEnabled(true);
    await _svc.scheduleForPosition(
      widget.position.latitude,
      widget.position.longitude,
      labels: _labels(t),
    );
    if (mounted) {
      setState(() {
        _enabled = true;
        _osDenied = false;
        _loading = false;
      });
    }
  }

  Future<void> _disable() async {
    await _svc.cancelAll();
    await _svc.setEnabled(false);
    if (mounted) setState(() => _enabled = false);
  }

  Future<void> _togglePrayer(String key, bool value) async {
    final t = AppLocalizations.of(context)!; // capture before any await
    await _svc.setPrayerEnabled(key, value);
    setState(() => _perPrayer[key] = value);
    await _svc.scheduleForPosition(
      widget.position.latitude,
      widget.position.longitude,
      labels: _labels(t),
    );
  }

  String _prayerName(AppLocalizations t, String key) {
    switch (key) {
      case 'fajr':    return t.prayerTimesFajr;
      case 'dhuhr':   return t.prayerTimesDhuhr;
      case 'asr':     return t.prayerTimesAsr;
      case 'maghrib': return t.prayerTimesMaghrib;
      case 'isha':    return t.prayerTimesIsha;
      default:        return key;
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Container(
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
          // ── Header row ────────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 16, 12, 0),
            child: Row(
              children: [
                const Icon(Icons.notifications_rounded,
                    color: AppColors.gold, size: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    t.prayerNotificationsTitle.toUpperCase(),
                    style: const TextStyle(
                      color: AppColors.gold,
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.4,
                    ),
                  ),
                ),
                if (_loading)
                  const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.gold,
                    ),
                  )
                else
                  Switch(
                    value: _enabled,
                    onChanged: _loading ? null : (v) => v ? _enable() : _disable(),
                    activeThumbColor: AppColors.gold,
                    activeTrackColor: AppColors.gold.withValues(alpha: 0.30),
                    inactiveThumbColor: Colors.white.withValues(alpha: 0.45),
                    inactiveTrackColor: Colors.white.withValues(alpha: 0.12),
                  ),
              ],
            ),
          ),

          // ── Explanation ───────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
            child: Text(
              t.prayerNotificationsDescription,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.60),
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),

          const SizedBox(height: 14),

          // ── OS denied warning ─────────────────────────────────────────────
          if (_osDenied) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.warning_amber_rounded,
                      color: Colors.orange.withValues(alpha: 0.85), size: 16),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t.prayerNotificationsDenied,
                          style: TextStyle(
                            color: Colors.orange.withValues(alpha: 0.85),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          t.prayerNotificationsDeniedHint,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.55),
                            fontSize: 12,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 10),
                        OutlinedButton.icon(
                          icon: const Icon(Icons.settings_rounded, size: 14),
                          label: Text(t.prayerNotificationsOpenSettings),
                          onPressed: () => Geolocator.openAppSettings(),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.gold,
                            side: BorderSide(
                                color: AppColors.gold.withValues(alpha: 0.50)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 8),
                            textStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],

          // ── Per-prayer toggles (only when enabled + not denied) ───────────
          if (_enabled && !_osDenied) ...[
            Container(
              margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              decoration: BoxDecoration(
                color: AppColors.gold.withValues(alpha: 0.06),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: List.generate(_prayerKeys.length, (i) {
                  final key = _prayerKeys[i];
                  final isLast = i == _prayerKeys.length - 1;
                  return Container(
                    decoration: BoxDecoration(
                      border: isLast
                          ? null
                          : Border(
                              bottom: BorderSide(
                                color: AppColors.gold.withValues(alpha: 0.10),
                              ),
                            ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                          child: Text(
                            _prayerEmojis[i],
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            _prayerName(t, key),
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.85),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Switch(
                          value: _perPrayer[key] ?? true,
                          onChanged: (v) => _togglePrayer(key, v),
                          activeThumbColor: AppColors.gold,
                          activeTrackColor:
                              AppColors.gold.withValues(alpha: 0.30),
                          inactiveThumbColor:
                              Colors.white.withValues(alpha: 0.35),
                          inactiveTrackColor:
                              Colors.white.withValues(alpha: 0.10),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],

          // ── Enable button (when not enabled, not loading, not denied) ─────
          if (!_enabled && !_loading && !_osDenied) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 16),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.notifications_active_rounded, size: 18),
                  label: Text(t.prayerNotificationsEnable),
                  onPressed: _enable,
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.gold,
                    foregroundColor: AppColors.islamicDeep,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
          ] else ...[
            const SizedBox(height: 4),
          ],
        ],
      ),
    );
  }
}
