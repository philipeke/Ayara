// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Madurese (`mad`).
class AppLocalizationsMad extends AppLocalizations {
  AppLocalizationsMad([String locale = 'mad']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Ḫtər luwga dyalak';

  @override
  String get languageSelectSub => 'Mqadra tḫttər hada baḥq f Settings';

  @override
  String get actionContinue => 'Qaddem';

  @override
  String get languageSuggestedHeader => 'Mŧaqraḥ';

  @override
  String get languageAllHeader => 'Kmmalit lluwgat';

  @override
  String get languageSuggestedBadge => 'Mŧaqraḥ';

  @override
  String get languageSearchHint => 'Aftta…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Traḥya Yomiya';

  @override
  String get categorySlot02 => 'Al-Imän wa Al-Tawakkul';

  @override
  String get categorySlot03 => 'Tafakkur f Salät';

  @override
  String get categorySlot04 => 'Al-Sabr wa Al-Amaл';

  @override
  String get categorySlot05 => 'Ŧlub Al-Maghfira';

  @override
  String get categorySlot06 => 'Al-Raḥma wa Al-Ŧaf';

  @override
  String get categorySlot07 => 'Al-Imän wa Al-Quwwa';

  @override
  String get categorySlot08 => 'Qalb Šäkir';

  @override
  String get categorySlot09 => 'Maqsad Al-Ḥayä';

  @override
  String get categorySlot10 => 'Rawäbiŧ Al-Äila';

  @override
  String get categorySlot11 => 'Al-Salämä Al-Näfisya';

  @override
  String get categorySlot12 => 'Ḥikmat An-Nabi';

  @override
  String get categorySlot13 => 'Al-Akhlaq Al-Ḥasana';

  @override
  String get categorySlot14 => 'Muqäwamat Al-Ŧagwä';

  @override
  String get categorySlot15 => 'Dikr Al-Masä';

  @override
  String get categoryCustom => 'Tafakkur Šaḫsi';

  @override
  String get dhikrMeaningSubhanallah => 'Subḥän Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Al-Ḥamdu lillah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah Akbar';

  @override
  String get quranVerseHeartAtRest => 'Alä bi Dikr Allah Taŧmaninn Al-Qulub';

  @override
  String get promptHint => 'Dğğ fläka f Qism Baš Taḥṣal ala Traḥya Islämiya';

  @override
  String get currentLanguage => 'Luwga Al-Ḥäliya';

  @override
  String get settingsLanguage => 'Aʿdädät Luwga';

  @override
  String get settingsTitle => 'Aʿdädät';

  @override
  String get chooseLanguage => 'Ḫtər Luwgtak';

  @override
  String get continueCta => 'Qaddem';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count klmät',
      one: '$count klma',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Khiyarät';

  @override
  String get newCta => 'Gdid';

  @override
  String get actionsTitle => 'Ašno Bġiti Tďir?';

  @override
  String get copy => 'Nšl';

  @override
  String get share => 'Bďaa';

  @override
  String get close => 'Sgel';

  @override
  String get copiedToast => 'Nšl ila Al-Ḥäfïḍa';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Mä Qdarnaš Nqallbu Jawäb Gdid';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nBġiti Tŕäwll Tikrär?';
  }

  @override
  String get cancelCta => 'Bätél';

  @override
  String get retryCta => 'Ḁäwll';

  @override
  String get authTitle => 'Ḣlla Ḫásäbak';

  @override
  String get continueAsGuest => 'Dkhul ki Dïf';

  @override
  String get signInGoogle => 'Dkhul b Google';

  @override
  String get signInApple => 'Dkhul b Apple';

  @override
  String get signInEmail => 'Dkhul b Email';

  @override
  String get upgradeWithApple => 'Qäddem b Apple';

  @override
  String get mustAccept => 'Ḫss Tqbäl Šurtüt Al-Khidma wa Dïql Al-Siyäsa';

  @override
  String get termsLabel => 'Qbält Šurtüt Al-Khidma';

  @override
  String get privacyLabel => 'Qrït Siyäsat Al-Khususiya';

  @override
  String get marketingOptIn => 'Qbält Nstaqbäl Akhbär wa ʿUrüd';

  @override
  String get openTerms => 'Šurtüt Al-Khidma';

  @override
  String get openPrivacy => 'Siyäsat Al-Khususiya';

  @override
  String get accountSection => 'Al-Ḫás';

  @override
  String get guestMode => 'Wḍya Al-Dïf';

  @override
  String get signedIn => 'Dakhal';

  @override
  String get upgradeHint => 'Ḫäfïḍ Tafäkkurak ʿala Al-Ağhiza b Hlq Ḫás';

  @override
  String get upgradeWithGoogle => 'Qäddem b Google';

  @override
  String get signOut => 'Khruğ';

  @override
  String get snackUpgraded => 'Ḫás Mraqqqa b Google ✅';

  @override
  String get snackSignedIn => 'Dakhal b Google ✅';

  @override
  String get snackSignedOut => 'Khruğ';

  @override
  String get snackSignedInApple => 'Dakhal b Apple ✅';

  @override
  String get snackSignedInGoogle => 'Dakhal b Google ✅';

  @override
  String get snackUpgradedApple => 'Ḫás Mraqqqa b Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Ḫás Mraqqqa b Google ✅';

  @override
  String get historyTitle => 'Tafäkkur Sabëq';

  @override
  String get historyOpenCta => 'Tafäkkur Sabëq';

  @override
  String get historyEmpty => 'Mä Kayn Tafäkkur Mḥfüḏ Ŕäs.';

  @override
  String get historyDeleteTitle => 'Ḥïf Tafäkkur?';

  @override
  String get historyDeleteBody => 'Hadä Ġädi Ḥïf Al-ʿOnwän Diyäl Al-Ḫtïär.';

  @override
  String get deleteCta => 'Ḥïf';

  @override
  String get historyButton => 'Tafäkkur Sabëq';

  @override
  String get historyEmptyTitle => 'Mä Kayn Tafäkkur Ŕäs';

  @override
  String get historyEmptyBody =>
      'Qälleb Ḥäğa Wäla - Tafäkkurak Al-Mḥfüḏ Ġädi Żhar Hnä.';

