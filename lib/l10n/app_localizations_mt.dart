// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maltese (`mt`).
class AppLocalizationsMt extends AppLocalizations {
  AppLocalizationsMt([String locale = 'mt']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Agħżel il-lingwa tiegħek';

  @override
  String get languageSelectSub => 'Tista\' tbiddel dan aktar tard mis-Settings';

  @override
  String get actionContinue => 'Kompli';

  @override
  String get languageSuggestedHeader => 'Suġġerit';

  @override
  String get languageAllHeader => 'Il-lingwi kollha';

  @override
  String get languageSuggestedBadge => 'Suġġerit';

  @override
  String get languageSearchHint => 'Fittex…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Gwida ta\' Kuljum';

  @override
  String get categorySlot02 => 'Iman u Fiduċja';

  @override
  String get categorySlot03 => 'Riflessjoni tat-Talb';

  @override
  String get categorySlot04 => 'Sabar u Tama';

  @override
  String get categorySlot05 => 'Tfittex Maħfra';

  @override
  String get categorySlot06 => 'Ħniena u Kompassjoni';

  @override
  String get categorySlot07 => 'Fidi u Qawwa';

  @override
  String get categorySlot08 => 'Qalb Rikonoxxenti';

  @override
  String get categorySlot09 => 'Skop tal-Ħajja';

  @override
  String get categorySlot10 => 'Rabtiet Familjari';

  @override
  String get categorySlot11 => 'Paċi Interjuri';

  @override
  String get categorySlot12 => 'Għerf tal-Profeta';

  @override
  String get categorySlot13 => 'Karattru Tajjeb';

  @override
  String get categorySlot14 => 'Irżista t-Tentazzjoni';

  @override
  String get categorySlot15 => 'Dhikr tal-Għaxija';

  @override
  String get categoryCustom => 'Riflessjoni Personali';

  @override
  String get dhikrMeaningSubhanallah => 'Glorja lil Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Kull tifħir huwa dovut lil Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah huwa l-Akbar';

  @override
  String get quranVerseHeartAtRest =>
      'Tassew, fit-tifkira ta\' Allah il-qlub isibu l-mistrieħ.';

  @override
  String get promptHint =>
      'Agħfas kategorija għal gwida u riflessjoni Iżlamika';

  @override
  String get currentLanguage => 'Lingwa attwali';

  @override
  String get settingsLanguage => 'Settings tal-lingwa';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Agħżel il-lingwa tiegħek';

  @override
  String get continueCta => 'Kompli';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kliem',
      one: '$count kelma',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Għażliet';

  @override
  String get newCta => 'Ġdid';

  @override
  String get actionsTitle => 'X\'tixtieq tagħmel?';

  @override
  String get copy => 'Ikkopja';

  @override
  String get share => 'Aqsam';

  @override
  String get close => 'Agħlaq';

  @override
  String get copiedToast => 'Ikkopjat fil-clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ma setgħetx tinġenera risposta ġdida';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nTrid tipprova mill-ġdid?';
  }

  @override
  String get cancelCta => 'Ikkanċella';

  @override
  String get retryCta => 'Ipprova mill-ġdid';

  @override
  String get authTitle => 'Oħloq il-kont tiegħek';

  @override
  String get continueAsGuest => 'Kompli bħala mistieden';

  @override
  String get signInGoogle => 'Idħol b\'Google';

  @override
  String get signInApple => 'Idħol b\'Apple';

  @override
  String get signInEmail => 'Idħol bl-Email';

  @override
  String get upgradeWithApple => 'Kompli b\'Apple';

  @override
  String get mustAccept =>
      'Għandek taċċetta t-Termini u tagħraf il-Politika tal-Privatezza.';

  @override
  String get termsLabel => 'Naċċetta t-Termini tas-Servizz';

  @override
  String get privacyLabel => 'Qrajt il-Politika tal-Privatezza';

  @override
  String get marketingOptIn => 'Naqbel li nirċievi aħbarijiet u offerti';

  @override
  String get openTerms => 'Termini tas-Servizz';

  @override
  String get openPrivacy => 'Politika tal-Privatezza';

  @override
  String get accountSection => 'Kont';

  @override
  String get guestMode => 'Modalità ta\' mistieden';

  @override
  String get signedIn => 'Dħalt';

  @override
  String get upgradeHint =>
      'Salva r-riflessjonijiet tiegħek fuq diversi apparati billi toħloq kont.';

  @override
  String get upgradeWithGoogle => 'Kompli b\'Google';

  @override
  String get signOut => 'Oħroġ';

  @override
  String get snackUpgraded => 'Kont aġġornat b\'Google ✅';

  @override
  String get snackSignedIn => 'Dħalt b\'Google ✅';

  @override
  String get snackSignedOut => 'Ħriġt';

  @override
  String get snackSignedInApple => 'Dħalt b\'Apple ✅';

  @override
  String get snackSignedInGoogle => 'Dħalt b\'Google ✅';

  @override
  String get snackUpgradedApple => 'Kont aġġornat b\'Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Kont aġġornat b\'Google ✅';

  @override
  String get historyTitle => 'Riflessjonijiet preċedenti';

  @override
  String get historyOpenCta => 'Riflessjonijiet preċedenti';

  @override
  String get historyEmpty => 'Għad m\'hemm l-ebda riflessjoni salvata.';

