import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_functions/cloud_functions.dart';

import 'device_id_service.dart';
import 'usage_service.dart';

class UsageConsumeService {
  UsageConsumeService._internal();
  static final UsageConsumeService instance = UsageConsumeService._internal();

  /// ✅ Same region as your Cloud Functions
  final FirebaseFunctions _functions =
      FirebaseFunctions.instanceFor(region: 'us-central1');

  /// ---------------------------------------------------------------------------
  /// 🔒 CLIENT IDEMPOTENCY GUARD
  /// ---------------------------------------------------------------------------
  bool _consumeInFlight = false;

  bool _hasMeaningfulUsagePayload(Map<dynamic, dynamic> data) {
    if (data.isEmpty) return false;

    final credits = data['credits'];
    if (credits is Map && credits.isNotEmpty) return true;

    if (data.containsKey('creditsTotal') ||
        data.containsKey('creditsUsed') ||
        data.containsKey('creditsRemaining')) {
      return true;
    }

    if (data.containsKey('monthlyLimit') || data.containsKey('monthlyUsed')) {
      return true;
    }

    return false;
  }

  String _reasonFromFunctionsException(FirebaseFunctionsException e) {
    // Prefer explicit "reason" from backend details (if any)
    final details = e.details;
    if (details is Map && details['reason'] != null) {
      return details['reason'].toString();
    }

    final msg = (e.message ?? '').trim();
    if (msg.isNotEmpty) return msg;

    return e.code; // fallback
  }

  /// ---------------------------------------------------------------------------
  /// ✅ CONSUME ONE PROMPT (PRODUCTION SAFE)
  /// ---------------------------------------------------------------------------
  Future<Map<dynamic, dynamic>> consumeOnePrompt({
    String? appVersion,
    String? platform,
  }) async {
    /// 🔴 Stop parallel consumes immediately
    if (_consumeInFlight) {
      if (kDebugMode) {
        debugPrint('[UsageConsumeService] consume skipped (already in flight)');
      }
      throw Exception('consume_in_progress');
    }

    _consumeInFlight = true;

    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        throw Exception('guest_not_allowed');
      }

      final deviceId = await DeviceIdService.instance.getDeviceId();
      final deviceKey = await DeviceIdService.instance.getDeviceKey();
      final hardwareId = await DeviceIdService.instance.getHardwareId();

      /// ✅ Backend idempotency key
      final requestId = DateTime.now().microsecondsSinceEpoch.toString();

      final callable = _functions.httpsCallable('checkAndConsumePrompt');

      Map<dynamic, dynamic> data = <dynamic, dynamic>{};

      try {
        final result = await callable
            .call(<String, dynamic>{
              'deviceId': deviceId,
              'deviceKey': deviceKey,
              'requestId': requestId,
              if (hardwareId != null) 'hardwareId': hardwareId,
              if (platform != null) 'platform': platform,
              if (appVersion != null) 'appVersion': appVersion,
            })
            .timeout(const Duration(seconds: 12));

        final raw = result.data;
        data = (raw is Map) ? raw : <dynamic, dynamic>{};
      } on FirebaseFunctionsException catch (e) {
        // ✅ Always log full details in debug so we never fly blind again
        if (kDebugMode) {
          debugPrint(
            '[UsageConsumeService] FirebaseFunctionsException '
            'code=${e.code} message=${e.message} details=${e.details}',
          );
        }

        /// 🔁 fallback for older backend (without deviceKey)
        final msg = (e.message ?? '').toLowerCase();
        final code = e.code.toLowerCase();
        final isMissingDeviceKey =
            code == 'invalid-argument' && msg.contains('devicekey');

        if (!isMissingDeviceKey) {
          final reason = _reasonFromFunctionsException(e);
          throw Exception(reason);
        }

        final result = await callable
            .call(<String, dynamic>{
              'deviceId': deviceId,
              'requestId': requestId,
              if (platform != null) 'platform': platform,
              if (appVersion != null) 'appVersion': appVersion,
            })
            .timeout(const Duration(seconds: 12));

        final raw = result.data;
        data = (raw is Map) ? raw : <dynamic, dynamic>{};
      } catch (e, st) {
        if (kDebugMode) {
          debugPrint('[UsageConsumeService] unexpected error: $e\n$st');
        }
        throw Exception('consume_failed');
      }

      /// ✅ Sync usage snapshot (includes plan normalization in UsageService)
      if (_hasMeaningfulUsagePayload(data)) {
        UsageService.instance.updateFromMap(data);
      } else {
        if (kDebugMode) {
          debugPrint(
            '[UsageConsumeService] skipped UsageService.updateFromMap (empty payload)',
          );
        }
      }

      final allowed = data['allowed'] == true;
      if (!allowed) {
        final reason = (data['reason'] ?? 'not_allowed').toString();
        throw Exception(reason);
      }

      if (kDebugMode) {
        dynamic remaining;
        if (data['credits'] is Map) {
          remaining = (data['credits'] as Map)['remaining'];
        } else {
          remaining = data['creditsRemaining'];
        }

        debugPrint(
          '[reflections] ✅ consume OK | remaining=$remaining '
          'plan=${data['plan']} requestId=$requestId',
        );
      }

      return data;
    } finally {
      _consumeInFlight = false;
    }
  }
}