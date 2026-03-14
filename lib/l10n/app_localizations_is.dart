// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Veldu tungumál';

  @override
  String get languageSelectSub => 'Þú getur breytt þessu síðar í Stillingum';

  @override
  String get actionContinue => 'Halda áfram';

  @override
  String get languageSuggestedHeader => 'Tillögur';

  @override
  String get languageAllHeader => 'Öll tungumál';

  @override
  String get languageSuggestedBadge => 'Tillaga';

  @override
  String get languageSearchHint => 'Leita…';

  @override
  String get planBasic => 'Staðlað';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Dagleg leiðsögn';

  @override
  String get categorySlot02 => 'Iman og traust';

  @override
  String get categorySlot03 => 'Íhugun um bæn';

  @override
  String get categorySlot04 => 'Þolinmæði og von';

  @override
  String get categorySlot05 => 'Leita fyrirgefningar';

  @override
  String get categorySlot06 => 'Miskunn og samúð';

  @override
  String get categorySlot07 => 'Styrkur trúarinnar';

  @override
  String get categorySlot08 => 'Þakklátt hjarta';

  @override
  String get categorySlot09 => 'Tilgangur lífsins';

  @override
  String get categorySlot10 => 'Fjölskyldubönd';

  @override
  String get categorySlot11 => 'Innri friður';

  @override
  String get categorySlot12 => 'Spámannleg viska';

  @override
  String get categorySlot13 => 'Góður karakter';

  @override
  String get categorySlot14 => 'Standast freistingu';

  @override
  String get categorySlot15 => 'Kvöld-dhikr';

  @override
  String get categoryCustom => 'Persónuleg íhugun';

  @override
  String get dhikrMeaningSubhanallah => 'Dýrð sé Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Öll lofgjörð tilheyrir Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah er mestur';

  @override
  String get quranVerseHeartAtRest =>
      'Sannarlega finna hjörtu frið í minningu Allah.';

  @override
  String get promptHint => 'Pikkaðu á flokk fyrir íslamska leiðsögn og íhugun';

  @override
  String get currentLanguage => 'Núverandi tungumál';

  @override
  String get settingsLanguage => 'Tungumálastillingar';

  @override
  String get settingsTitle => 'Stillingar';

  @override
  String get chooseLanguage => 'Veldu tungumál';

  @override
  String get continueCta => 'Halda áfram';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count orð',
      one: '$count orð',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Valkostir';

  @override
  String get newCta => 'Nýtt';

  @override
  String get actionsTitle => 'Hvað viltu gera?';

  @override
  String get copy => 'Afrita';

  @override
  String get share => 'Deila';

  @override
  String get close => 'Loka';

  @override
  String get copiedToast => 'Afritað á klemmuspjald';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ekki tókst að búa til nýtt svar';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nViltu reyna aftur?';
  }

  @override
  String get cancelCta => 'Hætta við';

  @override
  String get retryCta => 'Reyna aftur';

  @override
  String get authTitle => 'Búðu til reikninginn þinn';

  @override
  String get continueAsGuest => 'Halda áfram sem gestur';

  @override
  String get signInGoogle => 'Skrá inn með Google';

  @override
  String get signInApple => 'Skrá inn með Apple';

  @override
  String get signInEmail => 'Skrá inn með tölvupósti';

  @override
  String get upgradeWithApple => 'Halda áfram með Apple';

  @override
  String get mustAccept =>
      'Þú verður að samþykkja þjónustuskilmálana og staðfesta persónuverndarstefnuna.';

  @override
  String get termsLabel => 'Ég samþykki þjónustuskilmálana';

  @override
  String get privacyLabel => 'Ég hef lesið persónuverndarstefnuna';

  @override
  String get marketingOptIn => 'Ég samþykki að fá fréttir og tilboð';

  @override
  String get openTerms => 'Þjónustuskilmálar';

  @override
  String get openPrivacy => 'Persónuverndarstefna';

  @override
  String get accountSection => 'Reikningur';

  @override
  String get guestMode => 'Gestahamur';

  @override
  String get signedIn => 'Innskráð/ur';

  @override
  String get upgradeHint =>
      'Vistaðu íhuganir þínar á milli tækja með því að búa til reikning.';

  @override
  String get upgradeWithGoogle => 'Halda áfram með Google';

  @override
  String get signOut => 'Skrá út';

  @override
  String get snackUpgraded => 'Reikningur uppfærður með Google ✅';

  @override
  String get snackSignedIn => 'Skráð/ur inn með Google ✅';

  @override
  String get snackSignedOut => 'Skráð/ur út';

  @override
  String get snackSignedInApple => 'Skráð/ur inn með Apple ✅';

  @override
  String get snackSignedInGoogle => 'Skráð/ur inn með Google ✅';

  @override
  String get snackUpgradedApple => 'Reikningur uppfærður með Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Reikningur uppfærður með Google ✅';

  @override
  String get historyTitle => 'Fyrri íhuganir';

  @override
  String get historyOpenCta => 'Fyrri íhuganir';

  @override
  String get historyEmpty => 'Engar vistaðar íhuganir enn.';

  @override
  String get historyDeleteTitle => 'Eyða íhugun?';

  @override
  String get historyDeleteBody => 'Þetta mun eyða valda atriðinu varanlega.';

  @override
  String get deleteCta => 'Eyða';

  @override
  String get historyButton => 'Fyrri íhuganir';

  @override
  String get historyEmptyTitle => 'Engar íhuganir enn';

  @override
  String get historyEmptyBody =>
      'Búðu til eitthvað fyrst — vistuðu atriðin þín munu birtast hér.';

  @override
  String get historyDelete => 'Eyða';

  @override
  String get footerTitle => 'Með Wilaya, Iman og Sabr';

  @override
  String get footerSubtitle => 'Ein bæn í einu';

  @override
  String get genericErrorSnack =>
      'Eitthvað fór úrskeiðis — vinsamlegast reyndu aftur eftir smástund.';

  @override
  String get upgradeAccountCta =>
      'Vistaðu íhuganir þínar á milli tækja – búðu til reikning';

  @override
  String get deleteAccount => 'Eyða reikningi';

  @override
  String get exportData => 'Flytja út gögnin mín';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Hægar, tígrisdýr 🐯\nAyara þarf smá stund fyrir næsta…';

  @override
  String get rateDailyLimit =>
      'Þú ert búin/n með íhuganir í bili.\nFáðu fleiri íhuganir eða uppfærðu í Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Þú hefur notað allar íhuganirnar þínar.\nBættu við eða uppfærðu í Wilaya til að halda áfram.';

  @override
  String get rateGraceCreditsExhausted =>
      'Þú ert búin/n með íhuganir í bili.\nFáðu fleiri íhuganir eða uppfærðu í Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya opnar fyrir aukna eiginleika, framtíðarflokka og sérstakt merki.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Íhuganir þínar eru búnar í bili. Áætlun: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ekki tókst að athuga íhuganir þínar: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Eitthvað fór úrskeiðis við að athuga íhuganirnar þínar.';

  @override
  String get aiFallbackGeneric =>
      'Eitthvað fór úrskeiðis — vinsamlegast reyndu aftur eftir smástund.';

  @override
  String get limitSectionTitle => 'Íhuganir';

  @override
  String get limitTodayLabel => 'Notkun';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Íhuganir eftir: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Áætlun: $plan';
  }

  @override
  String get limitLoadingLabel => 'Hleð…';

  @override
  String get limitLoadingLabelDescription =>
      'Sýnt á íhugunarkorti meðan tölfræði um notkun er sótt.';

  @override
  String get aiLimitTitle => 'Íhuganir';

  @override
  String get aiLimitSubtitle =>
      'Hvert svar notar 1 íhugun. Staðlað inniheldur byrjunaríhuganir. Wilaya opnar aukaflokka og gerir kleift að bæta við fleiri.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total íhuganir notaðar';
  }

  @override
  String get creditsSectionTitle => 'Íhuganir';

  @override
  String get creditsUsageLabel => 'Notkun';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Íhuganir eftir: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Áætlun: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Hleð…';

  @override
  String get creditsLoadingLabelDescription =>
      'Sýnt meðan tölfræði um íhuganir er sótt.';

  @override
  String get creditsTitle => 'Íhuganir';

  @override
  String get creditsSubtitle =>
      'Hvert svar notar 1 íhugun. Staðlað inniheldur byrjunaríhuganir. Wilaya opnar aukaflokka og gerir kleift að bæta við fleiri.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total íhuganir notaðar';
  }

  @override
  String get settingsDeleteTitle => 'Eyða reikningi';

  @override
  String get settingsDeleteDescription =>
      'Eyða reikningnum þínum og öllum tengdum gögnum varanlega.';

  @override
  String get settingsDeleteButtonLabel => 'Eyða reikningnum mínum';

  @override
  String get settingsDeleteDialogTitle => 'Eyða reikningi?';

  @override
  String get settingsDeleteDialogBody =>
      'Þessi aðgerð er varanleg og ekki hægt að afturkalla hana.\n\nÖllum spjöllum, ferli og reikningsupplýsingum verður eytt.';

  @override
  String get settingsDeleteDialogCancel => 'Hætta við';

  @override
  String get settingsDeleteDialogConfirm => 'Eyða';

  @override
  String get settingsFreeLimitUsedTitle => 'Byrjunaríhuganir notaðar';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Byrjunaríhuganir þessa tækis hafa verið notaðar. Uppfærðu í Wilaya eða keyptu fleiri íhuganir til að halda áfram.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Byrjunaríhuganir notaðar';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Byrjunaríhuganir þessa tækis hafa verið notaðar. Uppfærðu í Wilaya eða keyptu fleiri íhuganir til að halda áfram.';

  @override
  String get deviceBoundError =>
      'Þetta tæki er nú þegar tengt öðrum reikningi. Vinsamlegast skráðu þig inn með upprunalega reikningnum.';

  @override
  String get premiumTitle => 'Wilaya hamur';

  @override
  String get premiumSubtitleBasic => 'Opnaðu alla Ayara upplifunina.';

  @override
  String get premiumSubtitlePremium =>
      'Þú ert í Wilaya. Vantar þig fleiri íhuganir?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Núverandi áætlun: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Íhuganir: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Kaup eru ekki tiltæk núna.';

  @override
  String get premiumSignInToPurchase =>
      'Skráðu þig inn til að kaupa íhuganir eða opna Wilaya.';

  @override
  String get premiumRestorePurchases => 'Endurheimta kaup';

  @override
  String get premiumProcessing => 'Vinn…';

  @override
  String get premiumRestoreHintTitle =>
      'Ertu nú þegar búin/n að kaupa Wilaya eða íhuganir á þessu eða öðru tæki?';

  @override
  String get premiumRestoreHintBody =>
      'Endurheimtu kaupin þín ef þau birtast ekki.';

  @override
  String get premiumBuyCredits200 => 'Kaupa 200 íhuganir';

  @override
  String get premiumBuyCredits400 => 'Kaupa 400 íhuganir';

  @override
  String get premiumBecomePremiumOneTime => 'Uppfæra í Wilaya ham';

  @override
  String get premiumTopupHint =>
      'Með Wilaya geturðu bætt við aukalegum íhugunum hvenær sem þú þarft.';

  @override
  String get premiumUpgradeCta => 'Uppfæra';

  @override
  String get premiumRequiredForCategory =>
      'Þessi flokkur er aðeins í boði fyrir Wilaya notendur. Uppfærðu í Stillingum til að opna allt úrvalsinnihald.';

  @override
  String get premiumBenefitsBasic =>
      'Opnaðu Wilaya til að fá fleiri íhuganir, aðgang að aukaflokkum og halda áfram þegar þú þarft leiðsögn.';

  @override
  String get premiumBenefitsPremium =>
      'Þú ert í Wilaya ham. Ef þú ert að verða búin/n skaltu bæta við fleiri íhugunum og halda áfram án truflana.';

  @override
  String get premiumButtonBecomePremium => 'Opna Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Bæta við 1000 íhugunum';

  @override
  String get premiumBadge => 'Wilaya virkt';

  @override
  String get premiumLoadingStore => 'Hleð verslun…';

  @override
  String get premiumProductNotAvailable =>
      'Þessi vara er ekki enn í boði í versluninni. Vinsamlegast reyndu aftur síðar.';

  @override
  String get premiumPurchaseError =>
      'Eitthvað fór úrskeiðis við kaupin. Vinsamlegast reyndu aftur.';

  @override
  String get premiumBuyCredits100 => 'Bæta við 100 íhugunum';

  @override
  String get premiumFeatureLocked =>
      'Opnaðu Wilaya til að nota þennan eiginleika.';

  @override
  String get lockedCategoriesHint =>
      'Sumir flokkar eru fráteknir fyrir Wilaya meðlimi. Opnaðu þá til að kanna allar íhuganir á ferðalaginu þínu.';

  @override
  String get freePlanBlockedTitle =>
      'Þú hefur notað allar byrjunaríhuganirnar þínar';

  @override
  String get freePlanBlockedBody =>
      'Þú ert á Staðlaðri áætlun með byrjunaríhugunum og hefur náð hámarkinu. Til að halda áfram — og opna aukaflokka — skaltu uppfæra í Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Sjáðu Wilaya valkostina hér að neðan';

  @override
  String get graceBlockedTitle =>
      'Þú hefur notað allar byrjunaríhuganirnar þínar';

  @override
  String get graceBlockedBody =>
      'Þú ert á Staðlaðri áætlun með byrjunaríhugunum og hefur náð hámarkinu. Til að halda áfram — og opna aukaflokka — skaltu uppfæra í Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Sjáðu Wilaya valkostina hér að neðan';

  @override
  String get rateGuestMustSignIn =>
      'Skráðu þig inn til að nota Ayara og íhuganirnar þínar.';

  @override
  String get guestNoCreditsTitle => 'Gestahamur';

  @override
  String get guestNoCreditsBody =>
      'Sem gestur geturðu skoðað appið, en þú getur ekki notað íhuganir. Skráðu þig inn síðar í Stillingum til að nota íhuganir og opna kaup.';

  @override
  String get guestDialogContinue => 'Halda áfram';

  @override
  String get guestDialogLoginInstead => 'Skrá inn í staðinn';

  @override
  String get optionalLabel => 'valfrjálst';

  @override
  String get accountDeleteSuccessTitle => 'Reikningi eytt';

  @override
  String get accountDeleteSuccessBody =>
      'Reikningi þínum og tengdum gögnum hefur verið eytt með góðum árangri.';

  @override
  String get accountDeleteSuccessClose => 'Loka';

  @override
  String get accountDeleteErrorTitle => 'Ekki tókst að eyða reikningi';

  @override
  String get accountDeleteErrorClose => 'Í lagi';

  @override
  String get accountDeleteReauthCancelled =>
      'Endurauðkenning var hætt við. Vinsamlegast skráðu þig inn aftur og reyndu eyðinguna aftur.';

  @override
  String get accountDeleteReauthRequired =>
      'Eyðing reiknings krefst nýlegrar innskráningar. Vinsamlegast skráðu þig út, inn aftur og reyndu svo aftur.';

  @override
  String get settingsDeletePermanentWarning =>
      'Þessi aðgerð er varanleg og ekki hægt að afturkalla hana. Öllum gögnum sem tengjast reikningnum þínum verður eytt.';

  @override
  String get dailyGraceTitle => 'Dagleg leiðsögn';

  @override
  String get dailyGraceScriptureLabel => 'VERS DAGSINS';

  @override
  String get dailyGraceSaintLabel => 'FIGURE VIKUNNAR';

  @override
  String get dailyGraceReflectionLabel => 'KVÖLDÍHUGUN';

  @override
  String get dailyGraceCopiedToast => 'Vers afritað á klemmuspjald';

  @override
  String get locationConsentLabel =>
      'Leyfa Ayara að nota staðsetningu mína fyrir qibla-stefnu og bænatíma';

  @override
  String get locationConsentHint =>
      'Notað eingöngu fyrir þessa eiginleika. Staðsetning þín er hvorki deilt né vistuð.';

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
  String get askPageTitle => 'Spyrðu Ayara';

  @override
  String get askPageDescription =>
      'Spyrðu hvað sem er um trú, bæn, líf eða íslamska iðkun og fáðu leiðsögn byggða á Kóraninum og kenningum Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Skrifaðu spurninguna þína hér…';

  @override
  String get askPageSubmitCta => 'Spyrja';

  @override
  String get askPageInputEmptyError => 'Vinsamlegast skrifaðu spurningu fyrst.';

  @override
  String get askResultYourQuestion => 'Spurningin þín';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Snýr að Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Snúðu símanum þar til gullna nálin bendir upp.\nSú stefna bendir að qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-merkið er veikt. Farðu út og pikkaðu á Reyna aftur.';

  @override
  String get qiblaRetry => 'Reyna aftur';

  @override
  String get qiblaTitle => 'Qibla-stefna';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km til Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Staðsetning nauðsynleg';

  @override
  String get qiblaLocationNeededBody =>
      'Leyfðu aðgang að staðsetningu svo Ayara geti reiknað stefnu Kaaba í Makkah frá þeim stað sem þú ert á.';

  @override
  String get qiblaOpenSettings => 'Opna Stillingar';

  @override
  String get qiblaCompassLoading => 'Finn staðsetningu þína…';

  @override
  String get qiblaTowardMecca => 'Í átt að Makkah';

  @override
  String get prayerTimesTitle => 'Bænatímar';

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
  String get prayerTimesLocationNeededTitle => 'Staðsetning nauðsynleg';

  @override
  String get prayerTimesLocationNeededBody =>
      'Leyfðu aðgang að staðsetningu svo Ayara geti reiknað nákvæma bænatíma fyrir borgina þína.';

  @override
  String get prayerTimesNextLabel => 'Næsta';

  @override
  String get prayerTimesDoneLabel => 'Lokið';

  @override
  String get monthlyPrayerTimesTitle => 'Mánaðarlegir bænatímar';

  @override
  String get monthlyPrayerTimesViewButton => 'Skoða allan mánuðinn';

  @override
  String get monthlyPrayerTimesNextMonth => 'Næsti mánuður';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dagur';

  @override
  String get sharePrayerTimes => 'Deila bænatímum';

  @override
  String get notificationsSectionTitle => 'Tilkynningar';

  @override
  String get notificationsSectionSubtitle =>
      'Bænaáminningar, dagatalsviðburðir og fleira';

  @override
  String get dailyReflectionReminderTitle => 'Dagleg íhugun';

  @override
  String get dailyReflectionReminderDescription =>
      'Mild dagleg áminning um að opna Ayara og tengjast trú þinni.';

  @override
  String get dailyReflectionReminderEnable => 'Virkja daglega áminningu';

  @override
  String get dailyReflectionReminderTimeLabel => 'Tími áminningar';

  @override
  String get prayerNotificationsTitle => 'Bænaáminningar';

  @override
  String get prayerNotificationsDescription =>
      'Fáðu milda áminningu fyrir hvern bænatíma til að hjálpa þér að halda tengslum yfir daginn.';

  @override
  String get prayerNotificationsEnable => 'Virkja bænaáminningar';

  @override
  String get prayerNotificationsOpenSettings => 'Opna tilkynningastillingar';

  @override
  String get prayerNotificationsDenied => 'Tilkynningar eru óvirkar';

  @override
  String get prayerNotificationsDeniedHint =>
      'Farðu í Stillingar og leyfðu tilkynningar fyrir Ayara til að fá áminningar um bænatíma.';

  @override
  String get notificationsConsentLabel => 'Leyfa tilkynningar fyrir bænatíma';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Morgunbæn';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr er bæn morgna Ahl al-Bayt. Imam Ali (AS) sagði: Gættu morgunbænarinnar eins og þú gætir dýrmætasta trausts þíns. Rís upp, hreinsaðu þig og stattu frammi fyrir Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Hádegisbæn';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imamar Ahl al-Bayt mátu hvert augnablik minningar. Staldraðu við yfir daginn, sameinaðu Dhuhr og Asr ef þörf krefur, og beindu hjarta þínu aftur að Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Síðdegisbæn';

  @override
  String get prayerNotifBodyAsr =>
      'Gættu bænarinnar, því hún er sáttmáli milli þín og Allah. Tími Asr er kominn — láttu hann ekki líða án minningar.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sólsetursbæn';

  @override
  String get prayerNotifBodyMaghrib =>
      'Sólin hefur sest — stund sem Ahl al-Bayt töldu heilaga fyrir bæn og ákall. Flyttu Maghrib og lyftu höndunum til Allah í dua áður en nóttin hefst.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Næturbæn';

  @override
  String get prayerNotifBodyIsha =>
      'Ljúktu deginum í návist Allah. Imamar hvöttu til Salat al-Layl eftir Isha — en fyrst skaltu ljúka Isha og loka deginum með minningu Hans.';

  @override
  String get outOfReflectionsBannerText =>
      'Þú hefur notað allar íhuganirnar þínar';

  @override
  String get outOfReflectionsBannerCta => 'Fá meira';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Pikkaðu á hringinn til að telja';

  @override
  String get dhikrResetButton => 'Endurstilla';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Þú hefur lokið 100 minningum um Allah. Megi þær verða ljós fyrir hjarta þitt.';

  @override
  String get disclaimerTitle => 'Um leiðsögn þessa apps';

  @override
  String get disclaimerBody =>
      'Ayara veitir íslamskar íhuganir, áminningar og andlegt efni til að styðja persónulegt trúarferðalag þitt, rótgróið í Kóraninum og kenningum Ahl al-Bayt. Þetta efni er aðeins veitt í almennum upplýsingaskyni og til innblásturs.\n\nAyara kemur ekki í stað hæfrar fræðslu.\nLeiðsögnin í þessu appi kemur ekki í stað lærðs íslamsks fræðimanns, marja\' eða kennara með guðfræðilega menntun. Í sjía-íslam byggist trúarleg leiðsögn á Ja\'fari-skólanum í lögfræði (fiqh) og hefðinni að fylgja lifandi Marja\' (fyrirmyndarheimild) — hæfum lögfræðingi sem leiðir trúaða í trúariðkun. Ef þú hefur spurningar um trúarleg úrskurði, halal og haram málefni eða persónulegar trúarlegar skyldur skaltu leita ráðgjafar hjá hæfum Marja\' eða fræðimanni í samfélagi þínu.\n\nÞetta app gefur ekki út trúarlega úrskurði.\nAyara tekur ekki endanlegar ákvarðanir um málefni fiqh eða persónulegar trúarskyldur. Ekkert hér ætti að teljast fatwa eða bindandi trúarleg fyrirmæli.\n\nMiðlægt hlutverk Ahl al-Bayt.\nÍ sjía-íslam eru spámaðurinn Muhammad ﷺ og hreinsað heimili hans — Ahl al-Bayt — hinir viðurkenndu leiðsögumenn íslamska samfélagsins eftir Kóraninn. Tólf Imamar Ahl al-Bayt eru guðlega skipaðir túlkar íslamskra kenninga. Efnið í þessu appi endurspeglar þessa hefð og leitast við að heiðra hana af trúmennsku.\n\nSamfélagsmál.\nÞetta app miðar að því að hvetja þátttöku þína í trúarlífinu á sama tíma og það ber djúpa virðingu fyrir mikilvægu hlutverki staðbundinnar mosku, íslamskrar miðstöðvar og trúarsamfélags þíns. Við hvetjum þig til að halda tengslum við og læra af hæfum kennurum nálægt þér.';

  @override
  String get disclaimerClose => 'Ég skil';

  @override
  String get disclaimerInfoTooltip => 'Um leiðsögn þessa apps';

  @override
  String get disclaimerSettingsSubtitle =>
      'Aðeins í almennum upplýsingaskyni. Pikkaðu til að lesa allan fyrirvarann.';

  @override
  String get disclaimerSectionHeader => 'Fyrirvari um leiðsögn';

  @override
  String get navHome => 'Heim';

  @override
  String get navReflect => 'Íhugun';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Dagatal';

  @override
  String get dashboardToday => 'Í DAG';

  @override
  String get dashboardComingUp => 'Framundan';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dagar',
      one: 'dagur',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Flýtiaðgangur';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Leiðsögn';

  @override
  String get quickActionPrayerTimes => 'Bænatímar';

  @override
  String get askAyaraTitle => 'Spyrðu Ayara';

  @override
  String get askAyaraSubtitle =>
      'Spyrðu hvaða íslömsku spurningar sem er og fáðu ígrundað, leiðandi svar.';

  @override
  String get askAyaraHint => 't.d. Hver er merking Ramadan?';

  @override
  String get askAyaraSubmit => 'Spyrja';

  @override
  String get wisdomOfTheDayTitle => 'Viska dagsins';

  @override
  String get calendarScreenTitle => 'Íslamskt dagatal';

  @override
  String get calendarUpcomingOccasions => 'Viðburðir framundan';

  @override
  String get calendarOccasionRemindersTitle => 'Áminningar um viðburði';

  @override
  String get calendarOccasionRemindersHint =>
      'Tilkynnt kvöldið fyrir hvern viðburð';

  @override
  String get calendarNotifPermissionDenied =>
      'Tilkynningarheimild hafnað. Virkjaðu hana í stillingum tækisins.';

  @override
  String get calendarNoEvents => 'Engir komandi viðburðir fundust.';

  @override
  String get calendarAddToPhone => 'Bæta við síma dagatali';

  @override
  String get calendarAddedToPhone => 'Bætt við dagatali';

  @override
  String get calendarCountdownToday => 'Í DAG';

  @override
  String get calendarCountdownTomorrow => 'Á MORGUN';

  @override
  String calendarCountdownDays(int days) {
    return 'eftir $days daga';
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
  String get calendarMonthMay => 'Maí';

  @override
  String get calendarMonthJun => 'Jún';

  @override
  String get calendarMonthJul => 'Júl';

  @override
  String get calendarMonthAug => 'Ágú';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nóv';

  @override
  String get calendarMonthDec => 'Des';

  @override
  String get calendarSeasonMuharramEarly => 'Dagar Muharram — minnast Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dagar sorgar og íhugunar';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — fjörutíu dagar Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Leiðin til Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — dögun opinberunarinnar';

  @override
  String get calendarSeasonMidShaban =>
      'Miður Sha\'ban — afmæli Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mánuður Kóransins';

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
  String get duasScreenTitle => 'Dua og Ziyarat';

  @override
  String get duasSearchHint => 'Leita að dua, ziyarat…';

  @override
  String get duasFilterAll => 'Allt';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua og ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Engar dua fundust.';

  @override
  String get duaCategoryDaily => 'Daglegt';

  @override
  String get duaCategoryWeekly => 'Vikulega';

  @override
  String get duaCategoryOccasions => 'Viðburðir';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Fæðing';

  @override
  String get eventTypeMartyrdom => 'Píslarvætti';

  @override
  String get eventTypeOccasion => 'Viðburður';

  @override
  String get duaCopyTooltip => 'Afrita þýðingu';

  @override
  String get duaToggleTransliteration => 'Umritun';

  @override
  String get duaToggleTranslation => 'Þýðing';

  @override
  String get duaAskAiLabel => 'Biddu Ayara að útskýra þessa dua';

  @override
  String get duaAskAiLockedLabel => 'Spyrja Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Útskýringar Ayara eru í boði fyrir Wilaya meðlimi. Uppfærðu í Stillingum.';

  @override
  String duaAiComingSoon(String name) {
    return 'Spyrðu Ayara um „$name“ — væntanlegt!';
  }

  @override
  String get duaCopiedToast => 'Dua afrituð á klemmuspjald.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah er mestur';

  @override
  String get tasbihAlhamdulillahMeaning => 'Öll lofgjörð tilheyrir Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Dýrð sé Allah';

  @override
  String get tasbihResetTooltip => 'Endurstilla';

  @override
  String get tasbihCompleteTitle => 'Tasbih lokið';

  @override
  String get tasbihCompleteMessage => 'Megi Allah taka við dhikr þinni.';

  @override
  String get tasbihTapHint => 'Pikkaðu hvar sem er til að telja';

  @override
  String get tasbihatScreenTitle => 'Bænaleiðarvísir';

  @override
  String get tasbihatScreenSubtitle => 'LOFGJÖRÐIR BÆNARINNAR';

  @override
  String get tasbihatScreenDescription =>
      'Heildarleiðbeiningar um lofgjörðirnar sem eru lesnar í og eftir daglegar bænir — samkvæmt hefð Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Lesið í 3. og 4. rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Í sjía-lögfræði kemur Tasbiḥāt al-Arbaʿa í stað Surah al-Fatiha í 3. og 4. rakʿah Dhuhr, Asr, Maghrib og Isha. Það er skylt (wājib) að lesa það einu sinni og mælt með (mustaḥabb) að lesa það þrisvar.';

  @override
  String get tasbihatArba3Translation =>
      'Dýrð sé Allah · Öll lofgjörð tilheyrir Allah\nEnginn guð er nema Allah · Allah er mestur';

  @override
  String get tasbihatArba3CompleteTitle => 'Yfirlestur lokið';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Megi bæn þín vera samþykkt — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Pikkaðu eftir hvern lestur';

  @override
  String get tasbihatZahraSubtitle => 'Eftir hverja bæn · 100 perlur';

  @override
  String get tasbihatZahraOriginLabel => 'Uppruni';

  @override
  String get tasbihatZahraHadith =>
      'Fatima al-Zahra (sa) bað spámanninn ﷺ um þjón. Hann sagði: „Á ég ekki að leiða þig að einhverju betra? Lestu Subḥānallāh 33 sinnum, Alḥamdulillāh 33 sinnum og Allāhu Akbar 34 sinnum eftir hverja bæn. Það er þér betra en þjónn.“';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, 85. bindi';

  @override
  String get tasbihatZahraOpenCounter => 'Opna Tasbīḥ teljara';

  @override
  String get tasbihatDuasTitle => 'MÆLTAR DUA';

  @override
  String get tasbihatDuasSubtitle => 'Eftir að þú lýkur bæninni';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Eftir hverja skyldubæn';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Sá sem les Āyat al-Kursī eftir hverja skyldubæn, ekkert stendur á milli hans og paradísar nema dauðinn. Imam al-Bāqir (a) sagði að þetta væri meðal stærstu versa Kóransins.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Eftir hverja bæn · innsiglar allar dua';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Mælt er með að senda blessanir yfir spámanninn ﷺ og hreina fjölskyldu hans (Āl Muḥammad) til að innsigla hverja dua. Imam al-Ṣādiq (a) sagði: „Sérhver dua hangir ósvarað þar til þú sendir ṣalawāt yfir Muḥammad og fjölskyldu hans.“';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Eftir hverja bæn · fyrir Imam tímans okkar';

  @override
  String get tasbihatDuaFarajSource => 'Kennd af Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua fyrir endurkomu Imams al-Mahdī (af), þann tólfta Imam, kennd af föður hans. Hún er oft lesin af mörgum Shia múslimum eftir bænir sem trúarlegur gjörningur til lifandi Imams.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Fatimu';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Eftir Maghrib og Isha · sérstaklega mælt með';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sagði að það að lesa Tasbīḥ al-Zahrā eftir Isha fyrir svefn væri betra en 1000 rakʿah af sjálfboðabæn. Ljós hennar stígur til himna.';

  @override
  String get tasbihFatimaGiftPre => 'Gjöf frá spámanninum';

  @override
  String get tasbihFatimaGiftPost => 'lesið eftir hverja bæn';

  @override
  String get prayerTrackerTitle => 'BÆNASKRÁNING';

  @override
  String get prayerTrackerPrayed => 'Beðið';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count daga lota';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Allar bænir dagsins hafa verið lokið. Megi Allah taka við þeim.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Lokið í dag';

  @override
  String get dhikrTrackerNotDoneToday => 'Ekki gert í dag';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count daga lota';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ áminning';

  @override
  String get dhikrReminderDescription =>
      'Mild dagleg áminning um að lesa Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Virkja Tasbīḥ áminningu';

  @override
  String get dhikrReminderTimeLabel => 'Tími áminningar';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Dagleg hadith';

  @override
  String get hadithLabelArabic => 'ARABÍSKA';

  @override
  String get hadithLabelTranslation => 'ÞÝÐING';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Deila þessari hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nFrá Ayara';
  }

  @override
  String get hadithNavPrevious => 'Fyrri';

  @override
  String get hadithNavNext => 'Næsta';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Fjórtán Ósveigjanlegir';

  @override
  String get imamsScreenSubtitle =>
      'Spámaðurinn, Lady Fatima, og Tólftu Imamir — hreinu og ósveigjanlegu leiðbeinandinn í Tólfta Shia Islam';

  @override
  String get imamLabelBorn => 'Fædd/ur';

  @override
  String get imamLabelMartyrdom => 'Píslarvætti';

  @override
  String get imamLabelStatus => 'Staða';

  @override
  String get imamSectionBiography => 'ÆVISAGA';

  @override
  String get imamSectionFamousSaying => 'FRÆGT ORÐTAK';

  @override
  String get imamRoleProphet => 'Síðasti spámaðurinn';

  @override
  String get imamRoleInfallible => 'Hinn óskeikuli';

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
  String get duaAudioScreenTitle => 'Hlusta á dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Veldu dua til að hlusta á. Pikkaðu á flísina til að spila eða gera hlé.';

  @override
  String get duaAudioComingSoonMessage =>
      'Hljóð fyrir þessa dua verður í boði í næstu uppfærslu.';

  @override
  String get duaAudioClose => 'Loka';

  @override
  String get duaAudioError =>
      'Ekki tókst að hlaða hljóðinu. Vinsamlegast athugaðu tenginguna þína.';

  @override
  String get duaAudioMetaTransmittedBy => 'Flutt af';

  @override
  String get duaAudioMetaOccasion => 'Viðburður';

  @override
  String get duaAudioMetaDuration => 'Lengd';

  @override
  String get quickActionDailyHadith => 'Dagleg hadith';

  @override
  String get quickAction14Masumeen => 'Fjórtán Ósveigjanlegir';

  @override
  String get quickActionListenDuas => 'Hlusta';

  @override
  String get quickActionTasbihat => 'Bænaleiðarvísir';

  @override
  String get pilgrimageSectionTitle => 'Hin heilaga ferð';

  @override
  String get pilgrimageSectionSubtitle =>
      'Heildarleiðbeiningar fyrir Hajj og Umrah — pílagrímsferðina til hins heilaga húss Allah í Mekka';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Fimmta stoð íslams';

  @override
  String get hajjCardDescription =>
      'Hin mikla árlega pílagrímsferð — skylda einu sinni á ævinni fyrir hvern múslima sem getur';

  @override
  String get hajjScreenTitle => 'Hajj leiðarvísir';

  @override
  String get hajjScreenSubtitle =>
      'Skref fyrir skref leiðarvísir fyrir hina miklu pílagrímsferð';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Hin minni pílagrímsferð';

  @override
  String get umrahCardDescription =>
      'Andleg ferð með miklum launum sem má framkvæma hvenær sem er á árinu';

  @override
  String get umrahScreenTitle => 'Umrah leiðarvísir';

  @override
  String get umrahScreenSubtitle =>
      'Skref fyrir skref leiðarvísir fyrir hina minni pílagrímsferð';

  @override
  String get pilgrimageStepsTitle => 'Ritúöl og skref';

  @override
  String get pilgrimageImportantNotesTitle => 'Mikilvægar athugasemdir';

  @override
  String get pilgrimageDuaTitle => 'Dua fyrir þetta skref';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari fiqh athugasemd';

  @override
  String get pilgrimageComplete => '✓ Lokið';

  @override
  String get pilgrimageMarkDone => 'Merki sem lokið';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done af $total skrefum';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes mín';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Sjía-pílagrímar';

  @override
  String get pilgrimageShiaNoteBody =>
      'Margir Shia pílagrímar ferðast einnig til Medina til ziyarat Spámannsins Muhammad (SAW) í Masjid al-Nabawi og grafirnar í Jannat al-Baqi. Þessar heimsóknir bera djúp andleg merking, þó þær séu ekki sjálfar helgisiðir Hajj.';

  @override
  String get hajjIntro =>
      'Hajj er fimmti súlka Islam, skylda einu sinni á lífsleiðinni fyrir hvern múslim sem er líkamlega og fjárhagslega fær. Fyrir flesta Tólfta Shia pílagríma í dag, þýðir þetta Hajj al-Tamattu\', framkvæmt í mánuðinum Dhul Hijjah í fótspor Spámannsins Ibrahim (AS), sonar hans Ismail (AS), og Lady Hajar. Þessi leiðarvísir fylgir Ja\'fari skýringu á helgisiðunum, meðan ziyarat í Medina er áfram dýrmæt ferð fyrir eða eftir Hajj.';

  @override
  String get umrahIntro =>
      'Umrah er hin minni pílagrímsferð til Mekka og, ólíkt Hajj, má framkvæma hana hvenær sem er á árinu. Þó hún sé ekki skylda ber hún með sér mikinn andlegan ávinning og er talin mjög mælt með sem tilbeiðsluverk. Hún deilir nokkrum ritúölum með Hajj en er styttri og samanstendur af fjórum meginathöfnum.';

  @override
  String get voiceInputTitle => 'Röðuinntak';

  @override
  String get voiceInputMicTitle => 'Hljóðnemi';

  @override
  String get voiceInputMicSubtitle =>
      'Talaðu innsláttinn þinn til að spyrja Ayara í stað þess að skrifa.';

  @override
  String get voiceInputMicDenied => 'Aðgangur að hljóðnema var hafnað.';

  @override
  String get voiceInputSpeak => 'Talaðu í staðinn';

  @override
  String get voiceInputListening => 'Hlusta…';

  @override
  String get voiceInputPermissionDenied =>
      'Aðgangur að hljóðnema er nauðsynlegur fyrir röðuinntak.';
}
