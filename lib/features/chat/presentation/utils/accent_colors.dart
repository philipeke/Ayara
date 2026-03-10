// lib/features/chat/presentation/utils/accent_colors.dart
import 'package:flutter/material.dart';

/// Accent color for each Nuria category.
/// Called with either the stable category ID (preferred) or an English title.
Color accentColorFor(String category) {
  final n = category.trim().toLowerCase();

  switch (n) {
    case 'daily_guidance':
    case 'daily guidance':
      return const Color(0xFFC49A3C); // Islamic gold — new day, Fajr

    case 'faith_trust':
    case 'faith & trust':
    case 'faith and trust':
      return const Color(0xFF4A9E6B); // emerald green — Iman / trust in Allah

    case 'prayer_reflection':
    case 'prayer & reflection':
    case 'prayer and reflection':
      return const Color(0xFFD4B05A); // gold-light — Salah / dhikr

    case 'hope_difficult_times':
    case 'hope in difficult times':
      return const Color(0xFFE8C87A); // warm amber — hope and patience (Sabr)

    case 'forgiveness':
      return const Color(0xFF6DAF8A); // soft green — Tawbah / mercy of Allah

    case 'love_compassion':
    case 'love & compassion':
    case 'love and compassion':
      return const Color(0xFFCBA74A); // golden — Rahma / divine love

    case 'strength_courage':
    case 'strength & courage':
    case 'strength and courage':
      return const Color(0xFF3D8C6A); // deep green — Tawakkul / resolve

    case 'gratitude':
      return const Color(0xFFB8973A); // deep gold — Shukr / thankfulness

    case 'purpose_calling':
    case 'purpose & calling':
    case 'purpose and calling':
      return const Color(0xFF58A87E); // mid green — purpose in deen

    case 'family_relationships':
    case 'family & relationships':
    case 'family and relationships':
      return const Color(0xFFD4A843); // amber gold — family / silat ar-rahim

    case 'peace_anxiety_relief':
    case 'peace & anxiety relief':
    case 'peace and anxiety relief':
      return const Color(0xFF5B9E80); // teal green — tranquility / as-Salam

    case 'wisdom_of_jesus':
    case 'wisdom of jesus':
      return const Color(0xFFC49A3C); // gold — wisdom of the Prophets

    case 'humility_character':
    case 'humility & character':
    case 'humility and character':
      return const Color(0xFF4D9470); // sage green — tawadu / humility

    case 'overcoming_temptation':
    case 'overcoming temptation':
      return const Color(0xFF2E7D5A); // deep emerald — overcoming nafs

    case 'evening_reflection':
    case 'evening reflection':
      return const Color(0xFFAA8830); // deep gold — Maghrib / evening dhikr

    default:
      // Consistent hash-based fallback — same color per unknown category.
      final hash = category.codeUnits.fold<int>(0, (a, b) => a + b);
      final hue = (hash % 360).toDouble();
      return HSLColor.fromAHSL(1.0, hue, 0.40, 0.68).toColor();
  }
}

