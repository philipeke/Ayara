import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'package:ayara/features/qibla/services/location_service.dart';
import 'package:ayara/features/qibla/services/prayer_notification_service.dart';
import 'package:ayara/l10n/app_localizations.dart';

import 'settings_sheet_widgets.dart';

class PermissionsSection extends StatelessWidget {
  const PermissionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return SettingsEntryTile(
      icon: Icons.verified_user_rounded,
      title: t.permissionsSectionTitle,
      subtitle: t.permissionsSectionSubtitle,
      onTap: () => _showSheet(context),
    );
  }

  void _showSheet(BuildContext context) {
    HapticFeedback.selectionClick();
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const _PermissionsSheet(),
    );
  }
}

class _PermissionsSheet extends StatefulWidget {
  const _PermissionsSheet();

  @override
  State<_PermissionsSheet> createState() => _PermissionsSheetState();
}

class _PermissionsSheetState extends State<_PermissionsSheet> {
  final _speech = SpeechToText();
  final _notificationSvc = PrayerNotificationService.instance;

  bool _loading = true;
  bool _notificationsGranted = false;
  bool _notificationsDenied = false;
  bool _locationGranted = false;
  bool _locationDenied = false;
  bool _locationPermanentlyDenied = false;
  bool _micGranted = false;
  bool _micDenied = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final notificationsGranted = await _notificationSvc
          .areNotificationsEnabled();
      final locationStatus = await LocationService.getStatus();
      final micGranted = await _speech.hasPermission;

      if (!mounted) {
        return;
      }

      setState(() {
        _notificationsGranted = notificationsGranted;
        _notificationsDenied = false;
        _micGranted = micGranted;
        _micDenied = false;
        _applyLocationStatus(locationStatus);
        _loading = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  void _applyLocationStatus(
    LocationPermission status, {
    bool showDenied = false,
  }) {
    final granted =
        status == LocationPermission.whileInUse ||
        status == LocationPermission.always;

    _locationGranted = granted;
    _locationPermanentlyDenied = status == LocationPermission.deniedForever;
    _locationDenied = _locationPermanentlyDenied || (showDenied && !granted);
  }

  Future<void> _requestNotifications() async {
    setState(() => _loading = true);

    try {
      final granted = await _notificationSvc.requestPermission();
      if (!mounted) {
        return;
      }

      setState(() {
        _notificationsGranted = granted;
        _notificationsDenied = !granted;
        _loading = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _requestLocation() async {
    setState(() => _loading = true);

    try {
      await LocationService.requestPermission();
      final status = await LocationService.getStatus();

      if (!mounted) {
        return;
      }

      setState(() {
        _applyLocationStatus(status, showDenied: true);
        _loading = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _requestMic() async {
    setState(() => _loading = true);

    try {
      final available = await _speech.initialize(
        onError: (_) {},
        onStatus: (_) {},
      );

      if (!mounted) {
        return;
      }

      setState(() {
        _micGranted = available;
        _micDenied = !available;
        _loading = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _openAppSettings() async {
    await Geolocator.openAppSettings();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return SettingsSheetScaffold(
      title: t.permissionsSectionTitle,
      icon: Icons.verified_user_rounded,
      children: [
        if (_loading)
          const Center(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          )
        else ...[
          SettingsSectionHeader(t.voiceInputTitle.toUpperCase()),
          const SizedBox(height: 8),
          SettingsSheetCard(
            child: Column(
              children: [
                SettingsToggleRow(
                  emoji: '🎙️',
                  title: t.voiceInputMicTitle,
                  subtitle: t.voiceInputMicSubtitle,
                  value: _micGranted,
                  onChanged: (value) =>
                      value ? _requestMic() : _openAppSettings(),
                ),
                if (_micDenied) ...[
                  const SettingsSheetDivider(),
                  SettingsWarningRow(
                    message: t.voiceInputMicDenied,
                    actionLabel: t.qiblaOpenSettings,
                    onTap: _openAppSettings,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 20),
          SettingsSectionHeader(t.permissionsLocationTitle.toUpperCase()),
          const SizedBox(height: 8),
          SettingsSheetCard(
            child: Column(
              children: [
                SettingsToggleRow(
                  emoji: '📍',
                  title: t.permissionsLocationTitle,
                  subtitle: t.permissionsLocationSubtitle,
                  value: _locationGranted,
                  onChanged: (value) =>
                      value ? _requestLocation() : _openAppSettings(),
                ),
                if (_locationDenied) ...[
                  const SettingsSheetDivider(),
                  SettingsWarningRow(
                    message: t.permissionsLocationDenied,
                    actionLabel: t.qiblaOpenSettings,
                    onTap: _openAppSettings,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 20),
          SettingsSectionHeader(t.permissionsNotificationsTitle.toUpperCase()),
          const SizedBox(height: 8),
          SettingsSheetCard(
            child: Column(
              children: [
                SettingsToggleRow(
                  emoji: '🔔',
                  title: t.permissionsNotificationsTitle,
                  subtitle: t.permissionsNotificationsSubtitle,
                  value: _notificationsGranted,
                  onChanged: (value) =>
                      value ? _requestNotifications() : _openAppSettings(),
                ),
                if (_notificationsDenied) ...[
                  const SettingsSheetDivider(),
                  SettingsWarningRow(
                    message: t.prayerNotificationsDenied,
                    actionLabel: t.prayerNotificationsOpenSettings,
                    onTap: _openAppSettings,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 20),
          SettingsSectionHeader(t.permissionsCalendarTitle.toUpperCase()),
          const SizedBox(height: 8),
          SettingsSheetCard(
            child: SettingsInfoRow(
              emoji: '📅',
              title: t.permissionsCalendarTitle,
              subtitle: t.permissionsCalendarSubtitle,
              valueText: t.permissionsStatusWhenNeeded,
            ),
          ),
        ],
      ],
    );
  }
}
