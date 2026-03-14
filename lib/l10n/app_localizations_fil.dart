// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Piliin ang iyong wika';

  @override
  String get languageSelectSub =>
      'Maaari mong baguhin ito mamaya sa Mga Setting';

  @override
  String get actionContinue => 'Magpatuloy';

  @override
  String get languageSuggestedHeader => 'Inirerekomenda';

  @override
  String get languageAllHeader => 'Lahat ng wika';

  @override
  String get languageSuggestedBadge => 'Inirerekomenda';

  @override
  String get languageSearchHint => 'Maghanap…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Pang-araw-araw na Gabay';

  @override
  String get categorySlot02 => 'Tiwala at Iman';

  @override
  String get categorySlot03 => 'Pag-isip sa Panalangin';

  @override
  String get categorySlot04 => 'Pasensya at Pag-asa';

  @override
  String get categorySlot05 => 'Humingi ng Patawaran';

  @override
  String get categorySlot06 => 'Awa at Malasakit';

  @override
  String get categorySlot07 => 'Pananampalataya at Lakas';

  @override
  String get categorySlot08 => 'Puso ng Pasasalamat';

  @override
  String get categorySlot09 => 'Layunin ng Buhay';

  @override
  String get categorySlot10 => 'Ugnayan ng Pamilya';

  @override
  String get categorySlot11 => 'Kapayapaan sa Loob';

  @override
  String get categorySlot12 => 'Karunungan ng Propeta';

  @override
  String get categorySlot13 => 'Magandang Katangian';

  @override
  String get categorySlot14 => 'Labanan ang Pagsubok';

  @override
  String get categorySlot15 => 'Gabi na Dhikr';

  @override
  String get categoryCustom => 'Personal na Pag-isip';

  @override
  String get dhikrMeaningSubhanallah =>
      'Magpakailanman sa kaluwalhatian ang Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Lahat ng papuri ay para sa Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Ang Allah ay pinakamahusay';

  @override
  String get quranVerseHeartAtRest =>
      'Tunay na sa pagaalala sa Allah, ang mga puso ay nakahanap ng kapayapaan.';

  @override
  String get promptHint =>
      'Pindutin ang kategorya para sa Islamic na gabay at pag-isip';

  @override
  String get currentLanguage => 'Kasalukuyang wika';

  @override
  String get settingsLanguage => 'Mga setting ng wika';

  @override
  String get settingsTitle => 'Mga Setting';

  @override
  String get chooseLanguage => 'Piliin ang iyong wika';

  @override
  String get continueCta => 'Magpatuloy';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count salita',
      one: '$count salita',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Mga opsyon';

  @override
  String get newCta => 'Bago';

  @override
  String get actionsTitle => 'Ano ang nais mong gawin?';

  @override
  String get copy => 'Kopyahin';

  @override
  String get share => 'Ibahagi';

  @override
  String get close => 'Isara';

  @override
  String get copiedToast => 'Kinopya sa clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Hindi makabuo ng bagong tugon';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nNais mo bang subukan muli?';
  }

  @override
  String get cancelCta => 'Kanselahin';

  @override
  String get retryCta => 'Subukan muli';

  @override
  String get authTitle => 'Lumikha ng iyong account';

  @override
  String get continueAsGuest => 'Magpatuloy bilang bisita';

  @override
  String get signInGoogle => 'Mag-sign in gamit ang Google';

  @override
  String get signInApple => 'Mag-sign in gamit ang Apple';

  @override
  String get signInEmail => 'Mag-sign in gamit ang Email';

  @override
  String get upgradeWithApple => 'Magpatuloy gamit ang Apple';

  @override
  String get mustAccept =>
      'Dapat mong tanggapin ang Mga Kaalakasan at kilalanin ang Patakaran sa Privacy.';

  @override
  String get termsLabel => 'Tinatanggap ko ang Mga Kaalakasan ng Serbisyo';

  @override
  String get privacyLabel => 'Nabasa ko ang Patakaran sa Privacy';

  @override
  String get marketingOptIn => 'Pumapayag akong makatanggap ng balita at alok';

  @override
  String get openTerms => 'Mga Kaalakasan ng Serbisyo';

  @override
  String get openPrivacy => 'Patakaran sa Privacy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Mode ng bisita';

  @override
  String get signedIn => 'Naka-sign in';

  @override
  String get upgradeHint =>
      'I-save ang iyong mga pag-isip sa lahat ng device sa pamamagitan ng paglikha ng account.';

  @override
  String get upgradeWithGoogle => 'Magpatuloy gamit ang Google';

  @override
  String get signOut => 'Mag-sign out';

  @override
  String get snackUpgraded => 'Account na nag-upgrade sa Google ✅';

  @override
  String get snackSignedIn => 'Naka-sign in gamit ang Google ✅';

  @override
  String get snackSignedOut => 'Nag-sign out';

  @override
  String get snackSignedInApple => 'Naka-sign in gamit ang Apple ✅';

  @override
  String get snackSignedInGoogle => 'Naka-sign in gamit ang Google ✅';

  @override
  String get snackUpgradedApple => 'Account na nag-upgrade sa Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account na nag-upgrade sa Google ✅';

  @override
  String get historyTitle => 'Nakaraang pag-isip';

  @override
  String get historyOpenCta => 'Nakaraang pag-isip';

  @override
  String get historyEmpty => 'Walang na-save na pag-isip pa.';

  @override
  String get historyDeleteTitle => 'Tanggalin ang pag-isip?';

  @override
  String get historyDeleteBody => 'Ito ay permanenteng aalis ng napiling item.';

  @override
  String get deleteCta => 'Tanggalin';

  @override
  String get historyButton => 'Nakaraang Pag-isip';

  @override
  String get historyEmptyTitle => 'Walang pag-isip pa';

  @override
  String get historyEmptyBody =>
      'Bumuo muna ng isang bagay — ang iyong mga na-save na item ay lilitaw dito.';

  @override
  String get historyDelete => 'Tanggalin';

  @override
  String get footerTitle => 'Sa Wilaya, Iman at Sabr';

  @override
  String get footerSubtitle => 'Isang panalangin sa isang pagkakataon';

  @override
  String get genericErrorSnack =>
      'May nangyaring hindi tama — subukan muli sa loob ng ilang sandali.';

  @override
  String get upgradeAccountCta =>
      'I-save ang iyong mga pag-isip sa lahat ng device – lumikha ng account';

  @override
  String get deleteAccount => 'Tanggalin ang account';

  @override
  String get exportData => 'I-export ang aking datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Madaling iyon 🐯\nAyara ay kailangan ng sandali bago ang susunod…';

  @override
  String get rateDailyLimit =>
      'Wala ka nang pag-isip para sa ngayon.\nKumuha ng mas maraming pag-isip o mag-upgrade sa Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Gumamit ka na ng lahat ng iyong pag-isip.\nMag-top up o mag-upgrade sa Wilaya upang magpatuloy.';

  @override
  String get rateGraceCreditsExhausted =>
      'Wala ka nang pag-isip para sa ngayon.\nKumuha ng mas maraming pag-isip o mag-upgrade sa Wilaya.';

  @override
  String get premiumDescription =>
      'Ang Wilaya ay nag-unlock ng mga premium na feature, mga bagong kategorya, at espesyal na badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Ang iyong mga pag-isip ay walang laman sa ngayon. Plano: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Hindi macheck ang iyong mga pag-isip: $message';
  }

  @override
  String get rateCheckGenericError =>
      'May nangyaring hindi tama habang sinusuri ang iyong mga pag-isip.';

  @override
  String get aiFallbackGeneric =>
      'May nangyaring hindi tama — subukan muli sa loob ng ilang sandali.';

  @override
  String get limitSectionTitle => 'Pag-isip';

  @override
  String get limitTodayLabel => 'Paggamit';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Natitirang pag-isip: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get limitLoadingLabel => 'Naglo-load…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Pag-isip';

  @override
  String get aiLimitSubtitle =>
      'Bawat tugon ay gumagamit ng 1 pag-isip. Ang Standard ay may kasamang paunang pag-isip. Ang Wilaya ay nag-unlock ng mga premium na kategorya at nagpapahintulot ng top-up.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total pag-isip na ginamit';
  }

  @override
  String get creditsSectionTitle => 'Pag-isip';

  @override
  String get creditsUsageLabel => 'Paggamit';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Natitirang pag-isip: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Naglo-load…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Pag-isip';

  @override
  String get creditsSubtitle =>
      'Bawat tugon ay gumagamit ng 1 pag-isip. Ang Standard ay may kasamang paunang pag-isip. Ang Wilaya ay nag-unlock ng mga premium na kategorya at nagpapahintulot ng top-up.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total pag-isip na ginamit';
  }

  @override
  String get settingsDeleteTitle => 'Tanggalin ang account';

  @override
  String get settingsDeleteDescription =>
      'Permanenteng tanggalin ang iyong account at lahat ng nauugnay na datos.';

  @override
  String get settingsDeleteButtonLabel => 'Tanggalin ang aking account';

  @override
  String get settingsDeleteDialogTitle => 'Tanggalin ang account?';

  @override
  String get settingsDeleteDialogBody =>
      'Ang pagkilos na ito ay permanent at hindi maaaring bawiin.\n\nAng lahat ng iyong mga pag-uusap, kasaysayan at impormasyon sa account ay matanggal.';

  @override
  String get settingsDeleteDialogCancel => 'Kanselahin';

  @override
  String get settingsDeleteDialogConfirm => 'Tanggalin';

  @override
  String get settingsFreeLimitUsedTitle => 'Paunang pag-isip na ginamit';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Ang paunang pag-isip para sa device na ito ay nagamit na. Mag-upgrade sa Wilaya o bumili ng mas maraming pag-isip upang magpatuloy.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Paunang pag-isip na ginamit';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Ang paunang pag-isip para sa device na ito ay nagamit na. Mag-upgrade sa Wilaya o bumili ng mas maraming pag-isip upang magpatuloy.';

  @override
  String get deviceBoundError =>
      'Ang device na ito ay naka-link na sa ibang account. Mangyaring mag-sign in gamit ang orihinal na account.';

  @override
  String get premiumTitle => 'Modo ng Wilaya';

  @override
  String get premiumSubtitleBasic => 'I-unlock ang buong karanasan ng Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Ikaw ay nasa Wilaya. Kailangan mo ng mas maraming pag-isip?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Kasalukuyang plano: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Pag-isip: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Ang mga pagbili ay hindi available sa ngayon.';

  @override
  String get premiumSignInToPurchase =>
      'Mag-sign in upang bumili ng pag-isip o i-unlock ang Wilaya.';

  @override
  String get premiumRestorePurchases => 'I-restore ang mga pagbili';

  @override
  String get premiumProcessing => 'Nagpo-proseso…';

  @override
  String get premiumRestoreHintTitle =>
      'Nabili mo na ang Wilaya o pag-isip sa device na ito o sa iba?';

  @override
  String get premiumRestoreHintBody =>
      'I-restore ang iyong mga pagbili kung hindi sila nagpapakita.';

  @override
  String get premiumBuyCredits200 => 'Bumili ng 200 pag-isip';

  @override
  String get premiumBuyCredits400 => 'Bumili ng 400 pag-isip';

  @override
  String get premiumBecomePremiumOneTime => 'Mag-upgrade sa Wilaya mode';

  @override
  String get premiumTopupHint =>
      'Sa Wilaya, maaari kang mag-top up gamit ang dagdag na pag-isip kapag kailangan mo.';

  @override
  String get premiumUpgradeCta => 'I-upgrade';

  @override
  String get premiumRequiredForCategory =>
      'Ang kategoryang ito ay available lamang para sa mga gumagamit ng Wilaya. Mag-upgrade sa Mga Setting upang i-unlock ang lahat ng premium na nilalaman.';

  @override
  String get premiumBenefitsBasic =>
      'I-unlock ang Wilaya upang makakuha ng dagdag na pag-isip, ma-access ang mga premium na kategorya, at magpatuloy kapag kailangan mo ng gabay.';

  @override
  String get premiumBenefitsPremium =>
      'Ikaw ay nasa Wilaya mode. Kung nauubusan ka, magdagdag ng ilang dagdag na pag-isip at magpatuloy nang walang tigil.';

  @override
  String get premiumButtonBecomePremium => 'I-unlock ang Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Magdagdag ng 1000 pag-isip';

  @override
  String get premiumBadge => 'Wilaya aktibo';

  @override
  String get premiumLoadingStore => 'Naglo-load ng tindahan…';

  @override
  String get premiumProductNotAvailable =>
      'Ang produktong ito ay hindi pa available sa tindahan. Mangyaring subukan muli mamaya.';

  @override
  String get premiumPurchaseError =>
      'May nangyaring hindi tama sa pagbili. Mangyaring subukan muli.';

  @override
  String get premiumBuyCredits100 => 'Magdagdag ng 100 pag-isip';

  @override
  String get premiumFeatureLocked =>
      'I-unlock ang Wilaya upang ma-access ang feature na ito.';

  @override
  String get lockedCategoriesHint =>
      'Ang ilang kategorya ay nakalaan para sa mga miyembro ng Wilaya. I-unlock ang mga ito upang tuklasin ang bawat pag-isip sa iyong paglalakbay.';

  @override
  String get freePlanBlockedTitle => 'Nagamit mo na ang iyong paunang pag-isip';

  @override
  String get freePlanBlockedBody =>
      'Ikaw ay nasa Standard plan na may paunang pag-isip, at umabot ka na sa hangganan. Upang magpatuloy — at i-unlock ang mga premium na kategorya — mag-upgrade sa Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Tingnan ang mga opsyon ng Wilaya sa ibaba';

  @override
  String get graceBlockedTitle => 'Nagamit mo na ang iyong paunang pag-isip';

  @override
  String get graceBlockedBody =>
      'Ikaw ay nasa Standard plan na may paunang pag-isip, at umabot ka na sa hangganan. Upang magpatuloy — at i-unlock ang mga premium na kategorya — mag-upgrade sa Wilaya.';

  @override
  String get graceBlockedCtaGoPremium =>
      'Tingnan ang mga opsyon ng Wilaya sa ibaba';

  @override
  String get rateGuestMustSignIn =>
      'Mag-sign in upang gumamit ng Ayara at ang iyong mga pag-isip.';

  @override
  String get guestNoCreditsTitle => 'Mode ng bisita';

  @override
  String get guestNoCreditsBody =>
      'Bilang bisita, maaari mong tuklasin ang app, ngunit hindi ka makakagamit ng pag-isip. Mag-log in mamaya sa Mga Setting upang gumamit ng pag-isip at i-unlock ang mga pagbili.';

  @override
  String get guestDialogContinue => 'Magpatuloy';

  @override
  String get guestDialogLoginInstead => 'Mag-log in sa halip';

  @override
  String get optionalLabel => 'opsyonal';

  @override
  String get accountDeleteSuccessTitle => 'Account na natanggal';

  @override
  String get accountDeleteSuccessBody =>
      'Ang iyong account at nauugnay na datos ay matagumpay na natanggal.';

  @override
  String get accountDeleteSuccessClose => 'Isara';

  @override
  String get accountDeleteErrorTitle => 'Hindi matanggal ang account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ang pag-authenticate na muli ay kinansela. Mangyaring mag-sign in muli at subukan ang pagbuo.';

  @override
  String get accountDeleteReauthRequired =>
      'Ang pagtanggal ng account ay nangangailangan ng kamakailan na pag-login. Mangyaring mag-sign out, mag-sign in muli, at subukan ang pagbuo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ang pagkilos na ito ay permanent at hindi maaaring bawiin. Lahat ng datos na nauugnay sa iyong account ay matanggal.';

  @override
  String get dailyGraceTitle => 'Pang-araw-araw na Gabay';

  @override
  String get dailyGraceScriptureLabel => 'VERSE NG ARAW';

  @override
  String get dailyGraceSaintLabel => 'ISKOLAR NG LINGGO';

  @override
  String get dailyGraceReflectionLabel => 'GABI NA PAG-ISIP';

  @override
  String get dailyGraceCopiedToast => 'Verse kinopya sa clipboard';

  @override
  String get locationConsentLabel =>
      'Payagan ang Ayara na gamitin ang aking lokasyon para sa direksyon ng Qibla at oras ng panalangin';

  @override
  String get locationConsentHint =>
      'Ginagamit lamang para sa mga feature na ito. Ang iyong lokasyon ay hindi kailanman ibabahagi o itinipid.';

  @override
  String get askPageTitle => 'Tanungin ang Ayara';

  @override
  String get askPageDescription =>
      'Magtanong ng kahit anong bagay tungkol sa pananampalataya, panalangin, buhay, o Islamic na kasanayan at tumanggap ng gabay na nakatuon sa Quran at ang mga pagtuturo ng Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'I-type ang iyong tanong dito…';

  @override
  String get askPageSubmitCta => 'Tanungin';

  @override
  String get askPageInputEmptyError => 'Mangyaring magsulat ng tanong muna.';

  @override
  String get askResultYourQuestion => 'Ang iyong tanong';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Nakaharap sa Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Paikutin ang iyong telepono hanggang ang gintong karayom ay tumutok pataas.\nAng direksyon na iyon ay tumutok sa Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Ang signal ng GPS ay mahina. Lumabas at pindutin ang Retry.';

  @override
  String get qiblaRetry => 'Subukan muli';

  @override
  String get qiblaTitle => 'Direksyon ng Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km sa Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokasyon na kinakailangan';

  @override
  String get qiblaLocationNeededBody =>
      'Payagan ang pag-access sa lokasyon upang maaaring kalkulahin ng Ayara ang direksyon ng Kaaba sa Makkah mula saanman ka naroroon.';

  @override
  String get qiblaOpenSettings => 'Buksan ang Mga Setting';

  @override
  String get qiblaCompassLoading => 'Nahahanap ang iyong posisyon…';

  @override
  String get qiblaTowardMecca => 'Tungo sa Makkah';

  @override
  String get prayerTimesTitle => 'Oras ng Panalangin';

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
  String get prayerTimesLocationNeededTitle => 'Lokasyon na kinakailangan';

  @override
  String get prayerTimesLocationNeededBody =>
      'Payagan ang pag-access sa lokasyon upang maaaring kalkulahin ng Ayara ang tumpak na oras ng panalangin para sa iyong lungsod.';

  @override
  String get prayerTimesNextLabel => 'Susunod';

  @override
  String get prayerTimesDoneLabel => 'Tapos';

  @override
  String get monthlyPrayerTimesTitle => 'Buwanang Oras ng Panalangin';

  @override
  String get monthlyPrayerTimesViewButton => 'Tingnan ang Buong Buwan';

  @override
  String get monthlyPrayerTimesNextMonth => 'Susunod na buwan';

  @override
  String get monthlyPrayerTimesDayHeader => 'Araw';

  @override
  String get sharePrayerTimes => 'Ibahagi ang oras ng panalangin';

  @override
  String get notificationsSectionTitle => 'Mga Abiso';

  @override
  String get notificationsSectionSubtitle =>
      'Mga pahiwatig sa panalangin, mga event sa kalendaryo at iba pa';

  @override
  String get dailyReflectionReminderTitle => 'Pang-araw-araw na Pag-isip';

  @override
  String get dailyReflectionReminderDescription =>
      'Isang laging pang-araw-araw na pahiwatig upang buksan ang Ayara at kumonekta sa iyong pananampalataya.';

  @override
  String get dailyReflectionReminderEnable =>
      'Paganahin ang pang-araw-araw na pahiwatig';

  @override
  String get dailyReflectionReminderTimeLabel => 'Oras ng pahiwatig';

  @override
  String get prayerNotificationsTitle => 'Mga Pahiwatig sa Panalangin';

  @override
  String get prayerNotificationsDescription =>
      'Makatanggap ng isang laging pahiwatig bago ang bawat oras ng panalangin upang manatiling konektado sa buong araw.';

  @override
  String get prayerNotificationsEnable =>
      'Paganahin ang mga pahiwatig sa panalangin';

  @override
  String get prayerNotificationsOpenSettings =>
      'Buksan ang mga setting ng abiso';

  @override
  String get prayerNotificationsDenied => 'Ang mga abiso ay hindi pinagana';

  @override
  String get prayerNotificationsDeniedHint =>
      'Pumunta sa Mga Setting at payagan ang mga abiso para sa Ayara upang makatanggap ng mga pahiwatig sa oras ng panalangin.';

  @override
  String get notificationsConsentLabel =>
      'Payagan ang mga abiso para sa oras ng panalangin';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Pag-araw na Panalangin';

  @override
  String get prayerNotifBodyFajr =>
      'Ang Fajr ay ang panalangin ng mga umaga ng Ahl al-Bayt. Sinabi ni Imam Ali (AS): Bantayan ang pag-araw na panalangin tulad ng iyong pinakamahalagang tiwala. Gumising, magpalinaw, at tumayo sa harap ng Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Pang-tanghali na Panalangin';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ang mga Imam ng Ahl al-Bayt ay nagpahalaga sa bawat sandali ng pagaalala. Magpahinto sa iyong araw, pagsama ang Dhuhr sa Asr kung kinakailangan, at ibalik ang iyong puso sa Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Hapon na Panalangin';

  @override
  String get prayerNotifBodyAsr =>
      'Bantayan ang panalangin, ito ay ang kasunduan sa pagitan mo at Allah. Dumating na ang oras ng Asr — huwag palampasin ito nang walang pagaalala.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Paglubog ng araw na Panalangin';

  @override
  String get prayerNotifBodyMaghrib =>
      'Ang araw ay naglubog — isang sandali na pinagkakatiwalaan ng Ahl al-Bayt para sa panalanging pampasalamat. Maghandog ng Maghrib at buksan ang iyong mga kamay sa Allah sa dua bago ang gabi.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Gabi na Panalangin';

  @override
  String get prayerNotifBodyIsha =>
      'Tapusin ang iyong araw sa kasamahan ng Allah. Hinikayat ng mga Imam ang Salat al-Layl pagkatapos ng Isha — ngunit una, tapusin ang iyong Isha at isara ang araw gamit ang Kanyang pagaalala.';

  @override
  String get outOfReflectionsBannerText =>
      'Nagamit mo na ang lahat ng iyong pag-isip';

  @override
  String get outOfReflectionsBannerCta => 'Kumuha ng higit pa';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Pindutin ang bilog upang magbilang';

  @override
  String get dhikrResetButton => 'I-reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Kumpleto mo na ang 100 pagaalala sa Allah. Maging liwanag sila para sa iyong puso.';

  @override
  String get disclaimerTitle => 'Tungkol sa gabay ng app na ito';

  @override
  String get disclaimerBody =>
      'Ang Ayara ay nagbibigay ng Islamic na pag-isip, mga pahiwatig, at espiritual na nilalaman upang suportahan ang iyong personal na paglalakbay ng pananampalataya, na nakatuon sa Quran at ang mga pagtuturo ng Ahl al-Bayt. Ang nilalaman na ito ay inaalok para sa pangkalahatang impormasyon at inspirasyon lamang.\n\nAng Ayara ay hindi nagpapalit ng kwalipikadong scholarship.\nAng gabay sa app na ito ay hindi kapalit ng isang marunong Islamic scholar, marja\', o theologician na guro. Sa Shia Islam, ang gabay sa relihiyon ay nakatuon sa Ja\'fari school ng jurisprudence (fiqh) at ang tradisyon ng pagsunod sa isang nabubuhay na Marja\' (pinagkukunang pagsunod) — isang kwalipikadong jurista na ang mga palatandaan ay gumagabay sa mga naniniwala sa relihiyosong kasanayan. Kung mayroon kang mga tanong tungkol sa mga patakaran sa relihiyon, halal at haram na mga bagay, o personal na relihiyosong obligasyon, mangyaring humingi ng payo sa isang kwalipikadong Marja\' o isang scholars sa iyong komunidad.\n\nAng app na ito ay hindi naglalabas ng mga patakaran sa relihiyon.\nAng Ayara ay hindi gumagawa ng authoritative na determinasyon sa mga bagay ng fiqh o personal na relihiyosong obligasyon. Walang dito ang dapat tratuhin bilang isang fatwa o binding na relihiyosong instruksyon.\n\nAng sentral na papel ng Ahl al-Bayt.\nSa Shia Islam, ang Propeta Muhammad ﷺ at ang kanyang purong pamilya — ang Ahl al-Bayt — ay ang mga autoridad na gabay ng Islamic na komunidad pagkatapos ng Quran. Ang labindalawang Imam ng Ahl al-Bayt ay ang divinong itinalang mga interpreteters ng Islamic na pagtuturo. Ang nilalaman sa app na ito ay sumasalamin sa tradisyong ito at nagsusumikap na pagkatiwalaan ito nang tapat.\n\nAng mga bagay ng komunidad.\nAng app na ito ay naglalayong hikayatin ang iyong pakikipag-ugnayan sa pananampalataya habang malalim na nirerespeto ang mahalagang papel ng iyong lokal na masjid, Islamic na sentro, at relihiyosong komunidad. Hinihikayat ka naming manatiling konektado at matuto mula sa mga kwalipikadong guro malapit sa iyo.';

  @override
  String get disclaimerClose => 'Nauunawaan ko';

  @override
  String get disclaimerInfoTooltip => 'Tungkol sa gabay ng app na ito';

  @override
  String get disclaimerSettingsSubtitle =>
      'Para sa pangkalahatang impormasyon lamang. Pindutin upang basahin ang buong disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Disclaimer sa gabay';

  @override
  String get navHome => 'Tahanan';

  @override
  String get navReflect => 'Mag-isip';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalendaryo';

  @override
  String get dashboardToday => 'NGAYON';

  @override
  String get dashboardComingUp => 'Paparating';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mga araw',
      one: 'araw',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Mabilis na Pag-access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Gabay';

  @override
  String get quickActionPrayerTimes => 'Oras ng Panalangin';

  @override
  String get askAyaraTitle => 'Tanungin ang Ayara';

  @override
  String get askAyaraSubtitle =>
      'Magtanong ng anumang Islamic na tanong at makatanggap ng malalim na, gabay na tugon.';

  @override
  String get askAyaraHint => 'hal. Ano ang kahulugan ng Ramadan?';

  @override
  String get askAyaraSubmit => 'Tanungin';

  @override
  String get wisdomOfTheDayTitle => 'Karunungan ng Araw';

  @override
  String get calendarScreenTitle => 'Islamic na Kalendaryo';

  @override
  String get calendarUpcomingOccasions => 'Mga Paparating na Okasyon';

  @override
  String get calendarOccasionRemindersTitle => 'Mga Pahiwatig sa Okasyon';

  @override
  String get calendarOccasionRemindersHint =>
      'Inabalertang ang gabi bago ang bawat okasyon';

  @override
  String get calendarNotifPermissionDenied =>
      'Ang pahintulot na abiso ay tinanggihan. Paganahin ito sa mga setting ng iyong device.';

  @override
  String get calendarNoEvents => 'Walang mga paparating na event na nahanap.';

  @override
  String get calendarAddToPhone => 'Idagdag sa Kalendaryo ng Telepono';

  @override
  String get calendarAddedToPhone => 'Idinagdag sa Kalendaryo';

  @override
  String get calendarCountdownToday => 'NGAYON';

  @override
  String get calendarCountdownTomorrow => 'BUKAS';

  @override
  String calendarCountdownDays(int days) {
    return 'sa loob ng $days mga araw';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Peb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Hune';

  @override
  String get calendarMonthJul => 'Hulyo';

  @override
  String get calendarMonthAug => 'Agos';

  @override
  String get calendarMonthSep => 'Set';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nob';

  @override
  String get calendarMonthDec => 'Des';

  @override
  String get calendarSeasonMuharramEarly =>
      'Mga araw ng Muharram — alaala ang Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — mga araw ng pag-uupa at pag-isip';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — apatnapu\'t araw ng Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ang daan tungo sa Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — ang umaga ng ibunyag';

  @override
  String get calendarSeasonMidShaban =>
      'Gitna ng Sha\'ban — kaarawan ng Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ang buwan ng Quran';

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
  String get duasScreenTitle => 'Duas at Ziyarat';

  @override
  String get duasSearchHint => 'Maghanap ng duas, ziyarat…';

  @override
  String get duasFilterAll => 'Lahat';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas at ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Walang duas na nahanap.';

  @override
  String get duaCategoryDaily => 'Pang-araw-araw';

  @override
  String get duaCategoryWeekly => 'Buwanang';

  @override
  String get duaCategoryOccasions => 'Mga Okasyon';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Kapanganakan';

  @override
  String get eventTypeMartyrdom => 'Martiryo';

  @override
  String get eventTypeOccasion => 'Okasyon';

  @override
  String get duaCopyTooltip => 'Kopyahin ang pagsasalin';

  @override
  String get duaToggleTransliteration => 'Transliterasyon';

  @override
  String get duaToggleTranslation => 'Pagsasalin';

  @override
  String get duaAskAiLabel => 'Tanungin ang Ayara na ipaliwanag ang dua na ito';

  @override
  String get duaAskAiLockedLabel => 'Tanungin ang Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ang mga paliwanag ng Ayara ay available para sa mga miyembro ng Wilaya. Mag-upgrade sa Mga Setting.';

  @override
  String duaAiComingSoon(String name) {
    return 'Tanungin ang Ayara tungkol sa \"$name\" — paparating na!';
  }

  @override
  String get duaCopiedToast => 'Dua kinopya sa clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Ang Allah ay pinakamahusay';

  @override
  String get tasbihAlhamdulillahMeaning =>
      'Lahat ng papuri ay pang-aabot sa Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Kaluwalhatian sa Allah';

  @override
  String get tasbihResetTooltip => 'I-reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih na Kumpleto';

  @override
  String get tasbihCompleteMessage =>
      'Maaaring tangapin ng Allah ang iyong dhikr.';

  @override
  String get tasbihTapHint => 'Pindutin kahit saan upang magbilang';

  @override
  String get tasbihatScreenTitle => 'Gabay sa Panalangin';

  @override
  String get tasbihatScreenSubtitle => 'ANG MGA PAGLALABAN NG PANALANGIN';

  @override
  String get tasbihatScreenDescription =>
      'Isang kumpletong gabay sa mga paglalaban na sinasalita sa panahon at pagkatapos ng pang-araw-araw na mga panalangin — sumusunod sa tradisyon ng Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Sinasalita sa 3rd at 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Sa Shia jurisprudence, ang Tasbiḥāt al-Arbaʿa ay nagpapalit ng Surah al-Fatiha sa 3rd at 4th rakʿah ng Dhuhr, Asr, Maghrib, at Isha. Ito ay obligatory (wājib) na basahin ito minsan, at inirerekomenda (mustaḥabb) na basahin ito ng tatlong beses.';

  @override
  String get tasbihatArba3Translation =>
      'Kaluwalhatian sa Allah · Lahat ng papuri ay para sa Allah\nWalang diyos kundi ang Allah · Ang Allah ay pinakamahusay';

  @override
  String get tasbihatArba3CompleteTitle => 'Pag-recite na Kumpleto';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Maaaring tanggapin ang iyong panalangin — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Pindutin pagkatapos ng bawat pag-recite';

  @override
  String get tasbihatZahraSubtitle =>
      'Pagkatapos ng bawat panalangin · 100 manik';

  @override
  String get tasbihatZahraOriginLabel => 'Pinagmulan';

  @override
  String get tasbihatZahraHadith =>
      'Ang Lady Fatima al-Zahra (sa) ay nagtanong sa Propeta ﷺ ng isang tagapaglingkod. Sabi niya: \"Hindi ko ba ipinapahayag sa iyo ang isang bagay na mas mahusay? Basahin ang Subḥānallāh 33 beses, Alḥamdulillāh 33 beses, at Allāhu Akbar 34 beses pagkatapos ng bawat panalangin. Ito ay mas mahusay para sa iyo kaysa sa isang tagapaglingkod.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Buksan ang Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'MGA INIREREKOMENDANG DUĀS';

  @override
  String get tasbihatDuasSubtitle =>
      'Pagkatapos kumpletuhin ang iyong panalangin';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen =>
      'Pagkatapos ng bawat obligatory na panalangin';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Sinumang mag-recite ng Āyat al-Kursī pagkatapos ng bawat obligatory na panalangin, walang nakakatayo sa pagitan niya at paraiso maliban ang kamatayan. Sinabi ni Imam al-Bāqir (a) na ito ay isa sa mga pinakamalaking verse sa Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Pagkatapos ng bawat panalangin · pinipigilan ang lahat ng mga panalanging pampasalamat';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Ang pagpadala ng mga pagsalubong sa Propeta ﷺ at sa kanyang purong pamilya (Āl Muḥammad) ay inirerekomenda upang maiwanan ang bawat dua. Sinabi ni Imam al-Ṣādiq (a): \"Anumang dua ay suspendido hanggang ipadala mo ang ṣalawāt sa Muḥammad at sa kanyang pamilya.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Pagkatapos ng bawat panalangin · para sa Imam ng ating panahon';

  @override
  String get tasbihatDuaFarajSource =>
      'Itinuro ng Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Isang dua para sa muling paglilitaw ng Imam al-Mahdī (af), ang ikalabindalawang Imam, itinuro ng kanyang ama. Sinasalin araw-araw ng Shia faithful pagkatapos ng bawat panalangin bilang isang gawain ng dedikasyon sa nabubuhay na Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ng Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Pagkatapos ng Maghrib at Isha · partikular na inirerekomenda';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Sinabi ni Imam al-Bāqir (a) na ang pag-recite ng Tasbīḥ al-Zahrā pagkatapos ng Isha bago matulog ay mas mahusay kaysa sa 1000 rakʿahs ng opsyonal na panalangin. Ang liwanag nito ay umakyat sa mga kalangitan.';

  @override
  String get tasbihFatimaGiftPre => 'Isang handog mula sa Propeta';

  @override
  String get tasbihFatimaGiftPost => 'sinasalin pagkatapos ng bawat panalangin';

  @override
  String get prayerTrackerTitle => 'TRACKER NG PANALANGIN';

  @override
  String get prayerTrackerPrayed => 'Nagsimba';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count araw na sunod-sunod';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Lahat ng panalangin ay kumpleto ngayon. Maaaring tanggapin ng Allah.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Kumpleto ngayon';

  @override
  String get dhikrTrackerNotDoneToday => 'Hindi ginawa ngayon';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count araw na sunod-sunod';
  }

  @override
  String get dhikrReminderTitle => 'Pahiwatig ng Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Isang laging pang-araw-araw na pahiwatig upang basahin ang iyong Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Paganahin ang Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Oras ng pahiwatig';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Pang-araw-araw na Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'PAGSASALIN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Ibahagi ang Hadith na ito';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Nakaraan';

  @override
  String get hadithNavNext => 'Susunod';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Ang 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'Ang Propeta, Lady Fatima, at ang Labindalawang Imam — ang mga walang kapintasang gabay ng Islam';

  @override
  String get imamLabelBorn => 'Ipinanganak';

  @override
  String get imamLabelMartyrdom => 'Martiryo';

  @override
  String get imamLabelStatus => 'Kalagayan';

  @override
  String get imamSectionBiography => 'TALAMBUHAY';

  @override
  String get imamSectionFamousSaying => 'KILALANG PAGSASABI';

  @override
  String get imamRoleProphet => 'Ang Panghuling Propeta';

  @override
  String get imamRoleInfallible => 'Ang Walang Kamalian';

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
  String get duaAudioScreenTitle => 'Makinig sa Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Pumili ng dua upang makinig. Pindutin ang tile upang maglaro o magpigil.';

  @override
  String get duaAudioComingSoonMessage =>
      'Ang audio para sa dua na ito ay magiging available sa isang darating na update.';

  @override
  String get duaAudioClose => 'Isara';

  @override
  String get duaAudioError =>
      'Hindi makapag-load ng audio. Mangyaring suriin ang iyong koneksyon.';

  @override
  String get duaAudioMetaTransmittedBy => 'Ipinadala ng';

  @override
  String get duaAudioMetaOccasion => 'Okasyon';

  @override
  String get duaAudioMetaDuration => 'Tagal';

  @override
  String get quickActionDailyHadith => 'Pang-araw-araw na Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Makinig';

  @override
  String get quickActionTasbihat => 'Gabay sa Panalangin';

  @override
  String get pilgrimageSectionTitle => 'Ang Sagradong Paglalakbay';

  @override
  String get pilgrimageSectionSubtitle =>
      'Kumpleto ang mga gabay sa Hajj at Umrah — ang pilgrimage sa Sagradong Tahanan ng Allah sa Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Ang Ikalimang Haligi ng Islam';

  @override
  String get hajjCardDescription =>
      'Ang pandaigdigang anuwal na pilgrimage — obligatory sa isang beses sa buhay para sa bawat kayang Muslim';

  @override
  String get hajjScreenTitle => 'Gabay sa Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Hakbang-hakbang na gabay sa malalaking pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ang Mas Maliit na Pilgrimage';

  @override
  String get umrahCardDescription =>
      'Isang malalim na gantimpala na espiritual na paglalakbay na maaaring isagawa sa anumang oras ng taon';

  @override
  String get umrahScreenTitle => 'Gabay sa Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Hakbang-hakbang na gabay sa mas maliit na pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Mga Ritwal at Hakbang';

  @override
  String get pilgrimageImportantNotesTitle => 'Mga Mahalagang Tala';

  @override
  String get pilgrimageDuaTitle => 'Dua para sa hakbang na ito';

  @override
  String get pilgrimageJafariNoteTitle => 'Tala ng Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Kumpleto';

  @override
  String get pilgrimageMarkDone => 'Tandaan bilang kumpleto';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done sa $total hakbang';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Mga Pilgrim ng Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Ang mga pilgrim ng Shia ay tradisyonal na pumupunta din sa Medina upang bisitahin ang libingan ng Propeta Muhammad (SAW) sa Masjid al-Nabawi, at ang mga libingan ng mga Imam sa Jannat al-Baqi. Ang mga bisitang ito ay may malaking espiritual na kahulugan at itinuturing na isang integral na bahagi ng paglalakbay para sa karamihan ng mga Muslim ng Shia.';

  @override
  String get hajjIntro =>
      'Ang Hajj ay ang ikalimang haligi ng Islam, obligatory sa isang beses sa buhay para sa bawat Muslim na may kakayahang pisikal at pinansiyal. Isinagawa sa buwan ng Dhul Hijjah, ito ay sumusunod sa mga yapak ng Propeta Ibrahim (AS), ang kanyang anak na si Ismail (AS), at Lady Hajar. Para sa mga Muslim ng Shia, ang Hajj ay nagsasama rin ng malalim na pagpapagana ng pagbisita sa mga lugar ng pahinga ng Propeta (SAW) at ng Ahlul Bayt sa Medina.';

  @override
  String get umrahIntro =>
      'Ang Umrah ay ang mas maliit na pilgrimage sa Mecca at, hindi katulad ng Hajj, ay maaaring isagawa sa anumang oras ng taon. Habang hindi obligatory, ito ay may malaking espiritual na gantimpala at itinuturing na isang lubhang inirerekomendang gawain ng pagsisimba. Ito ay nagbabahagi ng maraming ritwal sa Hajj ngunit ay mas maikli, na binubuo ng apat na pangunahing ritwal.';
}
