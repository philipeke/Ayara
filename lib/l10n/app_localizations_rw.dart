// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kinyarwanda (`rw`).
class AppLocalizationsRw extends AppLocalizations {
  AppLocalizationsRw([String locale = 'rw']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Hitamo ururimi rwawe';

  @override
  String get languageSelectSub => 'Ushobora kuruhindura nyuma muri Settings';

  @override
  String get actionContinue => 'Komeza';

  @override
  String get languageSuggestedHeader => 'Ibyasabwe';

  @override
  String get languageAllHeader => 'Indimi zose';

  @override
  String get languageSuggestedBadge => 'Byasabwe';

  @override
  String get languageSearchHint => 'Shakisha…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Ubuyobozi bwa buri munsi';

  @override
  String get categorySlot02 => 'Imani n’icyizere';

  @override
  String get categorySlot03 => 'Gutekereza ku isengesho';

  @override
  String get categorySlot04 => 'Kwihangana n’icyizere';

  @override
  String get categorySlot05 => 'Saba imbabazi';

  @override
  String get categorySlot06 => 'Impuhwe n’urukundo';

  @override
  String get categorySlot07 => 'Imbaraga z’ukwemera';

  @override
  String get categorySlot08 => 'Umutima ushimira';

  @override
  String get categorySlot09 => 'Intego y’ubuzima';

  @override
  String get categorySlot10 => 'Amasano y’umuryango';

  @override
  String get categorySlot11 => 'Amahoro yo mu mutima';

  @override
  String get categorySlot12 => 'Ubwenge bw’Intumwa';

  @override
  String get categorySlot13 => 'Imico myiza';

  @override
  String get categorySlot14 => 'Irinde ibishuko';

  @override
  String get categorySlot15 => 'Dhikr yo nimugoroba';

  @override
  String get categoryCustom => 'Gutekereza ku giti cyawe';

  @override
  String get dhikrMeaningSubhanallah => 'Allah aratagatifu';

  @override
  String get dhikrMeaningAlhamdulillah => 'Ishimwe ryose ni irya Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah ni we Ukomeye kurusha bose';

  @override
  String get quranVerseHeartAtRest =>
      'Mu by’ukuri, mu kwibuka Allah ni ho imitima ibonera ituze.';

  @override
  String get promptHint =>
      'Kanda ku cyiciro ushaka kugira ngo ubone ubuyobozi bwa kisilamu no gutekereza';

  @override
  String get currentLanguage => 'Ururimi ruriho';

  @override
  String get settingsLanguage => 'Igenamiterere ry’ururimi';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Hitamo ururimi rwawe';

  @override
  String get continueCta => 'Komeza';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count amagambo',
      one: '$count ijambo',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Amahitamo';

  @override
  String get newCta => 'Gishya';

  @override
  String get actionsTitle => 'Ni iki ushaka gukora?';

  @override
  String get copy => 'Koporora';

  @override
  String get share => 'Sangiza';

  @override
  String get close => 'Funga';

  @override
  String get copiedToast => 'Byakoporowe muri clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ntibyashobotse gukora igisubizo gishya';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nUrashaka kongera kugerageza?';
  }

  @override
  String get cancelCta => 'Hagarika';

  @override
  String get retryCta => 'Ongera ugerageze';

  @override
  String get authTitle => 'Fungura konti yawe';

  @override
  String get continueAsGuest => 'Komeza nk’umushyitsi';

  @override
  String get signInGoogle => 'Injira ukoresheje Google';

  @override
  String get signInApple => 'Injira ukoresheje Apple';

  @override
  String get signInEmail => 'Injira ukoresheje Email';

  @override
  String get upgradeWithApple => 'Komeza ukoresheje Apple';

  @override
  String get mustAccept =>
      'Ugomba kwemera Amategeko ya Serivisi no kwemeza Politiki y’Ubuzima bwite.';

  @override
  String get termsLabel => 'Nemeye Amategeko ya Serivisi';

  @override
  String get privacyLabel => 'Nasomye Politiki y’Ubuzima bwite';

  @override
  String get marketingOptIn => 'Nemeye kwakira amakuru n’ibyifuzo';

  @override
  String get openTerms => 'Amategeko ya Serivisi';

  @override
  String get openPrivacy => 'Politiki y’Ubuzima bwite';

  @override
  String get accountSection => 'Konti';

  @override
  String get guestMode => 'Uburyo bw’umushyitsi';

  @override
  String get signedIn => 'Wamaze kwinjira';

  @override
  String get upgradeHint =>
      'Bika ibyo utekereza ku bikoresho byose ufungura konti.';

  @override
  String get upgradeWithGoogle => 'Komeza ukoresheje Google';

  @override
  String get signOut => 'Sohoka';

  @override
  String get snackUpgraded => 'Konti yazamuwe ukoresheje Google ✅';

  @override
  String get snackSignedIn => 'Winjiye ukoresheje Google ✅';

  @override
  String get snackSignedOut => 'Wasohotse';

  @override
  String get snackSignedInApple => 'Winjiye ukoresheje Apple ✅';

  @override
  String get snackSignedInGoogle => 'Winjiye ukoresheje Google ✅';

  @override
  String get snackUpgradedApple => 'Konti yazamuwe ukoresheje Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Konti yazamuwe ukoresheje Google ✅';

