import 'package:flutter/material.dart';
import 'package:ayara/l10n/app_localizations.dart';

/// Stable ID for each category (language-independent, english/lowercase).
/// Used in prompts, routing and storage.
class CategoryId {
  static const dailyGuidance = 'daily_guidance';
  static const faithTrust = 'faith_trust';
  static const prayerReflection = 'prayer_reflection';
  static const hopeDifficultTimes = 'hope_difficult_times';
  static const forgiveness = 'forgiveness';
  static const loveCompassion = 'love_compassion';
  static const strengthCourage = 'strength_courage';
  static const gratitude = 'gratitude';
  static const purposeCalling = 'purpose_calling';
  static const familyRelationships = 'family_relationships';
  static const peaceAnxietyRelief = 'peace_anxiety_relief';
  static const wisdomOfJesus = 'wisdom_of_jesus';
  static const humilityCharacter = 'humility_character';
  static const overcomingTemptation = 'overcoming_temptation';
  static const eveningReflection = 'evening_reflection';
}

/// Backwards-compat: map older/other labels → stable IDs.
String normalizeCategoryId(String raw) {
  final x = raw.trim().toLowerCase();

  switch (x) {
    // New canonical IDs
    case CategoryId.dailyGuidance:
      return CategoryId.dailyGuidance;
    case CategoryId.faithTrust:
      return CategoryId.faithTrust;
    case CategoryId.prayerReflection:
      return CategoryId.prayerReflection;
    case CategoryId.hopeDifficultTimes:
      return CategoryId.hopeDifficultTimes;
    case CategoryId.forgiveness:
      return CategoryId.forgiveness;
    case CategoryId.loveCompassion:
      return CategoryId.loveCompassion;
    case CategoryId.strengthCourage:
      return CategoryId.strengthCourage;
    case CategoryId.gratitude:
      return CategoryId.gratitude;
    case CategoryId.purposeCalling:
      return CategoryId.purposeCalling;
    case CategoryId.familyRelationships:
      return CategoryId.familyRelationships;
    case CategoryId.peaceAnxietyRelief:
      return CategoryId.peaceAnxietyRelief;
    case CategoryId.wisdomOfJesus:
      return CategoryId.wisdomOfJesus;
    case CategoryId.humilityCharacter:
      return CategoryId.humilityCharacter;
    case CategoryId.overcomingTemptation:
      return CategoryId.overcomingTemptation;
    case CategoryId.eveningReflection:
      return CategoryId.eveningReflection;

    // Friendly aliases (in case something stores/displayed labels)
    case 'daily guidance':
    case 'daglig vägledning':
      return CategoryId.dailyGuidance;

    case 'faith & trust':
    case 'tro och tillit':
    case 'faith and trust':
      return CategoryId.faithTrust;

    case 'prayer & reflection':
    case 'bön & reflektion':
    case 'prayer and reflection':
      return CategoryId.prayerReflection;

    case 'hope in difficult times':
    case 'hopp i svåra tider':
      return CategoryId.hopeDifficultTimes;

    case 'love & compassion':
    case 'kärlek & medkänsla':
    case 'love and compassion':
      return CategoryId.loveCompassion;

    case 'strength & courage':
    case 'styrka & mod':
    case 'strength and courage':
      return CategoryId.strengthCourage;

    case 'purpose & calling':
    case 'livsuppdrag':
    case 'purpose and calling':
      return CategoryId.purposeCalling;

    case 'family & relationships':
    case 'relationer & familj':
    case 'family and relationships':
      return CategoryId.familyRelationships;

    case 'peace & anxiety relief':
    case 'inre frid':
    case 'peace and anxiety relief':
      return CategoryId.peaceAnxietyRelief;

    case 'wisdom of jesus':
    case 'jesu läror':
      return CategoryId.wisdomOfJesus;

    case 'humility & character':
    case 'ödmjukhet & karaktär':
    case 'humility and character':
      return CategoryId.humilityCharacter;

    case 'overcoming temptation':
    case 'motstå frestelser':
      return CategoryId.overcomingTemptation;

    case 'evening reflection':
    case 'kvällsreflektion':
      return CategoryId.eveningReflection;

    // Old Ayara ids (just in case anything still points here)
    case 'humor':
    case 'sad':
    case 'philosophical':
    case 'smart':
    case 'romantic':
    case 'random':
    case 'inspiring':
    case 'pep':
    case 'upset':
    case 'furious':
    case 'genius':
    case 'hilarious':
      // Keep as-is to avoid crashes if old history exists.
      return x;

    default:
      // Unknown id → fallback to raw lowercase so nothing crashes.
      return x;
  }
}

/// Premium gate: which categories require Premium?
///
/// Suggested initial rule:
/// - "Wisdom of Jesus" + "Overcoming Temptation" behind Premium (deeper guidance)
/// - You can adjust this later without changing IDs.
bool isPremiumOnlyCategory(String id) {
  const locked = {
    CategoryId.purposeCalling,
    CategoryId.peaceAnxietyRelief,
    CategoryId.wisdomOfJesus,
    CategoryId.humilityCharacter,
    CategoryId.overcomingTemptation,
  };
  return locked.contains(normalizeCategoryId(id));
}

