// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Haitian Haitian Creole (`ht`).
class AppLocalizationsHt extends AppLocalizations {
  AppLocalizationsHt([String locale = 'ht']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Chwazi lang ou';

  @override
  String get languageSelectSub => 'Ou ka chanje sa pita nan Paramèt';

  @override
  String get actionContinue => 'Kontinye';

  @override
  String get languageSuggestedHeader => 'Sijere';

  @override
  String get languageAllHeader => 'Tout lang';

  @override
  String get languageSuggestedBadge => 'Sijere';

  @override
  String get languageSearchHint => 'Chèche…';

  @override
  String get planBasic => 'Estanda';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Gidans Chak Jou';

  @override
  String get categorySlot02 => 'Iman ak Konfyans';

  @override
  String get categorySlot03 => 'Refleksyon sou Lapriyè';

  @override
  String get categorySlot04 => 'Pasyans ak Espwa';

  @override
  String get categorySlot05 => 'Chèche Padon';

  @override
  String get categorySlot06 => 'Mizèrikòd ak Konpasyon';

  @override
  String get categorySlot07 => 'Fòs Lafwa';

  @override
  String get categorySlot08 => 'Kè Rekonesan';

  @override
  String get categorySlot09 => 'Objektif Lavi';

  @override
  String get categorySlot10 => 'Lyen Fanmi';

  @override
  String get categorySlot11 => 'Lapè Entèn';

  @override
  String get categorySlot12 => 'Sajès Pwofèt la';

  @override
  String get categorySlot13 => 'Bon Karaktè';

  @override
  String get categorySlot14 => 'Reziste Tantasyon';

  @override
  String get categorySlot15 => 'Dhikr Aswè';

  @override
  String get categoryCustom => 'Refleksyon Pèsonèl';

  @override
  String get dhikrMeaningSubhanallah => 'Glwa pou Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Tout louwanj se pou Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah se pi Gran an';

  @override
  String get quranVerseHeartAtRest =>
      'Vrèmanvre, se nan sonje Allah kè yo jwenn repo.';

  @override
  String get promptHint => 'Tape yon kategori pou gidans ak refleksyon islamik';

  @override
  String get currentLanguage => 'Lang aktyèl la';

  @override
  String get settingsLanguage => 'Paramèt lang';

  @override
  String get settingsTitle => 'Paramèt';

  @override
  String get chooseLanguage => 'Chwazi lang ou';

  @override
  String get continueCta => 'Kontinye';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mo',
      one: '$count mo',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opsyon';

  @override
  String get newCta => 'Nouvo';

  @override
  String get actionsTitle => 'Kisa ou ta renmen fè?';

  @override
  String get copy => 'Kopye';

  @override
  String get share => 'Pataje';

  @override
  String get close => 'Fèmen';

  @override
  String get copiedToast => 'Kopye nan clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Pa t kapab jenere yon nouvo repons';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nÈske ou vle eseye ankò?';
  }

  @override
  String get cancelCta => 'Anile';

  @override
  String get retryCta => 'Eseye ankò';

  @override
  String get authTitle => 'Kreye kont ou';

  @override
  String get continueAsGuest => 'Kontinye kòm envite';

  @override
  String get signInGoogle => 'Konekte ak Google';

  @override
  String get signInApple => 'Konekte ak Apple';

  @override
  String get signInEmail => 'Konekte ak Imèl';

  @override
  String get upgradeWithApple => 'Kontinye ak Apple';

  @override
  String get mustAccept =>
      'Ou dwe aksepte Kondisyon yo epi rekonèt Politik Konfidansyalite a.';

  @override
  String get termsLabel => 'Mwen aksepte Kondisyon Sèvis yo';

  @override
  String get privacyLabel => 'Mwen li Politik Konfidansyalite a';

  @override
  String get marketingOptIn => 'Mwen dakò resevwa nouvèl ak òf';

  @override
  String get openTerms => 'Kondisyon Sèvis yo';

  @override
  String get openPrivacy => 'Politik Konfidansyalite';

  @override
  String get accountSection => 'Kont';

  @override
  String get guestMode => 'Mòd envite';

  @override
  String get signedIn => 'Konekte';

  @override
  String get upgradeHint =>
      'Sove refleksyon ou yo sou tout aparèy lè ou kreye yon kont.';

  @override
  String get upgradeWithGoogle => 'Kontinye ak Google';

  @override
  String get signOut => 'Dekonekte';

  @override
  String get snackUpgraded => 'Kont ajou ak Google ✅';

  @override
  String get snackSignedIn => 'Konekte ak Google ✅';

  @override
  String get snackSignedOut => 'Dekonekte';

  @override
  String get snackSignedInApple => 'Konekte ak Apple ✅';

  @override
  String get snackSignedInGoogle => 'Konekte ak Google ✅';

  @override
  String get snackUpgradedApple => 'Kont ajou ak Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Kont ajou ak Google ✅';

