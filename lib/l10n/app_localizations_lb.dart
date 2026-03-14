// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luxembourgish Letzeburgesch (`lb`).
class AppLocalizationsLb extends AppLocalizations {
  AppLocalizationsLb([String locale = 'lb']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Wiel Är Sproach';

  @override
  String get languageSelectSub =>
      'Dir kënnt dat méi spéit an den Astellungen änneren';

  @override
  String get actionContinue => 'Weidermaachen';

  @override
  String get languageSuggestedHeader => 'Proposéiert';

  @override
  String get languageAllHeader => 'All Sproochen';

  @override
  String get languageSuggestedBadge => 'Proposéiert';

  @override
  String get languageSearchHint => 'Sichen…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Deeglech Orientéierung';

  @override
  String get categorySlot02 => 'Iman & Vertrauen';

  @override
  String get categorySlot03 => 'Gebet Reflexioun';

  @override
  String get categorySlot04 => 'Gedold Hoffnung';

  @override
  String get categorySlot05 => 'Verzeiung sichen';

  @override
  String get categorySlot06 => 'Barmherzegkeet Mitleid';

  @override
  String get categorySlot07 => 'Glawe Kraaft';

  @override
  String get categorySlot08 => 'Dankbar Häerz';

  @override
  String get categorySlot09 => 'Sënn vum Liewen';

  @override
  String get categorySlot10 => 'Familljegebundenheeten';

  @override
  String get categorySlot11 => 'Bannenzfridden';

  @override
  String get categorySlot12 => 'Prophet Wäisheit';

  @override
  String get categorySlot13 => 'Gutt Charakter';

  @override
  String get categorySlot14 => 'Versuechung widerstoen';

  @override
  String get categorySlot15 => 'Owend Dhikr';

  @override
  String get categoryCustom => 'Perséinlech Reflexioun';

  @override
  String get dhikrMeaningSubhanallah => 'Geréischt se Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All Pries gehéiert Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah ass dat Gréissten';

  @override
  String get quranVerseHeartAtRest =>
      'Wahrlich, an der Gedéngknis vun Allah fannen d\'Häerzer Rou.';

  @override
  String get promptHint =>
      'Tipt op eng Kategorie fir islamésch Orientéierung a Reflexioun';

  @override
  String get currentLanguage => 'Aktuell Sproach';

  @override
  String get settingsLanguage => 'Sprooch Astellungen';

  @override
  String get settingsTitle => 'Astellungen';

  @override
  String get chooseLanguage => 'Wiel Är Sproach';

  @override
  String get continueCta => 'Weidermaachen';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Wierder',
      one: '$count Wuert',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Optiounen';

  @override
  String get newCta => 'Nei';

  @override
  String get actionsTitle => 'Wat wëllt Dir maachen?';

  @override
  String get copy => 'Kopéieren';

  @override
  String get share => 'Deelen';

  @override
  String get close => 'Zoumaachen';

  @override
  String get copiedToast => 'An d\'Zwëschenaflage kopéiert';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Konnt net nei äntweren';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nWëllt Dir et nach eng Kéier probéieren?';
  }

  @override
  String get cancelCta => 'Ofbriechen';

  @override
  String get retryCta => 'Erëm probéieren';

  @override
  String get authTitle => 'Erstellt Är Kont';

  @override
  String get continueAsGuest => 'As Gast weidermaachen';

  @override
  String get signInGoogle => 'Mat Google ukomm';

  @override
  String get signInApple => 'Mat Apple ukomm';

  @override
  String get signInEmail => 'Mat E-Mail ukomm';

  @override
  String get upgradeWithApple => 'Mat Apple weidermaachen';

  @override
  String get mustAccept =>
      'Dir musst den Bedingte zoustëmmen a d\'Dateschutzdeklaratioun anerkenne.';

  @override
  String get termsLabel => 'Ech akzeptéieren d\'Bedingte vum Service';

  @override
  String get privacyLabel => 'Ech hunn d\'Dateschutzdeklaratioun gelies';

  @override
  String get marketingOptIn => 'Ech stimme Bréck a Agebote ze';

  @override
  String get openTerms => 'Bedingte vum Service';

  @override
  String get openPrivacy => 'Dateschutzdeklaratioun';

  @override
  String get accountSection => 'Kont';

  @override
  String get guestMode => 'Gast Modus';

  @override
  String get signedIn => 'Ukomm';

  @override
  String get upgradeHint =>
      'Speichert Är Reflexiounen op Geräter, andeems Dir e Kont erstellt.';

  @override
  String get upgradeWithGoogle => 'Mat Google weidermaachen';

  @override
  String get signOut => 'Ofmellen';

  @override
  String get snackUpgraded => 'Kont mat Google upgradéiert ✅';

