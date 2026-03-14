// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get languageSelectSub => 'ಇದನ್ನು ನಂತರ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಬದಲಾಯಿಸಬಹುದು';

  @override
  String get actionContinue => 'ಮುಂದುವರಿಸಿ';

  @override
  String get languageSuggestedHeader => 'ಸೂಚಿಸಲಾಗಿದೆ';

  @override
  String get languageAllHeader => 'ಎಲ್ಲಾ ಭಾಷೆಗಳು';

  @override
  String get languageSuggestedBadge => 'ಸೂಚಿಸಲಾಗಿದೆ';

  @override
  String get languageSearchHint => 'ಹುಡುಕಿ…';

  @override
  String get planBasic => 'ಸಾಮಾನ್ಯ';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'ದೈನಂದಿನ ಮಾರ್ಗದರ್ಶನ';

  @override
  String get categorySlot02 => 'ಇಮಾನ್ ಮತ್ತು ನಂಬಿಕೆ';

  @override
  String get categorySlot03 => 'ನಮಾಝ್ ಚಿಂತನೆ';

  @override
  String get categorySlot04 => 'ಸಹನೆ ಮತ್ತು ಭರವಸೆ';

  @override
  String get categorySlot05 => 'ಕ್ಷಮೆಯನ್ನು ಬೇಡಿ';

  @override
  String get categorySlot06 => 'ಕರುಣೆ ಮತ್ತು ದಯೆ';

  @override
  String get categorySlot07 => 'ನಂಬಿಕೆಯ ಶಕ್ತಿ';

  @override
  String get categorySlot08 => 'ಕೃತಜ್ಞ ಹೃದಯ';

  @override
  String get categorySlot09 => 'ಜೀವನದ ಉದ್ದೇಶ';

  @override
  String get categorySlot10 => 'ಕುಟುಂಬ ಬಾಂಧವ್ಯ';

  @override
  String get categorySlot11 => 'ಆಂತರಿಕ ಶಾಂತಿ';

  @override
  String get categorySlot12 => 'ಪ್ರವಾದಿಯ ಜ್ಞಾನ';

  @override
  String get categorySlot13 => 'ಉತ್ತಮ ಸ್ವಭಾವ';

  @override
  String get categorySlot14 => 'ಪ್ರಲೋಭನೆಗೆ ವಿರೋಧಿಸಿ';

  @override
  String get categorySlot15 => 'ಸಂಜೆಯ ಧಿಕ್ರ್';

  @override
  String get categoryCustom => 'ವೈಯಕ್ತಿಕ ಚಿಂತನೆ';

  @override
  String get dhikrMeaningSubhanallah => 'ಅಲ್ಲಾಹನಿಗೆ ಮಹಿಮೆ ಇರಲಿ';

  @override
  String get dhikrMeaningAlhamdulillah => 'ಎಲ್ಲಾ ಸ್ತುತಿಯೂ ಅಲ್ಲಾಹನಿಗೇ ಸೇರಿದೆ';

  @override
  String get dhikrMeaningAllahuAkbar => 'ಅಲ್ಲಾಹ ಅತ್ಯಂತ ಮಹಾನ್';

  @override
  String get quranVerseHeartAtRest =>
      'ನಿಶ್ಚಯವಾಗಿ, ಅಲ್ಲಾಹನ ಸ್ಮರಣೆಯಲ್ಲಿ ಹೃದಯಗಳಿಗೆ ಶಾಂತಿ ಸಿಗುತ್ತದೆ.';

  @override
  String get promptHint =>
      'ಇಸ್ಲಾಮಿಕ್ ಮಾರ್ಗದರ್ಶನ ಮತ್ತು ಚಿಂತನೆಗಾಗಿ ಒಂದು ವರ್ಗವನ್ನು ತಟ್ಟಿರಿ';

  @override
  String get currentLanguage => 'ಪ್ರಸ್ತುತ ಭಾಷೆ';

  @override
  String get settingsLanguage => 'ಭಾಷಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get settingsTitle => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get chooseLanguage => 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get continueCta => 'ಮುಂದುವರಿಸಿ';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಪದಗಳು',
      one: '$count ಪದ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ಆಯ್ಕೆಗಳು';

  @override
  String get newCta => 'ಹೊಸದು';

  @override
  String get actionsTitle => 'ನೀವು ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get copy => 'ನಕಲಿಸಿ';

  @override
  String get share => 'ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get close => 'ಮುಚ್ಚಿ';

  @override
  String get copiedToast => 'ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ಗೆ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'ಹೊಸ ಉತ್ತರವನ್ನು ರಚಿಸಲಾಗಲಿಲ್ಲ';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nಮತ್ತೊಮ್ಮೆ ಪ್ರಯತ್ನಿಸಲು ಬಯಸುವಿರಾ?';
  }

  @override
  String get cancelCta => 'ರದ್ದುಮಾಡಿ';

  @override
  String get retryCta => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get authTitle => 'ನಿಮ್ಮ ಖಾತೆಯನ್ನು ರಚಿಸಿ';

  @override
  String get continueAsGuest => 'ಅತಿಥಿಯಾಗಿ ಮುಂದುವರಿಸಿ';

  @override
  String get signInGoogle => 'Google ಮೂಲಕ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get signInApple => 'Apple ಮೂಲಕ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get signInEmail => 'ಇಮೇಲ್ ಮೂಲಕ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get upgradeWithApple => 'Apple ಜೊತೆಗೆ ಮುಂದುವರಿಸಿ';

  @override
  String get mustAccept =>
      'ನೀವು ನಿಯಮಗಳನ್ನು ಅಂಗೀಕರಿಸಬೇಕು ಮತ್ತು ಗೌಪ್ಯತಾ ನೀತಿಯನ್ನು ಒಪ್ಪಿಕೊಳ್ಳಬೇಕು.';

  @override
  String get termsLabel => 'ನಾನು ಸೇವಾ ನಿಯಮಗಳನ್ನು ಅಂಗೀಕರಿಸುತ್ತೇನೆ';

  @override
  String get privacyLabel => 'ನಾನು ಗೌಪ್ಯತಾ ನೀತಿಯನ್ನು ಓದಿದ್ದೇನೆ';

  @override
  String get marketingOptIn =>
      'ನಾನು ಸುದ್ದಿ ಮತ್ತು ಆಫರ್‌ಗಳನ್ನು ಸ್ವೀಕರಿಸಲು ಒಪ್ಪುತ್ತೇನೆ';

  @override
  String get openTerms => 'ಸೇವಾ ನಿಯಮಗಳು';

  @override
  String get openPrivacy => 'ಗೌಪ್ಯತಾ ನೀತಿ';

  @override
  String get accountSection => 'ಖಾತೆ';

  @override
  String get guestMode => 'ಅತಿಥಿ ಮೋಡ್';

  @override
  String get signedIn => 'ಸೈನ್ ಇನ್ ಆಗಿದೆ';

  @override
  String get upgradeHint =>
      'ಖಾತೆ ರಚಿಸುವ ಮೂಲಕ ನಿಮ್ಮ ಚಿಂತನೆಗಳನ್ನು ಹಲವು ಸಾಧನಗಳಲ್ಲಿ ಉಳಿಸಿರಿ.';

  @override
  String get upgradeWithGoogle => 'Google ಜೊತೆಗೆ ಮುಂದುವರಿಸಿ';

  @override
  String get signOut => 'ಸೈನ್ ಔಟ್';

  @override
  String get snackUpgraded => 'ಖಾತೆಯನ್ನು Google ಮೂಲಕ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಲಾಗಿದೆ ✅';

  @override
  String get snackSignedIn => 'Google ಮೂಲಕ ಸೈನ್ ಇನ್ ಮಾಡಲಾಗಿದೆ ✅';

  @override
  String get snackSignedOut => 'ಸೈನ್ ಔಟ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get snackSignedInApple => 'Apple ಮೂಲಕ ಸೈನ್ ಇನ್ ಮಾಡಲಾಗಿದೆ ✅';

  @override
  String get snackSignedInGoogle => 'Google ಮೂಲಕ ಸೈನ್ ಇನ್ ಮಾಡಲಾಗಿದೆ ✅';

  @override
  String get snackUpgradedApple =>
      'ಖಾತೆಯನ್ನು Apple ಮೂಲಕ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಲಾಗಿದೆ ✅';

  @override
  String get snackUpgradedGoogle =>
      'ಖಾತೆಯನ್ನು Google ಮೂಲಕ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಲಾಗಿದೆ ✅';

  @override
  String get historyTitle => 'ಹಿಂದಿನ ಚಿಂತನೆಗಳು';

  @override
  String get historyOpenCta => 'ಹಿಂದಿನ ಚಿಂತನೆಗಳು';

  @override
  String get historyEmpty => 'ಇನ್ನೂ ಉಳಿಸಿದ ಚಿಂತನೆಗಳಿಲ್ಲ.';

  @override
  String get historyDeleteTitle => 'ಚಿಂತನೆಯನ್ನು ಅಳಿಸಬೇಕೆ?';

  @override
  String get historyDeleteBody =>
      'ಇದು ಆಯ್ಕೆ ಮಾಡಿದ ಅಂಶವನ್ನು ಶಾಶ್ವತವಾಗಿ ತೆಗೆದುಹಾಕುತ್ತದೆ.';

  @override
  String get deleteCta => 'ಅಳಿಸಿ';

  @override
  String get historyButton => 'ಹಿಂದಿನ ಚಿಂತನೆಗಳು';

  @override
  String get historyEmptyTitle => 'ಇನ್ನೂ ಚಿಂತನೆಗಳಿಲ್ಲ';

  @override
  String get historyEmptyBody =>
      'ಮೊದಲು ಏನಾದರೂ ರಚಿಸಿ — ನಿಮ್ಮ ಉಳಿಸಿದ ಅಂಶಗಳು ಇಲ್ಲಿ ಕಾಣಿಸಿಕೊಳ್ಳುತ್ತವೆ.';

  @override
  String get historyDelete => 'ಅಳಿಸಿ';

  @override
  String get footerTitle => 'Wilaya, ಇಮಾನ್ ಮತ್ತು ಸಬ್ರ್ ಜೊತೆ';

  @override
  String get footerSubtitle => 'ಒಂದು ಪ್ರಾರ್ಥನೆ ಒಂದೇ ಸಮಯದಲ್ಲಿ';

  @override
  String get genericErrorSnack =>
      'ಏನೋ ತಪ್ಪಾಗಿದೆ — ದಯವಿಟ್ಟು ಕ್ಷಣಕಾಲದಲ್ಲಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get upgradeAccountCta =>
      'ನಿಮ್ಮ ಚಿಂತನೆಗಳನ್ನು ಹಲವು ಸಾಧನಗಳಲ್ಲಿ ಉಳಿಸಿರಿ – ಒಂದು ಖಾತೆ ರಚಿಸಿ';

  @override
  String get deleteAccount => 'ಖಾತೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get exportData => 'ನನ್ನ ದತ್ತಾಂಶವನ್ನು ರಫ್ತು ಮಾಡಿ';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ಸ್ವಲ್ಪ ನಿಧಾನ 🐯\nಮುಂದಿನದಕ್ಕೆ ಮುಂಚೆ Ayaraಗೆ ಸ್ವಲ್ಪ ಸಮಯ ಬೇಕು…';

  @override
  String get rateDailyLimit =>
      'ಈಗಕ್ಕೆ ನಿಮ್ಮ ಚಿಂತನೆಗಳು ಮುಗಿದಿವೆ.\nಇನ್ನಷ್ಟು ಚಿಂತನೆಗಳನ್ನು ಪಡೆಯಿರಿ ಅಥವಾ Wilayaಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get rateCreditsExhausted =>
      'ನೀವು ನಿಮ್ಮ ಎಲ್ಲಾ ಚಿಂತನೆಗಳನ್ನು ಬಳಸಿದ್ದೀರಿ.\nಮುಂದುವರಿಸಲು ಟಾಪ್ ಅಪ್ ಮಾಡಿ ಅಥವಾ Wilayaಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get rateGraceCreditsExhausted =>
      'ಈಗಕ್ಕೆ ನಿಮ್ಮ ಚಿಂತನೆಗಳು ಮುಗಿದಿವೆ.\nಇನ್ನಷ್ಟು ಚಿಂತನೆಗಳನ್ನು ಪಡೆಯಿರಿ ಅಥವಾ Wilayaಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get premiumDescription =>
      'Wilaya ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯಗಳು, ಭವಿಷ್ಯದ ವರ್ಗಗಳು ಮತ್ತು ವಿಶೇಷ ಬ್ಯಾಡ್ಜ್ ಅನ್ನು ಅನ್ಲಾಕ್ ಮಾಡುತ್ತದೆ.';

  @override
  String ratePlanExhausted(String plan) {
    return 'ನಿಮ್ಮ ಚಿಂತನೆಗಳು ಈಗ ಖಾಲಿಯಾಗಿವೆ. ಯೋಜನೆ: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ನಿಮ್ಮ ಚಿಂತನೆಗಳನ್ನು ಪರಿಶೀಲಿಸಲಾಗಲಿಲ್ಲ: $message';
  }

  @override
  String get rateCheckGenericError =>
      'ನಿಮ್ಮ ಚಿಂತನೆಗಳನ್ನು ಪರಿಶೀಲಿಸುವಾಗ ಏನೋ ತಪ್ಪಾಗಿದೆ.';

  @override
  String get aiFallbackGeneric =>
      'ಏನೋ ತಪ್ಪಾಗಿದೆ — ದಯವಿಟ್ಟು ಕ್ಷಣಕಾಲದಲ್ಲಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get limitSectionTitle => 'ಚಿಂತನೆಗಳು';

  @override
  String get limitTodayLabel => 'ಬಳಕೆ';

  @override
  String limitCreditsLabel(Object credits) {
    return 'ಉಳಿದ ಚಿಂತನೆಗಳು: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'ಯೋಜನೆ: $plan';
  }

  @override
  String get limitLoadingLabel => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get limitLoadingLabelDescription =>
      'ಬಳಕೆ ಅಂಕಿಅಂಶಗಳನ್ನು ಪಡೆಯುವ ವೇಳೆ ಚಿಂತನೆಗಳ ಕಾರ್ಡ್‌ನಲ್ಲಿ ತೋರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get aiLimitTitle => 'ಚಿಂತನೆಗಳು';

  @override
  String get aiLimitSubtitle =>
      'ಪ್ರತಿ ಪ್ರತಿಕ್ರಿಯೆ 1 ಚಿಂತನೆಯನ್ನು ಬಳಸುತ್ತದೆ. ಸಾಮಾನ್ಯ ಯೋಜನೆ ಆರಂಭಿಕ ಚಿಂತನೆಗಳನ್ನು ಒಳಗೊಂಡಿದೆ. Wilaya ಪ್ರೀಮಿಯಂ ವರ್ಗಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡುತ್ತದೆ ಮತ್ತು ಟಾಪ್-ಅಪ್‌ಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸುತ್ತದೆ.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ಚಿಂತನೆಗಳು ಬಳಸಲಾಗಿದೆ';
  }

  @override
  String get creditsSectionTitle => 'ಚಿಂತನೆಗಳು';

  @override
  String get creditsUsageLabel => 'ಬಳಕೆ';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'ಉಳಿದ ಚಿಂತನೆಗಳು: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'ಯೋಜನೆ: $plan';
  }

  @override
  String get creditsLoadingLabel => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get creditsLoadingLabelDescription =>
      'ಚಿಂತನೆಗಳ ಅಂಕಿಅಂಶಗಳನ್ನು ಪಡೆಯುವಾಗ ತೋರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get creditsTitle => 'ಚಿಂತನೆಗಳು';

  @override
  String get creditsSubtitle =>
      'ಪ್ರತಿ ಪ್ರತಿಕ್ರಿಯೆ 1 ಚಿಂತನೆಯನ್ನು ಬಳಸುತ್ತದೆ. ಸಾಮಾನ್ಯ ಯೋಜನೆ ಆರಂಭಿಕ ಚಿಂತನೆಗಳನ್ನು ಒಳಗೊಂಡಿದೆ. Wilaya ಪ್ರೀಮಿಯಂ ವರ್ಗಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡುತ್ತದೆ ಮತ್ತು ಟಾಪ್-ಅಪ್‌ಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸುತ್ತದೆ.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ಚಿಂತನೆಗಳು ಬಳಸಲಾಗಿದೆ';
  }

  @override
  String get settingsDeleteTitle => 'ಖಾತೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get settingsDeleteDescription =>
      'ನಿಮ್ಮ ಖಾತೆ ಮತ್ತು ಅದಕ್ಕೆ ಸಂಬಂಧಿಸಿದ ಎಲ್ಲಾ ದತ್ತಾಂಶವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಿ.';

  @override
  String get settingsDeleteButtonLabel => 'ನನ್ನ ಖಾತೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get settingsDeleteDialogTitle => 'ಖಾತೆಯನ್ನು ಅಳಿಸಬೇಕೆ?';

  @override
  String get settingsDeleteDialogBody =>
      'ಈ ಕ್ರಿಯೆ ಶಾಶ್ವತವಾಗಿರುತ್ತದೆ ಮತ್ತು ಹಿಂದಕ್ಕೆ ಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ.\n\nನಿಮ್ಮ ಎಲ್ಲಾ ಚಾಟ್‌ಗಳು, ಇತಿಹಾಸ ಮತ್ತು ಖಾತೆ ಮಾಹಿತಿ ಅಳಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get settingsDeleteDialogCancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get settingsDeleteDialogConfirm => 'ಅಳಿಸಿ';

  @override
  String get settingsFreeLimitUsedTitle => 'ಆರಂಭಿಕ ಚಿಂತನೆಗಳು ಬಳಸಲ್ಪಟ್ಟಿವೆ';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ಈ ಸಾಧನದ ಆರಂಭಿಕ ಚಿಂತನೆಗಳು ಬಳಸಲ್ಪಟ್ಟಿವೆ. ಮುಂದುವರಿಸಲು Wilayaಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ ಅಥವಾ ಇನ್ನಷ್ಟು ಚಿಂತನೆಗಳನ್ನು ಖರೀದಿಸಿ.';

  @override
  String get settingsStarterCreditsUsedTitle => 'ಆರಂಭಿಕ ಚಿಂತನೆಗಳು ಬಳಸಲ್ಪಟ್ಟಿವೆ';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ಈ ಸಾಧನದ ಆರಂಭಿಕ ಚಿಂತನೆಗಳು ಬಳಸಲ್ಪಟ್ಟಿವೆ. ಮುಂದುವರಿಸಲು Wilayaಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ ಅಥವಾ ಇನ್ನಷ್ಟು ಚಿಂತನೆಗಳನ್ನು ಖರೀದಿಸಿ.';

  @override
  String get deviceBoundError =>
      'ಈ ಸಾಧನವು ಈಗಾಗಲೇ ಮತ್ತೊಂದು ಖಾತೆಗೆ ಲಿಂಕ್ ಆಗಿದೆ. ದಯವಿಟ್ಟು ಮೂಲ ಖಾತೆಯಲ್ಲಿ ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get premiumTitle => 'Wilaya ಮೋಡ್';

  @override
  String get premiumSubtitleBasic => 'ಪೂರ್ಣ Ayara ಅನುಭವವನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ.';

  @override
  String get premiumSubtitlePremium =>
      'ನೀವು Wilayaಯಲ್ಲಿದ್ದೀರಿ. ಇನ್ನಷ್ಟು ಚಿಂತನೆಗಳು ಬೇಕೇ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'ಪ್ರಸ್ತುತ ಯೋಜನೆ: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'ಚಿಂತನೆಗಳು: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'ಈಗ ಖರೀದಿಗಳು ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get premiumSignInToPurchase =>
      'ಚಿಂತನೆಗಳನ್ನು ಖರೀದಿಸಲು ಅಥವಾ Wilaya ಅನ್ಲಾಕ್ ಮಾಡಲು ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get premiumRestorePurchases => 'ಖರೀದಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get premiumProcessing => 'ಪ್ರಕ್ರಿಯೆ ನಡೆಯುತ್ತಿದೆ…';

  @override
  String get premiumRestoreHintTitle =>
      'ಈ ಸಾಧನದಲ್ಲಿ ಅಥವಾ ಮತ್ತೊಂದರಲ್ಲಿ ನೀವು ಈಗಾಗಲೇ Wilaya ಅಥವಾ ಚಿಂತನೆಗಳನ್ನು ಖರೀದಿಸಿದ್ದೀರಾ?';

  @override
  String get premiumRestoreHintBody =>
      'ಅವು ಕಾಣಿಸದಿದ್ದರೆ ನಿಮ್ಮ ಖರೀದಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸಿ.';

  @override
  String get premiumBuyCredits200 => '200 ಚಿಂತನೆಗಳನ್ನು ಖರೀದಿಸಿ';

  @override
  String get premiumBuyCredits400 => '400 ಚಿಂತನೆಗಳನ್ನು ಖರೀದಿಸಿ';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya ಮೋಡ್‌ಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get premiumTopupHint =>
      'Wilaya ಜೊತೆಗೆ, ನಿಮಗೆ ಬೇಕಾದಾಗಲೆಲ್ಲ ಹೆಚ್ಚುವರಿ ಚಿಂತನೆಗಳನ್ನು ಟಾಪ್ ಅಪ್ ಮಾಡಬಹುದು.';

  @override
  String get premiumUpgradeCta => 'ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get premiumRequiredForCategory =>
      'ಈ ವರ್ಗವು Wilaya ಬಳಕೆದಾರರಿಗೆ ಮಾತ್ರ ಲಭ್ಯ. ಎಲ್ಲಾ ಪ್ರೀಮಿಯಂ ವಿಷಯವನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಲು ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get premiumBenefitsBasic =>
      'ಹೆಚ್ಚುವರಿ ಚಿಂತನೆಗಳು, ಪ್ರೀಮಿಯಂ ವರ್ಗಗಳ ಪ್ರವೇಶ ಮತ್ತು ನಿಮಗೆ ಮಾರ್ಗದರ್ಶನ ಬೇಕಾದಾಗಲೆಲ್ಲ ಮುಂದುವರಿಯುವ ಸಾಧ್ಯತೆ ಪಡೆಯಲು Wilaya ಅನ್ಲಾಕ್ ಮಾಡಿ.';

  @override
  String get premiumBenefitsPremium =>
      'ನೀವು Wilaya ಮೋಡ್‌ನಲ್ಲಿ ಇದ್ದೀರಿ. ಕಡಿಮೆ ಆಗುತ್ತಿದ್ದರೆ, ಕೆಲವು ಹೆಚ್ಚುವರಿ ಚಿಂತನೆಗಳನ್ನು ಸೇರಿಸಿ ಮತ್ತು ವ್ಯತ್ಯಯವಿಲ್ಲದೆ ಮುಂದುವರಿಸಿ.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get premiumButtonTopup1000 => '1000 ಚಿಂತನೆಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String get premiumBadge => 'Wilaya ಸಕ್ರಿಯವಾಗಿದೆ';

  @override
  String get premiumLoadingStore => 'ಸ್ಟೋರ್ ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get premiumProductNotAvailable =>
      'ಈ ಉತ್ಪನ್ನವು ಇನ್ನೂ ಸ್ಟೋರ್‌ನಲ್ಲಿ ಲಭ್ಯವಿಲ್ಲ. ದಯವಿಟ್ಟು ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get premiumPurchaseError =>
      'ಖರೀದಿಯಲ್ಲಿ ಏನೋ ತಪ್ಪಾಗಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get premiumBuyCredits100 => '100 ಚಿಂತನೆಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String get premiumFeatureLocked =>
      'ಈ ವೈಶಿಷ್ಟ್ಯವನ್ನು ಪ್ರವೇಶಿಸಲು Wilaya ಅನ್ಲಾಕ್ ಮಾಡಿ.';

  @override
  String get lockedCategoriesHint =>
      'ಕೆಲವು ವರ್ಗಗಳು Wilaya ಸದಸ್ಯರಿಗಾಗಿ ಮೀಸಲಾಗಿದೆ. ನಿಮ್ಮ ಪ್ರಯಾಣದ ಪ್ರತಿಯೊಂದು ಚಿಂತನೆಯನ್ನು ಅನ್ವೇಷಿಸಲು ಅವನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ.';

  @override
  String get freePlanBlockedTitle => 'ನಿಮ್ಮ ಆರಂಭಿಕ ಚಿಂತನೆಗಳು ಮುಗಿದಿವೆ';

  @override
  String get freePlanBlockedBody =>
      'ನೀವು ಸಾಮಾನ್ಯ ಯೋಜನೆಯಲ್ಲಿ ಆರಂಭಿಕ ಚಿಂತನೆಗಳೊಂದಿಗೆ ಇದ್ದೀರಿ ಮತ್ತು ಮಿತಿಯನ್ನು ತಲುಪಿದ್ದೀರಿ. ಮುಂದುವರಿಸಲು — ಮತ್ತು ಪ್ರೀಮಿಯಂ ವರ್ಗಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಲು — Wilayaಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get freePlanBlockedCtaGoPremium => 'ಕೆಳಗಿನ Wilaya ಆಯ್ಕೆಗಳನ್ನು ನೋಡಿ';

  @override
  String get graceBlockedTitle => 'ನಿಮ್ಮ ಆರಂಭಿಕ ಚಿಂತನೆಗಳು ಮುಗಿದಿವೆ';

  @override
  String get graceBlockedBody =>
      'ನೀವು ಸಾಮಾನ್ಯ ಯೋಜನೆಯಲ್ಲಿ ಆರಂಭಿಕ ಚಿಂತನೆಗಳೊಂದಿಗೆ ಇದ್ದೀರಿ ಮತ್ತು ಮಿತಿಯನ್ನು ತಲುಪಿದ್ದೀರಿ. ಮುಂದುವರಿಸಲು — ಮತ್ತು ಪ್ರೀಮಿಯಂ ವರ್ಗಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಲು — Wilayaಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get graceBlockedCtaGoPremium => 'ಕೆಳಗಿನ Wilaya ಆಯ್ಕೆಗಳನ್ನು ನೋಡಿ';

  @override
  String get rateGuestMustSignIn =>
      'Ayara ಮತ್ತು ನಿಮ್ಮ ಚಿಂತನೆಗಳನ್ನು ಬಳಸಲು ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get guestNoCreditsTitle => 'ಅತಿಥಿ ಮೋಡ್';

  @override
  String get guestNoCreditsBody =>
      'ಅತಿಥಿಯಾಗಿ ನೀವು ಆಪ್ ಅನ್ನು ವೀಕ್ಷಿಸಬಹುದು, ಆದರೆ ಚಿಂತನೆಗಳನ್ನು ಬಳಸಲಾಗುವುದಿಲ್ಲ. ಚಿಂತನೆಗಳನ್ನು ಬಳಸಲು ಮತ್ತು ಖರೀದಿಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಲು ನಂತರ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಲಾಗಿನ್ ಮಾಡಿ.';

  @override
  String get guestDialogContinue => 'ಮುಂದುವರಿಸಿ';

  @override
  String get guestDialogLoginInstead => 'ಬದಲಿಗೆ ಲಾಗಿನ್ ಮಾಡಿ';

  @override
  String get optionalLabel => 'ಐಚ್ಛಿಕ';

  @override
  String get accountDeleteSuccessTitle => 'ಖಾತೆ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get accountDeleteSuccessBody =>
      'ನಿಮ್ಮ ಖಾತೆ ಮತ್ತು ಸಂಬಂಧಿತ ದತ್ತಾಂಶ ಯಶಸ್ವಿಯಾಗಿ ಅಳಿಸಲಾಗಿದೆ.';

  @override
  String get accountDeleteSuccessClose => 'ಮುಚ್ಚಿ';

  @override
  String get accountDeleteErrorTitle => 'ಖಾತೆಯನ್ನು ಅಳಿಸಲಾಗಲಿಲ್ಲ';

  @override
  String get accountDeleteErrorClose => 'ಸರಿ';

  @override
  String get accountDeleteReauthCancelled =>
      'ಮರು-ಪ್ರಮಾಣೀಕರಣ ರದ್ದುಪಡಿಸಲಾಗಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಸೈನ್ ಇನ್ ಮಾಡಿ ಮತ್ತು ಅಳಿಸುವಿಕೆಯನ್ನು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get accountDeleteReauthRequired =>
      'ಖಾತೆ ಅಳಿಸುವಿಕೆಗಾಗಿ ಇತ್ತೀಚಿನ ಲಾಗಿನ್ ಅಗತ್ಯವಿದೆ. ದಯವಿಟ್ಟು ಸೈನ್ ಔಟ್ ಮಾಡಿ, ಮತ್ತೆ ಸೈನ್ ಇನ್ ಮಾಡಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get settingsDeletePermanentWarning =>
      'ಈ ಕ್ರಿಯೆ ಶಾಶ್ವತವಾಗಿರುತ್ತದೆ ಮತ್ತು ಹಿಂದಕ್ಕೆ ಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ. ನಿಮ್ಮ ಖಾತೆಗೆ ಸಂಬಂಧಿಸಿದ ಎಲ್ಲಾ ದತ್ತಾಂಶ ಅಳಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get dailyGraceTitle => 'ದೈನಂದಿನ ಮಾರ್ಗದರ್ಶನ';

  @override
  String get dailyGraceScriptureLabel => 'ಇಂದಿನ ಆಯತ್';

  @override
  String get dailyGraceSaintLabel => 'ಈ ವಾರದ ಪಂಡಿತ';

  @override
  String get dailyGraceReflectionLabel => 'ಸಂಜೆಯ ಚಿಂತನೆ';

  @override
  String get dailyGraceCopiedToast => 'ಆಯತ್ ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ಗೆ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String get locationConsentLabel =>
      'ಕಿಬ್ಲಾ ದಿಕ್ಕು ಮತ್ತು ನಮಾಝ್ ಸಮಯಗಳಿಗಾಗಿ Ayara ನನ್ನ ಸ್ಥಳವನ್ನು ಬಳಸಲು ಅನುಮತಿಸಿ';

  @override
  String get locationConsentHint =>
      'ಈ ವೈಶಿಷ್ಟ್ಯಗಳಿಗೆ ಮಾತ್ರ ಬಳಸಲಾಗುತ್ತದೆ. ನಿಮ್ಮ ಸ್ಥಳವನ್ನು ಎಂದಿಗೂ ಹಂಚಲಾಗುವುದಿಲ್ಲ ಅಥವಾ ಸಂಗ್ರಹಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get askPageTitle => 'Ayara ಅನ್ನು ಕೇಳಿ';

  @override
  String get askPageDescription =>
      'ನಂಬಿಕೆ, ನಮಾಝ್, ಜೀವನ ಅಥವಾ ಇಸ್ಲಾಮಿಕ್ ಆಚರಣೆ ಬಗ್ಗೆ ಏನಾದರೂ ಕೇಳಿ ಮತ್ತು ಕುರ್‌ಆನ್ ಹಾಗೂ ಅಹ್ಲ್ ಅಲ್-ಬೈತ್‌ನ ಉಪದೇಶಗಳಲ್ಲಿ ಬೇರುಬಿಟ್ಟ ಮಾರ್ಗದರ್ಶನವನ್ನು ಪಡೆಯಿರಿ.';

  @override
  String get askPageInputHint => 'ನಿಮ್ಮ ಪ್ರಶ್ನೆಯನ್ನು ಇಲ್ಲಿ ಬರೆಯಿರಿ…';

  @override
  String get askPageSubmitCta => 'ಕೇಳಿ';

  @override
  String get askPageInputEmptyError =>
      'ದಯವಿಟ್ಟು ಮೊದಲು ಒಂದು ಪ್ರಶ್ನೆಯನ್ನು ಬರೆಯಿರಿ.';

  @override
  String get askResultYourQuestion => 'ನಿಮ್ಮ ಪ್ರಶ್ನೆ';

  @override
  String get guidancePageTitle => 'ಕಿಬ್ಲಾ';

  @override
  String get qiblaFacingMecca => 'ಮಕ್ಕಾ ಕಡೆ ಮುಖಮಾಡಿ';

  @override
  String get qiblaCompassInstruction =>
      'ಚಿನ್ನದ ಸೂಜಿ ಮೇಲಕ್ಕೆ ತೋರಿಸುವವರೆಗೆ ನಿಮ್ಮ ಫೋನ್ ಅನ್ನು ತಿರುಗಿಸಿ.\nಆ ದಿಕ್ಕು ಕಿಬ್ಲಾ (ಮಕ್ಕಾ) ಕಡೆ ತೋರಿಸುತ್ತದೆ.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS ಸಿಗ್ನಲ್ ದುರ್ಬಲವಾಗಿದೆ. ಹೊರಗೆ ಹೋಗಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ ಅನ್ನು ತಟ್ಟಿರಿ.';

  @override
  String get qiblaRetry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get qiblaTitle => 'ಕಿಬ್ಲಾ ದಿಕ್ಕು';

  @override
  String qiblaDistanceLabel(String km) {
    return 'ಮಕ್ಕಾಕ್ಕೆ $km ಕಿ.ಮೀ';
  }

  @override
  String get qiblaLocationNeededTitle => 'ಸ್ಥಳ ಅಗತ್ಯವಿದೆ';

  @override
  String get qiblaLocationNeededBody =>
      'ನೀವು ಎಲ್ಲಿದ್ದರೂ ಅಲ್ಲಿಂದ ಮಕ್ಕಾದಲ್ಲಿರುವ ಕಾಬಾದ ದಿಕ್ಕನ್ನು Ayara ಲೆಕ್ಕಿಸಲು ಸ್ಥಳ ಪ್ರವೇಶವನ್ನು ಅನುಮತಿಸಿ.';

  @override
  String get qiblaOpenSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get qiblaCompassLoading => 'ನಿಮ್ಮ ಸ್ಥಾನವನ್ನು ಕಂಡುಹಿಡಿಯಲಾಗುತ್ತಿದೆ…';

  @override
  String get qiblaTowardMecca => 'ಮಕ್ಕಾ ಕಡೆಗೆ';

  @override
  String get prayerTimesTitle => 'ನಮಾಝ್ ಸಮಯಗಳು';

  @override
  String get prayerTimesFajr => 'ಫಜರ್';

  @override
  String get prayerTimesDhuhr => 'ಜುಹರ್';

  @override
  String get prayerTimesAsr => 'ಅಸರ್';

  @override
  String get prayerTimesMaghrib => 'ಮಘ್ರಿಬ್';

  @override
  String get prayerTimesIsha => 'ಇಶಾ';

  @override
  String get prayerTimesLocationNeededTitle => 'ಸ್ಥಳ ಅಗತ್ಯವಿದೆ';

  @override
  String get prayerTimesLocationNeededBody =>
      'ನಿಮ್ಮ ನಗರದಿಗಾಗಿ ಸರಿಯಾದ ನಮಾಝ್ ಸಮಯಗಳನ್ನು Ayara ಲೆಕ್ಕಿಸಲು ಸ್ಥಳ ಪ್ರವೇಶವನ್ನು ಅನುಮತಿಸಿ.';

  @override
  String get prayerTimesNextLabel => 'ಮುಂದಿನದು';

  @override
  String get prayerTimesDoneLabel => 'ಮುಗಿದಿದೆ';

  @override
  String get monthlyPrayerTimesTitle => 'ಮಾಸಿಕ ನಮಾಝ್ ಸಮಯಗಳು';

  @override
  String get monthlyPrayerTimesViewButton => 'ಪೂರ್ಣ ತಿಂಗಳು ವೀಕ್ಷಿಸಿ';

  @override
  String get monthlyPrayerTimesNextMonth => 'ಮುಂದಿನ ತಿಂಗಳು';

  @override
  String get monthlyPrayerTimesDayHeader => 'ದಿನ';

  @override
  String get sharePrayerTimes => 'ನಮಾಝ್ ಸಮಯಗಳನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get notificationsSectionTitle => 'ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get notificationsSectionSubtitle =>
      'ನಮಾಝ್ ಸ್ಮರಣೆಗಳು, ಕ್ಯಾಲೆಂಡರ್ ಈವೆಂಟ್‌ಗಳು ಮತ್ತು ಇನ್ನಷ್ಟು';

  @override
  String get dailyReflectionReminderTitle => 'ದೈನಂದಿನ ಚಿಂತನೆ';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara ತೆರೆಯಲು ಮತ್ತು ನಿಮ್ಮ ನಂಬಿಕೆಗೆ ಸಂಪರ್ಕಿಸಲು ಸೌಮ್ಯ ದೈನಂದಿನ ಸ್ಮರಣೆ.';

  @override
  String get dailyReflectionReminderEnable =>
      'ದೈನಂದಿನ ಸ್ಮರಣೆಯನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get dailyReflectionReminderTimeLabel => 'ಸ್ಮರಣೆ ಸಮಯ';

  @override
  String get prayerNotificationsTitle => 'ನಮಾಝ್ ಸ್ಮರಣೆಗಳು';

  @override
  String get prayerNotificationsDescription =>
      'ದಿನವಿಡೀ ಸಂಪರ್ಕದಲ್ಲಿರಲು ಪ್ರತಿಯೊಂದು ನಮಾಝ್ ಸಮಯಕ್ಕೂ ಮುಂಚೆ ಸೌಮ್ಯ ಸ್ಮರಣೆಯನ್ನು ಪಡೆಯಿರಿ.';

  @override
  String get prayerNotificationsEnable => 'ನಮಾಝ್ ಸ್ಮರಣೆಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get prayerNotificationsOpenSettings =>
      'ಅಧಿಸೂಚನೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get prayerNotificationsDenied => 'ಅಧಿಸೂಚನೆಗಳನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get prayerNotificationsDeniedHint =>
      'ನಮಾಝ್ ಸಮಯದ ಸ್ಮರಣೆಗಳನ್ನು ಪಡೆಯಲು ಸೆಟ್ಟಿಂಗ್‌ಗಳಿಗೆ ಹೋಗಿ ಮತ್ತು Ayaraಗಾಗಿ ಅಧಿಸೂಚನೆಗಳನ್ನು ಅನುಮತಿಸಿ.';

  @override
  String get notificationsConsentLabel =>
      'ನಮಾಝ್ ಸಮಯಗಳಿಗಾಗಿ ಅಧಿಸೂಚನೆಗಳನ್ನು ಅನುಮತಿಸಿ';

  @override
  String get prayerNotifTitleFajr => '🌅 ಫಜರ್ — ಬೆಳಗಿನ ನಮಾಝ್';

  @override
  String get prayerNotifBodyFajr =>
      'ಫಜರ್ ಅಹ್ಲ್ ಅಲ್-ಬೈತ್‌ನ ಬೆಳಗಿನ ಪ್ರಾರ್ಥನೆ. ಇಮಾಮ್ ಅಲಿ (AS) ಹೇಳಿದರು: ಬೆಳಗಿನ ನಮಾಝ್ ಅನ್ನು ನಿಮ್ಮ ಅಮೂಲ್ಯ ನಂಬಿಕೆಗಳನ್ನು ಕಾಯುವಂತೆ ಕಾಪಾಡಿ. ಎದ್ದು, ಶುದ್ಧರಾಗಿ, ಅಲ್ಲಾಹನ ಮುಂದೆ ನಿಲ್ಲಿ.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ಜುಹರ್ — ಮಧ್ಯಾಹ್ನದ ನಮಾಝ್';

  @override
  String get prayerNotifBodyDhuhr =>
      'ಅಹ್ಲ್ ಅಲ್-ಬೈತ್‌ನ ಇಮಾಮರು ಸ್ಮರಣೆಯ ಪ್ರತಿಕ್ಷಣವನ್ನೂ ಮೌಲ್ಯಮಯವೆಂದು ಕಂಡಿದ್ದರು. ನಿಮ್ಮ ದಿನವನ್ನು ಸ್ವಲ್ಪ ವಿರಮಿಸಿ, ಅಗತ್ಯವಿದ್ದರೆ ಜುಹರ್ ಅನ್ನು ಅಸರ್ ಜೊತೆ ಸೇರಿಸಿ, ಮತ್ತು ನಿಮ್ಮ ಹೃದಯವನ್ನು ಅಲ್ಲಾಹನ ಕಡೆಗೆ ಮರಳಿಸಿ.';

  @override
  String get prayerNotifTitleAsr => '🌤️ ಅಸರ್ — ಮಧ್ಯಾನ್ಹದ ನಮಾಝ್';

  @override
  String get prayerNotifBodyAsr =>
      'ನಮಾಝ್ ಅನ್ನು ಕಾಪಾಡಿ, ಏಕೆಂದರೆ ಅದು ನಿಮ್ಮ ಮತ್ತು ಅಲ್ಲಾಹನ ನಡುವಿನ ಒಪ್ಪಂದವಾಗಿದೆ. ಅಸರ್ ಸಮಯ ಬಂದಿದೆ — ಅದು ಸ್ಮರಣೆಯಿಲ್ಲದೆ ಹಾದುಹೋಗದಂತೆ ನೋಡಿ.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 ಮಘ್ರಿಬ್ — ಸೂರ್ಯಾಸ್ತದ ನಮಾಝ್';

  @override
  String get prayerNotifBodyMaghrib =>
      'ಸೂರ್ಯ ಅಸ್ತಮಿಸಿದೆ — ಅಹ್ಲ್ ಅಲ್-ಬೈತ್ ಪ್ರಾರ್ಥನೆಗಾಗಿ ಪವಿತ್ರವೆಂದು ಕಂಡ ಕ್ಷಣ. ಮಘ್ರಿಬ್ ನಮಾಝ್ ಮಾಡಿ ಮತ್ತು ರಾತ್ರಿ ಪ್ರಾರಂಭವಾಗುವ ಮೊದಲು ಅಲ್ಲಾಹನ ಕಡೆಗೆ ನಿಮ್ಮ ಕೈಗಳನ್ನು ದುಆದಲ್ಲಿ ಎತ್ತಿ.';

  @override
  String get prayerNotifTitleIsha => '🌙 ಇಶಾ — ರಾತ್ರಿಯ ನಮಾಝ್';

  @override
  String get prayerNotifBodyIsha =>
      'ನಿಮ್ಮ ದಿನವನ್ನು ಅಲ್ಲಾಹನ ಸಂಗಡದಲ್ಲಿ ಮುಗಿಸಿ. ಇಮಾಮರು ಇಶಾ ಬಳಿಕ ಸಲಾತ್ ಅಲ್-ಲಯ್ಲ್ ಅನ್ನು ಪ್ರೋತ್ಸಾಹಿಸಿದರು — ಆದರೆ ಮೊದಲು ನಿಮ್ಮ ಇಶಾ ನಮಾಝ್ ಪೂರ್ಣಗೊಳಿಸಿ ಮತ್ತು ದಿನವನ್ನು ಆತನ ಸ್ಮರಣೆಯಲ್ಲಿ ಮುಚ್ಚಿರಿ.';

  @override
  String get outOfReflectionsBannerText =>
      'ನೀವು ನಿಮ್ಮ ಎಲ್ಲಾ ಚಿಂತನೆಗಳನ್ನು ಬಳಸಿದ್ದೀರಿ';

  @override
  String get outOfReflectionsBannerCta => 'ಇನ್ನಷ್ಟು ಪಡೆಯಿರಿ';

  @override
  String get dhikrPageTitle => 'ಧಿಕ್ರ್';

  @override
  String get dhikrTapToCount => 'ಎಣಿಸಲು ವೃತ್ತವನ್ನು ತಟ್ಟಿರಿ';

  @override
  String get dhikrResetButton => 'ಮರುಹೊಂದಿಸಿ';

  @override
  String get dhikrComplete => 'ಮಾಶಾ\'ಅಲ್ಲಾಹ್';

  @override
  String get dhikrCompleteMessage =>
      'ನೀವು ಅಲ್ಲಾಹನ 100 ಸ್ಮರಣೆಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ. ಅವು ನಿಮ್ಮ ಹೃದಯಕ್ಕೆ ಬೆಳಕಾಗಲಿ.';

  @override
  String get disclaimerTitle => 'ಈ ಆಪ್‌ನ ಮಾರ್ಗದರ್ಶನ ಕುರಿತು';

  @override
  String get disclaimerBody =>
      'Ayara ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ನಂಬಿಕೆಯ ಪ್ರಯಾಣವನ್ನು ಬೆಂಬಲಿಸಲು, ಕುರ್‌ಆನ್ ಮತ್ತು ಅಹ್ಲ್ ಅಲ್-ಬೈತ್‌ನ ಉಪದೇಶಗಳಲ್ಲಿ ಬೇರುಬಿಟ್ಟ ಇಸ್ಲಾಮಿಕ್ ಚಿಂತನೆಗಳು, ಸ್ಮರಣೆಗಳು ಮತ್ತು ಆತ್ಮೀಯ ವಿಷಯವನ್ನು ಒದಗಿಸುತ್ತದೆ. ಈ ವಿಷಯವನ್ನು ಕೇವಲ ಸಾಮಾನ್ಯ ಮಾಹಿತಿ ಮತ್ತು ಪ್ರೇರಣಾತ್ಮಕ ಉದ್ದೇಶಗಳಿಗಾಗಿ ನೀಡಲಾಗುತ್ತದೆ.\n\nAyara ಅರ್ಹ ಪಾಂಡಿತ್ಯಕ್ಕೆ ಬದಲಿಯಲ್ಲ.\nಈ ಆಪ್‌ನಲ್ಲಿನ ಮಾರ್ಗದರ್ಶನವು ಪಾಂಡಿತ್ಯ ಹೊಂದಿದ ಇಸ್ಲಾಮಿಕ್ ವಿದ್ವಾಂಸ, ಮರ್ಜಾ\' ಅಥವಾ ತಾತ್ವಿಕವಾಗಿ ತರಬೇತಿಗೊಂಡ ಶಿಕ್ಷಕರಿಗೆ ಪರ್ಯಾಯವಲ್ಲ. ಶಿಯಾ ಇಸ್ಲಾಂನಲ್ಲಿ, ಧಾರ್ಮಿಕ ಮಾರ್ಗದರ್ಶನವು ಜಾಫರಿ ಫಿಖ್ ಶಾಲೆ ಮತ್ತು ಜೀವಂತ ಮರ್ಜಾ\' (ಅನುಕರಣದ ಮೂಲ) ಯನ್ನು ಅನುಸರಿಸುವ ಪರಂಪರೆಯಲ್ಲಿ ಬೇರುಬಿಟ್ಟಿದೆ — ಧಾರ್ಮಿಕ ಆಚರಣೆಯಲ್ಲಿ ಭಕ್ತರನ್ನು ಮಾರ್ಗದರ್ಶಿಸುವ ಅರ್ಹ ನ್ಯಾಯಶಾಸ್ತ್ರಜ್ಞ. ಧಾರ್ಮಿಕ ತೀರ್ಪುಗಳು, ಹಲಾಲ್ ಮತ್ತು ಹರಾಂ ವಿಚಾರಗಳು ಅಥವಾ ವೈಯಕ್ತಿಕ ಧಾರ್ಮಿಕ ಹೊಣೆಗಾರಿಕೆಗಳ ಬಗ್ಗೆ ನಿಮಗೆ ಪ್ರಶ್ನೆಗಳಿದ್ದರೆ, ದಯವಿಟ್ಟು ನಿಮ್ಮ ಸಮುದಾಯದಲ್ಲಿನ ಅರ್ಹ ಮರ್ಜಾ\' ಅಥವಾ ವಿದ್ವಾಂಸರ ಸಲಹೆಯನ್ನು ಪಡೆಯಿರಿ.\n\nಈ ಆಪ್ ಧಾರ್ಮಿಕ ತೀರ್ಪುಗಳನ್ನು ನೀಡುವುದಿಲ್ಲ.\nAyara ಫಿಖ್ ಅಥವಾ ವೈಯಕ್ತಿಕ ಧಾರ್ಮಿಕ ಹೊಣೆಗಾರಿಕೆಗಳ ವಿಚಾರಗಳಲ್ಲಿ ಅಧಿಕಾರಪೂರ್ಣ ನಿರ್ಧಾರಗಳನ್ನು ನೀಡುವುದಿಲ್ಲ. ಇಲ್ಲಿ ಇರುವ ಯಾವುದನ್ನೂ ಫತ್ವಾ ಅಥವಾ ಬಾಧ್ಯತೆಯ ಧಾರ್ಮಿಕ ನಿರ್ದೇಶನವೆಂದು ಪರಿಗಣಿಸಬಾರದು.\n\nಅಹ್ಲ್ ಅಲ್-ಬೈತ್‌ನ ಕೇಂದ್ರತೆ.\nಶಿಯಾ ಇಸ್ಲಾಂನಲ್ಲಿ, ಪ್ರವಾದಿ ಮುಹಮ್ಮದ್ ﷺ ಮತ್ತು ಅವರ ಪರಿಶುದ್ಧ ಕುಟುಂಬ — ಅಹ್ಲ್ ಅಲ್-ಬೈತ್ — ಕುರ್‌ಆನ್ ನಂತರ ಇಸ್ಲಾಮಿಕ್ ಸಮುದಾಯದ ಅಧಿಕಾರಪೂರ್ಣ ಮಾರ್ಗದರ್ಶಕರು. ಅಹ್ಲ್ ಅಲ್-ಬೈತ್‌ನ ಹನ್ನೆರಡು ಇಮಾಮರು ದೈವಿಕವಾಗಿ ನೇಮಕಗೊಂಡ ಇಸ್ಲಾಮಿಕ್ ಬೋಧನೆಯ ವ್ಯಾಖ್ಯಾನಕರು. ಈ ಆಪ್‌ನಲ್ಲಿನ ವಿಷಯವು ಈ ಪರಂಪರೆಯನ್ನು ಪ್ರತಿಬಿಂಬಿಸುತ್ತದೆ ಮತ್ತು ಅದನ್ನು ನಿಷ್ಠೆಯಿಂದ ಗೌರವಿಸಲು ಪ್ರಯತ್ನಿಸುತ್ತದೆ.\n\nಸಮುದಾಯದ ವಿಷಯಗಳು.\nನಿಮ್ಮ ಸ್ಥಳೀಯ ಮಸೀದಿ, ಇಸ್ಲಾಮಿಕ್ ಕೇಂದ್ರ ಮತ್ತು ಧಾರ್ಮಿಕ ಸಮುದಾಯದ ಮಹತ್ವದ ಪಾತ್ರವನ್ನು ಆಳವಾಗಿ ಗೌರವಿಸುತ್ತಾ, ಈ ಆಪ್ ನಿಮ್ಮ ನಂಬಿಕೆಯಲ್ಲಿ ತೊಡಗಿಸಿಕೊಳ್ಳಲು ಪ್ರೋತ್ಸಾಹಿಸಲು ಉದ್ದೇಶಿಸಿದೆ. ನಿಮ್ಮ ಹತ್ತಿರದ ಅರ್ಹ ಶಿಕ್ಷಕರೊಂದಿಗೆ ಸಂಪರ್ಕದಲ್ಲಿರಿ ಮತ್ತು ಅವರಿಂದ ಕಲಿಯಿರಿ ಎಂದು ನಾವು ಪ್ರೋತ್ಸಾಹಿಸುತ್ತೇವೆ.';

  @override
  String get disclaimerClose => 'ನನಗೆ ಅರ್ಥವಾಗಿದೆ';

  @override
  String get disclaimerInfoTooltip => 'ಈ ಆಪ್‌ನ ಮಾರ್ಗದರ್ಶನ ಕುರಿತು';

  @override
  String get disclaimerSettingsSubtitle =>
      'ಕೇವಲ ಸಾಮಾನ್ಯ ಮಾಹಿತಿ ಉದ್ದೇಶಗಳಿಗಾಗಿ. ಸಂಪೂರ್ಣ ಡಿಸ್ಕ್ಲೈಮರ್ ಓದಲು ತಟ್ಟಿರಿ.';

  @override
  String get disclaimerSectionHeader => 'ಮಾರ್ಗದರ್ಶನ ಡಿಸ್ಕ್ಲೈಮರ್';

  @override
  String get navHome => 'ಮುಖಪುಟ';

  @override
  String get navReflect => 'ಚಿಂತನೆ';

  @override
  String get navDuas => 'ದುವಾಗಳು';

  @override
  String get navCalendar => 'ಕ್ಯಾಲೆಂಡರ್';

  @override
  String get dashboardToday => 'ಇಂದು';

  @override
  String get dashboardComingUp => 'ಬರಲಿರುವುದು';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ದಿನಗಳು',
      one: 'ದಿನ',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'ವೇಗದ ಪ್ರವೇಶ';

  @override
  String get quickActionQibla => 'ಕಿಬ್ಲಾ';

  @override
  String get quickActionDhikr => 'ಧಿಕ್ರ್';

  @override
  String get quickActionDailyGrace => 'ಮಾರ್ಗದರ್ಶನ';

  @override
  String get quickActionPrayerTimes => 'ನಮಾಝ್ ಸಮಯಗಳು';

  @override
  String get askAyaraTitle => 'Ayara ಅನ್ನು ಕೇಳಿ';

  @override
  String get askAyaraSubtitle =>
      'ಯಾವುದೇ ಇಸ್ಲಾಮಿಕ್ ಪ್ರಶ್ನೆಯನ್ನು ಕೇಳಿ ಮತ್ತು ಚಿಂತನಶೀಲ, ಮಾರ್ಗದರ್ಶಿತ ಉತ್ತರವನ್ನು ಪಡೆಯಿರಿ.';

  @override
  String get askAyaraHint => 'ಉದಾ. ರಮಝಾನ್‌ನ ಮಹತ್ವವೇನು?';

  @override
  String get askAyaraSubmit => 'ಕೇಳಿ';

  @override
  String get wisdomOfTheDayTitle => 'ಇಂದಿನ ಜ್ಞಾನ';

  @override
  String get calendarScreenTitle => 'ಇಸ್ಲಾಮಿಕ್ ಕ್ಯಾಲೆಂಡರ್';

  @override
  String get calendarUpcomingOccasions => 'ಬರಲಿರುವ ಸಂದರ್ಭಗಳು';

  @override
  String get calendarOccasionRemindersTitle => 'ಸಂದರ್ಭ ಸ್ಮರಣೆಗಳು';

  @override
  String get calendarOccasionRemindersHint =>
      'ಪ್ರತಿ ಸಂದರ್ಭದ ಮುನ್ನಾದಿನದ ಸಂಜೆ ತಿಳಿಸಲಾಗುತ್ತದೆ';

  @override
  String get calendarNotifPermissionDenied =>
      'ಅಧಿಸೂಚನೆ ಅನುಮತಿ ನಿರಾಕರಿಸಲಾಗಿದೆ. ನಿಮ್ಮ ಸಾಧನದ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಅದನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ.';

  @override
  String get calendarNoEvents => 'ಬರಲಿರುವ ಯಾವುದೇ ಈವೆಂಟ್‌ಗಳು ಕಂಡುಬಂದಿಲ್ಲ.';

  @override
  String get calendarAddToPhone => 'ಫೋನ್ ಕ್ಯಾಲೆಂಡರ್‌ಗೆ ಸೇರಿಸಿ';

  @override
  String get calendarAddedToPhone => 'ಕ್ಯಾಲೆಂಡರ್‌ಗೆ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get calendarCountdownToday => 'ಇಂದು';

  @override
  String get calendarCountdownTomorrow => 'ನಾಳೆ';

  @override
  String calendarCountdownDays(int days) {
    return '$days ದಿನಗಳಲ್ಲಿ';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'ಜನ';

  @override
  String get calendarMonthFeb => 'ಫೆಬ್';

  @override
  String get calendarMonthMar => 'ಮಾರ್ಚ್';

  @override
  String get calendarMonthApr => 'ಏಪ್ರಿ';

  @override
  String get calendarMonthMay => 'ಮೇ';

  @override
  String get calendarMonthJun => 'ಜೂನ್';

  @override
  String get calendarMonthJul => 'ಜುಲೈ';

  @override
  String get calendarMonthAug => 'ಆಗ';

  @override
  String get calendarMonthSep => 'ಸೆಪ್';

  @override
  String get calendarMonthOct => 'ಅಕ್ಟೋ';

  @override
  String get calendarMonthNov => 'ನವೆಂ';

  @override
  String get calendarMonthDec => 'ಡಿಸೆಂ';

  @override
  String get calendarSeasonMuharramEarly =>
      'ಮುಹರ್ರಮ್ ದಿನಗಳು — ಕರ್ಬಲಾವನ್ನು ನೆನಪಿಸಿಕೊಳ್ಳಿ';

  @override
  String get calendarSeasonAshura => 'ಆಶೂರಾ — ಯಾ ಹುಸೈನ್ (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'ಮುಹರ್ರಮ್ — ಶೋಕ ಮತ್ತು ಚಿಂತನೆಯ ದಿನಗಳು';

  @override
  String get calendarSeasonArbaeen => 'ಅರ್ಬಈನ್ — ಹುಸೈನ್‌ನ ನಲವತ್ತು ದಿನಗಳು';

  @override
  String get calendarSeasonRoadToArbaeen => 'ಅರ್ಬಈನ್‌ಗೆ ಹೋಗುವ ದಾರಿ';

  @override
  String get calendarSeasonMabath => 'ಮಬ್ಅತ್ ಮುಬಾರಕ್ — ಪ್ರಕಟಣೆಯ ಪ್ರಭಾತ';

  @override
  String get calendarSeasonMidShaban =>
      'ಶಾಅಬಾನ್ ಮಧ್ಯಭಾಗ — ಇಮಾಮ್ ಅಲ್-ಮಹ್ದಿ (AJ) ಜನ್ಮದಿನ';

  @override
  String get calendarSeasonRamadan => 'ರಮಝಾನ್ ಮುಬಾರಕ್ — ಕುರ್‌ಆನ್‌ನ ತಿಂಗಳು';

  @override
  String get calendarSeasonGhadir => 'ಈದ್ ಅಲ್-ಘದೀರ್ ಮುಬಾರಕ್!';

  @override
  String get hijriMonth1 => 'ಮುಹರ್ರಮ್';

  @override
  String get hijriMonth2 => 'ಸಫರ್';

  @override
  String get hijriMonth3 => 'ರಬೀ ಅಲ್-ಅವ್ವಲ್';

  @override
  String get hijriMonth4 => 'ರಬೀ ಅಲ್-ಥಾನಿ';

  @override
  String get hijriMonth5 => 'ಜುಮಾದಾ ಅಲ್-ಅವ್ವಲ್';

  @override
  String get hijriMonth6 => 'ಜುಮಾದಾ ಅಲ್-ಥಾನಿ';

  @override
  String get hijriMonth7 => 'ರಜಬ್';

  @override
  String get hijriMonth8 => 'ಶಾಅಬಾನ್';

  @override
  String get hijriMonth9 => 'ರಮಝಾನ್';

  @override
  String get hijriMonth10 => 'ಶವ್ವಾಲ್';

  @override
  String get hijriMonth11 => 'ಧು ಅಲ್-ಖಿದಾ';

  @override
  String get hijriMonth12 => 'ಧು ಅಲ್-ಹಿಜ್ಜಾ';

  @override
  String get duasScreenTitle => 'ದುವಾಗಳು ಮತ್ತು ಜಿಯಾರತ್';

  @override
  String get duasSearchHint => 'ದುವಾಗಳು, ಜಿಯಾರತ್ ಹುಡುಕಿ…';

  @override
  String get duasFilterAll => 'ಎಲ್ಲಾ';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ದುವಾಗಳು ಮತ್ತು ಜಿಯಾರತ್',
      one: '$count ದುಆ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'ಯಾವುದೇ ದುವಾಗಳು ಕಂಡುಬಂದಿಲ್ಲ.';

  @override
  String get duaCategoryDaily => 'ದೈನಂದಿನ';

  @override
  String get duaCategoryWeekly => 'ಸಾಪ್ತಾಹಿಕ';

  @override
  String get duaCategoryOccasions => 'ಸಂದರ್ಭಗಳು';

  @override
  String get duaCategoryZiyarat => 'ಜಿಯಾರತ್';

  @override
  String get duaCategoryTasbih => 'ತಸ್ಬೀಹ್';

  @override
  String get eventTypeBirth => 'ಜನನ';

  @override
  String get eventTypeMartyrdom => 'ಶಹಾದತ್';

  @override
  String get eventTypeOccasion => 'ಸಂದರ್ಭ';

  @override
  String get duaCopyTooltip => 'ಅನುವಾದವನ್ನು ನಕಲಿಸಿ';

  @override
  String get duaToggleTransliteration => 'ಲಿಪ್ಯಂತರ';

  @override
  String get duaToggleTranslation => 'ಅನುವಾದ';

  @override
  String get duaAskAiLabel => 'ಈ ದುವಾವನ್ನು ವಿವರಿಸಲು Ayara ಅನ್ನು ಕೇಳಿ';

  @override
  String get duaAskAiLockedLabel => 'Ayara ಅನ್ನು ಕೇಳಿ (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara ವಿವರಣೆಗಳು Wilaya ಸದಸ್ಯರಿಗೆ ಲಭ್ಯ. ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" ಬಗ್ಗೆ Ayara ಅನ್ನು ಕೇಳಿ — ಶೀಘ್ರದಲ್ಲೇ!';
  }

  @override
  String get duaCopiedToast => 'ದುವಾ ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ಗೆ ನಕಲಿಸಲಾಗಿದೆ.';

  @override
  String get tasbihAllahuAkbarMeaning => 'ಅಲ್ಲಾಹ ಅತ್ಯಂತ ಮಹಾನ್';

  @override
  String get tasbihAlhamdulillahMeaning => 'ಎಲ್ಲಾ ಸ್ತುತಿಯೂ ಅಲ್ಲಾಹನಿಗೇ ಸೇರಿದೆ';

  @override
  String get tasbihSubhanallahMeaning => 'ಅಲ್ಲಾಹನಿಗೆ ಮಹಿಮೆ ಇರಲಿ';

  @override
  String get tasbihResetTooltip => 'ಮರುಹೊಂದಿಸಿ';

  @override
  String get tasbihCompleteTitle => 'ತಸ್ಬೀಹ್ ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get tasbihCompleteMessage => 'ಅಲ್ಲಾಹ ನಿಮ್ಮ ಧಿಕ್ರ್ ಅನ್ನು ಸ್ವೀಕರಿಸಲಿ.';

  @override
  String get tasbihTapHint => 'ಎಣಿಸಲು ಎಲ್ಲಿಯಾದರೂ ತಟ್ಟಿರಿ';

  @override
  String get tasbihatScreenTitle => 'ನಮಾಝ್ ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get tasbihatScreenSubtitle => 'ನಮಾಝ್‌ನ ತಸ್ಬೀಹ್‌ಗಳು';

  @override
  String get tasbihatScreenDescription =>
      'ದೈನಂದಿನ ನಮಾಝ್ ಸಮಯದಲ್ಲಿ ಮತ್ತು ಅದರ ನಂತರ ಪಠಿಸುವ ತಸ್ಬೀಹ್‌ಗಳ ಸಂಪೂರ್ಣ ಮಾರ್ಗದರ್ಶಿ — ಅಹ್ಲ್ ಅಲ್-ಬೈತ್ (a) ಪರಂಪರೆಯನ್ನು ಅನುಸರಿಸಿ.';

  @override
  String get tasbihatArba3Title => 'ತಸ್ಬೀಹಾತ್ ಅಲ್-ಅರ್ಬಅ';

  @override
  String get tasbihatArba3Subtitle => '3ನೇ ಮತ್ತು 4ನೇ ರಕಅತ್‌ನಲ್ಲಿ ಪಠಿಸಲಾಗುತ್ತದೆ';

  @override
  String get tasbihatArba3Info =>
      'ಶಿಯಾ ಫಿಖ್‌ನಲ್ಲಿ, ತಸ್ಬೀಹಾತ್ ಅಲ್-ಅರ್ಬಅ ಜುಹರ್, ಅಸರ್, ಮಘ್ರಿಬ್ ಮತ್ತು ಇಶಾ ನಮಾಝ್‌ನ 3ನೇ ಮತ್ತು 4ನೇ ರಕಅತ್‌ನಲ್ಲಿ ಸೂರಾ ಅಲ್-ಫಾತಿಹಾ ಬದಲಿಗೆ ಪಠಿಸಲಾಗುತ್ತದೆ. ಅದನ್ನು ಒಮ್ಮೆ ಪಠಿಸುವುದು ವಾಜಿಬ್, ಮತ್ತು ಮೂರು ಬಾರಿ ಪಠಿಸುವುದು ಮುಸ್ತಹಬ್.';

  @override
  String get tasbihatArba3Translation =>
      'ಅಲ್ಲಾಹನಿಗೆ ಮಹಿಮೆ · ಎಲ್ಲಾ ಸ್ತುತಿಯೂ ಅಲ್ಲಾಹನಿಗೇ ಸೇರಿದೆ\nಅಲ್ಲಾಹ ಹೊರತು ಬೇರೆ ದೇವರಿಲ್ಲ · ಅಲ್ಲಾಹ ಅತ್ಯಂತ ಮಹಾನ್';

  @override
  String get tasbihatArba3CompleteTitle => 'ಪಠಣ ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get tasbihatArba3CompleteMessage =>
      'ನಿಮ್ಮ ನಮಾಝ್ ಸ್ವೀಕರಿಸಲ್ಪಡಲಿ — ಆಮೀನ್';

  @override
  String get tasbihatArba3TapHint => 'ಪ್ರತಿ ಪಠಣದ ನಂತರ ತಟ್ಟಿರಿ';

  @override
  String get tasbihatZahraSubtitle => 'ಪ್ರತಿ ನಮಾಝ್ ನಂತರ · 100 ಮಣಿಗಳು';

  @override
  String get tasbihatZahraOriginLabel => 'ಮೂಲ';

  @override
  String get tasbihatZahraHadith =>
      'ಸಯ್ಯಿದಾ ಫಾತಿಮಾ ಅಲ್-ಜಹ್ರಾ (sa) ಪ್ರವಾದಿ ﷺ ಅವರಲ್ಲಿ ಒಬ್ಬ ಸೇವಕನನ್ನು ಕೇಳಿದರು. ಅವರು ಹೇಳಿದರು: \"ನಾನು ಅದಕ್ಕಿಂತ ಉತ್ತಮವಾದುದನ್ನು ತೋರಿಸಲೇಬೇಕೆ? ಪ್ರತಿ ನಮಾಝ್‌ನ ನಂತರ ಸುಭ್ಹಾನಲ್ಲಾಹ್ 33 ಬಾರಿ, ಅಲ್ಹಮ್ದುಲಿಲ್ಲಾಹ್ 33 ಬಾರಿ, ಮತ್ತು ಅಲ್ಲಾಹು ಅಕ್ಬರ್ 34 ಬಾರಿ ಹೇಳು. ಅದು ನಿನಗೆ ಸೇವಕನಿಗಿಂತ ಉತ್ತಮ.\"';

  @override
  String get tasbihatZahraHadithSource => '— ಬಿಹಾರ್ ಅಲ್-ಅನ್ವಾರ್, ಸಂಪುಟ 85';

  @override
  String get tasbihatZahraOpenCounter => 'ತಸ್ಬೀಹ್ ಕೌಂಟರ್ ತೆರೆಯಿರಿ';

  @override
  String get tasbihatDuasTitle => 'ಶಿಫಾರಸು ಮಾಡಿದ ದುವಾಗಳು';

  @override
  String get tasbihatDuasSubtitle => 'ನಿಮ್ಮ ನಮಾಝ್ ಪೂರ್ಣವಾದ ನಂತರ';

  @override
  String get tasbihatDuaAyatKursiTitle => 'ಆಯತುಲ್ ಕುರ್ಸಿ';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ಪ್ರತಿ ಫರ್ಡ್ ನಮಾಝ್ ನಂತರ';

  @override
  String get tasbihatDuaAyatKursiSource => 'ಸೂರಾ ಅಲ್-ಬಖರಾ 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ಪ್ರತಿ ಫರ್ಡ್ ನಮಾಝ್ ನಂತರ ಆಯತುಲ್ ಕುರ್ಸಿಯನ್ನು ಪಠಿಸುವವನ ಮತ್ತು ಸ್ವರ್ಗದ ನಡುವೆ ಮರಣ ಹೊರತು ಮತ್ತೇನೂ ಇರುವುದಿಲ್ಲ. ಇಮಾಮ್ ಅಲ್-ಬಾಕಿರ್ (a) ಅವರು ಅದು ಕುರ್‌ಆನ್‌ನ ಮಹಾನ್ ಆಯತ್‌ಗಳಲ್ಲಿ ಒಂದೆಂದು ಹೇಳಿದರು.';

  @override
  String get tasbihatDuaSalawatTitle => 'ಸಲವಾತ್';

  @override
  String get tasbihatDuaSalawatWhen =>
      'ಪ್ರತಿ ನಮಾಝ್ ನಂತರ · ಎಲ್ಲಾ ದುವಾಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸುತ್ತದೆ';

  @override
  String get tasbihatDuaSalawatSource => 'ಇಮಾಮ್ ಅಲ್-ಸಾದಿಕ್ (a) — ಅಲ್-ಕಾಫಿ';

  @override
  String get tasbihatDuaSalawatNote =>
      'ಪ್ರವಾದಿ ﷺ ಮತ್ತು ಅವರ ಪರಿಶುದ್ಧ ಕುಟುಂಬದ (ಆಲ್ ಮುಹಮ್ಮದ್) ಮೇಲೆ ಸಲವಾತ್ ಕಳುಹಿಸುವುದು ಪ್ರತಿ ದುವಾವನ್ನು ಪೂರ್ಣಗೊಳಿಸಲು ಶಿಫಾರಸು ಮಾಡಲಾಗಿದೆ. ಇಮಾಮ್ ಅಲ್-ಸಾದಿಕ್ (a) ಹೇಳಿದರು: \"ನೀನು ಮುಹಮ್ಮದ್ ಮತ್ತು ಅವರ ಕುಟುಂಬದ ಮೇಲೆ ಸಲವಾತ್ ಕಳುಹಿಸುವವರೆಗೆ ಯಾವುದೇ ದುವಾ ಸ್ಥಗಿತವಾಗಿರುತ್ತದೆ.\"';

  @override
  String get tasbihatDuaFarajTitle => 'ದುಆ ಅಲ್-ಫರಜ್';

  @override
  String get tasbihatDuaFarajWhen => 'ಪ್ರತಿ ನಮಾಝ್ ನಂತರ · ನಮ್ಮ ಕಾಲದ ಇಮಾಮ್‌ಗಾಗಿ';

  @override
  String get tasbihatDuaFarajSource =>
      'ಇಮಾಮ್ ಅಲ್-ಹಸನ್ ಅಲ್-ಅಸ್ಕರಿ (a) ಕಲಿಸಿದ್ದಾರೆ';

  @override
  String get tasbihatDuaFarajNote =>
      'ಹನ್ನೆರಡನೇ ಇಮಾಮ್ ಇಮಾಮ್ ಅಲ್-ಮಹ್ದಿ (af) ಅವರ ಮರುಪ್ರತ್ಯಕ್ಷತೆಗಾಗಿ ಮಾಡುವ ದುವಾ, ಇದನ್ನು ಅವರ ತಂದೆ ಕಲಿಸಿದರು. ಜೀವಂತ ಇಮಾಮ್‌ನ ಭಕ್ತಿಯ ಕೃತ್ಯವಾಗಿ ಶಿಯಾ ಭಕ್ತರು ಪ್ರತಿದಿನ ಪ್ರತಿ ನಮಾಝ್ ನಂತರ ಇದನ್ನು ಪಠಿಸುತ್ತಾರೆ.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'ಸಯ್ಯಿದಾ ಫಾತಿಮಾರ ತಸ್ಬೀಹ್';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'ಮಘ್ರಿಬ್ ಮತ್ತು ಇಶಾ ನಂತರ · ವಿಶೇಷವಾಗಿ ಶಿಫಾರಸು ಮಾಡಲಾಗಿದೆ';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ಇಮಾಮ್ ಅಲ್-ಬಾಕಿರ್ (a) — ಬಿಹಾರ್ ಅಲ್-ಅನ್ವಾರ್';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ಇಮಾಮ್ ಅಲ್-ಬಾಕಿರ್ (a) ಅವರು, ಇಶಾ ನಂತರ ಮಲಗುವ ಮೊದಲು ತಸ್ಬೀಹ್ ಅಲ್-ಜಹ್ರಾ ಪಠಿಸುವುದು 1000 ರಕಅತ್ ನಫ್ಲ್ ನಮಾಝ್‌ಗಿಂತ ಉತ್ತಮ ಎಂದು ಹೇಳಿದರು. ಅದರ ಬೆಳಕು ಆಕಾಶಗಳಿಗೆ ಏರುತ್ತದೆ.';

  @override
  String get tasbihFatimaGiftPre => 'ಪ್ರವಾದಿಯವರಿಂದ ಒಂದು ಉಡುಗೊರೆ';

  @override
  String get tasbihFatimaGiftPost => 'ಪ್ರತಿ ನಮಾಝ್ ನಂತರ ಪಠಿಸಲಾಗುತ್ತದೆ';

  @override
  String get prayerTrackerTitle => 'ನಮಾಝ್ ಟ್ರ್ಯಾಕರ್';

  @override
  String get prayerTrackerPrayed => 'ನಮಾಝ್ ಮಾಡಿದೆ';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ದಿನಗಳ ಸರಣಿ';
  }

  @override
  String get prayerTrackerAllComplete =>
      'ಇಂದಿನ ಎಲ್ಲಾ ನಮಾಝ್‌ಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ. ಅಲ್ಲಾಹ ಸ್ವೀಕರಿಸಲಿ.';

  @override
  String get dhikrTrackerTitle => 'ತಸ್ಬೀಹ್ ಅಲ್-ಜಹ್ರಾ';

  @override
  String get dhikrTrackerCompletedToday => 'ಇಂದು ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get dhikrTrackerNotDoneToday => 'ಇಂದು ಮಾಡಿಲ್ಲ';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ದಿನಗಳ ಸರಣಿ';
  }

  @override
  String get dhikrReminderTitle => 'ತಸ್ಬೀಹ್ ಸ್ಮರಣೆ';

  @override
  String get dhikrReminderDescription =>
      'ನಿಮ್ಮ ತಸ್ಬೀಹ್ ಅಲ್-ಜಹ್ರಾ (SA) ಪಠಿಸಲು ಸೌಮ್ಯ ದೈನಂದಿನ ಸ್ಮರಣೆ.';

  @override
  String get dhikrReminderEnable => 'ತಸ್ಬೀಹ್ ಸ್ಮರಣೆಯನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get dhikrReminderTimeLabel => 'ಸ್ಮರಣೆ ಸಮಯ';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'ದೈನಂದಿನ ಹದೀಸ್';

  @override
  String get hadithLabelArabic => 'ಅರಬಿ';

  @override
  String get hadithLabelTranslation => 'ಅನುವಾದ';

  @override
  String get hadithBadge => 'ಹದೀಸ್';

  @override
  String get hadithShare => 'ಈ ಹದೀಸ್ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara ಮೂಲಕ';
  }

  @override
  String get hadithNavPrevious => 'ಹಿಂದಿನದು';

  @override
  String get hadithNavNext => 'ಮುಂದಿನದು';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 ಮಾಸೂಮೀನ್';

  @override
  String get imamsScreenSubtitle =>
      'ಪ್ರವಾದಿ, ಸಯ್ಯಿದಾ ಫಾತಿಮಾ ಮತ್ತು ಹನ್ನೆರಡು ಇಮಾಮರು — ಇಸ್ಲಾಂನ ದೋಷರಹಿತ ಮಾರ್ಗದರ್ಶಕರು';

  @override
  String get imamLabelBorn => 'ಜನನ';

  @override
  String get imamLabelMartyrdom => 'ಶಹಾದತ್';

  @override
  String get imamLabelStatus => 'ಸ್ಥಿತಿ';

  @override
  String get imamSectionBiography => 'ಜೀವನಚರಿತ್ರೆ';

  @override
  String get imamSectionFamousSaying => 'ಪ್ರಸಿದ್ಧ ಮಾತು';

  @override
  String get imamRoleProphet => 'ಅಂತಿಮ ಪ್ರವಾದಿ';

  @override
  String get imamRoleInfallible => 'ದೋಷರಹಿತರು';

  @override
  String get imamOrdinal1 => '1ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal2 => '2ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal3 => '3ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal4 => '4ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal5 => '5ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal6 => '6ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal7 => '7ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal8 => '8ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal9 => '9ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal10 => '10ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal11 => '11ನೇ ಇಮಾಮ್';

  @override
  String get imamOrdinal12 => '12ನೇ ಇಮಾಮ್';

  @override
  String get duaAudioScreenTitle => 'ದುವಾಗಳನ್ನು ಆಲಿಸಿ';

  @override
  String get duaAudioScreenSubtitle =>
      'ಆಲಿಸಲು ಒಂದು ದುವಾವನ್ನು ಆಯ್ಕೆಮಾಡಿ. ಪ್ಲೇ ಅಥವಾ ಪಾಸ್ ಮಾಡಲು ಟೈಲ್ ಅನ್ನು ತಟ್ಟಿರಿ.';

  @override
  String get duaAudioComingSoonMessage =>
      'ಈ ದುವಾದ ಆಡಿಯೊ ಮುಂದಿನ ನವೀಕರಣದಲ್ಲಿ ಲಭ್ಯವಾಗುತ್ತದೆ.';

  @override
  String get duaAudioClose => 'ಮುಚ್ಚಿ';

  @override
  String get duaAudioError =>
      'ಆಡಿಯೊವನ್ನು ಲೋಡ್ ಮಾಡಲಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get duaAudioMetaTransmittedBy => 'ಹೇಳಿಕೊಟ್ಟವರು';

  @override
  String get duaAudioMetaOccasion => 'ಸಂದರ್ಭ';

  @override
  String get duaAudioMetaDuration => 'ಅವಧಿ';

  @override
  String get quickActionDailyHadith => 'ದೈನಂದಿನ ಹದೀಸ್';

  @override
  String get quickAction14Masumeen => '14 ಮಾಸೂಮೀನ್';

  @override
  String get quickActionListenDuas => 'ಆಲಿಸಿ';

  @override
  String get quickActionTasbihat => 'ನಮಾಝ್ ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get pilgrimageSectionTitle => 'ಪವಿತ್ರ ಪ್ರಯಾಣ';

  @override
  String get pilgrimageSectionSubtitle =>
      'ಹಜ್ ಮತ್ತು ಉಮ್ರಾ ಬಗ್ಗೆ ಸಂಪೂರ್ಣ ಮಾರ್ಗದರ್ಶಿಗಳು — ಮಕ್ಕಾದಲ್ಲಿರುವ ಅಲ್ಲಾಹನ ಪವಿತ್ರ ಗೃಹಕ್ಕೆ ಯಾತ್ರೆ';

  @override
  String get hajjCardTitle => 'ಹಜ್';

  @override
  String get hajjCardSubtitle => 'ಇಸ್ಲಾಂನ ಐದನೇ ಸ್ತಂಭ';

  @override
  String get hajjCardDescription =>
      'ಮಹಾನ್ ವಾರ್ಷಿಕ ಯಾತ್ರೆ — ಸಾಮರ್ಥ್ಯ ಹೊಂದಿರುವ ಪ್ರತಿಯೊಬ್ಬ ಮುಸ್ಲಿಮನಿಗೂ ಜೀವನದಲ್ಲಿ ಒಮ್ಮೆ ಕಡ್ಡಾಯ';

  @override
  String get hajjScreenTitle => 'ಹಜ್ ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get hajjScreenSubtitle => 'ಮಹಾನ್ ಯಾತ್ರೆಗೆ ಹಂತ-ಹಂತದ ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get umrahCardTitle => 'ಉಮ್ರಾ';

  @override
  String get umrahCardSubtitle => 'ಸಣ್ಣ ಯಾತ್ರೆ';

  @override
  String get umrahCardDescription =>
      'ವರ್ಷದ ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ನೆರವೇರಿಸಬಹುದಾದ ಅತ್ಯಂತ ಫಲಪ್ರದ ಆತ್ಮೀಯ ಪ್ರಯಾಣ';

  @override
  String get umrahScreenTitle => 'ಉಮ್ರಾ ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get umrahScreenSubtitle => 'ಸಣ್ಣ ಯಾತ್ರೆಗೆ ಹಂತ-ಹಂತದ ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get pilgrimageStepsTitle => 'ಆಚಾರಗಳು ಮತ್ತು ಹಂತಗಳು';

  @override
  String get pilgrimageImportantNotesTitle => 'ಮುಖ್ಯ ಟಿಪ್ಪಣಿಗಳು';

  @override
  String get pilgrimageDuaTitle => 'ಈ ಹಂತಕ್ಕೆ ದ��ಆ';

  @override
  String get pilgrimageJafariNoteTitle => 'ಜಾಫರಿ ಫಿಕ್ಹ್ ಟಿಪ್ಪಣಿ';

  @override
  String get pilgrimageComplete => '✓ ಸಂಪೂರ್ಣ';

  @override
  String get pilgrimageMarkDone => 'ಪೂರ್ಣವಾಗಿದೆ ಎಂದು ಗುರುತಿಸಿ';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total ಹಂತಗಳಲ್ಲಿ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes ನಿಮಿಷ';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ಶಿಯಾ ಯಾತ್ರಿಕರು';

  @override
  String get pilgrimageShiaNoteBody =>
      'ಶಿಯಾ ಯಾತ್ರಿಕರು ಸಾಮಾನ್ಯವಾಗಿ ಮದೀನಾಕೂ ಪ್ರಯಾಣಿಸಿ, ಮಸ್ಜಿದ್ ಅಲ್-ನಬವಿಯಲ್ಲಿ ಪ್ರವಾದಿ ಮುಹಮ್ಮದ್ (SAW) ಅವರ ಸಮಾಧಿ ಮತ್ತು ಜನ್ನತ್ ಅಲ್-ಬಕೀದಲ್ಲಿ ಇರುವ ಇಮಾಮರ ಸಮಾಧಿಗಳನ್ನು ಭೇಟಿಮಾಡುತ್ತಾರೆ. ಈ ಭೇಟಿಗಳು ಅಪಾರ ಆತ್ಮೀಯ ಮಹತ್ವವನ್ನು ಹೊಂದಿವೆ ಮತ್ತು ಹೆಚ್ಚಿನ ಶಿಯಾ ಮುಸ್ಲಿಮರಿಗೆ ಈ ಯಾತ್ರೆಯ ಅವಿಭಾಜ್ಯ ಭಾಗವೆಂದು ಪರಿಗಣಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get hajjIntro =>
      'ಹಜ್ ಇಸ್ಲಾಂನ ಐದನೇ ಸ್ತಂಭವಾಗಿದ್ದು, ದೈಹಿಕ ಮತ್ತು ಆರ್ಥಿಕವಾಗಿ ಸಾಮರ್ಥ್ಯ ಹೊಂದಿರುವ ಪ್ರತಿಯೊಬ್ಬ ಮುಸ್ಲಿಮನಿಗೂ ಜೀವನದಲ್ಲಿ ಒಮ್ಮೆ ಕಡ್ಡಾಯವಾಗಿದೆ. ಧುಲ್ ಹಿಜ್ಜಾ ತಿಂಗಳಲ್ಲಿ ನೆರವೇರಿಸಲ್ಪಡುವ ಇದು ಪ್ರವಾದಿ ಇಬ್ರಾಹಿಂ (AS), ಅವರ ಪುತ್ರ ಇಸ್ಮಾಯೀಲ್ (AS) ಮತ್ತು ಸಯ್ಯಿದಾ ಹಾಜರ್ ಅವರ ಹೆಜ್ಜೆಗುರುತುಗಳನ್ನು ಅನುಸರಿಸುತ್ತದೆ. ಶಿಯಾ ಮುಸ್ಲಿಮರಿಗೆ, ಹಜ್ ಮದೀನಾದಲ್ಲಿ ಪ್ರವಾದಿ (SAW) ಮತ್ತು ಅಹ್ಲುಲ್ ಬೈತ್ ಅವರ ವಿಶ್ರಾಂತಿ ಸ್ಥಳಗಳನ್ನು ಭೇಟಿಮಾಡುವ ಗಾಢವಾದ ಆಶೀರ್ವಾದವನ್ನೂ ಒಳಗೊಂಡಿದೆ.';

  @override
  String get umrahIntro =>
      'ಉಮ್ರಾ ಮಕ್ಕಾಗೆ ಮಾಡುವ ಸಣ್ಣ ಯಾತ್ರೆಯಾಗಿದ್ದು, ಹಜ್‌ಗೆ ವಿರುದ್ಧವಾಗಿ, ವರ್ಷದ ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ನೆರವೇರಿಸಬಹುದು. ಅದು ಕಡ್ಡಾಯವಲ್ಲದಿದ್ದರೂ, ಅಪಾರ ಆತ್ಮೀಯ ಪ್ರತಿಫಲವನ್ನು ಹೊತ್ತು ತರುತ್ತದೆ ಮತ್ತು ಬಹಳ ಶಿಫಾರಸು ಮಾಡಿದ ಇಬಾದತ್ ಎಂದು ಪರಿಗಣಿಸಲಾಗುತ್ತದೆ. ಇದು ಹಜ್‌ನೊಂದಿಗೆ ಅನೇಕ ಆಚರಣೆಗಳನ್ನು ಹಂಚಿಕೊಂಡರೂ, ನಾಲ್ಕು ಮುಖ್ಯ ವಿಧಿಗಳನ್ನು ಒಳಗೊಂಡಿರುವುದರಿಂದ ಹೆಚ್ಚು ಚಿಕ್ಕದಾಗಿದೆ.';
}
