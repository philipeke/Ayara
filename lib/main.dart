// lib/main.dart
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'core/config/env.dart';
import 'core/config/theme.dart';
import 'core/services/locale_service.dart';
import 'package:nuria/l10n/app_localizations.dart';
import 'firebase_options.dart';

import 'features/onboarding/language_gate_screen.dart';
import 'features/auth/auth_gate_screen.dart';
import 'features/settings/screens/settings_screen.dart';
import 'features/qibla/services/prayer_notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ── Timezone (required for prayer notification scheduling) ──────────────
  try {
    tz.initializeTimeZones();
    final String tzName = await const MethodChannel('nuria/timezone')
        .invokeMethod<String>('getLocalTimezone') ?? 'UTC';
    tz.setLocalLocation(tz.getLocation(tzName));
  } catch (_) {
    // Fall back to UTC — notifications still work, just may be off by offset
  }

  // ── Notification service init ────────────────────────────────────────────
  await PrayerNotificationService.instance.init();

  await runZonedGuarded(() async {
    // ----------------------------------------------------------------
    // ENV — debug only, never in release
    // ----------------------------------------------------------------
    if (kDebugMode) {
      try {
        await dotenv.load(fileName: '.env.dev');
      } catch (_) {
        debugPrint('⚠️ dotenv .env.dev not found (ok)');
      }
      // Safe to call even when dotenv failed — Env.envName has a try-catch guard.
      Env.debugPrintSummary();
    }

    // ----------------------------------------------------------------
    // FIREBASE
    // ----------------------------------------------------------------
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } catch (e, st) {
      // Extra tydligt fel vid saknad GoogleService-Info.plist / fel Bundle ID etc.
      debugPrint('❌ Firebase.initializeApp failed: $e');
      debugPrint('$st');
      rethrow;
    }

    // ----------------------------------------------------------------
    // CRASHLYTICS — release only
    // ----------------------------------------------------------------
    await FirebaseCrashlytics.instance
        .setCrashlyticsCollectionEnabled(kReleaseMode);

    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      if (kReleaseMode) {
        FirebaseCrashlytics.instance.recordFlutterFatalError(details);
      }
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      if (kReleaseMode) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      }
      return true;
    };

    // ----------------------------------------------------------------
    // APP CHECK
    // ----------------------------------------------------------------
    // För web krävs recaptcha/site key osv — vi skippar här så iOS kommer igång.
    if (!kIsWeb) {
      await FirebaseAppCheck.instance.activate(
        androidProvider:
            kDebugMode ? AndroidProvider.debug : AndroidProvider.playIntegrity,
        appleProvider: kDebugMode
            ? AppleProvider.debug
            : AppleProvider.appAttestWithDeviceCheckFallback,
      );

      await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(kReleaseMode);

      // Force-fetch and print the debug token immediately so it appears in
      // the flutter: logcat filter. Add this UUID to Firebase Console →
      // App Check → Apps → [Android app] → Manage debug tokens.
      if (kDebugMode) {
        Future<void>.delayed(const Duration(seconds: 1), () async {
          try {
            // force: true ensures we get the UUID even before first use.
            final token = await FirebaseAppCheck.instance.getToken(true);
            if (token != null) {
              debugPrint('');
              debugPrint('╔══════════════════════════════════════════════════════╗');
              debugPrint('║  APP CHECK DEBUG TOKEN — add to Firebase Console     ║');
              debugPrint('║  App Check → Apps → Android → Manage debug tokens   ║');
              debugPrint('╠══════════════════════════════════════════════════════╣');
              debugPrint('║  $token');
              debugPrint('╚══════════════════════════════════════════════════════╝');
              debugPrint('');
            } else {
              debugPrint('🧩 AppCheck token: null — check native logcat for DebugAppCheckProvider UUID');
            }
          } catch (e) {
            debugPrint('🧩 AppCheck DEBUG token fetch: $e');
            debugPrint('   → Check native logcat tag: DebugAppCheckProvider');
          }
        });
      }
    }

    // ----------------------------------------------------------------
    // LOCALE BOOTSTRAP
    // ----------------------------------------------------------------
    final savedLocaleTag = await LocaleService.getSavedLocaleCode();

    runApp(NuriaApp(initialLocaleTag: savedLocaleTag));
  }, (error, stack) async {
    if (kReleaseMode) {
      try {
        await FirebaseCrashlytics.instance
            .recordError(error, stack, fatal: true);
      } catch (_) {}
    } else {
      debugPrint('❌ Uncaught error: $error\n$stack');
    }
  });
}

// Language codes whose ARB translations exist but are absent from Flutter's
// Global delegate supported-language sets (kMaterialSupportedLanguages, etc.).
// Used both in _buildSupportedLocalesSafe and the fallback delegates below.
const Set<String> _kBypassLocaleCodes = {
  'ace', 'mad', 'min', 'jv', 'kmr', 'ceb', 'tl',
  'ha', 'ig', 'so', 'yo', 'ti', 'rw', 'ny', 'st',
  'mg', 'ht', 'lb', 'yue', 'ku', 'ckb',
};

/// Provides English-fallback [MaterialLocalizations] for bypass locales that
/// [GlobalMaterialLocalizations.delegate] doesn't cover. Scoped to only those
/// codes to avoid a duplicate-type assert from [Localizations._loadAll] for
/// locales that are already handled by the Global delegate.
class _BypassMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _BypassMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _kBypassLocaleCodes.contains(locale.languageCode);

  @override
  Future<MaterialLocalizations> load(Locale locale) =>
      SynchronousFuture<MaterialLocalizations>(
          const DefaultMaterialLocalizations());

  @override
  bool shouldReload(_BypassMaterialLocalizationsDelegate old) => false;
}

