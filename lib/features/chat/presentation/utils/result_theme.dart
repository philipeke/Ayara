import 'package:flutter/material.dart';

/// AccentfÃ¤rger per kategori (hÃ¥ll dessa i synk med result_screen)
const Map<String, Color> _accents = {
  'Humor': Color(0xFF4FC3F7), // ljusblÃ¥
  'Ledsen': Color(0xFF90A4AE), // blÃ¥grÃ¥
  'Filosofisk': Color(0xFFBA68C8), // lila
  'Smart': Color(0xFFFFCA28), // bÃ¤rnsten
  'Romantisk': Color(0xFFE57373), // varm rÃ¶d/rosa
  'Random': Color(0xFF64B5F6), // blÃ¥
  'Inspirerande': Color(0xFF26C6DA), // cyan
  'Polerat': Color(0xFF81C784), // grÃ¶n
  'Pepp': Color(0xFF9575CD), // lila
};

/// HÃ¤mta accentfÃ¤rg fÃ¶r valfri kategori
Color categoryAccent(String label, {Color fallback = const Color(0xFF7C9EFF)}) {
  return _accents[label] ?? fallback;
}

/// (valfritt) textfÃ¤rger fÃ¶r bubblor eller highlights
Color onAccent(Color accent) {
  // enkel kontrastheuristik
  final l = accent.computeLuminance();
  return l > 0.5 ? Colors.black : Colors.white;
}
