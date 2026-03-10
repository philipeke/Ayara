import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Handles saving and loading the user's selected locale/language code.
/// Stored persistently using SharedPreferences.
///
/// Supports both language-only codes ("sv") and BCP-47 tags ("sv-SE").
/// Internally we store what the UI selects (tag if available).
class LocaleService {
  static const _key = 'nuria_locale_code';

  /// Save the selected locale code/tag (e.g. 'en', 'sv', 'sv-SE').
  static Future<void> setSavedLocaleCode(String code) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, normalize(code));
  }

  /// Retrieve the saved locale code/tag, or null if none is set.
  static Future<String?> getSavedLocaleCode() async {
    final prefs = await SharedPreferences.getInstance();
    final v = prefs.getString(_key);
    if (v == null) return null;
    final s = normalize(v);
    return s.isEmpty ? null : s;
  }

  /// Returns true if a locale code has been saved previously.
  static Future<bool> hasSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_key);
    return code != null && code.trim().isNotEmpty;
  }

  /// Optional: clear saved locale (for testing or logout flows).
  static Future<void> clearSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }

  /// Normalize raw input to a safe tag:
  /// - trims
  /// - converts "_" to "-"
  /// - lowercases language
  /// - uppercases country if present
  /// Examples:
  ///  "SV" -> "sv"
  ///  "sv_se" -> "sv-SE"
  ///  "pt-br" -> "pt-BR"
  static String normalize(String raw) {
    var s = (raw).trim();
    if (s.isEmpty) return '';
    s = s.replaceAll('_', '-');

    final parts = s.split('-').where((p) => p.trim().isNotEmpty).toList();
    if (parts.isEmpty) return '';

    final lang = parts[0].toLowerCase();

    String? country;
    if (parts.length >= 2) {
      // Treat 2-letter or 3-digit region as country/region
      final p1 = parts[1];
      if (p1.length == 2) {
        country = p1.toUpperCase();
      } else if (p1.length == 3 && int.tryParse(p1) != null) {
        country = p1; // e.g. es-419
      } else {
        // If it's not a region, keep as-is (rare), but still preserve
        country = p1;
      }
    }

    if (country == null || country.isEmpty) return lang;
    return '$lang-$country';
  }

  /// Convert a Locale to tag (e.g. Locale('sv','SE') -> "sv-SE", Locale('sv') -> "sv").
  static String toTag(Locale locale) {
    final lang = (locale.languageCode).trim();
    final c = (locale.countryCode ?? '').trim();
    if (c.isEmpty) return normalize(lang);
    return normalize('$lang-$c');
  }

  /// Parse a code/tag into a Locale.
  /// "sv" -> Locale('sv')
  /// "sv-SE" -> Locale('sv','SE')
  static Locale toLocale(String codeOrTag) {
    final s = normalize(codeOrTag);
    if (s.isEmpty) return const Locale('en');

    final parts = s.split('-');
    final lang = parts[0];
    if (parts.length >= 2) {
      final region = parts[1];
      return Locale(lang, region);
    }
    return Locale(lang);
  }
}

