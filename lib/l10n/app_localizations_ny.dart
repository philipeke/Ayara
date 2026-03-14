// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nyanja Chewa Chichewa (`ny`).
class AppLocalizationsNy extends AppLocalizations {
  AppLocalizationsNy([String locale = 'ny']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Sankhani chilankhulo chanu';

  @override
  String get languageSelectSub => 'Mutha kusintha izi pambuyo pake mu Zokonda';

  @override
  String get actionContinue => 'Pitirizani';

  @override
  String get languageSuggestedHeader => 'Zolimbikitsidwa';

  @override
  String get languageAllHeader => 'Zilankhulo zonse';

  @override
  String get languageSuggestedBadge => 'Zolimbikitsidwa';

  @override
  String get languageSearchHint => 'Sakani…';

  @override
  String get planBasic => 'Wamba';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Chitsogozo Chatsiku ndi Tsiku';

  @override
  String get categorySlot02 => 'Iman ndi Chikhulupiriro';

  @override
  String get categorySlot03 => 'Kuganizira pa Pemphero';

  @override
  String get categorySlot04 => 'Kupirira ndi Chiyembekezo';

  @override
  String get categorySlot05 => 'Funsani Chikhululukiro';

  @override
  String get categorySlot06 => 'Chifundo ndi Kumvera Ena Chisoni';

  @override
  String get categorySlot07 => 'Mphamvu ya Chikhulupiriro';

  @override
  String get categorySlot08 => 'Mtima Wothokoza';

  @override
  String get categorySlot09 => 'Cholinga cha Moyo';

  @override
  String get categorySlot10 => 'Maubwenzi a Banja';

  @override
  String get categorySlot11 => 'Mtendere Wamkati';

  @override
  String get categorySlot12 => 'Nzeru za Mneneri';

  @override
  String get categorySlot13 => 'Makhalidwe Abwino';

  @override
  String get categorySlot14 => 'Kanizani Mayesero';

  @override
  String get categorySlot15 => 'Dhikr ya Madzulo';

  @override
  String get categoryCustom => 'Kuganizira Kwanga';

  @override
  String get dhikrMeaningSubhanallah => 'Ulemerero ukhale kwa Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Matamando onse ndi a Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah ndi Wamkulu Kwambiri';

  @override
  String get quranVerseHeartAtRest =>
      'Ndithudi, ndi kukumbukira Allah komwe mitima imapeza mpumulo.';

  @override
  String get promptHint =>
      'Dinani gulu kuti mupeze chitsogozo ndi kuganizira kwa Chisilamu';

  @override
  String get currentLanguage => 'Chilankhulo chomwe chikugwiritsidwa ntchito';

  @override
  String get settingsLanguage => 'Zokonda za chilankhulo';

  @override
  String get settingsTitle => 'Zokonda';

  @override
  String get chooseLanguage => 'Sankhani chilankhulo chanu';

  @override
  String get continueCta => 'Pitirizani';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mawu',
      one: '$count liwu',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Zosankha';

  @override
  String get newCta => 'Chatsopano';

  @override
  String get actionsTitle => 'Mukufuna kuchita chiyani?';

  @override
  String get copy => 'Koperani';

  @override
  String get share => 'Gawani';

  @override
  String get close => 'Tsekani';

  @override
  String get copiedToast => 'Zakopedwa ku clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Sizingathe kupanga yankho latsopano';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nKodi mukufuna kuyesanso?';
  }

  @override
  String get cancelCta => 'Lekani';

  @override
  String get retryCta => 'Yesaninso';

  @override
  String get authTitle => 'Pangani akaunti yanu';

  @override
  String get continueAsGuest => 'Pitirizani ngati mlendo';

  @override
  String get signInGoogle => 'Lowani ndi Google';

  @override
  String get signInApple => 'Lowani ndi Apple';

  @override
  String get signInEmail => 'Lowani ndi Imelo';

  @override
  String get upgradeWithApple => 'Pitirizani ndi Apple';

  @override
  String get mustAccept =>
      'Muyenera kuvomera Migwirizano ya Ntchito ndi kuzindikira Ndondomeko ya Zachinsinsi.';

  @override
  String get termsLabel => 'Ndikuvomera Migwirizano ya Ntchito';

  @override
  String get privacyLabel => 'Ndawerenga Ndondomeko ya Zachinsinsi';

  @override
  String get marketingOptIn => 'Ndikuvomera kulandira nkhani ndi zopereka';

  @override
  String get openTerms => 'Migwirizano ya Ntchito';

  @override
  String get openPrivacy => 'Ndondomeko ya Zachinsinsi';

  @override
  String get accountSection => 'Akaunti';

  @override
  String get guestMode => 'Njira ya mlendo';

  @override
  String get signedIn => 'Walowa';

  @override
  String get upgradeHint =>
      'Sungani malingaliro anu pa zipangizo zonse popanga akaunti.';

  @override
  String get upgradeWithGoogle => 'Pitirizani ndi Google';

  @override
  String get signOut => 'Tulukani';

  @override
  String get snackUpgraded => 'Akaunti yakwezedwa ndi Google ✅';

