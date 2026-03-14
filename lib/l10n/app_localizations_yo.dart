// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsYo extends AppLocalizations {
  AppLocalizationsYo([String locale = 'yo']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Yan àwọn ède';

  @override
  String get languageSelectSub => 'O lè yí ẹ̀padà nípa sísiyi nínú Àwọn Ìsètò';

  @override
  String get actionContinue => 'Tẹ̀síwájú';

  @override
  String get languageSuggestedHeader => 'A gba ní gara';

  @override
  String get languageAllHeader => 'Gbogbo àwọn ède';

  @override
  String get languageSuggestedBadge => 'A gba ní gara';

  @override
  String get languageSearchHint => 'Wá…';

  @override
  String get planBasic => 'Aṣàkoso';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Itọ́n Ọjọ́';

  @override
  String get categorySlot02 => 'Ìmọ̀ & Igbẹ́kẹ̀lẹ̀';

  @override
  String get categorySlot03 => 'Ròyìn Àdúrà';

  @override
  String get categorySlot04 => 'Sùúrù & Ìrètí';

  @override
  String get categorySlot05 => 'Béèrè Ìdápadà';

  @override
  String get categorySlot06 => 'Àánú & Ìfẹ́';

  @override
  String get categorySlot07 => 'Ìmọ̀ & Agbára';

  @override
  String get categorySlot08 => 'Ọkàn Gbàdálìkò';

  @override
  String get categorySlot09 => 'Ìtumọ̀ Ègbẹ̀';

  @override
  String get categorySlot10 => 'Àsopọ̀ Ẹ̀yà';

  @override
  String get categorySlot11 => 'Àlàáfía Inú';

  @override
  String get categorySlot12 => 'Ogbọ́n Nàbí';

  @override
  String get categorySlot13 => 'İṣẹ́ Dáradára';

  @override
  String get categorySlot14 => 'Dena Ìrànlọ́wọ̀';

  @override
  String get categorySlot15 => 'Dhikr Àalẹ̀';

  @override
  String get categoryCustom => 'Ròyìn Ara';

  @override
  String get dhikrMeaningSubhanallah => 'Ògo nìyí ní Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Gbogbo ìyìn ni f\'ọ́ Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah nìyí òga tó jù';

  @override
  String get quranVerseHeartAtRest =>
      'Dájú dé! Nínú ìpẹ́kúpẹ̀ Allah ni àwọn ọkàn máa rí ìsinmi.';

  @override
  String get promptHint => 'Tẹ́ kat\'ẹgóri kan fún ìtọ́sọ́ Islam àti ìròyìn';

  @override
  String get currentLanguage => 'Ède tó ń lò báyìí';

  @override
  String get settingsLanguage => 'Àwọn ìsètò ède';

  @override
  String get settingsTitle => 'Àwọn Ìsètò';

  @override
  String get chooseLanguage => 'Yan ède rẹ';

  @override
  String get continueCta => 'Tẹ̀síwájú';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count àwọn ọ̀rọ̀',
      one: '$count ọ̀rọ̀',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Àwọn àyè';

  @override
  String get newCta => 'Tìun';

  @override
  String get actionsTitle => 'Kílò ni o fẹ́ láti ṣe?';

  @override
  String get copy => 'Dá kọ́píì';

  @override
  String get share => 'Pìnpín';

  @override
  String get close => 'Tí';

  @override
  String get copiedToast => 'A dá kọ́píì sínú ìbọ̀';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'A kò lè ṣe àdáhùn tìun';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nSe o fẹ́ láti gbìyànjú sibẹ̀?';
  }

  @override
  String get cancelCta => 'Fẹ́kúfẹ́';

  @override
  String get retryCta => 'Gbìyànjú mọ́';

  @override
  String get authTitle => 'Ṣẹ̀dá àkáùnt rẹ';

  @override
  String get continueAsGuest => 'Tẹ̀síwájú báìgbesẹ́';

  @override
  String get signInGoogle => 'Wọlé nípa Google';

  @override
  String get signInApple => 'Wọlé nípa Apple';

  @override
  String get signInEmail => 'Wọlé nípa Imeèlì';

  @override
  String get upgradeWithApple => 'Tẹ̀síwájú nípa Apple';

  @override
  String get mustAccept =>
      'O nílò láti gba Àwọn Òfin àti díè nínú Ìfipamọ́ Ìkòkò.';

  @override
  String get termsLabel => 'Mo gba Àwọn Òfin Ìlò';

  @override
  String get privacyLabel => 'Mo ti ka Ìfipamọ́ Ìkòkò';

  @override
  String get marketingOptIn => 'Mo ní àlùbọ́sá láti gba ìròyìn àti àwọn àbájọ';

  @override
  String get openTerms => 'Àwọn Òfin Ìlò';

  @override
  String get openPrivacy => 'Ìfipamọ́ Ìkòkò';

  @override
  String get accountSection => 'Àkáùnt';

  @override
  String get guestMode => 'Ọ̀nà báìgbesẹ́';

  @override
  String get signedIn => 'A wọlé';

  @override
  String get upgradeHint =>
      'Tọ́jú àwọn ìròyìn rẹ ní búburú ọ̀pọ̀ nípa ṣíṣẹ̀dá àkáùnt.';

  @override
  String get upgradeWithGoogle => 'Tẹ̀síwájú nípa Google';

  @override
  String get signOut => 'Jáde nítòó';

  @override
  String get snackUpgraded => 'Àkáùnt ìlọ́kù nípa Google ✅';

  @override
  String get snackSignedIn => 'A wọlé nípa Google ✅';

  @override
  String get snackSignedOut => 'A jáde nítòó';

  @override
  String get snackSignedInApple => 'A wọlé nípa Apple ✅';

  @override
  String get snackSignedInGoogle => 'A wọlé nípa Google ✅';

  @override
  String get snackUpgradedApple => 'Àkáùnt ìlọ́kù nípa Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Àkáùnt ìlọ́kù nípa Google ✅';

  @override
  String get historyTitle => 'Àwọn ìròyìn tó kọjá';

  @override
  String get historyOpenCta => 'Àwọn ìròyìn tó kọjá';

  @override
  String get historyEmpty => 'Àkọ́kọ́ àwọn ìròyìn tí a tọ́jú.';

  @override
  String get historyDeleteTitle => 'Ṣọ̀ ìròyìn?';

  @override
  String get historyDeleteBody => 'Eyi yìò mú nínú àwọn ohun tó yan dítélẹ́.';

  @override
  String get deleteCta => 'Ṣọ̀';

  @override
  String get historyButton => 'Àwọn Ìròyìn tó Kọjá';

  @override
  String get historyEmptyTitle => 'Àkọ́kọ́ ìròyìn';

  @override
  String get historyEmptyBody =>
      'Ṣe ohun ìkan ní akọ́kọ́ — àwọn ohun tí a tọ́jú yìò han ibẹ̀.';

  @override
  String get historyDelete => 'Ṣọ̀';

  @override
  String get footerTitle => 'Nípa Wilaya, Ìmọ̀ àti Sùúrù';

  @override
  String get footerSubtitle => 'Okan àdúrà ní àwọn ìgbà';

  @override
  String get genericErrorSnack =>
      'Àsìṣe kan ṣẹlẹ̀ — jọ̀wọ́ gbìyànjú nípa ìgbà díẹ̀.';

  @override
  String get upgradeAccountCta =>
      'Tọ́jú àwọn ìròyìn rẹ ní búburú ọ̀pọ̀ – ṣẹ̀dá àkáùnt';

  @override
  String get deleteAccount => 'Ṣọ̀ àkáùnt';

  @override
  String get exportData => 'Ṣe àṣeàlà dátà mi';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Daradara nífẹ̀ẹ́ 🐯\nAyara nílò ìgbà díẹ̀ tẹ́lẹ̀…';

  @override
  String get rateDailyLimit =>
      'O dákú nínú ìròyìn fún báyìí.\nGba ìròyìn tìun tàbí ìlọ́kù sí Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'O ti lo gbogbo ìròyìn rẹ.\nFá wọ̀n sísú tàbí ìlọ́kù sí Wilaya.';

  @override
  String get rateGraceCreditsExhausted =>
      'O dákú nínú ìròyìn.\nGba ìròyìn tìun tàbí ìlọ́kù sí Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya máa ṣí àwọn ẹ̀kọ́ ìgbìmọ̀, àwọn àgbakọ tìun, àti baàjìjì kán pàtàkì.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Àwọn ìròyìn rẹ kò jẹ́ báyìí. Ètò: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'A kò lè ṣàyẹ̀wò àwọn ìròyìn rẹ: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Àsìṣe kan ṣẹlẹ̀ nígbà ìṣàyẹ̀wò àwọn ìròyìn rẹ.';

  @override
  String get aiFallbackGeneric =>
      'Àsìṣe kan ṣẹlẹ̀ — jọ̀wọ́ gbìyànjú nípa ìgbà díẹ̀.';

  @override
  String get limitSectionTitle => 'Àwọn Ìròyìn';

  @override
  String get limitTodayLabel => 'Lílò';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Àwọn ìròyìn tó ku: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Ètò: $plan';
  }

  @override
  String get limitLoadingLabel => 'A ń loàdù…';

  @override
  String get limitLoadingLabelDescription =>
      'Á fihàn nínú káàdì ìròyìn nígbà tí àwọn àdákọ lílò ń yẹ̀rọ̀.';

  @override
  String get aiLimitTitle => 'Àwọn Ìròyìn';

  @override
  String get aiLimitSubtitle =>
      'Àdáhùn ẹ̀nìkọ́ kan lo àwọn ìròyìn 1. Aṣàkoso ni àwọn ìròyìn ibẹ̀rẹ̀. Wilaya máa ṣí àwọn àgbakọ ìgbìmọ̀ àti fúnilọ́rọ̀ fá wọ̀n sísú.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total àwọn ìròyìn tí a lo';
  }

  @override
  String get creditsSectionTitle => 'Àwọn Ìròyìn';

  @override
  String get creditsUsageLabel => 'Lílò';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Àwọn ìròyìn tó ku: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Ètò: $plan';
  }

  @override
  String get creditsLoadingLabel => 'A ń loàdù…';

  @override
  String get creditsLoadingLabelDescription =>
      'Á fihàn nígbà tí àwọn àdákọ ìròyìn ń yẹ̀rọ̀.';

  @override
  String get creditsTitle => 'Àwọn Ìròyìn';

  @override
  String get creditsSubtitle =>
      'Àdáhùn ẹ̀nìkọ́ kan lo àwọn ìròyìn 1. Aṣàkoso ni àwọn ìròyìn ibẹ̀rẹ̀. Wilaya máa ṣí àwọn àgbakọ ìgbìmọ̀ àti fúnilọ́rọ̀ fá wọ̀n sísú.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total àwọn ìròyìn tí a lo';
  }

  @override
  String get settingsDeleteTitle => 'Ṣọ̀ àkáùnt';

  @override
  String get settingsDeleteDescription =>
      'Ṣọ̀ àkáùnt rẹ àti gbogbo dátà tó jọ pẹ̀lú.';

  @override
  String get settingsDeleteButtonLabel => 'Ṣọ̀ àkáùnt mi';

  @override
  String get settingsDeleteDialogTitle => 'Ṣọ̀ àkáùnt?';

  @override
  String get settingsDeleteDialogBody =>
      'Iṣẹ́ yìí nìkan wípé a kò lè í padà síi.\n\nGbogbo chat, ìtàn àti àkáùnt àkọ́kọ́ rẹ yìò ṣọ̀.';

  @override
  String get settingsDeleteDialogCancel => 'Fẹ́kúfẹ́';

  @override
  String get settingsDeleteDialogConfirm => 'Ṣọ̀';

  @override
  String get settingsFreeLimitUsedTitle => 'Àwọn ìròyìn ibẹ̀rẹ̀ tí a lo';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Àwọn ìròyìn ibẹ̀rẹ̀ fún ìkánnì yìí ti lo. Ìlọ́kù sí Wilaya tàbí rá ìròyìn tìun.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Àwọn ìròyìn ibẹ̀rẹ̀ tí a lo';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Àwọn ìròyìn ibẹ̀rẹ̀ fún ìkánnì yìí ti lo. Ìlọ́kù sí Wilaya tàbí rá ìròyìn tìun.';

  @override
  String get deviceBoundError =>
      'Ìkánnì yìí ti jọ pẹ̀lú àkáùnt mìíràn. Jọ̀wọ́ wọlé nípa àkáùnt ibẹ̀rẹ̀.';

  @override
  String get premiumTitle => 'Ọ̀nà Wilaya';

  @override
  String get premiumSubtitleBasic => 'Ṣí oríṣìríṣì Ayara tí ó jẹ́ ọ̀pọ̀.';

  @override
  String get premiumSubtitlePremium =>
      'O wà ní Wilaya. Njẹ́ o nílò àwọn ìròyìn díẹ̀?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Ètò tó ń lò báyìí: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Àwọn Ìròyìn: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Àwọn ìrànwọ́ kò jẹ́ pé ní báyìí.';

  @override
  String get premiumSignInToPurchase =>
      'Wọlé láti rá àwọn ìròyìn tàbí ṣí Wilaya.';

  @override
  String get premiumRestorePurchases => 'Ìtúnmo àwọn ìrànwọ́';

  @override
  String get premiumProcessing => 'A ń ṣẹ̀dá…';

  @override
  String get premiumRestoreHintTitle =>
      'Se o ti rá Wilaya tàbí àwọn ìròyìn ní ìkánnì yìí tàbí òmìíràn?';

  @override
  String get premiumRestoreHintBody =>
      'Ìtúnmo àwọn ìrànwọ́ rẹ tí wọ́n kò rìn ṣoṣo.';

  @override
  String get premiumBuyCredits200 => 'Rá ìròyìn 200';

  @override
  String get premiumBuyCredits400 => 'Rá ìròyìn 400';

  @override
  String get premiumBecomePremiumOneTime => 'Ìlọ́kù sí Wilaya';

  @override
  String get premiumTopupHint =>
      'Nípa Wilaya, o lè rá ìròyìn tìun nígbà tí o nílò.';

  @override
  String get premiumUpgradeCta => 'Ìlọ́kù';

  @override
  String get premiumRequiredForCategory =>
      'Kát\'ẹgóri yìí dúró f\'ọ́ àwọn ọ̀ràn Wilaya nìkan. Ìlọ́kù nínú Àwọn Ìsètò.';

  @override
  String get premiumBenefitsBasic =>
      'Ṣí Wilaya láti gba àwọn ìròyìn tìun, loò sí àwọn àgbakọ ìgbìmọ̀, àti jáde nípa ibadandun.';

  @override
  String get premiumBenefitsPremium =>
      'O wà nínú ọ̀nà Wilaya. Tí o kò nígbà púpọ̀, kun ìròyìn tìun àti jáde nípa ìdápadà.';

  @override
  String get premiumButtonBecomePremium => 'Ṣí Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Kun ìròyìn 1000';

  @override
  String get premiumBadge => 'Wilaya nṣiṣẹ́';

  @override
  String get premiumLoadingStore => 'A ń loàdù itọ́ọ̀…';

  @override
  String get premiumProductNotAvailable =>
      'Ohun ìwáare yìí kò jẹ́ ní itọ́ọ̀ nípa báyìí. Jọ̀wọ́ gbìyànjú nípa ìgbà kẹ̀yìn.';

  @override
  String get premiumPurchaseError =>
      'Àsìṣe kan ṣẹlẹ̀ nípa ìrànwọ́. Jọ̀wọ́ gbìyànjú mọ́.';

  @override
  String get premiumBuyCredits100 => 'Kun ìròyìn 100';

  @override
  String get premiumFeatureLocked => 'Ṣí Wilaya láti loò sí ẹ̀kọ́ yìí.';

  @override
  String get lockedCategoriesHint =>
      'Àwọn àgbakọ díẹ̀ dúró f\'ọ́ àwọn ọ̀ràn Wilaya. Ṣí wọn.';

  @override
  String get freePlanBlockedTitle => 'O lo àwọn ìròyìn ibẹ̀rẹ̀';

  @override
  String get freePlanBlockedBody =>
      'O wà ní ètò Aṣàkoso nípa àwọn ìròyìn ibẹ̀rẹ̀, ó ti dé òpin. Láti jáde — àti ṣí àwọn àgbakọ ìgbìmọ̀ — ìlọ́kù sí Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Wo àwọn àyè Wilaya níìsalẹ̀';

  @override
  String get graceBlockedTitle => 'O lo àwọn ìròyìn ibẹ̀rẹ̀';

  @override
  String get graceBlockedBody =>
      'O wà ní ètò Aṣàkoso nípa àwọn ìròyìn ibẹ̀rẹ̀, ó ti dé òpin. Láti jáde — àti ṣí àwọn àgbakọ ìgbìmọ̀ — ìlọ́kù sí Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Wo àwọn àyè Wilaya níìsalẹ̀';

  @override
  String get rateGuestMustSignIn =>
      'Wọlé láti loò sí Ayara àti àwọn ìròyìn rẹ.';

  @override
  String get guestNoCreditsTitle => 'Ọ̀nà báìgbesẹ́';

  @override
  String get guestNoCreditsBody =>
      'Báìgbesẹ́ o lè wo app, ṣùgbọ́n o kò lè lo ìròyìn. Wọlé nípa sísiyi nínú Àwọn Ìsètò.';

  @override
  String get guestDialogContinue => 'Tẹ̀síwájú';

  @override
  String get guestDialogLoginInstead => 'Wọlé dípò';

  @override
  String get optionalLabel => 'o ṣe pataki kò rọ́ níí';

  @override
  String get accountDeleteSuccessTitle => 'Àkáùnt ṣọ̀';

  @override
  String get accountDeleteSuccessBody =>
      'Àkáùnt rẹ àti dátà tó jọ pẹ̀lú ti ṣọ̀ dáadáa.';

  @override
  String get accountDeleteSuccessClose => 'Tí';

  @override
  String get accountDeleteErrorTitle => 'A kò lè ṣọ̀ àkáùnt';

  @override
  String get accountDeleteErrorClose => 'Dákẹ́';

  @override
  String get accountDeleteReauthCancelled =>
      'A ègbè lófin dìde tún. Jọ̀wọ́ wọlé mọ́ àti gbìyànjú ṣọ̀.';

  @override
  String get accountDeleteReauthRequired =>
      'Ṣọ̀ àkáùnt nílò ìgbèkọ̀ẹ̀lọ̀ nípa àkokò tó kàn. Jọ̀wọ́ jáde, wọlé mọ́, àti gbìyànjú.';

  @override
  String get settingsDeletePermanentWarning =>
      'Iṣẹ́ yìí nìkan àti kò lè padà síi. Gbogbo dátà tó jọ nípa àkáùnt rẹ yìò ṣọ̀.';

  @override
  String get dailyGraceTitle => 'Itọ́n Ọjọ́';

  @override
  String get dailyGraceScriptureLabel => 'ÀRÌN ỌJỌ́';

  @override
  String get dailyGraceSaintLabel => 'ẸNI TÓ WÀ LỌ́WỌ́ Ọ̀SẸ̀';

  @override
  String get dailyGraceReflectionLabel => 'ÌRÒYÌN ÀALẸ̀';

  @override
  String get dailyGraceCopiedToast => 'Àrìn dá kọ́píì';

  @override
  String get locationConsentLabel =>
      'Fún Ayara lagba nípa ibùjókó mi fún ìtọ́sọ́ Qibla àti àkókò àdúrà';

  @override
  String get locationConsentHint =>
      'Lílò nìkan f\'ọ́ àwọn ẹ̀kọ́ yìí. Ibùjókó rẹ á rò síi tàbí tẹ̀jú.';

  @override
  String get askPageTitle => 'Béèrè Ayara';

  @override
  String get askPageDescription =>
      'Béèrè nipa ìmọ̀, àdúrà, ègbẹ̀, tàbí iṣẹ́ Islam àti gba itọ́sọ́ tó jẹ́ irú Qur\'ān àti àwọn ẹ̀kọ́ Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Tẹ́ ibéèrè rẹ ibẹ̀…';

  @override
  String get askPageSubmitCta => 'Béèrè';

  @override
  String get askPageInputEmptyError => 'Jọ̀wọ́ kọ ibéèrè kan.';

  @override
  String get askResultYourQuestion => 'Ibéèrè rẹ';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Ti íwájú sí Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Yí àjìsímọ̀ rẹ títí tí owó gòóli yìí dúró síwájú.\nItọ́sọ́ yẹ̀n jẹ́ Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Àmì GPS kò láàyè. Jáde sí ita àti tẹ́ Gbìyànjú.';

  @override
  String get qiblaRetry => 'Gbìyànjú';

  @override
  String get qiblaTitle => 'Ìtọ́sọ́ Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km sí Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ibùjókó nílò';

  @override
  String get qiblaLocationNeededBody =>
      'Fún Ayara ọ̀nà láti ṣe àdákọ ìtọ́sọ́ Kaaba ní Makkah kúkúrú ẹ.';

  @override
  String get qiblaOpenSettings => 'Ṣí Àwọn Ìsètò';

  @override
  String get qiblaCompassLoading => 'Wá ibùjókó…';

  @override
  String get qiblaTowardMecca => 'Sí Makkah';

  @override
  String get prayerTimesTitle => 'Àkókò Àdúrà';

  @override
  String get prayerTimesFajr => 'Fajr';

  @override
  String get prayerTimesDhuhr => 'Dhuhr';

  @override
  String get prayerTimesAsr => 'Asr';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Isha';

  @override
  String get prayerTimesLocationNeededTitle => 'Ibùjókó nílò';

  @override
  String get prayerTimesLocationNeededBody =>
      'Fún Ayara ọ̀nà láti ṣe àdákọ àkókò àdúrà dáadáa f\'ọ́ ìlú rẹ.';

  @override
  String get prayerTimesNextLabel => 'Àtúnkọ';

  @override
  String get prayerTimesDoneLabel => 'Ṣẹ';

  @override
  String get monthlyPrayerTimesTitle => 'Àwọn Àkókò Àdúrà Ọ̀ṣù';

  @override
  String get monthlyPrayerTimesViewButton => 'Wo Ọ̀ṣù Gbogbo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Ọ̀ṣù atọ̀ẹ́';

  @override
  String get monthlyPrayerTimesDayHeader => 'Ọjọ́';

  @override
  String get sharePrayerTimes => 'Pìnpín àkókò àdúrà';

  @override
  String get notificationsSectionTitle => 'Àwọn Ìkèdè';

  @override
  String get notificationsSectionSubtitle =>
      'Àkèkọ̀ àdúrà, àwọn ìsẹ̀jú àti àkàn tó pọ̀';

  @override
  String get dailyReflectionReminderTitle => 'Ìròyìn Ọjọ́ kan';

  @override
  String get dailyReflectionReminderDescription =>
      'Àkèkọ̀ ọjọ́ kan ní ènìà láti ṣí Ayara àti jọ pẹ̀lú ìmọ̀ rẹ.';

  @override
  String get dailyReflectionReminderEnable => 'Yè àkèkọ̀ ọjọ́kan';

  @override
  String get dailyReflectionReminderTimeLabel => 'Àkókò àkèkọ̀';

  @override
  String get prayerNotificationsTitle => 'Àkèkọ̀ Àdúrà';

  @override
  String get prayerNotificationsDescription =>
      'Gba àkèkọ̀ ènìà kù ikoko àdúrà kọ̀ọ̀kan.';

  @override
  String get prayerNotificationsEnable => 'Yè àkèkọ̀ àdúrà';

  @override
  String get prayerNotificationsOpenSettings => 'Ṣí Àwọn Ìsètò Ìkèdè';

  @override
  String get prayerNotificationsDenied => 'Àwọn ìkèdè jẹ́ rùbadandùn';

  @override
  String get prayerNotificationsDeniedHint =>
      'Lọ sí Àwọn Ìsètò àti fún Ayara ọ̀nà àkèkọ̀.';

  @override
  String get notificationsConsentLabel => 'Fún àkèkọ̀ f\'ọ́ àkókò àdúrà';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Àdúrà Ọwọ́';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr jẹ́ àdúrà Ọwọ́ tí Ahl al-Bayt gà. Imam Ali (AS) sọ: Ṣọ́ àdúrà àkọ̀kọ̀ gẹ́gẹ́ ohun tí o jẹ́ ẹ̀yìn tó dúro. Dídẹ̀, ṣe òmilóore, àti dúrà sí Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Àdúrà Ọ̀ṣùpá';

  @override
  String get prayerNotifBodyDhuhr =>
      'Àwọn Imam ti Ahl al-Bayt ni àìmọ̀ ọgunjẹ́ àwọn àkókò ìpẹ́kúpẹ̀ kọ̀ọ̀kan. Wo ibadandun rẹ, di Dhuhr pẹ̀lú Asr tí o bá nílò, àti sì gba ọkàn rẹ sí Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Àdúrà Ọsan';

  @override
  String get prayerNotifBodyAsr =>
      'Ṣọ́ àdúrà, nítorí ohun ìjạ̀pá níwájú Allah lo jẹ́. Àkókò Asr ti tèmi — má jẹ́ kí ó kọjá nípa ìpẹ́kúpẹ̀.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Àdúrà Ìtàná';

  @override
  String get prayerNotifBodyMaghrib =>
      'Oòrùn ti tàrá — àkókò tí Ahl al-Bayt ni ọ̀nà gẹ́gẹ́ àdúrà. Gbé Maghrib àti ṣí ọwọ́ rẹ sí Allah nínú ìbéèrè tẹ́lẹ̀ tí àlẹ́ bá bẹ̀rẹ̀.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Àdúrà Àalẹ̀';

  @override
  String get prayerNotifBodyIsha =>
      'Pẹ̀ tẹ́lẹ̀ ọjọ́ rẹ pẹ̀lú Allah. Àwọn Imam gba ìmọ̀ Salat al-Layl lẹ́yìn Isha — ṣùgbọ́n kọ́kọ́, ṣẹ́ Isha àti pẹ̀ ọjọ́ nípa ìpẹ́kúpẹ̀ rẹ̀.';

  @override
  String get outOfReflectionsBannerText => 'O lo gbogbo àwọn ìròyìn rẹ';

  @override
  String get outOfReflectionsBannerCta => 'Gba ìròyìn tìun';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tẹ́ àyíká láti ka';

  @override
  String get dhikrResetButton => 'Tún síilẹ̀';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'O ti ṣẹ́ ìpẹ́kúpẹ̀ Allah 100. Jẹ́kí àwọn yẹn jẹ́ ìyy f\'ọ́ ọkàn rẹ.';

  @override
  String get disclaimerTitle => 'Nípa ìtọ́sọ́ app yìí';

  @override
  String get disclaimerBody =>
      'Ayara pèsè ìròyìn Islam, àkèkọ̀, àti ohun àrí ẹ̀ṣẹ́ láti ràmọ́ ìrìnajo àimọ̀ rẹ, tí ó jẹ́ irú Qur\'ān àti àwọn ẹ̀kọ́ Ahl al-Bayt. Ohun ìwàláyé yìí wà f\'ọ́ àwọn ìtumọ̀ ìkòkò àti ìfẹ́ nìkan.\n\nAyara kò dè àtúnkọ f\'ọ́ èkó.\nÌtọ́sọ́ nínú app yìí kò jẹ́ àmúlò f\'ọ́ èlẹ́ẹ̀kú ìmọ̀ Islam, marja\', tàbí olùkọ́ tí ó ní ìmọ̀. Tí o ní ìbéèrè nípa òfin religion, halal àti haram, tàbí ìwé àimọ̀ religion tìrẹ, jọ̀wọ́ béèrè èlẹ́ẹ̀kú marja\' tàbí èlẹ́ẹ̀kú nínú ìjọ rẹ.\n\nApp yìí kò ṣo òfin religion.\nAyara kò ṣe àpinnu tó ní agbára nìpa àwọn ohun fiqh tàbí àwọn ìwé àimọ̀ religion. Ohun tíkìí ibẹ̀ kò yẹ́ kí a gbẹ́ gẹ́ àwọn fátìwà tàbí ìlànà ìmọ̀.\n\nÌgbìmọ̀ Ahl al-Bayt.\nNínú Islam Shia, Prophet Muhammad ﷺ àti ẹ̀yà rẹ tí ó ní òòfin — Ahl al-Bayt — ni àwọn olùtọ́sọ́ tí Allah fún nílò f\'ọ́ ìjọ Islam lẹ́yìn Qur\'ān. Àwọn Imam mẹ́rìndínlógún ti Ahl al-Bayt jẹ́ àwọn alùbalẹ̀ tí Allah fún nípa ẹ̀kọ́ Islam. Ohun nínú app yìí jẹ́ irú ìmọ̀ yìí àti fẹ́ọ́ gba á.\n\nOhun ìjọ.\nApp yìí fẹ́ jagún ìkúkú àimọ̀ rẹ nígbà tí a ní ìfẹ́ gidi f\'ọ́ ipa ìgbìmọ̀ mosque, àyíká Islam, àti àjọ religion rẹ. A gba o nínú àwọn olùkọ́ tó dùbúlẹ̀ nítòó.';

  @override
  String get disclaimerClose => 'Mo níye';

  @override
  String get disclaimerInfoTooltip => 'Nípa ìtọ́sọ́ app yìí';

  @override
  String get disclaimerSettingsSubtitle =>
      'F\'ọ́ àwọn ìtumọ̀ ìkòkò nìkan. Tẹ́ láti ka àkojọ gbòòrò ìbátan.';

  @override
  String get disclaimerSectionHeader => 'Àkojọ ìtọ́sọ́';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Ròyìn';

  @override
  String get navDuas => 'Àwọn Àdúrà';

  @override
  String get navCalendar => 'Àwọn Ìsẹ̀jú';

  @override
  String get dashboardToday => 'BÁYÌÍ';

  @override
  String get dashboardComingUp => 'Tí òsùwálò';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'àwọn ọjọ́',
      one: 'ọjọ́',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Loò Fura';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Itọ́sọ́';

  @override
  String get quickActionPrayerTimes => 'Àkókò Àdúrà';

  @override
  String get askAyaraTitle => 'Béèrè Ayara';

  @override
  String get askAyaraSubtitle => 'Béèrè ibéèrè Islam àti gba àdáhùn ní àrá.';

  @override
  String get askAyaraHint => 'e.g. Kín ni ìtumọ̀ Ramadan?';

  @override
  String get askAyaraSubmit => 'Béèrè';

  @override
  String get wisdomOfTheDayTitle => 'Ogbọ́n Ọjọ́';

  @override
  String get calendarScreenTitle => 'Àwọn Ìsẹ̀jú Islam';

  @override
  String get calendarUpcomingOccasions => 'Àwọn Ìsẹ̀jú Òsùwálò';

  @override
  String get calendarOccasionRemindersTitle => 'Àkèkọ̀ Ìsẹ̀jú';

  @override
  String get calendarOccasionRemindersHint =>
      'A rìn ìkẹ́ alẹ́ tó kó nìkan ìsẹ̀jú';

  @override
  String get calendarNotifPermissionDenied =>
      'Ìmọ̀ àkèdè nìkan. Fún á nínú àwọn ìsètò ìkánnì.';

  @override
  String get calendarNoEvents => 'Àkọ́kọ́ àwọn ìsẹ̀jú tí a rí.';

  @override
  String get calendarAddToPhone => 'Fi kun Kálẹ́ńdà fún Fóònù';

  @override
  String get calendarAddedToPhone => 'Ti fi kun Kálẹ́ńdà';

  @override
  String get calendarCountdownToday => 'BÁYÌÍ';

  @override
  String get calendarCountdownTomorrow => 'ỌJỌ́ ÀRẸMỌ';

  @override
  String calendarCountdownDays(int days) {
    return 'ní ọjọ́ $days';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ṣẹ̀rẹ̀';

  @override
  String get calendarMonthFeb => 'Ìlérabẹ̀';

  @override
  String get calendarMonthMar => 'Ares';

  @override
  String get calendarMonthApr => 'Sú';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Òwéré';

  @override
  String get calendarMonthJul => 'Adadì';

  @override
  String get calendarMonthAug => 'Ògún';

  @override
  String get calendarMonthSep => 'Sept';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Des';

  @override
  String get calendarSeasonMuharramEarly =>
      'Àwọn ọjọ́ Muharram — rántí Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — àwọn ọjọ́ ìbakú àti ìròyìn';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — àwọn ọjọ́ ṣẹ́ẹ̀ẹ́jọ Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ọ̀nà sí Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — ọ̀ṣùpá ìkétí';

  @override
  String get calendarSeasonMidShaban =>
      'Ọ̀rinṣokan Sha\'ban — ọjọ́ ìbí Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ọ̀ṣù Qur\'ān';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak!';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi\' al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi\' al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Awwal';

  @override
  String get hijriMonth6 => 'Jumada al-Thani';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Sha\'ban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Àwọn Àdúrà & Ziyarat';

  @override
  String get duasSearchHint => 'Wá àwọn àdúrà, ziyarat…';

  @override
  String get duasFilterAll => 'Gbogbo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count àwọn àdúrà & ziyarat',
      one: '$count adúrà',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Àkọ́kọ́ àdúrà.';

  @override
  String get duaCategoryDaily => 'Ọjọ́ kan';

  @override
  String get duaCategoryWeekly => 'Ọ̀sẹ̀ kan';

  @override
  String get duaCategoryOccasions => 'Àwọn Ìsẹ̀jú';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Ìbí';

  @override
  String get eventTypeMartyrdom => 'Ìpàdè';

  @override
  String get eventTypeOccasion => 'Ìsẹ̀jú';

  @override
  String get duaCopyTooltip => 'Dá ìtúmọ̀ kọ́píì';

  @override
  String get duaToggleTransliteration => 'Ìsọfúnni';

  @override
  String get duaToggleTranslation => 'Ìtúmọ̀';

  @override
  String get duaAskAiLabel => 'Béèrè Ayara nípa àdúrà yìí';

  @override
  String get duaAskAiLockedLabel => 'Béèrè Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Àwọn ìfíhàn Ayara dúró f\'ọ́ àwọn ọ̀ràn Wilaya. Ìlọ́kù nínú Àwọn Ìsètò.';

  @override
  String duaAiComingSoon(String name) {
    return 'Béèrè Ayara nípa \"$name\" — òsùwálò!';
  }

  @override
  String get duaCopiedToast => 'Àdúrà dá kọ́píì.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah nìyí òga tó jù';

  @override
  String get tasbihAlhamdulillahMeaning => 'Gbogbo ìyìn ni f\'ọ́ Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Ògo nìyí ní Allah';

  @override
  String get tasbihResetTooltip => 'Tún síilẹ̀';

  @override
  String get tasbihCompleteTitle => 'Tasbih Ṣẹ';

  @override
  String get tasbihCompleteMessage => 'Jẹ́kí Allah gbà dhikr rẹ.';

  @override
  String get tasbihTapHint => 'Tẹ́ ibìkan láti ka';

  @override
  String get tasbihatScreenTitle => 'Itọ́sọ́ Àdúrà';

  @override
  String get tasbihatScreenSubtitle => 'ÀWỌN ÌYÌN ÀDÚRÀ';

  @override
  String get tasbihatScreenDescription =>
      'Itọ́sọ́ ìṣẹ̀dá fún àwọn ìyìn tí a gbé nígbà àdúrà àti lẹ́yìn — tí ó tẹ̀ irú Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Gbé nígbà 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Nínú fiqh Shia, Tasbiḥāt al-Arbaʿa túmọ̀ Surah al-Fatiha nínú 3rd àti 4th rakʿah ti Dhuhr, Asr, Maghrib, àti Isha. Ó jẹ́ ìyẹ̀n (wājib) láti gbé ọkan àti gba (mustaḥabb) láti gbé ẹta.';

  @override
  String get tasbihatArba3Translation =>
      'Ògo nìyí ní Allah · Gbogbo ìyìn ni f\'ọ́ Allah\nAkọ́kọ́ Allah kò jẹ́ · Allah nìyí òga tó jù';

  @override
  String get tasbihatArba3CompleteTitle => 'Ìkéde ṣẹ';

  @override
  String get tasbihatArba3CompleteMessage => 'Jẹ́kí àdúrà rẹ gba — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tẹ́ lẹ́yìn ìkéde kọ̀ọ̀kan';

  @override
  String get tasbihatZahraSubtitle => 'Lẹ́yìn àdúrà kọ̀ọ̀kan · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Ìpilẹ̀';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) béèrè Prophet ﷺ f\'ọ́ ìgbesẹ̀. Ó sọ: \"Njẹ́ o kò mọ̀ ohun tó dáa síi? Gbé Subḥānallāh 33 ìgbà, Alḥamdulillāh 33 ìgbà, àti Allāhu Akbar 34 ìgbà lẹ́yìn àdúrà kọ̀ọ̀kan. Wẹ̀ níyí tó dáa síi níí.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Ṣí Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'ÀWỌN ÀDÚRÀ TÍ A GBA';

  @override
  String get tasbihatDuasSubtitle => 'Lẹ́yìn ìmú ọran rẹ';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Lẹ́yìn àdúrà ìyẹ̀n kọ̀ọ̀kan';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Ẹni tí gbé Āyat al-Kursī lẹ́yìn àdúrà ìyẹ̀n kọ̀ọ̀kan, ohun tíkìí dúró níwájú àti óòrun kò yẹ́ bí kúkú. Imam al-Bāqir (a) sọ pé ó wà nínú àwọn àrìn tó jù nínú Qur\'ān.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Lẹ́yìn àdúrà kọ̀ọ̀kan · ti ara ìbéèrè';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Ṣé ẹ̀kẹ́ nípa Prophet ﷺ àti ẹ̀yà rẹ tí ó ní òòfin (Āl Muḥammad) a gba nípa ipari àdúrà kọ̀ọ̀kan. Imam al-Ṣādiq (a) sọ: \"Àdúrà ìkan a dẹ́kun títí tí o ti ṣé ẹ̀kẹ́ nípa Muḥammad àti ẹ̀yà rẹ.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Lẹ́yìn àdúrà kọ̀ọ̀kan · f\'ọ́ Imam ìgbà wa';

  @override
  String get tasbihatDuaFarajSource => 'Kúkú nípa Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua kan fun ìpadà wá ti Imam al-Mahdī (af), Imam kẹtàlá, tí baba rẹ kọ́. A máa ń ka a lẹ́yìn àdúrà gẹ́gẹ́ bí ìṣe ìbáṣepọ̀ pẹ̀lú Imam tó wà láàyè.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ti Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Lẹ́yìn Maghrib & Isha · a gba gidi pẹ̀lú';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sọ pé ìkéde Tasbīḥ al-Zahrā lẹ́yìn Isha kù ìgbà fúnun jẹ́ dáadáa síi júpè 1000 rakʿahs ti àdúrà àì-ìyẹ̀n. Ìyy rẹ dẹ́kun sí àwọn ọ̀run.';

  @override
  String get tasbihFatimaGiftPre => 'Ẹbùn kúkú Prophet';

  @override
  String get tasbihFatimaGiftPost => 'gbé lẹ́yìn àdúrà kọ̀ọ̀kan';

  @override
  String get prayerTrackerTitle => 'ṢÀYẸ̀WÒ ÀDÚRÀ';

  @override
  String get prayerTrackerPrayed => 'Dúrà';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ọjọ́ jà';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Gbogbo àdúrà ṣẹ́ báyìí. Jẹ́kí Allah gbà.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Ṣẹ́ báyìí';

  @override
  String get dhikrTrackerNotDoneToday => 'A kò ṣe báyìí';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ọjọ́ jà';
  }

  @override
  String get dhikrReminderTitle => 'Àkèkọ̀ Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Àkèkọ̀ ọjọ́ kan ní ènìà láti gbé Tasbīḥ al-Zahrā rẹ (SA).';

  @override
  String get dhikrReminderEnable => 'Yè àkèkọ̀ Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Àkókò àkèkọ̀';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Ọjọ́';

  @override
  String get hadithLabelArabic => 'ÀRÀBÍÌKÙ';

  @override
  String get hadithLabelTranslation => 'ÌTÚMỌ̀';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Pìnpín Hadith Yìí';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Tó kọjá';

  @override
  String get hadithNavNext => 'Atọ̀ẹ́';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Àwọn Mímọ́ Mẹ́tàlá';

  @override
  String get imamsScreenSubtitle =>
      'Àwọn Wòlíì, Iya Fatima, àti Àwọn Imam Mẹ́tàlá — àwọn olùkó tó mọ́ àti tó péye nínú Ẹ̀sìn Shia Mẹ́tàlá';

  @override
  String get imamLabelBorn => 'Ìbí';

  @override
  String get imamLabelMartyrdom => 'Ìpàdè';

  @override
  String get imamLabelStatus => 'Ìrírí';

  @override
  String get imamSectionBiography => 'ÌTÀ';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'Prophet Òmìn';

  @override
  String get imamRoleInfallible => 'Òmìn tí ó ní òòfin';

  @override
  String get imamOrdinal1 => 'Imam 1st';

  @override
  String get imamOrdinal2 => 'Imam 2nd';

  @override
  String get imamOrdinal3 => 'Imam 3rd';

  @override
  String get imamOrdinal4 => 'Imam 4th';

  @override
  String get imamOrdinal5 => 'Imam 5th';

  @override
  String get imamOrdinal6 => 'Imam 6th';

  @override
  String get imamOrdinal7 => 'Imam 7th';

  @override
  String get imamOrdinal8 => 'Imam 8th';

  @override
  String get imamOrdinal9 => 'Imam 9th';

  @override
  String get imamOrdinal10 => 'Imam 10th';

  @override
  String get imamOrdinal11 => 'Imam 11th';

  @override
  String get imamOrdinal12 => 'Imam 12th';

  @override
  String get duaAudioScreenTitle => 'Tẹ́ Àwọn Àdúrà';

  @override
  String get duaAudioScreenSubtitle =>
      'Yan àdúrà kan láti tẹ́. Tẹ́ káàdì láti múkúrú tàbí dáwọ́.';

  @override
  String get duaAudioComingSoonMessage =>
      'Ìtẹ́ fún àdúrà yìí yìó jẹ́ nípa ìkéde tìun.';

  @override
  String get duaAudioClose => 'Tí';

  @override
  String get duaAudioError => 'A kò lè loàdù ìtẹ́. Jọ̀wọ́ ṣàyẹ̀wò àsopọ̀ rẹ.';

  @override
  String get duaAudioMetaTransmittedBy => 'Ìròyìn nípa';

  @override
  String get duaAudioMetaOccasion => 'Ìsẹ̀jú';

  @override
  String get duaAudioMetaDuration => 'Àkókò';

  @override
  String get quickActionDailyHadith => 'Hadith Ọjọ́';

  @override
  String get quickAction14Masumeen => 'Àwọn Mímọ́ Mẹ́tàlá';

  @override
  String get quickActionListenDuas => 'Tẹ́';

  @override
  String get quickActionTasbihat => 'Itọ́sọ́ Àdúrà';

  @override
  String get pilgrimageSectionTitle => 'Ìrìnajò Tí Ó Ní Ìyé';

  @override
  String get pilgrimageSectionSubtitle =>
      'Àwọn itọ́sọ́ ìṣẹ̀dá f\'ọ́ Hajj & Umrah — ìrìnajò sí Ilé Tí Ó Ní Ìyé ti Allah ní Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Ìtó Ìbátan ti Islam';

  @override
  String get hajjCardDescription =>
      'Ìrìnajò ìmọ̀ ọ̀ṣù nìkan — ìyẹ̀n ní àkókò ọmọ̀ Muslim tí ó ní agbára';

  @override
  String get hajjScreenTitle => 'Itọ́sọ́ Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Itọ́sọ́ ìsalẹ̀ nípa ìrìnajò àti ẹ̀kẹ́ tó jù';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ìrìnajò Kékeré';

  @override
  String get umrahCardDescription =>
      'Ìrìnajò àìmọ̀ tí ó yẹwa pọ̀ tí o lè ṣe ní àkókò ìgbà yòó ẹ̀ kan';

  @override
  String get umrahScreenTitle => 'Itọ́sọ́ Umrah';

  @override
  String get umrahScreenSubtitle => 'Itọ́sọ́ ìsalẹ̀ nípa ìrìnajò kékeré';

  @override
  String get pilgrimageStepsTitle => 'Àwọn Èrù & Àwọn Ìsalẹ̀';

  @override
  String get pilgrimageImportantNotesTitle => 'Àwọn Àkosílẹ̀ Tó Dúro';

  @override
  String get pilgrimageDuaTitle => 'Dua fún ìgbésẹ̀ yìí';

  @override
  String get pilgrimageJafariNoteTitle => 'Àkọsílẹ̀ Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Pẹ̀lú';

  @override
  String get pilgrimageMarkDone => 'Samisi gẹgẹ bi ti pari';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done lára $total ìgbésẹ̀';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes ìṣẹ́jú';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Àwọn ìrìnajò Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Ọ̀pọ̀ àwọn pèlerin Shia tún ń lọ sí Medina fún ziyarat ti Wòlíì Muhammad (SAW) ní Masjid al-Nabawi àti àwọn ibè ní Jannat al-Baqi. Àwọn ìbẹ̀wò yìí ní ìtàn àtàwọn ẹ̀sìn tó jinlẹ̀, bí ó tilẹ̀ jẹ́ pé wọn kì í ṣe àwọn àṣà Hajj.';

  @override
  String get hajjIntro =>
      'Hajj ni ìpìlẹ̀ karùn-ún ti Islam, tó jẹ́ dandan lẹ́kan nínú ayé fún gbogbo Musulumi tó ní agbára ara àti owó. Fún ọ̀pọ̀ àwọn pèlerin Shia Mẹ́tàlá lónìí, èyí túmọ̀ sí Hajj al-Tamattu\', tí a ṣe ní oṣù Dhul Hijjah ní ẹsẹ̀ Wòlíì Ibrahim (AS), ọmọ rẹ Ismail (AS), àti Iya Hajar. Itọsọna yìí tẹ̀lé àtẹ̀jáde Ja\'fari ti àwọn àṣà, nígbà tí ziyarat ní Medina jẹ́ ìrìn àjò tó ní ìtàn àtàwọn ẹ̀sìn tó péye ṣáájú tàbí lẹ́yìn Hajj.';

  @override
  String get umrahIntro =>
      'Umrah jẹ́ ìrìnajò kékeré sí Mecca àti, ìkoko Hajj, lè ṣe ní àkókò ìgbà yòó ẹ̀ kan. Tíkìí ó jẹ́ ìyẹ̀n, ó gba àwọn gajere tó pọ̀ àti a gba. Ó dà pẹ̀lú Hajj ní ìpín díẹ̀ ṣùgbọ́n ó kú túmo, tí ó ní àwọn èrù ìmọ̀ mérin.';

  @override
  String get voiceInputTitle => 'Ibi Gbọ́rọ̀';

  @override
  String get voiceInputMicTitle => 'Mikrofóònù';

  @override
  String get voiceInputMicSubtitle => 'Sọ ìbáṣepọ rẹ sí Ask Ayara dipo kikọ.';

  @override
  String get voiceInputMicDenied => 'A kọ́ ìwọle mikrofóònù.';

  @override
  String get voiceInputSpeak => 'Sọ dipo';

  @override
  String get voiceInputListening => 'Ń gbọ́…';

  @override
  String get voiceInputPermissionDenied =>
      'Ìwọle mikrofóònù jẹ́ dandan fún ìbáṣepọ gbórọ̀.';
}
