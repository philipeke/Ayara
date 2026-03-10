// lib/core/utils/language_meta.dart
import 'package:flutter/widgets.dart';

class LanguageMeta {
  const LanguageMeta({required this.flag, required this.endonym});
  final String flag;
  final String endonym;
}

/// Central language/locale metadata for UI labels (endonyms) + flags.
///
/// Notes:
/// - Flutter/intl does NOT automatically provide endonyms ("Deutsch", "Español"...).
/// - supportedLocales comes from ARB files; this registry only improves display.
/// - If a locale/tag is missing here, we fall back to showing the tag (e.g. "pt-BR") and globe flag.
class LanguageMetaRegistry {
  LanguageMetaRegistry._();

  /// Tag-level overrides (most specific).
  /// Keys should be normalized BCP-47-ish with hyphen, e.g. "pt-BR", "zh-CN", "es-419", "sr-Latn".
  static final Map<String, LanguageMeta> byTag = {
    // Core
    'en': const LanguageMeta(flag: '🇬🇧', endonym: 'English'),
    'sv': const LanguageMeta(flag: '🇸🇪', endonym: 'Svenska'),
    'bs': const LanguageMeta(flag: '🇧🇦', endonym: 'Bosanski'),

    // Arabic regional variants
    'ar-EG': const LanguageMeta(flag: '🇪🇬', endonym: 'العربية (مصر)'),
    'ar-AE': const LanguageMeta(flag: '🇦🇪', endonym: 'العربية (الإمارات)'),
    'ar-SA': const LanguageMeta(flag: '🇸🇦', endonym: 'العربية (السعودية)'),
    'ar-MA': const LanguageMeta(flag: '🇲🇦', endonym: 'العربية (المغرب)'),
    'ar-IQ': const LanguageMeta(flag: '🇮🇶', endonym: 'العربية (العراق)'),

    // German variants
    'de-AT': const LanguageMeta(flag: '🇦🇹', endonym: 'Deutsch (Österreich)'),
    'de-CH': const LanguageMeta(flag: '🇨🇭', endonym: 'Deutsch (Schweiz)'),

    // English variants
    'en-AU': const LanguageMeta(flag: '🇦🇺', endonym: 'English (Australia)'),
    'en-US': const LanguageMeta(flag: '🇺🇸', endonym: 'English (US)'),
    'en-GB': const LanguageMeta(flag: '🇬🇧', endonym: 'English (UK)'),
    'en-CA': const LanguageMeta(flag: '🇨🇦', endonym: 'English (Canada)'),
    'en-IE': const LanguageMeta(flag: '🇮🇪', endonym: 'English (Ireland)'),
    'en-NZ': const LanguageMeta(flag: '🇳🇿', endonym: 'English (New Zealand)'),
    'en-SG': const LanguageMeta(flag: '🇸🇬', endonym: 'English (Singapore)'),

    // Spanish variants
    'es-ES': const LanguageMeta(flag: '🇪🇸', endonym: 'Español (España)'),
    'es-US': const LanguageMeta(flag: '🇺🇸', endonym: 'Español (EE. UU.)'),
    'es-419': const LanguageMeta(flag: '🌎', endonym: 'Español (LatAm)'),
    'es-MX': const LanguageMeta(flag: '🇲🇽', endonym: 'Español (México)'),
    'es-AR': const LanguageMeta(flag: '🇦🇷', endonym: 'Español (Argentina)'),
    'es-CL': const LanguageMeta(flag: '🇨🇱', endonym: 'Español (Chile)'),
    'es-CO': const LanguageMeta(flag: '🇨🇴', endonym: 'Español (Colombia)'),

    // French variants
    'fr-CH': const LanguageMeta(flag: '🇨🇭', endonym: 'Français (Suisse)'),
    'fr-CA': const LanguageMeta(flag: '🇨🇦', endonym: 'Français (Canada)'),
    'fr-BE': const LanguageMeta(flag: '🇧🇪', endonym: 'Français (Belgique)'),

    // Portuguese variants
    'pt-BR': const LanguageMeta(flag: '🇧🇷', endonym: 'Português (Brasil)'),
    'pt-PT': const LanguageMeta(flag: '🇵🇹', endonym: 'Português (Portugal)'),

    // Chinese variants
    'zh-CN': const LanguageMeta(flag: '🇨🇳', endonym: '中文（简体）'),
    'zh-TW': const LanguageMeta(flag: '🇹🇼', endonym: '中文（繁體）'),
    'zh-HK': const LanguageMeta(flag: '🇭🇰', endonym: '中文（香港）'),
    'zh-SG': const LanguageMeta(flag: '🇸🇬', endonym: '中文（新加坡）'),

    // Script variants (if you ever add them as ARB)
    'sr-Latn': const LanguageMeta(flag: '🇷🇸', endonym: 'Srpski (latinica)'),
    'sr-Cyrl': const LanguageMeta(flag: '🇷🇸', endonym: 'Српски (ћирилица)'),
  };