  @override
  String get historyDeleteTitle => 'Tħassar ir-riflessjoni?';

  @override
  String get historyDeleteBody =>
      'Dan se jneħħi l-oġġett magħżul b\'mod permanenti.';

  @override
  String get deleteCta => 'Ħassar';

  @override
  String get historyButton => 'Riflessjonijiet Preċedenti';

  @override
  String get historyEmptyTitle => 'Għad m\'hemm l-ebda riflessjoni';

  @override
  String get historyEmptyBody =>
      'Iġġenera xi ħaġa l-ewwel — l-oġġetti salvati tiegħek se jidhru hawn.';

  @override
  String get historyDelete => 'Ħassar';

  @override
  String get footerTitle => 'Bil-Wilaya, Iman u Sabr';

  @override
  String get footerSubtitle => 'Talba waħda kull darba';

  @override
  String get genericErrorSnack =>
      'Xi ħaġa marret ħażin — jekk jogħġbok erġa\' pprova wara ftit.';

  @override
  String get upgradeAccountCta =>
      'Salva r-riflessjonijiet tiegħek fuq diversi apparati – oħloq kont';

  @override
  String get deleteAccount => 'Ħassar il-kont';

  @override
  String get exportData => 'Esporta d-data tiegħi';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Ħalli ftit 🐯\nAyara teħtieġ mument qabel it-tali li jmiss…';

  @override
  String get rateDailyLimit =>
      'Spiċċawlek ir-riflessjonijiet għalissa.\nIkri aktar riflessjonijiet jew aġġorna għal Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Użajt ir-riflessjonijiet kollha tiegħek.\nŻid aktar jew aġġorna għal Wilaya biex tkompli.';

  @override
  String get rateGraceCreditsExhausted =>
      'Spiċċawlek ir-riflessjonijiet għalissa.\nIkri aktar riflessjonijiet jew aġġorna għal Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya tiftaħ karatteristiċi premium, kategoriji futuri, u badge speċjali.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Ir-riflessjonijiet tiegħek huma vojta bħalissa. Pjan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ma setgħetx tivverifika r-riflessjonijiet tiegħek: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Xi ħaġa marret ħażin waqt il-verifika tar-riflessjonijiet tiegħek.';

  @override
  String get aiFallbackGeneric =>
      'Xi ħaġa marret ħażin — jekk jogħġbok erġa\' pprova wara ftit.';

  @override
  String get limitSectionTitle => 'Riflessjonijiet';

  @override
  String get limitTodayLabel => 'Użu';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Riflessjonijiet li fadal: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Pjan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Qed jgħabbi…';

  @override
  String get limitLoadingLabelDescription =>
      'Muri fil-karta tar-riflessjonijiet waqt li l-istatistika tal-użu qed tiġi mfittxija.';

  @override
  String get aiLimitTitle => 'Riflessjonijiet';

