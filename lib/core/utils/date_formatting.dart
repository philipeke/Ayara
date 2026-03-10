// lib/core/utils/date_formatting.dart
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

/// Central datumformatterare för Nuria.
/// Använder device/app-locale för "rätt" format per språk.
class DateFmt {
  static String format(DateTime date, BuildContext context) {
    // Ex: "sv-SE", "en-US", "bs-BA"
    final localeTag = Localizations.localeOf(context).toLanguageTag();
    final localDate = date.toLocal();

    try {
      // Samma formatter för alla just nu, men den är locale-aware
      final fmt = DateFormat.yMMMd(localeTag);
      return fmt.format(localDate);
    } catch (_) {
      // Fallback om något knasar med locale
      return DateFormat('yyyy-MM-dd').format(localDate);
    }
  }
}