  /// Language-only defaults (less specific).
  /// Keys should be languageCode only: "de", "fr", "ja", etc.
  static final Map<String, LanguageMeta> byLang = {
    'ar': const LanguageMeta(flag: '🇸🇦', endonym: 'العربية'),
    'bg': const LanguageMeta(flag: '🇧🇬', endonym: 'Български'),
    'ca': const LanguageMeta(flag: '🇪🇸', endonym: 'Català'),
    'cs': const LanguageMeta(flag: '🇨🇿', endonym: 'Čeština'),
    'da': const LanguageMeta(flag: '🇩🇰', endonym: 'Dansk'),
    'de': const LanguageMeta(flag: '🇩🇪', endonym: 'Deutsch'),
    'el': const LanguageMeta(flag: '🇬🇷', endonym: 'Ελληνικά'),
    'es': const LanguageMeta(flag: '🇪🇸', endonym: 'Español'),
    'et': const LanguageMeta(flag: '🇪🇪', endonym: 'Eesti'),
    'fa': const LanguageMeta(flag: '🇮🇷', endonym: 'فارسی'),
    'fi': const LanguageMeta(flag: '🇫🇮', endonym: 'Suomi'),
    'fil': const LanguageMeta(flag: '🇵🇭', endonym: 'Filipino'),
    'fr': const LanguageMeta(flag: '🇫🇷', endonym: 'Français'),
    'ga': const LanguageMeta(flag: '🇮🇪', endonym: 'Gaeilge'),
    'he': const LanguageMeta(flag: '🇮🇱', endonym: 'עברית'),
    'hi': const LanguageMeta(flag: '🇮🇳', endonym: 'हिन्दी'),
    'hr': const LanguageMeta(flag: '🇭🇷', endonym: 'Hrvatski'),
    'hu': const LanguageMeta(flag: '🇭🇺', endonym: 'Magyar'),
    'hy': const LanguageMeta(flag: '🇦🇲', endonym: 'Հայերեն'),
    'id': const LanguageMeta(flag: '🇮🇩', endonym: 'Bahasa Indonesia'),
    'is': const LanguageMeta(flag: '🇮🇸', endonym: 'Íslenska'),
    'it': const LanguageMeta(flag: '🇮🇹', endonym: 'Italiano'),
    'ja': const LanguageMeta(flag: '🇯🇵', endonym: '日本語'),
    'ka': const LanguageMeta(flag: '🇬🇪', endonym: 'ქართული'),
    'kk': const LanguageMeta(flag: '🇰🇿', endonym: 'Қазақша'),
    'km': const LanguageMeta(flag: '🇰🇭', endonym: 'ខ្មែរ'),
    'kn': const LanguageMeta(flag: '🇮🇳', endonym: 'ಕನ್ನಡ'),
    'ko': const LanguageMeta(flag: '🇰🇷', endonym: '한국어'),
    'ky': const LanguageMeta(flag: '🇰🇬', endonym: 'Кыргызча'),
    'lo': const LanguageMeta(flag: '🇱🇦', endonym: 'ລາວ'),
    'lt': const LanguageMeta(flag: '🇱🇹', endonym: 'Lietuvių'),
    'lv': const LanguageMeta(flag: '🇱🇻', endonym: 'Latviešu'),
    'mk': const LanguageMeta(flag: '🇲🇰', endonym: 'Македонски'),
    'ml': const LanguageMeta(flag: '🇮🇳', endonym: 'മലയാളം'),
    'mn': const LanguageMeta(flag: '🇲🇳', endonym: 'Монгол'),
    'mr': const LanguageMeta(flag: '🇮🇳', endonym: 'मराठी'),
    'ms': const LanguageMeta(flag: '🇲🇾', endonym: 'Bahasa Melayu'),
    'my': const LanguageMeta(flag: '🇲🇲', endonym: 'မြန်မာ'),
    'nb': const LanguageMeta(flag: '🇳🇴', endonym: 'Norsk (Bokmål)'),
    'nn': const LanguageMeta(flag: '🇳🇴', endonym: 'Norsk (Nynorsk)'),
    'ne': const LanguageMeta(flag: '🇳🇵', endonym: 'नेपाली'),
    'nl': const LanguageMeta(flag: '🇳🇱', endonym: 'Nederlands'),
    'no': const LanguageMeta(flag: '🇳🇴', endonym: 'Norsk'),
    'pa': const LanguageMeta(flag: '🇮🇳', endonym: 'ਪੰਜਾਬੀ'),
    'pl': const LanguageMeta(flag: '🇵🇱', endonym: 'Polski'),
    'ps': const LanguageMeta(flag: '🇦🇫', endonym: 'پښتو'),
    'pt': const LanguageMeta(flag: '🇵🇹', endonym: 'Português'),
    'ro': const LanguageMeta(flag: '🇷🇴', endonym: 'Română'),
    'ru': const LanguageMeta(flag: '🇷🇺', endonym: 'Русский'),
    'si': const LanguageMeta(flag: '🇱🇰', endonym: 'සිංහල'),
    'sk': const LanguageMeta(flag: '🇸🇰', endonym: 'Slovenčina'),
    'sl': const LanguageMeta(flag: '🇸🇮', endonym: 'Slovenščina'),
    'so': const LanguageMeta(flag: '🇸🇴', endonym: 'Soomaali'),
    'sq': const LanguageMeta(flag: '🇦🇱', endonym: 'Shqip'),
    'sr': const LanguageMeta(flag: '🇷🇸', endonym: 'Српски'),
    'sw': const LanguageMeta(flag: '🇰🇪', endonym: 'Kiswahili'),
    'ta': const LanguageMeta(flag: '🇮🇳', endonym: 'தமிழ்'),
    'te': const LanguageMeta(flag: '🇮🇳', endonym: 'తెలుగు'),
    'th': const LanguageMeta(flag: '🇹🇭', endonym: 'ไทย'),
    'tr': const LanguageMeta(flag: '🇹🇷', endonym: 'Türkçe'),
    'uk': const LanguageMeta(flag: '🇺🇦', endonym: 'Українська'),
    'ur': const LanguageMeta(flag: '🇵🇰', endonym: 'اردو'),
    'uz': const LanguageMeta(flag: '🇺🇿', endonym: 'O‘zbek'),
    'vi': const LanguageMeta(flag: '🇻🇳', endonym: 'Tiếng Việt'),
    'yo': const LanguageMeta(flag: '🇳🇬', endonym: 'Yorùbá'),
    'zh': const LanguageMeta(flag: '🇨🇳', endonym: '中文'),
    'zu': const LanguageMeta(flag: '🇿🇦', endonym: 'isiZulu'),
    'af': const LanguageMeta(flag: '🇿🇦', endonym: 'Afrikaans'),
    'am': const LanguageMeta(flag: '🇪🇹', endonym: 'አማርኛ'),
    'az': const LanguageMeta(flag: '🇦🇿', endonym: 'Azərbaycanca'),
    'bn': const LanguageMeta(flag: '🇧🇩', endonym: 'বাংলা'),
    'gu': const LanguageMeta(flag: '🇮🇳', endonym: 'ગુજરાતી'),

    // Kurdish
    'ku':  const LanguageMeta(flag: '🇮🇶', endonym: 'Kurdî (Kurmancî)'),
    'ckb': const LanguageMeta(flag: '🇮🇶', endonym: 'کوردی (سۆرانی)'),

    // Extras you listed
    'kmr': const LanguageMeta(flag: '🏳️', endonym: 'Kurdî'),
    'ceb': const LanguageMeta(flag: '🇵🇭', endonym: 'Cebuano'),
    'tl': const LanguageMeta(flag: '🇵🇭', endonym: 'Tagalog'),
    'jv': const LanguageMeta(flag: '🇮🇩', endonym: 'Basa Jawa'),
    'mad': const LanguageMeta(flag: '🇮🇩', endonym: 'Basa Madura'),
    'ace': const LanguageMeta(flag: '🇮🇩', endonym: 'Bahasa Aceh'),
    'min': const LanguageMeta(flag: '🇮🇩', endonym: 'Minangkabau'),
    'rw': const LanguageMeta(flag: '🇷🇼', endonym: 'Kinyarwanda'),
    'ny': const LanguageMeta(flag: '🇲🇼', endonym: 'Chichewa'),
    'st': const LanguageMeta(flag: '🇱🇸', endonym: 'Sesotho'),
    'or': const LanguageMeta(flag: '🇮🇳', endonym: 'ଓଡ଼ିଆ'),
    'as': const LanguageMeta(flag: '🇮🇳', endonym: 'অসমীয়া'),
    'ha': const LanguageMeta(flag: '🇳🇬', endonym: 'Hausa'),
    'ig': const LanguageMeta(flag: '🇳🇬', endonym: 'Igbo'),
    'mt': const LanguageMeta(flag: '🇲🇹', endonym: 'Malti'),
    'mg': const LanguageMeta(flag: '🇲🇬', endonym: 'Malagasy'),
    'yue': const LanguageMeta(flag: '🇭🇰', endonym: '粵語'),
    'ht': const LanguageMeta(flag: '🇭🇹', endonym: 'Kreyòl Ayisyen'),
    'ti': const LanguageMeta(flag: '🇪🇹', endonym: 'ትግርኛ'),
    'lb': const LanguageMeta(flag: '🇱🇺', endonym: 'Lëtzebuergesch'),
  };