  @override
  String get snackSignedIn => 'Walowa ndi Google ✅';

  @override
  String get snackSignedOut => 'Watuluka';

  @override
  String get snackSignedInApple => 'Walowa ndi Apple ✅';

  @override
  String get snackSignedInGoogle => 'Walowa ndi Google ✅';

  @override
  String get snackUpgradedApple => 'Akaunti yakwezedwa ndi Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akaunti yakwezedwa ndi Google ✅';

  @override
  String get historyTitle => 'Malingaliro am\'mbuyomu';

  @override
  String get historyOpenCta => 'Malingaliro am\'mbuyomu';

  @override
  String get historyEmpty => 'Palibe malingaliro osungidwa pano.';

  @override
  String get historyDeleteTitle => 'Chotsani lingaliro?';

  @override
  String get historyDeleteBody =>
      'Izi zichotsa chinthu chosankhidwacho kwamuyaya.';

  @override
  String get deleteCta => 'Chotsani';

  @override
  String get historyButton => 'Malingaliro Am\'mbuyomu';

  @override
  String get historyEmptyTitle => 'Palibe malingaliro pano';

  @override
  String get historyEmptyBody =>
      'Pangani china kaye — zinthu zanu zosungidwa zidzawonekera pano.';

  @override
  String get historyDelete => 'Chotsani';

  @override
  String get footerTitle => 'Ndi Wilaya, Iman ndi Sabr';

  @override
  String get footerSubtitle => 'Pemphero limodzi pa nthawi imodzi';

  @override
  String get genericErrorSnack =>
      'China chake chalakwika — chonde yesaninso posachedwa.';

  @override
  String get upgradeAccountCta =>
      'Sungani malingaliro anu pa zipangizo zonse – pangani akaunti';

  @override
  String get deleteAccount => 'Chotsani akaunti';

  @override
  String get exportData => 'Tumizani deta yanga kunja';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Pang\'onopang\'ono 🐯\nAyara ikufuna kamphindi musanapite ku lotsatira…';

  @override
  String get rateDailyLimit =>
      'Malingaliro anu atha pakadali pano.\nPezani ena kapena kwezani kupita ku Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Mwagwiritsa ntchito malingaliro anu onse.\nOnjezerani kapena kwezani kupita ku Wilaya kuti mupitirize.';