  @override
  String get historyTitle => 'Ibyatekerejwe mbere';

  @override
  String get historyOpenCta => 'Ibyatekerejwe mbere';

  @override
  String get historyEmpty => 'Nta byatekerejwe wabika birahari.';

  @override
  String get historyDeleteTitle => 'Gusiba ibyo watekereje?';

  @override
  String get historyDeleteBody => 'Ibi bizakuraho burundu icyo wahisemo.';

  @override
  String get deleteCta => 'Siba';

  @override
  String get historyButton => 'Ibyatekerejwe Mbere';

  @override
  String get historyEmptyTitle => 'Nta bitekerezo birahari';

  @override
  String get historyEmptyBody =>
      'Banza ukore ikintu — ibyo wabitse bizagaragara hano.';

  @override
  String get historyDelete => 'Siba';

  @override
  String get footerTitle => 'Hamwe na Wilaya, Iman na Sabr';

  @override
  String get footerSubtitle => 'Isengesho rimwe icyarimwe';

  @override
  String get genericErrorSnack =>
      'Hari ibitagenze neza — ongera ugerageze mu kanya.';

  @override
  String get upgradeAccountCta =>
      'Bika ibyo utekereza ku bikoresho byose – fungura konti';

  @override
  String get deleteAccount => 'Siba konti';

  @override
  String get exportData => 'Sohora amakuru yanjye';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Tuza gato 🐯\nAyara iracyakeneye akanya mbere y’igisubizo gikurikira…';

  @override
  String get rateDailyLimit =>
      'Ibyo utekereza birangiye ubu.\nShaka ibindi bitekerezo cyangwa uzamure kuri Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Wakoresheje ibyo bitekerezo byawe byose.\nOngeramo cyangwa uzamure kuri Wilaya kugira ngo ukomeze.';

  @override
  String get rateGraceCreditsExhausted =>
      'Ibyo utekereza birangiye ubu.\nShaka ibindi bitekerezo cyangwa uzamure kuri Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya ifungura ibiranga bya premium, ibyiciro bizaza, n’ikimenyetso kidasanzwe.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Ibyo utekereza ubu byashize. Gahunda: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ntibyashobotse kugenzura ibyo utekereza: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Hari ibitagenze neza mu kugenzura ibyo utekereza.';

  @override
  String get aiFallbackGeneric =>
      'Hari ibitagenze neza — ongera ugerageze mu kanya.';

  @override
  String get limitSectionTitle => 'Ibyo utekereza';