  /// Extract language code from tag ("pt-BR" -> "pt")
  static String langOfTag(String tag) {
    final norm = normalizeTag(tag);
    if (norm.isEmpty) return '';
    return norm.split('-').first;
  }

  /// Normalize a tag into a consistent key form:
  /// - language: lower
  /// - script: TitleCase (Latn, Cyrl)
  /// - region: UPPER (US, GB) or numeric (419)
  static String normalizeTag(String raw) {
    final s = raw.trim().replaceAll('_', '-');
    if (s.isEmpty) return '';
    final parts = s.split('-').where((p) => p.trim().isNotEmpty).toList();
    if (parts.isEmpty) return '';

    final lang = parts[0].toLowerCase();
    if (parts.length == 1) return lang;

    String? script;
    String? region;

    // BCP-47: lang[-script][-region]...
    // script is 4 letters, region is 2 letters or 3 digits.
    for (var i = 1; i < parts.length; i++) {
      final p = parts[i];
      if (script == null &&
          p.length == 4 &&
          RegExp(r'^[A-Za-z]{4}$').hasMatch(p)) {
        script = p[0].toUpperCase() + p.substring(1).toLowerCase();
        continue;
      }
      if (region == null &&
          ((p.length == 2 && RegExp(r'^[A-Za-z]{2}$').hasMatch(p)) ||
              (p.length == 3 && RegExp(r'^\d{3}$').hasMatch(p)))) {
        region = (p.length == 2) ? p.toUpperCase() : p;
        continue;
      }
    }

    if (script != null && region != null) return '$lang-$script-$region';
    if (script != null) return '$lang-$script';
    if (region != null) return '$lang-$region';

    // Fallback: just lang + next subtag raw-normalized
    final p1 = parts[1];
    final p1Norm = (p1.length == 2) ? p1.toUpperCase() : p1;
    return '$lang-$p1Norm';
  }

