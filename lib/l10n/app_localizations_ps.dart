// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'خپله ژبه وټاکئ';

  @override
  String get languageSelectSub => 'تاسو دا وروسته په Settings کې بدلولی شئ';

  @override
  String get actionContinue => 'دوام ورکړئ';

  @override
  String get languageSuggestedHeader => 'وړاندیز شوې';

  @override
  String get languageAllHeader => 'ټولې ژبې';

  @override
  String get languageSuggestedBadge => 'وړاندیز شوې';

  @override
  String get languageSearchHint => 'لټون…';

  @override
  String get planBasic => 'معیاري';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'ورځنی لارښود';

  @override
  String get categorySlot02 => 'ایمان او باور';

  @override
  String get categorySlot03 => 'د لمانځه تأمل';

  @override
  String get categorySlot04 => 'صبر او هیله';

  @override
  String get categorySlot05 => 'بښنه وغواړئ';

  @override
  String get categorySlot06 => 'رحمت او مهرباني';

  @override
  String get categorySlot07 => 'د ایمان ځواک';

  @override
  String get categorySlot08 => 'منندوی زړه';

  @override
  String get categorySlot09 => 'د ژوند موخه';

  @override
  String get categorySlot10 => 'د کورنۍ اړیکې';

  @override
  String get categorySlot11 => 'داخلي سکون';

  @override
  String get categorySlot12 => 'د پیغمبر حکمت';

  @override
  String get categorySlot13 => 'ښه اخلاق';

  @override
  String get categorySlot14 => 'له وسوسې سره مقابله';

  @override
  String get categorySlot15 => 'د ماښام ذکر';

  @override
  String get categoryCustom => 'شخصي تأمل';

  @override
  String get dhikrMeaningSubhanallah => 'الله پاک دی';

  @override
  String get dhikrMeaningAlhamdulillah =>
      'ټول ثنا او ستاینه یوازې د الله لپاره ده';

  @override
  String get dhikrMeaningAllahuAkbar => 'الله تر ټولو لوی دی';

  @override
  String get quranVerseHeartAtRest =>
      'بېشکه د الله په یاد سره زړونه سکون مومي.';

  @override
  String get promptHint => 'د اسلامي لارښوونې او تأمل لپاره یوه کټګوري وټاکئ';

  @override
  String get currentLanguage => 'اوسنۍ ژبه';

  @override
  String get settingsLanguage => 'د ژبې ترتیبات';

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get chooseLanguage => 'خپله ژبه وټاکئ';

  @override
  String get continueCta => 'دوام ورکړئ';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کلمې',
      one: '$count کلمه',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'اختیارونه';

  @override
  String get newCta => 'نوی';

  @override
  String get actionsTitle => 'تاسو څه کول غواړئ؟';

  @override
  String get copy => 'کاپي';

  @override
  String get share => 'شریکول';

  @override
  String get close => 'تړل';

  @override
  String get copiedToast => 'کلیپبورډ ته کاپي شو';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'نوی ځواب جوړ نه شو';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nایا غواړئ بیا هڅه وکړئ؟';
  }

  @override
  String get cancelCta => 'لغوه';

  @override
  String get retryCta => 'بیا هڅه وکړئ';

  @override
  String get authTitle => 'خپل اکاونټ جوړ کړئ';

  @override
  String get continueAsGuest => 'د مېلمه په توګه دوام ورکړئ';

  @override
  String get signInGoogle => 'له Google سره ننوځئ';

  @override
  String get signInApple => 'له Apple سره ننوځئ';

  @override
  String get signInEmail => 'د ایمیل له لارې ننوځئ';

  @override
  String get upgradeWithApple => 'له Apple سره دوام ورکړئ';

  @override
  String get mustAccept =>
      'تاسو باید د خدمت شرطونه ومنئ او د محرمیت تګلاره تایید کړئ.';

  @override
  String get termsLabel => 'زه د خدمت شرطونه منم';

  @override
  String get privacyLabel => 'ما د محرمیت تګلاره لوستې ده';

  @override
  String get marketingOptIn =>
      'زه د خبرونو او وړاندیزونو ترلاسه کولو سره موافق یم';

  @override
  String get openTerms => 'د خدمت شرطونه';

  @override
  String get openPrivacy => 'د محرمیت تګلاره';

  @override
  String get accountSection => 'اکاونټ';

  @override
  String get guestMode => 'د مېلمه حالت';

  @override
  String get signedIn => 'ننوتل شوي';

  @override
  String get upgradeHint =>
      'د اکاونټ په جوړولو سره خپل تأملات په ټولو وسایلو کې خوندي کړئ.';

  @override
  String get upgradeWithGoogle => 'له Google سره دوام ورکړئ';

  @override
  String get signOut => 'وتل';

  @override
  String get snackUpgraded => 'اکاونټ د Google له لارې لوړ شو ✅';

  @override
  String get snackSignedIn => 'د Google له لارې ننوتل وشول ✅';

  @override
  String get snackSignedOut => 'وتل وشول';

  @override
  String get snackSignedInApple => 'د Apple له لارې ننوتل وشول ✅';

  @override
  String get snackSignedInGoogle => 'د Google له لارې ننوتل وشول ✅';

  @override
  String get snackUpgradedApple => 'اکاونټ د Apple له لارې لوړ شو ✅';

  @override
  String get snackUpgradedGoogle => 'اکاونټ د Google له لارې لوړ شو ✅';

  @override
  String get historyTitle => 'پخواني تأملات';

  @override
  String get historyOpenCta => 'پخواني تأملات';

  @override
  String get historyEmpty => 'لا تر اوسه کوم خوندي شوي تأملات نشته.';

  @override
  String get historyDeleteTitle => 'تأمل پاک شي؟';

  @override
  String get historyDeleteBody => 'دا به ټاکل شوی توکی د تل لپاره پاک کړي.';

  @override
  String get deleteCta => 'پاکول';

  @override
  String get historyButton => 'پخواني تأملات';

  @override
  String get historyEmptyTitle => 'لا تر اوسه کوم تأمل نشته';

  @override
  String get historyEmptyBody =>
      'لومړی یو څه جوړ کړئ — ستاسو خوندي شوي توکي به دلته ښکاره شي.';

  @override
  String get historyDelete => 'پاکول';

  @override
  String get footerTitle => 'له Wilaya، ایمان او صبر سره';

  @override
  String get footerSubtitle => 'هر ځل یوه دعا';

  @override
  String get genericErrorSnack =>
      'یو څه ناسم شول — مهرباني وکړئ لږ وروسته بیا هڅه وکړئ.';

  @override
  String get upgradeAccountCta =>
      'خپل تأملات په ټولو وسایلو کې خوندي کړئ – اکاونټ جوړ کړئ';

  @override
  String get deleteAccount => 'اکاونټ پاک کړئ';

  @override
  String get exportData => 'زما معلومات راوباسئ';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'لږ ارام 🐯\nAyara ته د بل ځواب مخکې لږ وخت پکار دی…';

  @override
  String get rateDailyLimit =>
      'ستاسو تأملات اوس لپاره ختم شوي دي.\nنور تأملات واخلئ یا Wilaya ته لوړ شئ.';

  @override
  String get rateCreditsExhausted =>
      'تاسو خپل ټول تأملات کارولي دي.\nد دوام لپاره ټاپ-اپ وکړئ یا Wilaya ته لوړ شئ.';

  @override
  String get rateGraceCreditsExhausted =>
      'ستاسو تأملات اوس لپاره ختم شوي دي.\nنور تأملات واخلئ یا Wilaya ته لوړ شئ.';

  @override
  String get premiumDescription =>
      'Wilaya پریمیم ځانګړتیاوې، راتلونکې کټګورۍ او ځانګړی بېج پرانیزي.';

  @override
  String ratePlanExhausted(String plan) {
    return 'ستاسو تأملات اوس خالي دي. پلان: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ستاسو تأملات ونه کتل شول: $message';
  }

  @override
  String get rateCheckGenericError =>
      'ستاسو د تأملاتو د کتلو پر مهال ستونزه رامنځته شوه.';

  @override
  String get aiFallbackGeneric =>
      'یو څه ناسم شول — مهرباني وکړئ لږ وروسته بیا هڅه وکړئ.';

  @override
  String get limitSectionTitle => 'تأملات';

  @override
  String get limitTodayLabel => 'کارونه';

  @override
  String limitCreditsLabel(Object credits) {
    return 'پاتې تأملات: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'پلان: $plan';
  }

  @override
  String get limitLoadingLabel => 'بارېږي…';

  @override
  String get limitLoadingLabelDescription =>
      'هغه مهال ښودل کېږي چې د تأملاتو احصایې راخیستل کېږي.';

  @override
  String get aiLimitTitle => 'تأملات';

  @override
  String get aiLimitSubtitle =>
      'هر ځواب 1 تأمل کاروي. په معیاري پلان کې پیلني تأملات شامل دي. Wilaya پریمیم کټګورۍ پرانیزي او ټاپ-اپ فعالوي.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total تأملات کارول شوي';
  }

  @override
  String get creditsSectionTitle => 'تأملات';

  @override
  String get creditsUsageLabel => 'کارونه';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'پاتې تأملات: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'پلان: $plan';
  }

  @override
  String get creditsLoadingLabel => 'بارېږي…';

  @override
  String get creditsLoadingLabelDescription =>
      'هغه مهال ښودل کېږي چې د تأملاتو احصایې راخیستل کېږي.';

  @override
  String get creditsTitle => 'تأملات';

  @override
  String get creditsSubtitle =>
      'هر ځواب 1 تأمل کاروي. په معیاري پلان کې پیلني تأملات شامل دي. Wilaya پریمیم کټګورۍ پرانیزي او ټاپ-اپ فعالوي.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total تأملات کارول شوي';
  }

  @override
  String get settingsDeleteTitle => 'اکاونټ پاک کړئ';

  @override
  String get settingsDeleteDescription =>
      'خپل اکاونټ او ټول اړوند معلومات د تل لپاره پاک کړئ.';

  @override
  String get settingsDeleteButtonLabel => 'زما اکاونټ پاک کړئ';

  @override
  String get settingsDeleteDialogTitle => 'اکاونټ پاک شي؟';

  @override
  String get settingsDeleteDialogBody =>
      'دا عمل د تل لپاره دی او بېرته نه راګرځي.\n\nستاسو ټول چټونه، تاریخچه او د اکاونټ معلومات به پاک شي.';

  @override
  String get settingsDeleteDialogCancel => 'لغوه';

  @override
  String get settingsDeleteDialogConfirm => 'پاکول';

  @override
  String get settingsFreeLimitUsedTitle => 'پیلني تأملات کارول شوي';

  @override
  String get settingsFreeLimitUsedDescription =>
      'د دې وسیلې لپاره پیلني تأملات کارول شوي دي. د دوام لپاره Wilaya ته لوړ شئ یا نور تأملات واخلئ.';

  @override
  String get settingsStarterCreditsUsedTitle => 'پیلني تأملات کارول شوي';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'د دې وسیلې لپاره پیلني تأملات کارول شوي دي. د دوام لپاره Wilaya ته لوړ شئ یا نور تأملات واخلئ.';

  @override
  String get deviceBoundError =>
      'دا وسیله له مخکې له بل اکاونټ سره تړلې ده. مهرباني وکړئ له اصلي اکاونټ سره ننوځئ.';

  @override
  String get premiumTitle => 'Wilaya حالت';

  @override
  String get premiumSubtitleBasic => 'د Ayara بشپړ تجربه پرانیزئ.';

  @override
  String get premiumSubtitlePremium =>
      'تاسو په Wilaya کې یاست. نور تأملات ته اړتیا لرئ؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'اوسنی پلان: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'تأملات: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'پېرودنې اوس مهال نشته.';

  @override
  String get premiumSignInToPurchase =>
      'د تأملاتو د اخیستو یا Wilaya د پرانستلو لپاره ننوځئ.';

  @override
  String get premiumRestorePurchases => 'پېرودنې بېرته راولئ';

  @override
  String get premiumProcessing => 'بهیر روان دی…';

  @override
  String get premiumRestoreHintTitle =>
      'ایا تاسو په دې وسیله یا بلې وسیله مخکې Wilaya یا تأملات اخیستي دي؟';

  @override
  String get premiumRestoreHintBody => 'که نه ښکاري، خپلې پېرودنې بېرته راولئ.';

  @override
  String get premiumBuyCredits200 => '200 تأملات واخلئ';

  @override
  String get premiumBuyCredits400 => '400 تأملات واخلئ';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya حالت ته لوړ شئ';

  @override
  String get premiumTopupHint =>
      'له Wilaya سره، کله چې اړتیا وي، اضافي تأملات ټاپ-اپ کولی شئ.';

  @override
  String get premiumUpgradeCta => 'لوړول';

  @override
  String get premiumRequiredForCategory =>
      'دا کټګوري یوازې د Wilaya کاروونکو لپاره ده. د ټولو پریمیم منځپانګو د پرانستلو لپاره په Settings کې لوړ شئ.';

  @override
  String get premiumBenefitsBasic =>
      'Wilaya پرانیزئ څو اضافي تأملات، پریمیم کټګورۍ، او هر وخت د اړتیا پر مهال دوام ومومئ.';

  @override
  String get premiumBenefitsPremium =>
      'تاسو په Wilaya حالت کې یاست. که تأملات مو کمېږي، نور تأملات ورزیات کړئ او بې له ځنډه دوام ورکړئ.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya پرانیزئ';

  @override
  String get premiumButtonTopup1000 => '1000 تأملات ورزیات کړئ';

  @override
  String get premiumBadge => 'Wilaya فعاله ده';

  @override
  String get premiumLoadingStore => 'سټور بارېږي…';

  @override
  String get premiumProductNotAvailable =>
      'دا محصول لا تر اوسه په سټور کې نشته. مهرباني وکړئ وروسته بیا هڅه وکړئ.';

  @override
  String get premiumPurchaseError =>
      'د پېرود پر مهال ستونزه رامنځته شوه. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get premiumBuyCredits100 => '100 تأملات ورزیات کړئ';

  @override
  String get premiumFeatureLocked =>
      'دې ځانګړتیا ته د لاسرسي لپاره Wilaya پرانیزئ.';

  @override
  String get lockedCategoriesHint =>
      'ځینې کټګورۍ یوازې د Wilaya غړو لپاره ځانګړې دي. د خپل سفر د هر تأمل د سپړلو لپاره یې پرانیزئ.';

  @override
  String get freePlanBlockedTitle => 'ستاسو پیلني تأملات ختم شوي دي';

  @override
  String get freePlanBlockedBody =>
      'تاسو په معیاري پلان کې یاست او د پیلنیو تأملاتو حد ته رسېدلي یاست. د دوام لپاره — او د پریمیم کټګوریو د پرانستلو لپاره — Wilaya ته لوړ شئ.';

  @override
  String get freePlanBlockedCtaGoPremium => 'لاندې د Wilaya انتخابونه وګورئ';

  @override
  String get graceBlockedTitle => 'ستاسو پیلني تأملات ختم شوي دي';

  @override
  String get graceBlockedBody =>
      'تاسو په معیاري پلان کې یاست او د پیلنیو تأملاتو حد ته رسېدلي یاست. د دوام لپاره — او د پریمیم کټګوریو د پرانستلو لپاره — Wilaya ته لوړ شئ.';

  @override
  String get graceBlockedCtaGoPremium => 'لاندې د Wilaya انتخابونه وګورئ';

  @override
  String get rateGuestMustSignIn =>
      'د Ayara او خپلو تأملاتو د کارولو لپاره ننوځئ.';

  @override
  String get guestNoCreditsTitle => 'د مېلمه حالت';

  @override
  String get guestNoCreditsBody =>
      'د مېلمه په توګه تاسو اپ لټولی شئ، خو تأملات نه شئ کارولی. وروسته په Settings کې ننوځئ څو تأملات وکاروئ او پېرودنې پرانیزئ.';

  @override
  String get guestDialogContinue => 'دوام ورکړئ';

  @override
  String get guestDialogLoginInstead => 'پر ځای یې ننوځئ';

  @override
  String get optionalLabel => 'اختیاري';

  @override
  String get accountDeleteSuccessTitle => 'اکاونټ پاک شو';

  @override
  String get accountDeleteSuccessBody =>
      'ستاسو اکاونټ او اړوند معلومات په بریالیتوب سره پاک شول.';

  @override
  String get accountDeleteSuccessClose => 'تړل';

  @override
  String get accountDeleteErrorTitle => 'اکاونټ پاک نه شو';

  @override
  String get accountDeleteErrorClose => 'سمه ده';

  @override
  String get accountDeleteReauthCancelled =>
      'بیا-تصدیق لغوه شو. مهرباني وکړئ بیا ننوځئ او بیا د پاکولو هڅه وکړئ.';

  @override
  String get accountDeleteReauthRequired =>
      'د اکاونټ پاکولو لپاره تازه ننوتل ضروري دي. مهرباني وکړئ ووځئ، بیا ننوځئ او بیا هڅه وکړئ.';

  @override
  String get settingsDeletePermanentWarning =>
      'دا عمل د تل لپاره دی او بېرته نه راګرځي. ستاسو له اکاونټ سره تړلي ټول معلومات به پاک شي.';

  @override
  String get dailyGraceTitle => 'ورځنی لارښود';

  @override
  String get dailyGraceScriptureLabel => 'د نن ورځې آیت';

  @override
  String get dailyGraceSaintLabel => 'د اونۍ عالم';

  @override
  String get dailyGraceReflectionLabel => 'د ماښام تأمل';

  @override
  String get dailyGraceCopiedToast => 'آیت کلیپبورډ ته کاپي شو';

  @override
  String get locationConsentLabel =>
      'Ayara ته اجازه ورکړئ چې زما ځای د قبله لوري او د لمانځه وختونو لپاره وکاروي';

  @override
  String get locationConsentHint =>
      'یوازې د همدې ځانګړتیاوو لپاره کارول کېږي. ستاسو ځای نه شریکېږي او نه خوندي کېږي.';

  @override
  String get askPageTitle => 'له Ayara څخه وپوښتئ';

  @override
  String get askPageDescription =>
      'د ایمان، لمانځه، ژوند یا اسلامي عمل په اړه هر څه وپوښتئ او د قرآن او اهل البیت د ښوونو پر بنسټ لارښود ترلاسه کړئ.';

  @override
  String get askPageInputHint => 'خپله پوښتنه دلته ولیکئ…';

  @override
  String get askPageSubmitCta => 'پوښتنه وکړئ';

  @override
  String get askPageInputEmptyError => 'مهرباني وکړئ لومړی یوه پوښتنه ولیکئ.';

  @override
  String get askResultYourQuestion => 'ستاسو پوښتنه';

  @override
  String get guidancePageTitle => 'قبله';

  @override
  String get qiblaFacingMecca => 'د مکې پر لور';

  @override
  String get qiblaCompassInstruction =>
      'خپل فون داسې وڅرخوئ تر څو زرینه ستنه پورته لور ته ودرېږي.\nهماغه لور قبله (مکه) ښيي.';

  @override
  String get qiblaGpsUnavailableBody =>
      'د GPS نښه کمزورې ده. بهر ته لاړ شئ او بیا هڅه وکړئ ټک وکړئ.';

  @override
  String get qiblaRetry => 'بیا هڅه وکړئ';

  @override
  String get qiblaTitle => 'د قبله لوری';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km کیلومتره تر مکې';
  }

  @override
  String get qiblaLocationNeededTitle => 'ځای اړین دی';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara ته د ځای لاسرسی ورکړئ څو د نړۍ له هر ځایه تر کعبې د مکې لوری محاسبه کړي.';

  @override
  String get qiblaOpenSettings => 'Settings پرانیزئ';

  @override
  String get qiblaCompassLoading => 'ستاسو ځای موندل کېږي…';

  @override
  String get qiblaTowardMecca => 'د مکې پر لور';

  @override
  String get prayerTimesTitle => 'د لمانځه وختونه';

  @override
  String get prayerTimesFajr => 'فجر';

  @override
  String get prayerTimesDhuhr => 'ظهر';

  @override
  String get prayerTimesAsr => 'عصر';

  @override
  String get prayerTimesMaghrib => 'مغرب';

  @override
  String get prayerTimesIsha => 'عشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'ځای اړین دی';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara ته د ځای لاسرسی ورکړئ څو ستاسو د ښار لپاره د لمانځه دقیق وختونه محاسبه کړي.';

  @override
  String get prayerTimesNextLabel => 'راتلونکی';

  @override
  String get prayerTimesDoneLabel => 'بشپړ';

  @override
  String get monthlyPrayerTimesTitle => 'میاشتني د لمانځه وختونه';

  @override
  String get monthlyPrayerTimesViewButton => 'بشپړه میاشت وګورئ';

  @override
  String get monthlyPrayerTimesNextMonth => 'راتلونکې میاشت';

  @override
  String get monthlyPrayerTimesDayHeader => 'ورځ';

  @override
  String get sharePrayerTimes => 'د لمانځه وختونه شریک کړئ';

  @override
  String get notificationsSectionTitle => 'خبرتیاوې';

  @override
  String get notificationsSectionSubtitle =>
      'د لمانځه یادونې، د کلیزې پېښې او نور';

  @override
  String get dailyReflectionReminderTitle => 'ورځنی تأمل';

  @override
  String get dailyReflectionReminderDescription =>
      'هره ورځ یوه نرمه یادونه چې Ayara پرانیزئ او له خپل ایمان سره ونښلېږئ.';

  @override
  String get dailyReflectionReminderEnable => 'ورځنۍ یادونه فعاله کړئ';

  @override
  String get dailyReflectionReminderTimeLabel => 'د یادونې وخت';

  @override
  String get prayerNotificationsTitle => 'د لمانځه یادونې';

  @override
  String get prayerNotificationsDescription =>
      'د هر لمانځه له وخته مخکې یوه نرمه یادونه ترلاسه کړئ څو ټوله ورځ له ایمان سره نښتي پاتې شئ.';

  @override
  String get prayerNotificationsEnable => 'د لمانځه یادونې فعاله کړئ';

  @override
  String get prayerNotificationsOpenSettings => 'د خبرتیاوو Settings پرانیزئ';

  @override
  String get prayerNotificationsDenied => 'خبرتیاوې بندې دي';

  @override
  String get prayerNotificationsDeniedHint =>
      'Settings ته لاړ شئ او Ayara ته خبرتیاوو اجازه ورکړئ څو د لمانځه د وخت یادونې ترلاسه کړئ.';

  @override
  String get notificationsConsentLabel =>
      'د لمانځه وختونو لپاره خبرتیاوې اجازه کړئ';

  @override
  String get prayerNotifTitleFajr => '🌅 فجر — د سهار لمونځ';

  @override
  String get prayerNotifBodyFajr =>
      'فجر د اهل البیت د سهار لمونځ دی. امام علي (AS) فرمایلي: د سهار لمونځ داسې وساتئ لکه څنګه چې خپله تر ټولو قیمتي امانت ساتئ. راویښ شئ، ځان پاک کړئ او د الله پر وړاندې ودرېږئ.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ظهر — د غرمي لمونځ';

  @override
  String get prayerNotifBodyDhuhr =>
      'د اهل البیت امامانو د یاد هره شېبه ارزښتمنه بلله. خپل کار لږ ودروئ، که اړتیا وي ظهر له عصر سره یوځای کړئ، او خپل زړه بېرته الله ته متوجه کړئ.';

  @override
  String get prayerNotifTitleAsr => '🌤️ عصر — د ماسپښین لمونځ';

  @override
  String get prayerNotifBodyAsr =>
      'لمونځ وساتئ، ځکه دا ستاسو او الله ترمنځ تړون دی. د عصر وخت راغلی — مه پرېږدئ چې بې له یاد څخه تېر شي.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 مغرب — د ماښام لمونځ';

  @override
  String get prayerNotifBodyMaghrib =>
      'لمر ولوېد — یوه شېبه چې اهل البیت یې د دعا لپاره سپېڅلې بلله. مغرب ادا کړئ او له شپې مخکې خپل لاسونه الله ته په دعا پورته کړئ.';

  @override
  String get prayerNotifTitleIsha => '🌙 عشاء — د شپې لمونځ';

  @override
  String get prayerNotifBodyIsha =>
      'خپله ورځ د الله په ملتیا پای ته ورسوئ. امامانو د عشاء وروسته د صلات اللیل سپارښتنه کړې — خو لومړی خپله عشاء بشپړه کړئ او ورځ د هغه په یاد پای ته ورسوئ.';

  @override
  String get outOfReflectionsBannerText => 'تاسو خپل ټول تأملات کارولي دي';

  @override
  String get outOfReflectionsBannerCta => 'نور ترلاسه کړئ';

  @override
  String get dhikrPageTitle => 'ذکر';

  @override
  String get dhikrTapToCount => 'د شمېرلو لپاره په کړۍ ټک وکړئ';

  @override
  String get dhikrResetButton => 'بیا صفر کول';

  @override
  String get dhikrComplete => 'ماشاءالله';

  @override
  String get dhikrCompleteMessage =>
      'تاسو د الله 100 ځله یادونه بشپړه کړې ده. دا دې ستاسو د زړه لپاره رڼا شي.';

  @override
  String get disclaimerTitle => 'د دې اپ د لارښوونې په اړه';

  @override
  String get disclaimerBody =>
      'Ayara اسلامي تأملات، یادونې او روحي منځپانګه وړاندې کوي څو ستاسو د ایمان شخصي سفر ملاتړ وکړي، او دا ټول د قرآن او اهل البیت د ښوونو پر بنسټ دي. دا منځپانګه یوازې د عمومي معلوماتو او الهام لپاره وړاندې کېږي.\n\nAyara د وړ عالمانو بدیل نه دی.\nپه دې اپ کې لارښود د پوه اسلامي عالم، مرجع، یا د دیني علومو روزل شوي ښوونکي بدیل نه دی. په شیعه اسلام کې دیني لارښود د جعفري فقهې او د ژوندي مرجع د تقلید پر بنسټ ولاړ دی — داسې وړ فقیه چې احکام یې مؤمنانو ته د ديني عمل په لاره کې لارښوونه کوي. که تاسو د ديني احکامو، حلال او حرامو، یا شخصي ديني مسؤلیتونو په اړه پوښتنې لرئ، مهرباني وکړئ له یو وړ مرجع یا ستاسو په ټولنه کې له یو عالم سره مشوره وکړئ.\n\nدا اپ دیني فتواوې نه صادروي.\nAyara د فقهې یا شخصي ديني مسؤلیتونو په اړه وروستۍ پرېکړې نه کوي. دلته هېڅ څه باید د فتوا یا الزامي ديني لارښوونې په توګه ونه ګڼل شي.\n\nد اهل البیت مرکزي ځای.\nپه شیعه اسلام کې، پیغمبر محمد ﷺ او د هغه پاک کورنۍ — اهل البیت — له قرآن وروسته د اسلامي ټولنې باوري لارښودان دي. د اهل البیت دولس امامان د اسلامي ښوونو الهي ټاکل شوي مفسرین دي. د دې اپ منځپانګه هڅه کوي چې همدې دود ته په صداقت او درناوي انعکاس ورکړي.\n\nد ټولنې ارزښت.\nدا اپ غواړي چې تاسو له خپل ایمان سره نښتي وساتي، او په عین حال کې ستاسو د ځایي جومات، اسلامي مرکز، او ديني ټولنې مهم رول ته ژوره درناوی ولري. موږ تاسو هڅوو چې له نږدې وړ ښوونکو سره اړیکه وساتئ او ترې زده کړه وکړئ.';

  @override
  String get disclaimerClose => 'زه پوه شوم';

  @override
  String get disclaimerInfoTooltip => 'د دې اپ د لارښوونې په اړه';

  @override
  String get disclaimerSettingsSubtitle =>
      'یوازې د عمومي معلوماتو لپاره. د بشپړ یادښت د لوستلو لپاره ټک وکړئ.';

  @override
  String get disclaimerSectionHeader => 'د لارښوونې یادښت';

  @override
  String get navHome => 'کور';

  @override
  String get navReflect => 'تأمل';

  @override
  String get navDuas => 'دعاوې';

  @override
  String get navCalendar => 'کلیزه';

  @override
  String get dashboardToday => 'نن';

  @override
  String get dashboardComingUp => 'راتلونکی';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ورځې',
      one: 'ورځ',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'چټک لاسرسی';

  @override
  String get quickActionQibla => 'قبله';

  @override
  String get quickActionDhikr => 'ذکر';

  @override
  String get quickActionDailyGrace => 'لارښود';

  @override
  String get quickActionPrayerTimes => 'د لمانځه وختونه';

  @override
  String get askAyaraTitle => 'له Ayara څخه وپوښتئ';

  @override
  String get askAyaraSubtitle =>
      'هره اسلامي پوښتنه وکړئ او یو فکري او لارښود ځواب ترلاسه کړئ.';

  @override
  String get askAyaraHint => 'لکه: د رمضان اهمیت څه دی؟';

  @override
  String get askAyaraSubmit => 'پوښتنه وکړئ';

  @override
  String get wisdomOfTheDayTitle => 'د نن حکمت';

  @override
  String get calendarScreenTitle => 'اسلامي کلیزه';

  @override
  String get calendarUpcomingOccasions => 'راتلونکې مناسبتونه';

  @override
  String get calendarOccasionRemindersTitle => 'د مناسبتونو یادونې';

  @override
  String get calendarOccasionRemindersHint =>
      'د هر مناسبت څخه یوه شپه مخکې خبر درکول کېږي';

  @override
  String get calendarNotifPermissionDenied =>
      'د خبرتیا اجازه رد شوه. دا د خپل وسیلې په Settings کې فعاله کړئ.';

  @override
  String get calendarNoEvents => 'هیڅ راتلونکې پېښه ونه موندل شوه.';

  @override
  String get calendarAddToPhone => 'د تلیفون تقویم ته اضافه کړئ';

  @override
  String get calendarAddedToPhone => 'تقویم ته اضافه شو';

  @override
  String get calendarCountdownToday => 'نن';

  @override
  String get calendarCountdownTomorrow => 'سبا';

  @override
  String calendarCountdownDays(int days) {
    return 'په $days ورځو کې';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'جنوري';

  @override
  String get calendarMonthFeb => 'فبروري';

  @override
  String get calendarMonthMar => 'مارچ';

  @override
  String get calendarMonthApr => 'اپرېل';

  @override
  String get calendarMonthMay => 'مې';

  @override
  String get calendarMonthJun => 'جون';

  @override
  String get calendarMonthJul => 'جولای';

  @override
  String get calendarMonthAug => 'اګست';

  @override
  String get calendarMonthSep => 'سپتمبر';

  @override
  String get calendarMonthOct => 'اکتوبر';

  @override
  String get calendarMonthNov => 'نومبر';

  @override
  String get calendarMonthDec => 'دسمبر';

  @override
  String get calendarSeasonMuharramEarly => 'د محرم ورځې — کربلا یاده کړئ';

  @override
  String get calendarSeasonAshura => 'عاشورا — یا حسین (AS)';

  @override
  String get calendarSeasonMuharramLate => 'محرم — د ماتم او تأمل ورځې';

  @override
  String get calendarSeasonArbaeen => 'اربعین — د حسین څلوېښت ورځې';

  @override
  String get calendarSeasonRoadToArbaeen => 'اربعین ته لاره';

  @override
  String get calendarSeasonMabath => 'مبعث مبارک — د وحې سهار';

  @override
  String get calendarSeasonMidShaban =>
      'منځنی شعبان — د امام المهدي (AJ) د زوکړې ورځ';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارک — د قرآن میاشت';

  @override
  String get calendarSeasonGhadir => 'د غدیر اختر مو مبارک!';

  @override
  String get hijriMonth1 => 'محرم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربیع الاول';

  @override
  String get hijriMonth4 => 'ربیع الثاني';

  @override
  String get hijriMonth5 => 'جمادى الاولى';

  @override
  String get hijriMonth6 => 'جمادى الثانية';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذوالقعده';

  @override
  String get hijriMonth12 => 'ذوالحجه';

  @override
  String get duasScreenTitle => 'دعاوې او زیارت';

  @override
  String get duasSearchHint => 'دعاوې، زیارت… ولټوئ';

  @override
  String get duasFilterAll => 'ټول';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دعاوې او زیارت',
      one: '$count دعا',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'هیڅ دعا ونه موندل شوه.';

  @override
  String get duaCategoryDaily => 'ورځنی';

  @override
  String get duaCategoryWeekly => 'اونیز';

  @override
  String get duaCategoryOccasions => 'مناسبتونه';

  @override
  String get duaCategoryZiyarat => 'زیارت';

  @override
  String get duaCategoryTasbih => 'تسبیح';

  @override
  String get eventTypeBirth => 'زېږېدنه';

  @override
  String get eventTypeMartyrdom => 'شهادت';

  @override
  String get eventTypeOccasion => 'مناسبت';

  @override
  String get duaCopyTooltip => 'ژباړه کاپي کړئ';

  @override
  String get duaToggleTransliteration => 'تلفظي لیکنه';

  @override
  String get duaToggleTranslation => 'ژباړه';

  @override
  String get duaAskAiLabel => 'له Ayara وغواړئ چې دا دعا تشریح کړي';

  @override
  String get duaAskAiLockedLabel => 'له Ayara وپوښتئ (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'د Ayara تشریحات یوازې د Wilaya غړو لپاره دي. په Settings کې لوړ شئ.';

  @override
  String duaAiComingSoon(String name) {
    return 'له Ayara څخه د \"$name\" په اړه وپوښتئ — ژر راځي!';
  }

  @override
  String get duaCopiedToast => 'دعا کلیپبورډ ته کاپي شوه.';

  @override
  String get tasbihAllahuAkbarMeaning => 'الله تر ټولو لوی دی';

  @override
  String get tasbihAlhamdulillahMeaning => 'ټول ثنا یوازې د الله لپاره ده';

  @override
  String get tasbihSubhanallahMeaning => 'الله پاک دی';

  @override
  String get tasbihResetTooltip => 'بیا صفر کول';

  @override
  String get tasbihCompleteTitle => 'تسبیح بشپړه شوه';

  @override
  String get tasbihCompleteMessage => 'الله دې ستاسو ذکر قبول کړي.';

  @override
  String get tasbihTapHint => 'د شمېرلو لپاره هر ځای ټک وکړئ';

  @override
  String get tasbihatScreenTitle => 'د لمانځه لارښود';

  @override
  String get tasbihatScreenSubtitle => 'د لمانځه تسبیحات';

  @override
  String get tasbihatScreenDescription =>
      'د هغو تسبیحاتو بشپړ لارښود چې د ورځنیو لمونځونو پر مهال او وروسته لوستل کېږي — د اهل البیت (ع) د دود له مخې.';

  @override
  String get tasbihatArba3Title => 'تسبیحات الأربعہ';

  @override
  String get tasbihatArba3Subtitle => 'په درېیم او څلورم رکعت کې لوستل کېږي';

  @override
  String get tasbihatArba3Info =>
      'په شیعه فقه کې، تسبیحات الأربعہ د ظهر، عصر، مغرب او عشاء په درېیم او څلورم رکعت کې د سورۀ فاتحې پر ځای لوستل کېږي. یو ځل یې لوستل واجب دي، او درې ځله یې لوستل مستحب دي.';

  @override
  String get tasbihatArba3Translation =>
      'الله پاک دی · ټول ثنا د الله لپاره ده\nله الله پرته بل معبود نشته · الله تر ټولو لوی دی';

  @override
  String get tasbihatArba3CompleteTitle => 'تلاوت بشپړ شو';

  @override
  String get tasbihatArba3CompleteMessage =>
      'الله دې ستاسو لمونځ قبول کړي — آمین';

  @override
  String get tasbihatArba3TapHint => 'له هر تلاوت وروسته ټک وکړئ';

  @override
  String get tasbihatZahraSubtitle => 'د هر لمانځه وروسته · 100 دانې';

  @override
  String get tasbihatZahraOriginLabel => 'اصل';

  @override
  String get tasbihatZahraHadith =>
      'بي بي فاطمه الزهرا (س.ع) له پیغمبر ﷺ څخه یو خادم وغوښت. هغه وفرمایل: \"ایا زه تا ته تر دې غوره څه در و نه ښیم؟ له هر لمانځه وروسته 33 ځله سبحان الله، 33 ځله الحمد لله، او 34 ځله الله اکبر ووایه. دا ستا لپاره له خادم څخه غوره دي.\"';

  @override
  String get tasbihatZahraHadithSource => '— بحار الأنوار، ټوک 85';

  @override
  String get tasbihatZahraOpenCounter => 'د تسبیح شمېرونکی پرانیزئ';

  @override
  String get tasbihatDuasTitle => 'سپارښتل شوې دعاوې';

  @override
  String get tasbihatDuasSubtitle => 'له خپل لمانځه وروسته';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آیت الکرسي';

  @override
  String get tasbihatDuaAyatKursiWhen => 'له هر فرض لمانځه وروسته';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورۀ البقره 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'څوک چې له هر فرض لمانځه وروسته آیت الکرسي لولي، د هغه او جنت ترمنځ له مرګ پرته بل څه نه پاتې کېږي. امام الباقر (ع) فرمایلي چې دا د قرآن له تر ټولو سترو آیتونو څخه دی.';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen =>
      'له هر لمانځه وروسته · ټولې دعاوې بشپړوي';

  @override
  String get tasbihatDuaSalawatSource => 'امام الصادق (ع) — الکافي';

  @override
  String get tasbihatDuaSalawatNote =>
      'پر پیغمبر ﷺ او د هغه پر پاکې کورنۍ (آل محمد) درود ویل د هرې دعا د بشپړېدو لپاره سپارښتل شوي. امام الصادق (ع) فرمایلي: \"هره دعا تر هغې ځنډېدلې وي څو چې پر محمد او د هغه پر کورنۍ صلوات ونه ویل شي.\"';

  @override
  String get tasbihatDuaFarajTitle => 'دعاء الفرج';

  @override
  String get tasbihatDuaFarajWhen =>
      'له هر لمانځه وروسته · زموږ د زمانې امام لپاره';

  @override
  String get tasbihatDuaFarajSource =>
      'د امام الحسن العسکري (ع) له خوا ښوول شوې';

  @override
  String get tasbihatDuaFarajNote =>
      'د دولسم امام، امام المهدي (عج)، د ظهور لپاره یوه دعا، چې د هغه د پلار له خوا ښوول شوې وه. شیعه مؤمنان یې هره ورځ له هر لمانځه وروسته د ژوندي امام د محبت په توګه لولي.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'د بي بي فاطمې تسبیح';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'له مغرب او عشاء وروسته · په ځانګړي ډول سپارښتل شوې';

  @override
  String get tasbihatDuaTasbihFatimaSource => 'امام الباقر (ع) — بحار الأنوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'امام الباقر (ع) فرمایلي چې د خوب نه مخکې له عشاء وروسته د تسبیح الزهرا ویل تر 1000 رکعته نفلي لمانځه غوره دي. د دې رڼا اسمانونو ته خېژي.';

  @override
  String get tasbihFatimaGiftPre => 'د پیغمبر ډالۍ';

  @override
  String get tasbihFatimaGiftPost => 'له هر لمانځه وروسته لوستل کېږي';

  @override
  String get prayerTrackerTitle => 'د لمانځه څارونکی';

  @override
  String get prayerTrackerPrayed => 'لمونځ ادا شو';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ورځې پرله‌پسې';
  }

  @override
  String get prayerTrackerAllComplete =>
      'د نن ټول لمونځونه بشپړ شول. الله دې قبول کړي.';

  @override
  String get dhikrTrackerTitle => 'تسبیح الزهرا';

  @override
  String get dhikrTrackerCompletedToday => 'نن بشپړه شوه';

  @override
  String get dhikrTrackerNotDoneToday => 'نن نه ده شوې';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ورځې پرله‌پسې';
  }

  @override
  String get dhikrReminderTitle => 'د تسبیح یادونه';

  @override
  String get dhikrReminderDescription =>
      'ستاسو د تسبیح الزهرا (س.ع) لپاره یوه نرمه ورځنۍ یادونه.';

  @override
  String get dhikrReminderEnable => 'د تسبیح یادونه فعاله کړئ';

  @override
  String get dhikrReminderTimeLabel => 'د یادونې وخت';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'ورځنی حدیث';

  @override
  String get hadithLabelArabic => 'عربي';

  @override
  String get hadithLabelTranslation => 'ژباړه';

  @override
  String get hadithBadge => 'حدیث';

  @override
  String get hadithShare => 'دا حدیث شریک کړئ';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nد Ayara له لارې';
  }

  @override
  String get hadithNavPrevious => 'مخکینی';

  @override
  String get hadithNavNext => 'راتلونکی';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 معصومین';

  @override
  String get imamsScreenSubtitle =>
      'پیغمبر، بي بي فاطمه، او دولس امامان — د اسلام معصوم لارښودان';

  @override
  String get imamLabelBorn => 'زېږېدنه';

  @override
  String get imamLabelMartyrdom => 'شهادت';

  @override
  String get imamLabelStatus => 'حالت';

  @override
  String get imamSectionBiography => 'ژوندلیک';

  @override
  String get imamSectionFamousSaying => 'مشهور وینا';

  @override
  String get imamRoleProphet => 'وروستی پیغمبر';

  @override
  String get imamRoleInfallible => 'معصوم';

  @override
  String get imamOrdinal1 => 'لومړی امام';

  @override
  String get imamOrdinal2 => 'دویم امام';

  @override
  String get imamOrdinal3 => 'درېیم امام';

  @override
  String get imamOrdinal4 => 'څلورم امام';

  @override
  String get imamOrdinal5 => 'پنځم امام';

  @override
  String get imamOrdinal6 => 'شپږم امام';

  @override
  String get imamOrdinal7 => 'اووم امام';

  @override
  String get imamOrdinal8 => 'اتم امام';

  @override
  String get imamOrdinal9 => 'نهم امام';

  @override
  String get imamOrdinal10 => 'لسم امام';

  @override
  String get imamOrdinal11 => 'یوولسم امام';

  @override
  String get imamOrdinal12 => 'دولسم امام';

  @override
  String get duaAudioScreenTitle => 'دعاوې واورئ';

  @override
  String get duaAudioScreenSubtitle =>
      'د اورېدو لپاره یوه دعا وټاکئ. د غږولو یا تمولو لپاره پر ټایل ټک وکړئ.';

  @override
  String get duaAudioComingSoonMessage =>
      'د دې دعا غږیز بڼه به په راتلونکي نوي کولو کې موجوده وي.';

  @override
  String get duaAudioClose => 'تړل';

  @override
  String get duaAudioError =>
      'غږیز فایل بار نه شو. مهرباني وکړئ خپله اړیکه وګورئ.';

  @override
  String get duaAudioMetaTransmittedBy => 'روايت کوونکی';

  @override
  String get duaAudioMetaOccasion => 'مناسبت';

  @override
  String get duaAudioMetaDuration => 'موده';

  @override
  String get quickActionDailyHadith => 'ورځنی حدیث';

  @override
  String get quickAction14Masumeen => '14 معصومین';

  @override
  String get quickActionListenDuas => 'واورئ';

  @override
  String get quickActionTasbihat => 'د لمانځه لارښود';

  @override
  String get pilgrimageSectionTitle => 'سپېڅلی سفر';

  @override
  String get pilgrimageSectionSubtitle =>
      'د حج او عمرې بشپړ لارښود — په مکه کې د الله سپېڅلي کور ته سفر';

  @override
  String get hajjCardTitle => 'حج';

  @override
  String get hajjCardSubtitle => 'د اسلام پنځم رکن';

  @override
  String get hajjCardDescription =>
      'ستر کلنی سفر — په ژوند کې یو ځل پر هر توانمن مسلمان فرض';

  @override
  String get hajjScreenTitle => 'د حج لارښود';

  @override
  String get hajjScreenSubtitle => 'د ستر سفر لپاره ګام په ګام لارښود';

  @override
  String get umrahCardTitle => 'عمره';

  @override
  String get umrahCardSubtitle => 'وړه حج';

  @override
  String get umrahCardDescription =>
      'یو ژور روحي سفر چې د کال هر وخت ترسره کېدای شي';

  @override
  String get umrahScreenTitle => 'د عمرې لارښود';

  @override
  String get umrahScreenSubtitle => 'د وړې زیارت لپاره ګام په ګام لارښود';

  @override
  String get pilgrimageStepsTitle => 'مناسک او پړاوونه';

  @override
  String get pilgrimageImportantNotesTitle => 'مهمې یادونې';

  @override
  String get pilgrimageDuaTitle => 'د دې پړاو لپاره دعا';

  @override
  String get pilgrimageJafariNoteTitle => 'د جعفري فقه یادداشت';

  @override
  String get pilgrimageComplete => '✓ بشپړ';

  @override
  String get pilgrimageMarkDone => 'د بشپړیدو په توګه نښه کړئ';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done له $total پړاوونو';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقیقې';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'شیعه زائرین';

  @override
  String get pilgrimageShiaNoteBody =>
      'شیعه زائرین په دودیز ډول مدینې ته هم ځي، څو په مسجد النبوي کې د پیغمبر محمد (SAW) د روضې او په جنت البقیع کې د امامانو د قبرونو زیارت وکړي. دا لیدنې ډېر ژور معنوي ارزښت لري او د ډېرو شیعه زائرینو لپاره د سفر مهمه برخه ګڼل کېږي.';

  @override
  String get hajjIntro =>
      'حج د اسلام پنځم رکن دی، او پر هر هغه مسلمان چې بدني او مالي توان ولري، په ژوند کې یو ځل فرض دی. دا د ذوالحجې په میاشت کې ترسره کېږي او د حضرت ابراهیم (AS)، د هغه د زوی اسماعیل (AS)، او بي بي هاجرې پر نقش قدم روانېږي. د شیعه مسلمانانو لپاره، حج په مدینه کې د پیغمبر (SAW) او اهل البیت د سپېڅلو آرامځایونو د زیارت برکت هم لري.';

  @override
  String get umrahIntro =>
      'عمره مکې ته وړه زیارت دی او د حج برعکس، د کال هر وخت ترسره کېدای شي. که څه هم فرض نه ده، خو ډېره لویه روحي ګټه لري او یوه ډېره سپارښتل شوې عبادت ګڼل کېږي. دا له حج سره ځینې ګډ مناسک لري، خو لنډه ده او څلور اصلي اعمال لري.';
}
