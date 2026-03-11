// lib/features/duas/dua_model.dart

enum DuaCategory {
  daily,
  weekly,
  occasions,
  ziyarat,
  tasbih,
}


class DuaSection {
  /// Optional heading within the dua (e.g., "Opening", "Part II").
  final String? sectionTitle;
  final String arabic;
  final String transliteration;
  final String translation;

  const DuaSection({
    this.sectionTitle,
    required this.arabic,
    required this.transliteration,
    required this.translation,
  });
}

class DuaEntry {
  final String id;
  final String nameEn;
  final String nameAr;
  final DuaCategory category;

  /// When to recite — e.g., "Thursday nights", "Every morning after Fajr".
  final String recommendedTime;

  /// Which Imam / figure taught this dua.
  final String taughtBy;

  /// One-line description shown in the list.
  final String shortDesc;

  /// Full sectioned content.
  final List<DuaSection> sections;

  /// True if only Wilaya users see the AI-explain button (all can read the text).
  final bool hasAiExplain;

  /// True for the Tasbih of Sayyida Fatima (SA) — renders an interactive counter.
  final bool isTasbih;

  const DuaEntry({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.category,
    required this.recommendedTime,
    required this.taughtBy,
    required this.shortDesc,
    required this.sections,
    this.hasAiExplain = true,
    this.isTasbih = false,
  });
}