  /// Build a stable tag string from a Flutter Locale.
  /// Uses languageCode + optional scriptCode + optional countryCode.
  static String tagFromLocale(Locale locale) {
    final lang = locale.languageCode.trim().toLowerCase();
    if (lang.isEmpty) return '';

    // scriptCode exists on newer Flutter; safe to use with ?? ''
    final script = (locale.scriptCode ?? '').trim();
    final region = (locale.countryCode ?? '').trim();

    final buf = StringBuffer(lang);
    if (script.isNotEmpty) {
      final s = script.length == 4
          ? (script[0].toUpperCase() + script.substring(1).toLowerCase())
          : script;
      buf.write('-$s');
    }
    if (region.isNotEmpty) {
      final r = region.length == 2 ? region.toUpperCase() : region;
      buf.write('-$r');
    }
    return normalizeTag(buf.toString());
  }

  /// Returns LanguageMeta for a Locale if known, otherwise null.
  static LanguageMeta? metaForLocale(Locale locale) {
    final tag = tagFromLocale(locale);
    if (tag.isNotEmpty) {
      final exact = byTag[tag];
      if (exact != null) return exact;
    }
    final lang = locale.languageCode.trim().toLowerCase();
    return byLang[lang] ?? byTag[lang];
  }

  /// Best-effort display label (endonym). Falls back to tag if unknown.
  static String labelForTag(String tag) {
    final norm = normalizeTag(tag);
    if (norm.isEmpty) return 'Unknown';
    final exact = byTag[norm];
    if (exact != null) return exact.endonym;

    final lang = norm.split('-').first;
    final langMeta = byLang[lang] ?? byTag[lang];
    return langMeta?.endonym ?? norm;
  }