/// Same as above but for [WidgetsLocalizations] (text direction, etc.).
class _BypassWidgetsLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _BypassWidgetsLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _kBypassLocaleCodes.contains(locale.languageCode);

  @override
  Future<WidgetsLocalizations> load(Locale locale) =>
      SynchronousFuture<WidgetsLocalizations>(
          const DefaultWidgetsLocalizations());

  @override
  bool shouldReload(_BypassWidgetsLocalizationsDelegate old) => false;
}

class NuriaApp extends StatefulWidget {
  final String? initialLocaleTag;

  const NuriaApp({super.key, this.initialLocaleTag});

  @override
  State<NuriaApp> createState() => _NuriaAppState();
}

class _NuriaAppState extends State<NuriaApp> {
  Locale? _locale;
  late bool _hasChosenLocale;

  late final List<Locale> _supportedLocalesSafe = _buildSupportedLocalesSafe();

  // Locales whose ARB translations exist but are not in Flutter's built-in
  // Material/Cupertino delegate list. Delegates for these are provided by
  // _BypassMaterialLocalizationsDelegate / _BypassWidgetsLocalizationsDelegate.
  static const _delegateBypassLocales = _kBypassLocaleCodes;

  List<Locale> _buildSupportedLocalesSafe() {
    final all = AppLocalizations.supportedLocales;

    final safe = all.where((l) {
      if (_delegateBypassLocales.contains(l.languageCode)) return true;
      return GlobalMaterialLocalizations.delegate.isSupported(l) &&
          GlobalCupertinoLocalizations.delegate.isSupported(l) &&
          GlobalWidgetsLocalizations.delegate.isSupported(l);
    }).toList();

    return safe.isEmpty ? const [Locale('en')] : safe;
  }

  List<Locale> get _supported => _supportedLocalesSafe;

  @override
  void initState() {
    super.initState();

    final tag = widget.initialLocaleTag;
    _hasChosenLocale = tag != null && tag.trim().isNotEmpty;

    if (_hasChosenLocale) {
      final chosen = LocaleService.toLocale(tag!);
      _locale = _coerceToSupportedLocale(chosen);

      FirebaseAuth.instance
          .setLanguageCode(_locale!.languageCode)
          .catchError((_) {});
    }
  }

  Locale _coerceToSupportedLocale(Locale locale) {
    final wantedTag = LocaleService.toTag(locale).toLowerCase();

    for (final s in _supported) {
      if (LocaleService.toTag(s).toLowerCase() == wantedTag) return s;
    }

    for (final s in _supported) {
      if (s.languageCode == locale.languageCode) return s;
    }

    return _supported.first;
  }

  Future<void> _setLocaleAndPersist(Locale locale) async {
    final supported = _coerceToSupportedLocale(locale);

    await LocaleService.setSavedLocaleCode(LocaleService.toTag(supported));

    try {
      await FirebaseAuth.instance.setLanguageCode(supported.languageCode);
    } catch (_) {}

    if (!mounted) return;

    setState(() {
      _locale = supported;
      _hasChosenLocale = true;
    });
  }

  Future<void> _updateLocaleFromCode(String codeOrTag) async {
    final locale = LocaleService.toLocale(codeOrTag);
    await _setLocaleAndPersist(locale);
  }

  Locale _resolveDeviceLocale(Locale? deviceLocale) {
    if (deviceLocale == null) return _supported.first;

    final tag = LocaleService.toTag(deviceLocale).toLowerCase();

    for (final s in _supported) {
      if (LocaleService.toTag(s).toLowerCase() == tag) return s;
    }

    for (final s in _supported) {
      if (s.languageCode == deviceLocale.languageCode) return s;
    }

    return _supported.first;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (ctx) => AppLocalizations.of(ctx)?.appTitle ?? 'Nuria',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      locale: _locale,
      supportedLocales: _supported,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // Fallbacks for bypass locales (ku, ckb, ace, etc.) not covered by
        // the Global delegates above. Scoped to _kBypassLocaleCodes to avoid
        // a duplicate-type assert in Localizations._loadAll for supported locales.
        _BypassMaterialLocalizationsDelegate(),
        _BypassWidgetsLocalizationsDelegate(),
      ],
      localeResolutionCallback: (deviceLocale, supported) {
        if (_locale != null) return _coerceToSupportedLocale(_locale!);
        return _resolveDeviceLocale(deviceLocale);
      },
      // ckb (Sorani Kurdish) is Arabic-script RTL but not in
      // GlobalWidgetsLocalizations. Override text direction to RTL here.
      builder: (context, child) {
        final locale = Localizations.maybeLocaleOf(context);
        if (locale?.languageCode == 'ckb') {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        }
        return child!;
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/auth':
            return MaterialPageRoute(
              builder: (_) => const AuthGateScreen(),
            );
          case '/settings':
            final currentTag = LocaleService.toTag(_locale ?? _supported.first);
            return MaterialPageRoute(
              builder: (_) => SettingsScreen(
                currentCode: currentTag,
                onLocalePicked: _updateLocaleFromCode,
                supportedLocales: _supported,
              ),
            );
          default:
            return null;
        }
      },
      home: _hasChosenLocale
          ? const AuthGateScreen()
          : LanguageGateScreen(
              currentCode: _locale?.languageCode,
              onSelected: _setLocaleAndPersist,
            ),
    );
  }
}