  @override
  String get historyTitle => 'Refleksyon anvan yo';

  @override
  String get historyOpenCta => 'Refleksyon anvan yo';

  @override
  String get historyEmpty => 'Poko gen refleksyon sove.';

  @override
  String get historyDeleteTitle => 'Efase refleksyon an?';

  @override
  String get historyDeleteBody => 'Sa ap retire atik ki chwazi a pou tout tan.';

  @override
  String get deleteCta => 'Efase';

  @override
  String get historyButton => 'Refleksyon Anvan yo';

  @override
  String get historyEmptyTitle => 'Poko gen refleksyon';

  @override
  String get historyEmptyBody =>
      'Jenere yon bagay an premye — atik ou sove yo ap parèt la a.';

  @override
  String get historyDelete => 'Efase';

  @override
  String get footerTitle => 'Avèk Wilaya, Iman ak Sabr';

  @override
  String get footerSubtitle => 'Yon lapriyè chak fwa';

  @override
  String get genericErrorSnack =>
      'Gen yon bagay ki pa mache — tanpri eseye ankò nan yon ti moman.';

  @override
  String get upgradeAccountCta =>
      'Sove refleksyon ou yo sou tout aparèy – kreye yon kont';

  @override
  String get deleteAccount => 'Efase kont';

  @override
  String get exportData => 'Ekspòte done mwen yo';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Pa prese twòp 🐯\nAyara bezwen yon ti moman anvan pwochen an…';

  @override
  String get rateDailyLimit =>
      'Ou pa gen refleksyon ankò pou kounye a.\nJwenn plis refleksyon oswa mete ajou pou Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Ou fin itilize tout refleksyon ou yo.\nRechaje oswa mete ajou pou Wilaya pou kontinye.';

  @override
  String get rateGraceCreditsExhausted =>
      'Ou pa gen refleksyon ankò pou kounye a.\nJwenn plis refleksyon oswa mete ajou pou Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya debloke fonksyon prim, kategori alavni, ak yon badj espesyal.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Refleksyon ou yo vid kounye a. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Pa t kapab verifye refleksyon ou yo: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Gen yon bagay ki pa mache pandan verifikasyon refleksyon ou yo.';

  @override
  String get aiFallbackGeneric =>
      'Gen yon bagay ki pa mache — tanpri eseye ankò nan yon ti moman.';

  @override
  String get limitSectionTitle => 'Refleksyon';

  @override
  String get limitTodayLabel => 'Itilizasyon';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Refleksyon ki rete: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Ap chaje…';

  @override
  String get limitLoadingLabelDescription =>
      'Montre nan kat refleksyon yo pandan estatistik itilizasyon yo ap chaje.';

  @override
  String get aiLimitTitle => 'Refleksyon';