  /// Best-effort flag for tag. Falls back to a globe if unknown.
  static String flagForTag(String tag) {
    final norm = normalizeTag(tag);
    if (norm.isEmpty) return '🌐';
    final exact = byTag[norm];
    if (exact != null) return exact.flag;

    final lang = norm.split('-').first;
    final langMeta = byLang[lang] ?? byTag[lang];
    return langMeta?.flag ?? '🌐';
  }

  /// Helper: whether a base language ("en") should be hidden if variants exist.
  ///
  /// We hide base only when:
  /// - base exists in supportedLocales, AND
  /// - at least one variant exists (region/script), AND
  /// - language is in hideForLanguages (default: en/es/pt/zh).
  static bool shouldHideBaseLanguage({
    required String languageCode,
    required Iterable<Locale> supportedLocales,
    Set<String> hideForLanguages = const {'en', 'es', 'pt', 'zh'},
  }) {
    final lang = languageCode.trim().toLowerCase();
    if (lang.isEmpty) return false;
    if (!hideForLanguages.contains(lang)) return false;

    bool hasBase = false;
    bool hasVariant = false;

    for (final l in supportedLocales) {
      if (l.languageCode.toLowerCase() != lang) continue;

      final hasRegion = (l.countryCode ?? '').trim().isNotEmpty;
      final hasScript = (l.scriptCode ?? '').trim().isNotEmpty;

      if (!hasRegion && !hasScript) hasBase = true;
      if (hasRegion || hasScript) hasVariant = true;

      if (hasBase && hasVariant) return true;
    }

    return false;
  }
}