/// Minimal definition of an item in the UI grid.
class CategoryActionItem {
  final String id; // stable ID
  final String title; // localized title
  final IconData icon;
  final VoidCallback onTap;

  /// True if this category requires Premium.
  final bool isPremium;

  const CategoryActionItem({
    required this.id,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isPremium = false,
  });
}

/// Localized title for a given category ID.
String localizedTitleFor(BuildContext context, String id) {
  final t = AppLocalizations.of(context);

  switch (normalizeCategoryId(id)) {
    case CategoryId.dailyGuidance:
      return t.categorySlot01;
    case CategoryId.faithTrust:
      return t.categorySlot02;
    case CategoryId.prayerReflection:
      return t.categorySlot03;
    case CategoryId.hopeDifficultTimes:
      return t.categorySlot04;
    case CategoryId.forgiveness:
      return t.categorySlot05;
    case CategoryId.loveCompassion:
      return t.categorySlot06;
    case CategoryId.strengthCourage:
      return t.categorySlot07;
    case CategoryId.gratitude:
      return t.categorySlot08;
    case CategoryId.purposeCalling:
      return t.categorySlot09;
    case CategoryId.familyRelationships:
      return t.categorySlot10;
    case CategoryId.peaceAnxietyRelief:
      return t.categorySlot11;
    case CategoryId.wisdomOfJesus:
      return t.categorySlot12;
    case CategoryId.humilityCharacter:
      return t.categorySlot13;
    case CategoryId.overcomingTemptation:
      return t.categorySlot14;
    case CategoryId.eveningReflection:
      return t.categorySlot15;

    case 'custom':
      return t.categoryCustom;

    default:
      return id; // fallback
  }
}

/// Icon for category ID (UI consistency).
IconData iconFor(String id) {
  switch (normalizeCategoryId(id)) {
    case CategoryId.dailyGuidance:
      return Icons.light_mode_outlined;         // sunrise / new day
    case CategoryId.faithTrust:
      return Icons.star_outline;                // celestial star / divine
    case CategoryId.prayerReflection:
      return Icons.self_improvement_outlined;   // meditation / prayer posture
    case CategoryId.hopeDifficultTimes:
      return Icons.wb_sunny_outlined;           // sun breaking through
    case CategoryId.forgiveness:
      return Icons.favorite_border;             // heart / grace / mercy
    case CategoryId.loveCompassion:
      return Icons.volunteer_activism_outlined; // heart in hands / service
    case CategoryId.strengthCourage:
      return Icons.shield_outlined;             // shield of faith
    case CategoryId.gratitude:
      return Icons.auto_awesome_outlined;       // sparkles / wonder / awe
    case CategoryId.purposeCalling:
      return Icons.explore_outlined;            // compass / direction / calling
    case CategoryId.familyRelationships:
      return Icons.groups_outlined;             // people together
    case CategoryId.peaceAnxietyRelief:
      return Icons.spa_outlined;                // lotus / stillness
    case CategoryId.wisdomOfJesus:
      return Icons.menu_book_outlined;          // scripture / Bible
    case CategoryId.humilityCharacter:
      return Icons.accessibility_new_outlined;  // open arms / welcoming
    case CategoryId.overcomingTemptation:
      return Icons.trending_up_outlined;        // rising above / victory
    case CategoryId.eveningReflection:
      return Icons.nightlight_outlined;         // moon / rest / evening

    default:
      return Icons.category_outlined;
  }
}

/// Builds the localized items for the grid.
/// [onSelect] receives the item: read item.id, item.title etc.
List<CategoryActionItem> buildActionItems(
  BuildContext context,
  void Function(CategoryActionItem item) onSelect,
) {
  // Free categories first, then all Premium-only locked categories at the bottom.
  const ids = <String>[
    // ── Free ────────────────────────────────────────────────────────────────
    CategoryId.dailyGuidance,
    CategoryId.faithTrust,
    CategoryId.prayerReflection,
    CategoryId.hopeDifficultTimes,
    CategoryId.forgiveness,
    CategoryId.loveCompassion,
    CategoryId.strengthCourage,
    CategoryId.gratitude,
    CategoryId.familyRelationships,
    CategoryId.eveningReflection,
    // ── Premium only (locked) ────────────────────────────────────────────────
    CategoryId.purposeCalling,
    CategoryId.peaceAnxietyRelief,
    CategoryId.wisdomOfJesus,
    CategoryId.humilityCharacter,
    CategoryId.overcomingTemptation,
  ];

  return ids
      .map((id) {
        final title = localizedTitleFor(context, id);
        final icon = iconFor(id);
        final premium = isPremiumOnlyCategory(id);

        final item = CategoryActionItem(
          id: id,
          title: title,
          icon: icon,
          isPremium: premium,
          onTap: () {}, // filled via onSelect below
        );

        return CategoryActionItem(
          id: item.id,
          title: item.title,
          icon: item.icon,
          isPremium: item.isPremium,
          onTap: () => onSelect(item),
        );
      })
      .toList(growable: false);
}