  @override
  String get aiLimitSubtitle =>
      'Kull risposta tuża 1 riflessjoni. Standard jinkludi riflessjonijiet tal-bidu. Wilaya tiftaħ kategoriji premium u tippermetti żidiet.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total riflessjonijiet użati';
  }

  @override
  String get creditsSectionTitle => 'Riflessjonijiet';

  @override
  String get creditsUsageLabel => 'Użu';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Riflessjonijiet li fadal: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Pjan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Qed jgħabbi…';

  @override
  String get creditsLoadingLabelDescription =>
      'Muri waqt li l-istatistika tar-riflessjonijiet qed tiġi mfittxija.';

  @override
  String get creditsTitle => 'Riflessjonijiet';

  @override
  String get creditsSubtitle =>
      'Kull risposta tuża 1 riflessjoni. Standard jinkludi riflessjonijiet tal-bidu. Wilaya tiftaħ kategoriji premium u tippermetti żidiet.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total riflessjonijiet użati';
  }

  @override
  String get settingsDeleteTitle => 'Ħassar il-kont';

  @override
  String get settingsDeleteDescription =>
      'Ħassar b\'mod permanenti l-kont tiegħek u d-data kollha assoċjata.';

  @override
  String get settingsDeleteButtonLabel => 'Ħassar il-kont tiegħi';

  @override
  String get settingsDeleteDialogTitle => 'Tħassar il-kont?';

  @override
  String get settingsDeleteDialogBody =>
      'Din l-azzjoni hija permanenti u ma tistax tiġi revokata.\n\nIl-konversazzjonijiet, l-istorja u l-informazzjoni tal-kont tiegħek kollha se jiġu mħassra.';

  @override
  String get settingsDeleteDialogCancel => 'Ikkanċella';

  @override
  String get settingsDeleteDialogConfirm => 'Ħassar';

  @override
  String get settingsFreeLimitUsedTitle => 'Riflessjonijiet tal-bidu użati';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Ir-riflessjonijiet tal-bidu għal dan l-apparat ġew użati. Aġġorna għal Wilaya jew ikri aktar riflessjonijiet biex tkompli.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Riflessjonijiet tal-bidu użati';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Ir-riflessjonijiet tal-bidu għal dan l-apparat ġew użati. Aġġorna għal Wilaya jew ikri aktar riflessjonijiet biex tkompli.';

  @override
  String get deviceBoundError =>
      'Dan l-apparat diġà huwa marbut ma\' kont ieħor. Jekk jogħġbok idħol bil-kont oriġinali.';

  @override
  String get premiumTitle => 'Modalità Wilaya';

  @override
  String get premiumSubtitleBasic => 'Iftaħ l-esperjenza sħiħa ta\' Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Inti fuq Wilaya. Teħtieġ aktar riflessjonijiet?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Pjan attwali: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Riflessjonijiet: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Ix-xirjiet mhumiex disponibbli bħalissa.';

  @override
  String get premiumSignInToPurchase =>
      'Idħol biex tixtri riflessjonijiet jew tiftaħ Wilaya.';

  @override
  String get premiumRestorePurchases => 'Irrestawra x-xirjiet';

  @override
  String get premiumProcessing => 'Qed jipproċessa…';

  @override
  String get premiumRestoreHintTitle =>
      'Diġà xtrajt Wilaya jew riflessjonijiet fuq dan l-apparat jew ieħor?';

  @override
  String get premiumRestoreHintBody =>
      'Irrestawra x-xirjiet tiegħek jekk ma jidhrux.';

  @override
  String get premiumBuyCredits200 => 'Ikri 200 riflessjoni';

  @override
  String get premiumBuyCredits400 => 'Ikri 400 riflessjoni';

  @override
  String get premiumBecomePremiumOneTime => 'Aġġorna għal modalità Wilaya';

  @override
  String get premiumTopupHint =>
      'Bil-Wilaya, tista\' żżid riflessjonijiet extra kull meta teħtieġ.';

  @override
  String get premiumUpgradeCta => 'Aġġorna';

  @override
  String get premiumRequiredForCategory =>
      'Din il-kategorija hija disponibbli biss għall-utenti Wilaya. Aġġorna mis-Settings biex tiftaħ il-kontenut premium kollu.';

  @override
  String get premiumBenefitsBasic =>
      'Iftaħ Wilaya biex tikseb riflessjonijiet extra, taċċessa kategoriji premium, u tkompli kull meta teħtieġ gwida.';

  @override
  String get premiumBenefitsPremium =>
      'Inti fil-modalità Wilaya. Jekk qed tonqos, żid xi riflessjonijiet extra u kompli mingħajr interruzzjonijiet.';

  @override
  String get premiumButtonBecomePremium => 'Iftaħ Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Żid 1000 riflessjoni';

  @override
  String get premiumBadge => 'Wilaya attiva';

  @override
  String get premiumLoadingStore => 'Qed jgħabbi l-ħanut…';

  @override
  String get premiumProductNotAvailable =>
      'Dan il-prodott għadu mhux disponibbli fil-ħanut. Jekk jogħġbok erġa\' pprova aktar tard.';

  @override
  String get premiumPurchaseError =>
      'Xi ħaġa marret ħażin mix-xirja. Jekk jogħġbok erġa\' pprova.';

  @override
  String get premiumBuyCredits100 => 'Żid 100 riflessjoni';

  @override
  String get premiumFeatureLocked =>
      'Iftaħ Wilaya biex taċċessa din il-karatteristika.';

  @override
  String get lockedCategoriesHint =>
      'Xi kategoriji huma riżervati għall-membri Wilaya. Iftaħhom biex tesplora kull riflessjoni fil-vjaġġ tiegħek.';

  @override
  String get freePlanBlockedTitle =>
      'Użajt ir-riflessjonijiet tal-bidu tiegħek';

  @override
  String get freePlanBlockedBody =>
      'Inti fuq il-pjan Standard b\'riflessjonijiet tal-bidu, u laħaqt il-limitu. Biex tkompli — u tiftaħ kategoriji premium — aġġorna għal Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ara l-għażliet Wilaya hawn taħt';

  @override
  String get graceBlockedTitle => 'Użajt ir-riflessjonijiet tal-bidu tiegħek';

  @override
  String get graceBlockedBody =>
      'Inti fuq il-pjan Standard b\'riflessjonijiet tal-bidu, u laħaqt il-limitu. Biex tkompli — u tiftaħ kategoriji premium — aġġorna għal Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ara l-għażliet Wilaya hawn taħt';

  @override
  String get rateGuestMustSignIn =>
      'Idħol biex tuża Ayara u r-riflessjonijiet tiegħek.';

  @override
  String get guestNoCreditsTitle => 'Modalità ta\' mistieden';

  @override
  String get guestNoCreditsBody =>
      'Bħala mistieden tista\' tiffronta l-app, iżda ma tistax tuża riflessjonijiet. Idħol aktar tard mis-Settings biex tuża riflessjonijiet u tiftaħ xirjiet.';

  @override
  String get guestDialogContinue => 'Kompli';

  @override
  String get guestDialogLoginInstead => 'Idħol minflok';

  @override
  String get optionalLabel => 'fakultattiv';

  @override
  String get accountDeleteSuccessTitle => 'Kont imħassar';

  @override
  String get accountDeleteSuccessBody =>
      'Il-kont tiegħek u d-data assoċjata ġew imħassra b\'suċċess.';

  @override
  String get accountDeleteSuccessClose => 'Agħlaq';

  @override
  String get accountDeleteErrorTitle => 'Ma setgħetx tħassar il-kont';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'L-awtentikazzjoni mill-ġdid ġiet ikkanċellata. Jekk jogħġbok idħol mill-ġdid u erġa\' pprova t-tħassir.';

  @override
  String get accountDeleteReauthRequired =>
      'It-tħassir tal-kont jeħtieġ dħul reċenti. Jekk jogħġbok oħroġ, idħol mill-ġdid, u erġa\' pprova.';

  @override
  String get settingsDeletePermanentWarning =>
      'Din l-azzjoni hija permanenti u ma tistax tiġi revokata. Id-data kollha assoċjata mal-kont tiegħek se tiġi mħassra.';

  @override
  String get dailyGraceTitle => 'Gwida ta\' Kuljum';

  @override
  String get dailyGraceScriptureLabel => 'VERS TAL-JUM';

  @override
  String get dailyGraceSaintLabel => 'FIGURE OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'RIFLESSJONI TAL-GĦAXIJA';

  @override
  String get dailyGraceCopiedToast => 'Vers ikkopjat fil-clipboard';

  @override
  String get locationConsentLabel =>
      'Permetti lil Ayara tuża l-pożizzjoni tiegħi għad-direzzjoni tal-Qibla u l-ħinijiet tat-talb';

  @override
  String get locationConsentHint =>
      'Użata biss għal dawn il-karatteristiċi. Il-pożizzjoni tiegħek qatt ma tinqasam jew tinħażen.';

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
  String get askPageTitle => 'Staqsi lil Ayara';

  @override
  String get askPageDescription =>
      'Staqsi xi ħaġa dwar il-fidi, it-talb, il-ħajja, jew il-prattika Iżlamika u irċievi gwida bbażata fuq il-Quran u t-tagħlim tal-Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Ikteb il-mistoqsija tiegħek hawn…';

  @override
  String get askPageSubmitCta => 'Staqsi';

  @override
  String get askPageInputEmptyError =>
      'Jekk jogħġbok ikteb mistoqsija l-ewwel.';

  @override
  String get askResultYourQuestion => 'Il-mistoqsija tiegħek';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Qed tħares lejn Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Dawwar it-telefon tiegħek sakemm il-labra dehbija tpunta \'l fuq.\nDik id-direzzjoni tpunta lejn il-Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Is-sinjal GPS huwa dgħajjef. Mur barra u agħfas Erġa\' pprova.';

  @override
  String get qiblaRetry => 'Erġa\' pprova';

  @override
  String get qiblaTitle => 'Direzzjoni tal-Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km lejn Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Pożizzjoni meħtieġa';

  @override
  String get qiblaLocationNeededBody =>
      'Permetti l-aċċess għall-pożizzjoni biex Ayara tkun tista\' tikkalkula d-direzzjoni tal-Kaaba f\'Makkah minn fejn tinsab.';

  @override
  String get qiblaOpenSettings => 'Iftaħ is-Settings';

  @override
  String get qiblaCompassLoading => 'Qed tinstab il-pożizzjoni tiegħek…';

  @override
  String get qiblaTowardMecca => 'Lejn Makkah';

  @override
  String get prayerTimesTitle => 'Ħinijiet tat-Talb';

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
  String get prayerTimesLocationNeededTitle => 'Pożizzjoni meħtieġa';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permetti l-aċċess għall-pożizzjoni biex Ayara tkun tista\' tikkalkula l-ħinijiet tat-talb preċiżi għall-belt tiegħek.';

  @override
  String get prayerTimesNextLabel => 'Li jmiss';

  @override
  String get prayerTimesDoneLabel => 'Lest';

  @override
  String get monthlyPrayerTimesTitle => 'Ħinijiet tat-Talb tax-Xahar';

  @override
  String get monthlyPrayerTimesViewButton => 'Ara x-Xahar Sħiħ';

  @override
  String get monthlyPrayerTimesNextMonth => 'Ix-xahar li ġej';

  @override
  String get monthlyPrayerTimesDayHeader => 'Jum';

  @override
  String get sharePrayerTimes => 'Aqsam il-ħinijiet tat-talb';

  @override
  String get notificationsSectionTitle => 'Notifiki';

  @override
  String get notificationsSectionSubtitle =>
      'Tfakkir tat-talb, avvenimenti tal-kalendarju u aktar';

  @override
  String get dailyReflectionReminderTitle => 'Riflessjoni ta\' Kuljum';

  @override
  String get dailyReflectionReminderDescription =>
      'Tfakkira ġentili ta\' kuljum biex tiftaħ Ayara u tgħaqqad ruħek mal-fidi tiegħek.';

  @override
  String get dailyReflectionReminderEnable => 'Attiva t-tfakkira ta\' kuljum';

  @override
  String get dailyReflectionReminderTimeLabel => 'Ħin tat-tfakkira';

  @override
  String get prayerNotificationsTitle => 'Tfakkir tat-Talb';

  @override
  String get prayerNotificationsDescription =>
      'Irċievi tfakkira ġentili qabel kull ħin tat-talb biex tibqa\' konness matul il-jum.';

  @override
  String get prayerNotificationsEnable => 'Attiva t-tfakkir tat-talb';

  @override
  String get prayerNotificationsOpenSettings =>
      'Iftaħ is-settings tan-notifiki';

  @override
  String get prayerNotificationsDenied => 'In-notifiki huma diżattivati';

  @override
  String get prayerNotificationsDeniedHint =>
      'Mur fis-Settings u permetti n-notifiki għal Ayara biex tirċievi tfakkir tal-ħinijiet tat-talb.';

  @override
  String get notificationsConsentLabel =>
      'Permetti n-notifiki għall-ħinijiet tat-talb';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Talba tal-Għodwa';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr hija t-talba tal-ġranet tal-Ahl al-Bayt. L-Imam Ali (AS) qal: Agħti kura lill-Fajr bħalma tagħti kura lill-iktar affarijiet prezzjużi tiegħek. Qum, tindaf, u qaf quddiem Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Talba tan-Nofs in-Nhar';

  @override
  String get prayerNotifBodyDhuhr =>
      'L-Imami tal-Ahl al-Bayt ippriżaw kull mument ta\' tifkira. Waqqaf il-ġurnata tiegħek, agħqad Dhuhr ma\' Asr jekk meħtieġ, u erġa\' ħalli qalbek tkun ma\' Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Talba ta\' Wara Nofs in-Nhar';

  @override
  String get prayerNotifBodyAsr =>
      'Agħti kura lit-talba, għax hija l-patt bejnek u Allah. Il-ħin tal-Asr wasal — tħallix jgħaddi mingħajr tifkira.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Talba tas-Sunset';

  @override
  String get prayerNotifBodyMaghrib =>
      'Ix-xemx nżlet — mument li l-Ahl al-Bayt żammew sagru għas-suplikazzjoni. Offri l-Maghrib u iftaħ idejk lil Allah fid-dua qabel tibda l-lejl.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Talba tal-Lejl';

  @override
  String get prayerNotifBodyIsha =>
      'Temm il-jum tiegħek fil-kumpannija ta\' Allah. L-Imami ħeġġew is-Salat al-Layl wara l-Isha — iżda l-ewwel, agħmel l-Isha tiegħek u agħlaq il-jum bit-tifkira Tiegħu.';

  @override
  String get outOfReflectionsBannerText =>
      'Użajt ir-riflessjonijiet kollha tiegħek';

  @override
  String get outOfReflectionsBannerCta => 'Ikri aktar';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Agħfas iċ-ċirku biex tgħodd';

  @override
  String get dhikrResetButton => 'Irreset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Tlaqt 100 tifkira ta\' Allah. Ħa jkunu dawl għal qalbek.';

  @override
  String get disclaimerTitle => 'Dwar il-gwida ta\' din l-app';

  @override
  String get disclaimerBody =>
      'Ayara tipprovdi riflessjonijiet Iżlamiċi, tfakkir, u kontenut spiritwali biex tappoġġja l-vjaġġ personali tiegħek tal-fidi, ibbażata fuq il-Quran u t-tagħlim tal-Ahl al-Bayt. Dan il-kontenut huwa offrut għal finijiet ġenerali ta\' informazzjoni u ispirazzjoni biss.\n\nAyara ma tissostitwixxix għoxrin tal-iskolarità.\nIl-gwida f\'din l-app mhix sostitut għal għaref Iżlamiku kwalifikat, marja\', jew għalliem imħarreġ teoloġikament. Fl-Islam Shi\'a, il-gwida reliġjuża hija bbażata fuq il-iskola Ja\'farija tal-ġurisprudenza (fiqh) u t-tradizzjoni ta\' segwi Marja\' ħajj (sors ta\' emulazzjoni) — ġurista kwalifikat li l-deċiżjonijiet tiegħu jiggwidaw lill-insara fil-prattika reliġjuża. Jekk għandek mistoqsijiet dwar deċiżjonijiet reliġjużi, kwistjonijiet halal u haram, jew obbligi reliġjużi personali, jekk jogħġbok tfittex parir minn Marja\' kwalifikat jew għaref fil-komunità tiegħek.\n\nDin l-app ma toħroġx deċiżjonijiet reliġjużi.\nAyara ma tagħmilx determinazzjonijiet awtoritattivi fuq kwistjonijiet ta\' fiqh jew obbligi reliġjużi personali. Xejn hawn m\'għandu jiġi trattat bħala fatwa jew istruzzjoni reliġjuża vinkolanti.\n\nIċ-ċentralità tal-Ahl al-Bayt.\nFl-Islam Shi\'a, il-Profeta Muhammad ﷺ u l-familja purifikata tiegħu — l-Ahl al-Bayt — huma l-gwidi awtoritattivi tal-komunità Iżlamika wara l-Quran. It-tnax-il Imam tal-Ahl al-Bayt huma l-interpretaturi maħtura divinament tat-tagħlim Iżlamiku. Il-kontenut f\'din l-app jirrifletti din it-tradizzjoni u jfittex li jirrispettaha b\'fedeltà.\n\nIl-komunità hija importanti.\nDin l-app timmira li tħeġġeġ l-involviment tiegħek mal-fidi filwaqt li tirrispetta b\'mod profond ir-rwol vitali tal-moskea lokali tiegħek, iċ-ċentru Iżlamiku, u l-komunità reliġjuża. Inħeġġukom tibqgħu konnessi u titgħallmu minn għalliema kwalifikati fil-qrib tagħkom.';

  @override
  String get disclaimerClose => 'Nifhem';

  @override
  String get disclaimerInfoTooltip => 'Dwar il-gwida ta\' din l-app';

  @override
  String get disclaimerSettingsSubtitle =>
      'Għal finijiet ġenerali ta\' informazzjoni biss. Agħfas biex taqra d-disclaimer sħiħ.';

  @override
  String get disclaimerSectionHeader => 'Disclaimer tal-gwida';

  @override
  String get navHome => 'Dar';

  @override
  String get navReflect => 'Riflessjoni';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalendarju';

  @override
  String get dashboardToday => 'ILLUM';

  @override
  String get dashboardComingUp => 'Li jmiss';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jiem',
      one: 'jum',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Aċċess Rapidu';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Gwida';

  @override
  String get quickActionPrayerTimes => 'Ħinijiet tat-Talb';

  @override
  String get askAyaraTitle => 'Staqsi lil Ayara';

  @override
  String get askAyaraSubtitle =>
      'Staqsi kwalunkwe mistoqsija Iżlamika u irċievi tweġiba maħsuba u ggwidata.';

  @override
  String get askAyaraHint => 'p.eż. X\'inhu s-sinifikat ta\' Ramadan?';

  @override
  String get askAyaraSubmit => 'Staqsi';

  @override
  String get wisdomOfTheDayTitle => 'L-Għerf tal-Jum';

  @override
  String get calendarScreenTitle => 'Kalendarju Iżlamiku';

  @override
  String get calendarUpcomingOccasions => 'Okkażjonijiet li Ġejjin';

  @override
  String get calendarOccasionRemindersTitle => 'Tfakkir tal-Okkażjonijiet';

  @override
  String get calendarOccasionRemindersHint =>
      'Tinnotifika fil-għaxija qabel kull okkażjoni';

  @override
  String get calendarNotifPermissionDenied =>
      'Permess tan-notifiki miċħud. Attivah mis-settings tal-apparat tiegħek.';

  @override
  String get calendarNoEvents => 'Ma nstbu l-ebda avvenimenti li ġejjin.';

  @override
  String get calendarAddToPhone => 'Żid kalendar tat-telefon';

  @override
  String get calendarAddedToPhone => 'Żidiet fil-kalendar';

  @override
  String get calendarCountdownToday => 'ILLUM';

  @override
  String get calendarCountdownTomorrow => 'GĦADA';

  @override
  String calendarCountdownDays(int days) {
    return 'f\'$days jum';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fra';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mejju';

  @override
  String get calendarMonthJun => 'Ġun';

  @override
  String get calendarMonthJul => 'Lul';

  @override
  String get calendarMonthAug => 'Aww';

  @override
  String get calendarMonthSep => 'Set';

  @override
  String get calendarMonthOct => 'Ott';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Diċ';

  @override
  String get calendarSeasonMuharramEarly =>
      'Jiem ta\' Muharram — ftakar f\'Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — jiem ta\' luttu u riflessjoni';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — erbgħin jum ta\' Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'It-triq lejn Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — il-bidunett tar-rivelazzjoni';

  @override
  String get calendarSeasonMidShaban =>
      'Nofs Sha\'ban — birthday tal-Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ix-xahar tal-Quran';

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
  String get duasScreenTitle => 'Duas u Ziyarat';

  @override
  String get duasSearchHint => 'Fittex duas, ziyarat…';

  @override
  String get duasFilterAll => 'Kollha';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas u ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Ma nstabet l-ebda dua.';

  @override
  String get duaCategoryDaily => 'Ta\' Kuljum';

  @override
  String get duaCategoryWeekly => 'Kull Ġimgħa';

  @override
  String get duaCategoryOccasions => 'Okkażjonijiet';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Twelid';

  @override
  String get eventTypeMartyrdom => 'Martirju';

  @override
  String get eventTypeOccasion => 'Okkażjoni';

  @override
  String get duaCopyTooltip => 'Ikkopja t-traduzzjoni';

  @override
  String get duaToggleTransliteration => 'Traslitterazzjoni';

  @override
  String get duaToggleTranslation => 'Traduzzjoni';

  @override
  String get duaAskAiLabel => 'Staqsi lil Ayara biex tispjega din id-dua';

  @override
  String get duaAskAiLockedLabel => 'Staqsi lil Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'L-ispjegazzjonijiet ta\' Ayara huma disponibbli għall-membri Wilaya. Aġġorna mis-Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Staqsi lil Ayara dwar \"$name\" — dalwaqt!';
  }

  @override
  String get duaCopiedToast => 'Dua ikkopjata fil-clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah huwa l-Akbar';

  @override
  String get tasbihAlhamdulillahMeaning => 'Kull tifħir jappartjeni lil Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glorja lil Allah';

  @override
  String get tasbihResetTooltip => 'Irreset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Lest';

  @override
  String get tasbihCompleteMessage => 'Ħa jilqa\' Allah id-dhikr tiegħek.';

  @override
  String get tasbihTapHint => 'Agħfas kullimkien biex tgħodd';

  @override
  String get tasbihatScreenTitle => 'Gwida tat-Talb';

  @override
  String get tasbihatScreenSubtitle => 'IL-GLORIFIKAZZJONIJIET TAT-TALB';

  @override
  String get tasbihatScreenDescription =>
      'Gwida kompleta għall-glorifikazzjonijiet recitatati waqt u wara t-talbiet ta\' kuljum — skont it-tradizzjoni tal-Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitatati waqt it-3. u l-4. rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Fil-ġurisprudenza Shi\'a, it-Tasbiḥāt al-Arbaʿa tissostitwixxi s-Surah al-Fatiha fit-3. u l-4. rakʿah ta\' Dhuhr, Asr, Maghrib, u Isha. Hija obbligatorja (wājib) li tirrecitaha darba, u rakkomandata (mustaḥabb) li tirrecitaha tliet darbiet.';

  @override
  String get tasbihatArba3Translation =>
      'Glorja lil Allah · Kull tifħir huwa lil Allah\nM\'hemm l-ebda alla ħlief Allah · Allah huwa l-Akbar';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitazzjoni Lesta';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Ħa tiġi aċċettata t-talba tiegħek — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Agħfas wara kull recitazzjoni';

  @override
  String get tasbihatZahraSubtitle => 'Wara kull talba · 100 żerriegħa';

  @override
  String get tasbihatZahraOriginLabel => 'Oriġini';

  @override
  String get tasbihatZahraHadith =>
      'Is-Sida Fatima al-Zahra (sa) staqsiet lill-Profeta ﷺ għal qaddej. Qal: \"Ma niggwidakx għal xi ħaġa aħjar? Recita Subḥānallāh 33 darba, Alḥamdulillāh 33 darba, u Allāhu Akbar 34 darba wara kull talba. Dan huwa aħjar għalik minn qaddej.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Iftaħ il-Kontatur Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS RAKKOMANDATA';

  @override
  String get tasbihatDuasSubtitle => 'Wara li tlesti t-talba tiegħek';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Wara kull talba obbligatorja';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Min jirrecita Āyat al-Kursī wara kull talba obbligatorja, xejn ma jżommu minn ġannah ħlief il-mewt. L-Imam al-Bāqir (a) qal li hija waħda mill-aqwa versi fil-Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Wara kull talba · tissigilla s-suppliki kollha';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'L-invio ta\' salutatarji fuq il-Profeta ﷺ u l-familja purifikata tiegħu (Āl Muḥammad) hija rakkomandata biex tissigilla kull dua. L-Imam al-Ṣādiq (a) qal: \"Kull dua hija sospiża sakemm tibgħat ṣalawāt fuq Muḥammad u l-familja tiegħu.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Wara kull talba · għall-Imam ta\' żmienna';

  @override
  String get tasbihatDuaFarajSource =>
      'Mgħallma mill-Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. It is often recited by many Shia Muslims after prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ tas-Sida Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Wara Maghrib u Isha · rakkomandata speċjalment';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'L-Imam al-Bāqir (a) qal li r-recitazzjoni ta\' Tasbīḥ al-Zahrā wara l-Isha qabel torqod hija aħjar minn 1000 rakʿah ta\' talb fakultattiv. Id-dawl tagħha jogħla s-smewwiet.';

  @override
  String get tasbihFatimaGiftPre => 'Rigal mill-Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitatata wara kull talba';

  @override
  String get prayerTrackerTitle => 'SEGWAĦIEB TAT-TALB';

  @override
  String get prayerTrackerPrayed => 'Ittallab';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Strix ta\' $count jum';
  }

  @override
  String get prayerTrackerAllComplete =>
      'It-talbiet kollha tlestew illum. Ħa jilqa\' Allah.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Lest illum';

  @override
  String get dhikrTrackerNotDoneToday => 'Mhux lest illum';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Strix ta\' $count jum';
  }

  @override
  String get dhikrReminderTitle => 'Tfakkira Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Tfakkira ġentili ta\' kuljum biex tirrecita t-Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Attiva t-tfakkira Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Ħin tat-tfakkira';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith ta\' Kuljum';

  @override
  String get hadithLabelArabic => 'GĦARBI';

  @override
  String get hadithLabelTranslation => 'TRADUZZJONI';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Aqsam dan il-Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPermezz ta\' Ayara';
  }

  @override
  String get hadithNavPrevious => 'Preċedenti';

  @override
  String get hadithNavNext => 'Li jmiss';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The Fourteen Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the purified and infallible guides in Twelver Shia Islam';

  @override
  String get imamLabelBorn => 'Imwieled';

  @override
  String get imamLabelMartyrdom => 'Martirju';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIJOGRAFIJA';

  @override
  String get imamSectionFamousSaying => 'QAWL FAMUŻ';

  @override
  String get imamRoleProphet => 'Il-Profeta Finali';

  @override
  String get imamRoleInfallible => 'L-Infallibli';

  @override
  String get imamOrdinal1 => 'L-Ewwel Imam';

  @override
  String get imamOrdinal2 => 'It-Tieni Imam';

  @override
  String get imamOrdinal3 => 'It-Tielet Imam';

  @override
  String get imamOrdinal4 => 'Ir-Raba\' Imam';

  @override
  String get imamOrdinal5 => 'Il-Ħames Imam';

  @override
  String get imamOrdinal6 => 'Is-Sitt Imam';

  @override
  String get imamOrdinal7 => 'Is-Seba\' Imam';

  @override
  String get imamOrdinal8 => 'It-Tmien Imam';

  @override
  String get imamOrdinal9 => 'Id-Disa\' Imam';

  @override
  String get imamOrdinal10 => 'L-Għaxar Imam';

  @override
  String get imamOrdinal11 => 'Il-Ħdax-il Imam';

  @override
  String get imamOrdinal12 => 'It-Tnax-il Imam';

  @override
  String get duaAudioScreenTitle => 'Isma\' d-Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Agħżel dua biex tisma\'. Agħfas il-pjanċa biex tplay jew tpauża.';

  @override
  String get duaAudioComingSoonMessage =>
      'L-awdjo għal din id-dua se jkun disponibbli f\'aġġornament li ġej.';

  @override
  String get duaAudioClose => 'Agħlaq';

  @override
  String get duaAudioError =>
      'Ma setgħetx tgħabbi l-awdjo. Jekk jogħġbok iċċekkja l-konnessjoni tiegħek.';

  @override
  String get duaAudioMetaTransmittedBy => 'Trasmess minn';

  @override
  String get duaAudioMetaOccasion => 'Okkażjoni';

  @override
  String get duaAudioMetaDuration => 'Durata';

  @override
  String get quickActionDailyHadith => 'Hadith ta\' Kuljum';

  @override
  String get quickAction14Masumeen => 'Fourteen Infallibles';

  @override
  String get quickActionListenDuas => 'Isma\'';

  @override
  String get quickActionTasbihat => 'Gwida tat-Talb';

  @override
  String get pilgrimageSectionTitle => 'Il-Vjaġġ Sagru';

  @override
  String get pilgrimageSectionSubtitle =>
      'Gwidi kompleti għal Hajj u Umrah — il-pellegrinaġġ lejn il-Dar Sagra ta\' Allah f\'Makkah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Il-Ħames Pilastru tal-Islam';

  @override
  String get hajjCardDescription =>
      'Il-pellegrinaġġ annwali kbir — obbligatorju darba f\'ħajja għal kull Muslim li jkun jista\'';

  @override
  String get hajjScreenTitle => 'Gwida tal-Hajj';

  @override
  String get hajjScreenSubtitle => 'Gwida pass pass għall-pellegrinaġġ il-kbir';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Il-Pellegrinaġġ Iżgħar';

  @override
  String get umrahCardDescription =>
      'Vjaġġ spiritwali profondament premjanti li jista\' jsir fi kwalunkwe żmien tas-sena';

  @override
  String get umrahScreenTitle => 'Gwida tal-Umrah';

  @override
  String get umrahScreenSubtitle => 'Gwida pass pass għall-pellegrinaġġ iżgħar';

  @override
  String get pilgrimageStepsTitle => 'Riti u Passi';

  @override
  String get pilgrimageImportantNotesTitle => 'Noti Importanti';

  @override
  String get pilgrimageDuaTitle => 'Dua għal dan il-pass';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota tal-Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Komplut';

  @override
  String get pilgrimageMarkDone => 'Marka bħala komplut';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done minn $total passi';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes minuta';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pellegrini Shi\'a';

  @override
  String get pilgrimageShiaNoteBody =>
      'Ħafna pellegrini Xiti wkoll jivvjaġġaw lejn Medina għal ziyarat tal-Profeta Muhammad (SAW) fil-Masjid al-Nabawi u għall-oqbra f\'Jannat al-Baqi. Dawn iż-żjarat għandhom sinifikat spiritwali profond, għalkemm fihom infushom mhumiex riti tal-Ħaġġ.';

  @override
  String get hajjIntro =>
      'Il-Ħaġġ huwa l-ħames pilastru tal-Iżlam, obbligatorju darba fil-ħajja għal kull Musulman li huwa fiżikament u finanzjarjament kapaċi. Għall-biċċa l-kbira tal-pellegrini Xiti Twelver illum, dan ifisser Hajj al-Tamattu\', li jsir fix-xahar ta\' Dhul Hijjah fuq il-passi tal-Profeta Ibrahim (AS), ibnu Ismail (AS), u Lady Hajar. Din il-gwida ssegwi l-qafas Ja\'fari tar-riti, filwaqt li ż-ziyara f\'Medina tibqa\' vjaġġ spiritwali għażiż ħafna qabel jew wara l-Ħaġġ.';

  @override
  String get umrahIntro =>
      'L-Umrah hija l-pellegrinaġġ iżgħar lejn Makkah u, b\'differenza mill-Hajj, tista\' titwettaq fi kwalunkwe żmien tas-sena. Għalkemm mhix obbligatorja, ġġib premju spiritwali immens u hija kkunsidrata att ta\' qima rakkomandat ħafna. Taqsam diversi riti mal-Hajj iżda hija iqsar, u tikkonsisti f\'erba\' riti prinċipali.';

  @override
  String get voiceInputTitle => 'Input bil-Vuċi';

  @override
  String get voiceInputMicTitle => 'Mikrofonu';

  @override
  String get voiceInputMicSubtitle =>
      'Ikkellem il-input tiegħek biex Staqsi lil Ayara minflok it-tipa.';

  @override
  String get voiceInputMicDenied => 'Aċċess għall-mikrofonu ġie miċħud.';

  @override
  String get voiceInputSpeak => 'Ikkellem minflok';

  @override
  String get voiceInputListening => 'Qiegħed nisimgħek…';

  @override
  String get voiceInputPermissionDenied =>
      'Aċċess għall-mikrofonu huwa meħtieġ għall-input bil-vuċi.';
}
