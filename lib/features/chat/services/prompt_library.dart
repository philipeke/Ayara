import 'package:flutter/widgets.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/chat/presentation/utils/category_data.dart';

class PromptLibrary {
  PromptLibrary._();

  /// Returns active locale as a BCP-47-ish tag.
  ///
  /// Examples:
  /// - en
  /// - sv-SE
  /// - da-DK
  /// - pt-BR
  /// - zh-CN
  ///
  /// Fallback: 'en'
  static String langOf(BuildContext context) {
    final locale = Localizations.localeOf(context);

    final lang = (locale.languageCode).trim();
    if (lang.isEmpty) return 'en';

    final country = (locale.countryCode ?? '').trim();

    // If we have region, return tag. Otherwise language only.
    if (country.isNotEmpty) {
      return '${lang.toLowerCase()}-${country.toUpperCase()}';
    }

    return lang.toLowerCase();
  }

  /// Fetch prompt for given category ID.
  /// ID normalizes so we tolerate legacy IDs (e.g. old stored values).
  static String forCategory(BuildContext context, String rawId) {
    final id = normalizeCategoryId(rawId);
    final t = AppLocalizations.of(context)!;

    switch (id) {
      case CategoryId.dailyGuidance:
        return t.promptSlot01;
      case CategoryId.faithTrust:
        return t.promptSlot02;
      case CategoryId.prayerReflection:
        return t.promptSlot03;
      case CategoryId.hopeDifficultTimes:
        return t.promptSlot04;
      case CategoryId.forgiveness:
        return t.promptSlot05;
      case CategoryId.loveCompassion:
        return t.promptSlot06;
      case CategoryId.strengthCourage:
        return t.promptSlot07;
      case CategoryId.gratitude:
        return t.promptSlot08;
      case CategoryId.purposeCalling:
        return t.promptSlot09;
      case CategoryId.familyRelationships:
        return t.promptSlot10;
      case CategoryId.peaceAnxietyRelief:
        return t.promptSlot11;
      case CategoryId.wisdomOfJesus:
        return t.promptSlot12;
      case CategoryId.humilityCharacter:
        return t.promptSlot13;
      case CategoryId.overcomingTemptation:
        return t.promptSlot14;
      case CategoryId.eveningReflection:
        return t.promptSlot15;

      default:
        // If legacy ids still come through (old Ayara ids), route them to something safe.
        // We intentionally avoid any "tipsy" language.
        return t.promptSlot01;
    }
  }
}
