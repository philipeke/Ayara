// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Khetha ulimi lwakho';

  @override
  String get languageSelectSub =>
      'Ungakwazi ukutshintsha lokhu kamuva kuSettings';

  @override
  String get actionContinue => 'Qhubeka';

  @override
  String get languageSuggestedHeader => 'Kusikisiswe';

  @override
  String get languageAllHeader => 'Zonke izilimi';

  @override
  String get languageSuggestedBadge => 'Kusikisiswe';

  @override
  String get languageSearchHint => 'Sesha…';

  @override
  String get planBasic => 'Okuxonela';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Ukuqondiswa Kwensuku';

  @override
  String get categorySlot02 => 'Iman Nokuthembeka';

  @override
  String get categorySlot03 => 'Isikali Sokukhuleka';

  @override
  String get categorySlot04 => 'Ukunethezeka Nokusethemba';

  @override
  String get categorySlot05 => 'Cela Uxolo';

  @override
  String get categorySlot06 => 'Umusa Nokungiselela';

  @override
  String get categorySlot07 => 'Ukholo Nesibindi';

  @override
  String get categorySlot08 => 'Inhliziyo Engathokozisaziwe';

  @override
  String get categorySlot09 => 'Umzwelo Wesiphi';

  @override
  String get categorySlot10 => 'Ubudlelwano Bezemindeni';

  @override
  String get categorySlot11 => 'Kuthula Kwangaphakathi';

  @override
  String get categorySlot12 => 'Uku Uthukela Kweprohfete';

  @override
  String get categorySlot13 => 'Isimilo Esihle';

  @override
  String get categorySlot14 => 'Melana Lokutentembisa';

  @override
  String get categorySlot15 => 'Dhikr Yekuseni';

  @override
  String get categoryCustom => 'Isikali Somuntu';

  @override
  String get dhikrMeaningSubhanallah => 'Zingisile uAllohu';

  @override
  String get dhikrMeaningAlhamdulillah => 'Konke okukudumela kuAllohu';

  @override
  String get dhikrMeaningAllahuAkbar => 'UAllohu unkulu kakhulu';

  @override
  String get quranVerseHeartAtRest =>
      'Qaphela, ekukhumbuleni kuAllohu inhliziyo ifumana ukuthula.';

  @override
  String get promptHint =>
      'Thapha ingxenye yomqulu wezilwandle ukuze ufumane uqondiso olwelaphezulu nokubheka kamuva';

  @override
  String get currentLanguage => 'Ulimi lwamanje';

  @override
  String get settingsLanguage => 'Imistiselelo yolimi';

  @override
  String get settingsTitle => 'Imistiselelo';

  @override
  String get chooseLanguage => 'Khetha ulimi lwakho';

  @override
  String get continueCta => 'Qhubeka';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count amagama',
      one: '$count igama',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Izinketho';

  @override
  String get newCta => 'Okusha';

  @override
  String get actionsTitle => 'Yini enokuthi uyenze?';

  @override
  String get copy => 'Kopela';

  @override
  String get share => 'Yabelana';

  @override
  String get close => 'Vala';

  @override
  String get copiedToast => 'Okopele ohwini lokustora';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ayikwazanga ukwenza impendulo entsha';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nNjalo ufuna uzama futhi?';
  }

  @override
  String get cancelCta => 'Khansela';

  @override
  String get retryCta => 'Zama futhi';

  @override
  String get authTitle => 'Dala iakhawunti yakho';

  @override
  String get continueAsGuest => 'Qhubeka njengoguest';

  @override
  String get signInGoogle => 'Ungena nge-Google';

  @override
  String get signInApple => 'Ungena nge-Apple';

  @override
  String get signInEmail => 'Ungena nge-imeyili';

  @override
  String get upgradeWithApple => 'Qhubeka nge-Apple';

  @override
  String get mustAccept =>
      'Kufanele ukuvumelana nemibandela kanye nokwanakala iNgubamlinganiselo Yabuciko.';

  @override
  String get termsLabel => 'Ngiyavuma Imibandela Yomsebenzisi';

  @override
  String get privacyLabel => 'Ngibukile iNgubamlinganiselo Yabuciko';

  @override
  String get marketingOptIn => 'Ngiyavuma ukuthola izindaba nezinalo';

  @override
  String get openTerms => 'Imibandela Yomsebenzisi';

  @override
  String get openPrivacy => 'Ingubamlinganiselo Yabuciko';

  @override
  String get accountSection => 'Iakhawunti';

  @override
  String get guestMode => 'Uhlobo lweGuest';

  @override
  String get signedIn => 'Ungene';

  @override
  String get upgradeHint =>
      'Gcina izikali zakho ezidlalweni ngokudala iakhawunti.';

  @override
  String get upgradeWithGoogle => 'Qhubeka nge-Google';

  @override
  String get signOut => 'Phuma';

  @override
  String get snackUpgraded => 'I-akhawunti iphukuliswe nge-Google ✅';

  @override
  String get snackSignedIn => 'Ungene nge-Google ✅';

  @override
  String get snackSignedOut => 'Uphume';

  @override
  String get snackSignedInApple => 'Ungene nge-Apple ✅';

  @override
  String get snackSignedInGoogle => 'Ungene nge-Google ✅';

  @override
  String get snackUpgradedApple => 'I-akhawunti iphukuliswe nge-Apple ✅';

  @override
  String get snackUpgradedGoogle => 'I-akhawunti iphukuliswe nge-Google ✅';

  @override
  String get historyTitle => 'Izikali Ezedlule';

  @override
  String get historyOpenCta => 'Izikali Ezedlule';

  @override
  String get historyEmpty => 'Azikho izikali ezigcinwe ezikhona.';

  @override
  String get historyDeleteTitle => 'Susa isikali?';

  @override
  String get historyDeleteBody => 'Lokhu kuzosusa isilemi ekhethiwe ngosizo.';

  @override
  String get deleteCta => 'Susa';

  @override
  String get historyButton => 'Izikali Ezedlule';

  @override
  String get historyEmptyTitle => 'Azikho izikali ezikhona';

  @override
  String get historyEmptyBody =>
      'Dala okushintshi kuqala — izilemi ezigcinwe zizobonakala lapha.';

  @override
  String get historyDelete => 'Susa';

  @override
  String get footerTitle => 'Nge-Wilaya, Iman kanye neSabr';

  @override
  String get footerSubtitle => 'Okulukuleka okukodwa ngesikhathi';

  @override
  String get genericErrorSnack =>
      'Kwenzeka okuthile okungalungile — sicela uzame futhi kamuva kancane.';

  @override
  String get upgradeAccountCta =>
      'Gcina izikali zakho ezidlalweni – dala iakhawunti';

  @override
  String get deleteAccount => 'Susa i-akhawunti';

  @override
  String get exportData => 'Khipha imininingwane yami';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Faka isikhathi 🐯\nAyara idinga umzuzulwane ngaphambi kwenoma yini enilandelayo…';

  @override
  String get rateDailyLimit =>
      'Akusekho izikali ngoku.\nFumana izikali ezengeziwe noma ufinyelele ku-Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Usebenzisile konke izikali.\nFakaza noma ufinyelele ku-Wilaya ukuqhubeka.';

  @override
  String get rateGraceCreditsExhausted =>
      'Akusekho izikali ngoku.\nFumana izikali ezengeziwe noma ufinyelele ku-Wilaya.';

  @override
  String get premiumDescription =>
      'U-Wilaya uvula izici zepremiyamu, izigaba zetshezi, kanye nebheji ekhethekile.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Izikali zakho ziye ngweyana ngoku. Uhlelo: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ayikwazanga ukuhlola izikali zakho: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Kwenzeka okuthile ebisiziwe ekuhloleni izikali zakho.';

  @override
  String get aiFallbackGeneric =>
      'Kwenzeka okuthile okungalungile — sicela uzame futhi kamuva kancane.';

  @override
  String get limitSectionTitle => 'Izikali';

  @override
  String get limitTodayLabel => 'Ukusetshenziswa';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Izikali ezisele: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Uhlelo: $plan';
  }

  @override
  String get limitLoadingLabel => 'Iloading…';

  @override
  String get limitLoadingLabelDescription =>
      'Ibonakala esikhalini sesikali kunesikhashane izitatisi zokusetshenziswa zifakwayo.';

  @override
  String get aiLimitTitle => 'Izikali';

  @override
  String get aiLimitSubtitle =>
      'Impendulo ngayinye isebenzisa isikali esisodwa. Okuxonela kubazifo ezilinganiselwayo. U-Wilaya avule izigaba zepremiyamu kanye nokuceda nje.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total izikali kusetshenziswe';
  }

  @override
  String get creditsSectionTitle => 'Izikali';

  @override
  String get creditsUsageLabel => 'Ukusetshenziswa';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Izikali ezisele: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Uhlelo: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Iloading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ibonakala kunesikhashane izitatisi zesikali zifakwayo.';

  @override
  String get creditsTitle => 'Izikali';

  @override
  String get creditsSubtitle =>
      'Impendulo ngayinye isebenzisa isikali esisodwa. Okuxonela kubazifo ezilinganiselwayo. U-Wilaya avule izigaba zepremiyamu kanye nokuceda nje.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total izikali kusetshenziswe';
  }

  @override
  String get settingsDeleteTitle => 'Susa i-akhawunti';

  @override
  String get settingsDeleteDescription =>
      'Susa i-akhawunti yakho nganqubo kanye nokonke imininingwane enhlobonhlobo.';

  @override
  String get settingsDeleteButtonLabel => 'Susa i-akhawunti yami';

  @override
  String get settingsDeleteDialogTitle => 'Susa i-akhawunti?';

  @override
  String get settingsDeleteDialogBody =>
      'Lokhu kwenzo kunqoba futhi akekho umzila wokubuyela umva.\n\nKonke amakipayi akho, umlando kanye nemininingwane ye-akhawunti izosuswa.';

  @override
  String get settingsDeleteDialogCancel => 'Khansela';

  @override
  String get settingsDeleteDialogConfirm => 'Susa';

  @override
  String get settingsFreeLimitUsedTitle => 'Izikali zezikhawu zikusetshenziswe';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Izikali zezikhawu zedivayisi leningi zikusetshenziswe. Phukulisela ku-Wilaya noma thenga izikali ezengeziwe ukuqhubeka.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Izikali zezikhawu zikusetshenziswe';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Izikali zezikhawu zedivayisi leningi zikusetshenziswe. Phukulisela ku-Wilaya noma thenga izikali ezengeziwe ukuqhubeka.';

  @override
  String get deviceBoundError =>
      'Ledivayisi leningi selichhunywe kwenye i-akhawunti. Sicela ungene ngo-akhawunti eyokuqala.';

  @override
  String get premiumTitle => 'Uhlobo lwe-Wilaya';

  @override
  String get premiumSubtitleBasic => 'Vula kabusha okuwongekayo kwe-Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Unjenge-Wilaya. Idinga izikali ezengeziwe?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Uhlelo lwamanje: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Izikali: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Izikralo azitholakali ngalesi sikhathi.';

  @override
  String get premiumSignInToPurchase =>
      'Ungena ukuze uthenga izikali noma uvule u-Wilaya.';

  @override
  String get premiumRestorePurchases => 'Buyisela ukralo';

  @override
  String get premiumProcessing => 'Ifakwe...';

  @override
  String get premiumRestoreHintTitle =>
      'Sekutholele u-Wilaya noma izikali ledivayisi leningi noma enye?';

  @override
  String get premiumRestoreHintBody =>
      'Buyisela ukralo uma kuvele akubonakali.';

  @override
  String get premiumBuyCredits200 => 'Thenga izikali ezingama-200';

  @override
  String get premiumBuyCredits400 => 'Thenga izikali ezingama-400';

  @override
  String get premiumBecomePremiumOneTime => 'Phukulisela kuhlobo lwe-Wilaya';

  @override
  String get premiumTopupHint =>
      'Nge-Wilaya, ungakwazi ukulelekela nge-izikali ezengeziwe noma nini.';

  @override
  String get premiumUpgradeCta => 'Phukulisela';

  @override
  String get premiumRequiredForCategory =>
      'Lesi sigaba silandelwe kuphela abathambi be-Wilaya. Phukulisela kuSettings ukuvula konke okuqukethwe okusheshayo.';

  @override
  String get premiumBenefitsBasic =>
      'Vula u-Wilaya ukufumana izikali ezengeziwe, ufinyelele izigaba zepremiyamu, kanye ukuqhubeka noma nini uma usudinga amaqondiso.';

  @override
  String get premiumBenefitsPremium =>
      'Ujinge-Wilaya. Uma ushontile, lingeza izikali ezengeziwe kanye uqhubeka ngaphandle kokunukelwa.';

  @override
  String get premiumButtonBecomePremium => 'Vula u-Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Lingeza izikali ezingama-1000';

  @override
  String get premiumBadge => 'U-Wilaya usebenzayo';

  @override
  String get premiumLoadingStore => 'Iloading inkosiyi…';

  @override
  String get premiumProductNotAvailable =>
      'Umkhiqizo lokhu akutholakali kwinkosiyi ezikhona. Sicela uzame futhi kamuva.';

  @override
  String get premiumPurchaseError =>
      'Kwenzeka okuthile okungalungile ngesikhathi sokuthenga. Sicela uzame futhi.';

  @override
  String get premiumBuyCredits100 => 'Lingeza izikali ezingama-100';

  @override
  String get premiumFeatureLocked => 'Vula u-Wilaya ukufinyelele kulesi sici.';

  @override
  String get lockedCategoriesHint =>
      'Ezinye izigaba ziyabelwe kuphela amalungu e-Wilaya. Vula zona ukubheka isikali ngayinye ekuseni kwakho.';

  @override
  String get freePlanBlockedTitle =>
      'Ukusetshenziswe kwezikali zezikhawu kuphele';

  @override
  String get freePlanBlockedBody =>
      'Unjenge-Okuxonela uhlelo onobazifo bezikhawu, futhi wamfikele umkhawulo. Ukuqhubeka — kanye nokuvula izigaba zepremiyamu — phukulisela ku-Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Bona izinketho ze-Wilaya ngezansi';

  @override
  String get graceBlockedTitle => 'Ukusetshenziswe kwezikali zezikhawu kuphele';

  @override
  String get graceBlockedBody =>
      'Unjenge-Okuxonela uhlelo onobazifo bezikhawu, futhi wamfikele umkhawulo. Ukuqhubeka — kanye nokuvula izigaba zepremiyamu — phukulisela ku-Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Bona izinketho ze-Wilaya ngezansi';

  @override
  String get rateGuestMustSignIn =>
      'Ungena ukusetshenzisa u-Ayara kanye nezikali zakho.';

  @override
  String get guestNoCreditsTitle => 'Uhlobo lweGuest';

  @override
  String get guestNoCreditsBody =>
      'Njenguguest ungakwazi ukubheka uhlelo, kodwa akekho izikali. Ungena kamuva kuSettings ukusetshenzisa izikali kanye nokuvula ukralo.';

  @override
  String get guestDialogContinue => 'Qhubeka';

  @override
  String get guestDialogLoginInstead => 'Ungena kunoma yini';

  @override
  String get optionalLabel => 'okuzenzakalela';

  @override
  String get accountDeleteSuccessTitle => 'I-akhawunti isusiwe';

  @override
  String get accountDeleteSuccessBody =>
      'I-akhawunti yakho kanye nemininingwane enhlobonhlobo isusiwe ngephutha.';

  @override
  String get accountDeleteSuccessClose => 'Vala';

  @override
  String get accountDeleteErrorTitle => 'Ayikwazanga uksusa i-akhawunti';

  @override
  String get accountDeleteErrorClose => 'KULUNGILE';

  @override
  String get accountDeleteReauthCancelled =>
      'Ukuzibuyisela kukhansele. Sicela ungene futhi kunazama uksusa.';

  @override
  String get accountDeleteReauthRequired =>
      'Uksusa i-akhawunti sidinga ngengenela esikhashane. Sicela uphume, ungene futhi, bese uzama uksusa.';

  @override
  String get settingsDeletePermanentWarning =>
      'Lokhu kwenzo kunqoba futhi akekho umzila wokubuyela umva. Konke imininingwane enhlobonhlobo ne-akhawunti izosuswa.';

  @override
  String get dailyGraceTitle => 'Ukuqondiswa Kwensuku';

  @override
  String get dailyGraceScriptureLabel => 'AYATHI YENSUKU';

  @override
  String get dailyGraceSaintLabel => 'UZAZI YESHUMI LELI';

  @override
  String get dailyGraceReflectionLabel => 'ISIKALI YESIKUSENI';

  @override
  String get dailyGraceCopiedToast => 'Ayathi lokopele ohwini lokustora';

  @override
  String get locationConsentLabel =>
      'Vumela u-Ayara ukusetshenzisa indawo yami yekhibula nozikhathi zokukhuleka';

  @override
  String get locationConsentHint =>
      'Isetshenziswe kuphela kulezi zici. Indawo yakho akusikho icela noma igcinwe.';

  @override
  String get askPageTitle => 'Bua u-Ayara';

  @override
  String get askPageDescription =>
      'Bua noma yini ngoukholo, okukuleka, impilo, noma inqubo elwelaphezulu futhi ufumane amaqondiso agxile ku-Quran namazifundisela e-Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Bhala umbuzo wakho lapha…';

  @override
  String get askPageSubmitCta => 'Bua';

  @override
  String get askPageInputEmptyError => 'Sicela ubhale umbuzo kuqala.';

  @override
  String get askResultYourQuestion => 'Umbuzo wakho';

  @override
  String get guidancePageTitle => 'Khibula';

  @override
  String get qiblaFacingMecca => 'Ubhekene noMakkah';

  @override
  String get qiblaCompassInstruction =>
      'Songa iselfoni yakho de ine-usi eyolintshi ikhomele phezulu.\nLelo lelo bheku elikhomele ku-Khibula (uMakkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Isignali saseGPS igoqile. Phuma ngaphandle futhi thapha Zama futhi.';

  @override
  String get qiblaRetry => 'Zama futhi';

  @override
  String get qiblaTitle => 'Indawo yeKhibula';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km kuMakkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Indawo idingekile';

  @override
  String get qiblaLocationNeededBody =>
      'Vumela ufinyelele endaweni ukuze u-Ayara akwazi ukubalwa indlela yeKaaba kuMakkah lapho unjalo.';

  @override
  String get qiblaOpenSettings => 'Vula imistiselelo';

  @override
  String get qiblaCompassLoading => 'Ifumana indawo yakho…';

  @override
  String get qiblaTowardMecca => 'Kuhla kuMakkah';

  @override
  String get prayerTimesTitle => 'Izikhathi zokukhuleka';

  @override
  String get prayerTimesFajr => 'iFajr';

  @override
  String get prayerTimesDhuhr => 'iDhuhr';

  @override
  String get prayerTimesAsr => 'iAsr';

  @override
  String get prayerTimesMaghrib => 'iMaghrib';

  @override
  String get prayerTimesIsha => 'iIsha';

  @override
  String get prayerTimesLocationNeededTitle => 'Indawo idingekile';

  @override
  String get prayerTimesLocationNeededBody =>
      'Vumela ufinyelele endaweni ukuze u-Ayara akwazi ukubalwa izikhathi zokukhuleka ezibalulekile omuzi wakho.';

  @override
  String get prayerTimesNextLabel => 'Okulandelayo';

  @override
  String get prayerTimesDoneLabel => 'Kuqedile';

  @override
  String get monthlyPrayerTimesTitle => 'Izikhathi zokukhuleka ngeminyanga';

  @override
  String get monthlyPrayerTimesViewButton => 'Bona Inyanga Eliphelele';

  @override
  String get monthlyPrayerTimesNextMonth => 'Inyanga elandelayo';

  @override
  String get monthlyPrayerTimesDayHeader => 'Usuku';

  @override
  String get sharePrayerTimes => 'Yabelana ngezikhathi zokukhuleka';

  @override
  String get notificationsSectionTitle => 'Izaziso';

  @override
  String get notificationsSectionSubtitle =>
      'Okuxhumanisa kokukhuleka, iziventi zekhalenda kanye nokunye';

  @override
  String get dailyReflectionReminderTitle => 'Isikali Yensuku';

  @override
  String get dailyReflectionReminderDescription =>
      'Umciza okunzwisisa wensuku okuzobakela ukhula u-Ayara kanye nokuxhumanisa noukholo.';

  @override
  String get dailyReflectionReminderEnable => 'Vumela isixwayiso senshuku';

  @override
  String get dailyReflectionReminderTimeLabel => 'Isikhathi sesixwayiso';

  @override
  String get prayerNotificationsTitle => 'Okuxhumanisa kokukhuleka';

  @override
  String get prayerNotificationsDescription =>
      'Fumana umciza okunzwisisa ngaphambi kwesikhathi sokukhuleka ukuze ubame oxhunywe phakathi nendawo.';

  @override
  String get prayerNotificationsEnable => 'Vumela okuxhumanisa kokukhuleka';

  @override
  String get prayerNotificationsOpenSettings => 'Vula imistiselelo yokuzaziso';

  @override
  String get prayerNotificationsDenied => 'Izaziso zishu imibili';

  @override
  String get prayerNotificationsDeniedHint =>
      'Yiya kuSettings futhi vumela izaziso ze-Ayara ukuze ufumane okuxhumanisa kokukhuleka.';

  @override
  String get notificationsConsentLabel =>
      'Vumela izaziso zesikhathi sokukhuleka';

  @override
  String get prayerNotifTitleFajr => '🌅 Ufajr — Okulukuleka kokuqaliswa';

  @override
  String get prayerNotifBodyFajr =>
      'UFajr owokulukuleka wabathambi be-Ahl al-Bayt. U-Imam Ali (AS) wabe: Cgina isikhathi esokuqaliswa njenge-ithrust yakho elunge kakhulu. Susuka, zihlambulule, futhi ukhuleke uAllohu.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ UDhuhr — Okulukuleka kusikhashalweni';

  @override
  String get prayerNotifBodyDhuhr =>
      'Abamakugoba be-Ahl al-Bayt bathole umzwelu nokukhumbula. Mimisa usuku wakho, ntsunguza u-Dhuhr nge-Asr uma kunyakalwa, futhi ubuyisele inhliziyo yakho ku-Allohu.';

  @override
  String get prayerNotifTitleAsr => '🌤️ UAsr — Okulukuleka kwemva kwekuseni';

  @override
  String get prayerNotifBodyAsr =>
      'Cgina isikhathi esokulukuleka, ngoba siyisivumelwano phakathi kwakho noAllohu. Isikhathi se-Asr sifikile — ungayilaseli ngaphandle kokukhumbula.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 UMaghrib — Okulukuleka kokufa kwelanga';

  @override
  String get prayerNotifBodyMaghrib =>
      'Ilanga lilele — umzwelu abamagoba be-Ahl al-Bayt babelinganiselwe. Nikelez u-Maghrib futhi vula izandla zakho ku-Allohu nge-dua ngaphambi kokusulela usuku.';

  @override
  String get prayerNotifTitleIsha => '🌙 UIsha — Okulukuleka koyisibhakela';

  @override
  String get prayerNotifBodyIsha =>
      'Phokola usuku wakho eyo uAllohu. Abamakugoba bathukhele u-Salat al-Layl ngemva kwe-Isha — kodwa kuqala, qedela i-Isha futhi vala usuku ngokukhumbula kwakhe.';

  @override
  String get outOfReflectionsBannerText => 'Usebenzisile konke izikali';

  @override
  String get outOfReflectionsBannerCta => 'Fumana okungeziwe';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Thapha isiyingi ukubalela';

  @override
  String get dhikrResetButton => 'Zama futhi';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Kuqedile okuthi kukhumbula u-Allohu ngesikhathi esingu-100. Akucele ikhona inhlobo yenlangeni enhliziyo yakho.';

  @override
  String get disclaimerTitle => 'Ngokubhekwa kokuqondiso kahaba kapha';

  @override
  String get disclaimerBody =>
      'U-Ayara unike izikali elwelaphezulu, izixwayiso, nokunqoba okululukaziwe ukusekela isafari sokukholo kwakho, okugxile ku-Quran namazifundisela e-Ahl al-Bayt. Okuqukethwe okuneshwayo kunwe noma inqobo yokuqedwa okufutshaniswe.';

  @override
  String get disclaimerClose => 'Ngibukile';

  @override
  String get disclaimerInfoTooltip => 'Ngokubhekwa kokuqondiso kahaba kapha';

  @override
  String get disclaimerSettingsSubtitle =>
      'Nokusabela nengqali. Thapha ukubuka isizathu esiphakamisayo.';

  @override
  String get disclaimerSectionHeader => 'Isixwayiso sesikali';

  @override
  String get navHome => 'Ekhaya';

  @override
  String get navReflect => 'Bheka';

  @override
  String get navDuas => 'UDuas';

  @override
  String get navCalendar => 'Ukuphapha';

  @override
  String get dashboardToday => 'NAMUHLA';

  @override
  String get dashboardComingUp => 'Okulandelayo';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'izinsuku',
      one: 'usuku',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Ufinyelele Okukhawulelayo';

  @override
  String get quickActionQibla => 'Khibula';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Amaqondiso';

  @override
  String get quickActionPrayerTimes => 'Izikhathi zokukhuleka';

  @override
  String get askAyaraTitle => 'Bua u-Ayara';

  @override
  String get askAyaraSubtitle =>
      'Bua noma yini nge-umbuzo welwelaphezulu futhi ufumane impendulo ecikile.';

  @override
  String get askAyaraHint => 'ug. Yini okukhulunyazwa kwe-Ramadan?';

  @override
  String get askAyaraSubmit => 'Bua';

  @override
  String get wisdomOfTheDayTitle => 'Uhlanganisa Lwensuku';

  @override
  String get calendarScreenTitle => 'Ukuphapha lweLwelaphezulu';

  @override
  String get calendarUpcomingOccasions => 'Iziventi Ezozayo';

  @override
  String get calendarOccasionRemindersTitle => 'Okuxhumanisa kweziventi';

  @override
  String get calendarOccasionRemindersHint =>
      'Oqondiswa ngobusuku ngaphambi kwezventi ngayinye';

  @override
  String get calendarNotifPermissionDenied =>
      'Imvume yokuzaziso iyachithwe. Ivumele kuSettings.';

  @override
  String get calendarNoEvents => 'Azikho iziventi ezitholakali.';

  @override
  String get calendarAddToPhone => 'Engeza ku-Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Engezwe ku-Calendar';

  @override
  String get calendarCountdownToday => 'NAMUHLA';

  @override
  String get calendarCountdownTomorrow => 'KUSENI';

  @override
  String calendarCountdownDays(int days) {
    return 'ku-$days izinsuku';
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
  String get calendarMonthMay => 'Mey';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Agu';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Des';

  @override
  String get calendarSeasonMuharramEarly =>
      'Izinsuku zeMuharram — khumbula u-Karbala';

  @override
  String get calendarSeasonAshura => 'i-Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — izinsuku zokulandela kanye nesikali';

  @override
  String get calendarSeasonArbaeen =>
      'i-Arbaeen — izinsuku ezingamashumi amane ka-Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Umzila wu-Arbaeen';

  @override
  String get calendarSeasonMabath => 'i-Mab\'ath Mubarak — ivuka lethathulo';

  @override
  String get calendarSeasonMidShaban =>
      'i-Sha\'ban emapupu — usuku lokuzalwa kwe-Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — inyanga ye-Quran';

  @override
  String get calendarSeasonGhadir => 'i-Eid al-Ghadir Mubarak!';

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
  String get duasScreenTitle => 'IDuas & Ziyarat';

  @override
  String get duasSearchHint => 'Sesha duas, ziyarat…';

  @override
  String get duasFilterAll => 'Konke';

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
  String get duasEmpty => 'Azikho duas ezitholakali.';

  @override
  String get duaCategoryDaily => 'Yensuku';

  @override
  String get duaCategoryWeekly => 'Yebiza';

  @override
  String get duaCategoryOccasions => 'Iziventi';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Izalwa';

  @override
  String get eventTypeMartyrdom => 'Ukuweleka';

  @override
  String get eventTypeOccasion => 'Iventi';

  @override
  String get duaCopyTooltip => 'Kopela ukuhunyushwa';

  @override
  String get duaToggleTransliteration => 'Isikolo';

  @override
  String get duaToggleTranslation => 'Ukuhunyushwa';

  @override
  String get duaAskAiLabel => 'Cela u-Ayara ukubheka loli dua';

  @override
  String get duaAskAiLockedLabel => 'Cela u-Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Izichasiselo ze-Ayara zitholakali kulamuntu aba-Wilaya. Phukulisela kuSettings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Cela u-Ayara ngokubhekwa \"$name\" — kuzozakala!';
  }

  @override
  String get duaCopiedToast => 'Dua lokopele ohwini lokustora.';

  @override
  String get tasbihAllahuAkbarMeaning => 'UAllohu unkulu kakhulu';

  @override
  String get tasbihAlhamdulillahMeaning => 'Konke okukudumela kuAllohu';

  @override
  String get tasbihSubhanallahMeaning => 'Zingisile uAllohu';

  @override
  String get tasbihResetTooltip => 'Zama futhi';

  @override
  String get tasbihCompleteTitle => 'Tasbih Kuqedile';

  @override
  String get tasbihCompleteMessage => 'Akucele u-Allohu avume dhikr yakho.';

  @override
  String get tasbihTapHint => 'Thapha noma kuphi ukubalela';

  @override
  String get tasbihatScreenTitle => 'Isiqalo Sokukhuleka';

  @override
  String get tasbihatScreenSubtitle => 'IZINGISISO ZOKUKHULEKA';

  @override
  String get tasbihatScreenDescription =>
      'Isiqalo esiphelele ekuzingiswa okwenziwe nakho ngemva kokukhuleka nje — kulandela inqubo ye-Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Izingiswa ubunye kanye okwesine';

  @override
  String get tasbihatArba3Info =>
      'Ku-Shia jurisprudence, i-Tasbiḥāt al-Arbaʿa isikhathi i-Surah al-Fatiha (ubunye kanye okwesine) ye-Dhuhr, Asr, Maghrib, kanye ne-Isha. Kufanele ukuzikhumbula yonke indlela (wājib) futhi kumele isukela ngabathathu (mustaḥabb).';

  @override
  String get tasbihatArba3Translation =>
      'Zingisile uAllohu · Konke okukudumela kuAllohu\nAkekho onye kungcwele ngaphandle ku-Allohu · UAllohu unkulu kakhulu';

  @override
  String get tasbihatArba3CompleteTitle => 'Ukuzingisa Kuqedile';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Akucele okukhuleka kunivumwe — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Thapha emva kwezingisa ngayinye';

  @override
  String get tasbihatZahraSubtitle =>
      'Ngemva kokukhuleka ngayinye · izimaddade ezingama-100';

  @override
  String get tasbihatZahraOriginLabel => 'Umsuka';

  @override
  String get tasbihatZahraHadith =>
      'U-Lady Fatima al-Zahra (sa) kwamusela uProfethe ﷺ umkhulu. Wathi: \"Kaloku ngakungikhombisa kucinzelo okungemele? Sikhumbula Subḥānallāh izinsuku ezingama-33, Alḥamdulillāh izinsuku ezingama-33, kanye noAllāhu Akbar izinsuku ezingama-34 ngemva kokukhuleka ngayinye. Lokho kungemele kakhulu kulomkhulu.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Vula Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'IDUAS EZISIKISISWE';

  @override
  String get tasbihatDuasSubtitle => 'Emva kokugcina okukhuleka kwakho';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen =>
      'Ngemva kokukhuleka ngayinye okufanele';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Onaliphi umuntu ozingisa i-Āyat al-Kursī ngemva kokukhuleka ngayinye okufanele, akekho ekuseni ophakathi kwakhe nenkosi kungcwele ukufa. U-Imam al-Bāqir (a) wabe yiyo ina-verse enkulu ngazo zonke ku-Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Ngemva kokukhuleka ngayinye · i-seal konke izicelo';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Ukuthuma ilogo kuProfethe ﷺ kanye nemindeni yakhe enobugcinane (Āl Muḥammad) kumele kugcinwe idiche yediya ngayinye. U-Imam al-Ṣādiq (a) wabe: \"Onoma idiya ihintile de uthumele ilogo kuMuḥammad kanye nemindeni yakhe.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Ngemva kokukhuleka ngayinye · kukhomotsha lwe-Imam wezikhathi';

  @override
  String get tasbihatDuaFarajSource =>
      'Oqondiswe ngu-Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Idua yokubuya kwe-Imam al-Mahdī (af), u-Imam oweshumi nalambili, oqondiswe nguBaba wakhe. Izingiswa yensuku nje abalifuthe be-Shia emva kokukhuleka ngayinye njengomsebenzi wokukholo ku-Imam ophilayo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ weNtombazane Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Ngemva kwe-Maghrib & Isha · ikhusulwa ngengeziwe';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'U-Imam al-Bāqir (a) wabe ukuba uzingisa i-Tasbīḥ al-Zahrā ngemva kwe-Isha ngaphambi kokuphinga kununga ngaphandle kwamarakʿah angama-1000. Okukhazimula kwayo kukhwele emadodeni.';

  @override
  String get tasbihFatimaGiftPre => 'Izisodla zephrofethe';

  @override
  String get tasbihFatimaGiftPost => 'izingiswa ngemva kokukhuleka ngayinye';

  @override
  String get prayerTrackerTitle => 'UMKHANKASO WOKUKHULEKA';

  @override
  String get prayerTrackerPrayed => 'Kukhuleka';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count usuku olophakamisile';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Konke okukhuleka kuqedile namuhla. Akucele u-Allohu avume.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Kuqedile namuhla';

  @override
  String get dhikrTrackerNotDoneToday => 'Akwenziwe namuhla';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count usuku olophakamisile';
  }

  @override
  String get dhikrReminderTitle => 'Umciza we-Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Umciza okunzwisisa wensuku okuzobakela uzingisa i-Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Vumela umciza we-Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Isikhathi sesixwayiso';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Yensuku';

  @override
  String get hadithLabelArabic => 'ISIARABIKE';

  @override
  String get hadithLabelTranslation => 'UKUHUNYUSHWA';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Yabelana noHadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Edlule';

  @override
  String get hadithNavNext => 'Elandelayo';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Abantu Abangama-14 Abasebenza';

  @override
  String get imamsScreenSubtitle =>
      'UmProfethe, uNtombazane Fatima, kanye nabamakugoba abayi-12 — abaqondisi abalinganiselwe bolwelaphezulu';

  @override
  String get imamLabelBorn => 'Izalwa';

  @override
  String get imamLabelMartyrdom => 'Ukuweleka';

  @override
  String get imamLabelStatus => 'Isimo';

  @override
  String get imamSectionBiography => 'UBIQOLO BAKABANTU';

  @override
  String get imamSectionFamousSaying => 'UKUSHO OKUDUMILE';

  @override
  String get imamRoleProphet => 'UmProfethe Wokupela';

  @override
  String get imamRoleInfallible => 'Ongefikafiwe';

  @override
  String get imamOrdinal1 => 'U-Imam 1';

  @override
  String get imamOrdinal2 => 'U-Imam 2';

  @override
  String get imamOrdinal3 => 'U-Imam 3';

  @override
  String get imamOrdinal4 => 'U-Imam 4';

  @override
  String get imamOrdinal5 => 'U-Imam 5';

  @override
  String get imamOrdinal6 => 'U-Imam 6';

  @override
  String get imamOrdinal7 => 'U-Imam 7';

  @override
  String get imamOrdinal8 => 'U-Imam 8';

  @override
  String get imamOrdinal9 => 'U-Imam 9';

  @override
  String get imamOrdinal10 => 'U-Imam 10';

  @override
  String get imamOrdinal11 => 'U-Imam 11';

  @override
  String get imamOrdinal12 => 'U-Imam 12';

  @override
  String get duaAudioScreenTitle => 'Lalela iDuas';

  @override
  String get duaAudioScreenSubtitle =>
      'Khetha idua ukulalele. Thapha itayile ukusila noma upause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Umsindo wololi dua uzotholakali ekubuyamiseni okulandelayo.';

  @override
  String get duaAudioClose => 'Vala';

  @override
  String get duaAudioError =>
      'Ayikwazanga ukuloada umsindo. Sicela uhlole uxhumano lwakho.';

  @override
  String get duaAudioMetaTransmittedBy => 'Othunyelwe ngu';

  @override
  String get duaAudioMetaOccasion => 'Iventi';

  @override
  String get duaAudioMetaDuration => 'Ubude besikhathi';

  @override
  String get quickActionDailyHadith => 'Hadith Yensuku';

  @override
  String get quickAction14Masumeen => 'Abantu Abangama-14';

  @override
  String get quickActionListenDuas => 'Lalela';

  @override
  String get quickActionTasbihat => 'Isiqalo Sokukhuleka';

  @override
  String get pilgrimageSectionTitle => 'Uhambo Olukumqululu';

  @override
  String get pilgrimageSectionSubtitle =>
      'Iziqalo esiphelele ku-Hajj & Umrah — uhambo lokuthwala kuMakkah kuAllohu okukude';

  @override
  String get hajjCardTitle => 'i-Hajj';

  @override
  String get hajjCardSubtitle => 'Isithako Sesine Solwelaphezulu';

  @override
  String get hajjCardDescription =>
      'Uhambo lomqulu wenqobo — okufanele okukodwa ebungwaneni kumuntu onolwazi kanye nayo-muski';

  @override
  String get hajjScreenTitle => 'Isiqalo se-Hajj';

  @override
  String get hajjScreenSubtitle => 'Isiqalo senyanga senyanga kuhambo lomqulu';

  @override
  String get umrahCardTitle => 'i-Umrah';

  @override
  String get umrahCardSubtitle => 'Uhambo Oluncane Lokuthwala';

  @override
  String get umrahCardDescription =>
      'Uhambo olunokuliqisa komoya olusingakwazi okuqaliswa nange ikuphi isikhathi senqobo';

  @override
  String get umrahScreenTitle => 'Isiqalo Se-Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Isiqalo senyanga senyanga kuhambo oluncane lokuthwala';

  @override
  String get pilgrimageStepsTitle => 'Izenzakalo & Izinyathelo';

  @override
  String get pilgrimageImportantNotesTitle =>
      'Okubalulekile Okufanele Ukuzikhumbula';

  @override
  String get pilgrimageDuaTitle => 'Dua yalolu nyathelo';

  @override
  String get pilgrimageJafariNoteTitle => 'Iziqondiso ze-Ja\'fari Fiqh';

  @override
  String get pilgrimageComplete => '✓ Qedlule';

  @override
  String get pilgrimageMarkDone => 'Beka njengokuphothulwa';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done kwezingu-$total izinyathelo';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes imiz';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Abahambi be-Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Abahambi be-Shia ngokuvamile nawo baya kuMedina ukuvakasha um-thapelo weProfethe Muhammad (SAW) ku-Masjid al-Nabawi, kanye nemikhiwa yamakugoba ezinhlanganini ekunanele nokuzikhumbula nokukhumbula okubalulekile nokuthwala okushwele. Okubalulekile kulamuntu abani-Shia.';

  @override
  String get hajjIntro =>
      'I-Hajj i-sithako sesine solwelaphezulu, isifunelo okukodwa ebungwaneni kumuntu onolwazi kanye nayo-muski. Okwenziwe enyangeni ye-Dhul Hijjah, okulandelela kwenyawo yeProfethe Ibrahim (AS), umfo naye Ismail (AS), kanye neNtombazane Hajar. Kulamuntu be-Shia, i-Hajj nawo ihlanganisa okukudumela okukude nokuvakasha iindawo zokutsela zeProfethe (SAW) namalunga e-Ahlul Bayt kuMedina.';

  @override
  String get umrahIntro =>
      'I-Umrah iyuhambo oluncane lokuthwala kuMakkah futhi, ngaphandle kwe-Hajj, ingakwazi okuqaliswa nange ikuphi isikhathi senqobo. Ngenkathi akusekho isifunelo, ibazifo okungeziwe okukudumele futhi okuthwele isandla solwelaphezulu. Ibahlukanisa imiqulu embalwa ne-Hajj kodwa kunqoba, ibazifo ezine eziyinhloko.';
}