  @override
  String get limitTodayLabel => 'Ikoreshwa';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Ibyasigaye: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Gahunda: $plan';
  }

  @override
  String get limitLoadingLabel => 'Birimo gutangizwa…';

  @override
  String get limitLoadingLabelDescription =>
      'Bigaragara ku ikarita y’ibitekerezo igihe imibare y’ikoreshwa iri gukurwaho.';

  @override
  String get aiLimitTitle => 'Ibyo utekereza';

  @override
  String get aiLimitSubtitle =>
      'Igisubizo kimwe gikoresha igitekerezo 1. Standard irimo ibitekerezo byo gutangiriraho. Wilaya ifungura ibyiciro bya premium kandi igatuma wongeramo ibindi.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ibitekerezo byakoreshejwe';
  }

  @override
  String get creditsSectionTitle => 'Ibyo utekereza';

  @override
  String get creditsUsageLabel => 'Ikoreshwa';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Ibyasigaye: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Gahunda: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Birimo gutangizwa…';

  @override
  String get creditsLoadingLabelDescription =>
      'Bigaragara igihe imibare y’ibitekerezo iri gukurwaho.';

  @override
  String get creditsTitle => 'Ibyo utekereza';

  @override
  String get creditsSubtitle =>
      'Igisubizo kimwe gikoresha igitekerezo 1. Standard irimo ibitekerezo byo gutangiriraho. Wilaya ifungura ibyiciro bya premium kandi igatuma wongeramo ibindi.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ibitekerezo byakoreshejwe';
  }

  @override
  String get settingsDeleteTitle => 'Siba konti';

  @override
  String get settingsDeleteDescription =>
      'Siba burundu konti yawe n’amakuru yose ayijyanyeho.';

  @override
  String get settingsDeleteButtonLabel => 'Siba konti yanjye';

  @override
  String get settingsDeleteDialogTitle => 'Gusiba konti?';

  @override
  String get settingsDeleteDialogBody =>
      'Iki gikorwa ni burundu kandi ntigishobora gusubirwamo.\n\nChats zawe zose, amateka n’amakuru ya konti bizasibwa.';

  @override
  String get settingsDeleteDialogCancel => 'Hagarika';

  @override
  String get settingsDeleteDialogConfirm => 'Siba';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Ibitekerezo byo gutangira byakoreshejwe';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Ibitekerezo byo gutangiriraho kuri iki gikoresho byakoreshejwe. Uzamure kuri Wilaya cyangwa ugure ibindi bitekerezo kugira ngo ukomeze.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Ibitekerezo byo gutangira byakoreshejwe';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Ibitekerezo byo gutangiriraho kuri iki gikoresho byakoreshejwe. Uzamure kuri Wilaya cyangwa ugure ibindi bitekerezo kugira ngo ukomeze.';

  @override
  String get deviceBoundError =>
      'Iki gikoresho gisanzwe gihujwe n’indi konti. Injira ukoresheje konti ya mbere.';

  @override
  String get premiumTitle => 'Uburyo bwa Wilaya';

  @override
  String get premiumSubtitleBasic => 'Fungura uburambe bwuzuye bwa Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Uri kuri Wilaya. Ukeneye ibindi bitekerezo?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Gahunda iriho: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Ibyo utekereza: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Ibyo kugura ntibiraboneka ubu.';

  @override
  String get premiumSignInToPurchase =>
      'Injira kugira ngo ugure ibitekerezo cyangwa ufungure Wilaya.';

  @override
  String get premiumRestorePurchases => 'Subiza ibyo waguze';

  @override
  String get premiumProcessing => 'Birimo gukorwa…';

  @override
  String get premiumRestoreHintTitle =>
      'Wigeze kugura Wilaya cyangwa ibitekerezo kuri iki gikoresho cyangwa ikindi?';

  @override
  String get premiumRestoreHintBody => 'Subiza ibyo waguze niba bitagaragara.';

  @override
  String get premiumBuyCredits200 => 'Gura ibitekerezo 200';

  @override
  String get premiumBuyCredits400 => 'Gura ibitekerezo 400';

  @override
  String get premiumBecomePremiumOneTime => 'Zamura ujye kuri Wilaya';

  @override
  String get premiumTopupHint =>
      'Hamwe na Wilaya, ushobora kongeramo ibindi bitekerezo igihe cyose ubikeneye.';

  @override
  String get premiumUpgradeCta => 'Zamura';

  @override
  String get premiumRequiredForCategory =>
      'Iki cyiciro kiboneka gusa ku bakoresha Wilaya. Zamura muri Settings kugira ngo ufungure ibikubiyemo byose bya premium.';

  @override
  String get premiumBenefitsBasic =>
      'Fungura Wilaya kugira ngo ubone ibitekerezo by’inyongera, ibyiciro bya premium, kandi ukomeze igihe cyose ukeneye ubuyobozi.';

  @override
  String get premiumBenefitsPremium =>
      'Uri mu buryo bwa Wilaya. Niba ibitekerezo bigenda bishira, ongeramo ibindi kugira ngo ukomeze nta nkomyi.';

  @override
  String get premiumButtonBecomePremium => 'Fungura Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Ongeramo ibitekerezo 1000';

  @override
  String get premiumBadge => 'Wilaya ikora';

  @override
  String get premiumLoadingStore => 'Store irimo gutangizwa…';

  @override
  String get premiumProductNotAvailable =>
      'Iki gicuruzwa ntikiraboneka muri store. Ongera ugerageze nyuma.';

  @override
  String get premiumPurchaseError =>
      'Hari ikibazo mu kugura. Ongera ugerageze.';

  @override
  String get premiumBuyCredits100 => 'Ongeramo ibitekerezo 100';

  @override
  String get premiumFeatureLocked =>
      'Fungura Wilaya kugira ngo ukoreshe iki gice.';

  @override
  String get lockedCategoriesHint =>
      'Hari ibyiciro bimwe bigenewe gusa abanyamuryango ba Wilaya. Bifungure kugira ngo usuzume buri gitekerezo mu rugendo rwawe.';

  @override
  String get freePlanBlockedTitle =>
      'Ibitekerezo byawe byo gutangiriraho byashize';

  @override
  String get freePlanBlockedBody =>
      'Uri kuri gahunda ya Standard kandi wageze ku mpera y’ibitekerezo byo gutangiriraho. Kugira ngo ukomeze — no gufungura ibyiciro bya premium — uzamure kuri Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Reba amahitamo ya Wilaya hepfo';

  @override
  String get graceBlockedTitle =>
      'Ibitekerezo byawe byo gutangiriraho byashize';

  @override
  String get graceBlockedBody =>
      'Uri kuri gahunda ya Standard kandi wageze ku mpera y’ibitekerezo byo gutangiriraho. Kugira ngo ukomeze — no gufungura ibyiciro bya premium — uzamure kuri Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Reba amahitamo ya Wilaya hepfo';

  @override
  String get rateGuestMustSignIn =>
      'Injira kugira ngo ukoreshe Ayara n’ibitekerezo byawe.';

  @override
  String get guestNoCreditsTitle => 'Uburyo bw’umushyitsi';

  @override
  String get guestNoCreditsBody =>
      'Nk’umushyitsi ushobora kureba app, ariko ntushobora gukoresha ibitekerezo. Injira nyuma muri Settings kugira ngo ukoreshe ibitekerezo no gufungura ibyo kugura.';

  @override
  String get guestDialogContinue => 'Komeza';

  @override
  String get guestDialogLoginInstead => 'Ahubwo injira';

  @override
  String get optionalLabel => 'si ngombwa';

  @override
  String get accountDeleteSuccessTitle => 'Konti yasibwe';

  @override
  String get accountDeleteSuccessBody =>
      'Konti yawe n’amakuru ayijyanyeho byasibwe neza.';

  @override
  String get accountDeleteSuccessClose => 'Funga';

  @override
  String get accountDeleteErrorTitle => 'Ntibyashobotse gusiba konti';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Kwemeza bundi bushya byahagaritswe. Injira nanone maze ongere ugerageze gusiba.';

  @override
  String get accountDeleteReauthRequired =>
      'Gusiba konti bisaba ko winjiye vuba aha. Sohoka, wongere winjire, hanyuma ugerageze nanone.';

  @override
  String get settingsDeletePermanentWarning =>
      'Iki gikorwa ni burundu kandi ntigishobora gusubirwaho. Amakuru yose ajyanye na konti yawe azasibwa.';

  @override
  String get dailyGraceTitle => 'Ubuyobozi bwa buri munsi';

  @override
  String get dailyGraceScriptureLabel => 'UMURONGO W’UYU MUNSI';

  @override
  String get dailyGraceSaintLabel => 'UMWANDAGU W\'ICYUMWERU';

  @override
  String get dailyGraceReflectionLabel => 'GUTEKEREZA KWA NIMUGOROBA';

  @override
  String get dailyGraceCopiedToast => 'Umurongo wakoporowe muri clipboard';

  @override
  String get locationConsentLabel =>
      'Emera Ayara gukoresha aho ndi kugira ngo imenye icyerekezo cya Qibla n’amasaha y’amasengesho';

  @override
  String get locationConsentHint =>
      'Bikoreshwa gusa kuri ibi biranga. Aho uri ntihasangizwa cyangwa ngo habikwe.';

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
  String get askPageTitle => 'Baza Ayara';

  @override
  String get askPageDescription =>
      'Baza ikibazo icyo ari cyo cyose ku by’imani, isengesho, ubuzima cyangwa imigenzo ya kisilamu, ubone ubuyobozi bushingiye kuri Qur’an n’inyigisho za Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Andika ikibazo cyawe hano…';

  @override
  String get askPageSubmitCta => 'Baza';

  @override
  String get askPageInputEmptyError => 'Banza wandike ikibazo.';

  @override
  String get askResultYourQuestion => 'Ikibazo cyawe';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Werekeye i Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Zengurutsa telefone yawe kugeza igihe urushinge rwa zahabu rwerekeje hejuru.\nIyo nzira ni yo ya Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Ikimenyetso cya GPS ni gike. Jya hanze hanyuma ukande Ongera ugerageze.';

  @override
  String get qiblaRetry => 'Ongera ugerageze';

  @override
  String get qiblaTitle => 'Icyerekezo cya Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km kugera i Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Aho uri harakenewe';

  @override
  String get qiblaLocationNeededBody =>
      'Emera Ayara gukoresha aho uri kugira ngo ibashe kubara icyerekezo cya Kaaba i Makkah aho uri hose.';

  @override
  String get qiblaOpenSettings => 'Fungura Settings';

  @override
  String get qiblaCompassLoading => 'Birimo gushaka aho uri…';

  @override
  String get qiblaTowardMecca => 'Werekeye i Makkah';

  @override
  String get prayerTimesTitle => 'Amasaha y’amasengesho';

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
  String get prayerTimesLocationNeededTitle => 'Aho uri harakenewe';

  @override
  String get prayerTimesLocationNeededBody =>
      'Emera Ayara gukoresha aho uri kugira ngo ibare neza amasaha y’amasengesho y’umujyi wawe.';

  @override
  String get prayerTimesNextLabel => 'Ikurikira';

  @override
  String get prayerTimesDoneLabel => 'Byarangiye';

  @override
  String get monthlyPrayerTimesTitle => 'Amasaha y’amasengesho y’ukwezi';

  @override
  String get monthlyPrayerTimesViewButton => 'Reba ukwezi kwose';

  @override
  String get monthlyPrayerTimesNextMonth => 'Ukwezi gutaha';

  @override
  String get monthlyPrayerTimesDayHeader => 'Umunsi';

  @override
  String get sharePrayerTimes => 'Sangiza amasaha y’amasengesho';

  @override
  String get notificationsSectionTitle => 'Amatangazo';

  @override
  String get notificationsSectionSubtitle =>
      'Ibyibutsa by’amasengesho, ibyabaye kuri kalendari n’ibindi';

  @override
  String get dailyReflectionReminderTitle => 'Kwibutsa gutekereza buri munsi';

  @override
  String get dailyReflectionReminderDescription =>
      'Kwibutsa kwa buri munsi mu buryo bworoheje kugira ngo ufungure Ayara kandi wihuze n’imani yawe.';

  @override
  String get dailyReflectionReminderEnable => 'Emera kwibutswa buri munsi';

  @override
  String get dailyReflectionReminderTimeLabel => 'Igihe cyo kwibutswa';

  @override
  String get prayerNotificationsTitle => 'Ibyibutsa by’amasengesho';

  @override
  String get prayerNotificationsDescription =>
      'Habwa kwibutswa mbere ya buri gihe cy’isengesho kugira ngo ugume uri hafi y’imani umunsi wose.';

  @override
  String get prayerNotificationsEnable => 'Emera ibyibutsa by’amasengesho';

  @override
  String get prayerNotificationsOpenSettings =>
      'Fungura igenamiterere ry’amatangazo';

  @override
  String get prayerNotificationsDenied => 'Amatangazo yarahagaritswe';

  @override
  String get prayerNotificationsDeniedHint =>
      'Jya muri Settings wemere amatangazo ya Ayara kugira ngo ubone ibyibutsa by’igihe cy’isengesho.';

  @override
  String get notificationsConsentLabel =>
      'Emera amatangazo y’amasaha y’amasengesho';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Isengesho rya mu museke';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ni isengesho ryo mu gitondo ry’Ahl al-Bayt. Imam Ali (AS) yavuze ati: Murinde isengesho rya mu museke nk’uko murinda ibyo mwiringiye by’agaciro. Byuka, wiyuhagize, maze uhagarare imbere ya Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Isengesho ryo ku manywa';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imam zo muri Ahl al-Bayt zahaga agaciro buri mwanya wo kwibuka Allah. Hagarika ibyo ukora, huza Dhuhr na Asr niba bikenewe, maze wongere werekeze umutima wawe kuri Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Isengesho ryo ku gicamunsi';

  @override
  String get prayerNotifBodyAsr =>
      'Rinda isengesho, kuko ari isezerano hagati yawe na Allah. Igihe cya Asr kirageze — ntukareke kigushirana utibutse Allah.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Isengesho ryo ku izuba rirenga';

  @override
  String get prayerNotifBodyMaghrib =>
      'Izuba rirenze — umwanya Ahl al-Bayt yafashe nk’uwera wo gusaba. Sali Maghrib maze urambure amaboko yawe usabe Allah mbere y’uko ijoro ritangira.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Isengesho rya nijoro';

  @override
  String get prayerNotifBodyIsha =>
      'Rangiza umunsi wawe uri kumwe na Allah. Imam bashishikarizaga Salat al-Layl nyuma ya Isha — ariko banza urangize Isha yawe maze usoze umunsi wibuka Allah.';

  @override
  String get outOfReflectionsBannerText =>
      'Wakoresheje ibyo bitekerezo byawe byose';

  @override
  String get outOfReflectionsBannerCta => 'Shaka ibindi';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Kanda ku ruziga kugira ngo ubare';

  @override
  String get dhikrResetButton => 'Subizamo';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Wamaze kurangiza kwibuka Allah inshuro 100. Bibe urumuri rw’umutima wawe.';

  @override
  String get disclaimerTitle => 'Ku byerekeye ubuyobozi butangwa n’iyi app';

  @override
  String get disclaimerBody =>
      'Ayara itanga ibitekerezo bya kisilamu, ibyibutsa, n’ibikubiyemo by’umwuka kugira ngo igushyigikire mu rugendo rwawe bwite rw’imani, ishingiye kuri Qur’an n’inyigisho za Ahl al-Bayt. Ibi bikubiyemo bitangwa gusa ku mpamvu rusange z’amakuru no gutera imbaraga.\n\nAyara ntisimbura abahanga bemewe.\nUbuyobozi buri muri iyi app si umusimbura w’umuhanga wa kisilamu wize, marja\', cyangwa umwigisha wize tewolojiya. Mu idini rya Shia Islam, ubuyobozi bw’idini bushingiye ku mashuri ya Ja\'fari mu by’amategeko y’idini (fiqh) no ku muco wo gukurikira Marja\' uriho — umuhanga mu mategeko y’idini ufite ubushobozi, uyobora abemera mu bikorwa by’idini. Niba ufite ibibazo ku mategeko y’idini, ku halal na haram, cyangwa ku nshingano zawe bwite z’idini, shakisha inama ku Marja\' ubifitiye ubushobozi cyangwa ku muhanga wo mu muryango wawe.\n\nIyi app ntitanga amategeko y’idini.\nAyara ntifata imyanzuro ya nyuma ku bibazo bya fiqh cyangwa ku nshingano zawe bwite z’idini. Nta kintu kiri hano kigomba gufatwa nka fatwa cyangwa nk’itegeko ry’idini rigutegeka.\n\nAkamaro ka Ahl al-Bayt.\nMuri Shia Islam, Intumwa Muhammad ﷺ n’umuryango we wejejwe — Ahl al-Bayt — ni bo bayobozi bemewe b’umuryango wa kisilamu nyuma ya Qur’an. Imam cumi na babiri ba Ahl al-Bayt ni bo basobanura inyigisho za kisilamu bashyizweho n’Imana. Ibiri muri iyi app bigaragaza uwo muco kandi bigamije kuwubaha uko bikwiye.\n\nIbirebana n’umuryango.\nIyi app igamije kugushishikariza kwegera ukwemera kwawe, mu gihe yubaha cyane uruhare rw’ingenzi rw’umusigiti wawe, ikigo cya kisilamu, n’umuryango wawe w’idini. Turagushishikariza kuguma wegereye abarimu bemewe bo hafi yawe kandi ugakomeza kubigiraho.';

  @override
  String get disclaimerClose => 'Ndabyumvise';

  @override
  String get disclaimerInfoTooltip =>
      'Ku byerekeye ubuyobozi butangwa n’iyi app';

  @override
  String get disclaimerSettingsSubtitle =>
      'Bigenewe gusa gutanga amakuru rusange. Kanda kugira ngo usome ibisobanuro byose.';

  @override
  String get disclaimerSectionHeader => 'Ibisobanuro ku buyobozi';

  @override
  String get navHome => 'Ahabanza';

  @override
  String get navReflect => 'Tekereza';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalendari';

  @override
  String get dashboardToday => 'UYU MUNSI';

  @override
  String get dashboardComingUp => 'Biraza';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'iminsi',
      one: 'umunsi',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Kwinjira vuba';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Ubuyobozi';

  @override
  String get quickActionPrayerTimes => 'Amasaha y’amasengesho';

  @override
  String get askAyaraTitle => 'Baza Ayara';

  @override
  String get askAyaraSubtitle =>
      'Baza ikibazo icyo ari cyo cyose cya kisilamu maze ubone igisubizo gitekerejweho neza kandi kiyobowe.';

  @override
  String get askAyaraHint => 'urugero: Akamaro ka Ramadan ni akahe?';

  @override
  String get askAyaraSubmit => 'Baza';

  @override
  String get wisdomOfTheDayTitle => 'Ubwenge bw’uyu munsi';

  @override
  String get calendarScreenTitle => 'Kalendari ya kisilamu';

  @override
  String get calendarUpcomingOccasions => 'Ibihe biri imbere';

  @override
  String get calendarOccasionRemindersTitle => 'Ibyibutsa by’ibihe';

  @override
  String get calendarOccasionRemindersHint =>
      'Uzibutswa nimugoroba mbere ya buri gihe';

  @override
  String get calendarNotifPermissionDenied =>
      'Uruhushya rw’amatangazo rwanze. Rwemere muri Settings z’igikoresho cyawe.';

  @override
  String get calendarNoEvents => 'Nta bikorwa biri imbere byabonetse.';

  @override
  String get calendarAddToPhone => 'Ongeramo mu Kalendari y\'Igikoresho';

  @override
  String get calendarAddedToPhone => 'Yongewe mu Kalendari';

  @override
  String get calendarCountdownToday => 'UYU MUNSI';

  @override
  String get calendarCountdownTomorrow => 'EJO';

  @override
  String calendarCountdownDays(int days) {
    return 'mu minsi $days';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Mut';

  @override
  String get calendarMonthFeb => 'Gas';

  @override
  String get calendarMonthMar => 'Wer';

  @override
  String get calendarMonthApr => 'Mat';

  @override
  String get calendarMonthMay => 'Gic';

  @override
  String get calendarMonthJun => 'Kam';

  @override
  String get calendarMonthJul => 'Nyak';

  @override
  String get calendarMonthAug => 'Kan';

  @override
  String get calendarMonthSep => 'Nze';

  @override
  String get calendarMonthOct => 'Ukw';

  @override
  String get calendarMonthNov => 'Ugu';

  @override
  String get calendarMonthDec => 'Uku';

  @override
  String get calendarSeasonMuharramEarly =>
      'Iminsi ya Muharram — ibuka Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — iminsi y’akababaro no gutekereza';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — iminsi mirongo ine ya Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Inzira yerekeza kuri Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — umuseke w’ubutumwa';

  @override
  String get calendarSeasonMidShaban =>
      'Hagati ya Sha\'ban — isabukuru ya Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ukwezi kwa Qur’an';

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
  String get duasScreenTitle => 'Duas & Ziyarat';

  @override
  String get duasSearchHint => 'Shakisha duas, ziyarat…';

  @override
  String get duasFilterAll => 'Byose';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nta dua yabonetse.';

  @override
  String get duaCategoryDaily => 'Buri munsi';

  @override
  String get duaCategoryWeekly => 'Buri cyumweru';

  @override
  String get duaCategoryOccasions => 'Ibihe';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Ivuka';

  @override
  String get eventTypeMartyrdom => 'Ubuhamya';

  @override
  String get eventTypeOccasion => 'Igihe';

  @override
  String get duaCopyTooltip => 'Koporora ubusobanuro';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Ubuhinduzi';

  @override
  String get duaAskAiLabel => 'Saba Ayara gusobanura iyi dua';

  @override
  String get duaAskAiLockedLabel => 'Baza Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ibisobanuro bya Ayara biboneka gusa ku banyamuryango ba Wilaya. Zamura muri Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Baza Ayara kuri \"$name\" — biraje vuba!';
  }

  @override
  String get duaCopiedToast => 'Dua yakoporowe muri clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ni we Ukomeye kurusha bose';

  @override
  String get tasbihAlhamdulillahMeaning => 'Ishimwe ryose ni irya Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Allah aratagatifu';

  @override
  String get tasbihResetTooltip => 'Subizamo';

  @override
  String get tasbihCompleteTitle => 'Tasbih Yarangiye';

  @override
  String get tasbihCompleteMessage => 'Allah yemere dhikr yawe.';

  @override
  String get tasbihTapHint => 'Kanda aho ari ho hose kugira ngo ubare';

  @override
  String get tasbihatScreenTitle => 'Ubuyobozi bw’isengesho';

  @override
  String get tasbihatScreenSubtitle => 'IBISINGIZO BY’ISENGESHO';

  @override
  String get tasbihatScreenDescription =>
      'Ubuyobozi bwuzuye ku bisingizo bisomwa mu isengesho rya buri munsi no nyuma yaryo — dukurikije umuco wa Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Bisomwa muri raka\'a ya 3 n’iya 4';

  @override
  String get tasbihatArba3Info =>
      'Mu mategeko ya Shia, Tasbiḥāt al-Arbaʿa isimbura Surah al-Fatiha muri raka\'a ya 3 n’iya 4 ya Dhuhr, Asr, Maghrib na Isha. Kuyisoma inshuro imwe ni itegeko (wājib), kandi kuyisoma inshuro eshatu birashishikarizwa (mustaḥabb).';

  @override
  String get tasbihatArba3Translation =>
      'Allah aratagatifu · Ishimwe ryose ni irya Allah\nNta yindi mana uretse Allah · Allah ni we Ukomeye kurusha bose';

  @override
  String get tasbihatArba3CompleteTitle => 'Gusoma birarangiye';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Allah yakire isengesho ryawe — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Kanda nyuma ya buri somo';

  @override
  String get tasbihatZahraSubtitle => 'Nyuma ya buri sengesho · amasaro 100';

  @override
  String get tasbihatZahraOriginLabel => 'Inkomoko';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) yasabye Intumwa ﷺ umukozi. Irababwira iti: \"Ese singakwereka ikintu cyiza kurusha ibyo? Soma Subḥānallāh inshuro 33, Alḥamdulillāh inshuro 33, na Allāhu Akbar inshuro 34 nyuma ya buri sengesho. Ibyo bikurusha umukozi.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Umuzingo wa 85';

  @override
  String get tasbihatZahraOpenCounter => 'Fungura umubare wa Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUA ZISABWA';

  @override
  String get tasbihatDuasSubtitle => 'Nyuma yo kurangiza isengesho ryawe';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Nyuma ya buri sengesho ritegetswe';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Uwasoma Āyat al-Kursī nyuma ya buri sengesho ritegetswe, nta kindi gishobora kumubuza kujya mu ijuru uretse urupfu. Imam al-Bāqir (a) yavuze ko ari imwe mu mirongo ikomeye cyane muri Qur’an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Nyuma ya buri sengesho · bisoza dua zose';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Kohereza imigisha ku Ntumwa ﷺ no ku muryango we wejejwe (Āl Muḥammad) birashishikarizwa kugira ngo bisoze buri dua. Imam al-Ṣādiq (a) yavuze ati: \"Dua yose iba ihagaze kugeza wohereje ṣalawāt kuri Muḥammad n’umuryango we.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Nyuma ya buri sengesho · ku bw’Imam wo mu gihe cyacu';

  @override
  String get tasbihatDuaFarajSource =>
      'Yigishijwe na Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua yo gusubira kugaragara kwa Imam al-Mahdī (af), Imam wa cumi, yigishijwe na se. Akenshi irasomwa n\'abakirisitu benshi ba Shia nyuma yo gusenga nk\'ikimenyetso cy\'ukwemera ku Imam uriho.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ya Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Nyuma ya Maghrib na Isha · birashishikarizwa cyane';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) yavuze ko gusoma Tasbīḥ al-Zahrā nyuma ya Isha mbere yo gusinzira biruta raka\'a 1000 z’isengesho ry’inyongera. Umucyo wabyo uzamuka ujya mu ijuru.';

  @override
  String get tasbihFatimaGiftPre => 'Impano yaturutse ku Ntumwa';

  @override
  String get tasbihFatimaGiftPost => 'isomwa nyuma ya buri sengesho';

  @override
  String get prayerTrackerTitle => 'IKURIKIRANABIKORWA BY’AMASENGESHO';

  @override
  String get prayerTrackerPrayed => 'Wasenze';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'iminsi $count ikurikirana';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Amasengesho yose yo uyu munsi yarangiye. Allah yakire.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Byarangiye uyu munsi';

  @override
  String get dhikrTrackerNotDoneToday => 'Ntibirakorwa uyu munsi';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'iminsi $count ikurikirana';
  }

  @override
  String get dhikrReminderTitle => 'Kwibutsa Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Kwibutsa kwa buri munsi mu buryo bworoheje kugira ngo usome Tasbīḥ al-Zahrā (SA) yawe.';

  @override
  String get dhikrReminderEnable => 'Emera kwibutswa Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Igihe cyo kwibutswa';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith y’uyu munsi';

  @override
  String get hadithLabelArabic => 'IKIARABU';

  @override
  String get hadithLabelTranslation => 'UBUHINDUZI';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Sangiza Iyi Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nBinyuze muri Ayara';
  }

  @override
  String get hadithNavPrevious => 'Ibanza';

  @override
  String get hadithNavNext => 'Ikurikira';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Abakiza B\'Imana 14';

  @override
  String get imamsScreenSubtitle =>
      'Intumwa, Nyina Fatima, n\'Abimamu 12 — abayobozi b\'ibihamya n\'abakiza mu idini ya Shia ya Twelver';

  @override
  String get imamLabelBorn => 'Yavutse';

  @override
  String get imamLabelMartyrdom => 'Ubuhamya';

  @override
  String get imamLabelStatus => 'Imimerere';

  @override
  String get imamSectionBiography => 'AMATEKA Y’UBUZIMA';

  @override
  String get imamSectionFamousSaying => 'IMVUGO IZWIHO';

  @override
  String get imamRoleProphet => 'Intumwa ya nyuma';

  @override
  String get imamRoleInfallible => 'Utunganye';

  @override
  String get imamOrdinal1 => 'Imam wa 1';

  @override
  String get imamOrdinal2 => 'Imam wa 2';

  @override
  String get imamOrdinal3 => 'Imam wa 3';

  @override
  String get imamOrdinal4 => 'Imam wa 4';

  @override
  String get imamOrdinal5 => 'Imam wa 5';

  @override
  String get imamOrdinal6 => 'Imam wa 6';

  @override
  String get imamOrdinal7 => 'Imam wa 7';

  @override
  String get imamOrdinal8 => 'Imam wa 8';

  @override
  String get imamOrdinal9 => 'Imam wa 9';

  @override
  String get imamOrdinal10 => 'Imam wa 10';

  @override
  String get imamOrdinal11 => 'Imam wa 11';

  @override
  String get imamOrdinal12 => 'Imam wa 12';

  @override
  String get duaAudioScreenTitle => 'Umva Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Hitamo dua wifuza kumva. Kanda kuri tile kugira ngo ukine cyangwa uhagarike.';

  @override
  String get duaAudioComingSoonMessage =>
      'Amajwi y’iyi dua azaboneka mu ivugurura rizakurikiraho.';

  @override
  String get duaAudioClose => 'Funga';

  @override
  String get duaAudioError =>
      'Ntibyashobotse gufungura amajwi. Reba uko internet yawe ihagaze.';

  @override
  String get duaAudioMetaTransmittedBy => 'Yatanzwe na';

  @override
  String get duaAudioMetaOccasion => 'Igihe';

  @override
  String get duaAudioMetaDuration => 'Igihe imara';

  @override
  String get quickActionDailyHadith => 'Hadith y’uyu munsi';

  @override
  String get quickAction14Masumeen => 'Abakiza B\'Imana 14';

  @override
  String get quickActionListenDuas => 'Umva';

  @override
  String get quickActionTasbihat => 'Ubuyobozi bw’isengesho';

  @override
  String get pilgrimageSectionTitle => 'Urugendo Rutagatifu';

  @override
  String get pilgrimageSectionSubtitle =>
      'Ubuyobozi bwuzuye bwa Hajj na Umrah — urugendo rutagatifu rugana ku Nzu Ntagatifu ya Allah i Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Inkingi ya Gatanu ya Islam';

  @override
  String get hajjCardDescription =>
      'Urugendo rukomeye rwa buri mwaka — rutegetswe rimwe mu buzima ku Muslim ushoboye wese';

  @override
  String get hajjScreenTitle => 'Ubuyobozi bwa Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Ubuyobozi bw’intambwe ku yindi bw’urugendo rukomeye';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Urugendo Ruto Rutagatifu';

  @override
  String get umrahCardDescription =>
      'Urugendo rw’umwuka rufite ibihembo byinshi rushobora gukorwa igihe icyo ari cyo cyose mu mwaka';

  @override
  String get umrahScreenTitle => 'Ubuyobozi bwa Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Ubuyobozi bw’intambwe ku yindi bw’urugendo ruto rutagatifu';

  @override
  String get pilgrimageStepsTitle => 'Imihango n’Intambwe';

  @override
  String get pilgrimageImportantNotesTitle => 'Iby’Ingenzi byo Kwitaho';

  @override
  String get pilgrimageDuaTitle => 'Dua kuri iki cyiciro';

  @override
  String get pilgrimageJafariNoteTitle => 'Icyitonderwa cya Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Byuzuye';

  @override
  String get pilgrimageMarkDone => 'Shyira nk\'ibikorwa';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done mu $total intambwe';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Abagenzi ba Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Abakirisitu benshi ba Shia kandi bajya i Medina ku ziyarat y\'Intumwa Muhammad (SAW) ku Masjid al-Nabawi n\'imva ziri Jannat al-Baqi. Izi ngendo zifite agaciro kanini mu buryo bw\'umutima, nubwo ubwazo atari imihango ya Hajj.';

  @override
  String get hajjIntro =>
      'Hajj ni inkingi ya gatanu y\'idini ya Islam, ikaba itegeko rimwe mu buzima ku Musilimu wese ushoboye mu buryo bw\'umubiri n\'ubukungu. Ku bakirisitu benshi ba Shia ba Twelver uyu munsi, ibi bisobanuye Hajj al-Tamattu\', ikorwa mu kwezi kwa Dhul Hijjah mu nzira z\'Intumwa Ibrahim (AS), umuhungu we Ismail (AS), na Nyina Hajar. Uyu muyoboro ukurikiza imiterere ya Ja\'fari y\'imihango, mu gihe ziyarat i Medina ikomeza kuba urugendo rw\'ingenzi cyane mbere cyangwa nyuma ya Hajj.';

  @override
  String get umrahIntro =>
      'Umrah ni urugendo ruto rutagatifu rugana i Mecca kandi, bitandukanye na Hajj, rushobora gukorwa igihe icyo ari cyo cyose mu mwaka. Nubwo rutari itegeko, rufite ibihembo byinshi by’umwuka kandi rufatwa nk’igikorwa cyo kuramya cyiza cyane. Rusangiye imihango imwe na Hajj, ariko ni rugufi kandi rugizwe n’intambwe enye z’ingenzi.';

  @override
  String get voiceInputTitle => 'Gutanga Ijwi';

  @override
  String get voiceInputMicTitle => 'Mikoro';

  @override
  String get voiceInputMicSubtitle =>
      'Vuga ibyo ushaka kubaza Ayara aho kwandika.';

  @override
  String get voiceInputMicDenied => 'Kugera ku mikoro byaranzwe.';

  @override
  String get voiceInputSpeak => 'Vuga aho';

  @override
  String get voiceInputListening => 'Kumva…';

  @override
  String get voiceInputPermissionDenied =>
      'Kugera ku mikoro birakenewe kugirango utange ijwi.';
}