  @override
  String get rateGraceCreditsExhausted =>
      'Malingaliro anu atha pakadali pano.\nPezani ena kapena kwezani kupita ku Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya imatsegula zinthu zapamwamba, magulu am\'tsogolo, ndi baji yapadera.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Malingaliro anu alibe pano. Dongosolo: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Sizingathe kuyang\'ana malingaliro anu: $message';
  }

  @override
  String get rateCheckGenericError =>
      'China chake chalakwika pamene tinkayang\'ana malingaliro anu.';

  @override
  String get aiFallbackGeneric =>
      'China chake chalakwika — chonde yesaninso posachedwa.';

  @override
  String get limitSectionTitle => 'Malingaliro';

  @override
  String get limitTodayLabel => 'Kugwiritsa ntchito';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Malingaliro otsala: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Dongosolo: $plan';
  }

  @override
  String get limitLoadingLabel => 'Ikutsegula…';

  @override
  String get limitLoadingLabelDescription =>
      'Imawonedwa pa khadi la malingaliro pamene ziwerengero zikukokedwa.';

  @override
  String get aiLimitTitle => 'Malingaliro';

  @override
  String get aiLimitSubtitle =>
      'Yankho lililonse limagwiritsa ntchito lingaliro limodzi. Standard imaphatikiza malingaliro oyambira. Wilaya imatsegula magulu apamwamba ndipo imalola kuwonjezera.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total malingaliro agwiritsidwa ntchito';
  }

  @override
  String get creditsSectionTitle => 'Malingaliro';

  @override
  String get creditsUsageLabel => 'Kugwiritsa ntchito';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Malingaliro otsala: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Dongosolo: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Ikutsegula…';

  @override
  String get creditsLoadingLabelDescription =>
      'Imawonedwa pamene ziwerengero za malingaliro zikukokedwa.';

  @override
  String get creditsTitle => 'Malingaliro';

  @override
  String get creditsSubtitle =>
      'Yankho lililonse limagwiritsa ntchito lingaliro limodzi. Standard imaphatikiza malingaliro oyambira. Wilaya imatsegula magulu apamwamba ndipo imalola kuwonjezera.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total malingaliro agwiritsidwa ntchito';
  }

  @override
  String get settingsDeleteTitle => 'Chotsani akaunti';

  @override
  String get settingsDeleteDescription =>
      'Chotsani akaunti yanu ndi deta yonse yolumikizidwa nayo kwamuyaya.';

  @override
  String get settingsDeleteButtonLabel => 'Chotsani akaunti yanga';

  @override
  String get settingsDeleteDialogTitle => 'Chotsani akaunti?';

  @override
  String get settingsDeleteDialogBody =>
      'Ichi ndi chinthu chosatha ndipo sichingabwezedwe.\n\nZokambirana zanu zonse, mbiri yanu ndi zambiri za akaunti yanu zidzachotsedwa.';

  @override
  String get settingsDeleteDialogCancel => 'Lekani';

  @override
  String get settingsDeleteDialogConfirm => 'Chotsani';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Malingaliro oyambira agwiritsidwa ntchito';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Malingaliro oyambira a chipangizochi agwiritsidwa ntchito. Kwezani ku Wilaya kapena gulani malingaliro ena kuti mupitirize.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Malingaliro oyambira agwiritsidwa ntchito';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Malingaliro oyambira a chipangizochi agwiritsidwa ntchito. Kwezani ku Wilaya kapena gulani malingaliro ena kuti mupitirize.';

  @override
  String get deviceBoundError =>
      'Chipangizochi chalumikizidwa kale ndi akaunti ina. Chonde lowani ndi akaunti yoyambirira.';

  @override
  String get premiumTitle => 'Njira ya Wilaya';

  @override
  String get premiumSubtitleBasic => 'Tsegulani Ayara yonse yonse.';

  @override
  String get premiumSubtitlePremium =>
      'Muli pa Wilaya. Mukufuna malingaliro ena?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Dongosolo lomwe likugwiritsidwa ntchito: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Malingaliro: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Kugula sikukupezeka pakadali pano.';

  @override
  String get premiumSignInToPurchase =>
      'Lowani kuti mugule malingaliro kapena kutsegula Wilaya.';

  @override
  String get premiumRestorePurchases => 'Bwezerani zogula';

  @override
  String get premiumProcessing => 'Ikukonzedwa…';

  @override
  String get premiumRestoreHintTitle =>
      'Munagula kale Wilaya kapena malingaliro pa chipangizochi kapena china?';

  @override
  String get premiumRestoreHintBody =>
      'Bwezerani zogula zanu ngati sizikuonekera.';

  @override
  String get premiumBuyCredits200 => 'Gulani malingaliro 200';

  @override
  String get premiumBuyCredits400 => 'Gulani malingaliro 400';

  @override
  String get premiumBecomePremiumOneTime => 'Kwezani ku njira ya Wilaya';

  @override
  String get premiumTopupHint =>
      'Ndi Wilaya, mutha kuwonjezera malingaliro ena nthawi iliyonse yomwe mukufuna.';

  @override
  String get premiumUpgradeCta => 'Kwezani';

  @override
  String get premiumRequiredForCategory =>
      'Gulu ili limapezeka kwa ogwiritsa ntchito a Wilaya okha. Kwezani mu Zokonda kuti mutsegule zonse zapamwamba.';

  @override
  String get premiumBenefitsBasic =>
      'Tsegulani Wilaya kuti mupeze malingaliro ena, mwayi wa magulu apamwamba, ndi kupitiriza nthawi iliyonse mukafuna chitsogozo.';

  @override
  String get premiumBenefitsPremium =>
      'Muli mu njira ya Wilaya. Ngati akuchepa, onjezerani malingaliro ena ndikupitiriza popanda kusokonezedwa.';

  @override
  String get premiumButtonBecomePremium => 'Tsegulani Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Onjezani malingaliro 1000';

  @override
  String get premiumBadge => 'Wilaya ikugwira ntchito';

  @override
  String get premiumLoadingStore => 'Ikutsegula sitolo…';

  @override
  String get premiumProductNotAvailable =>
      'Chinthuchi sichikupezekabe mu sitolo. Chonde yesaninso pambuyo pake.';

  @override
  String get premiumPurchaseError =>
      'China chake chalakwika pa kugula. Chonde yesaninso.';

  @override
  String get premiumBuyCredits100 => 'Onjezani malingaliro 100';

  @override
  String get premiumFeatureLocked =>
      'Tsegulani Wilaya kuti mugwiritse ntchito izi.';

  @override
  String get lockedCategoriesHint =>
      'Magulu ena asungidwa kwa mamembala a Wilaya. Atseguleni kuti mufufuze malingaliro onse paulendo wanu.';

  @override
  String get freePlanBlockedTitle =>
      'Mwagwiritsa ntchito malingaliro anu oyambira';

  @override
  String get freePlanBlockedBody =>
      'Muli pa dongosolo la Standard lokhala ndi malingaliro oyambira, ndipo mwafika pa malire ake. Kuti mupitirize — komanso kutsegula magulu apamwamba — kwezani ku Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Onani zosankha za Wilaya pansipa';

  @override
  String get graceBlockedTitle =>
      'Mwagwiritsa ntchito malingaliro anu oyambira';

  @override
  String get graceBlockedBody =>
      'Muli pa dongosolo la Standard lokhala ndi malingaliro oyambira, ndipo mwafika pa malire ake. Kuti mupitirize — komanso kutsegula magulu apamwamba — kwezani ku Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Onani zosankha za Wilaya pansipa';

  @override
  String get rateGuestMustSignIn =>
      'Lowani kuti mugwiritse ntchito Ayara ndi malingaliro anu.';

  @override
  String get guestNoCreditsTitle => 'Njira ya mlendo';

  @override
  String get guestNoCreditsBody =>
      'Monga mlendo mutha kuyang\'ana pulogalamuyi, koma simungagwiritse ntchito malingaliro. Lowani pambuyo pake mu Zokonda kuti mugwiritse ntchito malingaliro ndi kutsegula zogula.';

  @override
  String get guestDialogContinue => 'Pitirizani';

  @override
  String get guestDialogLoginInstead => 'Lowani m\'malo mwake';

  @override
  String get optionalLabel => 'ngati mukufuna';

  @override
  String get accountDeleteSuccessTitle => 'Akaunti yachotsedwa';

  @override
  String get accountDeleteSuccessBody =>
      'Akaunti yanu ndi deta yolumikizidwa nayo zachotsedwa bwinobwino.';

  @override
  String get accountDeleteSuccessClose => 'Tsekani';

  @override
  String get accountDeleteErrorTitle => 'Sizingathe kuchotsa akaunti';

  @override
  String get accountDeleteErrorClose => 'Chabwino';

  @override
  String get accountDeleteReauthCancelled =>
      'Kutsimikiziranso kwaletsedwa. Chonde lowaninso ndi kuyesanso kuchotsa.';

  @override
  String get accountDeleteReauthRequired =>
      'Kuchotsa akaunti kumafuna kulowa kwaposachedwa. Chonde tulukani, lowaninso, kenako yesaninso.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ichi ndi chinthu chosatha ndipo sichingabwezedwe. Deta yonse yolumikizidwa ndi akaunti yanu idzachotsedwa.';

  @override
  String get dailyGraceTitle => 'Chitsogozo Chatsiku ndi Tsiku';

  @override
  String get dailyGraceScriptureLabel => 'AYAH YA TSIKU';

  @override
  String get dailyGraceSaintLabel => 'WOPHUNZIRA WA SABATA';

  @override
  String get dailyGraceReflectionLabel => 'KUGANIZIRA KWA MADZULO';

  @override
  String get dailyGraceCopiedToast => 'Ayah yakwezedwa ku clipboard';

  @override
  String get locationConsentLabel =>
      'Lolani Ayara kugwiritsa ntchito malo anga pa qibla ndi nthawi za pemphero';

  @override
  String get locationConsentHint =>
      'Zimagwiritsidwa ntchito pa ntchito izi zokha. Malo anu sasungidwa kapena kugawidwa konse.';

  @override
  String get askPageTitle => 'Funsani Ayara';

  @override
  String get askPageDescription =>
      'Funsani chilichonse chokhudza iman, pemphero, moyo, kapena machitidwe a Chisilamu ndipo landirani chitsogozo chozikidwa pa Qur\'an ndi ziphunzitso za Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Lembani funso lanu pano…';

  @override
  String get askPageSubmitCta => 'Funsani';

  @override
  String get askPageInputEmptyError => 'Chonde lembani funso kaye.';

  @override
  String get askResultYourQuestion => 'Funso lanu';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Kuyang\'ana Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Tembenuzani foni yanu mpaka singano yagolide iwonetse mmwamba.\nKumeneko ndi kumene kuli Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Chizindikiro cha GPS n\'chofooka. Pitani panja ndipo dinani Yesaninso.';

  @override
  String get qiblaRetry => 'Yesaninso';

  @override
  String get qiblaTitle => 'Kumene kuli Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km kupita ku Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Malo akufunika';

  @override
  String get qiblaLocationNeededBody =>
      'Lolani kupeza malo anu kuti Ayara athe kuwerengera komwe Kaaba ku Makkah kulili kuchokera kumene muli.';

  @override
  String get qiblaOpenSettings => 'Tsegulani Zokonda';

  @override
  String get qiblaCompassLoading => 'Ikufufuza malo anu…';

  @override
  String get qiblaTowardMecca => 'Kuyang\'ana ku Makkah';

  @override
  String get prayerTimesTitle => 'Nthawi za Pemphero';

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
  String get prayerTimesLocationNeededTitle => 'Malo akufunika';

  @override
  String get prayerTimesLocationNeededBody =>
      'Lolani kupeza malo anu kuti Ayara athe kuwerengera nthawi zolondola za pemphero za mzinda wanu.';

  @override
  String get prayerTimesNextLabel => 'Lotsatira';

  @override
  String get prayerTimesDoneLabel => 'Zatha';

  @override
  String get monthlyPrayerTimesTitle => 'Nthawi za Pemphero za Mwezi Wonse';

  @override
  String get monthlyPrayerTimesViewButton => 'Onani Mwezi Wonse';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mwezi wotsatira';

  @override
  String get monthlyPrayerTimesDayHeader => 'Tsiku';

  @override
  String get sharePrayerTimes => 'Gawani nthawi za pemphero';

  @override
  String get notificationsSectionTitle => 'Zidziwitso';

  @override
  String get notificationsSectionSubtitle =>
      'Zikumbutso za pemphero, zochitika za kalendala & zina';

  @override
  String get dailyReflectionReminderTitle => 'Kuganizira Tsiku ndi Tsiku';

  @override
  String get dailyReflectionReminderDescription =>
      'Chikumbutso chofatsa cha tsiku ndi tsiku chotsegula Ayara ndi kulumikizana ndi chikhulupiriro chanu.';

  @override
  String get dailyReflectionReminderEnable =>
      'Yatsani chikumbutso cha tsiku ndi tsiku';

  @override
  String get dailyReflectionReminderTimeLabel => 'Nthawi ya chikumbutso';

  @override
  String get prayerNotificationsTitle => 'Zikumbutso za Pemphero';

  @override
  String get prayerNotificationsDescription =>
      'Landirani chikumbutso chofatsa chisanafike nthawi iliyonse ya pemphero kuti mukhale olumikizana tsiku lonse.';

  @override
  String get prayerNotificationsEnable => 'Yatsani zikumbutso za pemphero';

  @override
  String get prayerNotificationsOpenSettings =>
      'Tsegulani zokonda za zidziwitso';

  @override
  String get prayerNotificationsDenied => 'Zidziwitso zayimitsidwa';

  @override
  String get prayerNotificationsDeniedHint =>
      'Pitani ku Zokonda ndipo lolani zidziwitso za Ayara kuti mulandire zikumbutso za nthawi za pemphero.';

  @override
  String get notificationsConsentLabel =>
      'Lolani zidziwitso za nthawi za pemphero';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Pemphero la M\'mawa';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ndi pemphero la m\'mawa la Ahl al-Bayt. Imam Ali (AS) anati: Tetezani pemphero la mbandakucha monga momwe mumatetezera chinthu chanu chamtengo wapatali kwambiri. Dzukani, mudziyeretse, ndipo imani pamaso pa Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Pemphero la Masana';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ma Imam a Ahl al-Bayt anali kuyamikira kwambiri nthawi iliyonse yokumbukira Allah. Imani pang\'ono pa tsiku lanu, phatikizani Dhuhr ndi Asr ngati pakufunika, ndipo bwezerani mtima wanu kwa Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Pemphero la Madzulo Oyambirira';

  @override
  String get prayerNotifBodyAsr =>
      'Sungani pemphero, chifukwa ndi pangano pakati panu ndi Allah. Nthawi ya Asr yafika — musalole ipite popanda kukumbukira.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Pemphero la Dzuwa Likamalowa';

  @override
  String get prayerNotifBodyMaghrib =>
      'Dzuwa latsika — nthawi yomwe Ahl al-Bayt anaitenga yopatulika pa dua. Chitani Maghrib ndipo kwezani manja anu kwa Allah mu dua usiku usanayambe.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Pemphero la Usiku';

  @override
  String get prayerNotifBodyIsha =>
      'Malizitsani tsiku lanu muli ndi Allah. Ma Imam analimbikitsa Salat al-Layl pambuyo pa Isha — koma choyamba, malizitsani Isha yanu ndikutseka tsiku ndi kukumbukira Kwake.';

  @override
  String get outOfReflectionsBannerText =>
      'Mwagwiritsa ntchito malingaliro anu onse';

  @override
  String get outOfReflectionsBannerCta => 'Pezani ena';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Dinani bwalo kuti muwerenge';

  @override
  String get dhikrResetButton => 'Bwezeretsani';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Mamaliza kukumbukira Allah ka 100. Zikhale kuwala kwa mtima wanu.';

  @override
  String get disclaimerTitle => 'Za chitsogozo cha pulogalamuyi';

  @override
  String get disclaimerBody =>
      'Ayara imapereka malingaliro a Chisilamu, zikumbutso, ndi zinthu zauzimu kuti zithandize ulendo wanu wa chikhulupiriro, zozikidwa pa Qur\'an ndi ziphunzitso za Ahl al-Bayt. Zinthu izi zimaperekedwa pa cholinga cha zambiri zonse ndi kulimbikitsa basi.\n\nAyara siyilowa m\'malo mwa aphunzitsi oyenerera.\nChitsogozo chomwe chili mu pulogalamuyi sichilowa m\'malo mwa katswiri wa Chisilamu, marja\', kapena mphunzitsi wophunzitsidwa za chipembedzo. Mu Chisilamu cha Shia, chitsogozo cha chipembedzo chimazikidwa pa sukulu ya Ja\'fari ya fiqh komanso mwambo wotsatira Marja\' wamoyo (gwero lotsatiridwa) — katswiri wa malamulo oyenerera amene mawu ake amatsogolera okhulupirira pa machitidwe a chipembedzo. Ngati muli ndi mafunso okhudza malamulo a chipembedzo, halal ndi haram, kapena udindo wa chipembedzo wa munthu payekha, chonde funsani Marja\' oyenerera kapena katswiri wa m\'dera lanu.\n\nPulogalamuyi sipereka malamulo a chipembedzo.\nAyara sapereka ziganizo zomaliza pa nkhani za fiqh kapena udindo wa chipembedzo wa munthu payekha. Palibe chomwe chili pano chiyenera kutengedwa ngati fatwa kapena lamulo lokakamiza la chipembedzo.\n\nKufunika kwa Ahl al-Bayt.\nMu Chisilamu cha Shia, Mneneri Muhammad ﷺ ndi banja lake loyera — Ahl al-Bayt — ndi atsogoleri ovomerezeka a gulu la Chisilamu pambuyo pa Qur\'an. Ma Imam khumi ndi awiri a Ahl al-Bayt ndi omasulira osankhidwa ndi Mulungu a ziphunzitso za Chisilamu. Zili mu pulogalamuyi zikuwonetsa mwambo umenewu ndipo zimayesetsa kuulemekeza mokhulupirika.\n\nNkhani za m\'gulu.\nPulogalamuyi ikufuna kulimbikitsa kulumikizana kwanu ndi chikhulupiriro pomwe ikulemekeza kwambiri udindo wa mzikiti wanu wa m\'dera, malo a Chisilamu, ndi gulu lanu lachipembedzo. Tikukulimbikitsani kuti mukhalebe olumikizana ndi kuphunzira kwa aphunzitsi oyenerera omwe ali pafupi nanu.';

  @override
  String get disclaimerClose => 'Ndikumvetsa';

  @override
  String get disclaimerInfoTooltip => 'Za chitsogozo cha pulogalamuyi';

  @override
  String get disclaimerSettingsSubtitle =>
      'Pa cholinga cha zambiri basi. Dinani kuti muwerenge chenjezo lonse.';

  @override
  String get disclaimerSectionHeader => 'Chenjezo la chitsogozo';

  @override
  String get navHome => 'Kunyumba';

  @override
  String get navReflect => 'Ganizirani';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalendala';

  @override
  String get dashboardToday => 'LERO';

  @override
  String get dashboardComingUp => 'Zikubwera';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'masiku',
      one: 'tsiku',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Kulowa Mwamsanga';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Chitsogozo';

  @override
  String get quickActionPrayerTimes => 'Nthawi za Pemphero';

  @override
  String get askAyaraTitle => 'Funsani Ayara';

  @override
  String get askAyaraSubtitle =>
      'Funsani funso lililonse la Chisilamu ndipo landirani yankho lakuya komanso lotsogolera.';

  @override
  String get askAyaraHint =>
      'mwachitsanzo Kodi kufunika kwa Ramadan ndi chiyani?';

  @override
  String get askAyaraSubmit => 'Funsani';

  @override
  String get wisdomOfTheDayTitle => 'Nzeru za Tsiku';

  @override
  String get calendarScreenTitle => 'Kalendala ya Chisilamu';

  @override
  String get calendarUpcomingOccasions => 'Zochitika Zikubwera';

  @override
  String get calendarOccasionRemindersTitle => 'Zikumbutso za Zochitika';

  @override
  String get calendarOccasionRemindersHint =>
      'Kudziwitsidwa usiku usanafike chochitika chilichonse';

  @override
  String get calendarNotifPermissionDenied =>
      'Chilolezo cha zidziwitso chakana. Chonde yatsani mu zokonda za chipangizo chanu.';

  @override
  String get calendarNoEvents => 'Palibe zochitika zikubwera zomwe zapezeka.';

  @override
  String get calendarAddToPhone => 'Onjezani ku Kalendala ya Foni';

  @override
  String get calendarAddedToPhone => 'Zida ku Kalendala';

  @override
  String get calendarCountdownToday => 'LERO';

  @override
  String get calendarCountdownTomorrow => 'MAWA';

  @override
  String calendarCountdownDays(int days) {
    return 'm\'masiku $days';
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
  String get calendarSeasonMuharramEarly =>
      'Masiku a Muharram — kumbukirani Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — masiku a maliro ndi kuganizira';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — masiku makumi anayi a Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Njira yopita ku Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — m\'bandakucha wa chivumbulutso';

  @override
  String get calendarSeasonMidShaban =>
      'Pakati pa Sha\'ban — tsiku lobadwa la Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mwezi wa Qur\'an';

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
  String get duasSearchHint => 'Sakani duas, ziyarat…';

  @override
  String get duasFilterAll => 'Zonse';

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
  String get duasEmpty => 'Palibe duas omwe apezeka.';

  @override
  String get duaCategoryDaily => 'Tsiku ndi tsiku';

  @override
  String get duaCategoryWeekly => 'Sabata iliyonse';

  @override
  String get duaCategoryOccasions => 'Zochitika';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Kubadwa';

  @override
  String get eventTypeMartyrdom => 'Ushahidi';

  @override
  String get eventTypeOccasion => 'Chochitika';

  @override
  String get duaCopyTooltip => 'Koperani kumasulira';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Kumasulira';

  @override
  String get duaAskAiLabel => 'Funsani Ayara kufotokoza dua iyi';

  @override
  String get duaAskAiLockedLabel => 'Funsani Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Mafotokozedwe a Ayara amapezeka kwa mamembala a Wilaya. Kwezani mu Zokonda.';

  @override
  String duaAiComingSoon(String name) {
    return 'Funsani Ayara za \"$name\" — zikubwera posachedwa!';
  }

  @override
  String get duaCopiedToast => 'Dua yakwezedwa ku clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ndi Wamkulu Kwambiri';

  @override
  String get tasbihAlhamdulillahMeaning => 'Matamando onse ndi a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Ulemerero ukhale kwa Allah';

  @override
  String get tasbihResetTooltip => 'Bwezeretsani';

  @override
  String get tasbihCompleteTitle => 'Tasbih Yatha';

  @override
  String get tasbihCompleteMessage => 'Mulungu alandire dhikr yanu.';

  @override
  String get tasbihTapHint => 'Dinani kulikonse kuti muwerenge';

  @override
  String get tasbihatScreenTitle => 'Chitsogozo cha Pemphero';

  @override
  String get tasbihatScreenSubtitle => 'MATAMANDO A PEMPHERO';

  @override
  String get tasbihatScreenDescription =>
      'Chitsogozo chokwanira cha matamando omwe amatiwerengedwa nthawi ndi pambuyo pa mapemphero a tsiku ndi tsiku — motsatira mwambo wa Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Amawerengedwa mu rakʿah ya 3 ndi ya 4';

  @override
  String get tasbihatArba3Info =>
      'Mu fiqh ya Shia, Tasbiḥāt al-Arbaʿa imalowa m\'malo mwa Surah al-Fatiha mu rakʿah ya 3 ndi ya 4 ya Dhuhr, Asr, Maghrib, ndi Isha. Ndi waajib kuiwerenga kamodzi, ndipo ndi mustaḥabb kuiwerenga katatu.';

  @override
  String get tasbihatArba3Translation =>
      'Ulemerero ukhale kwa Allah · Matamando onse akhale kwa Allah\nPalibe mulungu koma Allah · Allah ndi Wamkulu Kwambiri';

  @override
  String get tasbihatArba3CompleteTitle => 'Kuwerenga kwatha';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Pemphero lanu lilandiridwe — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Dinani pambuyo pa kuwerenga kulikonse';

  @override
  String get tasbihatZahraSubtitle =>
      'Pambuyo pa pemphero lililonse · mikanda 100';

  @override
  String get tasbihatZahraOriginLabel => 'Chiyambi';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) anapempha Mtumiki ﷺ wantchito. Iye anati: \"Kodi sindikuwonetsa chinthu chabwino kuposa chimenecho? Werengani Subḥānallāh ka 33, Alḥamdulillāh ka 33, ndi Allāhu Akbar ka 34 pambuyo pa pemphero lililonse. Zimenezo ndi zabwino kuposa wantchito.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Tsegulani Kaunta ya Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS ZOLOMBIKITSIDWA';

  @override
  String get tasbihatDuasSubtitle => 'Mukatha pemphero lanu';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen =>
      'Pambuyo pa pemphero lililonse lovomerezeka';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Aliyense amene awerenga Āyat al-Kursī pambuyo pa pemphero lililonse lovomerezeka, palibe chomulekanitsa ndi Paradiso kupatula imfa. Imam al-Bāqir (a) anati ndi imodzi mwa ayah zazikulu kwambiri mu Qur\'an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Pambuyo pa pemphero lililonse · zimamaliza dua zonse';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Kutumiza madalitso kwa Mneneri ﷺ ndi banja lake loyera (Āl Muḥammad) kumalimbikitsidwa kuti kumalize dua iliyonse. Imam al-Ṣādiq (a) anati: \"Dua iliyonse imayembekezera mpaka mutatumiza ṣalawāt kwa Muḥammad ndi banja lake.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Pambuyo pa pemphero lililonse · kwa Imam wa nthawi yathu';

  @override
  String get tasbihatDuaFarajSource =>
      'Yophunzitsidwa ndi Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua yopempha kubweranso kwa Imam al-Mahdī (af), Imam wa khumi ndi awiri, yophunzitsidwa ndi bambo ake. Imawerengedwa tsiku lililonse ndi a Shia pambuyo pa pemphero lililonse monga chizindikiro cha kudzipereka kwa Imam wamoyo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ya Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Pambuyo pa Maghrib & Isha · yolimbikitsidwa kwambiri';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) anati kuwerenga Tasbīḥ al-Zahrā pambuyo pa Isha musanagone ndibwino kuposa rakaʿah 1000 za pemphero la sunna. Kuwala kwake kumakwera kumwamba.';

  @override
  String get tasbihFatimaGiftPre => 'Mphatso yochokera kwa Mneneri';

  @override
  String get tasbihFatimaGiftPost =>
      'imaŵerengedwa pambuyo pa pemphero lililonse';

  @override
  String get prayerTrackerTitle => 'WOTSATA PEMPHERO';

  @override
  String get prayerTrackerPrayed => 'Pemphero lachitika';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'masiku $count motsatizana';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Mapemphero onse a lero atha. Mulungu alandire.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Yatha lero';

  @override
  String get dhikrTrackerNotDoneToday => 'Sinachitike lero';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'masiku $count motsatizana';
  }

  @override
  String get dhikrReminderTitle => 'Chikumbutso cha Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Chikumbutso chofatsa cha tsiku ndi tsiku kuti muwerenge Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Yatsani chikumbutso cha Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Nthawi ya chikumbutso';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith ya Tsiku ndi Tsiku';

  @override
  String get hadithLabelArabic => 'CHIARABU';

  @override
  String get hadithLabelTranslation => 'KUMASULIRA';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Gawani Hadith Iyi';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nKudzera mu Ayara';
  }

  @override
  String get hadithNavPrevious => 'Yam\'mbuyo';

  @override
  String get hadithNavNext => 'Yotsatira';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Ma Masumeen 14';

  @override
  String get imamsScreenSubtitle =>
      'Mneneri, Lady Fatima, ndi Ma Imam Khumi ndi Awiri — atsogoleri osalakwa a Chisilamu';

  @override
  String get imamLabelBorn => 'Anabadwa';

  @override
  String get imamLabelMartyrdom => 'Ushahidi';

  @override
  String get imamLabelStatus => 'Udindo';

  @override
  String get imamSectionBiography => 'MBIRI YA MOYO';

  @override
  String get imamSectionFamousSaying => 'MAWU OTSOGOZA';

  @override
  String get imamRoleProphet => 'Mneneri Womaliza';

  @override
  String get imamRoleInfallible => 'Wosalakwa';

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
  String get duaAudioScreenTitle => 'Mverani Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Sankhani dua yomwe mukufuna kumvera. Dinani pamtanda kuti muyambe kapena kuyimitsa.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio ya dua iyi ipezeka mu kusintha komwe kukubwera.';

  @override
  String get duaAudioClose => 'Tsekani';

  @override
  String get duaAudioError =>
      'Sizingathe kutsegula audio. Chonde onani kulumikizana kwanu.';

  @override
  String get duaAudioMetaTransmittedBy => 'Yofikitsidwa ndi';

  @override
  String get duaAudioMetaOccasion => 'Chochitika';

  @override
  String get duaAudioMetaDuration => 'Kutalika';

  @override
  String get quickActionDailyHadith => 'Hadith ya Tsiku';

  @override
  String get quickAction14Masumeen => 'Masumeen 14';

  @override
  String get quickActionListenDuas => 'Mverani';

  @override
  String get quickActionTasbihat => 'Chitsogozo cha Pemphero';

  @override
  String get pilgrimageSectionTitle => 'Ulendo Wopatulika';

  @override
  String get pilgrimageSectionSubtitle =>
      'Maupangiri athunthu a Hajj & Umrah — ulendo wopita ku Nyumba Yopatulika ya Allah ku Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Mzati Wachisanu wa Chisilamu';

  @override
  String get hajjCardDescription =>
      'Ulendo waukulu wa chaka chilichonse — wovomerezeka kamodzi pa moyo kwa Msilamu aliyense amene angathe';

  @override
  String get hajjScreenTitle => 'Chitsogozo cha Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Chitsogozo cha sitepe ndi sitepe pa ulendo waukulu';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ulendo Wamng\'ono';

  @override
  String get umrahCardDescription =>
      'Ulendo wauzimu wopindulitsa kwambiri womwe ungachitidwe nthawi iliyonse ya chaka';

  @override
  String get umrahScreenTitle => 'Chitsogozo cha Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Chitsogozo cha sitepe ndi sitepe pa ulendo wamng\'ono';

  @override
  String get pilgrimageStepsTitle => 'Miyambo & Sitepe';

  @override
  String get pilgrimageImportantNotesTitle => 'Zolemba Zofunika';

  @override
  String get pilgrimageDuaTitle => 'Dua ya chinthu ichi';

  @override
  String get pilgrimageJafariNoteTitle => 'Chikumbutso cha Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Kutha';

  @override
  String get pilgrimageMarkDone => 'Chitani ngati chatha';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ya $total zinthu';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes mphindi';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Aulendo a Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Aulendo a Shia mwachizolowezi amapita ku Medina kuti akayendere manda a Mneneri Muhammad ﷺ ku Masjid al-Nabawi, komanso manda a Ma Imam ku Jannat al-Baqi. Maulendo amenewa ali ndi tanthauzo lalikulu lauimu ndipo amaonedwa ngati gawo lofunika kwambiri pa ulendo kwa a Shia ambiri.';

  @override
  String get hajjIntro =>
      'Hajj ndi mzati wachisanu wa Chisilamu, wovomerezeka kamodzi pa moyo kwa Msilamu aliyense amene ali ndi mphamvu m\'thupi komanso pa ndalama. Umachitika mu mwezi wa Dhul Hijjah, ndipo umatsatira mapazi a Mneneri Ibrahim (AS), mwana wake Ismail (AS), ndi Lady Hajar. Kwa a Shia, Hajj imaphatikizanso dalitso lalikulu loyendera malo opumulirako a Mneneri ﷺ ndi Ahlul Bayt ku Medina.';

  @override
  String get umrahIntro =>
      'Umrah ndi ulendo wamng\'ono wopita ku Mecca ndipo, mosiyana ndi Hajj, ungachitidwe nthawi iliyonse ya chaka. Ngakhale siwovomerezeka, uli ndi mphotho zazikulu zauzimu ndipo umaonedwa ngati ibadah yolimbikitsidwa kwambiri. Umagawana miyambo ingapo ndi Hajj koma ndi wachidule, wokhala ndi miyambo inayi ikuluikulu.';
}
