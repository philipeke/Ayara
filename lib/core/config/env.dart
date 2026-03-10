// lib/core/config/env.dart
//
// Environment configuration for Ayara.
// Controls dev/prod behavior via --dart-define or .env files.

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  /// Environment name: "dev" | "prod" | etc.
  ///
  /// Priority order:
  /// 1) --dart-define=ENV=prod   (recommended for release builds)
  /// 2) .env.dev / .env file
  /// 3) Default fallback:
  ///    - "prod" in release mode
  ///    - "dev" in debug mode
  static String get envName {
    const fromDefine = String.fromEnvironment('ENV');
    if (fromDefine.isNotEmpty) return fromDefine.trim();

    // Guard against NotInitializedError when no .env file was found.
    try {
      final fromFile = (dotenv.maybeGet('ENV') ?? '').trim();
      if (fromFile.isNotEmpty) return fromFile;
    } catch (_) {}

    return kReleaseMode ? 'prod' : 'dev';
  }

  /// True when running production configuration
  static bool get isProd => envName.toLowerCase() == 'prod';

  /// True when running development configuration
  static bool get isDev => !isProd;

  /// Debug helper — prints environment summary in debug builds only
  static void debugPrintSummary() {
    if (!kDebugMode) return;
    debugPrint('Ayara Env → ENV=$envName (isProd=$isProd)');
  }
}