  @override
  String get snackSignedIn => 'Mat Google ukomm ✅';

  @override
  String get snackSignedOut => 'Ofgemellt';

  @override
  String get snackSignedInApple => 'Mat Apple ukomm ✅';

  @override
  String get snackSignedInGoogle => 'Mat Google ukomm ✅';

  @override
  String get snackUpgradedApple => 'Kont mat Apple upgradéiert ✅';

  @override
  String get snackUpgradedGoogle => 'Kont mat Google upgradéiert ✅';

  @override
  String get historyTitle => 'Fréier Reflexiounen';

  @override
  String get historyOpenCta => 'Fréier Reflexiounen';

  @override
  String get historyEmpty => 'Nog keng Reflexiounen gespäichert.';

  @override
  String get historyDeleteTitle => 'Reflexioun läschen?';

  @override
  String get historyDeleteBody => 'Dëst wäert d\'Artikel permanent läschen.';

  @override
  String get deleteCta => 'Läschen';

  @override
  String get historyButton => 'Fréier Reflexiounen';

  @override
  String get historyEmptyTitle => 'Nach keng Reflexiounen';

  @override
  String get historyEmptyBody =>
      'Generéiert eppes fir d\'éischt — Är gespäichert Artikelen erschéngen hei.';

  @override
  String get historyDelete => 'Läschen';

  @override
  String get footerTitle => 'Mat Wilaya, Iman a Sabr';

  @override
  String get footerSubtitle => 'Ee Gebet op eng Kéier';

  @override
  String get genericErrorSnack =>
      'Eppes ass schif gelaf — probéiert w.e.g. spéider nees.';

  @override
  String get upgradeAccountCta =>
      'Speichert Är Reflexiounen op Geräter – erstellt e Kont';

  @override
  String get deleteAccount => 'Kont läschen';

  @override
  String get exportData => 'Meng Donnéeën exportéieren';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Roueg 🐯\nAyara brauch ee Moment virun déi nächst…';

  @override
  String get rateDailyLimit =>
      'Dir hutt fir d\'Moment keng Reflexiounen méi.\nKreit méi Reflexiounen oder upgrade op Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Dir hutt all Är Reflexiounen benotzt.\nFëllt op oder upgrade op Wilaya fir weidermaachen.';

  @override
  String get rateGraceCreditsExhausted =>
      'Dir hutt fir d\'Moment keng Reflexiounen méi.\nKreit méi Reflexiounen oder upgrade op Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya entspärt Premium Funktiounen, zukünftig Kategorien a e spezial Badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Är Reflexiounen sinn elo eidel. Plang: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Konnt Är Reflexiounen net kontrolléieren: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Eppes ass scheif gelaf beim Kontrolléieren Ärer Reflexiounen.';

  @override
  String get aiFallbackGeneric =>
      'Eppes ass schif gelaf — probéiert w.e.g. spéider nees.';

  @override
  String get limitSectionTitle => 'Reflexiounen';