  @override
  String get historyDelete => 'Ḥïf';

  @override
  String get footerTitle => 'B Wilaya, Al-Imän wa Al-Sabr';

  @override
  String get footerSubtitle => 'Salä Waḥda Kul Marra';

  @override
  String get genericErrorSnack => 'Ḥaja Mä Tġät Ṣṣah - Ŕäwll Mʿä Šwiyä.';

  @override
  String get upgradeAccountCta => 'Ḫäfïḍ Tafäkkurak ʿala Al-Ağhiza – Ḥlaq Ḫás';

  @override
  String get deleteAccount => 'Ḥïf Al-Ḫás';

  @override
  String get exportData => 'Sdir Al-Byänät Dyali';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => 'Qal Al-Ġḍb 🐯\nAyara Ḫtäğat Waqqt Sabëq…';

  @override
  String get rateDailyLimit =>
      'Kemmalt Tafäkkurak Tâ Al-Yomma.\nḪúd Tafäkkur Akhra wa Lla Ḫuss Tŕaqqca ila Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Sträfft Kul Tafäkkurak.\nẒäf Akhar wa Lla Ḫuss Tŕaqqca ila Wilaya Baš Tqäddamm.';

  @override
  String get rateGraceCreditsExhausted =>
      'Kemmalt Tafäkkurak Tâ Al-Yomma.\nḪúd Tafäkkur Akhra wa Lla Ḫuss Tŕaqqca ila Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya Fataḥ Khässiyät, Aqsäm Gdida, wa Bäğ Khäs.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tafäkkurak Farëġa Tâ Al-Yomma. Al-Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Mä Qdarnaš Nšüfü Tafäkkurak: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ḥaja Mä Tġät Ṣṣah F Waqt Tḥqqaq Mn Tafäkkurak.';

  @override
  String get aiFallbackGeneric => 'Ḥaja Mä Tġät Ṣṣah - Ŕäwll Mʿä Šwiyä.';

  @override
  String get limitSectionTitle => 'Tafäkkur';

  @override
  String get limitTodayLabel => 'Ästeʿmäl';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Tafäkkur Al-Bäqqa: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Al-Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Tḥammäl…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Tafäkkur';