  @override
  String get aiLimitSubtitle =>
      'Chak repons itilize 1 refleksyon. Estanda gen refleksyon inisyal. Wilaya debloke kategori prim epi pèmèt rechaj.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total refleksyon itilize';
  }

  @override
  String get creditsSectionTitle => 'Refleksyon';

  @override
  String get creditsUsageLabel => 'Itilizasyon';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Refleksyon ki rete: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Ap chaje…';

  @override
  String get creditsLoadingLabelDescription =>
      'Montre pandan estatistik refleksyon yo ap chaje.';

  @override
  String get creditsTitle => 'Refleksyon';

  @override
  String get creditsSubtitle =>
      'Chak repons itilize 1 refleksyon. Estanda gen refleksyon inisyal. Wilaya debloke kategori prim epi pèmèt rechaj.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total refleksyon itilize';
  }

  @override
  String get settingsDeleteTitle => 'Efase kont';

  @override
  String get settingsDeleteDescription =>
      'Efase kont ou ak tout done ki asosye yo pou tout tan.';

  @override
  String get settingsDeleteButtonLabel => 'Efase kont mwen';

  @override
  String get settingsDeleteDialogTitle => 'Efase kont?';

  @override
  String get settingsDeleteDialogBody =>
      'Aksyon sa a pèmanan e li pa ka anile.\n\nTout chat ou yo, istwa ou ak enfòmasyon kont ou ap efase.';

  @override
  String get settingsDeleteDialogCancel => 'Anile';

  @override
  String get settingsDeleteDialogConfirm => 'Efase';

  @override
  String get settingsFreeLimitUsedTitle => 'Refleksyon inisyal yo itilize';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Refleksyon inisyal pou aparèy sa a deja itilize. Mete ajou pou Wilaya oswa achte plis refleksyon pou kontinye.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Refleksyon inisyal yo itilize';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Refleksyon inisyal pou aparèy sa a deja itilize. Mete ajou pou Wilaya oswa achte plis refleksyon pou kontinye.';

  @override
  String get deviceBoundError =>
      'Aparèy sa a deja lye ak yon lòt kont. Tanpri konekte ak kont orijinal la.';

  @override
  String get premiumTitle => 'Mòd Wilaya';

  @override
  String get premiumSubtitleBasic => 'Debloke eksperyans Ayara an antye.';

  @override
  String get premiumSubtitlePremium =>
      'Ou sou Wilaya. Ou bezwen plis refleksyon?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan aktyèl: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Refleksyon: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Acha yo pa disponib kounye a.';

  @override
  String get premiumSignInToPurchase =>
      'Konekte pou achte refleksyon oswa debloke Wilaya.';

  @override
  String get premiumRestorePurchases => 'Retabli acha yo';

  @override
  String get premiumProcessing => 'Ap trete…';

  @override
  String get premiumRestoreHintTitle =>
      'Ou deja achte Wilaya oswa refleksyon sou aparèy sa a oswa yon lòt?';

  @override
  String get premiumRestoreHintBody => 'Retabli acha ou yo si yo pa parèt.';

  @override
  String get premiumBuyCredits200 => 'Achte 200 refleksyon';

  @override
  String get premiumBuyCredits400 => 'Achte 400 refleksyon';

  @override
  String get premiumBecomePremiumOneTime => 'Mete ajou nan mòd Wilaya';

  @override
  String get premiumTopupHint =>
      'Avèk Wilaya, ou ka rechaje ak refleksyon siplemantè nenpòt lè ou bezwen.';

  @override
  String get premiumUpgradeCta => 'Mete ajou';

  @override
  String get premiumRequiredForCategory =>
      'Kategori sa a disponib sèlman pou itilizatè Wilaya. Mete ajou nan Paramèt pou debloke tout kontni prim.';

  @override
  String get premiumBenefitsBasic =>
      'Debloke Wilaya pou jwenn plis refleksyon, jwenn aksè ak kategori prim, epi kontinye nenpòt lè ou bezwen gidans.';

  @override
  String get premiumBenefitsPremium =>
      'Ou nan mòd Wilaya. Si ou prèske fini, ajoute kèk refleksyon anplis epi kontinye san entèripsyon.';

  @override
  String get premiumButtonBecomePremium => 'Debloke Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Ajoute 1000 refleksyon';

  @override
  String get premiumBadge => 'Wilaya aktif';

  @override
  String get premiumLoadingStore => 'Ap chaje magazen an…';

  @override
  String get premiumProductNotAvailable =>
      'Pwodui sa a poko disponib nan magazen an. Tanpri eseye ankò pita.';

  @override
  String get premiumPurchaseError =>
      'Gen yon bagay ki pa mache ak acha a. Tanpri eseye ankò.';

  @override
  String get premiumBuyCredits100 => 'Ajoute 100 refleksyon';

  @override
  String get premiumFeatureLocked =>
      'Debloke Wilaya pou jwenn aksè ak fonksyon sa a.';

  @override
  String get lockedCategoriesHint =>
      'Kèk kategori rezève pou manm Wilaya yo. Debloke yo pou eksplore chak refleksyon nan vwayaj ou.';

  @override
  String get freePlanBlockedTitle => 'Ou fin itilize refleksyon inisyal ou yo';

  @override
  String get freePlanBlockedBody =>
      'Ou sou plan Estanda a ak refleksyon inisyal yo, epi ou rive nan limit la. Pou kontinye — epi debloke kategori prim — mete ajou pou Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Gade opsyon Wilaya anba a';

  @override
  String get graceBlockedTitle => 'Ou fin itilize refleksyon inisyal ou yo';

  @override
  String get graceBlockedBody =>
      'Ou sou plan Estanda a ak refleksyon inisyal yo, epi ou rive nan limit la. Pou kontinye — epi debloke kategori prim — mete ajou pou Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Gade opsyon Wilaya anba a';

  @override
  String get rateGuestMustSignIn =>
      'Konekte pou itilize Ayara ak refleksyon ou yo.';

  @override
  String get guestNoCreditsTitle => 'Mòd envite';

  @override
  String get guestNoCreditsBody =>
      'Kòm envite ou ka navige nan app la, men ou pa ka itilize refleksyon. Konekte pita nan Paramèt pou itilize refleksyon epi debloke acha yo.';

  @override
  String get guestDialogContinue => 'Kontinye';

  @override
  String get guestDialogLoginInstead => 'Konekte pito';

  @override
  String get optionalLabel => 'opsyonèl';

  @override
  String get accountDeleteSuccessTitle => 'Kont efase';

  @override
  String get accountDeleteSuccessBody =>
      'Kont ou ak done ki asosye yo efase avèk siksè.';

  @override
  String get accountDeleteSuccessClose => 'Fèmen';

  @override
  String get accountDeleteErrorTitle => 'Pa t kapab efase kont lan';

  @override
  String get accountDeleteErrorClose => 'Dakò';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-otantifikasyon an te anile. Tanpri konekte ankò epi eseye efase a ankò.';

  @override
  String get accountDeleteReauthRequired =>
      'Efase kont mande yon koneksyon resan. Tanpri dekonekte, konekte ankò, epi eseye efase a ankò.';

  @override
  String get settingsDeletePermanentWarning =>
      'Aksyon sa a pèmanan e li pa ka anile. Tout done ki asosye ak kont ou ap efase.';

  @override
  String get dailyGraceTitle => 'Gidans Chak Jou';

  @override
  String get dailyGraceScriptureLabel => 'VÈSÈ JOU A';

  @override
  String get dailyGraceSaintLabel => 'FIGURE DE LA SEMAINE';

  @override
  String get dailyGraceReflectionLabel => 'REFLEKSYON ASWÈ';

  @override
  String get dailyGraceCopiedToast => 'Vèsè a kopye nan clipboard';

  @override
  String get locationConsentLabel =>
      'Pèmèt Ayara itilize lokalizasyon mwen pou direksyon Kibla ak lè lapriyè yo';

  @override
  String get locationConsentHint =>
      'Sèlman itilize pou fonksyon sa yo. Lokalizasyon ou pa janm pataje ni estoke.';

  @override
  String get askPageTitle => 'Mande Ayara';

  @override
  String get askPageDescription =>
      'Poze nenpòt kesyon sou lafwa, lapriyè, lavi oswa pratik islamik epi resevwa gidans ki chita sou Koran an ak ansèyman Ahl al-Bayt yo.';

  @override
  String get askPageInputHint => 'Ekri kestyon ou la a…';

  @override
  String get askPageSubmitCta => 'Mande';

  @override
  String get askPageInputEmptyError => 'Tanpri ekri yon kestyon anvan.';

  @override
  String get askResultYourQuestion => 'Kesyon ou';

  @override
  String get guidancePageTitle => 'Kibla';

  @override
  String get qiblaFacingMecca => 'Anfas Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Vire telefòn ou jiskaske zegwi lò a montre anlè.\nDireksyon sa a montre Kibla a (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Siyal GPS la fèb. Deplase deyò epi tape Eseye Ankò.';

  @override
  String get qiblaRetry => 'Eseye ankò';

  @override
  String get qiblaTitle => 'Direksyon Kibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km rive Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokalizasyon nesesè';

  @override
  String get qiblaLocationNeededBody =>
      'Pèmèt aksè a lokalizasyon pou Ayara ka kalkile direksyon Kaaba a nan Makkah soti nenpòt kote ou ye a.';

  @override
  String get qiblaOpenSettings => 'Louvri Paramèt';

  @override
  String get qiblaCompassLoading => 'Ap jwenn pozisyon ou…';

  @override
  String get qiblaTowardMecca => 'Vè Makkah';

  @override
  String get prayerTimesTitle => 'Lè Lapriyè yo';

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
  String get prayerTimesLocationNeededTitle => 'Lokalizasyon nesesè';

  @override
  String get prayerTimesLocationNeededBody =>
      'Pèmèt aksè a lokalizasyon pou Ayara ka kalkile lè lapriyè egzak pou vil ou a.';

  @override
  String get prayerTimesNextLabel => 'Pwochen';

  @override
  String get prayerTimesDoneLabel => 'Fini';

  @override
  String get monthlyPrayerTimesTitle => 'Lè Lapriyè Mansyèl';

  @override
  String get monthlyPrayerTimesViewButton => 'Gade Tout Mwa a';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mwa pwochèn';

  @override
  String get monthlyPrayerTimesDayHeader => 'Jou';

  @override
  String get sharePrayerTimes => 'Pataje lè lapriyè yo';

  @override
  String get notificationsSectionTitle => 'Notifikasyon';

  @override
  String get notificationsSectionSubtitle =>
      'Rapèl lapriyè, evènman kalandriye ak plis ankò';

  @override
  String get dailyReflectionReminderTitle => 'Refleksyon Chak Jou';

  @override
  String get dailyReflectionReminderDescription =>
      'Yon rapèl dous chak jou pou louvri Ayara epi konekte ak lafwa ou.';

  @override
  String get dailyReflectionReminderEnable => 'Aktive rapèl chak jou';

  @override
  String get dailyReflectionReminderTimeLabel => 'Lè rapèl la';

  @override
  String get prayerNotificationsTitle => 'Rapèl Lapriyè';

  @override
  String get prayerNotificationsDescription =>
      'Resevwa yon rapèl dous anvan chak lè lapriyè pou ede w rete konekte pandan tout jounen an.';

  @override
  String get prayerNotificationsEnable => 'Aktive rapèl lapriyè';

  @override
  String get prayerNotificationsOpenSettings => 'Louvri paramèt notifikasyon';

  @override
  String get prayerNotificationsDenied => 'Notifikasyon yo dezaktive';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ale nan Paramèt epi pèmèt notifikasyon pou Ayara pou resevwa rapèl lè lapriyè.';

  @override
  String get notificationsConsentLabel =>
      'Pèmèt notifikasyon pou lè lapriyè yo';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Lapriyè Lòtbò Jounen';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr se lapriyè maten Ahl al-Bayt yo. Imam Ali (AS) te di: Pwoteje lapriyè dimaten an tankou ou pwoteje sa ki pi presye pou ou. Leve, pirifye tèt ou, epi kanpe devan Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Lapriyè Midi';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imam Ahl al-Bayt yo te bay chak moman souvni anpil valè. Fè yon poz nan jounen ou, mete Dhuhr ak Asr ansanm si sa nesesè, epi remete kè ou bay Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Lapriyè Apremidi';

  @override
  String get prayerNotifBodyAsr =>
      'Pwoteje lapriyè a, paske se alyans ki genyen ant ou menm ak Allah. Lè Asr rive — pa kite l pase san souvni.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Lapriyè Solèy Kouche';

  @override
  String get prayerNotifBodyMaghrib =>
      'Solèy la kouche — yon moman Ahl al-Bayt yo te konsidere sakre pou siplikasyon. Fè Maghrib epi louvri men ou bay Allah nan dua anvan lannuit kòmanse.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Lapriyè Lannuit';

  @override
  String get prayerNotifBodyIsha =>
      'Fini jounen ou an nan konpayi Allah. Imams yo te ankouraje Salat al-Layl apre Isha — men anvan sa, fini Isha ou epi fèmen jounen an ak sonje Li.';

  @override
  String get outOfReflectionsBannerText =>
      'Ou fin itilize tout refleksyon ou yo';

  @override
  String get outOfReflectionsBannerCta => 'Jwenn plis';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tape sèk la pou konte';

  @override
  String get dhikrResetButton => 'Reyinisyalize';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Ou fini 100 souvni Allah. Ke yo vin yon limyè pou kè ou.';

  @override
  String get disclaimerTitle => 'Konsènan gidans app sa a';

  @override
  String get disclaimerBody =>
      'Ayara bay refleksyon islamik, rapèl, ak kontni espirityèl pou soutni chemen pèsonèl lafwa ou, ki chita sou Koran an ak ansèyman Ahl al-Bayt yo. Kontni sa a ofri sèlman pou rezon jeneral enfòmasyon ak enspirasyon.\n\nAyara pa ranplase etid relijye kalifye.\nGidans nan app sa a pa yon ranplasman pou yon savan islamik, marja\', oswa pwofesè ki gen fòmasyon teolojik. Nan Islam chiit, gidans relijye chita sou lekòl Ja\'fari a nan jirisprudans (fiqh) ak sou tradisyon swiv yon Marja\' vivan (sous imitasyon) — yon jiris kalifye ki gide kwayan yo nan pratik relijye yo. Si ou gen kestyon sou règ relijye yo, sa ki halal ak haram, oswa obligasyon relijye pèsonèl, tanpri chèche konsèy nan men yon Marja\' kalifye oswa yon savan nan kominote ou a.\n\nApp sa a pa bay règ relijye.\nAyara pa fè detèminasyon otoritè sou kestyon fiqh oswa obligasyon relijye pèsonèl. Anyen isit la pa dwe konsidere kòm yon fatwa oswa yon enstriksyon relijye obligatwa.\n\nSantralite Ahl al-Bayt la.\nNan Islam chiit, Pwofèt Muhammad ﷺ ak fanmi pirifye li a — Ahl al-Bayt — se gid otoritè kominote islamik la apre Koran an. Douz Imams Ahl al-Bayt yo se entèprèt divinman nonmen nan ansèyman islamik yo. Kontni nan app sa a reflete tradisyon sa a epi chèche onore li fidèlman.\n\nAfè kominotè yo.\nApp sa a vize ankouraje angajman ou ak lafwa pandan li respekte anpil wòl enpòtan moske lokal ou a, sant islamik ou a, ak kominote relijye ou a. Nou ankouraje ou rete konekte ak aprann nan men pwofesè kalifye ki pre ou.';

  @override
  String get disclaimerClose => 'Mwen konprann';

  @override
  String get disclaimerInfoTooltip => 'Konsènan gidans app sa a';

  @override
  String get disclaimerSettingsSubtitle =>
      'Pou rezon jeneral enfòmasyon sèlman. Tape pou li avètisman konplè a.';

  @override
  String get disclaimerSectionHeader => 'Avètisman sou gidans';

  @override
  String get navHome => 'Akèy';

  @override
  String get navReflect => 'Reflechi';

  @override
  String get navDuas => 'Dua yo';

  @override
  String get navCalendar => 'Kalandriye';

  @override
  String get dashboardToday => 'JODI A';

  @override
  String get dashboardComingUp => 'Sa k ap vini';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jou',
      one: 'jou',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Aksè Rapid';

  @override
  String get quickActionQibla => 'Kibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Gidans';

  @override
  String get quickActionPrayerTimes => 'Lè Lapriyè yo';

  @override
  String get askAyaraTitle => 'Mande Ayara';

  @override
  String get askAyaraSubtitle =>
      'Poze nenpòt kestyon islamik epi resevwa yon repons reflechi ak byen gide.';

  @override
  String get askAyaraHint => 'eg. Ki enpòtans Ramadan?';

  @override
  String get askAyaraSubmit => 'Mande';

  @override
  String get wisdomOfTheDayTitle => 'Sajès Jounen an';

  @override
  String get calendarScreenTitle => 'Kalandriye Islamik';

  @override
  String get calendarUpcomingOccasions => 'Okazyon k ap vini yo';

  @override
  String get calendarOccasionRemindersTitle => 'Rapèl Okazyon yo';

  @override
  String get calendarOccasionRemindersHint =>
      'Yo fè w konnen aswè avan chak okazyon';

  @override
  String get calendarNotifPermissionDenied =>
      'Pèmisyon notifikasyon refize. Aktive li nan paramèt aparèy ou a.';

  @override
  String get calendarNoEvents => 'Pa gen evènman k ap vini yo jwenn.';

  @override
  String get calendarAddToPhone => 'Ajoute nan Kalendri telefòn';

  @override
  String get calendarAddedToPhone => 'Ajoute nan Kalendri a';

  @override
  String get calendarCountdownToday => 'JODI A';

  @override
  String get calendarCountdownTomorrow => 'DEMEN';

  @override
  String calendarCountdownDays(int days) {
    return 'nan $days jou';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fev';

  @override
  String get calendarMonthMar => 'Mas';

  @override
  String get calendarMonthApr => 'Avr';

  @override
  String get calendarMonthMay => 'Me';

  @override
  String get calendarMonthJun => 'Jen';

  @override
  String get calendarMonthJul => 'Jiy';

  @override
  String get calendarMonthAug => 'Out';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Des';

  @override
  String get calendarSeasonMuharramEarly => 'Jou Muharram yo — sonje Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — jou dèy ak refleksyon';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — karant jou Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Chemen pou Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — dimaten revelasyon an';

  @override
  String get calendarSeasonMidShaban =>
      'Mitan Sha\'ban — anivèsè Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mwa Koran an';

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
  String get duasScreenTitle => 'Dua ak Ziyarat';

  @override
  String get duasSearchHint => 'Chèche dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tout';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua ak ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Pa gen dua yo jwenn.';

  @override
  String get duaCategoryDaily => 'Chak jou';

  @override
  String get duaCategoryWeekly => 'Chak semèn';

  @override
  String get duaCategoryOccasions => 'Okazyon';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nesans';

  @override
  String get eventTypeMartyrdom => 'Matiraj';

  @override
  String get eventTypeOccasion => 'Okazyon';

  @override
  String get duaCopyTooltip => 'Kopye tradiksyon';

  @override
  String get duaToggleTransliteration => 'Transliterasyon';

  @override
  String get duaToggleTranslation => 'Tradiksyon';

  @override
  String get duaAskAiLabel => 'Mande Ayara pou eksplike dua sa a';

  @override
  String get duaAskAiLockedLabel => 'Mande Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Eksplikasyon Ayara yo disponib pou manm Wilaya yo. Mete ajou nan Paramèt.';

  @override
  String duaAiComingSoon(String name) {
    return 'Mande Ayara sou \"$name\" — byento!';
  }

  @override
  String get duaCopiedToast => 'Dua a kopye nan clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah se pi Gran an';

  @override
  String get tasbihAlhamdulillahMeaning => 'Tout louwanj se pou Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glwa pou Allah';

  @override
  String get tasbihResetTooltip => 'Reyinisyalize';

  @override
  String get tasbihCompleteTitle => 'Tasbih Fini';

  @override
  String get tasbihCompleteMessage => 'Ke Allah aksepte dhikr ou a.';

  @override
  String get tasbihTapHint => 'Tape nenpòt kote pou konte';

  @override
  String get tasbihatScreenTitle => 'Gid Lapriyè';

  @override
  String get tasbihatScreenSubtitle => 'GLORIFIKASYON LAPRIYÈ YO';

  @override
  String get tasbihatScreenDescription =>
      'Yon gid konplè sou glorifikasyon yo resite pandan ak apre lapriyè chak jou yo — selon tradisyon Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Resite pandan 3yèm ak 4yèm rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Nan jirisprudans chiit, Tasbiḥāt al-Arbaʿa ranplase Surah al-Fatiha nan 3yèm ak 4yèm rakʿah Dhuhr, Asr, Maghrib, ak Isha. Li obligatwa (wājib) pou resite li yon fwa, epi rekòmande (mustaḥabb) pou resite li twa fwa.';

  @override
  String get tasbihatArba3Translation =>
      'Glwa pou Allah · Tout louwanj se pou Allah\nPa gen lòt dye pase Allah · Allah se pi Gran an';

  @override
  String get tasbihatArba3CompleteTitle => 'Resitasyon Fini';

  @override
  String get tasbihatArba3CompleteMessage => 'Ke lapriyè ou aksepte — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tape apre chak resitasyon';

  @override
  String get tasbihatZahraSubtitle => 'Apre chak lapriyè · 100 grenn';

  @override
  String get tasbihatZahraOriginLabel => 'Orijin';

  @override
  String get tasbihatZahraHadith =>
      'Sayyida Fatima al-Zahra (sa) te mande Pwofèt la ﷺ yon sèvitè. Li te di: \"Èske mwen pa ta montre ou yon bagay ki pi bon? Resite Subḥānallāh 33 fwa, Alḥamdulillāh 33 fwa, epi Allāhu Akbar 34 fwa apre chak lapriyè. Sa pi bon pou ou pase yon sèvitè.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Louvri Konte Tasbīḥ la';

  @override
  String get tasbihatDuasTitle => 'DUĀS REKÒMANDE';

  @override
  String get tasbihatDuasSubtitle => 'Apre ou fini lapriyè ou';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Apre chak lapriyè obligatwa';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Nenpòt moun ki resite Āyat al-Kursī apre chak lapriyè obligatwa, pa gen anyen ant li menm ak paradi a eksepte lanmò. Imam al-Bāqir (a) te di li pami vèsè ki pi gran yo nan Koran an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Apre chak lapriyè · sele tout siplikasyon yo';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Voye salitasyon sou Pwofèt la ﷺ ak fanmi pirifye li a (Āl Muḥammad) rekòmande pou sele chak dua. Imam al-Ṣādiq (a) te di: \"Nenpòt dua rete an sispens jiskaske ou voye ṣalawāt sou Muḥammad ak fanmi li.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Apre chak lapriyè · pou Imam tan nou an';

  @override
  String get tasbihatDuaFarajSource =>
      'Imam al-Ḥasan al-ʿAskarī (a) te anseye li';

  @override
  String get tasbihatDuaFarajNote =>
      'Yon dua pou reaparans Imam al-Mahdī (af), douzyèm Imam, ki te anseye pa papa li. Li souvan li pa anpil Mizilman Shia apre lapriyè kòm yon aksyon devosyon pou Imam vivan an.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Sayyida Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Apre Maghrib ak Isha · espesyalman rekòmande';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) te di ke resite Tasbīḥ al-Zahrā apre Isha anvan dòmi pi bon pase 1000 rakʿah lapriyè sipèrogatwa. Limyè li monte nan syèl yo.';

  @override
  String get tasbihFatimaGiftPre => 'Yon kado Pwofèt la';

  @override
  String get tasbihFatimaGiftPost => 'resite apre chak lapriyè';

  @override
  String get prayerTrackerTitle => 'SWIVI LAPRIYÈ';

  @override
  String get prayerTrackerPrayed => 'Lapriyè fèt';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count jou youn apre lòt';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Tout lapriyè fini jodi a. Ke Allah aksepte yo.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Fini jodi a';

  @override
  String get dhikrTrackerNotDoneToday => 'Pa fèt jodi a';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count jou youn apre lòt';
  }

  @override
  String get dhikrReminderTitle => 'Rapèl Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Yon rapèl dous chak jou pou resite Tasbīḥ al-Zahrā (SA) ou a.';

  @override
  String get dhikrReminderEnable => 'Aktive rapèl Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Lè rapèl la';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Chak Jou';

  @override
  String get hadithLabelArabic => 'ARAB';

  @override
  String get hadithLabelTranslation => 'TRADIKSYON';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Pataje Hadith Sa a';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anvan';

  @override
  String get hadithNavNext => 'Apre';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Katorz Enfaibl';

  @override
  String get imamsScreenSubtitle =>
      'Pwofèt la, Madan Fatima, ak Douz Imam yo — gid ki pwepare ak enfaibl nan Islam Shia Twelver';

  @override
  String get imamLabelBorn => 'Fèt';

  @override
  String get imamLabelMartyrdom => 'Matiraj';

  @override
  String get imamLabelStatus => 'Estati';

  @override
  String get imamSectionBiography => 'BYOGRAFI';

  @override
  String get imamSectionFamousSaying => 'PAWÒL POPILÈ';

  @override
  String get imamRoleProphet => 'Dènye Pwofèt la';

  @override
  String get imamRoleInfallible => 'Enfayib la';

  @override
  String get imamOrdinal1 => '1ye Imam';

  @override
  String get imamOrdinal2 => '2yèm Imam';

  @override
  String get imamOrdinal3 => '3yèm Imam';

  @override
  String get imamOrdinal4 => '4yèm Imam';

  @override
  String get imamOrdinal5 => '5yèm Imam';

  @override
  String get imamOrdinal6 => '6yèm Imam';

  @override
  String get imamOrdinal7 => '7yèm Imam';

  @override
  String get imamOrdinal8 => '8yèm Imam';

  @override
  String get imamOrdinal9 => '9yèm Imam';

  @override
  String get imamOrdinal10 => '10yèm Imam';

  @override
  String get imamOrdinal11 => '11yèm Imam';

  @override
  String get imamOrdinal12 => '12yèm Imam';

  @override
  String get duaAudioScreenTitle => 'Koute Dua yo';

  @override
  String get duaAudioScreenSubtitle =>
      'Chwazi yon dua pou koute. Tape kare a pou jwe oswa pran poz.';

  @override
  String get duaAudioComingSoonMessage =>
      'Odyo pou dua sa a ap disponib nan yon pwochen mizajou.';

  @override
  String get duaAudioClose => 'Fèmen';

  @override
  String get duaAudioError =>
      'Pa t kapab chaje odyo a. Tanpri verifye koneksyon ou.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmèt pa';

  @override
  String get duaAudioMetaOccasion => 'Okazyon';

  @override
  String get duaAudioMetaDuration => 'Dire';

  @override
  String get quickActionDailyHadith => 'Hadith Chak Jou';

  @override
  String get quickAction14Masumeen => 'Katorz Enfaibl';

  @override
  String get quickActionListenDuas => 'Koute';

  @override
  String get quickActionTasbihat => 'Gid Lapriyè';

  @override
  String get pilgrimageSectionTitle => 'Vwayaj Sakre a';

  @override
  String get pilgrimageSectionSubtitle =>
      'Gid konplè pou Hajj ak Umrah — pelerinaj pou Kay Sakre Allah la nan Mekka';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Senkyèm Pilye Islam';

  @override
  String get hajjCardDescription =>
      'Gran pelerinaj anyèl la — obligatwa yon fwa nan lavi pou chak Mizilman ki gen kapasite';

  @override
  String get hajjScreenTitle => 'Gid Hajj';

  @override
  String get hajjScreenSubtitle => 'Gid etap pa etap pou gran pelerinaj la';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ti Pelerinaj la';

  @override
  String get umrahCardDescription =>
      'Yon vwayaj espirityèl ki bay anpil rekonpans e ki ka fèt nenpòt moman nan ane a';

  @override
  String get umrahScreenTitle => 'Gid Umrah';

  @override
  String get umrahScreenSubtitle => 'Gid etap pa etap pou ti pelerinaj la';

  @override
  String get pilgrimageStepsTitle => 'Rit ak Etap';

  @override
  String get pilgrimageImportantNotesTitle => 'Nòt Enpòtan';

  @override
  String get pilgrimageDuaTitle => 'Dua pou etap sa a';

  @override
  String get pilgrimageJafariNoteTitle => 'Nòt Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Konplè';

  @override
  String get pilgrimageMarkDone => 'Make kòm konplè';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done nan $total etap';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pèleren Chiit yo';

  @override
  String get pilgrimageShiaNoteBody =>
      'Anpil Mizilman Shia ki fè pelerinaj tou vwayaje nan Medina pou ziyarat Pwofèt Muhammad (SAW) nan Masjid al-Nabawi ak tonb yo nan Jannat al-Baqi. Vizit sa yo pote gwo siyifikasyon espirityèl, byenke yo pa tèt yo rituèl Hajj.';

  @override
  String get hajjIntro =>
      'Hajj se senkyèm pilè Islam, obligatwa yon fwa nan lavi pou chak Mizilman ki fizikman ak finansyèman kapab. Pou pifò pelerin Shia Twelver jodi a, sa vle di Hajj al-Tamattu\', ki fèt nan mwa Dhul Hijjah nan tras Pwofèt Ibrahim (AS), pitit li Ismail (AS), ak Madan Hajar. Gid sa a swiv plan Ja\'fari a pou rituèl yo, pandan ziyarat nan Medina rete yon vwayaj ki cheri anpil anvan oswa apre Hajj.';

  @override
  String get umrahIntro =>
      'Umrah se ti pelerinaj pou Mekka a epi, kontrèman ak Hajj, li ka fèt nenpòt moman nan ane a. Menm si li pa obligatwa, li pote gwo rekonpans espirityèl e yo konsidere l kòm yon zak adorasyon ki anpil rekòmande. Li pataje plizyè rit ak Hajj men li pi kout, li gen kat rit prensipal.';

  @override
  String get voiceInputTitle => 'Antre Vwa';

  @override
  String get voiceInputMicTitle => 'Mikwofòn';

  @override
  String get voiceInputMicSubtitle =>
      'Pale antre ou pou mande Ayara olye de tape.';

  @override
  String get voiceInputMicDenied => 'Aksè mikwofòn te refize.';

  @override
  String get voiceInputSpeak => 'Pale olye';

  @override
  String get voiceInputListening => 'Ap koute…';

  @override
  String get voiceInputPermissionDenied =>
      'Aksè mikwofòn nesesè pou antre vwa.';
}