  @override
  String get limitTodayLabel => 'Benotzt';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Verbleiwen Reflexiounen: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plang: $plan';
  }

  @override
  String get limitLoadingLabel => 'Lued…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflexiounen';

  @override
  String get aiLimitSubtitle =>
      'All Äntwert benotzt 1 Reflexioun. Standard enthält Starter Reflexiounen. Wilaya entspärt Premium Kategorien a erm Opfëllen.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total Reflexiounen benotzt';
  }

  @override
  String get creditsSectionTitle => 'Reflexiounen';

  @override
  String get creditsUsageLabel => 'Benotzt';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Verbleiwen Reflexiounen: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plang: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Lued…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflexiounen';

  @override
  String get creditsSubtitle =>
      'All Äntwert benotzt 1 Reflexioun. Standard enthält Starter Reflexiounen. Wilaya entspärt Premium Kategorien a erm Opfëllen.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total Reflexiounen benotzt';
  }

  @override
  String get settingsDeleteTitle => 'Kont läschen';

  @override
  String get settingsDeleteDescription =>
      'Läscht Äre Kont a all assoziéiert Donnéeën permanent.';

  @override
  String get settingsDeleteButtonLabel => 'Läscht menge Kont';

  @override
  String get settingsDeleteDialogTitle => 'Kont läschen?';

  @override
  String get settingsDeleteDialogBody =>
      'Dës Aktioun ass permanent a kann net rückgängeg gemaach ginn.\n\nAll Är Chats, Geschicht a Konti Informatiounen gi geläscht.';

  @override
  String get settingsDeleteDialogCancel => 'Ofbriechen';

  @override
  String get settingsDeleteDialogConfirm => 'Läschen';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter Reflexiounen benotzt';

  @override
  String get settingsFreeLimitUsedDescription =>
      'D\'Starter Reflexiounen fir dëst Gerät sinn benotzt. Upgrade op Wilaya oder kaaf méi Reflexiounen.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter Reflexiounen benotzt';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'D\'Starter Reflexiounen fir dëst Gerät sinn benotzt. Upgrade op Wilaya oder kaaf méi Reflexiounen.';

  @override
  String get deviceBoundError =>
      'Dëst Gerät ass scho mat engem aneren Kont verbonnen. W.e.g. mellt Iech mat dem Original Kont un.';

  @override
  String get premiumTitle => 'Wilaya Modus';

  @override
  String get premiumSubtitleBasic => 'Entspärt d\'komplett Ayara Erfahrung.';

  @override
  String get premiumSubtitlePremium =>
      'Dir sidd op Wilaya. Braucht méi Reflexiounen?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Aktuell Plang: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiounen: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Kafen sinn elo net verfügbar.';

  @override
  String get premiumSignInToPurchase =>
      'Mellt Iech un fir Reflexiounen ze kafen oder Wilaya ze entspären.';

  @override
  String get premiumRestorePurchases => 'Kafen restauréieren';

  @override
  String get premiumProcessing => 'Verarbeeden…';

  @override
  String get premiumRestoreHintTitle =>
      'Hutt Dir schonn Wilaya oder Reflexiounen op dësem oder engem aneren Gerät kaaft?';

  @override
  String get premiumRestoreHintBody =>
      'Restauréiert Är Kafen wann si net erschéngen.';

  @override
  String get premiumBuyCredits200 => '200 Reflexiounen kafen';

  @override
  String get premiumBuyCredits400 => '400 Reflexiounen kafen';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade op Wilaya Modus';

  @override
  String get premiumTopupHint =>
      'Mat Wilaya kënnt Dir jidderz mat zousätzlechen Reflexiounen opfëllen.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'Dës Kategorie ass nëmme fir Wilaya Benotzer. Upgrade an Astellungen fir all Premium Inhalter ze entspären.';

  @override
  String get premiumBenefitsBasic =>
      'Entspärt Wilaya fir zousätzlech Reflexiounen, Accès op Premium Kategorien, a weidermaachen wann Dir Orientéierung braucht.';

  @override
  String get premiumBenefitsPremium =>
      'Dir sidd am Wilaya Modus. Wann Dir manner hutt, fügt e puer zousätzlech Reflexiounen derbäi a maacht weider ouni Ënnerbroch.';

  @override
  String get premiumButtonBecomePremium => 'Entspärt Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Fügt 1000 Reflexiounen derbäi';

  @override
  String get premiumBadge => 'Wilaya aktiv';

  @override
  String get premiumLoadingStore => 'Magasin gëtt gelued…';

  @override
  String get premiumProductNotAvailable =>
      'Dëst Produkt ass am Magasin nach net verfügbar. W.e.g. probéiert spéider nees.';

  @override
  String get premiumPurchaseError =>
      'Eppes ass bei der Kaaf scheif gelaf. W.e.g. probéiert nees.';

  @override
  String get premiumBuyCredits100 => '100 Reflexiounen derbäi';

  @override
  String get premiumFeatureLocked =>
      'Entspärt Wilaya fir op dës Funktioun zouzegräifen.';

  @override
  String get lockedCategoriesHint =>
      'E puer Kategorien sinn fir Wilaya Memberen reservéiert. Entspärt se fir all Reflexioun op Ärer Reese z\'erfuerschen.';

  @override
  String get freePlanBlockedTitle =>
      'Dir hutt Är Starter Reflexiounen opgebraucht';

  @override
  String get freePlanBlockedBody =>
      'Dir sidd op de Standard Plang mat Starter Reflexiounen, a Dir hutt d\'Limit erriicht. Fir weidermaachen — a Premium Kategorien ze entspären — upgrade op Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Kuckt Wilaya Optiounen hei ënnen';

  @override
  String get graceBlockedTitle =>
      'Dir hutt Är Starter Reflexiounen opgebraucht';

  @override
  String get graceBlockedBody =>
      'Dir sidd op de Standard Plang mat Starter Reflexiounen, a Dir hutt d\'Limit erriicht. Fir weidermaachen — a Premium Kategorien ze entspären — upgrade op Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Kuckt Wilaya Optiounen hei ënnen';

  @override
  String get rateGuestMustSignIn =>
      'Meldt Iech un fir Ayara ze benotzen a Är Reflexiounen.';

  @override
  String get guestNoCreditsTitle => 'Gast Modus';

  @override
  String get guestNoCreditsBody =>
      'As Gast kënnt Dir d\'App brauchen, awer Dir kënnt Reflexiounen net benotzen. Meldt Iech méi spéit an Astellungen un fir Reflexiounen ze benotzen a Kafen ze entspären.';

  @override
  String get guestDialogContinue => 'Weidermaachen';

  @override
  String get guestDialogLoginInstead => 'Stéck drun mellen';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Kont geläscht';

  @override
  String get accountDeleteSuccessBody =>
      'Är Kont a assoziéiert Donnéeën sinn erfolgräich geläscht.';

  @override
  String get accountDeleteSuccessClose => 'Zoumaachen';

  @override
  String get accountDeleteErrorTitle => 'Konnt Kont net läschen';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Reautentifizéierung gouf ofbrach. W.e.g. meldt Iech erëm un a probéiert d\'Läschung nees.';

  @override
  String get accountDeleteReauthRequired =>
      'D\'Läschung vum Kont erfuerdert eng rezent Ukomm. W.e.g. meldet Iech of, meldet Iech erëm un, a probéiert d\'Läschung nees.';

  @override
  String get settingsDeletePermanentWarning =>
      'Dës Aktioun ass permanent a kann net rückgängeg gemaach ginn. All Donnéeën assoziéiert mat Ärem Kont gi geläscht.';

  @override
  String get dailyGraceTitle => 'Deeglech Orientéierung';

  @override
  String get dailyGraceScriptureLabel => 'VERS VUM DAG';

  @override
  String get dailyGraceSaintLabel => 'GELIEERT VUN DER WOCH';

  @override
  String get dailyGraceReflectionLabel => 'OWEND REFLEXIOUN';

  @override
  String get dailyGraceCopiedToast => 'Vers an d\'Zwëschenaflage kopéiert';

  @override
  String get locationConsentLabel =>
      'Erlaaft Ayara meng Plaz fir Qibla Richtung a Gebetszeiten ze benotzen';

  @override
  String get locationConsentHint =>
      'Nëmme fir dës Funktiounen benotzt. Är Plaz gëtt ni gedeelt oder gespäichert.';

  @override
  String get askPageTitle => 'Fragt Ayara';

  @override
  String get askPageDescription =>
      'Fragt eppes iwwer Glawe, Gebet, Liewen oder islamésch Praktik a kritt Orientéierung aus dem Koran a de Léren vum Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Schreift Är Fro hei…';

  @override
  String get askPageSubmitCta => 'Froen';

  @override
  String get askPageInputEmptyError => 'W.e.g. schreift éischt eng Fro.';

  @override
  String get askResultYourQuestion => 'Är Fro';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Riichtung Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Dreht Äre Telefon, bis d\'golden Nol riicht geet.\nDës Richtung weist op d\'Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS Signal ass schwach. Gitt erauszegoën a tipt Erëm probéieren.';

  @override
  String get qiblaRetry => 'Erëm probéieren';

  @override
  String get qiblaTitle => 'Qibla Richtung';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km bis Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Plaz erfuerdert';

  @override
  String get qiblaLocationNeededBody =>
      'Erlaaft Plaaz Accès sou kann Ayara d\'Richtung vun der Kaaba a Makkah vun wou Dir sidd ausrechnen.';

  @override
  String get qiblaOpenSettings => 'Astellungen opmaachen';

  @override
  String get qiblaCompassLoading => 'Är Positioun gëtt gesicht…';

  @override
  String get qiblaTowardMecca => 'Riichtung Makkah';

  @override
  String get prayerTimesTitle => 'Gebetszeiten';

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
  String get prayerTimesLocationNeededTitle => 'Plaz erfuerdert';

  @override
  String get prayerTimesLocationNeededBody =>
      'Erlaaft Plaaz Accès sou kann Ayara d\'exakt Gebetszeiten fir Är Stad ausrechnen.';

  @override
  String get prayerTimesNextLabel => 'Nächst';

  @override
  String get prayerTimesDoneLabel => 'Fäerdeg';

  @override
  String get monthlyPrayerTimesTitle => 'Monatslech Gebetszeiten';

  @override
  String get monthlyPrayerTimesViewButton => 'Ganz Méint kucken';

  @override
  String get monthlyPrayerTimesNextMonth => 'Nächst Méint';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dag';

  @override
  String get sharePrayerTimes => 'Gebetszeiten deelen';

  @override
  String get notificationsSectionTitle => 'Mëtteilungen';

  @override
  String get notificationsSectionSubtitle =>
      'Gebet Amannungen, Kalender Evenementer & méi';

  @override
  String get dailyReflectionReminderTitle => 'Deeglech Reflexioun';

  @override
  String get dailyReflectionReminderDescription =>
      'Eng déifter deeglech Aamnéierung fir Ayara z\'opmaachen a mat Ärem Glawe ze verbandelen.';

  @override
  String get dailyReflectionReminderEnable => 'Aamnéierung aktivéieren';

  @override
  String get dailyReflectionReminderTimeLabel => 'Aamnéierung Zäit';

  @override
  String get prayerNotificationsTitle => 'Gebet Aamnéierungen';

  @override
  String get prayerNotificationsDescription =>
      'Kritt eng déifter Aamnéierung vir all Gebetszeit fir Iech hëllefen d\'Dag iwwer verbonnen ze bleiwen.';

  @override
  String get prayerNotificationsEnable => 'Gebet Aamnéierungen aktivéieren';

  @override
  String get prayerNotificationsOpenSettings =>
      'Mëtteilungs Astellungen opmaachen';

  @override
  String get prayerNotificationsDenied => 'Mëtteilungen sinn deaktivéiert';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gitt zu Astellungen a erlaaft Mëtteilungen fir Ayara fir Gebetszeit Aamnéierungen ze kréien.';

  @override
  String get notificationsConsentLabel =>
      'Erlaaft Mëtteilungen fir Gebetszeiten';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dämmerung Gebet';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ass d\'Gebet vun den Ahl al-Bayt Moien. Imam Ali (AS) hat gesot: Bewacht d\'Dämmerung Gebet wéi Dir Är präziös Saach bewacht. Steet op, reinegt Iech, a steet virum Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Mëttedag Gebet';

  @override
  String get prayerNotifBodyDhuhr =>
      'D\'Imame vun den Ahl al-Bayt hunn all Moment vun der Gedéngknis geschätzt. Pauséiert Äre Dag, kombinéiert Dhuhr mat Asr wann néideg, a gitt Ärt Häerz zréck op Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Nomëttedag Gebet';

  @override
  String get prayerNotifBodyAsr =>
      'Bewacht d\'Gebet, mä et ass de Pakt tëschent Iech a Allah. Asr Zäit ass komm — laasst et net virbeigoen ouni Gedéngknis.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sonneënnergank Gebet';

  @override
  String get prayerNotifBodyMaghrib =>
      'D\'Sonn ass ënnergaang — ee Moment dee d\'Ahl al-Bayt als helleng beholl hunn. Bitt Maghrib a maach Är Hänn op fir Allah an Dua virun d\'Nuecht ufänkt.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nuecht Gebet';

  @override
  String get prayerNotifBodyIsha =>
      'Endet Äre Dag mat der Gesellschaft vum Allah. D\'Imame hu Salat al-Layl no Isha encouragéiert — awer éischt, fäerdeg Äer Isha a schleeft de Dag mat seng Gedéngknis.';

  @override
  String get outOfReflectionsBannerText =>
      'Dir hutt all Är Reflexiounen benotzt';

  @override
  String get outOfReflectionsBannerCta => 'Kreit méi';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tipt de Krees fir ze zielen';

  @override
  String get dhikrResetButton => 'Zerécksetzen';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Dir hutt 100 Gedénknisse vum Allah fäerdeg gemaach. Mir sinn hoffnungsvoll si sinn e Liicht fir Ärt Häerz.';

  @override
  String get disclaimerTitle => 'Iwwert dës App seng Orientéierung';

  @override
  String get disclaimerBody =>
      'Ayara bitt islamésch Reflexiounen, Aamnéierungen, a spirituell Inhalter fir Är perséinlech Reese vum Glawe ënnerstiffer, baskéiert op dem Koran a de Léren vun den Ahl al-Bayt. Dëse Contenu gëtt fir allgemeng Informatiouns- a Inspiratiouns Zwecker ageboten.\n\nAyara ersetzt net qualifizéiert Gelieertschaft.\nD\'Orientéierung an dëser App ersetzt net ee gelierdie Islamésch Gelieerte, Marja\', oder theologesch trainéierten Enseignant. Am Shia Islam ass d\'religjéis Orientéierung baskéiert op der Ja\'fari Schoul vun der Rechtswëssenschaften (Fiqh) a der Traditioun vun engem liewendege Marja\' (Quell vun der Emulatioun) ze verfollegen — ee qualifizéierten Jurist deem seng Rueilangen d\'Gitriber an der religjéiser Praktik guidéieren. Wann Dir Froen iwwer religjéis Rulingar, Halal a Haram Situatiounen, oder perséinlech religjéis Obligatiounen hutt, freet w.e.g. ee qualifizéierten Marja\' oder Gelieerte an Ärer Gemeinschaft.\n\nDiese App promet net religjéis Rulingar.\nAyara mécht net autoritativ Bestimmungen iwwer Fiqh Sujete oder perséinlech religjéis Obligatiounen. Näischt hei soll als Fatwah oder bindend religjéis Instruktsioun geholl gin.\n\nD\'Zentralitéit vum Ahl al-Bayt.\nAm Shia Islam sinn de Prophet Muhammad ﷺ a seng reinegte Huushal — den Ahl al-Bayt — d\'autoritativ Guidees vun der Islamésche Gemeinschaft no dem Koran. D\'zwoulf Imame vum Ahl al-Bayt sinn d\'divinn ernannt Interpreten vun der Islaméscher Léier. Contenu an dëser App reflektéiert dës Traditioun a sicht se trëw ze eeren.\n\nGemeinschaft Saachen.\nDiese App zielt Ärt Engagéiert mat dem Glawe ermuedegen, während déift de vital Roll vum Ärem lokalen Moschee, Islamésche Zentrum, a religjéizer Gemeinschaft respektéiert gëtt. Mir encouragéieren Iech verbonnen ze bleiwen mat a vun qualifizéierten Enseignanten an Ärer Nues ze léieren.';

  @override
  String get disclaimerClose => 'Ech verstinn';

  @override
  String get disclaimerInfoTooltip => 'Iwwert dës App seng Orientéierung';

  @override
  String get disclaimerSettingsSubtitle =>
      'Fir allgemeng Informatiouns Zwecker. Tipt fir de komplette Disclaimer ze liesen.';

  @override
  String get disclaimerSectionHeader => 'Orientéierung Disclaimer';

  @override
  String get navHome => 'Heemecht';

  @override
  String get navReflect => 'Reflektéieren';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'HAUT';

  @override
  String get dashboardComingUp => 'Kommt an';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Deeg',
      one: 'Dag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Schnell Accès';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientéierung';

  @override
  String get quickActionPrayerTimes => 'Gebetszeiten';

  @override
  String get askAyaraTitle => 'Fragt Ayara';

  @override
  String get askAyaraSubtitle =>
      'Fragt jidder islamésch Fro a kritt eng duerch Gedanken ginn, guided Äntwert.';

  @override
  String get askAyaraHint => 'z.B. Wat ass d\'Bedeitung vun Ramadan?';

  @override
  String get askAyaraSubmit => 'Froen';

  @override
  String get wisdomOfTheDayTitle => 'Wäisheit vum Dag';

  @override
  String get calendarScreenTitle => 'Islamésche Kalender';

  @override
  String get calendarUpcomingOccasions => 'Komm Ocasiounen';

  @override
  String get calendarOccasionRemindersTitle => 'Ocasioun Aamnéierungen';

  @override
  String get calendarOccasionRemindersHint =>
      'Mëtteilleeft de Owend vir all Ocasioun';

  @override
  String get calendarNotifPermissionDenied =>
      'Mëtteilungs Erlabnis refuséiert. Aktivéiert et an Äre Geräte Astellungen.';

  @override
  String get calendarNoEvents => 'Keng komm Eventer fonnt.';

  @override
  String get calendarAddToPhone => 'Zousätz zu Telefonkalender';

  @override
  String get calendarAddedToPhone => 'Zu Kalender derbäigesat';

  @override
  String get calendarCountdownToday => 'HAUT';

  @override
  String get calendarCountdownTomorrow => 'MUER';

  @override
  String calendarCountdownDays(int days) {
    return 'an $days Deeg';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mär';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mei';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Aug';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dez';

  @override
  String get calendarSeasonMuharramEarly =>
      'Deeg vum Muharram — memorialiseiert Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — Deeg vum Trauer a Reflexioun';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — vérzeg Deeg vum Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'D\'Strooss zu Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — d\'Dämmerung vun der Revelatioun';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — Gebuertsdag vun Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — de Méint vum Koran';

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
  String get duasSearchHint => 'Sicht Duas, Ziyarat…';

  @override
  String get duasFilterAll => 'All';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Duas & Ziyarat',
      one: '$count Dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Keng Duas fonnt.';

  @override
  String get duaCategoryDaily => 'Deeglech';

  @override
  String get duaCategoryWeekly => 'Wöchentlech';

  @override
  String get duaCategoryOccasions => 'Ocasiounen';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Gebiert';

  @override
  String get eventTypeMartyrdom => 'Märtérertum';

  @override
  String get eventTypeOccasion => 'Ocasioun';

  @override
  String get duaCopyTooltip => 'Kopéiert Iwwersetzung';

  @override
  String get duaToggleTransliteration => 'Translitéieratioun';

  @override
  String get duaToggleTranslation => 'Iwwersetzung';

  @override
  String get duaAskAiLabel => 'Fragt Ayara dës Dua z\'erklären';

  @override
  String get duaAskAiLockedLabel => 'Fragt Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara Erklärungen sinn fir Wilaya Memberen verfügbar. Upgrade an Astellungen.';

  @override
  String duaAiComingSoon(String name) {
    return 'Fragt Ayara iwwer \"$name\" — kommt schi bàld!';
  }

  @override
  String get duaCopiedToast => 'Dua an d\'Zwëschenaflage kopéiert.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ass dat Gréissten';

  @override
  String get tasbihAlhamdulillahMeaning => 'All Pries gehéiert Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Geréischt se Allah';

  @override
  String get tasbihResetTooltip => 'Zerécksetzen';

  @override
  String get tasbihCompleteTitle => 'Tasbih Fäerdeg';

  @override
  String get tasbihCompleteMessage =>
      'Mir hoffen Allah akzeptéiert Ären Dhikr.';

  @override
  String get tasbihTapHint => 'Tipt iwwerall fir ze zielen';

  @override
  String get tasbihatScreenTitle => 'Gebet Guide';

  @override
  String get tasbihatScreenSubtitle => 'D\'GEBET GLORIFEKATIOUEN';

  @override
  String get tasbihatScreenDescription =>
      'Eng komplett Guide zu den Glorifikatiounen erzielt während a no den deegleche Gebeter — verfollegt d\'Traditioun vum Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Erzielt während de 3. & 4. Rakʿah';

  @override
  String get tasbihatArba3Info =>
      'An Shia Rechtswëssenschaften ersetzt d\'Tasbiḥāt al-Arbaʿa Surah al-Fatiha an der 3. a 4. Rakʿah vun Dhuhr, Asr, Maghrib, a Isha. Et ass obligatoresch (Wājib) et eng Kéier z\'erziele, a recommandéiert (Mustaḥabb) et dräi Kéier z\'erziele.';

  @override
  String get tasbihatArba3Translation =>
      'Geréischt se Allah · All Pries ass fir Allah\nEt gëtt keen Gott ausser Allah · Allah ass dat Gréissten';

  @override
  String get tasbihatArba3CompleteTitle => 'Erzielung Fäerdeg';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Mir hoffen Äert Gebet gëtt akzeptéiert — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tipt no all Erzielung';

  @override
  String get tasbihatZahraSubtitle => 'No all Gebeter · 100 Perlen';

  @override
  String get tasbihatZahraOriginLabel => 'Urspronk';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) hat de Prophet ﷺ fir ee Servant gebat. Hien hat gesot: \"Soll ech Iech net ze eppes Besserem guide? Erzielt Subḥānallāh 33 Kéier, Alḥamdulillāh 33 Kéier, a Allāhu Akbar 34 Kéier no all Gebeter. Dat ass besser fir Iech wéi ee Servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Bd. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Opmaachen Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMANDÉIERT DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'No dem Fäerdegstellen Äres Gebets';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'No all obligatoresch Gebeter';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Wiem-een Āyat al-Kursī no all obligatoresch Gebeter erzielt, näischt steet tëschent him a Paradäis ausser de Doud. Imam al-Bāqir (a) hat gesot et ass ënner den gréisste Versa am Koran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'No all Gebeter · Versiglelt all Duās';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Entsenden vun Salatuatiounen op den Prophet ﷺ a seng reinegte Famill (Āl Muḥammad) gëtt recommandéiert fir all Dua z\'versiglelt. Imam al-Ṣādiq (a) hat gesot: \"Jidder Dua suspendeiert bis Dir ṣalawāt op Muḥammad a seng Famill sendt.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'No all Gebeter · fir den Imam vun eiser Zäit';

  @override
  String get tasbihatDuaFarajSource =>
      'Léiert vum Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Eng Dua fir d\'Reërnäischten vum Imam al-Mahdī (af), den zwoulf Imam, léiert vum sengem Papp. Erzielt deeglech vun den Shia fideles no all Gebeter als Act vun der Déichweet zum liewendege Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ vun Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'No Maghrib & Isha · besonnesch recommandéiert';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) hat gesot datt Tasbīḥ al-Zahrā no Isha virun dem Schlof z\'erziele besser ass wéi 1000 Rakʿahs vum Optiounal Gebeter. Seng Liicht steit zu den Himmlë.';

  @override
  String get tasbihFatimaGiftPre => 'E Gëfft vum Prophet';

  @override
  String get tasbihFatimaGiftPost => 'erzielt no all Gebeter';

  @override
  String get prayerTrackerTitle => 'GEBETER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Gebatt';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count Dag Streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All Gebeter fäerdeg haut. Mir hoffen Allah akzeptéiert.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Haut fäerdeg gemaach';

  @override
  String get dhikrTrackerNotDoneToday => 'Haut net gemaach';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count Dag Streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Aamnéierung';

  @override
  String get dhikrReminderDescription =>
      'Eng déifter deeglech Aamnéierung fir Är Tasbīḥ al-Zahrā (SA) z\'erziele.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ Aamnéierung aktivéieren';

  @override
  String get dhikrReminderTimeLabel => 'Aamnéierung Zäit';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Deeglech Hadith';

  @override
  String get hadithLabelArabic => 'ARABÉSCH';

  @override
  String get hadithLabelTranslation => 'IWWERSETZUNG';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Deelt dëse Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Vireg';

  @override
  String get hadithNavNext => 'Nächst';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'D\'14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'De Prophet, Lady Fatima, a d\'Zwoulf Imame — d\'infallible Guidees vum Islam';

  @override
  String get imamLabelBorn => 'Gebuer';

  @override
  String get imamLabelMartyrdom => 'Märtérertum';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIE';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'De Final Prophet';

  @override
  String get imamRoleInfallible => 'Den Infallible';

  @override
  String get imamOrdinal1 => '1. Imam';

  @override
  String get imamOrdinal2 => '2. Imam';

  @override
  String get imamOrdinal3 => '3. Imam';

  @override
  String get imamOrdinal4 => '4. Imam';

  @override
  String get imamOrdinal5 => '5. Imam';

  @override
  String get imamOrdinal6 => '6. Imam';

  @override
  String get imamOrdinal7 => '7. Imam';

  @override
  String get imamOrdinal8 => '8. Imam';

  @override
  String get imamOrdinal9 => '9. Imam';

  @override
  String get imamOrdinal10 => '10. Imam';

  @override
  String get imamOrdinal11 => '11. Imam';

  @override
  String get imamOrdinal12 => '12. Imam';

  @override
  String get duaAudioScreenTitle => 'Lauschtert Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Wielt eng Dua aus fir z\'héieren. Tipt d\'Plack fir z\'spillen oder z\'pauséieren.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio fir dës Dua gëtt an engem komm Update verfügbar.';

  @override
  String get duaAudioClose => 'Zoumaachen';

  @override
  String get duaAudioError =>
      'Konnt Audio net lauden. W.e.g. kontrolléiert Äre Verbindung.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmittéiert vun';

  @override
  String get duaAudioMetaOccasion => 'Ocasioun';

  @override
  String get duaAudioMetaDuration => 'Dauer';

  @override
  String get quickActionDailyHadith => 'Deeglech Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Lauschteren';

  @override
  String get quickActionTasbihat => 'Gebet Guide';

  @override
  String get pilgrimageSectionTitle => 'D\'Hellecht Reese';

  @override
  String get pilgrimageSectionSubtitle =>
      'Komplett Guideen zu Hajj & Umrah — d\'Pilgerfahrt zu der Hellecht Haus vum Allah am Makkah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Den Fënneften Pillar vum Islam';

  @override
  String get hajjCardDescription =>
      'D\'gréisst Jore Pilgerfahrt — obligatoresch mol am Liewen fir all fäheg Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle =>
      'Schrëtt-fir-Schrëtt Guide zu der gréisster Pilgerfahrt';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'D\'Manner Pilgerfahrt';

  @override
  String get umrahCardDescription =>
      'Eng profond Belounender spirituell Reese déi jidderz am Joer gemaach ka ginn';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Schrëtt-fir-Schrëtt Guide zu der manner Pilgerfahrt';

  @override
  String get pilgrimageStepsTitle => 'Ritualer & Schrëtt';

  @override
  String get pilgrimageImportantNotesTitle => 'Wichteg Suerkanounen';

  @override
  String get pilgrimageDuaTitle => 'Dua fir dësen Schrëtt';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Bemierkung';

  @override
  String get pilgrimageComplete => '✓ Fäerdeg';

  @override
  String get pilgrimageMarkDone => 'Als komplett markéieren';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done vun $total Schrëtt';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes Minutten';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilger';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia Pilger reesen tradizionell och zu Medina fir d\'Graab vum Prophet Muhammad (SAW) bei Masjid al-Nabawi ze besichen, an d\'Gräwer vun den Imame bei Jannat al-Baqi. Dës Visite hunn enorm spirituell Bedeitung a ginn als en integral Deel vun der Reese fir déiert Shia Muslime gesinn.';

  @override
  String get hajjIntro =>
      'Hajj ass de fënneften Pillar vum Islam, obligatoresch mol am Liewen fir all Muslim dee physesch a finanziell fäheg ass. Gemaach am Méint vum Dhul Hijjah, verfollegt et d\'Schrëtt vum Prophet Ibrahim (AS), seng Bréck Ismail (AS), a Lady Hajar. Fir Shia Muslime, Hajj hunn och d\'profond Séign vun der Visite vun den Reschting Plaatzen vum Prophet (SAW) a den Ahlul Bayt zu Medina.';

  @override
  String get umrahIntro =>
      'Umrah ass d\'manner Pilgerfahrt zu Makkah a, andersch wéi Hajj, ka jidderz am Joer gemaach ginn. Wärend net obligatoresch, huet et enorm spirituell Belounong a gëtt als eng héich recommandéiert Act vun der Andacht gesinn. Et deelt e puer Ritualer mat Hajj awer ass kuerzer, besteet aus véier Haaptritualier.';
}