  @override
  String get aiLimitSubtitle =>
      'Kul Jawäb Ästeʿmäl Tafäkkur Waḥäd. Standard Fïh Tafäkkur Awwaliya. Wilaya Fataḥ Aqsäm Khässa wa Tqäddar Ǧïm.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total Tafäkkur Ästeʿmäl';
  }

  @override
  String get creditsSectionTitle => 'Tafäkkur';

  @override
  String get creditsUsageLabel => 'Ästeʿmäl';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Tafäkkur Al-Bäqqa: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Al-Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Tḥammäl…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Tafäkkur';

  @override
  String get creditsSubtitle =>
      'Kul Jawäb Ästeʿmäl Tafäkkur Waḥäd. Standard Fïh Tafäkkur Awwaliya. Wilaya Fataḥ Aqsäm Khässa wa Tqäddar Ǧïm.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total Tafäkkur Ästeʿmäl';
  }

  @override
  String get settingsDeleteTitle => 'Ḥïf Al-Ḫás';

  @override
  String get settingsDeleteDescription =>
      'Ḥïf Al-Ḫás wa Kmmalit Al-Byänät Dyälak.';

  @override
  String get settingsDeleteButtonLabel => 'Ḥïf Al-Ḫás Dyali';

  @override
  String get settingsDeleteDialogTitle => 'Ḥïf Al-Ḫás?';

  @override
  String get settingsDeleteDialogBody =>
      'Hadä Al-ʿämmäliya Dä̈ma wa Mä Qädra Tŕağjäʿ.\n\nKul Al-Muḥädatat wa Al-Tärikḫ wa Alʿumum Ġädi Tḥïf.';

  @override
  String get settingsDeleteDialogCancel => 'Bätél';

  @override
  String get settingsDeleteDialogConfirm => 'Ḥïf';

  @override
  String get settingsFreeLimitUsedTitle => 'Tafäkkur Awwaliya Ástehláka';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Tafäkkur Awwaliya Diyäl Al-Ağhiza Dïk Ástehláka. Ŕaqqca ila Wilaya wa Lla Štri Tafäkkur Baš Tqäddam.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Tafäkkur Awwaliya Ástehláka';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Tafäkkur Awwaliya Diyäl Al-Ağhiza Dïk Ástehláka. Ŕaqqca ila Wilaya wa Lla Štri Tafäkkur Baš Tqäddam.';

  @override
  String get deviceBoundError =>
      'Al-Ağhiza Dïk Tqrän Mʿä Ḫás Akhra. Dkhul B Al-Ḫás Al-Aṣali.';

  @override
  String get premiumTitle => 'Wḍya Wilaya';

  @override
  String get premiumSubtitleBasic => 'Afataḥ Kmmalit Tajribat Ayara.';

  @override
  String get premiumSubtitlePremium => 'Nta F Wilaya. Ḫtäğ Tafäkkur Zäyda?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Al-Plan Diyäl Hadak: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Tafäkkur: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Alšrä Mä Kädra Tâ Hadâ Al-Waqt.';

  @override
  String get premiumSignInToPurchase =>
      'Dkhul Baš Tstri Tafäkkur wa Lla Tafataḥ Wilaya.';

  @override
  String get premiumRestorePurchases => 'Rgäʿ Al-Šrayät';

  @override
  String get premiumProcessing => 'Tnfïd…';

  @override
  String get premiumRestoreHintTitle =>
      'Šrït Wilaya wa Lla Tafäkkur F Al-Ağhiza Dïk wa Lla Akhra?';

  @override
  String get premiumRestoreHintBody => 'Rgäʿ Al-Šrayät Dïk Ila Kan Mä Tḥzrät.';

  @override
  String get premiumBuyCredits200 => 'Štri 200 Tafäkkur';

  @override
  String get premiumBuyCredits400 => 'Štri 400 Tafäkkur';

  @override
  String get premiumBecomePremiumOneTime => 'Ŕaqqca ila Wilaya';

  @override
  String get premiumTopupHint =>
      'B Wilaya, Qädra Tŕäfq Tafäkkur Zäyda Waqqta Lli Ḫtäğ.';

  @override
  String get premiumUpgradeCta => 'Ŕaqqca';

  @override
  String get premiumRequiredForCategory =>
      'Al-Qism Dä Lla Ila Lli Wilaya. Ŕaqqca F Settings Baš Tfataḥ Kmmalit Al-Muḥtawa.';

  @override
  String get premiumBenefitsBasic =>
      'Iftäḥ Wilaya Baš Tḥṣäl Tafäkkur Zäyda wa Aqsäm Khässa wa Tqäddam Bidun Tawaqqufa.';

  @override
  String get premiumBenefitsPremium =>
      'Nta F Wilaya. Ila Bït Tḥtäğ Tafäkkur, Żäf wa Qäddam Bidun Tawaqqufa.';

  @override
  String get premiumButtonBecomePremium => 'Iftäḥ Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Żäf 1000 Tafäkkur';

  @override
  String get premiumBadge => 'Wilaya Nšëṭta';

  @override
  String get premiumLoadingStore => 'Tḥammäl Al-Mukhtazin…';

  @override
  String get premiumProductNotAvailable =>
      'Al-Muntaj Dä Mä Kayn F Al-Mukhtazin Ŕäs. Ŕäwll Mʿä Šwiyä.';

  @override
  String get premiumPurchaseError => 'Ḥaja Mä Tġät Ṣṣah B Al-Šrä. Ŕäwll.';

  @override
  String get premiumBuyCredits100 => 'Żäf 100 Tafäkkur';

  @override
  String get premiumFeatureLocked =>
      'Iftäḥ Wilaya Baš Tstaqbäl Hadi Al-Khässiya.';

  @override
  String get lockedCategoriesHint =>
      'Baʿd Al-Aqsäm Ḥsriyya Lla Lia Wilaya. Iftaḥhum Baš Šüf Kmmalit Al-Tafäkkur.';

  @override
  String get freePlanBlockedTitle => 'Sträfft Tafäkkur Awwaliak';

  @override
  String get freePlanBlockedBody =>
      'Nta F Standard Plan B Tafäkkur Awwaliya, wa Wssallt Al-Ḥdd. Baš Tqäddam - wa Tfataḥ Aqsäm Khässa - Ŕaqqca ila Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Šüf Khiyarät Wilaya T Ḥta';

  @override
  String get graceBlockedTitle => 'Sträfft Tafäkkur Awwaliak';

  @override
  String get graceBlockedBody =>
      'Nta F Standard Plan B Tafäkkur Awwaliya, wa Wssallt Al-Ḥdd. Baš Tqäddam - wa Tfataḥ Aqsäm Khässa - Ŕaqqca ila Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Šüf Khiyarät Wilaya T Ḥta';

  @override
  String get rateGuestMustSignIn => 'Dkhul Baš Tstaqbäl Ayara wa Tafäkkurak.';

  @override
  String get guestNoCreditsTitle => 'Wḍya Al-Dïf';

  @override
  String get guestNoCreditsBody =>
      'Ki Dïf Qädra Tšüf Al-Applik, Walakin Mä Qädra Tstaqbäl Tafäkkur. Dkhul Baʿdän F Settings Baš Tstaqbäl.';

  @override
  String get guestDialogContinue => 'Qäddem';

  @override
  String get guestDialogLoginInstead => 'Dkhul Bidäl';

  @override
  String get optionalLabel => 'Khïäri';

  @override
  String get accountDeleteSuccessTitle => 'Al-Ḫás Tḥïf';

  @override
  String get accountDeleteSuccessBody =>
      'Al-Ḫás wa Kmmalit Al-Byänät Dyälak Tḥïfat Diyäl Ssṭah.';

  @override
  String get accountDeleteSuccessClose => 'Sgel';

  @override
  String get accountDeleteErrorTitle => 'Mä Qdarnaš Nḥïfu Al-Ḫás';

  @override
  String get accountDeleteErrorClose => 'Hawä';

  @override
  String get accountDeleteReauthCancelled =>
      'Al-Tḥqqaq Täani Tllgïat. Dkhul Tikrär wa Ŕäwll.';

  @override
  String get accountDeleteReauthRequired =>
      'Al-Ḫás Dkhlat Tḥtäğ Dakhlol Ḥdïd. Khruğ, Dkhul Tikrär, wa Ŕäwll.';

  @override
  String get settingsDeletePermanentWarning =>
      'Hadä Al-ʿämmäliya Dä̈ma wa Mä Qädra Tŕağjäʿ. Kmmalit Al-Byänät Ġädi Tḥïf.';

  @override
  String get dailyGraceTitle => 'Traḥya Yomiya';

  @override
  String get dailyGraceScriptureLabel => 'ÄYAT AL-YOM';

  @override
  String get dailyGraceSaintLabel => 'AL-ÄLÏM DIYÄL AL-ĀSBUʿ';

  @override
  String get dailyGraceReflectionLabel => 'TAFÄKKUR AL-MASÄ';

  @override
  String get dailyGraceCopiedToast => 'Äyat Nšälat ila Al-Ḥäfïḍa';

  @override
  String get locationConsentLabel =>
      'Ạllau Ayara Ästaqbäl Al-Mawqiʿ Dyali Baš Tḥṣäl Ittigäh Al-Qiblä wa Waqt Salät';

  @override
  String get locationConsentHint =>
      'Ästeʿmäl Lla Diyäl Hädi Al-Khässiyät. Al-Mawqiʿ Dïk Mä Ttnšär wa Lla Tḥfäḏ.';

  @override
  String get askPageTitle => 'Suäl Ayara';

  @override
  String get askPageDescription =>
      'Suäl Ayara Äymán Ḥäğa ʿal Al-Imän, Salät, Al-Ḥayä, wa Musämaräh wa Tḥṣäl ʿala Traḥya Mabniyya ʿala Al-Quran wa Taʿalïm Ähl Al-Bayt.';

  @override
  String get askPageInputHint => 'Ktäb Al-Suäl Dïk Hnä…';

  @override
  String get askPageSubmitCta => 'Suäl';

  @override
  String get askPageInputEmptyError => 'Ḫss Tktäb Suäl Awala.';

  @override
  String get askResultYourQuestion => 'Al-Suäl Dyäl Hadak';

  @override
  String get guidancePageTitle => 'Ittïğäh Al-Qiblä';

  @override
  String get qiblaFacingMecca => 'Mušallïʿa Nia Al-Makkä';

  @override
  String get qiblaCompassInstruction =>
      'Hawwäl Al-Häwf Dyäl Hata Al-İbra Dïk Al-Dhhabia Ttwaqqäf ʿala Al-ʿulaaw.\nHada Al-Ittïğäh Qibla (Makka).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Išärat GPS Ḍaʿifa. Khruğ Bark Wa Dğğ Retry.';

  @override
  String get qiblaRetry => 'Ŕäwll';

  @override
  String get qiblaTitle => 'Ittïğäh Al-Qiblä';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km Ila Makka';
  }

  @override
  String get qiblaLocationNeededTitle => 'Al-Mawqiʿ Ḫss';

  @override
  String get qiblaLocationNeededBody =>
      'Ạllau Wäsl Al-Mawqiʿ Baš Ayara Tḥṣäb Ittïğäh Al-Kaʿba F Makka Mn Fuq Nta.';

  @override
  String get qiblaOpenSettings => 'Iftäḥ Aʿdädät';

  @override
  String get qiblaCompassLoading => 'Tḥawwal Al-Mawqiʿ…';

  @override
  String get qiblaTowardMecca => 'Ttïğäh Makka';

  @override
  String get prayerTimesTitle => 'Waqt Al-Salät';

  @override
  String get prayerTimesFajr => 'Subḥ';

  @override
  String get prayerTimesDhuhr => 'Dhuhr';

  @override
  String get prayerTimesAsr => 'ʿAsr';

  @override
  String get prayerTimesMaghrib => 'Mäġrib';

  @override
  String get prayerTimesIsha => 'ʿIšä';

  @override
  String get prayerTimesLocationNeededTitle => 'Al-Mawqiʿ Ḫss';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ạllau Wäsl Al-Mawqiʿ Baš Ayara Tḥṣäb Waqt Salät Ṣḥïḥ F Mdïnätk.';

  @override
  String get prayerTimesNextLabel => 'Al-Jäy';

  @override
  String get prayerTimesDoneLabel => 'Kmäl';

  @override
  String get monthlyPrayerTimesTitle => 'Waqt Salät Al-Šahr';

  @override
  String get monthlyPrayerTimesViewButton => 'Šüf Al-Šahr Kmäl';

  @override
  String get monthlyPrayerTimesNextMonth => 'Al-Šahr Al-Jäy';

  @override
  String get monthlyPrayerTimesDayHeader => 'Al-Yom';

  @override
  String get sharePrayerTimes => 'Bďaa Waqt Salät';

  @override
  String get notificationsSectionTitle => 'Tanbyihät';

  @override
  String get notificationsSectionSubtitle =>
      'Tanbyih Al-Salät, Al-Ḥädath, wa Akhra';

  @override
  String get dailyReflectionReminderTitle => 'Tafäkkur Yomï';

  @override
  String get dailyReflectionReminderDescription =>
      'Tanbyih Ẓarifïf Kul Yom Baš Tdkhäl Ayara wa Tttaṣäl B Al-Imän Dyäl Hadak.';

  @override
  String get dailyReflectionReminderEnable => 'Fäʿäl Tanbyih Al-Yom';

  @override
  String get dailyReflectionReminderTimeLabel => 'Waqt Tanbyih';

  @override
  String get prayerNotificationsTitle => 'Tanbyïh Al-Salät';

  @override
  String get prayerNotificationsDescription =>
      'Tḥṣäl Tanbyih Ẓarifïf Qbäl Kul Salät Baš Tqqäwd Mttaṣäll Tul Al-Yom.';

  @override
  String get prayerNotificationsEnable => 'Fäʿäl Tanbyih Salät';

  @override
  String get prayerNotificationsOpenSettings => 'Iftäḥ Aʿdädät Tanbyih';

  @override
  String get prayerNotificationsDenied => 'Tanbyihät Mʿṭṭäla';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ruḥ Ila Settings wa Ạllau Tanbyihät Lia Ayara Baš Tḥṣäl Tanbyih Waqt Salät.';

  @override
  String get notificationsConsentLabel => 'Ạllau Tanbyihät Lia Waqt Salät';

  @override
  String get prayerNotifTitleFajr => '🌅 Subḥ — Salät Al-Subḥ';

  @override
  String get prayerNotifBodyFajr =>
      'Salät Al-Subḥ Hiya Salät Subḥiyät Ähl Al-Bayt. Amir Al-Muʾminïn ʿAli (ʿAS) Qäl: Ḥḥräs Salät Al-Fağr Ki Kïf Tnäḥï Al-Äġlä. Qqum wa Ttâhhur wa Qüm Amma Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Salät Ad-Dhuhr';

  @override
  String get prayerNotifBodyDhuhr =>
      'A-Aimma Diyäl Ähl Al-Bayt Ḥabbaw Kul Waqt Dikr. Qäqef Al-ʿAml, Jämaʿ Dhuhr B Asr Ila Lla, wa Rrağäʿ Qalbak Lia Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ ʿAsr — Salät Al-ʿAsr';

  @override
  String get prayerNotifBodyAsr =>
      'Ḥḥräs Al-Salät, Hiya ʿAhd Baynak wa Bayän Allah. Waqt ʿAsr Jäa - Mä Tḥällï Bidun Dikr.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Mäġrib — Salät Al-Mäġrib';

  @override
  String get prayerNotifBodyMaghrib =>
      'Al-Šams Ġäbat - Waqt Qaddasa Ähl Al-Bayt Bih Lia Al-Duʿä. Qdäm Salät Al-Mäġrib wa Nušur Yadak Lia Allah F Duʿä Qbäl Al-Layl.';

  @override
  String get prayerNotifTitleIsha => '🌙 ʿIšä — Salät Al-Layl';

  @override
  String get prayerNotifBodyIsha =>
      'Tamäm Al-Yom B Šärikä Allah. Al-Aimma Šağğʿaw Salät Al-Layl Bʿda ʿIšä - Walakin Awäla, Kmäl ʿIšä wa Sgäl Al-Yom B Dhkruh.';

  @override
  String get outOfReflectionsBannerText => 'Sträfft Kmmalit Tafäkkurak';

  @override
  String get outOfReflectionsBannerCta => 'Ḣmil Akhra';

  @override
  String get dhikrPageTitle => 'Dikr';

  @override
  String get dhikrTapToCount => 'Dğğ Al-Dära Baš ʿdd';

  @override
  String get dhikrResetButton => 'ʿwäd';

  @override
  String get dhikrComplete => 'Mashallah';

  @override
  String get dhikrCompleteMessage =>
      'Kemmalt 100 Dikr Allah. Ḥayfa Tkunn Nûr Qalbak.';

  @override
  String get disclaimerTitle => 'ʿla Traḥya Diyäl Applik';

  @override
  String get disclaimerBody =>
      'Ayara Taʿṭi Tafäkkur Islämï, Tanbyihät, wa Muḥtwa Ruḥani Baš Tʿawnäk F Mašïʿarak Al-Imän, Mabniya ʿala Al-Quran wa Taʿalïm Ähl Al-Bayt. Hadä Al-Muḥtwa Taʿṭa Lia Qaṣd ʿÄm wa Ilhämä.\n\nAyara Mä Tabdäl Al-ʿÄlim.\nTrafäkkur F Applik Dï Mä Tbnäd ʿälïm Islämï, Marja̱, wa Lla Mudarris Fäqih. F Al-Isläm Al-Šïʿi, Al-Traḥya Mabniya ʿala Madhhab Al-Ǧaʿfari wa Al-Taqalyid Diyäl Taqlïd Marja̱ Ḥayy - Fäqih ʿädal Yuhdi Almuʾminïn. Ila Ḫass Taʿraf ʿan Ahkäm Dïniya, Ḥalal wa Harâm, wa Lla Wäğibät, Akṣḥäb ʿälïm wa Lla Marja̱ F Jämʿätak.\n\nAyara Mä Taʿṭa Fatwä.\nApplik Dï Mä Aqṭ ʿala Masäʾäl Fïqh wa Lla Wäğibät Šakhṣiya. Wäla Ḥäğa Hnä Ġädi Tʿtäbar Fatwä wa Lla Täʿalïm Dïni Mlzim.\n\nMakänt Ähl Al-Bayt.\nF Al-Isläm Al-Šïʿi, An-Nabi Muhammad ﷺ wa Ähl Baytuh Al-Aṭhhär - Ähl Al-Bayt - Huma Al-Qäda Al-Haqqanïyïn. Al-Ithnä ʿAšar Imäm Diyäl Ähl Al-Bayt Hum Almuftassïrun Al-Ilähiyïn. Al-Muḥtwa F Applik Dï ʿaksäs Hadä Al-Taqalyid wa Qasad Iḥtirämuh.\n\nAl-Ǧämʿa Ḥäğa.\nApplik Dï Qasad Tšğʿ Ittiṣälak B Al-Imän Wa Ttahrim Dawr Masğdak, Al-Markaz Islämï, wa Al-ʿulamä̱ Dïälik. Nrğûnäk Tqqäwd Mttaṣäll Bha wa Ttäʿällam Mn Älïm Ḥaqqi Qrib Mïn Hadak.';

  @override
  String get disclaimerClose => 'Fahamt';

  @override
  String get disclaimerInfoTooltip => 'ʿla Traḥya Diyäl Applik';

  @override
  String get disclaimerSettingsSubtitle => 'Lia Qaṣd ʿÄm. Dğğ Baš Taqra Kmäl.';

  @override
  String get disclaimerSectionHeader => 'Tanhïh Traḥya';

  @override
  String get navHome => 'Däir';

  @override
  String get navReflect => 'Tafäkkur';

  @override
  String get navDuas => 'Äduʿiya';

  @override
  String get navCalendar => 'Täqwïm';

  @override
  String get dashboardToday => 'TÂYUMA';

  @override
  String get dashboardComingUp => 'Al-Jäy';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Äyyäm',
      one: 'yom',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Wuṣûl Ssrīʿ';

  @override
  String get quickActionQibla => 'Ittïğäh Al-Qiblä';

  @override
  String get quickActionDhikr => 'Dikr';

  @override
  String get quickActionDailyGrace => 'Traḥya';

  @override
  String get quickActionPrayerTimes => 'Waqt Salät';

  @override
  String get askAyaraTitle => 'Suäl Ayara';

  @override
  String get askAyaraSubtitle =>
      'Suäl Äymán Suäl Islämï wa Tḥṣäl ʿala Jawäb Fikir wa Möğih.';

  @override
  String get askAyaraHint => 'Mäthäl: Ashno Ḥamiyät Ramadän?';

  @override
  String get askAyaraSubmit => 'Suäl';

  @override
  String get wisdomOfTheDayTitle => 'Ḥikma Al-Yom';

  @override
  String get calendarScreenTitle => 'Täqwïm Islämï';

  @override
  String get calendarUpcomingOccasions => 'Al-Muḥassarat Al-Jäya';

  @override
  String get calendarOccasionRemindersTitle => 'Tanbyih Al-Muḥassarat';

  @override
  String get calendarOccasionRemindersHint =>
      'Tanbyih Ḥäir Al-Layla Qbäl Kul Muḥässär';

  @override
  String get calendarNotifPermissionDenied =>
      'Äḏn Tanbyih Täani. Fäʿäluh F Aʿdädät Ağhizak.';

  @override
  String get calendarNoEvents => 'Mä Kayn Ḥädath Al-Jäya.';

  @override
  String get calendarAddToPhone => 'Tambahkan ke Kalender Telepon';

  @override
  String get calendarAddedToPhone => 'Ditambahkan ke Kalender';

  @override
  String get calendarCountdownToday => 'TÂYUMA';

  @override
  String get calendarCountdownTomorrow => 'DDUWAL';

  @override
  String calendarCountdownDays(int days) {
    return 'F $days Äyyäm';
  }

  @override
  String get calendarAH => 'H';

  @override
  String get calendarMonthJan => 'Yänyär';

  @override
  String get calendarMonthFeb => 'Fäbrä';

  @override
  String get calendarMonthMar => 'Mars';

  @override
  String get calendarMonthApr => 'Abrïl';

  @override
  String get calendarMonthMay => 'Mäy';

  @override
  String get calendarMonthJun => 'Yunyu';

  @override
  String get calendarMonthJul => 'Yulyu';

  @override
  String get calendarMonthAug => 'Ġušt';

  @override
  String get calendarMonthSep => 'Šütäm';

  @override
  String get calendarMonthOct => 'Ūktûbar';

  @override
  String get calendarMonthNov => 'Nufänbär';

  @override
  String get calendarMonthDec => 'Dïšänbär';

  @override
  String get calendarSeasonMuharramEarly => 'Äyyäm Muḥarram - Tdhakkär Karbälä';

  @override
  String get calendarSeasonAshura => 'Ašûrä - Ya Ḥusayn (ʿAS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muḥarram - Äyyäm Ṣĕyyäm wa Tafäkkur';

  @override
  String get calendarSeasonArbaeen => 'Arbaʿïn - Arbaʿïn Yom Diyäl Ḥusayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ṭarïq Ila Arbaʿïn';

  @override
  String get calendarSeasonMabath => 'Al-Mabʿath Al-Mubärak - Fağr Al-Waḥy';

  @override
  String get calendarSeasonMidShaban =>
      'Nass Šaʿbän - Mawlid Imäm Al-Mahdï (ʿAJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadän Al-Mubärak - Šahr Al-Quran';

  @override
  String get calendarSeasonGhadir => 'ʿÏd Al-Ġadir Al-Mubärak!';

  @override
  String get hijriMonth1 => 'Muḥarram';

  @override
  String get hijriMonth2 => 'Ṣafär';

  @override
  String get hijriMonth3 => 'Rabïʿ Al-Awwal';

  @override
  String get hijriMonth4 => 'Rabïʿ Al-Thänï';

  @override
  String get hijriMonth5 => 'Jumädä Al-Awwal';

  @override
  String get hijriMonth6 => 'Jumädä Al-Thänï';

  @override
  String get hijriMonth7 => 'Rağab';

  @override
  String get hijriMonth8 => 'Šaʿbän';

  @override
  String get hijriMonth9 => 'Ramadän';

  @override
  String get hijriMonth10 => 'Šawwäl';

  @override
  String get hijriMonth11 => 'Dhu Al-Qiʿda';

  @override
  String get hijriMonth12 => 'Dhu Al-Hijja';

  @override
  String get duasScreenTitle => 'Äduʿiya wa Zïärat';

  @override
  String get duasSearchHint => 'Affta Äduʿiya, Zïärat…';

  @override
  String get duasFilterAll => 'Kmmalit';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Äduʿiya wa Zïärat',
      one: '$count duä',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Mä Kayn Äduʿiya.';

  @override
  String get duaCategoryDaily => 'Yomiya';

  @override
  String get duaCategoryWeekly => 'Äsbûʿiya';

  @override
  String get duaCategoryOccasions => 'Al-Muḥassarat';

  @override
  String get duaCategoryZiyarat => 'Zïärat';

  @override
  String get duaCategoryTasbih => 'Tasbïḥ';

  @override
  String get eventTypeBirth => 'Mawlid';

  @override
  String get eventTypeMartyrdom => 'Šähäda';

  @override
  String get eventTypeOccasion => 'Muḥässär';

  @override
  String get duaCopyTooltip => 'Nšäl At-Tarğäma';

  @override
  String get duaToggleTransliteration => 'Taḥrïf';

  @override
  String get duaToggleTranslation => 'Tarğäma';

  @override
  String get duaAskAiLabel => 'Ŧälab Mn Ayara Tšräḥ Hadä Al-Duä';

  @override
  String get duaAskAiLockedLabel => 'Ŧälab Mn Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Šuruḥ Ayara Lia Äʿḍä Wilaya. Ŕaqqca F Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ŧälab Mn Ayara ʿan \"$name\" - Ğä Qrib!';
  }

  @override
  String get duaCopiedToast => 'Duä Nšälat ila Al-Ḥäfïḍa.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah Akbar';

  @override
  String get tasbihAlhamdulillahMeaning => 'Al-Ḥamdu Lillah';

  @override
  String get tasbihSubhanallahMeaning => 'Subḥän Allah';

  @override
  String get tasbihResetTooltip => 'ʿwäd';

  @override
  String get tasbihCompleteTitle => 'Tasbïḥ Kmäl';

  @override
  String get tasbihCompleteMessage => 'Allah Taqbäl Dikrïk.';

  @override
  String get tasbihTapHint => 'Dğğ Äyynäyy Baš ʿdd';

  @override
  String get tasbihatScreenTitle => 'Qalïd Salät';

  @override
  String get tasbihatScreenSubtitle => 'TASBÏḤÄT AL-ARBAʿA';

  @override
  String get tasbihatScreenDescription =>
      'Qalïd Kmäl Diyäl Al-Tasbïḥät Lli Tqäl F Salät wa Bʿda - ʿala Tarïqat Ähl Al-Bayt (ʿA).';

  @override
  String get tasbihatArba3Title => 'TASBÏḤÄT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Tqäl F 3 wa 4 Rakʿa';

  @override
  String get tasbihatArba3Info =>
      'F Al-Fïqh Al-Šïʿi, Tasbïḥät Al-Arbaʿa Tabdäl Sürat Al-Fätiḥa F 3 wa 4 Rakʿa Diyäl Dhuhr, ʿAsr, Mäġrib, wa ʿIšä. Wäğiba Tqälha Marra Wäḥda, wa Mustaḥabba Tqälha Thälthat Märrät.';

  @override
  String get tasbihatArba3Translation =>
      'Subḥän Allah · Al-Ḥamdu Lillah\nLä Illäha Illa Allah · Allah Akbar';

  @override
  String get tasbihatArba3CompleteTitle => 'Al-Tïläwa Kmäla';

  @override
  String get tasbihatArba3CompleteMessage => 'Allah Yaqbäl Salätäk - Amïn';

  @override
  String get tasbihatArba3TapHint => 'Dğğ Bʿda Kul Tïläwa';

  @override
  String get tasbihatZahraSubtitle => 'Bʿda Kul Salät · 100 Ḥabba';

  @override
  String get tasbihatZahraOriginLabel => 'Al-Aṣl';

  @override
  String get tasbihatZahraHadith =>
      'Sïyyida Fäṭïma Al-Zahrä (ʿAS) Ŧälbat Mn An-Nabi ﷺ Khädim. Qäl: Älä Aqulak Likäy Ḥäğ Aḥsan? Qul Subḥänallah 33 Märra, Alḥamdulillah 33 Märra, wa Allahu Akbar 34 Märra Bʿda Kul Salät. Dä Ḥsan Lak Mn Khädim.';

  @override
  String get tasbihatZahraHadithSource => '— Biḥär Al-Anwär, Juzʾ 85';

  @override
  String get tasbihatZahraOpenCounter => 'Iftäḥ ʿaddäd Tasbïḥ';

  @override
  String get tasbihatDuasTitle => 'ÄDUʿIYA AL-MUSTAḤABBA';

  @override
  String get tasbihatDuasSubtitle => 'Bʿda Kmäl Salätäk';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Äyat Al-Kursï';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Bʿda Kul Salät Mafṛûḍa';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sürat Al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Man Qärä Äyat Al-Kursï Bʿda Kul Salät Mafṛûḍa, Mä Kayn Baynuh wa Bayän Al-Jäna Illä Al-Mawt. Imäm Al-Bäqir (ʿA) Qäl Hiya Mn Aʿẓäm Äyyät Al-Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawät';

  @override
  String get tasbihatDuaSalawatWhen => 'Bʿda Kul Salät · Tkhttäm Al-Äduʿiya';

  @override
  String get tasbihatDuaSalawatSource => 'Imäm Al-Ṣädiq (ʿA) — Al-Käfi';

  @override
  String get tasbihatDuaSalawatNote =>
      'Ṣalawät ʿala An-Nabi ﷺ wa Ähl Baytuh Mustaḥabba Tkhttäm Kul Duä. Imäm Al-Ṣädiq (ʿA) Qäl: \"Kul Duä Mʿallaq Ḥata Tṣalli ʿala Muhammad wa Äl Muhammad.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿä Al-Färağ';

  @override
  String get tasbihatDuaFarajWhen => 'Bʿda Kul Salät · Diyäl Imäm Tâğwmä';

  @override
  String get tasbihatDuaFarajSource => 'ʿAllamuh Imäm Al-Ḥasan Al-ʿAskarï (ʿA)';

  @override
  String get tasbihatDuaFarajNote =>
      'Duä Diyäl Zuhûr Imäm Al-Mahdï (ʿAF), Imäm Ath-Thänï ʿAšar, ʿAllamuh Äbuh. Tqäl Kul Yom Min Ŧärf Al-Šïʿa Bʿda Kul Salät Ki ʿäbädä Lia Al-Imäm Al-Ḥayy.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbïḥ Sïyyida Fäṭïma';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Bʿda Mäġrib wa ʿIšä · Makhṣûṣ Mustaḥabba';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imäm Al-Bäqir (ʿA) — Biḥär Al-Anwär';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imäm Al-Bäqir (ʿA) Qäl Tasbïḥ Al-Zahrä Bʿda ʿIšä Qbäl Än Täqoum Ahsan Mn 1000 Rakʿa Tätäṭawwuʿ. Nüruh Yṣʿad ila Al-Samäwät.';

  @override
  String get tasbihFatimaGiftPre => 'Hadiyya Mn An-Nabi';

  @override
  String get tasbihFatimaGiftPost => 'Tqäl Bʿda Kul Salät';

  @override
  String get prayerTrackerTitle => 'TÄTÄBBÂʿ SALÄT';

  @override
  String get prayerTrackerPrayed => 'Ṣallït';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count Yom Muttäṣäl';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Kmälit Kmmalit Salawät Tâyuma. Allah Yaqbäl.';

  @override
  String get dhikrTrackerTitle => 'TASBÏḤ AL-ZAHRÄ';

  @override
  String get dhikrTrackerCompletedToday => 'Kmäla Tâyuma';

  @override
  String get dhikrTrackerNotDoneToday => 'Mä Tmät Tâyuma';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count Yom Muttäṣäl';
  }

  @override
  String get dhikrReminderTitle => 'Tanbyih Tasbïḥ';

  @override
  String get dhikrReminderDescription =>
      'Tanbyih Ẓarifïf Kul Yom Baš Tqäl Tasbïḥ Al-Zahrä (ʿAS).';

  @override
  String get dhikrReminderEnable => 'Fäʿäl Tanbyih Tasbïḥ';

  @override
  String get dhikrReminderTimeLabel => 'Waqt Tanbyih';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Ḥadïth Al-Yom';

  @override
  String get hadithLabelArabic => 'AL-ʿARABÏYA';

  @override
  String get hadithLabelTranslation => 'AL-TARĞÄMA';

  @override
  String get hadithBadge => 'ḤADÏTH';

  @override
  String get hadithShare => 'Bďaa Hadä Al-Ḥadïth';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Sabëq';

  @override
  String get hadithNavNext => 'Al-Jäy';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Al-Arbaʿata ʿAšar Masûmïn';

  @override
  String get imamsScreenSubtitle =>
      'An-Nabi, Sïyyida Fäṭïma, wa Al-Ithnä ʿAšar Imäm - Al-Qäda Al-Haqqanïyïn';

  @override
  String get imamLabelBorn => 'Ä-Mawlid';

  @override
  String get imamLabelMartyrdom => 'Ash-Shahäda';

  @override
  String get imamLabelStatus => 'Al-Ḥäl';

  @override
  String get imamSectionBiography => 'AL-TARĞÄMA';

  @override
  String get imamSectionFamousSaying => 'QAWL ŠÄHÏR';

  @override
  String get imamRoleProphet => 'An-Nabi Al-Akhïr';

  @override
  String get imamRoleInfallible => 'Al-Masûm';

  @override
  String get imamOrdinal1 => 'Imäm 1';

  @override
  String get imamOrdinal2 => 'Imäm 2';

  @override
  String get imamOrdinal3 => 'Imäm 3';

  @override
  String get imamOrdinal4 => 'Imäm 4';

  @override
  String get imamOrdinal5 => 'Imäm 5';

  @override
  String get imamOrdinal6 => 'Imäm 6';

  @override
  String get imamOrdinal7 => 'Imäm 7';

  @override
  String get imamOrdinal8 => 'Imäm 8';

  @override
  String get imamOrdinal9 => 'Imäm 9';

  @override
  String get imamOrdinal10 => 'Imäm 10';

  @override
  String get imamOrdinal11 => 'Imäm 11';

  @override
  String get imamOrdinal12 => 'Imäm 12';

  @override
  String get duaAudioScreenTitle => 'Astämʿ Ila Äduʿiya';

  @override
  String get duaAudioScreenSubtitle =>
      'Ḫtär Duä Baš Tastämʿ. Dğğ Al-Bläṭa Baš Tstärt wa Lla Twqqaf.';

  @override
  String get duaAudioComingSoonMessage =>
      'Awṭ Hadä Al-Duä Ġädi Ykûn F Tahïdath Jäya.';

  @override
  String get duaAudioClose => 'Sgel';

  @override
  String get duaAudioError => 'Mä Qdarnaš Tḥammäl Al-Awṭ. Järr Mṭäbbʿak.';

  @override
  String get duaAudioMetaTransmittedBy => 'Nāqëluh';

  @override
  String get duaAudioMetaOccasion => 'Al-Muḥässär';

  @override
  String get duaAudioMetaDuration => 'Al-Mässa';

  @override
  String get quickActionDailyHadith => 'Ḥadïth Al-Yom';

  @override
  String get quickAction14Masumeen => '14 Masûmïn';

  @override
  String get quickActionListenDuas => 'Astämʿ';

  @override
  String get quickActionTasbihat => 'Qalïd Salät';

  @override
  String get pilgrimageSectionTitle => 'Al-Rḥala Al-Muqaddasa';

  @override
  String get pilgrimageSectionSubtitle =>
      'Qalïd Kmäl Diyäl Al-Hajj wa Al-ʿUmra - Al-Hajj Ila Bayt Allah Al-Ḥarâm F Makka';

  @override
  String get hajjCardTitle => 'Al-Hajj';

  @override
  String get hajjCardSubtitle => 'Al-Rukan Al-Khämis Diyäl Al-Isläm';

  @override
  String get hajjCardDescription =>
      'Al-Hajj Al-Kabïr - Wäğib Marra Wäḥda F Al-ʿUmr Lia Kul Muslim Qädir';

  @override
  String get hajjScreenTitle => 'Qalïd Al-Hajj';

  @override
  String get hajjScreenSubtitle => 'Qalïd Khṭwa B Khṭwa Diyäl Al-Hajj Al-Kabïr';

  @override
  String get umrahCardTitle => 'Al-ʿUmra';

  @override
  String get umrahCardSubtitle => 'Al-Hajj Al-Ṣäġïr';

  @override
  String get umrahCardDescription =>
      'Rḥäla Rûḥäniya Ġayyäba Jdä Lli Tqäl Äy Waqt Diyäl Al-Sänä';

  @override
  String get umrahScreenTitle => 'Qalïd Al-ʿUmra';

  @override
  String get umrahScreenSubtitle =>
      'Qalïd Khṭwa B Khṭwa Diyäl Al-ʿUmra Al-Ṣäġïra';

  @override
  String get pilgrimageStepsTitle => 'Al-Mänäsik wa Al-Khṭawät';

  @override
  String get pilgrimageImportantNotesTitle => 'Malḥûẓät Mûḥimma';

  @override
  String get pilgrimageDuaTitle => 'Dua untuk langkah ini';

  @override
  String get pilgrimageJafariNoteTitle => 'Catatan Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Lengkap';

  @override
  String get pilgrimageMarkDone => 'Tandai minangka rampung';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done dari $total langkah';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes menit';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Al-Ḥäğğ Al-Šïʿa';

  @override
  String get pilgrimageShiaNoteBody =>
      'Al-Ḥäğğ Al-Šïʿa ʿädatän Yusäfirûn Äyḍä Ila Al-Madïna Baš Yzûrû Qabr An-Nabi Muhammad (ﷺ) F Masğid An-Nabawi, wa Qubûr Al-Aimma F Jännat Al-Baqïʿ. Hadï Az-Zïärat ʿanduhä Ḥamiyyä Rûḥäniya ʿaẓïma wa Tʿtäbar Juzʾ Assasi Mn Al-Rḥäla Lia ʿumûm Al-Šïʿa.';

  @override
  String get hajjIntro =>
      'Al-Hajj Huwwa Al-Rukan Al-Khämis Diyäl Al-Isläm, Wäğib Marra Wäḥda F Al-ʿUmr Lia Kul Muslim Qädir Šarʿän wa Mäliyän. Tädä F Šahr Dhu Al-Ḥijja, wa Fïh Nqäfï ʿala Khutwät Nabiy Ibrahim (ʿAS), Abnih Ismäʿïl (ʿAS), wa Sïyyida Häğar. Lia Al-Šïʿa, Al-Hajj Äyḍä Fïh Zïärat Qubûr An-Nabi (ﷺ) wa Ähl Al-Bayt F Al-Madïna.';

  @override
  String get umrahIntro =>
      'Al-ʿUmra Hiya Al-Hajj Al-Ṣäġïr Ila Makka wa Bkhilâf Al-Hajj, Tqädär Täql Äy Waqt Diyäl Al-Sänä. Mä Wäğiba Walakin Fïh Ṭäb Rûḥani ʿaẓïm wa Tʿtäbar ʿäbädä Mustäḥabba Jdä. Tšärik Bʿd Al-Mänäsik B Al-Hajj Walakin Aqṣär, Fïh Arbaʿat Rükün Assasia.';
}
