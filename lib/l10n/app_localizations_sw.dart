// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Chagua lugha yako';

  @override
  String get languageSelectSub =>
      'Unaweza kubadilisha hii baadaye katika Mipangilio';

  @override
  String get actionContinue => 'Endelea';

  @override
  String get languageSuggestedHeader => 'Inayopendekezwa';

  @override
  String get languageAllHeader => 'Lugha zote';

  @override
  String get languageSuggestedBadge => 'Inayopendekezwa';

  @override
  String get languageSearchHint => 'Tafuta…';

  @override
  String get planBasic => 'Kawaida';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Mwongozo wa Kila Siku';

  @override
  String get categorySlot02 => 'Imani & Tiwala';

  @override
  String get categorySlot03 => 'Tafsiri ya Sala';

  @override
  String get categorySlot04 => 'Subira Tumaini';

  @override
  String get categorySlot05 => 'Tafuta Maghfirah';

  @override
  String get categorySlot06 => 'Rehema Huruma';

  @override
  String get categorySlot07 => 'Imani Nguvu';

  @override
  String get categorySlot08 => 'Moyo Wa Shukrani';

  @override
  String get categorySlot09 => 'Matokeo ya Maisha';

  @override
  String get categorySlot10 => 'Mahusiano ya Familia';

  @override
  String get categorySlot11 => 'Amani ya Ndani';

  @override
  String get categorySlot12 => 'Hikima ya Nabii';

  @override
  String get categorySlot13 => 'Tabia Nzuri';

  @override
  String get categorySlot14 => 'Kasimama Majaribu';

  @override
  String get categorySlot15 => 'Dhikr ya Jioni';

  @override
  String get categoryCustom => 'Tafakari Binafsi';

  @override
  String get dhikrMeaningSubhanallah => 'Subhanallah - Utukufu kwa Allah';

  @override
  String get dhikrMeaningAlhamdulillah =>
      'Alhamdulillah - Sifa zote ni kwa Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allahu Akbar - Allah ni Mkubwa Zaidi';

  @override
  String get quranVerseHeartAtRest =>
      'Hakika, katika dhikri Allah ndipo mioyo inayotulia.';

  @override
  String get promptHint =>
      'Gusa kategoria kwa mwongozo wa Kiislamu na tafakari';

  @override
  String get currentLanguage => 'Lugha ya sasa';

  @override
  String get settingsLanguage => 'Mipangilio ya lugha';

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String get chooseLanguage => 'Chagua lugha yako';

  @override
  String get continueCta => 'Endelea';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maneno',
      one: '$count neno',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Chaguzi';

  @override
  String get newCta => 'Mpya';

  @override
  String get actionsTitle => 'Unataka kufanya nini?';

  @override
  String get copy => 'Nakili';

  @override
  String get share => 'Sambaza';

  @override
  String get close => 'Funga';

  @override
  String get copiedToast => 'Kunakamatwa katika clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Haikuweza kutengeneza jibu jipya';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nUnataka kujaribu tena?';
  }

  @override
  String get cancelCta => 'Ghairi';

  @override
  String get retryCta => 'Jaribu tena';

  @override
  String get authTitle => 'Tengeneza akaunti yako';

  @override
  String get continueAsGuest => 'Endelea kama mgeni';

  @override
  String get signInGoogle => 'Ingia kwa Google';

  @override
  String get signInApple => 'Ingia kwa Apple';

  @override
  String get signInEmail => 'Ingia kwa Barua pepe';

  @override
  String get upgradeWithApple => 'Endelea kwa Apple';

  @override
  String get mustAccept =>
      'Lazima ukubali Masharti na Kusikilizana na Sera ya Faragha.';

  @override
  String get termsLabel => 'Nakubali Masharti ya Huduma';

  @override
  String get privacyLabel => 'Nimebaini Sera ya Faragha';

  @override
  String get marketingOptIn => 'Nakubali kupokea habari na ofa';

  @override
  String get openTerms => 'Masharti ya Huduma';

  @override
  String get openPrivacy => 'Sera ya Faragha';

  @override
  String get accountSection => 'Akaunti';

  @override
  String get guestMode => 'Njia ya mgeni';

  @override
  String get signedIn => 'Umeingia';

  @override
  String get upgradeHint =>
      'Hifadhi tafakari zako katika vifaa vya tofauti kwa kutengeneza akaunti.';

  @override
  String get upgradeWithGoogle => 'Endelea kwa Google';

  @override
  String get signOut => 'Toka nje';

  @override
  String get snackUpgraded => 'Akaunti iliboreshwa kwa Google ✅';

  @override
  String get snackSignedIn => 'Umeingia kwa Google ✅';

  @override
  String get snackSignedOut => 'Umetoka nje';

  @override
  String get snackSignedInApple => 'Umeingia kwa Apple ✅';

  @override
  String get snackSignedInGoogle => 'Umeingia kwa Google ✅';

  @override
  String get snackUpgradedApple => 'Akaunti iliboreshwa kwa Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akaunti iliboreshwa kwa Google ✅';

  @override
  String get historyTitle => 'Tafakari Zilizopita';

  @override
  String get historyOpenCta => 'Tafakari Zilizopita';

  @override
  String get historyEmpty => 'Hakuna tafakari zilizohifadhiwa bado.';

  @override
  String get historyDeleteTitle => 'Futa tafakari?';

  @override
  String get historyDeleteBody =>
      'Hii itaondoa kabisa kipengele kilichochaguliwa.';

  @override
  String get deleteCta => 'Futa';

  @override
  String get historyButton => 'Tafakari Zilizopita';

  @override
  String get historyEmptyTitle => 'Hakuna tafakari bado';

  @override
  String get historyEmptyBody =>
      'Tengeneza kitu kwanza — mambo yako yaliyohifadhiwa yatakuja hapa.';

  @override
  String get historyDelete => 'Futa';

  @override
  String get footerTitle => 'Pamoja na Wilaya, Imani na Sabri';

  @override
  String get footerSubtitle => 'Sala moja kwa wakati mmoja';

  @override
  String get genericErrorSnack =>
      'Kitu kimefeli — tafadhali jaribu tena baada ya dakika.';

  @override
  String get upgradeAccountCta =>
      'Hifadhi tafakari zako katika vifaa vya tofauti – tengeneza akaunti';

  @override
  String get deleteAccount => 'Futa akaunti';

  @override
  String get exportData => 'Sabiti data yangu';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Pole pole 🐯\nAyara inahitaji muda kabla ya inayofuata…';

  @override
  String get rateDailyLimit =>
      'Umechelewa kwa tafakari kwa sasa.\nPata tafakari zaidi au boreshwa kuwa Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Umetumia tafakari zako zote.\nJaza tena au boreshwa kuwa Wilaya ili kuendelea.';

  @override
  String get rateGraceCreditsExhausted =>
      'Umechelewa kwa tafakari kwa sasa.\nPata tafakari zaidi au boreshwa kuwa Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya inafungua sifa za ziada, kategoria za baadaye, na badge ya pekee.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tafakari zako zina kazi sasa. Mpango: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Haikuweza kuangalia tafakari zako: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Kitu kimefeli wakati wa kuangalia tafakari zako.';

  @override
  String get aiFallbackGeneric =>
      'Kitu kimefeli — tafadhali jaribu tena baada ya dakika.';

  @override
  String get limitSectionTitle => 'Tafakari';

  @override
  String get limitTodayLabel => 'Matumizi';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Tafakari iliyobaki: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Mpango: $plan';
  }

  @override
  String get limitLoadingLabel => 'Inapakua…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Tafakari';

  @override
  String get aiLimitSubtitle =>
      'Kila jibu linatumia tafakari 1. Kawaida inajumuisha tafakari za kuanza. Wilaya inafungua kategoria za ziada na kuwezesha kujaza upya.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total tafakari zilizotumika';
  }

  @override
  String get creditsSectionTitle => 'Tafakari';

  @override
  String get creditsUsageLabel => 'Matumizi';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Tafakari iliyobaki: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Mpango: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Inapakua…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Tafakari';

  @override
  String get creditsSubtitle =>
      'Kila jibu linatumia tafakari 1. Kawaida inajumuisha tafakari za kuanza. Wilaya inafungua kategoria za ziada na kuwezesha kujaza upya.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total tafakari zilizotumika';
  }

  @override
  String get settingsDeleteTitle => 'Futa akaunti';

  @override
  String get settingsDeleteDescription =>
      'Futa akaunti yako kabisa na data yote inayohusiana.';

  @override
  String get settingsDeleteButtonLabel => 'Futa akaunti yangu';

  @override
  String get settingsDeleteDialogTitle => 'Futa akaunti?';

  @override
  String get settingsDeleteDialogBody =>
      'Hatua hii ni milele wala haina kurudi nyuma.\n\nMazungumzo yako yote, historia na taarifa za akaunti itafutwa.';

  @override
  String get settingsDeleteDialogCancel => 'Ghairi';

  @override
  String get settingsDeleteDialogConfirm => 'Futa';

  @override
  String get settingsFreeLimitUsedTitle => 'Tafakari za kuanza zilizotumika';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Tafakari za kuanza kwa kifaa hiki zimechelewa. Boreshwa kuwa Wilaya au nunua tafakari zaidi ili kuendelea.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Tafakari za kuanza zilizotumika';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Tafakari za kuanza kwa kifaa hiki zimechelewa. Boreshwa kuwa Wilaya au nunua tafakari zaidi ili kuendelea.';

  @override
  String get deviceBoundError =>
      'Kifaa hiki kimeunganishwa tayari na akaunti nyingine. Tafadhali ingia kwa akaunti ya asili.';

  @override
  String get premiumTitle => 'Njia ya Wilaya';

  @override
  String get premiumSubtitleBasic => 'Fungua Ayara kamili.';

  @override
  String get premiumSubtitlePremium =>
      'Uko kwenye Wilaya. Je, unahitaji tafakari zaidi?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Mpango wa sasa: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Tafakari: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Ununuzi sio available sasa.';

  @override
  String get premiumSignInToPurchase =>
      'Ingia ili kununua tafakari au kufungua Wilaya.';

  @override
  String get premiumRestorePurchases => 'Rejeza ununuzi';

  @override
  String get premiumProcessing => 'Inaendelea…';

  @override
  String get premiumRestoreHintTitle =>
      'Tayari ukanunua Wilaya au tafakari kwenye kifaa hiki au nyingine?';

  @override
  String get premiumRestoreHintBody => 'Rejeza ununuzi wako kama havionyeshi.';

  @override
  String get premiumBuyCredits200 => 'Nunua tafakari 200';

  @override
  String get premiumBuyCredits400 => 'Nunua tafakari 400';

  @override
  String get premiumBecomePremiumOneTime => 'Boreshwa kuwa Wilaya';

  @override
  String get premiumTopupHint =>
      'Pamoja na Wilaya, unaweza kujaza tafakari zaidi kila wakati unapohitaji.';

  @override
  String get premiumUpgradeCta => 'Boreshwa';

  @override
  String get premiumRequiredForCategory =>
      'Kategoria hii inapatikana tu kwa watumiaji wa Wilaya. Boreshwa katika Mipangilio kufungua msimu mzuri kamili.';

  @override
  String get premiumBenefitsBasic =>
      'Fungua Wilaya kupata tafakari zaidi, fikiri kategoria za ziada, na endelea kila wakati unahitaji mwongozo.';

  @override
  String get premiumBenefitsPremium =>
      'Uko katika Wilaya. Kama unapotaka tafakari, ongeza zingine na endelea bila kukatizwa.';

  @override
  String get premiumButtonBecomePremium => 'Fungua Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Ongeza tafakari 1000';

  @override
  String get premiumBadge => 'Wilaya inashughuli';

  @override
  String get premiumLoadingStore => 'Inapakua hifadhi…';

  @override
  String get premiumProductNotAvailable =>
      'Bidhaa hii sio available katika hifadhi bado. Tafadhali jaribu tena baadaye.';

  @override
  String get premiumPurchaseError =>
      'Kitu kimefeli na ununuzi. Tafadhali jaribu tena.';

  @override
  String get premiumBuyCredits100 => 'Ongeza tafakari 100';

  @override
  String get premiumFeatureLocked => 'Fungua Wilaya ili kufikiri sifa hii.';

  @override
  String get lockedCategoriesHint =>
      'Baadhi ya kategoria zimerezekerwa kwa wanachama wa Wilaya. Funguza ili kutafakari kila sehemu katika safari yako.';

  @override
  String get freePlanBlockedTitle => 'Umechelewa kwa tafakari za kuanza';

  @override
  String get freePlanBlockedBody =>
      'Uko kwenye mpango wa Kawaida na tafakari za kuanza, na umefika kiwango. Ili kuendelea — na kufungua kategoria za ziada — boreshwa kuwa Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Angalia chaguzi za Wilaya chini';

  @override
  String get graceBlockedTitle => 'Umechelewa kwa tafakari za kuanza';

  @override
  String get graceBlockedBody =>
      'Uko kwenye mpango wa Kawaida na tafakari za kuanza, na umefika kiwango. Ili kuendelea — na kufungua kategoria za ziada — boreshwa kuwa Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Angalia chaguzi za Wilaya chini';

  @override
  String get rateGuestMustSignIn => 'Ingia ili kutumia Ayara na tafakari zako.';

  @override
  String get guestNoCreditsTitle => 'Njia ya mgeni';

  @override
  String get guestNoCreditsBody =>
      'Kama mgeni unaweza kupitia programu, lakini huwezi kutumia tafakari. Ingia baadaye katika Mipangilio ili kutumia tafakari na kufungua ununuzi.';

  @override
  String get guestDialogContinue => 'Endelea';

  @override
  String get guestDialogLoginInstead => 'Ingia badala yake';

  @override
  String get optionalLabel => 'ikhtiyari';

  @override
  String get accountDeleteSuccessTitle => 'Akaunti ifutwa';

  @override
  String get accountDeleteSuccessBody =>
      'Akaunti yako na data inayohusiana imefutwa kwa mafanikio.';

  @override
  String get accountDeleteSuccessClose => 'Funga';

  @override
  String get accountDeleteErrorTitle => 'Haikuweza kufuta akaunti';

  @override
  String get accountDeleteErrorClose => 'SAWA';

  @override
  String get accountDeleteReauthCancelled =>
      'Uthibiti upya ulibatilishwa. Tafadhali ingia tena na jaribu kufuta tena.';

  @override
  String get accountDeleteReauthRequired =>
      'Kufuta akaunti kunahitaji kuingia kamakaribuni. Tafadhali toka nje, ingia tena, na jaribu kufuta tena.';

  @override
  String get settingsDeletePermanentWarning =>
      'Hatua hii ni milele wala haina kurudi nyuma. Data yote inayohusiana na akaunti yako itafutwa.';

  @override
  String get dailyGraceTitle => 'Mwongozo wa Kila Siku';

  @override
  String get dailyGraceScriptureLabel => 'AYATI YA SIKU';

  @override
  String get dailyGraceSaintLabel => 'MWALIMU WA WIKI';

  @override
  String get dailyGraceReflectionLabel => 'TAFAKARI YA JIONI';

  @override
  String get dailyGraceCopiedToast => 'Ayati kunakamata katika clipboard';

  @override
  String get locationConsentLabel =>
      'Ruhusu Ayara kutumia mahali pangu kwa mwongozo wa Qibla na saa za sala';

  @override
  String get locationConsentHint =>
      'Hutumika tu kwa sifa hizi. Mahali pako haujakamatwa wala kukamaishwa.';

  @override
  String get askPageTitle => 'Uliza Ayara';

  @override
  String get askPageDescription =>
      'Uliza chochote kuhusu imani, sala, maisha, au mazoezi ya Kiislamu na upokee mwongozo unaomaanisha Quranic na malimu ya Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Andika swali lako hapa…';

  @override
  String get askPageSubmitCta => 'Uliza';

  @override
  String get askPageInputEmptyError => 'Tafadhali andika swali kwanza.';

  @override
  String get askResultYourQuestion => 'Swali lako';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Kumkabili Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Zunguka simu yako hadi sindano ya dhahabu ielewe juu.\nMwelekeo huo unashangilia Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Wimbi la GPS ni dhaifu. Nenda nje na gusa Jaribu tena.';

  @override
  String get qiblaRetry => 'Jaribu tena';

  @override
  String get qiblaTitle => 'Mwelekeo wa Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km kwa Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Mahali palipoanikwa';

  @override
  String get qiblaLocationNeededBody =>
      'Ruhusu kufahamiana mahali ili Ayara iweze kuhesabu mwelekeo wa Kaaba katika Makkah kutoka mahali utakapo.';

  @override
  String get qiblaOpenSettings => 'Fungua Mipangilio';

  @override
  String get qiblaCompassLoading => 'Kutafuta mahali pako…';

  @override
  String get qiblaTowardMecca => 'Kuelekea Makkah';

  @override
  String get prayerTimesTitle => 'Saa za Sala';

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
  String get prayerTimesLocationNeededTitle => 'Mahali palipoanikwa';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ruhusu kufahamiana mahali ili Ayara iweze kuhesabu saa za sala kamili kwa jiji lako.';

  @override
  String get prayerTimesNextLabel => 'Inayofuata';

  @override
  String get prayerTimesDoneLabel => 'Imefanywa';

  @override
  String get monthlyPrayerTimesTitle => 'Saa za Sala za Kila Mwezi';

  @override
  String get monthlyPrayerTimesViewButton => 'Angalia Mwezi Kamili';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mwezi ujao';

  @override
  String get monthlyPrayerTimesDayHeader => 'Siku';

  @override
  String get sharePrayerTimes => 'Sambaza saa za sala';

  @override
  String get notificationsSectionTitle => 'Notifikasi';

  @override
  String get notificationsSectionSubtitle =>
      'Kumbukumbu za sala, matukio ya kalenda & zaidi';

  @override
  String get dailyReflectionReminderTitle => 'Tafakari ya Kila Siku';

  @override
  String get dailyReflectionReminderDescription =>
      'Kumbukumbu nyingi ya kila siku ili kufungua Ayara na kuunganisha na imani yako.';

  @override
  String get dailyReflectionReminderEnable => 'Wezesha kumbukumbu ya kila siku';

  @override
  String get dailyReflectionReminderTimeLabel => 'Wakati wa kumbukumbu';

  @override
  String get prayerNotificationsTitle => 'Kumbukumbu za Sala';

  @override
  String get prayerNotificationsDescription =>
      'Pokea kumbukumbu nyinzi kabla ya kila wakati wa sala kusaidia kukamatia katika mlangoni siku nzima.';

  @override
  String get prayerNotificationsEnable => 'Wezesha kumbukumbu za sala';

  @override
  String get prayerNotificationsOpenSettings =>
      'Fungua mipangilio ya notifikasi';

  @override
  String get prayerNotificationsDenied => 'Notifikasi zimekatakatwa';

  @override
  String get prayerNotificationsDeniedHint =>
      'Nenda kwa Mipangilio na ruhusu notifikasi kwa Ayara ili kupokea kumbukumbu za saa za sala.';

  @override
  String get notificationsConsentLabel => 'Ruhusu notifikasi kwa saa za sala';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Sala ya Alfajiri';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ndio sala ya asubuhi ya Ahl al-Bayt. Imam Ali (AS) alisema: Linga sala ya Fajr kama unavalinga mali yako muhimu zaidi. Inuka, takakasa, na simama mbele ya Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Sala ya Mchana';

  @override
  String get prayerNotifBodyDhuhr =>
      'Maimamu wa Ahl al-Bayt walikamatia kila muda wa dhikri. Simamia siku yako, jumuisha Dhuhr na Asr kama inahitaji, na rejeza moyo wako kwa Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Sala ya Ajamiako';

  @override
  String get prayerNotifBodyAsr =>
      'Linga sala, kwa sababu ni muafaka kati yako na Allah. Wakati wa Asr umefika — usiiache kupita bila dhikri.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sala ya Alasiri';

  @override
  String get prayerNotifBodyMaghrib =>
      'Jua lilongemeleza — muda ambao Ahl al-Bayt walitunza kwa ajili ya dua. Toa Maghrib na fungua mikono yako kwa Allah katika dua kabla ya usiku kuanza.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Sala ya Usiku';

  @override
  String get prayerNotifBodyIsha =>
      'Malishe siku yako kwenye rafiki wa Allah. Maimamu walipendekeza Salat al-Layl baada ya Isha — lakini kwanza, timiza Isha yako na funga siku na dhikri yake.';

  @override
  String get outOfReflectionsBannerText => 'Umechelewa kwa tafakari zako';

  @override
  String get outOfReflectionsBannerCta => 'Pata zaidi';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Gusa duara ili kuhesabu';

  @override
  String get dhikrResetButton => 'Tengeneza tena';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Umekamilisha dhikri 100 za Allah. Wahe ni nuru kwa moyo wako.';

  @override
  String get disclaimerTitle => 'Kuhusu mwongozo wa programu hii';

  @override
  String get disclaimerBody =>
      'Ayara inatoa tafakari za Kiislamu, kumbukumbu, na msimu wa roho kusaidia safari yako binafsi ya imani, unaomaanisha Quran na malimu wa Ahl al-Bayt. Msimu huu unatokea kwa madhumuni ya jumla ya taarifa na moyo tu.\n\nAyara haichangani mwalimu wa tayo.\nMwongozo katika programu hii si mbadala kwa mwalimu wa Kiislamu anayejua, marja\', au mwalimu anayejua kiteolojia. Kama una maswali kuhusu sheria za dini, halal na haram, au jukumu lako la dini, tafadhali tafuta ushauri kutoka kwa Marja\' anayejua au mwalimu katika jamii yako.\n\nProgramu hii haina kutoa sheria za dini.\nAyara haitaweza kufanya uamuzi wa kisheria juu ya maswali ya fiqh au jukumu lako la dini. Hakuna kinachobidi kutibiwa kama fatwa au amri ya dini ya kuwazima.\n\nNjia muhimu ya Ahl al-Bayt.\nKatika Kiislamu cha Shia, Nabii Muhammad ﷺ na nyumba yake safi — Ahl al-Bayt — ndio wamuongozaji wenye mamlaka wa jamii ya Kiislamu baada ya Quranic. Imam kumi na mbili wa Ahl al-Bayt ni waonzaji wa kiurangu wa malimu ya Kiislamu. Msimu katika programu hii inakumbuka tarikamu hii na inataka kuheshimiana kwa sola.\n\nMaswali ya jamii.\nProgramu hii inalenga kuwashawisha kuunganisha na imani wakati inaheshimia sana jukumu la muhimu la msikiti wako mahali, kituo cha Kiislamu, na jamii ya dini. Tunashawishi kukamatia na kujifunza kutoka kwa waalimu anayejua karibu nako.';

  @override
  String get disclaimerClose => 'Ninaelewa';

  @override
  String get disclaimerInfoTooltip => 'Kuhusu mwongozo wa programu hii';

  @override
  String get disclaimerSettingsSubtitle =>
      'Kwa madhumuni ya jumla ya taarifa tu. Gusa ili kusoma kanusani kamili.';

  @override
  String get disclaimerSectionHeader => 'Kanusani ya mwongozo';

  @override
  String get navHome => 'Nyumba';

  @override
  String get navReflect => 'Tafakari';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Kalenda';

  @override
  String get dashboardToday => 'LEO';

  @override
  String get dashboardComingUp => 'Inakuja';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku',
      one: 'siku',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Kufikia Haraka';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Mwongozo';

  @override
  String get quickActionPrayerTimes => 'Saa za Sala';

  @override
  String get askAyaraTitle => 'Uliza Ayara';

  @override
  String get askAyaraSubtitle =>
      'Uliza swali lolote la Kiislamu na pokea jibu linajua.';

  @override
  String get askAyaraHint => 'k.m. Ni maana gani ya Ramadan?';

  @override
  String get askAyaraSubmit => 'Uliza';

  @override
  String get wisdomOfTheDayTitle => 'Hikima ya Siku';

  @override
  String get calendarScreenTitle => 'Kalenda ya Kiislamu';

  @override
  String get calendarUpcomingOccasions => 'Matukio Inayokuja';

  @override
  String get calendarOccasionRemindersTitle => 'Kumbukumbu za Matukio';

  @override
  String get calendarOccasionRemindersHint =>
      'Notifikasyon jioni kabla ya kila matukio';

  @override
  String get calendarNotifPermissionDenied =>
      'Ruhusa ya notifikasi imetupiliwa. Wezesha katika mipangilio ya kifaa chako.';

  @override
  String get calendarNoEvents => 'Hakuna matukio yajulikana.';

  @override
  String get calendarAddToPhone => 'Ongeza kwenye Kalenda ya Simu';

  @override
  String get calendarAddedToPhone => 'Imeongezwa kwenye Kalenda';

  @override
  String get calendarCountdownToday => 'LEO';

  @override
  String get calendarCountdownTomorrow => 'KESHO';

  @override
  String calendarCountdownDays(int days) {
    return 'katika siku $days';
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
      'Siku za Muharram — kumbuka Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — siku za matanga na tafakari';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — saa arubaini za Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Njia kwa Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — alfajiri ya uhaibaji';

  @override
  String get calendarSeasonMidShaban =>
      'Nusu ya Sha\'ban — siku ya Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mwezi wa Quranic';

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
  String get duasScreenTitle => 'Dua & Ziyarat';

  @override
  String get duasSearchHint => 'Tafuta dua, ziyarat…';

  @override
  String get duasFilterAll => 'Yote';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Hakuna dua iliyopatikana.';

  @override
  String get duaCategoryDaily => 'Kila Siku';

  @override
  String get duaCategoryWeekly => 'Kila Wiki';

  @override
  String get duaCategoryOccasions => 'Matukio';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Kuzaliwa';

  @override
  String get eventTypeMartyrdom => 'Shahada';

  @override
  String get eventTypeOccasion => 'Matukio';

  @override
  String get duaCopyTooltip => 'Nakili tafsiri';

  @override
  String get duaToggleTransliteration => 'Kizamili';

  @override
  String get duaToggleTranslation => 'Tafsiri';

  @override
  String get duaAskAiLabel => 'Uliza Ayara kueleza dua hii';

  @override
  String get duaAskAiLockedLabel => 'Uliza Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Uelezaji wa Ayara inapatikana kwa wanachama wa Wilaya. Boreshwa katika Mipangilio.';

  @override
  String duaAiComingSoon(String name) {
    return 'Uliza Ayara kuhusu \"$name\" — inakuja kamakaribuni!';
  }

  @override
  String get duaCopiedToast => 'Dua kunakamata katika clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ni Mkubwa Zaidi';

  @override
  String get tasbihAlhamdulillahMeaning => 'Sifa zote ni kwa Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Subhanallah - Utukufu kwa Allah';

  @override
  String get tasbihResetTooltip => 'Tengeneza tena';

  @override
  String get tasbihCompleteTitle => 'Tasbih Imefanywa';

  @override
  String get tasbihCompleteMessage => 'Allah akamata dhikri yako.';

  @override
  String get tasbihTapHint => 'Gusa mahali popote ili kuhesabu';

  @override
  String get tasbihatScreenTitle => 'Mwongozo wa Sala';

  @override
  String get tasbihatScreenSubtitle => 'UTAFAKARI WA SALA';

  @override
  String get tasbihatScreenDescription =>
      'Mwongozo kamili wa utafakari unaojiwa wakati wa sala na baada ya sala za kila siku — kwa mujibu wa tarikamu ya Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Jinazwa wakati wa rakʿah 3 & 4';

  @override
  String get tasbihatArba3Info =>
      'Katika fiqh ya Shia, Tasbiḥāt al-Arbaʿa inabadili Surah al-Fatiha katika rakʿah 3 na 4 ya Dhuhr, Asr, Maghrib, na Isha. Ni wajib kuzinawa mara moja, na mashauri kuzinawa mara tatu.';

  @override
  String get tasbihatArba3Translation =>
      'Subhanallah · Alhamdulillah\nLa ilaha illallah · Allahu Akbar';

  @override
  String get tasbihatArba3CompleteTitle => 'Mzumzumaji Imefanywa';

  @override
  String get tasbihatArba3CompleteMessage => 'Sala yako ikamata — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Gusa baada ya kila mzumzumaji';

  @override
  String get tasbihatZahraSubtitle => 'Baada ya kila sala · majibu 100';

  @override
  String get tasbihatZahraOriginLabel => 'Chanzo';

  @override
  String get tasbihatZahraHadith =>
      'Bibi Fatima al-Zahra (sa) aliuliza Nabii ﷺ kwa mtumishi. Akasema: \"Je, si nakuagilia kitu kizuri zaidi? Zunza Subḥānallāh mara 33, Alḥamdulillāh mara 33, na Allāhu Akbar mara 34 baada ya kila sala. Hilo ni nzuri kwa ajili yako kuliko mtumishi.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Fungua Tasbīḥ Saini';

  @override
  String get tasbihatDuasTitle => 'DUA MASHAURI';

  @override
  String get tasbihatDuasSubtitle => 'Baada ya kumalizia sala yako';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Baada ya kila sala ya wajib';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Yeyote asiyezunza Āyat al-Kursī baada ya kila sala ya wajib, hakuna kitu kimpigania pembeni na paradiso isipokuwa kifo. Imam al-Bāqir (a) alisema ni miongeza makubwa zaidi katika Quranic.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Baada ya kila sala · muafaka mahitaji yote';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Kumtuma salaamu kwa Nabii ﷺ na nyumba yake safi (Āl Muḥammad) mashauri kulipania kila dua. Imam al-Ṣādiq (a) alisema: \"Dua yoyote imesimama hadi kumtuma ṣalawāt kwa Muḥammad na nyumba yake.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Baada ya kila sala · kwa Imam wa wakati wetu';

  @override
  String get tasbihatDuaFarajSource => 'Msoma na Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua kwa kuonekana tena kwa Imam al-Mahdī (af), Imam wa kumi na mbili. Zinazwa kila siku na Shia maadhimishwa baada ya kila sala kama matendo ya utii kwa Imam anayebaki.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ya Bibi Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Baada ya Maghrib & Isha · kupendekeza sana';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) alisema kukunza Tasbīḥ al-Zahrā baada ya Isha kabla ya kulala ni nzuri kuliko rakʿahs 1000 za sala ya ikhtiyari. Nuru yake inakwea mbinguni.';

  @override
  String get tasbihFatimaGiftPre => 'Zawadi kutoka kwa Nabii';

  @override
  String get tasbihFatimaGiftPost => 'kunazwa baada ya kila sala';

  @override
  String get prayerTrackerTitle => 'SAINI YA SALA';

  @override
  String get prayerTrackerPrayed => 'Alisala';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count siku mlipuko';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Sala zote zimefanywa leo. Allah akamata.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Imefanywa leo';

  @override
  String get dhikrTrackerNotDoneToday => 'Haijafanywa leo';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count siku mlipuko';
  }

  @override
  String get dhikrReminderTitle => 'Kumbukumbu ya Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Kumbukumbu nyinzi ya kila siku kunazwa Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Wezesha kumbukumbu ya Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Wakati wa kumbukumbu';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith ya Kila Siku';

  @override
  String get hadithLabelArabic => 'KIARABIA';

  @override
  String get hadithLabelTranslation => 'TAFSIRI';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Sambaza Hadith Hii';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nKupitia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Iliyotangulia';

  @override
  String get hadithNavNext => 'Inayofuata';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Masumeen 14 Umma';

  @override
  String get imamsScreenSubtitle =>
      'Nabii, Bibi Fatima, na Imam Kumi na Mbili — wamuongozaji wenye makosa wa Kiislamu';

  @override
  String get imamLabelBorn => 'Kuzaliwa';

  @override
  String get imamLabelMartyrdom => 'Shahada';

  @override
  String get imamLabelStatus => 'Hali';

  @override
  String get imamSectionBiography => 'WAZALI';

  @override
  String get imamSectionFamousSaying => 'KAULI MAARUFU';

  @override
  String get imamRoleProphet => 'Nabii wa Mwisho';

  @override
  String get imamRoleInfallible => 'Wenye Makosa';

  @override
  String get imamOrdinal1 => 'Imam 1';

  @override
  String get imamOrdinal2 => 'Imam 2';

  @override
  String get imamOrdinal3 => 'Imam 3';

  @override
  String get imamOrdinal4 => 'Imam 4';

  @override
  String get imamOrdinal5 => 'Imam 5';

  @override
  String get imamOrdinal6 => 'Imam 6';

  @override
  String get imamOrdinal7 => 'Imam 7';

  @override
  String get imamOrdinal8 => 'Imam 8';

  @override
  String get imamOrdinal9 => 'Imam 9';

  @override
  String get imamOrdinal10 => 'Imam 10';

  @override
  String get imamOrdinal11 => 'Imam 11';

  @override
  String get imamOrdinal12 => 'Imam 12';

  @override
  String get duaAudioScreenTitle => 'Sikiliza Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Chagua dua ili kusikiliza. Gusa tile ili kucheza au kumwachia.';

  @override
  String get duaAudioComingSoonMessage =>
      'Sauti kwa dua hii itakuwa available katika sasisho linalokuja.';

  @override
  String get duaAudioClose => 'Funga';

  @override
  String get duaAudioError =>
      'Haikuweza kupakua sauti. Tafadhali angalia muunganisho wako.';

  @override
  String get duaAudioMetaTransmittedBy => 'Kusomwa na';

  @override
  String get duaAudioMetaOccasion => 'Matukio';

  @override
  String get duaAudioMetaDuration => 'Muda';

  @override
  String get quickActionDailyHadith => 'Hadith ya Kila Siku';

  @override
  String get quickAction14Masumeen => 'Masumeen 14';

  @override
  String get quickActionListenDuas => 'Sikiliza';

  @override
  String get quickActionTasbihat => 'Mwongozo wa Sala';

  @override
  String get pilgrimageSectionTitle => 'Safari ya Takaburi';

  @override
  String get pilgrimageSectionSubtitle =>
      'Mwongozo kamili kwa Hajj & Umrah — ziyara kwa Nyumba Takatifu ya Allah katika Makkah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Nguzo ya Kiislamu';

  @override
  String get hajjCardDescription =>
      'Ziyara kubwa ya kila mwaka — wajib mara moja kwa maisha ya kila Mwanamislamu anayeweza';

  @override
  String get hajjScreenTitle => 'Mwongozo wa Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Mwongozo wa hatua kwa hatua kwa ziyara kubwa';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ziyara ya Ndogo';

  @override
  String get umrahCardDescription =>
      'Safari ya roho yenye zawadi ambayo inaweza kufanywa kwa wakati wowote wa mwaka';

  @override
  String get umrahScreenTitle => 'Mwongozo wa Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Mwongozo wa hatua kwa hatua kwa ziyara ya ndogo';

  @override
  String get pilgrimageStepsTitle => 'Masharti & Hatua';

  @override
  String get pilgrimageImportantNotesTitle => 'Kumbuka Muhimu';

  @override
  String get pilgrimageDuaTitle => 'Dua kwa hatua hii';

  @override
  String get pilgrimageJafariNoteTitle => 'Kumbukumbu ya Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Kamili';

  @override
  String get pilgrimageMarkDone => 'Tia kama imekamilika';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done kati ya $total hatua';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Waziyara wa Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Waziyara wa Shia kawaida pia husafiri kwa Medina kupokea kaburi la Nabii Muhammad (SAW) katika Masjid al-Nabawi, na makaburi ya Imam katika Jannat al-Baqi. Ziyara hizi zina umuhimu wa roho wa juu na zinavyopatikana sehemu muhimu ya safari kwa Wanaislamu wengi wa Shia.';

  @override
  String get hajjIntro =>
      'Hajj ndio nguzo ya Kiislamu, wajib mara moja kwa maisha ya Mwanamislamu yeyote anayeweza kimwili na kwa pesa. Inaushughulikiwa katika mwezi wa Dhul Hijjah, inasambaza hatua za Nabii Ibrahim (AS), mwanawe Ismail (AS), na Bibi Hajar. Kwa Waislamu wa Shia, Hajj pia inajumuisha mahimu ya ziyara makaburi ya Nabii (SAW) na Ahlul Bayt katika Medina.';

  @override
  String get umrahIntro =>
      'Umrah ndio ziyara ya ndogo kwa Makkah na, tofauti na Hajj, inaweza kufanywa kwa wakati wowote wa mwaka. Ingawa si wajib, inabeba zawadi ya roho ya juu na inavyopatikana hatua ya ibada inayopendekezwa sana. Inakamatia masharti kadhaa na Hajj lakini ni mfupi, inajumuisha sharti nne kuu.';
}
