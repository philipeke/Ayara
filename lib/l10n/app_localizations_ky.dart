// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Тилиңизди тандаңыз';

  @override
  String get languageSelectSub =>
      'Муну кийинчерээк Жөндөөлөрдөн өзгөртө аласыз';

  @override
  String get actionContinue => 'Улантуу';

  @override
  String get languageSuggestedHeader => 'Сунушталган';

  @override
  String get languageAllHeader => 'Бардык тилдер';

  @override
  String get languageSuggestedBadge => 'Сунушталган';

  @override
  String get languageSearchHint => 'Издөө…';

  @override
  String get planBasic => 'Стандарт';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Күндөлүк багыт';

  @override
  String get categorySlot02 => 'Ыйман жана ишеним';

  @override
  String get categorySlot03 => 'Намаз тууралуу ой жүгүртүү';

  @override
  String get categorySlot04 => 'Сабыр жана үмүт';

  @override
  String get categorySlot05 => 'Кечирим суроо';

  @override
  String get categorySlot06 => 'Мээрим жана боорукерлик';

  @override
  String get categorySlot07 => 'Ыймандын күчү';

  @override
  String get categorySlot08 => 'Шүгүр кылган жүрөк';

  @override
  String get categorySlot09 => 'Өмүрдүн максаты';

  @override
  String get categorySlot10 => 'Үй-бүлөлүк байланыштар';

  @override
  String get categorySlot11 => 'Ички тынчтык';

  @override
  String get categorySlot12 => 'Пайгамбардык акылмандык';

  @override
  String get categorySlot13 => 'Жакшы мүнөз';

  @override
  String get categorySlot14 => 'Азгырыкка туруштук берүү';

  @override
  String get categorySlot15 => 'Кечки зикир';

  @override
  String get categoryCustom => 'Жеке ой жүгүртүү';

  @override
  String get dhikrMeaningSubhanallah => 'Аллах аруу';

  @override
  String get dhikrMeaningAlhamdulillah => 'Бардык мактоо Аллахка таандык';

  @override
  String get dhikrMeaningAllahuAkbar => 'Аллах Улуу';

  @override
  String get quranVerseHeartAtRest =>
      'Чынында, жүрөктөр Аллахты эскерүү менен тынчтык табат.';

  @override
  String get promptHint =>
      'Исламдык багыт жана ой жүгүртүү үчүн категорияны басыңыз';

  @override
  String get currentLanguage => 'Учурдагы тил';

  @override
  String get settingsLanguage => 'Тил жөндөөлөрү';

  @override
  String get settingsTitle => 'Жөндөөлөр';

  @override
  String get chooseLanguage => 'Тилиңизди тандаңыз';

  @override
  String get continueCta => 'Улантуу';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сөз',
      one: '$count сөз',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Жолдор';

  @override
  String get newCta => 'Жаңы';

  @override
  String get actionsTitle => 'Эмне кылгыңыз келет?';

  @override
  String get copy => 'Көчүрүү';

  @override
  String get share => 'Бөлүшүү';

  @override
  String get close => 'Жабуу';

  @override
  String get copiedToast => 'Алмашуу буферине көчүрүлдү';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Жаңы жооп түзүү мүмкүн болгон жок';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nКайра аракет кылып көрөсүзбү?';
  }

  @override
  String get cancelCta => 'Жокко чыгаруу';

  @override
  String get retryCta => 'Кайра аракет кылуу';

  @override
  String get authTitle => 'Каттоо эсебиңизди түзүңүз';

  @override
  String get continueAsGuest => 'Конок катары улантуу';

  @override
  String get signInGoogle => 'Google менен кирүү';

  @override
  String get signInApple => 'Apple менен кирүү';

  @override
  String get signInEmail => 'Email менен кирүү';

  @override
  String get upgradeWithApple => 'Apple менен улантуу';

  @override
  String get mustAccept =>
      'Кызмат көрсөтүү шарттарын кабыл алып, Купуялык саясатын таанышыңыз керек.';

  @override
  String get termsLabel => 'Мен Кызмат көрсөтүү шарттарын кабыл алам';

  @override
  String get privacyLabel => 'Мен Купуялык саясатын окудум';

  @override
  String get marketingOptIn => 'Жаңылыктарды жана сунуштарды алууга макулмун';

  @override
  String get openTerms => 'Кызмат көрсөтүү шарттары';

  @override
  String get openPrivacy => 'Купуялык саясаты';

  @override
  String get accountSection => 'Каттоо эсеби';

  @override
  String get guestMode => 'Конок режими';

  @override
  String get signedIn => 'Кирген';

  @override
  String get upgradeHint =>
      'Каттоо эсебин түзүп, ой жүгүртүүлөрүңүздү түзмөктөр арасында сактаңыз.';

  @override
  String get upgradeWithGoogle => 'Google менен улантуу';

  @override
  String get signOut => 'Чыгуу';

  @override
  String get snackUpgraded => 'Каттоо эсеби Google менен жаңыртылды ✅';

  @override
  String get snackSignedIn => 'Google менен кирдиңиз ✅';

  @override
  String get snackSignedOut => 'Чыктыңыз';

  @override
  String get snackSignedInApple => 'Apple менен кирдиңиз ✅';

  @override
  String get snackSignedInGoogle => 'Google менен кирдиңиз ✅';

  @override
  String get snackUpgradedApple => 'Каттоо эсеби Apple менен жаңыртылды ✅';

  @override
  String get snackUpgradedGoogle => 'Каттоо эсеби Google менен жаңыртылды ✅';

  @override
  String get historyTitle => 'Мурунку ой жүгүртүүлөр';

  @override
  String get historyOpenCta => 'Мурунку ой жүгүртүүлөр';

  @override
  String get historyEmpty => 'Азырынча сакталган ой жүгүртүүлөр жок.';

  @override
  String get historyDeleteTitle => 'Ой жүгүртүүнү өчүрөсүзбү?';

  @override
  String get historyDeleteBody => 'Бул тандалган нерсени биротоло өчүрөт.';

  @override
  String get deleteCta => 'Өчүрүү';

  @override
  String get historyButton => 'Мурунку ой жүгүртүүлөр';

  @override
  String get historyEmptyTitle => 'Азырынча ой жүгүртүүлөр жок';

  @override
  String get historyEmptyBody =>
      'Адегенде бир нерсе түзүңүз — сакталган нерселериңиз ушул жерде көрүнөт.';

  @override
  String get historyDelete => 'Өчүрүү';

  @override
  String get footerTitle => 'Wilaya, Iman жана Sabr менен';

  @override
  String get footerSubtitle => 'Бир убакта бир дуба';

  @override
  String get genericErrorSnack =>
      'Бир нерсе туура эмес кетти — бир аздан кийин кайра аракет кылып көрүңүз.';

  @override
  String get upgradeAccountCta =>
      'Ой жүгүртүүлөрүңүздү түзмөктөр арасында сактаңыз – каттоо эсебин түзүңүз';

  @override
  String get deleteAccount => 'Каттоо эсебин өчүрүү';

  @override
  String get exportData => 'Маалыматтарымды экспорттоо';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Шашпаңыз 🐯\nAyaraга кийинкисине чейин бир аз убакыт керек…';

  @override
  String get rateDailyLimit =>
      'Азырынча ой жүгүртүүлөрүңүз түгөндү.\nКөбүрөөк ой жүгүртүү алыңыз же Wilayaга өтүңүз.';

  @override
  String get rateCreditsExhausted =>
      'Бардык ой жүгүртүүлөрүңүздү колдонуп бүттүңүз.\nУлантуу үчүн толуктаңыз же Wilayaга өтүңүз.';

  @override
  String get rateGraceCreditsExhausted =>
      'Азырынча ой жүгүртүүлөрүңүз түгөндү.\nКөбүрөөк ой жүгүртүү алыңыз же Wilayaга өтүңүз.';

  @override
  String get premiumDescription =>
      'Wilaya премиум мүмкүнчүлүктөрдү, келечектеги категорияларды жана өзгөчө белгини ачат.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Азыр ой жүгүртүүлөрүңүз түгөндү. План: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ой жүгүртүүлөрүңүздү текшерүү мүмкүн болгон жок: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ой жүгүртүүлөрүңүздү текшерүүдө ката кетти.';

  @override
  String get aiFallbackGeneric =>
      'Бир нерсе туура эмес кетти — бир аздан кийин кайра аракет кылып көрүңүз.';

  @override
  String get limitSectionTitle => 'Ой жүгүртүүлөр';

  @override
  String get limitTodayLabel => 'Колдонуу';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Калган ой жүгүртүүлөр: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'План: $plan';
  }

  @override
  String get limitLoadingLabel => 'Жүктөлүүдө…';

  @override
  String get limitLoadingLabelDescription =>
      'Колдонуу статистикасы алынып жаткан учурда ой жүгүртүү картасында көрсөтүлөт.';

  @override
  String get aiLimitTitle => 'Ой жүгүртүүлөр';

  @override
  String get aiLimitSubtitle =>
      'Ар бир жооп 1 ой жүгүртүүнү колдонот. Стандарт планында баштапкы ой жүгүртүүлөр бар. Wilaya премиум категорияларды ачат жана толуктоого мүмкүндүк берет.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ой жүгүртүү колдонулду';
  }

  @override
  String get creditsSectionTitle => 'Ой жүгүртүүлөр';

  @override
  String get creditsUsageLabel => 'Колдонуу';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Калган ой жүгүртүүлөр: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'План: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Жүктөлүүдө…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ой жүгүртүү статистикасы жүктөлүп жаткан учурда көрсөтүлөт.';

  @override
  String get creditsTitle => 'Ой жүгүртүүлөр';

  @override
  String get creditsSubtitle =>
      'Ар бир жооп 1 ой жүгүртүүнү колдонот. Стандарт планында баштапкы ой жүгүртүүлөр бар. Wilaya премиум категорияларды ачат жана толуктоого мүмкүндүк берет.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ой жүгүртүү колдонулду';
  }

  @override
  String get settingsDeleteTitle => 'Каттоо эсебин өчүрүү';

  @override
  String get settingsDeleteDescription =>
      'Каттоо эсебиңизди жана ага байланыштуу бардык маалыматтарды биротоло өчүрүү.';

  @override
  String get settingsDeleteButtonLabel => 'Каттоо эсебимди өчүрүү';

  @override
  String get settingsDeleteDialogTitle => 'Каттоо эсеби өчүрүлсүнбү?';

  @override
  String get settingsDeleteDialogBody =>
      'Бул аракет кайтарылгыс.\n\nБардык чаттарыңыз, тарыхыңыз жана каттоо эсебиңиз тууралуу маалыматтар өчүрүлөт.';

  @override
  String get settingsDeleteDialogCancel => 'Жокко чыгаруу';

  @override
  String get settingsDeleteDialogConfirm => 'Өчүрүү';

  @override
  String get settingsFreeLimitUsedTitle => 'Баштапкы ой жүгүртүүлөр колдонулду';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Бул түзмөк үчүн баштапкы ой жүгүртүүлөр колдонулуп бүттү. Улантуу үчүн Wilayaга өтүңүз же көбүрөөк ой жүгүртүү сатып алыңыз.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Баштапкы ой жүгүртүүлөр колдонулду';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Бул түзмөк үчүн баштапкы ой жүгүртүүлөр колдонулуп бүттү. Улантуу үчүн Wilayaга өтүңүз же көбүрөөк ой жүгүртүү сатып алыңыз.';

  @override
  String get deviceBoundError =>
      'Бул түзмөк башка каттоо эсебине байланган. Баштапкы каттоо эсеби менен кириңиз.';

  @override
  String get premiumTitle => 'Wilaya режими';

  @override
  String get premiumSubtitleBasic => 'Ayaraнын толук мүмкүнчүлүгүн ачыңыз.';

  @override
  String get premiumSubtitlePremium =>
      'Сиз Wilayaдасыз. Көбүрөөк ой жүгүртүү керекпи?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Учурдагы план: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Ой жүгүртүүлөр: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Сатып алуулар азыр жеткиликтүү эмес.';

  @override
  String get premiumSignInToPurchase =>
      'Ой жүгүртүү сатып алуу же Wilaya ачуу үчүн кириңиз.';

  @override
  String get premiumRestorePurchases => 'Сатып алууларды калыбына келтирүү';

  @override
  String get premiumProcessing => 'Иштетилүүдө…';

  @override
  String get premiumRestoreHintTitle =>
      'Бул түзмөктө же башка түзмөктө мурда Wilaya же ой жүгүртүүлөрдү сатып алдыңыз беле?';

  @override
  String get premiumRestoreHintBody =>
      'Эгер көрүнбөсө, сатып алууларыңызды калыбына келтириңиз.';

  @override
  String get premiumBuyCredits200 => '200 ой жүгүртүү сатып алуу';

  @override
  String get premiumBuyCredits400 => '400 ой жүгүртүү сатып алуу';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya режимине өтүү';

  @override
  String get premiumTopupHint =>
      'Wilaya менен сиз керек болгон учурда кошумча ой жүгүртүүлөрдү толуктай аласыз.';

  @override
  String get premiumUpgradeCta => 'Жаңыртуу';

  @override
  String get premiumRequiredForCategory =>
      'Бул категория Wilaya колдонуучулары үчүн гана жеткиликтүү. Бардык премиум мазмунду ачуу үчүн Жөндөөлөрдөн жаңыртыңыз.';

  @override
  String get premiumBenefitsBasic =>
      'Wilayaны ачып, кошумча ой жүгүртүүлөрдү алыңыз, премиум категорияларга кириңиз жана багыт керек болгондо улантыңыз.';

  @override
  String get premiumBenefitsPremium =>
      'Сиз Wilaya режиминдесиз. Эгер азайып баратса, кошумча ой жүгүртүүлөрдү кошуп, үзгүлтүксүз улантыңыз.';

  @override
  String get premiumButtonBecomePremium => 'Wilayaны ачуу';

  @override
  String get premiumButtonTopup1000 => '1000 ой жүгүртүү кошуу';

  @override
  String get premiumBadge => 'Wilaya активдүү';

  @override
  String get premiumLoadingStore => 'Дүкөн жүктөлүүдө…';

  @override
  String get premiumProductNotAvailable =>
      'Бул продукт азырынча дүкөндө жеткиликтүү эмес. Кийинчерээк кайра аракет кылып көрүңүз.';

  @override
  String get premiumPurchaseError =>
      'Сатып алуу учурунда ката кетти. Кайра аракет кылыңыз.';

  @override
  String get premiumBuyCredits100 => '100 ой жүгүртүү кошуу';

  @override
  String get premiumFeatureLocked =>
      'Бул мүмкүнчүлүктү колдонуу үчүн Wilayaны ачыңыз.';

  @override
  String get lockedCategoriesHint =>
      'Кээ бир категориялар Wilaya мүчөлөрү үчүн гана. Сапарыңыздагы бардык ой жүгүртүүлөрдү изилдөө үчүн аларды ачыңыз.';

  @override
  String get freePlanBlockedTitle =>
      'Баштапкы ой жүгүртүүлөрүңүздү колдонуп бүттүңүз';

  @override
  String get freePlanBlockedBody =>
      'Сиз Стандарт планындасыз жана баштапкы ой жүгүртүүлөрдүн чегине жеттиңиз. Улантуу жана премиум категорияларды ачуу үчүн — Wilayaга өтүңүз.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Төмөндөгү Wilaya жолдорун караңыз';

  @override
  String get graceBlockedTitle =>
      'Баштапкы ой жүгүртүүлөрүңүздү колдонуп бүттүңүз';

  @override
  String get graceBlockedBody =>
      'Сиз Стандарт планындасыз жана баштапкы ой жүгүртүүлөрдүн чегине жеттиңиз. Улантуу жана премиум категорияларды ачуу үчүн — Wilayaга өтүңүз.';

  @override
  String get graceBlockedCtaGoPremium => 'Төмөндөгү Wilaya жолдорун караңыз';

  @override
  String get rateGuestMustSignIn =>
      'Ayara жана ой жүгүртүүлөрүңүздү колдонуу үчүн кириңиз.';

  @override
  String get guestNoCreditsTitle => 'Конок режими';

  @override
  String get guestNoCreditsBody =>
      'Конок катары колдонмону карай аласыз, бирок ой жүгүртүүлөрдү колдоно албайсыз. Кийинчерээк Жөндөөлөрдөн кирип, ой жүгүртүүлөрдү колдонуп жана сатып алууларды ачыңыз.';

  @override
  String get guestDialogContinue => 'Улантуу';

  @override
  String get guestDialogLoginInstead => 'Анын ордуна кирүү';

  @override
  String get optionalLabel => 'милдеттүү эмес';

  @override
  String get accountDeleteSuccessTitle => 'Каттоо эсеби өчүрүлдү';

  @override
  String get accountDeleteSuccessBody =>
      'Каттоо эсебиңиз жана ага байланыштуу маалыматтар ийгиликтүү өчүрүлдү.';

  @override
  String get accountDeleteSuccessClose => 'Жабуу';

  @override
  String get accountDeleteErrorTitle =>
      'Каттоо эсебин өчүрүү мүмкүн болгон жок';

  @override
  String get accountDeleteErrorClose => 'Макул';

  @override
  String get accountDeleteReauthCancelled =>
      'Кайра аутентификация токтотулду. Кайра кирип, өчүрүүнү дагы бир жолу аракет кылып көрүңүз.';

  @override
  String get accountDeleteReauthRequired =>
      'Каттоо эсебин өчүрүү үчүн жакында кирген болушуңуз керек. Чыгып, кайра кирип, анан кайра аракет кылыңыз.';

  @override
  String get settingsDeletePermanentWarning =>
      'Бул аракет кайтарылгыс. Каттоо эсебиңизге байланыштуу бардык маалыматтар өчүрүлөт.';

  @override
  String get dailyGraceTitle => 'Күндөлүк багыт';

  @override
  String get dailyGraceScriptureLabel => 'КҮНДҮН АЯТЫ';

  @override
  String get dailyGraceSaintLabel => 'АПТЫРЫЛГАН АЙ';

  @override
  String get dailyGraceReflectionLabel => 'КЕЧКИ ОЙ ЖҮГҮРТҮҮ';

  @override
  String get dailyGraceCopiedToast => 'Аят алмашуу буферине көчүрүлдү';

  @override
  String get locationConsentLabel =>
      'Qibla багыты жана намаз убакыттары үчүн Ayaraга жайгашкан жеримди колдонууга уруксат берүү';

  @override
  String get locationConsentHint =>
      'Бул функциялар үчүн гана колдонулат. Жайгашкан жериңиз эч качан сакталбайт жана бөлүшүлбөйт.';

  @override
  String get askPageTitle => 'Ayaraдан сураңыз';

  @override
  String get askPageDescription =>
      'Ыйман, намаз, жашоо же исламдык амал тууралуу каалаган сурооңузду берип, Куран менен Аһлул-Байттын илимдерине негизделген багыт алыңыз.';

  @override
  String get askPageInputHint => 'Сурооңузду бул жерге жазыңыз…';

  @override
  String get askPageSubmitCta => 'Суроо берүү';

  @override
  String get askPageInputEmptyError => 'Адегенде суроо жазыңыз.';

  @override
  String get askResultYourQuestion => 'Сиздин сурооңуз';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Меккеге карап турат';

  @override
  String get qiblaCompassInstruction =>
      'Алтын ийне өйдө караганга чейин телефонуңузду буруңуз.\nОшол багыт qiblaны (Меккени) көрсөтөт.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS сигналы алсыз. Тышка чыгып, Кайра аракет кылууну басыңыз.';

  @override
  String get qiblaRetry => 'Кайра аракет кылуу';

  @override
  String get qiblaTitle => 'Qibla багыты';

  @override
  String qiblaDistanceLabel(String km) {
    return 'Меккеге чейин $km км';
  }

  @override
  String get qiblaLocationNeededTitle => 'Жайгашкан жер талап кылынат';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara сиз турган жерден Меккедеги Каабанын багытын эсептей алышы үчүн жайгашкан жериңизге уруксат бериңиз.';

  @override
  String get qiblaOpenSettings => 'Жөндөөлөрдү ачуу';

  @override
  String get qiblaCompassLoading => 'Жайгашкан жериңиз аныкталууда…';

  @override
  String get qiblaTowardMecca => 'Меккеге карай';

  @override
  String get prayerTimesTitle => 'Намаз убакыттары';

  @override
  String get prayerTimesFajr => 'Фажр';

  @override
  String get prayerTimesDhuhr => 'Зухр';

  @override
  String get prayerTimesAsr => 'Аср';

  @override
  String get prayerTimesMaghrib => 'Магриб';

  @override
  String get prayerTimesIsha => 'Иша';

  @override
  String get prayerTimesLocationNeededTitle => 'Жайгашкан жер талап кылынат';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara сиздин шаарыңыз үчүн так намаз убакыттарын эсептей алышы үчүн жайгашкан жериңизге уруксат бериңиз.';

  @override
  String get prayerTimesNextLabel => 'Кийинки';

  @override
  String get prayerTimesDoneLabel => 'Аяктады';

  @override
  String get monthlyPrayerTimesTitle => 'Айлык намаз убакыттары';

  @override
  String get monthlyPrayerTimesViewButton => 'Толук айды көрүү';

  @override
  String get monthlyPrayerTimesNextMonth => 'Кийинки ай';

  @override
  String get monthlyPrayerTimesDayHeader => 'Күн';

  @override
  String get sharePrayerTimes => 'Намаз убакыттарын бөлүшүү';

  @override
  String get notificationsSectionTitle => 'Эскертмелер';

  @override
  String get notificationsSectionSubtitle =>
      'Намаз эскертүүлөрү, календарды окуялары жана башкалар';

  @override
  String get dailyReflectionReminderTitle => 'Күндөлүк ой жүгүртүү';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayaraны ачып, ыйманыңыз менен байланышууга арналган жумшак күнүмдүк эскертүү.';

  @override
  String get dailyReflectionReminderEnable => 'Күнүмдүк эскертүүнү күйгүзүү';

  @override
  String get dailyReflectionReminderTimeLabel => 'Эскертүү убактысы';

  @override
  String get prayerNotificationsTitle => 'Намаз эскертүүлөрү';

  @override
  String get prayerNotificationsDescription =>
      'Күн бою руханий байланышты сактоого жардам берүү үчүн ар бир намаз убактысынын алдында жумшак эскертүү алыңыз.';

  @override
  String get prayerNotificationsEnable => 'Намаз эскертүүлөрүн күйгүзүү';

  @override
  String get prayerNotificationsOpenSettings => 'Эскертме жөндөөлөрүн ачуу';

  @override
  String get prayerNotificationsDenied => 'Эскертмелер өчүрүлгөн';

  @override
  String get prayerNotificationsDeniedHint =>
      'Намаз убакыттары тууралуу эскертүүлөрдү алуу үчүн Жөндөөлөрдөн Ayaraга эскертмелерге уруксат бериңиз.';

  @override
  String get notificationsConsentLabel =>
      'Намаз убакыттары тууралуу эскертмелерге уруксат берүү';

  @override
  String get prayerNotifTitleFajr => '🌅 Фажр — Таңкы намаз';

  @override
  String get prayerNotifBodyFajr =>
      'Фажр — Аһлул-Байттын таңкы намазы. Имам Али (а.с.) айтты: Таңкы намазды эң кымбат аманатыңды коргогондой корго. Тур, тазалан жана Аллахтын алдына тур.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Зухр — Түшкү намаз';

  @override
  String get prayerNotifBodyDhuhr =>
      'Аһлул-Байт имамдары зикирдин ар бир ирмемин жогору баалашкан. Күндү бир саамга токтотуп, керек болсо Зухр менен Асрды бириктирип окуп, жүрөгүңүздү кайрадан Аллахка буруңуз.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Аср — Бешим намазы';

  @override
  String get prayerNotifBodyAsr =>
      'Намазды сакта, анткени ал сен менен Аллахтын ортосундагы келишим. Аср убактысы келди — аны зикирсиз өткөрүп жибербе.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Магриб — Куптанга чейинки намаз';

  @override
  String get prayerNotifBodyMaghrib =>
      'Күн батты — Аһлул-Байт дуба үчүн ыйык деп эсептеген убакыт. Магриб намазын окуп, түн башталганга чейин Аллахка дубада колуңузду жазыңыз.';

  @override
  String get prayerNotifTitleIsha => '🌙 Иша — Түнкү намаз';

  @override
  String get prayerNotifBodyIsha =>
      'Күнүңүздү Аллах менен аяктаңыз. Имамдар Ишадан кийин Салат ал-Лайлды сунуштаган — бирок адегенде Ишаңызды окуп, күнүңүздү Анын зикири менен бүтүрүңүз.';

  @override
  String get outOfReflectionsBannerText =>
      'Сиз бардык ой жүгүртүүлөрүңүздү колдонуп бүттүңүз';

  @override
  String get outOfReflectionsBannerCta => 'Көбүрөөк алуу';

  @override
  String get dhikrPageTitle => 'Зикир';

  @override
  String get dhikrTapToCount => 'Санаш үчүн тегеректи басыңыз';

  @override
  String get dhikrResetButton => 'Калыбына келтирүү';

  @override
  String get dhikrComplete => 'МашаАллах';

  @override
  String get dhikrCompleteMessage =>
      'Сиз Аллахты 100 жолу эскерүүнү аяктадыңыз. Ал жүрөгүңүзгө нур болсун.';

  @override
  String get disclaimerTitle => 'Бул колдонмодогу багыт тууралуу';

  @override
  String get disclaimerBody =>
      'Ayara Куран жана Аһлул-Байттын илимдерине негизделген исламдык ой жүгүртүүлөрдү, эскертүүлөрдү жана руханий мазмунду сунуштайт. Бул мазмун жалпы маалымат жана шыктандыруу максатында гана берилет.\n\nAyara квалификациялуу аалымды алмаштырбайт.\nБул колдонмодогу багыт квалификациялуу ислам аалымын, маржа\'ны же теологиялык даярдыгы бар устатты алмаштырбайт. Шиа исламында диний багыт Жаъфари фикһ мектебине жана тирүү Маржа\'га (ээрчүү булагы) баш ийүү салтына негизделет — бул диний турмушта ыймандууларды жетектеген квалификациялуу укук таануучу. Эгер сизде диний өкүмдөр, халал жана харам маселелери же жеке диний милдеттер тууралуу суроолор болсо, квалификациялуу Маржа\'дан же коомуңуздагы аалымдан кеңеш алыңыз.\n\nБул колдонмо диний өкүм чыгарбайт.\nAyara фикһ маселелери же жеке диний милдеттер боюнча акыркы чечим чыгарбайт. Бул жердеги эч нерсе фатва же милдеттүү диний көрсөтмө катары кабыл алынбашы керек.\n\nАһлул-Байттын борбордук орду.\nШиа исламында Пайгамбар Мухаммад ﷺ жана анын аруу үй-бүлөсү — Аһлул-Байт — Курандан кийинки ислам үммөтүнүн беделдүү жол башчылары болуп саналат. Аһлул-Байттын он эки имамы ислам илимин түшүндүрүү үчүн Кудай тарабынан дайындалган. Бул колдонмодогу мазмун ошол салтты чагылдырат жана аны ишенимдүү урматтоого аракет кылат.\n\nЖамааттын мааниси.\nБул колдонмо сиздин дин менен байланышыңызды бекемдөөнү көздөйт, ошол эле учурда жергиликтүү мечиттин, ислам борборунун жана диний жамаатыңыздын маанилүү ролун терең урматтайт. Жакыныңыздагы квалификациялуу устаттар менен байланышта болуп, алардан үйрөнүүгө чакырабыз.';

  @override
  String get disclaimerClose => 'Түшүндүм';

  @override
  String get disclaimerInfoTooltip => 'Бул колдонмодогу багыт тууралуу';

  @override
  String get disclaimerSettingsSubtitle =>
      'Жалпы маалыматтык максатта гана. Толук эскертүүнү окуу үчүн басыңыз.';

  @override
  String get disclaimerSectionHeader => 'Багыт тууралуу эскертүү';

  @override
  String get navHome => 'Башкы бет';

  @override
  String get navReflect => 'Ой жүгүртүү';

  @override
  String get navDuas => 'Дубалар';

  @override
  String get navCalendar => 'Календарь';

  @override
  String get dashboardToday => 'БҮГҮН';

  @override
  String get dashboardComingUp => 'Алдыда';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'күн',
      one: 'күн',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Тез жетүү';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Зикир';

  @override
  String get quickActionDailyGrace => 'Багыт';

  @override
  String get quickActionPrayerTimes => 'Намаз убакыттары';

  @override
  String get askAyaraTitle => 'Ayaraдан сураңыз';

  @override
  String get askAyaraSubtitle =>
      'Каалаган исламдык суроону берип, ойлонулган, багыттоочу жооп алыңыз.';

  @override
  String get askAyaraHint => 'мисалы, Рамазандын мааниси кандай?';

  @override
  String get askAyaraSubmit => 'Суроо берүү';

  @override
  String get wisdomOfTheDayTitle => 'Күндүн акылмандыгы';

  @override
  String get calendarScreenTitle => 'Ислам календары';

  @override
  String get calendarUpcomingOccasions => 'Алдыдагы окуялар';

  @override
  String get calendarOccasionRemindersTitle => 'Окуя эскертүүлөрү';

  @override
  String get calendarOccasionRemindersHint =>
      'Ар бир окуянын алдындагы кечте эскертилет';

  @override
  String get calendarNotifPermissionDenied =>
      'Эскертме уруксаты берилген жок. Аны түзмөктүн жөндөөлөрүнөн күйгүзүңүз.';

  @override
  String get calendarNoEvents => 'Алдыдагы окуялар табылган жок.';

  @override
  String get calendarAddToPhone => 'Телефон күнтүзбөсүнө кошуу';

  @override
  String get calendarAddedToPhone => 'Күнтүзбөгө кошулду';

  @override
  String get calendarCountdownToday => 'БҮГҮН';

  @override
  String get calendarCountdownTomorrow => 'ЭРТЕҢ';

  @override
  String calendarCountdownDays(int days) {
    return '$days күндөн кийин';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Янв';

  @override
  String get calendarMonthFeb => 'Фев';

  @override
  String get calendarMonthMar => 'Мар';

  @override
  String get calendarMonthApr => 'Апр';

  @override
  String get calendarMonthMay => 'Май';

  @override
  String get calendarMonthJun => 'Июн';

  @override
  String get calendarMonthJul => 'Июл';

  @override
  String get calendarMonthAug => 'Авг';

  @override
  String get calendarMonthSep => 'Сен';

  @override
  String get calendarMonthOct => 'Окт';

  @override
  String get calendarMonthNov => 'Ноя';

  @override
  String get calendarMonthDec => 'Дек';

  @override
  String get calendarSeasonMuharramEarly =>
      'Мухаррам күндөрү — Карбала эске алынсын';

  @override
  String get calendarSeasonAshura => 'Ашура — Я Хусейн (а.с.)';

  @override
  String get calendarSeasonMuharramLate =>
      'Мухаррам — аза жана ой жүгүртүү күндөрү';

  @override
  String get calendarSeasonArbaeen => 'Арбаин — Хусейндин кырк күнү';

  @override
  String get calendarSeasonRoadToArbaeen => 'Арбаинге жол';

  @override
  String get calendarSeasonMabath => 'Маб\'ас мубарак — вахийдин таңы';

  @override
  String get calendarSeasonMidShaban =>
      'Ша\'бан ортосу — Имам ал-Махдинин (AJ) туулган күнү';

  @override
  String get calendarSeasonRamadan => 'Рамазан мубарак — Куран айы';

  @override
  String get calendarSeasonGhadir => 'Ид ал-Гадир мубарак!';

  @override
  String get hijriMonth1 => 'Мухаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Раби\' ал-Аввал';

  @override
  String get hijriMonth4 => 'Раби\' ас-Сани';

  @override
  String get hijriMonth5 => 'Жумада ал-Аввал';

  @override
  String get hijriMonth6 => 'Жумада ас-Сани';

  @override
  String get hijriMonth7 => 'Ражаб';

  @override
  String get hijriMonth8 => 'Ша\'бан';

  @override
  String get hijriMonth9 => 'Рамазан';

  @override
  String get hijriMonth10 => 'Шаввал';

  @override
  String get hijriMonth11 => 'Зул-Ка\'да';

  @override
  String get hijriMonth12 => 'Зул-Хижжа';

  @override
  String get duasScreenTitle => 'Дубалар жана Зиярат';

  @override
  String get duasSearchHint => 'Дубаларды, зияраттарды издөө…';

  @override
  String get duasFilterAll => 'Баары';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дуба жана зиярат',
      one: '$count дуба',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Дубалар табылган жок.';

  @override
  String get duaCategoryDaily => 'Күндөлүк';

  @override
  String get duaCategoryWeekly => 'Апталык';

  @override
  String get duaCategoryOccasions => 'Окуялар';

  @override
  String get duaCategoryZiyarat => 'Зиярат';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get eventTypeBirth => 'Туулуу';

  @override
  String get eventTypeMartyrdom => 'Шейит болуу';

  @override
  String get eventTypeOccasion => 'Окуя';

  @override
  String get duaCopyTooltip => 'Котормону көчүрүү';

  @override
  String get duaToggleTransliteration => 'Транслитерация';

  @override
  String get duaToggleTranslation => 'Котормо';

  @override
  String get duaAskAiLabel => 'Бул дубаны Ayaraдан түшүндүрүп берүүсүн суроо';

  @override
  String get duaAskAiLockedLabel => 'Ayaraдан суроо (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara түшүндүрмөлөрү Wilaya мүчөлөрү үчүн гана жеткиликтүү. Жөндөөлөрдөн жаңыртыңыз.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" жөнүндө Ayaraдан сураңыз — жакында!';
  }

  @override
  String get duaCopiedToast => 'Дуба алмашуу буферине көчүрүлдү.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Аллах Улуу';

  @override
  String get tasbihAlhamdulillahMeaning => 'Бардык мактоо Аллахка таандык';

  @override
  String get tasbihSubhanallahMeaning => 'Аллах аруу';

  @override
  String get tasbihResetTooltip => 'Калыбына келтирүү';

  @override
  String get tasbihCompleteTitle => 'Тасбих аяктады';

  @override
  String get tasbihCompleteMessage => 'Аллах сиздин зикириңизди кабыл кылсын.';

  @override
  String get tasbihTapHint => 'Санаш үчүн каалаган жерди басыңыз';

  @override
  String get tasbihatScreenTitle => 'Намаз колдонмосу';

  @override
  String get tasbihatScreenSubtitle => 'НАМАЗДАГЫ УЛУКТООЛОР';

  @override
  String get tasbihatScreenDescription =>
      'Күндөлүк намаз учурунда жана андан кийин окулуучу улуктоолор боюнча толук колдонмо — Аһлул-Байт (а) салты боюнча.';

  @override
  String get tasbihatArba3Title => 'ТАСБИХАТ АЛ-АРБАГА';

  @override
  String get tasbihatArba3Subtitle => '3- жана 4-ракаатта окулат';

  @override
  String get tasbihatArba3Info =>
      'Шиа фикһинде Тасбихат ал-Арбага Зухр, Аср, Магриб жана Иша намаздарынын 3- жана 4-ракааттарында «Фатиха» сүрөсүнүн ордуна окулат. Аны бир жолу окуу — важиб, ал үч жолу окуу — мустахаб.';

  @override
  String get tasbihatArba3Translation =>
      'Аллах аруу · Бардык мактоо Аллахка таандык\nАллахтан башка кудай жок · Аллах Улуу';

  @override
  String get tasbihatArba3CompleteTitle => 'Окуу аяктады';

  @override
  String get tasbihatArba3CompleteMessage => 'Намазыңыз кабыл болсун — Амин';

  @override
  String get tasbihatArba3TapHint => 'Ар бир окуудан кийин басыңыз';

  @override
  String get tasbihatZahraSubtitle => 'Ар бир намаздан кийин · 100 мончок';

  @override
  String get tasbihatZahraOriginLabel => 'Келип чыгышы';

  @override
  String get tasbihatZahraHadith =>
      'Фатима аз-Захра (с.а.) Пайгамбардан ﷺ кызматчы сураган. Ал: «Сага андан да жакшы нерсени үйрөтөйүнбү? Ар бир намаздан кийин 33 жолу Субханаллах, 33 жолу Альхамдулиллах жана 34 жолу Аллаху Акбар айт. Бул сага кызматчыдан да жакшы», — деген.';

  @override
  String get tasbihatZahraHadithSource => '— Бихар ал-Анвар, 85-том';

  @override
  String get tasbihatZahraOpenCounter => 'Тасбих эсептегичин ачуу';

  @override
  String get tasbihatDuasTitle => 'СУНУШТАЛГАН ДУБАЛАР';

  @override
  String get tasbihatDuasSubtitle => 'Намазды бүтүргөндөн кийин';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Аят ал-Курси';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Ар бир парз намаздан кийин';

  @override
  String get tasbihatDuaAyatKursiSource => 'Бакара сүрөсү 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Кимде-ким ар бир парз намаздан кийин Аят ал-Курсини окуса, аны менен бейиштин ортосунда өлүмдөн башка эч нерсе турбайт. Имам ал-Бакыр (а) муну Курандагы эң улуу аяттардын бири деген.';

  @override
  String get tasbihatDuaSalawatTitle => 'Салават';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Ар бир намаздан кийин · бардык дубаларды аяктайт';

  @override
  String get tasbihatDuaSalawatSource => 'Имам ас-Садык (а) — Аль-Кафи';

  @override
  String get tasbihatDuaSalawatNote =>
      'Пайгамбар ﷺ жана анын аруу үй-бүлөсүнө (Аал Мухаммад) салават айтуу ар бир дубаны бүтүрүү үчүн сунушталат. Имам ас-Садык (а): «Ар кандай дуба Мухаммадга жана анын үй-бүлөсүнө салават айтылганга чейин күтүп турат», — деген.';

  @override
  String get tasbihatDuaFarajTitle => 'Дуба ал-Фараж';

  @override
  String get tasbihatDuaFarajWhen =>
      'Ар бир намаздан кийин · заманыбыздын Имамы үчүн';

  @override
  String get tasbihatDuaFarajSource => 'Имам ал-Хасан ал-Аскари (а) үйрөткөн';

  @override
  String get tasbihatDuaFarajNote =>
      'Имам ал-Маҳдии (аф) — ондузунчу Имамдын кайра пайда болушу үчүн дуга. Бул дуга көпчүлүк Шиит мусулмандары тарабынан намаздан кийин, тирүү Имамга болгон берилгендик катары окулат.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Фатима айымдын тасбихи';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Магрибден жана Ишадан кийин · өзгөчө сунушталат';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Имам ал-Бакыр (а) — Бихар ал-Анвар';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Имам ал-Бакыр (а) Ишадан кийин уктаар алдында Тасбих аз-Захраны окуу 1000 ракаат нафил намаздан артык деген. Анын нуру асманга көтөрүлөт.';

  @override
  String get tasbihFatimaGiftPre => 'Пайгамбардан белек';

  @override
  String get tasbihFatimaGiftPost => 'ар бир намаздан кийин окулат';

  @override
  String get prayerTrackerTitle => 'НАМАЗ БАЙКООСУ';

  @override
  String get prayerTrackerPrayed => 'Окулду';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count күндүк удаалаштык';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Бүгүнкү бардык намаздар аяктады. Аллах кабыл кылсын.';

  @override
  String get dhikrTrackerTitle => 'ТАСБИХ АЗ-ЗАХРА';

  @override
  String get dhikrTrackerCompletedToday => 'Бүгүн аяктады';

  @override
  String get dhikrTrackerNotDoneToday => 'Бүгүн жасалган жок';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count күндүк удаалаштык';
  }

  @override
  String get dhikrReminderTitle => 'Тасбих эскертүүсү';

  @override
  String get dhikrReminderDescription =>
      'Тасбих аз-Захраны (с.а.) окуу үчүн жумшак күнүмдүк эскертүү.';

  @override
  String get dhikrReminderEnable => 'Тасбих эскертүүсүн күйгүзүү';

  @override
  String get dhikrReminderTimeLabel => 'Эскертүү убактысы';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Күндөлүк хадис';

  @override
  String get hadithLabelArabic => 'АРАБ ТИЛИНДЕ';

  @override
  String get hadithLabelTranslation => 'КОТОРМО';

  @override
  String get hadithBadge => 'ХАДИС';

  @override
  String get hadithShare => 'Бул хадисти бөлүшүү';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara аркылуу';
  }

  @override
  String get hadithNavPrevious => 'Мурунку';

  @override
  String get hadithNavNext => 'Кийинки';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Төртүнчү Имамдар';

  @override
  String get imamsScreenSubtitle =>
      'Пайгамбар, Фатима эне жана Он эки Имам — Твитер Шиит Исламындагы тазаланган жана катасыз жетекчилер';

  @override
  String get imamLabelBorn => 'Туулган';

  @override
  String get imamLabelMartyrdom => 'Шейит болгон';

  @override
  String get imamLabelStatus => 'Даража';

  @override
  String get imamSectionBiography => 'ӨМҮР БАЯН';

  @override
  String get imamSectionFamousSaying => 'ТААНЫМАЛ СӨЗ';

  @override
  String get imamRoleProphet => 'Акыркы Пайгамбар';

  @override
  String get imamRoleInfallible => 'Күнөөсүз';

  @override
  String get imamOrdinal1 => '1-Имам';

  @override
  String get imamOrdinal2 => '2-Имам';

  @override
  String get imamOrdinal3 => '3-Имам';

  @override
  String get imamOrdinal4 => '4-Имам';

  @override
  String get imamOrdinal5 => '5-Имам';

  @override
  String get imamOrdinal6 => '6-Имам';

  @override
  String get imamOrdinal7 => '7-Имам';

  @override
  String get imamOrdinal8 => '8-Имам';

  @override
  String get imamOrdinal9 => '9-Имам';

  @override
  String get imamOrdinal10 => '10-Имам';

  @override
  String get imamOrdinal11 => '11-Имам';

  @override
  String get imamOrdinal12 => '12-Имам';

  @override
  String get duaAudioScreenTitle => 'Дубаларды угуу';

  @override
  String get duaAudioScreenSubtitle =>
      'Уккуңуз келген дубаны тандаңыз. Ойнотуу же токтотуу үчүн плитканы басыңыз.';

  @override
  String get duaAudioComingSoonMessage =>
      'Бул дубанын аудиосу алдыдагы жаңыртууда жеткиликтүү болот.';

  @override
  String get duaAudioClose => 'Жабуу';

  @override
  String get duaAudioError => 'Аудио жүктөлгөн жок. Байланышыңызды текшериңиз.';

  @override
  String get duaAudioMetaTransmittedBy => 'Жеткирген';

  @override
  String get duaAudioMetaOccasion => 'Окуя';

  @override
  String get duaAudioMetaDuration => 'Узактыгы';

  @override
  String get quickActionDailyHadith => 'Күндөлүк хадис';

  @override
  String get quickAction14Masumeen => 'Төртүнчү Имамдар';

  @override
  String get quickActionListenDuas => 'Угуу';

  @override
  String get quickActionTasbihat => 'Намаз колдонмосу';

  @override
  String get pilgrimageSectionTitle => 'Ыйык сапар';

  @override
  String get pilgrimageSectionSubtitle =>
      'Хаж жана Умра боюнча толук колдонмолор — Аллахтын Меккедеги Ыйык Үйүнө сапар';

  @override
  String get hajjCardTitle => 'Хаж';

  @override
  String get hajjCardSubtitle => 'Исламдын бешинчи түркүгү';

  @override
  String get hajjCardDescription =>
      'Жыл сайынкы улуу ажылык — мүмкүнчүлүгү бар ар бир мусулманга өмүрүндө бир жолу парз';

  @override
  String get hajjScreenTitle => 'Хаж колдонмосу';

  @override
  String get hajjScreenSubtitle => 'Улуу ажылык үчүн кадам сайын колдонмо';

  @override
  String get umrahCardTitle => 'Умра';

  @override
  String get umrahCardSubtitle => 'Кичи ажылык';

  @override
  String get umrahCardDescription =>
      'Жылдын каалаган убагында аткарылуучу, руханий сообу мол сапар';

  @override
  String get umrahScreenTitle => 'Умра колдонмосу';

  @override
  String get umrahScreenSubtitle => 'Кичи ажылык үчүн кадам сайын колдонмо';

  @override
  String get pilgrimageStepsTitle => 'Каадалар жана кадамдар';

  @override
  String get pilgrimageImportantNotesTitle => 'Маанилүү эскертмелер';

  @override
  String get pilgrimageDuaTitle => 'Бул кадам үчүн дуа';

  @override
  String get pilgrimageJafariNoteTitle => 'Джафари фикхинин эскертүүсү';

  @override
  String get pilgrimageComplete => '✓ Толук';

  @override
  String get pilgrimageMarkDone => 'Туураланган деп белгилөө';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total кадамдан';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes мүнөт';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Шиа ажылары';

  @override
  String get pilgrimageShiaNoteBody =>
      'Көптөгөн Шиит зыяратчылары Пайгамбар Мухаммаддын (САВ) зыярат кылуу үчүн Мединага, Масжид ал-Набави жана Жаннат ал-Бақи зыяраттарына барышат. Бул зыяраттар терең руханий мааниге ээ, бирок алар Хаждын ритуалдары эмес.';

  @override
  String get hajjIntro =>
      'Хаж Исламдын бешинчи стубу болуп саналат, ар бир физикалык жана финансылык мүмкүнчүлүгү бар мусулмандар үчүн бир жолу милдеттүү. Бүгүнкү күндө көпчүлүк Твитер Шиит зыяратчылары үчүн бул Хаж ал-Тамату\' болуп саналат, ал Дул Хиджжа айында Пайгамбар Ибрахим (АС), анын уулу Исмаил (АС) жана Хажар эне менен бирге аткарылат. Бул жетекчилик Жафарий ритуалдарынын схемасына ылайык, ал эми Мединадагы зыярат Хаждан мурда же кийин терең баалуу саякат болуп саналат.';

  @override
  String get umrahIntro =>
      'Умра — Меккеге жасалчу кичи ажылык жана Хаждан айырмаланып, аны жылдын каалаган убагында аткарууга болот. Милдеттүү болбосо да, руханий сообу абдан чоң жана ибадаттын өтө сунушталган түрү болуп саналат. Умра Хаждагы айрым каадаларды бөлүшөт, бирок ал кыскараак жана төрт негизги амалдан турат.';

  @override
  String get voiceInputTitle => 'Үн киргизүү';

  @override
  String get voiceInputMicTitle => 'Микрофон';

  @override
  String get voiceInputMicSubtitle =>
      'Текст жазуунун ордуна, Ask Ayara\'га үнүңүздү айтыңыз.';

  @override
  String get voiceInputMicDenied => 'Микрофонго кирүү четтетилди.';

  @override
  String get voiceInputSpeak => 'Айтыңыз';

  @override
  String get voiceInputListening => 'Угууда…';

  @override
  String get voiceInputPermissionDenied =>
      'Үн киргизүү үчүн микрофонго кирүү талап кылынат.';
}
