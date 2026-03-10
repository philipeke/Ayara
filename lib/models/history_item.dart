import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore:
/// user_history/{uid}/posts/{postId}
class HistoryItem {
  final String id;

  /// Nuria category ID (normalized).
  /// Ex: 'daily_guidance', 'faith_trust', ... 'evening_reflection', 'custom'
  final String categoryId;

  final String responseText;
  final String promptText;

  /// When it was saved (serverTimestamp ideally)
  final DateTime? createdAt;

  const HistoryItem({
    required this.id,
    required this.categoryId,
    required this.responseText,
    required this.promptText,
    this.createdAt,
  });

  static DateTime? _asDate(dynamic v) {
    if (v == null) return null;
    if (v is Timestamp) return v.toDate();
    if (v is DateTime) return v;
    return null;
  }

  static String _normalizeCategoryId(String raw) {
    final x = raw.trim().toLowerCase();
    if (x.isEmpty) return 'daily_guidance';

    // Already Nuria ids (keep as-is)
    const nuriaIds = <String>{
      'daily_guidance',
      'faith_trust',
      'prayer_reflection',
      'hope_difficult_times',
      'forgiveness',
      'love_compassion',
      'strength_courage',
      'gratitude',
      'purpose_calling',
      'family_relationships',
      'peace_anxiety_relief',
      'wisdom_of_jesus',
      'humility_character',
      'overcoming_temptation',
      'evening_reflection',
      'custom',
    };
    if (nuriaIds.contains(x)) return x;

    // Legacy TipsyPal ids → safe fallback bucket
    const legacyTipsyIds = <String>{
      'humor',
      'sad',
      'philosophical',
      'philosophy',
      'smart',
      'romantic',
      'random',
      'inspiring',
      'pep',
      'upset',
      'furious',
      'genius',
      'hilarious',
    };
    if (legacyTipsyIds.contains(x)) return 'daily_guidance';

    // Any other/unknown id: keep, but trimmed + lowercased
    return x;
  }

  factory HistoryItem.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() ?? <String, dynamic>{};

    final rawCategory = (data['categoryId'] ?? '').toString();

    return HistoryItem(
      id: doc.id,
      categoryId: _normalizeCategoryId(rawCategory),
      responseText: (data['responseText'] ?? '').toString(),
      promptText: (data['promptText'] ?? '').toString(),
      createdAt: _asDate(data['createdAt']),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': categoryId,
      'responseText': responseText,
      'promptText': promptText,
      'createdAt': createdAt, // when writing: prefer FieldValue.serverTimestamp()
    };
  }

  HistoryItem copyWith({
    String? categoryId,
    String? responseText,
    String? promptText,
    DateTime? createdAt,
  }) {
    return HistoryItem(
      id: id,
      categoryId: categoryId ?? this.categoryId,
      responseText: responseText ?? this.responseText,
      promptText: promptText ?? this.promptText,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
