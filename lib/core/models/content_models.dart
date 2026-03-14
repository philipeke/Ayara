// lib/core/models/content_models.dart
//
// Public model classes for Firebase-backed content.
// Each class mirrors the structure stored in Firestore and the local
// fallback bundles in the respective feature screens.

import 'package:flutter/material.dart';
import 'package:ayara/core/config/theme.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Hadith
// ─────────────────────────────────────────────────────────────────────────────

class HadithModel {
  final String id;
  final int order;
  final String arabic;
  final String english;
  final String source;
  final String imam;
  final String imamAr;

  const HadithModel({
    required this.id,
    required this.order,
    required this.arabic,
    required this.english,
    required this.source,
    required this.imam,
    required this.imamAr,
  });

  factory HadithModel.fromFirestore(String id, Map<String, dynamic> data,
      {String locale = 'en'}) {
    final translations = data['translations'] as Map<String, dynamic>? ?? {};

    String resolveText(String lang) {
      final t = translations[lang];
      if (t is String) return t;
      if (t is Map) return (t as Map<String, dynamic>)['text'] as String? ?? '';
      return '';
    }

    final text = resolveText(locale).isNotEmpty
        ? resolveText(locale)
        : resolveText('en');

    return HadithModel(
      id: id,
      order: (data['order'] as num?)?.toInt() ?? 0,
      arabic: data['arabic'] as String? ?? '',
      english: text,
      source: data['source'] as String? ?? '',
      imam: data['imam'] as String? ?? '',
      imamAr: data['imamAr'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'order': order,
        'arabic': arabic,
        'english': english,
        'source': source,
        'imam': imam,
        'imamAr': imamAr,
      };

  factory HadithModel.fromJson(Map<String, dynamic> json) => HadithModel(
        id: json['id'] as String,
        order: (json['order'] as num?)?.toInt() ?? 0,
        arabic: json['arabic'] as String? ?? '',
        english: json['english'] as String? ?? '',
        source: json['source'] as String? ?? '',
        imam: json['imam'] as String? ?? '',
        imamAr: json['imamAr'] as String? ?? '',
      );
}

// ─────────────────────────────────────────────────────────────────────────────
// Imam
// ─────────────────────────────────────────────────────────────────────────────

class ImamModel {
  final String id;
  final int order;
  final String nameEn;
  final String nameAr;
  final String title;
  final String role;
  final String bornHijri;
  final String diedHijri;
  final String birthplace;
  final String burialPlace;
  final String biography;
  final String famousQuote;
  final String famousQuoteAr;
  final String famousQuoteSource;
  final String accentKey;

  const ImamModel({
    required this.id,
    required this.order,
    required this.nameEn,
    required this.nameAr,
    required this.title,
    required this.role,
    required this.bornHijri,
    required this.diedHijri,
    required this.birthplace,
    required this.burialPlace,
    required this.biography,
    required this.famousQuote,
    required this.famousQuoteAr,
    required this.famousQuoteSource,
    required this.accentKey,
  });

  Color get accent {
    switch (accentKey) {
      case 'crimsonBright':
        return AppColors.crimsonBright;
      case 'crimsonLight':
        return AppColors.crimsonLight;
      case 'emeraldBright':
        return AppColors.emeraldBright;
      case 'gold':
      default:
        return AppColors.gold;
    }
  }

  factory ImamModel.fromFirestore(String id, Map<String, dynamic> data,
      {String locale = 'en'}) {
    final translations = data['translations'] as Map<String, dynamic>? ?? {};
    final locTrans = translations[locale] as Map<String, dynamic>? ?? {};
    final enTrans = translations['en'] as Map<String, dynamic>? ?? {};

    String t(String field) =>
        locTrans[field] as String? ??
        enTrans[field] as String? ??
        data[field] as String? ?? '';

    return ImamModel(
      id: id,
      order: (data['order'] as num?)?.toInt() ?? 0,
      nameEn: data['nameEn'] as String? ?? '',
      nameAr: data['nameAr'] as String? ?? '',
      title: data['title'] as String? ?? '',
      role: data['role'] as String? ?? '',
      bornHijri: data['bornHijri'] as String? ?? '',
      diedHijri: data['diedHijri'] as String? ?? '',
      birthplace: data['birthplace'] as String? ?? '',
      burialPlace: data['burialPlace'] as String? ?? '',
      biography: t('biography'),
      famousQuote: t('famousQuote'),
      famousQuoteAr: data['famousQuoteAr'] as String? ?? '',
      famousQuoteSource: data['famousQuoteSource'] as String? ?? '',
      accentKey: data['accentKey'] as String? ?? 'gold',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'order': order,
        'nameEn': nameEn,
        'nameAr': nameAr,
        'title': title,
        'role': role,
        'bornHijri': bornHijri,
        'diedHijri': diedHijri,
        'birthplace': birthplace,
        'burialPlace': burialPlace,
        'biography': biography,
        'famousQuote': famousQuote,
        'famousQuoteAr': famousQuoteAr,
        'famousQuoteSource': famousQuoteSource,
        'accentKey': accentKey,
      };

  factory ImamModel.fromJson(Map<String, dynamic> json) => ImamModel(
        id: json['id'] as String,
        order: (json['order'] as num?)?.toInt() ?? 0,
        nameEn: json['nameEn'] as String? ?? '',
        nameAr: json['nameAr'] as String? ?? '',
        title: json['title'] as String? ?? '',
        role: json['role'] as String? ?? '',
        bornHijri: json['bornHijri'] as String? ?? '',
        diedHijri: json['diedHijri'] as String? ?? '',
        birthplace: json['birthplace'] as String? ?? '',
        burialPlace: json['burialPlace'] as String? ?? '',
        biography: json['biography'] as String? ?? '',
        famousQuote: json['famousQuote'] as String? ?? '',
        famousQuoteAr: json['famousQuoteAr'] as String? ?? '',
        famousQuoteSource: json['famousQuoteSource'] as String? ?? '',
        accentKey: json['accentKey'] as String? ?? 'gold',
      );
}

// ─────────────────────────────────────────────────────────────────────────────
// Dua (mirrors DuaEntry / DuaSection from dua_model.dart)
// ─────────────────────────────────────────────────────────────────────────────

class DuaSectionModel {
  final String? sectionTitle;
  final String arabic;
  final String transliteration;
  final String translation;

  const DuaSectionModel({
    this.sectionTitle,
    required this.arabic,
    required this.transliteration,
    required this.translation,
  });

  factory DuaSectionModel.fromMap(Map<String, dynamic> map) => DuaSectionModel(
        sectionTitle: map['sectionTitle'] as String?,
        arabic: map['arabic'] as String? ?? '',
        transliteration: map['transliteration'] as String? ?? '',
        translation: map['translation'] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        if (sectionTitle != null) 'sectionTitle': sectionTitle,
        'arabic': arabic,
        'transliteration': transliteration,
        'translation': translation,
      };
}

class DuaModel {
  final String id;
  final int order;
  final String nameEn;
  final String nameAr;
  final String category;
  final String recommendedTime;
  final String taughtBy;
  final String shortDesc;
  final bool hasAiExplain;
  final bool isTasbih;
  final List<DuaSectionModel> sections;

  const DuaModel({
    required this.id,
    required this.order,
    required this.nameEn,
    required this.nameAr,
    required this.category,
    required this.recommendedTime,
    required this.taughtBy,
    required this.shortDesc,
    required this.hasAiExplain,
    required this.isTasbih,
    required this.sections,
  });

  factory DuaModel.fromFirestore(String id, Map<String, dynamic> data) {
    final rawSections = data['sections'] as List<dynamic>? ?? [];
    return DuaModel(
      id: id,
      order: (data['order'] as num?)?.toInt() ?? 0,
      nameEn: data['nameEn'] as String? ?? '',
      nameAr: data['nameAr'] as String? ?? '',
      category: data['category'] as String? ?? 'daily',
      recommendedTime: data['recommendedTime'] as String? ?? '',
      taughtBy: data['taughtBy'] as String? ?? '',
      shortDesc: data['shortDesc'] as String? ?? '',
      hasAiExplain: data['hasAiExplain'] as bool? ?? true,
      isTasbih: data['isTasbih'] as bool? ?? false,
      sections: rawSections
          .map((s) => DuaSectionModel.fromMap(Map<String, dynamic>.from(s as Map)))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'order': order,
        'nameEn': nameEn,
        'nameAr': nameAr,
        'category': category,
        'recommendedTime': recommendedTime,
        'taughtBy': taughtBy,
        'shortDesc': shortDesc,
        'hasAiExplain': hasAiExplain,
        'isTasbih': isTasbih,
        'sections': sections.map((s) => s.toJson()).toList(),
      };

  factory DuaModel.fromJson(Map<String, dynamic> json) {
    final rawSections = json['sections'] as List<dynamic>? ?? [];
    return DuaModel(
      id: json['id'] as String,
      order: (json['order'] as num?)?.toInt() ?? 0,
      nameEn: json['nameEn'] as String? ?? '',
      nameAr: json['nameAr'] as String? ?? '',
      category: json['category'] as String? ?? 'daily',
      recommendedTime: json['recommendedTime'] as String? ?? '',
      taughtBy: json['taughtBy'] as String? ?? '',
      shortDesc: json['shortDesc'] as String? ?? '',
      hasAiExplain: json['hasAiExplain'] as bool? ?? true,
      isTasbih: json['isTasbih'] as bool? ?? false,
      sections: rawSections
          .map((s) => DuaSectionModel.fromMap(Map<String, dynamic>.from(s as Map)))
          .toList(),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Daily Grace content
// ─────────────────────────────────────────────────────────────────────────────

class DailyScriptureModel {
  final String id;
  final int order;
  final String text;
  final String ref;

  const DailyScriptureModel({
    required this.id,
    required this.order,
    required this.text,
    required this.ref,
  });

  factory DailyScriptureModel.fromFirestore(String id, Map<String, dynamic> data,
      {String locale = 'en'}) {
    final trans = data['translations'] as Map<String, dynamic>? ?? {};
    final loc = trans[locale] as Map<String, dynamic>? ?? {};
    final en = trans['en'] as Map<String, dynamic>? ?? {};

    String t(String field) =>
        loc[field] as String? ?? en[field] as String? ?? data[field] as String? ?? '';

    return DailyScriptureModel(
      id: id,
      order: (data['order'] as num?)?.toInt() ?? 0,
      text: t('text'),
      ref: t('ref'),
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'order': order, 'text': text, 'ref': ref};

  factory DailyScriptureModel.fromJson(Map<String, dynamic> json) =>
      DailyScriptureModel(
        id: json['id'] as String,
        order: (json['order'] as num?)?.toInt() ?? 0,
        text: json['text'] as String? ?? '',
        ref: json['ref'] as String? ?? '',
      );
}

class DailyRoleModelModel {
  final String id;
  final int order;
  final String text;

  const DailyRoleModelModel({
    required this.id,
    required this.order,
    required this.text,
  });

  factory DailyRoleModelModel.fromFirestore(String id, Map<String, dynamic> data,
      {String locale = 'en'}) {
    final trans = data['translations'] as Map<String, dynamic>? ?? {};
    final loc = trans[locale] as Map<String, dynamic>? ?? {};
    final en = trans['en'] as Map<String, dynamic>? ?? {};
    return DailyRoleModelModel(
      id: id,
      order: (data['order'] as num?)?.toInt() ?? 0,
      text: loc['text'] as String? ?? en['text'] as String? ?? data['text'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'order': order, 'text': text};

  factory DailyRoleModelModel.fromJson(Map<String, dynamic> json) =>
      DailyRoleModelModel(
        id: json['id'] as String,
        order: (json['order'] as num?)?.toInt() ?? 0,
        text: json['text'] as String? ?? '',
      );
}

class DailyReflectionModel {
  final String id;
  final int order;
  final String text;

  const DailyReflectionModel({
    required this.id,
    required this.order,
    required this.text,
  });

  factory DailyReflectionModel.fromFirestore(String id, Map<String, dynamic> data,
      {String locale = 'en'}) {
    final trans = data['translations'] as Map<String, dynamic>? ?? {};
    final loc = trans[locale] as Map<String, dynamic>? ?? {};
    final en = trans['en'] as Map<String, dynamic>? ?? {};
    return DailyReflectionModel(
      id: id,
      order: (data['order'] as num?)?.toInt() ?? 0,
      text: loc['text'] as String? ?? en['text'] as String? ?? data['text'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'order': order, 'text': text};

  factory DailyReflectionModel.fromJson(Map<String, dynamic> json) =>
      DailyReflectionModel(
        id: json['id'] as String,
        order: (json['order'] as num?)?.toInt() ?? 0,
        text: json['text'] as String? ?? '',
      );
}

// ─────────────────────────────────────────────────────────────────────────────
// Wisdom quotes
// ─────────────────────────────────────────────────────────────────────────────

class WisdomModel {
  final String id;
  final int order;
  final String quoteAr; // Arabic original — never translated
  final String quote;
  final String source;

  const WisdomModel({
    required this.id,
    required this.order,
    this.quoteAr = '',
    required this.quote,
    required this.source,
  });

  factory WisdomModel.fromFirestore(String id, Map<String, dynamic> data,
      {String locale = 'en'}) {
    final trans = data['translations'] as Map<String, dynamic>? ?? {};
    final loc = trans[locale] as Map<String, dynamic>? ?? {};
    final en = trans['en'] as Map<String, dynamic>? ?? {};

    String t(String field) =>
        loc[field] as String? ?? en[field] as String? ?? data[field] as String? ?? '';

    return WisdomModel(
      id: id,
      order: (data['order'] as num?)?.toInt() ?? 0,
      quoteAr: data['quoteAr'] as String? ?? '',
      quote: t('quote'),
      source: t('source'),
    );
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'order': order, 'quoteAr': quoteAr, 'quote': quote, 'source': source};

  factory WisdomModel.fromJson(Map<String, dynamic> json) => WisdomModel(
        id: json['id'] as String,
        order: (json['order'] as num?)?.toInt() ?? 0,
        quoteAr: json['quoteAr'] as String? ?? '',
        quote: json['quote'] as String? ?? '',
        source: json['source'] as String? ?? '',
      );
}

// ─────────────────────────────────────────────────────────────────────────────
// Pilgrimage steps (Hajj & Umrah)
// ─────────────────────────────────────────────────────────────────────────────

/// A short dua (supplication) associated with a pilgrimage step.
class PilgrimageStepDua {
  final String arabic;
  final String transliteration; // phonetic — same for all languages
  final String translation;

  const PilgrimageStepDua({
    required this.arabic,
    required this.transliteration,
    required this.translation,
  });
}

class PilgrimageStepModel {
  final String id;
  final int order;
  final String type; // 'hajj' | 'umrah'
  final String title;
  final String body;
  final String arabic;

  // ── Rich metadata (from Firestore root, not translated) ──────────────────
  final String location;    // e.g. "Miqat", "Masjid al-Haram, Mecca"
  final String dayLabel;    // e.g. "Day 1 — 8th Dhul Hijjah" (Hajj only)
  final int readTimeMin;    // estimated read time in minutes

  // ── Rich content (from Firestore translations, English fallback) ──────────
  final PilgrimageStepDua? dua;    // step-specific supplication (nullable)
  final List<String> warnings;     // important notes / prohibitions
  final String shiaNote;           // Shia-specific fiqh guidance

  const PilgrimageStepModel({
    required this.id,
    required this.order,
    required this.type,
    required this.title,
    required this.body,
    required this.arabic,
    this.location = '',
    this.dayLabel = '',
    this.readTimeMin = 3,
    this.dua,
    this.warnings = const [],
    this.shiaNote = '',
  });

  factory PilgrimageStepModel.fromFirestore(String id, Map<String, dynamic> data,
      {String locale = 'en'}) {
    final trans = data['translations'] as Map<String, dynamic>? ?? {};
    final loc = trans[locale] as Map<String, dynamic>? ?? {};
    final en = trans['en'] as Map<String, dynamic>? ?? {};

    String t(String field) =>
        loc[field] as String? ?? en[field] as String? ?? data[field] as String? ?? '';

    // Warnings stored as newline-separated text in translations.{lang}.warningsText
    final warningsRaw = t('warningsText');
    final warnings = warningsRaw.isNotEmpty
        ? warningsRaw.split('\n').where((s) => s.trim().isNotEmpty).toList()
        : <String>[];

    // Dua: Arabic & transliteration in root; translation in translations
    final duaArabic = data['duaArabic'] as String? ?? '';
    final duaTranslit = data['duaTransliteration'] as String? ?? '';
    final duaTranslation = t('duaTranslation');
    final dua = duaArabic.isNotEmpty
        ? PilgrimageStepDua(arabic: duaArabic, transliteration: duaTranslit, translation: duaTranslation)
        : null;

    return PilgrimageStepModel(
      id: id,
      order: (data['order'] as num?)?.toInt() ?? 0,
      type: data['type'] as String? ?? 'hajj',
      title: t('title'),
      body: t('body'),
      arabic: data['arabic'] as String? ?? '',
      location: data['location'] as String? ?? '',
      dayLabel: data['dayLabel'] as String? ?? '',
      readTimeMin: (data['readTimeMin'] as num?)?.toInt() ?? 3,
      dua: dua,
      warnings: warnings,
      shiaNote: t('shiaNote'),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'order': order,
        'type': type,
        'title': title,
        'body': body,
        'arabic': arabic,
        'location': location,
        'dayLabel': dayLabel,
        'readTimeMin': readTimeMin,
        if (dua != null) 'dua': {
          'arabic': dua!.arabic,
          'transliteration': dua!.transliteration,
          'translation': dua!.translation,
        },
        'warnings': warnings,
        'shiaNote': shiaNote,
      };

  factory PilgrimageStepModel.fromJson(Map<String, dynamic> json) {
    PilgrimageStepDua? dua;
    final duaMap = json['dua'] as Map<String, dynamic>?;
    if (duaMap != null) {
      dua = PilgrimageStepDua(
        arabic: duaMap['arabic'] as String? ?? '',
        transliteration: duaMap['transliteration'] as String? ?? '',
        translation: duaMap['translation'] as String? ?? '',
      );
    }
    return PilgrimageStepModel(
      id: json['id'] as String,
      order: (json['order'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? 'hajj',
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      arabic: json['arabic'] as String? ?? '',
      location: json['location'] as String? ?? '',
      dayLabel: json['dayLabel'] as String? ?? '',
      readTimeMin: (json['readTimeMin'] as num?)?.toInt() ?? 3,
      dua: dua,
      warnings: (json['warnings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      shiaNote: json['shiaNote'] as String? ?? '',
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// AI prompt slots (one per chat category)
// ─────────────────────────────────────────────────────────────────────────────

class PromptSlotModel {
  final String id;
  final int order;
  final String categoryId;
  final String text;

  const PromptSlotModel({
    required this.id,
    required this.order,
    required this.categoryId,
    required this.text,
  });

  factory PromptSlotModel.fromFirestore(String id, Map<String, dynamic> data) =>
      PromptSlotModel(
        id: id,
        order: (data['order'] as num?)?.toInt() ?? 0,
        categoryId: data['categoryId'] as String? ?? '',
        text: data['text'] as String? ?? '',
      );

  Map<String, dynamic> toJson() =>
      {'id': id, 'order': order, 'categoryId': categoryId, 'text': text};

  factory PromptSlotModel.fromJson(Map<String, dynamic> json) => PromptSlotModel(
        id: json['id'] as String,
        order: (json['order'] as num?)?.toInt() ?? 0,
        categoryId: json['categoryId'] as String? ?? '',
        text: json['text'] as String? ?? '',
      );
}
