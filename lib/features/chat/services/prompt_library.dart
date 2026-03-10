import 'package:flutter/widgets.dart';
import 'package:nuria/l10n/app_localizations.dart';
import 'package:nuria/features/chat/presentation/utils/category_data.dart';

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
        return t.promptDailyGuidance;
      case CategoryId.faithTrust:
        return t.promptFaithTrust;
      case CategoryId.prayerReflection:
        return t.promptPrayerReflection;
      case CategoryId.hopeDifficultTimes:
        return t.promptHopeDifficultTimes;
      case CategoryId.forgiveness:
        return t.promptForgiveness;
      case CategoryId.loveCompassion:
        return t.promptLoveCompassion;
      case CategoryId.strengthCourage:
        return t.promptStrengthCourage;
      case CategoryId.gratitude:
        return t.promptGratitude;
      case CategoryId.purposeCalling:
        return t.promptPurposeCalling;
      case CategoryId.familyRelationships:
        return t.promptFamilyRelationships;
      case CategoryId.peaceAnxietyRelief:
        return t.promptPeaceAnxietyRelief;
      case CategoryId.wisdomOfJesus:
        return t.promptWisdomOfJesus;
      case CategoryId.humilityCharacter:
        return t.promptHumilityCharacter;
      case CategoryId.overcomingTemptation:
        return t.promptOvercomingTemptation;
      case CategoryId.eveningReflection:
        return t.promptEveningReflection;

      default:
        // If legacy ids still come through (old Nuria ids), route them to something safe.
        // We intentionally avoid any "tipsy" language.
        return t.promptDailyGuidance;
    }
  }
}
