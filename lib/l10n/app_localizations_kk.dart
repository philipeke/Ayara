// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Тіліңізді таңдаңыз';

  @override
  String get languageSelectSub => 'Мұны кейінірек Баптаулардан өзгерте аласыз';

  @override
  String get actionContinue => 'Жалғастыру';

  @override
  String get languageSuggestedHeader => 'Ұсынылған';

  @override
  String get languageAllHeader => 'Барлық тілдер';

  @override
  String get languageSuggestedBadge => 'Ұсынылған';

  @override
  String get languageSearchHint => 'Іздеу…';

  @override
  String get planBasic => 'Стандарт';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Күнделікті бағыт-бағдар';

  @override
  String get categorySlot02 => 'Иман және сенім';

  @override
  String get categorySlot03 => 'Намаз жайлы ой-толғау';

  @override
  String get categorySlot04 => 'Сабыр және үміт';

  @override
  String get categorySlot05 => 'Кешірім сұрау';

  @override
  String get categorySlot06 => 'Мейірім және жанашырлық';

  @override
  String get categorySlot07 => 'Иман қуаты';

  @override
  String get categorySlot08 => 'Шүкіршіл жүрек';

  @override
  String get categorySlot09 => 'Өмірдің мәні';

  @override
  String get categorySlot10 => 'Отбасылық байланыстар';

  @override
  String get categorySlot11 => 'Ішкі тыныштық';

  @override
  String get categorySlot12 => 'Пайғамбар даналығы';

  @override
  String get categorySlot13 => 'Жақсы мінез';

  @override
  String get categorySlot14 => 'Азғыруға қарсы тұру';

  @override
  String get categorySlot15 => 'Кешкі зікір';

  @override
  String get categoryCustom => 'Жеке ой-толғау';

  @override
  String get dhikrMeaningSubhanallah => 'Алла пәк';

  @override
  String get dhikrMeaningAlhamdulillah => 'Барлық мадақ Аллаға тән';

  @override
  String get dhikrMeaningAllahuAkbar => 'Алла Ұлы';

  @override
  String get quranVerseHeartAtRest =>
      'Расында, жүректер Алланы еске алумен тыныштық табады.';

  @override
  String get promptHint =>
      'Исламдық бағыт-бағдар мен ой-толғау үшін санатты түртіңіз';

  @override
  String get currentLanguage => 'Ағымдағы тіл';

  @override
  String get settingsLanguage => 'Тіл баптаулары';

  @override
  String get settingsTitle => 'Баптаулар';

  @override
  String get chooseLanguage => 'Тіліңізді таңдаңыз';

  @override
  String get continueCta => 'Жалғастыру';

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
  String get optionsCta => 'Параметрлер';

  @override
  String get newCta => 'Жаңа';

  @override
  String get actionsTitle => 'Не істегіңіз келеді?';

  @override
  String get copy => 'Көшіру';

  @override
  String get share => 'Бөлісу';

  @override
  String get close => 'Жабу';

  @override
  String get copiedToast => 'Алмасу буферіне көшірілді';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Жаңа жауапты жасау мүмкін болмады';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nҚайта көргіңіз келе ме?';
  }

  @override
  String get cancelCta => 'Бас тарту';

  @override
  String get retryCta => 'Қайта көру';

  @override
  String get authTitle => 'Аккаунтыңызды жасаңыз';

  @override
  String get continueAsGuest => 'Қонақ ретінде жалғастыру';

  @override
  String get signInGoogle => 'Google арқылы кіру';

  @override
  String get signInApple => 'Apple арқылы кіру';

  @override
  String get signInEmail => 'Email арқылы кіру';

  @override
  String get upgradeWithApple => 'Apple арқылы жалғастыру';

  @override
  String get mustAccept =>
      'Қызмет көрсету шарттарын қабылдап, Құпиялық саясатын растауыңыз қажет.';

  @override
  String get termsLabel => 'Мен Қызмет көрсету шарттарын қабылдаймын';

  @override
  String get privacyLabel => 'Мен Құпиялық саясатын оқыдым';

  @override
  String get marketingOptIn => 'Жаңалықтар мен ұсыныстар алуға келісемін';

  @override
  String get openTerms => 'Қызмет көрсету шарттары';

  @override
  String get openPrivacy => 'Құпиялық саясаты';

  @override
  String get accountSection => 'Аккаунт';

  @override
  String get guestMode => 'Қонақ режимі';

  @override
  String get signedIn => 'Кірген';

  @override
  String get upgradeHint =>
      'Аккаунт жасап, ой-толғауларыңызды құрылғылар арасында сақтаңыз.';

  @override
  String get upgradeWithGoogle => 'Google арқылы жалғастыру';

  @override
  String get signOut => 'Шығу';

  @override
  String get snackUpgraded => 'Аккаунт Google арқылы жаңартылды ✅';

  @override
  String get snackSignedIn => 'Google арқылы кірдіңіз ✅';

  @override
  String get snackSignedOut => 'Шықтыңыз';

  @override
  String get snackSignedInApple => 'Apple арқылы кірдіңіз ✅';

  @override
  String get snackSignedInGoogle => 'Google арқылы кірдіңіз ✅';

  @override
  String get snackUpgradedApple => 'Аккаунт Apple арқылы жаңартылды ✅';

  @override
  String get snackUpgradedGoogle => 'Аккаунт Google арқылы жаңартылды ✅';

  @override
  String get historyTitle => 'Алдыңғы ой-толғаулар';

  @override
  String get historyOpenCta => 'Алдыңғы ой-толғаулар';

  @override
  String get historyEmpty => 'Әзірге сақталған ой-толғаулар жоқ.';

  @override
  String get historyDeleteTitle => 'Ой-толғауды өшіру керек пе?';

  @override
  String get historyDeleteBody => 'Бұл таңдалған элементті біржола жояды.';

  @override
  String get deleteCta => 'Өшіру';

  @override
  String get historyButton => 'Алдыңғы ой-толғаулар';

  @override
  String get historyEmptyTitle => 'Әзірге ой-толғаулар жоқ';

  @override
  String get historyEmptyBody =>
      'Алдымен бір нәрсе жасаңыз — сақталған элементтеріңіз осында көрінеді.';

  @override
  String get historyDelete => 'Өшіру';

  @override
  String get footerTitle => 'Wilaya, Iman және Sabr-пен';

  @override
  String get footerSubtitle => 'Бір уақытта бір дұға';

  @override
  String get genericErrorSnack =>
      'Бірдеңе дұрыс болмады — сәлден кейін қайта көріңіз.';

  @override
  String get upgradeAccountCta =>
      'Ой-толғауларыңызды құрылғылар арасында сақтаңыз – аккаунт жасаңыз';

  @override
  String get deleteAccount => 'Аккаунтты өшіру';

  @override
  String get exportData => 'Деректерімді экспорттау';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Асықпаңыз 🐯\nAyara-ға келесісіне дейін аздап уақыт керек…';

  @override
  String get rateDailyLimit =>
      'Әзірге ой-толғауларыңыз таусылды.\nКөбірек ой-толғау алыңыз немесе Wilaya-ға өтіңіз.';

  @override
  String get rateCreditsExhausted =>
      'Барлық ой-толғауларыңызды пайдаланып қойдыңыз.\nЖалғастыру үшін толықтырыңыз немесе Wilaya-ға өтіңіз.';

  @override
  String get rateGraceCreditsExhausted =>
      'Әзірге ой-толғауларыңыз таусылды.\nКөбірек ой-толғау алыңыз немесе Wilaya-ға өтіңіз.';

  @override
  String get premiumDescription =>
      'Wilaya премиум мүмкіндіктерді, болашақ санаттарды және арнайы белгіні ашады.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Қазір ой-толғауларыңыз бітіп қалды. Жоспар: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ой-толғауларыңызды тексеру мүмкін болмады: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ой-толғауларыңызды тексеру кезінде қате орын алды.';

  @override
  String get aiFallbackGeneric =>
      'Бірдеңе дұрыс болмады — сәлден кейін қайта көріңіз.';

  @override
  String get limitSectionTitle => 'Ой-толғаулар';

  @override
  String get limitTodayLabel => 'Пайдалану';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Қалған ой-толғаулар: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Жоспар: $plan';
  }

  @override
  String get limitLoadingLabel => 'Жүктелуде…';

  @override
  String get limitLoadingLabelDescription =>
      'Пайдалану статистикасы жүктеліп жатқанда ой-толғау картасында көрсетіледі.';

  @override
  String get aiLimitTitle => 'Ой-толғаулар';

  @override
  String get aiLimitSubtitle =>
      'Әр жауап 1 ой-толғауды пайдаланады. Стандарт жоспарында бастапқы ой-толғаулар бар. Wilaya премиум санаттарды ашады және толықтыруға мүмкіндік береді.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ой-толғау пайдаланылды';
  }

  @override
  String get creditsSectionTitle => 'Ой-толғаулар';

  @override
  String get creditsUsageLabel => 'Пайдалану';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Қалған ой-толғаулар: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Жоспар: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Жүктелуде…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ой-толғау статистикасы жүктеліп жатқанда көрсетіледі.';

  @override
  String get creditsTitle => 'Ой-толғаулар';

  @override
  String get creditsSubtitle =>
      'Әр жауап 1 ой-толғауды пайдаланады. Стандарт жоспарында бастапқы ой-толғаулар бар. Wilaya премиум санаттарды ашады және толықтыруға мүмкіндік береді.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ой-толғау пайдаланылды';
  }

  @override
  String get settingsDeleteTitle => 'Аккаунтты өшіру';

  @override
  String get settingsDeleteDescription =>
      'Аккаунтыңызды және барлық байланысты деректерді біржола өшіру.';

  @override
  String get settingsDeleteButtonLabel => 'Аккаунтымды өшіру';

  @override
  String get settingsDeleteDialogTitle => 'Аккаунт өшірілсін бе?';

  @override
  String get settingsDeleteDialogBody =>
      'Бұл әрекет қайтымсыз.\n\nБарлық чаттарыңыз, тарихыңыз және аккаунт ақпаратыңыз өшіріледі.';

  @override
  String get settingsDeleteDialogCancel => 'Бас тарту';

  @override
  String get settingsDeleteDialogConfirm => 'Өшіру';

  @override
  String get settingsFreeLimitUsedTitle => 'Бастапқы ой-толғаулар пайдаланылды';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Бұл құрылғыға арналған бастапқы ой-толғаулар пайдаланылып болды. Жалғастыру үшін Wilaya-ға өтіңіз немесе көбірек ой-толғау сатып алыңыз.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Бастапқы ой-толғаулар пайдаланылды';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Бұл құрылғыға арналған бастапқы ой-толғаулар пайдаланылып болды. Жалғастыру үшін Wilaya-ға өтіңіз немесе көбірек ой-толғау сатып алыңыз.';

  @override
  String get deviceBoundError =>
      'Бұл құрылғы басқа аккаунтқа байланыстырылған. Бастапқы аккаунтпен кіріңіз.';

  @override
  String get premiumTitle => 'Wilaya режимі';

  @override
  String get premiumSubtitleBasic => 'Ayara-ның толық мүмкіндігін ашыңыз.';

  @override
  String get premiumSubtitlePremium =>
      'Сіз Wilaya-дасыз. Көбірек ой-толғау керек пе?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Ағымдағы жоспар: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Ой-толғаулар: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Сатып алулар қазір қолжетімсіз.';

  @override
  String get premiumSignInToPurchase =>
      'Ой-толғау сатып алу немесе Wilaya ашу үшін кіріңіз.';

  @override
  String get premiumRestorePurchases => 'Сатып алуларды қалпына келтіру';

  @override
  String get premiumProcessing => 'Өңделуде…';

  @override
  String get premiumRestoreHintTitle =>
      'Бұл құрылғыда немесе басқа құрылғыда бұрын Wilaya немесе ой-толғаулар сатып алдыңыз ба?';

  @override
  String get premiumRestoreHintBody =>
      'Көрінбесе, сатып алуларыңызды қалпына келтіріңіз.';

  @override
  String get premiumBuyCredits200 => '200 ой-толғау сатып алу';

  @override
  String get premiumBuyCredits400 => '400 ой-толғау сатып алу';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya режиміне өту';

  @override
  String get premiumTopupHint =>
      'Wilaya-мен бірге қажет кезде қосымша ой-толғаулар қоса аласыз.';

  @override
  String get premiumUpgradeCta => 'Жаңарту';

  @override
  String get premiumRequiredForCategory =>
      'Бұл санат тек Wilaya пайдаланушыларына қолжетімді. Барлық премиум мазмұнды ашу үшін Баптаулардан жаңартыңыз.';

  @override
  String get premiumBenefitsBasic =>
      'Wilaya-ны ашып, қосымша ой-толғаулар алыңыз, премиум санаттарға қол жеткізіңіз және бағыт-бағдар қажет кезде жалғастырыңыз.';

  @override
  String get premiumBenefitsPremium =>
      'Сіз Wilaya режиміндесіз. Егер азайып қалса, қосымша ой-толғау қосып, үзіліссіз жалғастырыңыз.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya-ны ашу';

  @override
  String get premiumButtonTopup1000 => '1000 ой-толғау қосу';

  @override
  String get premiumBadge => 'Wilaya белсенді';

  @override
  String get premiumLoadingStore => 'Дүкен жүктелуде…';

  @override
  String get premiumProductNotAvailable =>
      'Бұл өнім дүкенде әлі қолжетімді емес. Кейінірек қайта көріңіз.';

  @override
  String get premiumPurchaseError =>
      'Сатып алу кезінде қате орын алды. Қайта көріңіз.';

  @override
  String get premiumBuyCredits100 => '100 ой-толғау қосу';

  @override
  String get premiumFeatureLocked =>
      'Бұл мүмкіндікті пайдалану үшін Wilaya-ны ашыңыз.';

  @override
  String get lockedCategoriesHint =>
      'Кейбір санаттар тек Wilaya мүшелеріне арналған. Сапарыңыздағы барлық ой-толғауларды зерттеу үшін оларды ашыңыз.';

  @override
  String get freePlanBlockedTitle =>
      'Бастапқы ой-толғауларыңызды пайдаланып біттіңіз';

  @override
  String get freePlanBlockedBody =>
      'Сіз Стандарт жоспарындасыз және бастапқы ой-толғаулар лимитіне жеттіңіз. Жалғастыру және премиум санаттарды ашу үшін — Wilaya-ға өтіңіз.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Төмендегі Wilaya нұсқаларын қараңыз';

  @override
  String get graceBlockedTitle =>
      'Бастапқы ой-толғауларыңызды пайдаланып біттіңіз';

  @override
  String get graceBlockedBody =>
      'Сіз Стандарт жоспарындасыз және бастапқы ой-толғаулар лимитіне жеттіңіз. Жалғастыру және премиум санаттарды ашу үшін — Wilaya-ға өтіңіз.';

  @override
  String get graceBlockedCtaGoPremium => 'Төмендегі Wilaya нұсқаларын қараңыз';

  @override
  String get rateGuestMustSignIn =>
      'Ayara мен ой-толғауларыңызды пайдалану үшін кіріңіз.';

  @override
  String get guestNoCreditsTitle => 'Қонақ режимі';

  @override
  String get guestNoCreditsBody =>
      'Қонақ ретінде қолданбаны шола аласыз, бірақ ой-толғауларды пайдалана алмайсыз. Кейінірек Баптаулардан кіріп, ой-толғауларды пайдаланып, сатып алуларды ашыңыз.';

  @override
  String get guestDialogContinue => 'Жалғастыру';

  @override
  String get guestDialogLoginInstead => 'Оның орнына кіру';

  @override
  String get optionalLabel => 'міндетті емес';

  @override
  String get accountDeleteSuccessTitle => 'Аккаунт өшірілді';

  @override
  String get accountDeleteSuccessBody =>
      'Аккаунтыңыз және оған қатысты деректер сәтті өшірілді.';

  @override
  String get accountDeleteSuccessClose => 'Жабу';

  @override
  String get accountDeleteErrorTitle => 'Аккаунтты өшіру мүмкін болмады';

  @override
  String get accountDeleteErrorClose => 'Жарайды';

  @override
  String get accountDeleteReauthCancelled =>
      'Қайта аутентификация тоқтатылды. Қайта кіріп, өшіруді қайталап көріңіз.';

  @override
  String get accountDeleteReauthRequired =>
      'Аккаунтты өшіру үшін жақында кірген болуыңыз керек. Шығып, қайта кіріп, кейін қайта көріңіз.';

  @override
  String get settingsDeletePermanentWarning =>
      'Бұл әрекет қайтымсыз. Аккаунтыңызға қатысты барлық деректер өшіріледі.';

  @override
  String get dailyGraceTitle => 'Күнделікті бағыт-бағдар';

  @override
  String get dailyGraceScriptureLabel => 'КҮН АЯТЫ';

  @override
  String get dailyGraceSaintLabel => 'Апта фигурасы';

  @override
  String get dailyGraceReflectionLabel => 'КЕШКІ ОЙ-ТОЛҒАУ';

  @override
  String get dailyGraceCopiedToast => 'Аят алмасу буферіне көшірілді';

  @override
  String get locationConsentLabel =>
      'Qibla бағыты мен намаз уақыттары үшін Ayara-ға орналасқан жерімді пайдалануға рұқсат ету';

  @override
  String get locationConsentHint =>
      'Тек осы мүмкіндіктер үшін пайдаланылады. Орналасқан жеріңіз ешқашан сақталмайды және бөлісілмейді.';

  @override
  String get permissionsSectionTitle => 'Permissions';

  @override
  String get permissionsSectionSubtitle =>
      'Microphone, location, calendar and other device access used by Ayara';

  @override
  String get permissionsNotificationsTitle => 'Notifications';

  @override
  String get permissionsNotificationsSubtitle =>
      'Needed if you want prayer reminders, dhikr reminders, daily reflections and calendar reminders.';

  @override
  String get permissionsLocationTitle => 'Location';

  @override
  String get permissionsLocationSubtitle =>
      'Used for the Qibla compass and accurate prayer times based on where you are. Your location is never shared or stored.';

  @override
  String get permissionsLocationDenied => 'Location access is disabled.';

  @override
  String get permissionsCalendarTitle => 'Phone Calendar';

  @override
  String get permissionsCalendarSubtitle =>
      'Used when you choose to add an Islamic occasion to your phone calendar. Your device may ask for access then.';

  @override
  String get permissionsStatusWhenNeeded => 'When needed';

  @override
  String get askPageTitle => 'Ayara-дан сұраңыз';

  @override
  String get askPageDescription =>
      'Иман, намаз, өмір немесе исламдық амал туралы кез келген сұрақ қойып, Құран мен Әһлу әл-Бәйт ілімдеріне негізделген бағыт-бағдар алыңыз.';

  @override
  String get askPageInputHint => 'Сұрағыңызды осында жазыңыз…';

  @override
  String get askPageSubmitCta => 'Сұрау';

  @override
  String get askPageInputEmptyError => 'Алдымен сұрақ жазыңыз.';

  @override
  String get askResultYourQuestion => 'Сіздің сұрағыңыз';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Меккеге қарап тұр';

  @override
  String get qiblaCompassInstruction =>
      'Алтын ине жоғарыны көрсеткенше телефоныңызды бұрыңыз.\nСол бағыт Qibla-ны (Мекке) көрсетеді.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS сигналы әлсіз. Сыртқа шығып, Қайта көруді түртіңіз.';

  @override
  String get qiblaRetry => 'Қайта көру';

  @override
  String get qiblaTitle => 'Qibla бағыты';

  @override
  String qiblaDistanceLabel(String km) {
    return 'Меккеге дейін $km км';
  }

  @override
  String get qiblaLocationNeededTitle => 'Орналасқан жер қажет';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara сіз тұрған жерден Меккедегі Қағбаның бағытын есептей алуы үшін орналасқан жерге қолжетімділік беріңіз.';

  @override
  String get qiblaOpenSettings => 'Баптауларды ашу';

  @override
  String get qiblaCompassLoading => 'Орныңыз анықталуда…';

  @override
  String get qiblaTowardMecca => 'Меккеге қарай';

  @override
  String get prayerTimesTitle => 'Намаз уақыттары';

  @override
  String get prayerTimesFajr => 'Фәжр';

  @override
  String get prayerTimesDhuhr => 'Зуһр';

  @override
  String get prayerTimesAsr => 'Аср';

  @override
  String get prayerTimesMaghrib => 'Мағриб';

  @override
  String get prayerTimesIsha => 'Иша';

  @override
  String get prayerTimesLocationNeededTitle => 'Орналасқан жер қажет';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara сіздің қалаңыз үшін дәл намаз уақыттарын есептеуі үшін орналасқан жерге қолжетімділік беріңіз.';

  @override
  String get prayerTimesNextLabel => 'Келесі';

  @override
  String get prayerTimesDoneLabel => 'Аяқталды';

  @override
  String get monthlyPrayerTimesTitle => 'Айлық намаз уақыттары';

  @override
  String get monthlyPrayerTimesViewButton => 'Толық айды көру';

  @override
  String get monthlyPrayerTimesNextMonth => 'Келесі ай';

  @override
  String get monthlyPrayerTimesDayHeader => 'Күн';

  @override
  String get sharePrayerTimes => 'Намаз уақыттарын бөлісу';

  @override
  String get notificationsSectionTitle => 'Хабарландырулар';

  @override
  String get notificationsSectionSubtitle =>
      'Намаз ескертулері, күнтізбе оқиғалары және т.б.';

  @override
  String get dailyReflectionReminderTitle => 'Күнделікті ой-толғау';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara-ны ашып, иманыңызбен байланысуға арналған жұмсақ күнделікті еске салу.';

  @override
  String get dailyReflectionReminderEnable => 'Күнделікті еске салуды қосу';

  @override
  String get dailyReflectionReminderTimeLabel => 'Еске салу уақыты';

  @override
  String get prayerNotificationsTitle => 'Намаз ескертулері';

  @override
  String get prayerNotificationsDescription =>
      'Күн бойы рухани байланыста болуға көмектесу үшін әр намаз уақытынан бұрын жұмсақ еске салу алыңыз.';

  @override
  String get prayerNotificationsEnable => 'Намаз ескертулерін қосу';

  @override
  String get prayerNotificationsOpenSettings => 'Хабарландыру баптауларын ашу';

  @override
  String get prayerNotificationsDenied => 'Хабарландырулар өшірілген';

  @override
  String get prayerNotificationsDeniedHint =>
      'Намаз уақыты ескертулерін алу үшін Баптаулардан Ayara-ға хабарландыруларға рұқсат беріңіз.';

  @override
  String get notificationsConsentLabel =>
      'Намаз уақыттары туралы хабарландыруларға рұқсат ету';

  @override
  String get prayerNotifTitleFajr => '🌅 Фәжр — Таң намазы';

  @override
  String get prayerNotifBodyFajr =>
      'Фәжр — Әһлу әл-Бәйттің таң намазы. Имам Әли (ғ.с.) айтты: Таң намазын ең қымбат аманатыңды қорғағандай қорға. Тұр, тазалан да, Алланың алдына тұр.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Зуһр — Түскі намаз';

  @override
  String get prayerNotifBodyDhuhr =>
      'Әһлу әл-Бәйт имамдары зікірдің әр сәтін жоғары бағалаған. Күніңізді бір сәтке тоқтатып, қажет болса Зуһр мен Асрды қосып оқып, жүрегіңізді қайтадан Аллаға бұрыңыз.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Аср — Екінті намазы';

  @override
  String get prayerNotifBodyAsr =>
      'Намазды қорға, өйткені ол сен мен Алланың арасындағы келісім. Аср уақыты келді — оны зікірсіз өткізіп алма.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Мағриб — Ақшам намазы';

  @override
  String get prayerNotifBodyMaghrib =>
      'Күн батты — Әһлу әл-Бәйт дұға үшін қасиетті санаған сәт. Мағриб намазын оқып, түн басталғанша Аллаға дұғада қол жай.';

  @override
  String get prayerNotifTitleIsha => '🌙 Иша — Құптан намазы';

  @override
  String get prayerNotifBodyIsha =>
      'Күніңізді Алламен аяқтаңыз. Имамдар Ишадан кейін Салат әл-Ләйлді ынталандырған — бірақ алдымен Ишаңызды оқып, күнді Оның зікірімен аяқтаңыз.';

  @override
  String get outOfReflectionsBannerText =>
      'Сіз барлық ой-толғауларыңызды пайдаланып қойдыңыз';

  @override
  String get outOfReflectionsBannerCta => 'Көбірек алу';

  @override
  String get dhikrPageTitle => 'Зікір';

  @override
  String get dhikrTapToCount => 'Санау үшін шеңберді түртіңіз';

  @override
  String get dhikrResetButton => 'Қалпына келтіру';

  @override
  String get dhikrComplete => 'МашаАллаһ';

  @override
  String get dhikrCompleteMessage =>
      'Сіз Алланы 100 рет еске алуды аяқтадыңыз. Ол жүрегіңізге нұр болсын.';

  @override
  String get disclaimerTitle => 'Бұл қолданбадағы бағыт-бағдар туралы';

  @override
  String get disclaimerBody =>
      'Ayara Құран мен Әһлу әл-Бәйт ілімдеріне негізделген исламдық ой-толғаулар, еске салулар және рухани мазмұн ұсынады. Бұл мазмұн тек жалпы ақпараттық және шабыттандыру мақсатында беріледі.\n\nAyara білікті ғалымды алмастырмайды.\nБұл қолданбадағы бағыт-бағдар білікті ислам ғалымын, маржа\'ты немесе теологиялық дайындықтан өткен ұстазды алмастырмайды. Шиа исламында діни бағыт-бағдар Жағфари фиқһ мектебіне және тірі Маржа\'қа (еліктеу қайнары) еру дәстүріне негізделген — бұл діни тәжірибеде сенушілерді бағыттайтын білікті құқықтанушы. Егер сізде діни үкімдер, халал мен харам мәселелері немесе жеке діни міндеттер туралы сұрақтар болса, білікті Маржа\'тан немесе қауымыңыздағы ғалымнан кеңес алыңыз.\n\nБұл қолданба діни үкім шығармайды.\nAyara фиқһ мәселелері немесе жеке діни міндеттер бойынша түпкілікті шешім қабылдамайды. Мұндағы ешнәрсе фәтуа немесе міндетті діни нұсқау ретінде қабылданбауы тиіс.\n\nӘһлу әл-Бәйттің орталық орны.\nШиа исламында Пайғамбар Мұхаммед ﷺ және оның пәк әулеті — Әһлу әл-Бәйт — Құраннан кейінгі ислам үмбетінің беделді жетекшілері болып саналады. Әһлу әл-Бәйттің он екі имамы ислам ілімдерін түсіндіруге Құдай тарапынан тағайындалған. Бұл қолданбадағы мазмұн сол дәстүрді бейнелейді және оны адал құрметтеуге тырысады.\n\nҚауымдастықтың маңызы.\nБұл қолданба сіздің дінмен байланысыңызды нығайтуды көздейді, сонымен бірге жергілікті мешіттің, ислам орталығының және діни қауымдастығыңыздың маңызды рөлін терең құрметтейді. Жақын маңдағы білікті ұстаздармен байланыста болып, солардан үйренуге шақырамыз.';

  @override
  String get disclaimerClose => 'Түсіндім';

  @override
  String get disclaimerInfoTooltip => 'Бұл қолданбадағы бағыт-бағдар туралы';

  @override
  String get disclaimerSettingsSubtitle =>
      'Тек жалпы ақпараттық мақсатта. Толық ескертпені оқу үшін түртіңіз.';

  @override
  String get disclaimerSectionHeader => 'Бағыт-бағдар туралы ескерту';

  @override
  String get navHome => 'Басты бет';

  @override
  String get navReflect => 'Ой-толғау';

  @override
  String get navDuas => 'Дұғалар';

  @override
  String get navCalendar => 'Күнтізбе';

  @override
  String get dashboardToday => 'БҮГІН';

  @override
  String get dashboardComingUp => 'Алда';

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
  String get dashboardQuickAccess => 'Жылдам қолжеткізу';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Зікір';

  @override
  String get quickActionDailyGrace => 'Бағыт-бағдар';

  @override
  String get quickActionPrayerTimes => 'Намаз уақыттары';

  @override
  String get askAyaraTitle => 'Ayara-дан сұраңыз';

  @override
  String get askAyaraSubtitle =>
      'Кез келген исламдық сұрақ қойып, ойланып берілген, бағыттаушы жауап алыңыз.';

  @override
  String get askAyaraHint => 'мысалы, Рамазанның маңызы қандай?';

  @override
  String get askAyaraSubmit => 'Сұрау';

  @override
  String get wisdomOfTheDayTitle => 'Күннің даналығы';

  @override
  String get calendarScreenTitle => 'Ислам күнтізбесі';

  @override
  String get calendarUpcomingOccasions => 'Алдағы оқиғалар';

  @override
  String get calendarOccasionRemindersTitle => 'Оқиға ескертулері';

  @override
  String get calendarOccasionRemindersHint =>
      'Әр оқиғаның алдындағы кеште хабарланады';

  @override
  String get calendarNotifPermissionDenied =>
      'Хабарландыру рұқсаты берілмеді. Оны құрылғы баптауларынан қосыңыз.';

  @override
  String get calendarNoEvents => 'Алдағы оқиғалар табылмады.';

  @override
  String get calendarAddToPhone => 'Телефон күнтізбесіне қосу';

  @override
  String get calendarAddedToPhone => 'Күнтізбеге қосылды';

  @override
  String get calendarCountdownToday => 'БҮГІН';

  @override
  String get calendarCountdownTomorrow => 'ЕРТЕҢ';

  @override
  String calendarCountdownDays(int days) {
    return '$days күннен кейін';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Қаң';

  @override
  String get calendarMonthFeb => 'Ақп';

  @override
  String get calendarMonthMar => 'Нау';

  @override
  String get calendarMonthApr => 'Сәу';

  @override
  String get calendarMonthMay => 'Мам';

  @override
  String get calendarMonthJun => 'Мау';

  @override
  String get calendarMonthJul => 'Шіл';

  @override
  String get calendarMonthAug => 'Там';

  @override
  String get calendarMonthSep => 'Қыр';

  @override
  String get calendarMonthOct => 'Қаз';

  @override
  String get calendarMonthNov => 'Қар';

  @override
  String get calendarMonthDec => 'Жел';

  @override
  String get calendarSeasonMuharramEarly =>
      'Мұхаррам күндері — Карбала еске алынсын';

  @override
  String get calendarSeasonAshura => 'Ашура — Я Хусейн (ғ.с.)';

  @override
  String get calendarSeasonMuharramLate =>
      'Мұхаррам — аза және ой-толғау күндері';

  @override
  String get calendarSeasonArbaeen => 'Арбаин — Хусейннің қырық күні';

  @override
  String get calendarSeasonRoadToArbaeen => 'Арбаинге жол';

  @override
  String get calendarSeasonMabath => 'Маб\'ас мүбәрак — уахидің таңы';

  @override
  String get calendarSeasonMidShaban =>
      'Шағбан ортасы — Имам әл-Мәһдидің (AJ) туған күні';

  @override
  String get calendarSeasonRamadan => 'Рамазан мүбәрак — Құран айы';

  @override
  String get calendarSeasonGhadir => 'Ид әл-Ғадир мүбәрак!';

  @override
  String get hijriMonth1 => 'Мұхаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Раби\' әл-Әууәл';

  @override
  String get hijriMonth4 => 'Раби\' әс-Сани';

  @override
  String get hijriMonth5 => 'Жумадә әл-Әууәл';

  @override
  String get hijriMonth6 => 'Жумадә әс-Сани';

  @override
  String get hijriMonth7 => 'Ражаб';

  @override
  String get hijriMonth8 => 'Шағбан';

  @override
  String get hijriMonth9 => 'Рамазан';

  @override
  String get hijriMonth10 => 'Шәууәл';

  @override
  String get hijriMonth11 => 'Зул-Қағда';

  @override
  String get hijriMonth12 => 'Зул-Хижжа';

  @override
  String get duasScreenTitle => 'Дұғалар және Зиярат';

  @override
  String get duasSearchHint => 'Дұғаларды, зияраттарды іздеу…';

  @override
  String get duasFilterAll => 'Барлығы';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дұға және зиярат',
      one: '$count дұға',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Дұғалар табылмады.';

  @override
  String get duaCategoryDaily => 'Күнделікті';

  @override
  String get duaCategoryWeekly => 'Апталық';

  @override
  String get duaCategoryOccasions => 'Оқиғалар';

  @override
  String get duaCategoryZiyarat => 'Зиярат';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get eventTypeBirth => 'Туған күн';

  @override
  String get eventTypeMartyrdom => 'Шәһид болу';

  @override
  String get eventTypeOccasion => 'Оқиға';

  @override
  String get duaCopyTooltip => 'Аударманы көшіру';

  @override
  String get duaToggleTransliteration => 'Транслитерация';

  @override
  String get duaToggleTranslation => 'Аударма';

  @override
  String get duaAskAiLabel => 'Осы дұғаны Ayara-дан түсіндіріп беруін сұрау';

  @override
  String get duaAskAiLockedLabel => 'Ayara-дан сұрау (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara түсіндірмелері тек Wilaya мүшелеріне қолжетімді. Баптаулардан жаңартыңыз.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" туралы Ayara-дан сұраңыз — жақында!';
  }

  @override
  String get duaCopiedToast => 'Дұға алмасу буферіне көшірілді.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Алла Ұлы';

  @override
  String get tasbihAlhamdulillahMeaning => 'Барлық мадақ Аллаға тән';

  @override
  String get tasbihSubhanallahMeaning => 'Алла пәк';

  @override
  String get tasbihResetTooltip => 'Қалпына келтіру';

  @override
  String get tasbihCompleteTitle => 'Тасбих аяқталды';

  @override
  String get tasbihCompleteMessage => 'Алла сіздің зікіріңізді қабыл етсін.';

  @override
  String get tasbihTapHint => 'Санау үшін кез келген жерді түртіңіз';

  @override
  String get tasbihatScreenTitle => 'Намаз нұсқаулығы';

  @override
  String get tasbihatScreenSubtitle => 'НАМАЗДАҒЫ ҰЛЫҚТАУЛАР';

  @override
  String get tasbihatScreenDescription =>
      'Күнделікті намаз барысында және одан кейін оқылатын ұлықтауларға арналған толық нұсқаулық — Әһлу әл-Бәйт (а) дәстүрі бойынша.';

  @override
  String get tasbihatArba3Title => 'ТАСБИХАТ ӘЛ-АРБАҒА';

  @override
  String get tasbihatArba3Subtitle => '3-ші және 4-ші ракағатта оқылады';

  @override
  String get tasbihatArba3Info =>
      'Шиа фиқһында Тасбихат әл-Арбаға Зуһр, Аср, Мағриб және Иша намаздарының 3-ші және 4-ші ракағаттарында «Фатиха» сүресінің орнына оқылады. Оны бір рет оқу — уәжіп, ал үш рет оқу — мұстахаб.';

  @override
  String get tasbihatArba3Translation =>
      'Алла пәк · Барлық мадақ Аллаға тән\nАлладан басқа тәңір жоқ · Алла Ұлы';

  @override
  String get tasbihatArba3CompleteTitle => 'Оқу аяқталды';

  @override
  String get tasbihatArba3CompleteMessage => 'Намазыңыз қабыл болсын — Әмин';

  @override
  String get tasbihatArba3TapHint => 'Әр оқудан кейін түртіңіз';

  @override
  String get tasbihatZahraSubtitle => 'Әр намаздан кейін · 100 моншақ';

  @override
  String get tasbihatZahraOriginLabel => 'Шығу тегі';

  @override
  String get tasbihatZahraHadith =>
      'Фатима әз-Зәһра (с.а.) Пайғамбардан ﷺ қызметші сұрады. Ол: «Саған одан да жақсы нәрсе үйретейін бе? Әр намаздан кейін 33 рет Субханаллаһ, 33 рет Әлхамдулилләһ және 34 рет Аллаһу Әкбар айт. Бұл саған қызметшіден де жақсы», — деді.';

  @override
  String get tasbihatZahraHadithSource => '— Бихар әл-Әнуар, 85-том';

  @override
  String get tasbihatZahraOpenCounter => 'Тасбих санауышын ашу';

  @override
  String get tasbihatDuasTitle => 'ҰСЫНЫЛАТЫН ДҰҒАЛАР';

  @override
  String get tasbihatDuasSubtitle => 'Намазды аяқтағаннан кейін';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Аят әл-Күрси';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Әр парыз намаздан кейін';

  @override
  String get tasbihatDuaAyatKursiSource => 'Бақара сүресі 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Кімде-кім әр парыз намаздан кейін Аят әл-Күрсиді оқыса, оны жәннаттан тек өлім ғана бөледі. Имам әл-Бақир (а) мұны Құрандағы ең ұлы аяттардың бірі деген.';

  @override
  String get tasbihatDuaSalawatTitle => 'Салауат';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Әр намаздан кейін · барлық дұғаларды тәмамдайды';

  @override
  String get tasbihatDuaSalawatSource => 'Имам әс-Садық (а) — Әл-Кәфи';

  @override
  String get tasbihatDuaSalawatNote =>
      'Пайғамбар ﷺ мен оның пәк әулетіне (Әл Мұхаммад) салауат айту әр дұғаны аяқтау үшін ұсынылады. Имам әс-Садық (а): «Кез келген дұға Мұхаммад пен оның әулетіне салауат айтылғанша тоқтап тұрады», — деген.';

  @override
  String get tasbihatDuaFarajTitle => 'Дұға әл-Фараж';

  @override
  String get tasbihatDuaFarajWhen =>
      'Әр намаздан кейін · заманымыздың Имамы үшін';

  @override
  String get tasbihatDuaFarajSource => 'Имам әл-Хасан әл-Аскари (а) үйреткен';

  @override
  String get tasbihatDuaFarajNote =>
      'Имам ал-Махдидің (аф) қайта келуі үшін дұға, он екінші Имам, әкесі тарапынан үйретілген. Бұл дұға көпшілік Шиит мұсылмандары тарапынан намаздан кейін тірі Имамға деген адалдық ретінде оқылады.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Фатима ханымның тасбихы';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Мағриб пен Ишадан кейін · ерекше ұсынылады';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Имам әл-Бақир (а) — Бихар әл-Әнуар';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Имам әл-Бақир (а) Ишадан кейін ұйықтар алдында Тасбих әз-Зәһраны оқу 1000 ракағат нәпіл намаздан артық деген. Оның нұры аспанға көтеріледі.';

  @override
  String get tasbihFatimaGiftPre => 'Пайғамбардан сый';

  @override
  String get tasbihFatimaGiftPost => 'әр намаздан кейін оқылады';

  @override
  String get prayerTrackerTitle => 'НАМАЗ БАҚЫЛАУЫ';

  @override
  String get prayerTrackerPrayed => 'Оқылды';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count күндік тізбек';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Бүгінгі барлық намаздар аяқталды. Алла қабыл етсін.';

  @override
  String get dhikrTrackerTitle => 'ТАСБИХ ӘЗ-ЗӘҺРА';

  @override
  String get dhikrTrackerCompletedToday => 'Бүгін аяқталды';

  @override
  String get dhikrTrackerNotDoneToday => 'Бүгін жасалмады';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count күндік тізбек';
  }

  @override
  String get dhikrReminderTitle => 'Тасбих еске салуы';

  @override
  String get dhikrReminderDescription =>
      'Тасбих әз-Зәһраны (с.а.) оқу үшін жұмсақ күнделікті еске салу.';

  @override
  String get dhikrReminderEnable => 'Тасбих еске салуын қосу';

  @override
  String get dhikrReminderTimeLabel => 'Еске салу уақыты';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Күнделікті хадис';

  @override
  String get hadithLabelArabic => 'АРАБ ТІЛІНДЕ';

  @override
  String get hadithLabelTranslation => 'АУДАРМА';

  @override
  String get hadithBadge => 'ХАДИС';

  @override
  String get hadithShare => 'Осы хадисті бөлісу';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara арқылы';
  }

  @override
  String get hadithNavPrevious => 'Алдыңғы';

  @override
  String get hadithNavNext => 'Келесі';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Он төрт мағлұм';

  @override
  String get imamsScreenSubtitle =>
      'Пайғамбар, Хазірет Фатима және Он екі Имам — он екі Шиит Исламындағы пәк және қателіксіз жетекшілер';

  @override
  String get imamLabelBorn => 'Туған';

  @override
  String get imamLabelMartyrdom => 'Шәһид болған';

  @override
  String get imamLabelStatus => 'Мәртебе';

  @override
  String get imamSectionBiography => 'ӨМІРБАЯН';

  @override
  String get imamSectionFamousSaying => 'ТАНЫМАЛ СӨЗ';

  @override
  String get imamRoleProphet => 'Соңғы Пайғамбар';

  @override
  String get imamRoleInfallible => 'Күнәсіз';

  @override
  String get imamOrdinal1 => '1-ші Имам';

  @override
  String get imamOrdinal2 => '2-ші Имам';

  @override
  String get imamOrdinal3 => '3-ші Имам';

  @override
  String get imamOrdinal4 => '4-ші Имам';

  @override
  String get imamOrdinal5 => '5-ші Имам';

  @override
  String get imamOrdinal6 => '6-шы Имам';

  @override
  String get imamOrdinal7 => '7-ші Имам';

  @override
  String get imamOrdinal8 => '8-ші Имам';

  @override
  String get imamOrdinal9 => '9-шы Имам';

  @override
  String get imamOrdinal10 => '10-шы Имам';

  @override
  String get imamOrdinal11 => '11-ші Имам';

  @override
  String get imamOrdinal12 => '12-ші Имам';

  @override
  String get duaAudioScreenTitle => 'Дұғаларды тыңдау';

  @override
  String get duaAudioScreenSubtitle =>
      'Тыңдағыңыз келетін дұғаны таңдаңыз. Ойнату немесе тоқтату үшін тақташаны түртіңіз.';

  @override
  String get duaAudioComingSoonMessage =>
      'Бұл дұғаның аудиосы алдағы жаңартуда қолжетімді болады.';

  @override
  String get duaAudioClose => 'Жабу';

  @override
  String get duaAudioError =>
      'Аудионы жүктеу мүмкін болмады. Байланысыңызды тексеріңіз.';

  @override
  String get duaAudioMetaTransmittedBy => 'Жеткізген';

  @override
  String get duaAudioMetaOccasion => 'Оқиға';

  @override
  String get duaAudioMetaDuration => 'Ұзақтығы';

  @override
  String get quickActionDailyHadith => 'Күнделікті хадис';

  @override
  String get quickAction14Masumeen => 'Он төрт мағлұм';

  @override
  String get quickActionListenDuas => 'Тыңдау';

  @override
  String get quickActionTasbihat => 'Намаз нұсқаулығы';

  @override
  String get pilgrimageSectionTitle => 'Қасиетті сапар';

  @override
  String get pilgrimageSectionSubtitle =>
      'Хаж және Ұмраға арналған толық нұсқаулықтар — Алланың Меккедегі Қасиетті Үйіне сапар';

  @override
  String get hajjCardTitle => 'Хаж';

  @override
  String get hajjCardSubtitle => 'Исламның бесінші тірегі';

  @override
  String get hajjCardDescription =>
      'Жыл сайынғы ұлы қажылық — шамасы келетін әр мұсылманға өмірінде бір рет парыз';

  @override
  String get hajjScreenTitle => 'Хаж нұсқаулығы';

  @override
  String get hajjScreenSubtitle => 'Ұлы қажылыққа арналған қадамдық нұсқаулық';

  @override
  String get umrahCardTitle => 'Ұмра';

  @override
  String get umrahCardSubtitle => 'Кіші қажылық';

  @override
  String get umrahCardDescription =>
      'Жылдың кез келген уақытында орындалатын, рухани сауабы мол сапар';

  @override
  String get umrahScreenTitle => 'Ұмра нұсқаулығы';

  @override
  String get umrahScreenSubtitle =>
      'Кіші қажылыққа арналған қадамдық нұсқаулық';

  @override
  String get pilgrimageStepsTitle => 'Рәсімдер мен қадамдар';

  @override
  String get pilgrimageImportantNotesTitle => 'Маңызды ескертпелер';

  @override
  String get pilgrimageDuaTitle => 'Бұл қадамға арналған дұға';

  @override
  String get pilgrimageJafariNoteTitle => 'Джафари фиқһы туралы ескерту';

  @override
  String get pilgrimageComplete => '✓ Толық';

  @override
  String get pilgrimageMarkDone => 'Толық деп белгілеу';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total қадамнан';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes мин';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Шиа қажылары';

  @override
  String get pilgrimageShiaNoteBody =>
      'Көптеген Шиит қажылары Пайғамбар Мұхаммедтің (САУ) зиараты үшін Мәдинаға, Масджид әл-Набави мен Жаннат әл-Бақи зираттарына саяхат жасайды. Бұл сапарлар терең рухани мағынаға ие, бірақ олар Хадж рәсімдері емес.';

  @override
  String get hajjIntro =>
      'Хадж — Исламның бесінші тірегі, физикалық және қаржылық мүмкіндігі бар әрбір мұсылман үшін өмірінде бір рет міндетті. Бүгінгі күні көпшілік Он екі Шиит қажылары үшін бұл Хадж әл-Тамәтту\', Пайғамбар Ибрахимнің (АС) ізімен, оның ұлы Исмаилдің (АС) және Хазірет Хажардың ізімен Дул Хиджжа айында орындалады. Бұл нұсқаулық Жафарий рәсімдерінің схемасына сәйкес келеді, ал Мәдинадағы зиарат Хадждан бұрын немесе кейін терең қадірлі сапар болып қала береді.';

  @override
  String get umrahIntro =>
      'Ұмра — Меккеге жасалатын кіші қажылық және Хаждан айырмашылығы — оны жылдың кез келген уақытында жасауға болады. Міндетті болмаса да, оның рухани сауабы өте үлкен және ол құлшылықтың қатты ұсынылатын түрі саналады. Ұмра Хаждың кейбір рәсімдерін бөліседі, бірақ ол қысқалау және төрт негізгі рәсімнен тұрады.';

  @override
  String get voiceInputTitle => 'Дыбыстық енгізу';

  @override
  String get voiceInputMicTitle => 'Микрофон';

  @override
  String get voiceInputMicSubtitle =>
      'Жазу орнына Ayara-ға сұрау үшін сөйлеңіз.';

  @override
  String get voiceInputMicDenied => 'Микрофонға қолжетімділік берілмеді.';

  @override
  String get voiceInputSpeak => 'Сөйлеңіз';

  @override
  String get voiceInputListening => 'Тыңдап жатыр…';

  @override
  String get voiceInputPermissionDenied =>
      'Дыбыстық енгізу үшін микрофонға қолжетімділік қажет.';
}
