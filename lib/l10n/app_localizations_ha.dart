// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Zaɓi harshenka';

  @override
  String get languageSelectSub => 'Zaka iya canja haka daga gida a daga Saiti';

  @override
  String get actionContinue => 'Ci gaba';

  @override
  String get languageSuggestedHeader => 'Da aka ba da shawarar';

  @override
  String get languageAllHeader => 'Dukan harsuna';

  @override
  String get languageSuggestedBadge => 'Da aka ba da shawarar';

  @override
  String get languageSearchHint => 'Nema…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Jagoran Jiya';

  @override
  String get categorySlot02 => 'Imani & Karɓar';

  @override
  String get categorySlot03 => 'Tunani na Sallah';

  @override
  String get categorySlot04 => 'Jiya & Bata';

  @override
  String get categorySlot05 => 'Cika Gafarmawa';

  @override
  String get categorySlot06 => 'Inna & Tausani';

  @override
  String get categorySlot07 => 'Imani & Karfi';

  @override
  String get categorySlot08 => 'Zuciya mai Godiya';

  @override
  String get categorySlot09 => 'Makomar Rayuwa';

  @override
  String get categorySlot10 => 'Alakar Iyali';

  @override
  String get categorySlot11 => 'Zaman Lumana';

  @override
  String get categorySlot12 => 'Hikimar Annabi';

  @override
  String get categorySlot13 => 'Kyakkyawar Dabi\'a';

  @override
  String get categorySlot14 => 'Tsaya wa Jaraba';

  @override
  String get categorySlot15 => 'Dhikrin Jiya';

  @override
  String get categoryCustom => 'Tunani na Jiya';

  @override
  String get dhikrMeaningSubhanallah => 'Subhana Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allahu Akbar';

  @override
  String get quranVerseHeartAtRest =>
      'Haka Allah ya gaya: Lalle sannan wajen zikira na Allah, zuciyoyi suke ga hutsa.';

  @override
  String get promptHint => 'Taba nau\'in aiki don karɓar jagora da tunani';

  @override
  String get currentLanguage => 'Halin da jiya';

  @override
  String get settingsLanguage => 'Saitan harsunan';

  @override
  String get settingsTitle => 'Saiti';

  @override
  String get chooseLanguage => 'Zaɓi harshenka';

  @override
  String get continueCta => 'Ci gaba';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kalmomi',
      one: '$count kalmashi',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Zaɓubi';

  @override
  String get newCta => 'Sabuwa';

  @override
  String get actionsTitle => 'Me kake so ka yi?';

  @override
  String get copy => 'Kwafi';

  @override
  String get share => 'Raba';

  @override
  String get close => 'Rufawa';

  @override
  String get copiedToast => 'An kwafi zuwa clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ba za a iya ƙaruwa da amsa ba';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nKin so ka sake yi?';
  }

  @override
  String get cancelCta => 'Soke';

  @override
  String get retryCta => 'Sake yi';

  @override
  String get authTitle => 'Ƙirƙira akaun';

  @override
  String get continueAsGuest => 'Ci gaba a matsayin bakin';

  @override
  String get signInGoogle => 'Shiga tare da Google';

  @override
  String get signInApple => 'Shiga tare da Apple';

  @override
  String get signInEmail => 'Shiga tare da Email';

  @override
  String get upgradeWithApple => 'Ci gaba tare da Apple';

  @override
  String get mustAccept =>
      'Dole ka karɓi sharataccen aiki da ku fahimta aikin sirri.';

  @override
  String get termsLabel => 'Na karɓi Sharataccen Aiki';

  @override
  String get privacyLabel => 'Na karatun Aikin Sirri';

  @override
  String get marketingOptIn => 'Na karɓi sanarwa da takaita';

  @override
  String get openTerms => 'Sharataccen Aiki';

  @override
  String get openPrivacy => 'Aikin Sirri';

  @override
  String get accountSection => 'Akaun';

  @override
  String get guestMode => 'Yaren bakin';

  @override
  String get signedIn => 'An shiga';

  @override
  String get upgradeHint =>
      'Ajiye tunani kaka a cikin kayayyaki ta hanyar ƙirƙira akaun.';

  @override
  String get upgradeWithGoogle => 'Ci gaba tare da Google';

  @override
  String get signOut => 'Fita';

  @override
  String get snackUpgraded => 'Akaun ya bunƙasa tare da Google ✅';

  @override
  String get snackSignedIn => 'An shiga tare da Google ✅';

  @override
  String get snackSignedOut => 'An fita';

  @override
  String get snackSignedInApple => 'An shiga tare da Apple ✅';

  @override
  String get snackSignedInGoogle => 'An shiga tare da Google ✅';

  @override
  String get snackUpgradedApple => 'Akaun ya bunƙasa tare da Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akaun ya bunƙasa tare da Google ✅';

  @override
  String get historyTitle => 'Tunani da ya gabata';

  @override
  String get historyOpenCta => 'Tunani da ya gabata';

  @override
  String get historyEmpty => 'Babu tunani da aka ajiya jiya.';

  @override
  String get historyDeleteTitle => 'Kawar da tunani?';

  @override
  String get historyDeleteBody =>
      'Wannan zai kawar da abubuwan da aka zaɓa da jiya.';

  @override
  String get deleteCta => 'Kawar';

  @override
  String get historyButton => 'Tunani da ya gabata';

  @override
  String get historyEmptyTitle => 'Babu tunani';

  @override
  String get historyEmptyBody =>
      'Ƙaruwa wani abu - tunani da aka ajiya zai bayyana a nan.';

  @override
  String get historyDelete => 'Kawar';

  @override
  String get footerTitle => 'Tare da Wilaya, Imani da Sabr';

  @override
  String get footerSubtitle => 'Sallah ɗaya ɗaya';

  @override
  String get genericErrorSnack => 'Wani abu ya fadi - jiya kayi try din.';

  @override
  String get upgradeAccountCta =>
      'Ajiye tunani kaka a cikin kayayyaki – ƙirƙira akaun';

  @override
  String get deleteAccount => 'Kawar da akaun';

  @override
  String get exportData => 'Kawar data nawa';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => 'Aje fara 🐯\nAyara na buƙaci lokaci...';

  @override
  String get rateDailyLimit =>
      'Kun ƙare tunani jiya.\nSamu tunani ko bunƙasa zuwa Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Kun amfani da duk tunani.\nSa kuma ko bunƙasa zuwa Wilaya.';

  @override
  String get rateGraceCreditsExhausted =>
      'Kun ƙare tunani jiya.\nSamu tunani ko bunƙasa zuwa Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya ta buɓugu sifofin premium, sananin nau\'ikan gida, da abinda na musamman.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tunani naka babu jiya. Plani: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ba za a iya bincika tunani naka ba: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Wani abu ya fadi yayin bincike tunani naka.';

  @override
  String get aiFallbackGeneric => 'Wani abu ya fadi - jiya kayi try din.';

  @override
  String get limitSectionTitle => 'Tunani';

  @override
  String get limitTodayLabel => 'Amfani';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Tunani da ya rage: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plani: $plan';
  }

  @override
  String get limitLoadingLabel => 'Ana lodi…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Tunani';

  @override
  String get aiLimitSubtitle =>
      'Kowane amsa tana amfani tunani 1. Standard ya hada da tunani farko. Wilaya ta buɓugu sifofin premium da samuwa.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total tunani an amfani';
  }

  @override
  String get creditsSectionTitle => 'Tunani';

  @override
  String get creditsUsageLabel => 'Amfani';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Tunani da ya rage: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plani: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Ana lodi…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Tunani';

  @override
  String get creditsSubtitle =>
      'Kowane amsa tana amfani tunani 1. Standard ya hada da tunani farko. Wilaya ta buɓugu sifofin premium da samuwa.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total tunani an amfani';
  }

  @override
  String get settingsDeleteTitle => 'Kawar da akaun';

  @override
  String get settingsDeleteDescription => 'Kawar jiya akaun da duk bayani.';

  @override
  String get settingsDeleteButtonLabel => 'Kawar da akaun nawa';

  @override
  String get settingsDeleteDialogTitle => 'Kawar da akaun?';

  @override
  String get settingsDeleteDialogBody =>
      'Wannan aiki ba zai iya komowa ba.\n\nDuk tattaunawa, tarihi da bayani na akaun za a kawar.';

  @override
  String get settingsDeleteDialogCancel => 'Soke';

  @override
  String get settingsDeleteDialogConfirm => 'Kawar';

  @override
  String get settingsFreeLimitUsedTitle => 'Tunani farko an amfani';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Tunani farko na wannan kayan ya gaji. Bunƙasa zuwa Wilaya ko sayi tunani.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Tunani farko an amfani';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Tunani farko na wannan kayan ya gaji. Bunƙasa zuwa Wilaya ko sayi tunani.';

  @override
  String get deviceBoundError =>
      'Wannan kayan ya riga an haɗa zuwa wata akaun. Shiga tare da akaun na gida.';

  @override
  String get premiumTitle => 'Yaren Wilaya';

  @override
  String get premiumSubtitleBasic => 'Buɓuga cikakken kalin Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Kana kan Wilaya. Kake bukatar tunani nari?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plani na gida: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Tunani: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Saiti ba na aiki jiya.';

  @override
  String get premiumSignInToPurchase =>
      'Shiga domin sayi tunani ko buɓugu Wilaya.';

  @override
  String get premiumRestorePurchases => 'Maida saiti';

  @override
  String get premiumProcessing => 'Ana aiki…';

  @override
  String get premiumRestoreHintTitle =>
      'Ya riga ka sayi Wilaya ko tunani a wannan kayan ko wata?';

  @override
  String get premiumRestoreHintBody => 'Maida saiti idan ba su bayyana ba.';

  @override
  String get premiumBuyCredits200 => 'Sayi tunani 200';

  @override
  String get premiumBuyCredits400 => 'Sayi tunani 400';

  @override
  String get premiumBecomePremiumOneTime => 'Bunƙasa zuwa yaren Wilaya';

  @override
  String get premiumTopupHint =>
      'Tare da Wilaya, zaka iya samuwa tunani kari lokacin da kake buƙata.';

  @override
  String get premiumUpgradeCta => 'Bunƙasa';

  @override
  String get premiumRequiredForCategory =>
      'Wannan nau\'i ya sake wajen Wilaya ne. Bunƙasa daga Saiti domin buɓugu duk tunani.';

  @override
  String get premiumBenefitsBasic =>
      'Buɓugu Wilaya domin samu tunani kayi, jefe nau\'ikan gida premium, da ci gaba lokacin da kake buƙata.';

  @override
  String get premiumBenefitsPremium =>
      'Kana kan yaren Wilaya. Idan tunani naka ya katuwa, saka kayi ko ci gaba ba tare da tsugi.';

  @override
  String get premiumButtonBecomePremium => 'Buɓugu Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Saka tunani 1000';

  @override
  String get premiumBadge => 'Wilaya aiki';

  @override
  String get premiumLoadingStore => 'Ana lodi shara…';

  @override
  String get premiumProductNotAvailable =>
      'Wannan kayan ba na shara jiya. Kayi try din baje.';

  @override
  String get premiumPurchaseError => 'Wani abu ya fadi a saiti. Kayi try din.';

  @override
  String get premiumBuyCredits100 => 'Saka tunani 100';

  @override
  String get premiumFeatureLocked => 'Buɓugu Wilaya domin jefe wannan sifa.';

  @override
  String get lockedCategoriesHint =>
      'Wasu nau\'in nau\'i za a kawo ne don jäger Wilaya. Buɓugusu domin gwada kowane tunani.';

  @override
  String get freePlanBlockedTitle => 'Kun ƙare tunani farko naka';

  @override
  String get freePlanBlockedBody =>
      'Kana kan plani Standard tare da tunani farko, kika ƙare iyaka. Domin ci gaba - da buɓugu nau\'ikan gida premium - bunƙasa zuwa Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Duba zaɓubi Wilaya a gida';

  @override
  String get graceBlockedTitle => 'Kun ƙare tunani farko naka';

  @override
  String get graceBlockedBody =>
      'Kana kan plani Standard tare da tunani farko, kika ƙare iyaka. Domin ci gaba - da buɓugu nau\'ikan gida premium - bunƙasa zuwa Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Duba zaɓubi Wilaya a gida';

  @override
  String get rateGuestMustSignIn =>
      'Shiga domin amfani da Ayara da tunani naka.';

  @override
  String get guestNoCreditsTitle => 'Yaren bakin';

  @override
  String get guestNoCreditsBody =>
      'A matsayin bakin zaka iya duba app, amma ba za ka iya amfani tunani ba. Shiga baje a Saiti domin amfani tunani da buɓugu saiti.';

  @override
  String get guestDialogContinue => 'Ci gaba';

  @override
  String get guestDialogLoginInstead => 'Shiga a maimakon haka';

  @override
  String get optionalLabel => 'gida';

  @override
  String get accountDeleteSuccessTitle => 'An kawar da akaun';

  @override
  String get accountDeleteSuccessBody =>
      'Akaun naka da duk bayani ya kawar da nasara.';

  @override
  String get accountDeleteSuccessClose => 'Rufawa';

  @override
  String get accountDeleteErrorTitle => 'Ba za a iya kawar da akaun ba';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Hanyar domin aminci ta kawar. Kayi try din baje.';

  @override
  String get accountDeleteReauthRequired =>
      'Kawar da akaun yana buƙaci shiga gida. Kayi fita, shiga gida, kayi try din.';

  @override
  String get settingsDeletePermanentWarning =>
      'Wannan aiki ba zai iya komowa ba. Duk bayani da aka haɗa zuwa akaun za a kawar.';

  @override
  String get dailyGraceTitle => 'Jagoran Jiya';

  @override
  String get dailyGraceScriptureLabel => 'AYAR JIYA';

  @override
  String get dailyGraceSaintLabel => 'FIGURE NA MAKON';

  @override
  String get dailyGraceReflectionLabel => 'TUNANI NA JIYA';

  @override
  String get dailyGraceCopiedToast => 'Ayar an kwafi zuwa clipboard';

  @override
  String get locationConsentLabel =>
      'Ba da izini domin Ayara ta amfani wuri nawa domin Qibla da lokaci sallah';

  @override
  String get locationConsentHint =>
      'Wai domin waɗannan sifofin. Wurinka ba za a raba ko ajiya ba.';

  @override
  String get askPageTitle => 'Taba Ayara';

  @override
  String get askPageDescription =>
      'Taba wani abu game da imani, sallah, rayuwa, ko aiki na Musulmi da karɓa jagora da aka samun daga Qur\'ani da ilimin Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Rubutu tambayar naka a nan…';

  @override
  String get askPageSubmitCta => 'Taba';

  @override
  String get askPageInputEmptyError => 'Kayi tambayar da farko.';

  @override
  String get askResultYourQuestion => 'Tambayar naka';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Fuskar Makka';

  @override
  String get qiblaCompassInstruction =>
      'Gida kiɗar fone naka har sai weɗin zari ya nada sama.\nWannan hanya ta nada zuwa Qibla (Makka).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sigina GPS ba ya damre. Tashi waje da taɓa Sake yi.';

  @override
  String get qiblaRetry => 'Sake yi';

  @override
  String get qiblaTitle => 'Hanya ta Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km zuwa Makka';
  }

  @override
  String get qiblaLocationNeededTitle => 'Buƙatar wuri';

  @override
  String get qiblaLocationNeededBody =>
      'Ba da izini domin Ayara ta ƙirƙira hanya ta Kaaba a Makka daga inã kika.';

  @override
  String get qiblaOpenSettings => 'Buɗi Saiti';

  @override
  String get qiblaCompassLoading => 'Ana neman wuri naka…';

  @override
  String get qiblaTowardMecca => 'Zuwa Makka';

  @override
  String get prayerTimesTitle => 'Lokaci Sallah';

  @override
  String get prayerTimesFajr => 'Subhi';

  @override
  String get prayerTimesDhuhr => 'Dhuhr';

  @override
  String get prayerTimesAsr => 'Asr';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Isha';

  @override
  String get prayerTimesLocationNeededTitle => 'Buƙatar wuri';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ba da izini domin Ayara ta ƙirƙira lokaci sallah na gari naka.';

  @override
  String get prayerTimesNextLabel => 'Na gida';

  @override
  String get prayerTimesDoneLabel => 'An gama';

  @override
  String get monthlyPrayerTimesTitle => 'Lokaci Sallah na Wata';

  @override
  String get monthlyPrayerTimesViewButton => 'Duba Jiya Wata';

  @override
  String get monthlyPrayerTimesNextMonth => 'Watan gida';

  @override
  String get monthlyPrayerTimesDayHeader => 'Jiya';

  @override
  String get sharePrayerTimes => 'Raba lokaci sallah';

  @override
  String get notificationsSectionTitle => 'Sanarwa';

  @override
  String get notificationsSectionSubtitle =>
      'Gargajiya sallah, abubuwan kalandar da waje';

  @override
  String get dailyReflectionReminderTitle => 'Tunani na Jiya';

  @override
  String get dailyReflectionReminderDescription =>
      'Gargajiya na jiya domin buɗi Ayara da haɗa tare da imani.';

  @override
  String get dailyReflectionReminderEnable => 'Kunna gargajiya na jiya';

  @override
  String get dailyReflectionReminderTimeLabel => 'Lokacin gargajiya';

  @override
  String get prayerNotificationsTitle => 'Gargajiya Sallah';

  @override
  String get prayerNotificationsDescription =>
      'Karɓa gargajiya kaɗai kafin sallah domin ci gaba da haɗi jiya.';

  @override
  String get prayerNotificationsEnable => 'Kunna gargajiya sallah';

  @override
  String get prayerNotificationsOpenSettings => 'Buɗi saiti sanarwa';

  @override
  String get prayerNotificationsDenied => 'An kashe sanarwa';

  @override
  String get prayerNotificationsDeniedHint =>
      'Je Saiti da ba da izini sanarwa ne domin karɓa gargajiya sallah.';

  @override
  String get notificationsConsentLabel =>
      'Ba da izini sanarwa domin lokaci sallah';

  @override
  String get prayerNotifTitleFajr => '🌅 Subhi - Sallah Kutare';

  @override
  String get prayerNotifBodyFajr =>
      'Subhi shine sallah na kutare. Imam Ali (AS) ya ce: Kuskure subhi kamar matsofe naka. Tashi, tsattsali, da turbatarse gida Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr - Sallah Tsan Tsan';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imaman Ahlul Bayt suna kuna kowane lokaci. Tsai yayina, haɗa Dhuhr tare da Asr idan dace, kuma komawa zuciya naka zuwa Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr - Sallah Jiya Marke';

  @override
  String get prayerNotifBodyAsr =>
      'Kuskure sallah, ita ce yarjejeniyar tsakanin ka da Allah. Asr ya zo - bari ba zu ta wuce ba tare da zikri.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib - Sallah Rafi Rana';

  @override
  String get prayerNotifBodyMaghrib =>
      'Rana ta rafi - matakin da Ahlul Bayt suka gabata. Yi Maghrib da buɗe hannaye naka domin dua kafin gida ta fara.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha - Sallah Damo';

  @override
  String get prayerNotifBodyIsha =>
      'Kaashi gida tare da Allah. Imaman sun bukata Salat al-Layl baje Isha - amma farko, kamel Isha da kaashi tare da zikrinsa.';

  @override
  String get outOfReflectionsBannerText => 'Kun amfani duk tunani';

  @override
  String get outOfReflectionsBannerCta => 'Samu kayi';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Taba da\'ira domin lissafa';

  @override
  String get dhikrResetButton => 'Sake';

  @override
  String get dhikrComplete => 'Alhamdulillah';

  @override
  String get dhikrCompleteMessage =>
      'Kun gama zikrin Allah 100. Bari a zama sotin zuciya naka.';

  @override
  String get disclaimerTitle => 'Game da jagora app';

  @override
  String get disclaimerBody =>
      'Ayara ta ba da tunani na Islami, gargajiya, da content na ruhaniya domin goyon gida jiya imani, da aka samun daga Qur\'ani da ilimin Ahlul Bayt. Wannan content ana ba a gida ne.';

  @override
  String get disclaimerClose => 'Na fahimta';

  @override
  String get disclaimerInfoTooltip => 'Game da jagora app';

  @override
  String get disclaimerSettingsSubtitle =>
      'A gida ne. Taɓa domin karatun cikakke.';

  @override
  String get disclaimerSectionHeader => 'Gargajiyar jagora';

  @override
  String get navHome => 'Gida';

  @override
  String get navReflect => 'Tunani';

  @override
  String get navDuas => 'Dua\'a';

  @override
  String get navCalendar => 'Kalandar';

  @override
  String get dashboardToday => 'JIYA';

  @override
  String get dashboardComingUp => 'Zuwara';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jiya',
      one: 'jiya',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Saurin Jefe';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Jagora';

  @override
  String get quickActionPrayerTimes => 'Lokaci Sallah';

  @override
  String get askAyaraTitle => 'Taba Ayara';

  @override
  String get askAyaraSubtitle =>
      'Taba wani tambayar Islami da karɓa amsa mai tunani.';

  @override
  String get askAyaraHint => 'Misali: Me ne mahimancin Ramadan?';

  @override
  String get askAyaraSubmit => 'Taba';

  @override
  String get wisdomOfTheDayTitle => 'Hikima na Jiya';

  @override
  String get calendarScreenTitle => 'Kalandar Islami';

  @override
  String get calendarUpcomingOccasions => 'Abubuwan Zuwara';

  @override
  String get calendarOccasionRemindersTitle => 'Gargajiya Abubuwan';

  @override
  String get calendarOccasionRemindersHint =>
      'Sanarwa jiya kaɗai kafin kowane abuja';

  @override
  String get calendarNotifPermissionDenied =>
      'Karɓar sanarwa a kawar. Kunna shi a saiti kayan.';

  @override
  String get calendarNoEvents => 'Babu abubuwan zuwara.';

  @override
  String get calendarAddToPhone => 'Ƙara zuwa Kalanda na Waya';

  @override
  String get calendarAddedToPhone => 'An ƙara zuwa Kalanda';

  @override
  String get calendarCountdownToday => 'JIYA';

  @override
  String get calendarCountdownTomorrow => 'JIYA GIDA';

  @override
  String calendarCountdownDays(int days) {
    return 'jiya $days suna';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Aug';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dec';

  @override
  String get calendarSeasonMuharramEarly => 'Jiya Muharram - tunani Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura - Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram - jiya maimakiyya';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen - jiya alon Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Hanya zuwa Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak - wajen fadi ilimi';

  @override
  String get calendarSeasonMidShaban =>
      'Sha\'ban Tsan Tsan - ranar haihuwa Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak - watan Qur\'ani';

  @override
  String get calendarSeasonGhadir => 'Sallah al-Ghadir Mubarak!';

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
  String get duasScreenTitle => 'Dua\'a & Ziyarat';

  @override
  String get duasSearchHint => 'Nema dua, ziyarat…';

  @override
  String get duasFilterAll => 'Duka';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua\'a & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Babu dua.';

  @override
  String get duaCategoryDaily => 'Jiya';

  @override
  String get duaCategoryWeekly => 'Juma\'a';

  @override
  String get duaCategoryOccasions => 'Abubuwan';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Haihuwa';

  @override
  String get eventTypeMartyrdom => 'Mutuwa';

  @override
  String get eventTypeOccasion => 'Abuja';

  @override
  String get duaCopyTooltip => 'Kwafi fassara';

  @override
  String get duaToggleTransliteration => 'Rubuta';

  @override
  String get duaToggleTranslation => 'Fassara';

  @override
  String get duaAskAiLabel => 'Ba Ayara domin bayyana wannan dua';

  @override
  String get duaAskAiLockedLabel => 'Taba Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Bayanin Ayara yana da Wilaya ne. Bunƙasa a Saiti.';

  @override
  String duaAiComingSoon(String name) {
    return 'Taba Ayara game da \"$name\" - gida!';
  }

  @override
  String get duaCopiedToast => 'Dua an kwafi zuwa clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allahu Akbar';

  @override
  String get tasbihAlhamdulillahMeaning => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get tasbihSubhanallahMeaning => 'Subhana Allah';

  @override
  String get tasbihResetTooltip => 'Sake';

  @override
  String get tasbihCompleteTitle => 'Tasbih Gama';

  @override
  String get tasbihCompleteMessage => 'Bari Allah ya karɓi dhikrinka.';

  @override
  String get tasbihTapHint => 'Taba duk inã domin lissafa';

  @override
  String get tasbihatScreenTitle => 'Jagoran Sallah';

  @override
  String get tasbihatScreenSubtitle => 'GLORIFICATIONS NA SALLAH';

  @override
  String get tasbihatScreenDescription =>
      'Jagoran cikakke na glorification da ana karanta jiya sallah - tare da hanya ta Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Karanta a 3rd & 4th rak\'ah';

  @override
  String get tasbihatArba3Info =>
      'A Shia jurisprudence, Tasbiḥāt al-Arbaʿa ta maye Surah al-Fatiha a 3rd da 4th rak\'ah na Dhuhr, Asr, Maghrib, da Isha. Dole ne (wājib) ya karanta sau ɗaya, da aka ramse (mustaḥabb) karanta sau uku.';

  @override
  String get tasbihatArba3Translation =>
      'Subhana Allah · Alhamdulillahi Rabbil Alamin\nLa ilaha illallah · Allahu Akbar';

  @override
  String get tasbihatArba3CompleteTitle => 'Karantawa Gama';

  @override
  String get tasbihatArba3CompleteMessage => 'Bari sallah naka ya karɓu — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Taba baje kowane karantawa';

  @override
  String get tasbihatZahraSubtitle => 'Baje sallah · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Asali';

  @override
  String get tasbihatZahraHadith =>
      'Malariya Fatima al-Zahra (sa) ta bukaci Annabi domin baje. Ya ce: \"Bari ba in ba ka sharafi wani abu mafi kyau? Karanta Subḥānallāh 33 lokaci, Alḥamdulillāh 33 lokaci, da Allāhu Akbar 34 lokaci baje sallah. Wannan mafi kyau ne domin ka da baje.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Buɗi Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'DUA\'A NA RAMSE';

  @override
  String get tasbihatDuasSubtitle => 'Baje kammala sallah';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Baje kowane sallah';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Wanda ya karanta Āyat al-Kursī baje kowane sallah, ba wani abu yana tsakanin shi da jannati ba sai mutuwa. Imam al-Bāqir (a) ya ce ita ce daya daga manyan ayyukan Qur\'ani.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Baje sallah · seals dua duka';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Aika daraja zuwa Annabi ﷺ da putured iyali (Āl Muḥammad) ana ramse domin katuri kowane dua. Imam al-Ṣādiq (a) ya ce: \"Kowane dua ba ya juyar sai ka aika ṣalawāt zuwa Muḥammad da iyali.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Baje sallah · domin Imam na lokacin mu';

  @override
  String get tasbihatDuaFarajSource => 'Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua don dawowar Imam al-Mahdī (af), Imam na goma sha biyu, wanda mahaifinsa ya koya. Ana yawan karanta shi daga mutane da yawa daga cikin Musulmin Shia bayan sallah a matsayin aikin sadaukarwa ga Imam mai rai.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ na Malariya Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Baje Maghrib & Isha · musamman an ramse';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) ya ce karanta Tasbīḥ al-Zahrā baje Isha kafin barci a mafi kyau ne fiye da 1000 rak\'ahs na sallah. Haske sa yana haye sama.';

  @override
  String get tasbihFatimaGiftPre => 'Gida daga Annabi';

  @override
  String get tasbihFatimaGiftPost => 'karanta baje sallah';

  @override
  String get prayerTrackerTitle => 'TRACKER SALLAH';

  @override
  String get prayerTrackerPrayed => 'Sallah';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count jiya pari';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Duk sallah gama jiya. Bari Allah ya karɓu.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Gama jiya';

  @override
  String get dhikrTrackerNotDoneToday => 'Ba a yi jiya';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count jiya pari';
  }

  @override
  String get dhikrReminderTitle => 'Gargajiya Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Gargajiya na jiya domin karanta Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Kunna gargajiya Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Lokacin gargajiya';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith na Jiya';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'FASSARA';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Raba Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Da gabata';

  @override
  String get hadithNavNext => 'Na gida';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Masumai Goma Sha Hudu';

  @override
  String get imamsScreenSubtitle =>
      'Annabi, Hajiya Fatima, da Masumai Goma Sha Daya — jagororin tsarkakakku da marasa kuskure a cikin addinin Shia na Goma Sha Daya';

  @override
  String get imamLabelBorn => 'Haihuwa';

  @override
  String get imamLabelMartyrdom => 'Mutuwa';

  @override
  String get imamLabelStatus => 'Sati';

  @override
  String get imamSectionBiography => 'TARIHI';

  @override
  String get imamSectionFamousSaying => 'MAGANA SANNU';

  @override
  String get imamRoleProphet => 'Annabi na Karshe';

  @override
  String get imamRoleInfallible => 'Mai gida';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Saji Dua\'a';

  @override
  String get duaAudioScreenSubtitle =>
      'Zaɓi dua domin saji. Taba wasan domin aiki ko katso.';

  @override
  String get duaAudioComingSoonMessage => 'Audio domin dua zai zama aiki baje.';

  @override
  String get duaAudioClose => 'Rufawa';

  @override
  String get duaAudioError =>
      'Ba za a iya loda audio ba. Kayi bincika haɗi naka.';

  @override
  String get duaAudioMetaTransmittedBy => 'Aika ta';

  @override
  String get duaAudioMetaOccasion => 'Abuja';

  @override
  String get duaAudioMetaDuration => 'Lokaci';

  @override
  String get quickActionDailyHadith => 'Hadith na Jiya';

  @override
  String get quickAction14Masumeen => 'Masumai Goma Sha Hudu';

  @override
  String get quickActionListenDuas => 'Saji';

  @override
  String get quickActionTasbihat => 'Jagoran Sallah';

  @override
  String get pilgrimageSectionTitle => 'Hajji na Musamman';

  @override
  String get pilgrimageSectionSubtitle =>
      'Jagora cikakke zuwa Hajji & Umrah - hajji zuwa Gida mai Tsarki na Allah a Makka';

  @override
  String get hajjCardTitle => 'Hajji';

  @override
  String get hajjCardSubtitle => 'Pillar na Biyar na Islami';

  @override
  String get hajjCardDescription =>
      'Babbar hajji - dole ne sau ɗaya a ranar rayuwa domin kowane Musulmi';

  @override
  String get hajjScreenTitle => 'Jagoran Hajji';

  @override
  String get hajjScreenSubtitle => 'Jagora mai mataki zuwa babbar hajji';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Hajji Karama';

  @override
  String get umrahCardDescription =>
      'Jiya da tunani mai gida da za a iya yi a kowane lokaci na shekara';

  @override
  String get umrahScreenTitle => 'Jagoran Umrah';

  @override
  String get umrahScreenSubtitle => 'Jagora mai mataki zuwa karama hajji';

  @override
  String get pilgrimageStepsTitle => 'Abubuwan Aiki & Mataki';

  @override
  String get pilgrimageImportantNotesTitle => 'Mahakamat Mahimma';

  @override
  String get pilgrimageDuaTitle => 'Dua don wannan mataki';

  @override
  String get pilgrimageJafariNoteTitle => 'Lura da Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Cikakke';

  @override
  String get pilgrimageMarkDone => 'Alama a matsayin kammalawa';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done daga $total matakai';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes minti';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Hajji Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Yawancin masu aikin hajji na Shia suna kuma tafiya zuwa Medina don ziyara ga Annabi Muhammad (SAW) a Masjid al-Nabawi da kaburburan a Jannat al-Baqi. Wadannan ziyara suna da mahimmancin ruhaniya mai zurfi, duk da cewa ba su ne ka\'idojin Hajj ba.';

  @override
  String get hajjIntro =>
      'Hajj shine ginshiƙi na biyar na Musulunci, wajibi sau ɗaya a rayuwa ga kowanne Musulmi wanda ke da lafiya da kuma kudi. Ga yawancin masu aikin hajji na Shia na Goma Sha Daya a yau, wannan yana nufin Hajj al-Tamattu\', wanda aka yi a cikin watan Dhul Hijjah a cikin tafarkin Annabi Ibrahim (AS), ɗansa Ismail (AS), da Hajiya Hajar. Wannan jagorar tana biye da tsarin Ja\'fari na ka\'idojin, yayin da ziyara a Medina ke kasancewa tafiya mai daraja kafin ko bayan Hajj.';

  @override
  String get umrahIntro =>
      'Umrah shine karama hajji zuwa Makka da, ba kamar Hajji ba, za a iya yi a kowane lokaci na shekara. Ba dole ba, amma tana da gida tunani da aka ramse. Ita share wasu abubuwan aiki tare da Hajji amma ta karama, tana da mataki hudu na mabambayi.';

  @override
  String get voiceInputTitle => 'Shigar Murya';

  @override
  String get voiceInputMicTitle => 'Makirufo';

  @override
  String get voiceInputMicSubtitle =>
      'Yi magana da shigar da ku zuwa Ask Ayara maimakon rubutu.';

  @override
  String get voiceInputMicDenied => 'An ki amincewa da samun makirufo.';

  @override
  String get voiceInputSpeak => 'Yi magana maimakon';

  @override
  String get voiceInputListening => 'Ana sauraro…';

  @override
  String get voiceInputPermissionDenied =>
      'Ana bukatar samun makirufo don shigar murya.';
}
