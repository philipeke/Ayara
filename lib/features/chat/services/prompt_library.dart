import 'package:flutter/widgets.dart';
import 'package:ayara/core/services/content_repository.dart';
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
  /// Reads from [ContentRepository.instance.livePromptSlots] — starts with
  /// bundled data and is upgraded from Firestore in the background.
  static String forCategory(BuildContext context, String rawId) {
    final id = normalizeCategoryId(rawId);

    final slots = ContentRepository.instance.livePromptSlots;
    final match = slots.where((s) => s.categoryId == id);
    if (match.isNotEmpty) return match.first.text;

    // Fallback: daily guidance slot
    final fallback = slots.where((s) => s.categoryId == CategoryId.dailyGuidance);
    return fallback.isNotEmpty ? fallback.first.text : '';
  }
}
