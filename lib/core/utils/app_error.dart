// lib/core/utils/app_error.dart
import 'dart:async';
import 'dart:io';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AppError {
  final String code;
  final String? message;
  final Object? raw;
  final StackTrace? stackTrace;

  const AppError({
    required this.code,
    this.message,
    this.raw,
    this.stackTrace,
  });

  bool get isLocalRateLimited => code == 'local_rate_limited';
  bool get isRemoteRateLimited => code == 'remote_rate_limited';
  bool get isPremiumRequired => code == 'premium_required';

  bool get isGuestNotAllowed => code == 'guest_not_allowed';
  bool get isCreditsExhausted => code == 'credits_exhausted';
  bool get isDeviceBound => code == 'device_bound_to_other_account';

  bool get isNetwork =>
      code == 'network' ||
      code == 'timeout' ||
      code == 'offline' ||
      code == 'socket_exception';

  bool get isFunctionsError => code.startsWith('functions_');

  bool get shouldBeSilent =>
      isLocalRateLimited || isRemoteRateLimited || isPremiumRequired;

  static String _asString(dynamic v) => v == null ? '' : v.toString();

  static String _extractReasonFromExceptionString(String s) {
    final t = s.trim();
    if (t.startsWith('Exception:')) return t.substring('Exception:'.length).trim();
    if (t.startsWith('Error:')) return t.substring('Error:'.length).trim();
    return t;
  }

  static AppError from(Object error, [StackTrace? st]) {
    final rawStr = _asString(error);
    final reason = _extractReasonFromExceptionString(rawStr);

    const known = <String>{
      'local_rate_limited',
      'remote_rate_limited',
      'premium_required',
      'guest_not_allowed',
      'credits_exhausted',
      'device_bound_to_other_account',
    };

    if (known.contains(reason)) {
      return AppError(code: reason, raw: error, stackTrace: st);
    }

    if (error is FirebaseFunctionsException) {
      final detailsStr = _asString(error.details);
      final detailsReason = _extractReasonFromExceptionString(detailsStr);

      if (known.contains(detailsReason)) {
        return AppError(
          code: detailsReason,
          message: error.message,
          raw: error,
          stackTrace: st,
        );
      }

      final msg = _asString(error.message);
      final msgReason = _extractReasonFromExceptionString(msg);
      if (known.contains(msgReason)) {
        return AppError(
          code: msgReason,
          message: error.message,
          raw: error,
          stackTrace: st,
        );
      }

      return AppError(
        code: 'functions_${error.code}',
        message: error.message,
        raw: error,
        stackTrace: st,
      );
    }

    if (error is FirebaseAuthException) {
      return AppError(
        code: 'auth_${error.code}',
        message: error.message,
        raw: error,
        stackTrace: st,
      );
    }

    if (error is PlatformException) {
      return AppError(
        code: 'platform_${error.code}',
        message: error.message,
        raw: error,
        stackTrace: st,
      );
    }

    if (error is SocketException) {
      return AppError(
        code: 'socket_exception',
        message: error.message,
        raw: error,
        stackTrace: st,
      );
    }

    if (error is HandshakeException) {
      return AppError(
        code: 'network',
        message: error.toString(),
        raw: error,
        stackTrace: st,
      );
    }

    if (error is HttpException) {
      return AppError(
        code: 'network',
        message: error.message,
        raw: error,
        stackTrace: st,
      );
    }

    if (error is TimeoutException) {
      return AppError(
        code: 'timeout',
        message: error.message,
        raw: error,
        stackTrace: st,
      );
    }

    return AppError(
      code: 'unknown',
      message: rawStr.isEmpty ? null : rawStr,
      raw: error,
      stackTrace: st,
    );
  }

  void debugLog([String tag = 'AppError']) {
    if (!kDebugMode) return;
    debugPrint('❌ $tag: code=$code message=${message ?? ""} raw=$raw');
    if (stackTrace != null) debugPrint('$stackTrace');
  }
}
