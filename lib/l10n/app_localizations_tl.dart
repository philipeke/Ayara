// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Piliin ang iyong wika';

  @override
  String get languageSelectSub => 'Maaari mo itong baguhin mamaya sa Settings';

  @override
  String get actionContinue => 'Magpatuloy';

  @override
  String get languageSuggestedHeader => 'Iminungkahi';

  @override
  String get languageAllHeader => 'Lahat ng wika';

  @override
  String get languageSuggestedBadge => 'Iminungkahi';

  @override
  String get languageSearchHint => 'Maghanap…';

  @override
  String get planBasic => 'Karaniwan';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Araw-araw na Patnubay';

  @override
  String get categorySlot02 => 'Iman at Pagtitiwala';

  @override
  String get categorySlot03 => 'Pagninilay sa Salah';

  @override
  String get categorySlot04 => 'Pagtitiis at Pag-asa';

  @override
  String get categorySlot05 => 'Humingi ng Kapatawaran';

  @override
  String get categorySlot06 => 'Awa at Habag';

  @override
  String get categorySlot07 => 'Lakas ng Pananampalataya';

  @override
  String get categorySlot08 => 'Mapagpasalamat na Puso';

  @override
  String get categorySlot09 => 'Layunin ng Buhay';

  @override
  String get categorySlot10 => 'Ugnayang Pampamilya';

  @override
  String get categorySlot11 => 'Kapayapaan ng Kalooban';

  @override
  String get categorySlot12 => 'Karunungan ng Propeta';

  @override
  String get categorySlot13 => 'Mabuting Pag-uugali';

  @override
  String get categorySlot14 => 'Labanan ang Tukso';

  @override
  String get categorySlot15 => 'Dhikr sa Gabi';

  @override
  String get categoryCustom => 'Personal na Pagninilay';

  @override
  String get dhikrMeaningSubhanallah => 'Luwalhati sa Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Lahat ng papuri ay sa Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Ang Allah ang Pinakadakila';

  @override
  String get quranVerseHeartAtRest =>
      'Katotohanan, sa pag-alaala sa Allah natatagpuan ng mga puso ang kapayapaan.';

  @override
  String get promptHint =>
      'Pumili ng kategorya para sa Islamikong patnubay at pagninilay';

  @override
  String get currentLanguage => 'Kasalukuyang wika';

  @override
  String get settingsLanguage => 'Mga setting ng wika';

  @override
  String get settingsTitle => 'Settings';

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
  String get optionsCta => 'Mga pagpipilian';

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
  String get copiedToast => 'Nakopya sa clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Hindi makagawa ng bagong sagot';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nGusto mo bang subukan muli?';
  }

  @override
  String get cancelCta => 'Kanselahin';

  @override
  String get retryCta => 'Subukan muli';

  @override
  String get authTitle => 'Gumawa ng iyong account';

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
      'Kailangan mong tanggapin ang Mga Tuntunin at kilalanin ang Patakaran sa Privacy.';

  @override
  String get termsLabel => 'Tinatanggap ko ang Mga Tuntunin ng Serbisyo';

  @override
  String get privacyLabel => 'Nabasa ko ang Patakaran sa Privacy';

  @override
  String get marketingOptIn => 'Pumapayag akong makatanggap ng balita at alok';

  @override
  String get openTerms => 'Mga Tuntunin ng Serbisyo';

  @override
  String get openPrivacy => 'Patakaran sa Privacy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Naka-sign in';

  @override
  String get upgradeHint =>
      'I-save ang iyong mga pagninilay sa iba’t ibang device sa pamamagitan ng paggawa ng account.';

  @override
  String get upgradeWithGoogle => 'Magpatuloy gamit ang Google';

  @override
  String get signOut => 'Mag-sign out';

  @override
  String get snackUpgraded => 'Na-upgrade ang account gamit ang Google ✅';

  @override
  String get snackSignedIn => 'Naka-sign in gamit ang Google ✅';

  @override
  String get snackSignedOut => 'Naka-sign out';

  @override
  String get snackSignedInApple => 'Naka-sign in gamit ang Apple ✅';

  @override
  String get snackSignedInGoogle => 'Naka-sign in gamit ang Google ✅';

  @override
  String get snackUpgradedApple => 'Na-upgrade ang account gamit ang Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Na-upgrade ang account gamit ang Google ✅';

  @override
  String get historyTitle => 'Mga nakaraang pagninilay';

  @override
  String get historyOpenCta => 'Mga nakaraang pagninilay';

  @override
  String get historyEmpty => 'Wala pang naka-save na pagninilay.';

  @override
  String get historyDeleteTitle => 'Tanggalin ang pagninilay?';

  @override
  String get historyDeleteBody =>
      'Permanente nitong aalisin ang napiling item.';

  @override
  String get deleteCta => 'Tanggalin';

  @override
  String get historyButton => 'Mga Nakaraang Pagninilay';

  @override
  String get historyEmptyTitle => 'Wala pang pagninilay';

  @override
  String get historyEmptyBody =>
      'Gumawa muna ng isang bagay — lalabas dito ang mga na-save mo.';

  @override
  String get historyDelete => 'Tanggalin';

  @override
  String get footerTitle => 'Kasama ang Wilaya, Iman at Sabr';

  @override
  String get footerSubtitle => 'Isang panalangin sa bawat sandali';

  @override
  String get genericErrorSnack =>
      'May nangyaring mali — pakisubukang muli pagkalipas ng ilang sandali.';

  @override
  String get upgradeAccountCta =>
      'I-save ang iyong mga pagninilay sa iba’t ibang device – gumawa ng account';

  @override
  String get deleteAccount => 'Tanggalin ang account';

  @override
  String get exportData => 'I-export ang aking data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Dahan-dahan lang 🐯\nKailangan ni Ayara ng sandali bago ang susunod…';

  @override
  String get rateDailyLimit =>
      'Naubos na ang iyong mga pagninilay sa ngayon.\nKumuha ng higit pang pagninilay o mag-upgrade sa Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Nagamit mo na ang lahat ng iyong pagninilay.\nMag-top up o mag-upgrade sa Wilaya upang magpatuloy.';

  @override
  String get rateGraceCreditsExhausted =>
      'Naubos na ang iyong mga pagninilay sa ngayon.\nKumuha ng higit pang pagninilay o mag-upgrade sa Wilaya.';

  @override
  String get premiumDescription =>
      'Binubuksan ng Wilaya ang mga premium na feature, mga susunod na kategorya, at isang espesyal na badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Wala ka nang pagninilay ngayon. Plano: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Hindi masuri ang iyong mga pagninilay: $message';
  }

  @override
  String get rateCheckGenericError =>
      'May nangyaring mali habang sinusuri ang iyong mga pagninilay.';

  @override
  String get aiFallbackGeneric =>
      'May nangyaring mali — pakisubukang muli pagkalipas ng ilang sandali.';

  @override
  String get limitSectionTitle => 'Mga pagninilay';

  @override
  String get limitTodayLabel => 'Paggamit';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Natitirang mga pagninilay: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get limitLoadingLabel => 'Naglo-load…';

  @override
  String get limitLoadingLabelDescription =>
      'Ipinapakita sa card ng pagninilay habang kinukuha ang usage stats.';

  @override
  String get aiLimitTitle => 'Mga pagninilay';

  @override
  String get aiLimitSubtitle =>
      'Bawat sagot ay gumagamit ng 1 pagninilay. Kasama sa Karaniwan ang panimulang mga pagninilay. Binubuksan ng Wilaya ang mga premium na kategorya at pinapagana ang top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total pagninilay ang nagamit';
  }

  @override
  String get creditsSectionTitle => 'Mga pagninilay';

  @override
  String get creditsUsageLabel => 'Paggamit';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Natitirang mga pagninilay: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Naglo-load…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ipinapakita habang kinukuha ang stats ng pagninilay.';

  @override
  String get creditsTitle => 'Mga pagninilay';

  @override
  String get creditsSubtitle =>
      'Bawat sagot ay gumagamit ng 1 pagninilay. Kasama sa Karaniwan ang panimulang mga pagninilay. Binubuksan ng Wilaya ang mga premium na kategorya at pinapagana ang top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total pagninilay ang nagamit';
  }

  @override
  String get settingsDeleteTitle => 'Tanggalin ang account';

  @override
  String get settingsDeleteDescription =>
      'Permanenteng tanggalin ang iyong account at lahat ng kaugnay nitong data.';

  @override
  String get settingsDeleteButtonLabel => 'Tanggalin ang aking account';

  @override
  String get settingsDeleteDialogTitle => 'Tanggalin ang account?';

  @override
  String get settingsDeleteDialogBody =>
      'Permanente ang aksyong ito at hindi na mababawi.\n\nTatanggalin ang lahat ng iyong chat, kasaysayan at impormasyon ng account.';

  @override
  String get settingsDeleteDialogCancel => 'Kanselahin';

  @override
  String get settingsDeleteDialogConfirm => 'Tanggalin';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Nagamit na ang panimulang mga pagninilay';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Nagamit na ang panimulang mga pagninilay para sa device na ito. Mag-upgrade sa Wilaya o bumili ng higit pang pagninilay upang magpatuloy.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Nagamit na ang panimulang mga pagninilay';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Nagamit na ang panimulang mga pagninilay para sa device na ito. Mag-upgrade sa Wilaya o bumili ng higit pang pagninilay upang magpatuloy.';

  @override
  String get deviceBoundError =>
      'Ang device na ito ay naka-link na sa ibang account. Mangyaring mag-sign in gamit ang orihinal na account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'I-unlock ang buong karanasan ng Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Nasa Wilaya ka na. Kailangan mo pa ba ng higit pang pagninilay?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Kasalukuyang plano: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Mga pagninilay: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Hindi available ang mga pagbili sa ngayon.';

  @override
  String get premiumSignInToPurchase =>
      'Mag-sign in upang bumili ng mga pagninilay o i-unlock ang Wilaya.';

  @override
  String get premiumRestorePurchases => 'Ibalik ang mga binili';

  @override
  String get premiumProcessing => 'Pinoproseso…';

  @override
  String get premiumRestoreHintTitle =>
      'Nakabili ka na ba ng Wilaya o mga pagninilay sa device na ito o sa iba pa?';

  @override
  String get premiumRestoreHintBody =>
      'Ibalik ang iyong mga binili kung hindi sila lumalabas.';

  @override
  String get premiumBuyCredits200 => 'Bumili ng 200 pagninilay';

  @override
  String get premiumBuyCredits400 => 'Bumili ng 400 pagninilay';

  @override
  String get premiumBecomePremiumOneTime => 'Mag-upgrade sa Wilaya mode';

  @override
  String get premiumTopupHint =>
      'Sa Wilaya, maaari kang mag-top up ng dagdag na mga pagninilay kailanman mo kailangan.';

  @override
  String get premiumUpgradeCta => 'Mag-upgrade';

  @override
  String get premiumRequiredForCategory =>
      'Ang kategoryang ito ay para lamang sa mga gumagamit ng Wilaya. Mag-upgrade sa Settings upang ma-unlock ang lahat ng premium na nilalaman.';

  @override
  String get premiumBenefitsBasic =>
      'I-unlock ang Wilaya para sa dagdag na mga pagninilay, premium na mga kategorya, at para makapagpatuloy sa tuwing kailangan mo ng gabay.';

  @override
  String get premiumBenefitsPremium =>
      'Nasa Wilaya mode ka. Kung paubos na, magdagdag ng higit pang mga pagninilay at magpatuloy nang walang abala.';

  @override
  String get premiumButtonBecomePremium => 'I-unlock ang Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Magdagdag ng 1000 pagninilay';

  @override
  String get premiumBadge => 'Aktibo ang Wilaya';

  @override
  String get premiumLoadingStore => 'Niloload ang tindahan…';

  @override
  String get premiumProductNotAvailable =>
      'Hindi pa available ang produktong ito sa tindahan. Pakisubukan muli mamaya.';

  @override
  String get premiumPurchaseError =>
      'May nangyaring mali sa pagbili. Pakisubukang muli.';

  @override
  String get premiumBuyCredits100 => 'Magdagdag ng 100 pagninilay';

  @override
  String get premiumFeatureLocked =>
      'I-unlock ang Wilaya upang ma-access ang tampok na ito.';

  @override
  String get lockedCategoriesHint =>
      'May ilang kategoryang nakalaan para sa mga miyembro ng Wilaya. I-unlock ang mga ito upang tuklasin ang bawat pagninilay sa iyong paglalakbay.';

  @override
  String get freePlanBlockedTitle =>
      'Nagamit mo na ang iyong panimulang mga pagninilay';

  @override
  String get freePlanBlockedBody =>
      'Nasa Standard plan ka na may panimulang mga pagninilay, at naabot mo na ang limitasyon. Upang magpatuloy — at ma-unlock ang premium na mga kategorya — mag-upgrade sa Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Tingnan ang mga opsyon sa Wilaya sa ibaba';

  @override
  String get graceBlockedTitle =>
      'Nagamit mo na ang iyong panimulang mga pagninilay';

  @override
  String get graceBlockedBody =>
      'Nasa Standard plan ka na may panimulang mga pagninilay, at naabot mo na ang limitasyon. Upang magpatuloy — at ma-unlock ang premium na mga kategorya — mag-upgrade sa Wilaya.';

  @override
  String get graceBlockedCtaGoPremium =>
      'Tingnan ang mga opsyon sa Wilaya sa ibaba';

  @override
  String get rateGuestMustSignIn =>
      'Mag-sign in upang magamit ang Ayara at ang iyong mga pagninilay.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'Bilang bisita maaari mong i-browse ang app, ngunit hindi mo magagamit ang mga pagninilay. Mag-log in mamaya sa Settings upang magamit ang mga pagninilay at ma-unlock ang mga pagbili.';

  @override
  String get guestDialogContinue => 'Magpatuloy';

  @override
  String get guestDialogLoginInstead => 'Sa halip, mag-log in';

  @override
  String get optionalLabel => 'opsyonal';

  @override
  String get accountDeleteSuccessTitle => 'Natanggal ang account';

  @override
  String get accountDeleteSuccessBody =>
      'Matagumpay na natanggal ang iyong account at kaugnay nitong data.';

  @override
  String get accountDeleteSuccessClose => 'Isara';

  @override
  String get accountDeleteErrorTitle => 'Hindi matanggal ang account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Nakansela ang muling pagpapatunay. Mangyaring mag-sign in muli at subukang muli ang pagtanggal.';

  @override
  String get accountDeleteReauthRequired =>
      'Ang pagtanggal ng account ay nangangailangan ng kamakailang pag-login. Mangyaring mag-sign out, mag-sign in muli, at subukang muli.';

  @override
  String get settingsDeletePermanentWarning =>
      'Permanente ang aksyong ito at hindi na mababawi. Tatanggalin ang lahat ng data na kaugnay ng iyong account.';

  @override
  String get dailyGraceTitle => 'Araw-araw na Patnubay';

  @override
  String get dailyGraceScriptureLabel => 'TALATA NG ARAW';

  @override
  String get dailyGraceSaintLabel => 'FIGURA NG LINGGO';

  @override
  String get dailyGraceReflectionLabel => 'PAGNINILAY SA GABI';

  @override
  String get dailyGraceCopiedToast => 'Nakopya sa clipboard ang talata';

  @override
  String get locationConsentLabel =>
      'Payagan ang Ayara na gamitin ang aking lokasyon para sa direksyon ng Qibla at oras ng pagdarasal';

  @override
  String get locationConsentHint =>
      'Ginagamit lamang para sa mga tampok na ito. Ang iyong lokasyon ay hindi kailanman ibinabahagi o iniimbak.';

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
  String get askPageTitle => 'Magtanong kay Ayara';

  @override
  String get askPageDescription =>
      'Magtanong ng anumang bagay tungkol sa pananampalataya, pagdarasal, buhay, o Islamikong pagsasagawa at makatanggap ng gabay na nakaugat sa Qur’an at sa mga turo ng Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'I-type ang iyong tanong dito…';

  @override
  String get askPageSubmitCta => 'Magtanong';

  @override
  String get askPageInputEmptyError => 'Mangyaring magsulat muna ng tanong.';

  @override
  String get askResultYourQuestion => 'Iyong tanong';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Nakaharap sa Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Iikot ang iyong telepono hanggang sa ang gintong karayom ay tumuro paitaas.\nAng direksyong iyon ang tumuturo sa Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Mahina ang signal ng GPS. Lumabas at i-tap ang Subukang muli.';

  @override
  String get qiblaRetry => 'Subukang muli';

  @override
  String get qiblaTitle => 'Direksyon ng Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km hanggang Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Kailangan ang lokasyon';

  @override
  String get qiblaLocationNeededBody =>
      'Payagan ang access sa lokasyon upang makalkula ng Ayara ang direksyon ng Kaaba sa Makkah mula saan ka man naroroon.';

  @override
  String get qiblaOpenSettings => 'Buksan ang Settings';

  @override
  String get qiblaCompassLoading => 'Hinahanap ang iyong lokasyon…';

  @override
  String get qiblaTowardMecca => 'Patungo sa Makkah';

  @override
  String get prayerTimesTitle => 'Mga Oras ng Salah';

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
  String get prayerTimesLocationNeededTitle => 'Kailangan ang lokasyon';

  @override
  String get prayerTimesLocationNeededBody =>
      'Payagan ang access sa lokasyon upang makalkula ng Ayara ang tamang oras ng pagdarasal para sa iyong lungsod.';

  @override
  String get prayerTimesNextLabel => 'Susunod';

  @override
  String get prayerTimesDoneLabel => 'Tapos na';

  @override
  String get monthlyPrayerTimesTitle => 'Buwanang Oras ng Salah';

  @override
  String get monthlyPrayerTimesViewButton => 'Tingnan ang Buong Buwan';

  @override
  String get monthlyPrayerTimesNextMonth => 'Susunod na buwan';

  @override
  String get monthlyPrayerTimesDayHeader => 'Araw';

  @override
  String get sharePrayerTimes => 'Ibahagi ang mga oras ng pagdarasal';

  @override
  String get notificationsSectionTitle => 'Mga Notification';

  @override
  String get notificationsSectionSubtitle =>
      'Mga paalala sa dasal, mga kaganapan sa kalendaryo at higit pa';

  @override
  String get dailyReflectionReminderTitle => 'Araw-araw na Pagninilay';

  @override
  String get dailyReflectionReminderDescription =>
      'Isang banayad na pang-araw-araw na paalala upang buksan ang Ayara at muling lumapit sa iyong pananampalataya.';

  @override
  String get dailyReflectionReminderEnable =>
      'I-enable ang pang-araw-araw na paalala';

  @override
  String get dailyReflectionReminderTimeLabel => 'Oras ng paalala';

  @override
  String get prayerNotificationsTitle => 'Mga Paalala sa Dasal';

  @override
  String get prayerNotificationsDescription =>
      'Makatanggap ng banayad na paalala bago ang bawat oras ng dasal upang manatiling konektado sa buong araw.';

  @override
  String get prayerNotificationsEnable => 'I-enable ang mga paalala sa dasal';

  @override
  String get prayerNotificationsOpenSettings =>
      'Buksan ang mga setting ng notification';

  @override
  String get prayerNotificationsDenied => 'Naka-disable ang notifications';

  @override
  String get prayerNotificationsDeniedHint =>
      'Pumunta sa Settings at payagan ang notifications para sa Ayara upang makatanggap ng mga paalala sa oras ng dasal.';

  @override
  String get notificationsConsentLabel =>
      'Payagan ang notifications para sa mga oras ng dasal';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dasal sa Bukang-Liwayway';

  @override
  String get prayerNotifBodyFajr =>
      'Ang Fajr ay ang dasal ng umaga ng Ahl al-Bayt. Sinabi ni Imam Ali (AS): Ingatan ang dasal sa bukang-liwayway gaya ng pag-iingat mo sa iyong pinakamahalagang amanah. Bumangon, magpakalinis, at tumayo sa harap ng Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Dasal sa Tanghali';

  @override
  String get prayerNotifBodyDhuhr =>
      'Pinahalagahan ng mga Imam ng Ahl al-Bayt ang bawat sandali ng pag-alaala. Huminto sandali sa iyong araw, pagsamahin ang Dhuhr at Asr kung kailangan, at ibalik ang iyong puso sa Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Dasal sa Hapon';

  @override
  String get prayerNotifBodyAsr =>
      'Ingatan ang dasal, sapagkat ito ang tipan sa pagitan mo at ng Allah. Dumating na ang oras ng Asr — huwag hayaang lumipas nang walang pag-alaala.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Dasal sa Paglubog ng Araw';

  @override
  String get prayerNotifBodyMaghrib =>
      'Lumubog na ang araw — isang sandaling itinuring na sagrado ng Ahl al-Bayt para sa panalangin. Isagawa ang Maghrib at itaas ang iyong mga kamay sa Allah sa dua bago magsimula ang gabi.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Dasal sa Gabi';

  @override
  String get prayerNotifBodyIsha =>
      'Tapusin ang iyong araw sa piling ng Allah. Hinikayat ng mga Imam ang Salat al-Layl pagkatapos ng Isha — ngunit unahin mong tapusin ang iyong Isha at isara ang araw sa pag-alaala sa Kanya.';

  @override
  String get outOfReflectionsBannerText =>
      'Nagamit mo na ang lahat ng iyong pagninilay';

  @override
  String get outOfReflectionsBannerCta => 'Kumuha pa';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'I-tap ang bilog para magbilang';

  @override
  String get dhikrResetButton => 'I-reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Nakumpleto mo na ang 100 pag-alaala sa Allah. Nawa’y maging liwanag ito para sa iyong puso.';

  @override
  String get disclaimerTitle => 'Tungkol sa gabay ng app na ito';

  @override
  String get disclaimerBody =>
      'Ang Ayara ay nagbibigay ng mga Islamikong pagninilay, mga paalala, at espirituwal na nilalaman upang suportahan ang iyong personal na paglalakbay ng pananampalataya, na nakaugat sa Qur’an at sa mga turo ng Ahl al-Bayt. Inaalok ang nilalamang ito para sa pangkalahatang impormasyonal at nakapagpapalakas na layunin lamang.\n\nHindi kapalit ng may-kakayahang iskolar ang Ayara.\nAng gabay sa app na ito ay hindi pamalit sa isang maalam na iskolar ng Islam, marja\', o gurong may teolohikal na pagsasanay. Sa Shia Islam, ang gabay sa relihiyon ay nakaugat sa paaralang Ja\'fari ng fiqh at sa tradisyong pagsunod sa isang buhay na Marja\' (pinagmumulan ng pagsunod) — isang kwalipikadong hurista na ang mga hatol ay gumagabay sa mga mananampalataya sa pagsasagawa ng relihiyon. Kung mayroon kang mga tanong tungkol sa mga batas sa relihiyon, halal at haram, o mga personal na tungkuling panrelihiyon, mangyaring humingi ng payo mula sa isang kwalipikadong Marja\' o iskolar sa iyong komunidad.\n\nAng app na ito ay hindi naglalabas ng mga hatol sa relihiyon.\nAng Ayara ay hindi gumagawa ng may kapangyarihang pasya sa mga usapin ng fiqh o personal na mga tungkuling panrelihiyon. Wala rito ang dapat ituring na fatwa o nagbubuklod na tagubilin sa relihiyon.\n\nAng sentralidad ng Ahl al-Bayt.\nSa Shia Islam, ang Propeta Muhammad ﷺ at ang kanyang dalisay na sambahayan — ang Ahl al-Bayt — ang may awtoridad na gabay ng pamayanang Islamiko pagkatapos ng Qur’an. Ang labindalawang Imam ng Ahl al-Bayt ang mga banal na itinalagang tagapagpaliwanag ng aral ng Islam. Ang nilalaman ng app na ito ay sumasalamin sa tradisyong ito at naghahangad na parangalan ito nang tapat.\n\nMga usapin ng komunidad.\nLayunin ng app na ito na hikayatin ang iyong pakikipag-ugnayan sa pananampalataya habang malalim na iginagalang ang mahalagang papel ng iyong lokal na mosque, sentrong Islamiko, at relihiyosong komunidad. Hinihikayat ka naming manatiling konektado at matuto mula sa mga kwalipikadong guro na malapit sa iyo.';

  @override
  String get disclaimerClose => 'Nauunawaan ko';

  @override
  String get disclaimerInfoTooltip => 'Tungkol sa gabay ng app na ito';

  @override
  String get disclaimerSettingsSubtitle =>
      'Para sa pangkalahatang impormasyon lamang. I-tap upang basahin ang buong pahayag.';

  @override
  String get disclaimerSectionHeader => 'Paliwanag sa gabay';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Magnilay';

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
      other: 'araw',
      one: 'araw',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Mabilis na Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Patnubay';

  @override
  String get quickActionPrayerTimes => 'Oras ng Salah';

  @override
  String get askAyaraTitle => 'Tanungin si Ayara';

  @override
  String get askAyaraSubtitle =>
      'Magtanong ng anumang Islamikong tanong at makatanggap ng maalalahaning sagot na may gabay.';

  @override
  String get askAyaraHint => 'hal. Ano ang kahalagahan ng Ramadan?';

  @override
  String get askAyaraSubmit => 'Magtanong';

  @override
  String get wisdomOfTheDayTitle => 'Karunungan ng Araw';

  @override
  String get calendarScreenTitle => 'Islamikong Kalendaryo';

  @override
  String get calendarUpcomingOccasions => 'Mga Paparating na Okasyon';

  @override
  String get calendarOccasionRemindersTitle => 'Mga Paalala sa Okasyon';

  @override
  String get calendarOccasionRemindersHint =>
      'Aabisuhan sa gabi bago ang bawat okasyon';

  @override
  String get calendarNotifPermissionDenied =>
      'Tinanggihan ang pahintulot sa notification. I-enable ito sa iyong device settings.';

  @override
  String get calendarNoEvents => 'Walang nakitang paparating na mga kaganapan.';

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
    return 'sa loob ng $days araw';
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
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Hun';

  @override
  String get calendarMonthJul => 'Hul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Set';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nob';

  @override
  String get calendarMonthDec => 'Dis';

  @override
  String get calendarSeasonMuharramEarly =>
      'Mga araw ng Muharram — alalahanin ang Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — mga araw ng pagluluksa at pagninilay';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — apatnapung araw ni Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ang daan patungong Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — ang bukang-liwayway ng pahayag';

  @override
  String get calendarSeasonMidShaban =>
      'Kalagitnaan ng Sha\'ban — kaarawan ni Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ang buwan ng Qur’an';

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
  String get duasEmpty => 'Walang nahanap na duas.';

  @override
  String get duaCategoryDaily => 'Araw-araw';

  @override
  String get duaCategoryWeekly => 'Lingguhan';

  @override
  String get duaCategoryOccasions => 'Mga Okasyon';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Kapanganakan';

  @override
  String get eventTypeMartyrdom => 'Pagkamartir';

  @override
  String get eventTypeOccasion => 'Okasyon';

  @override
  String get duaCopyTooltip => 'Kopyahin ang salin';

  @override
  String get duaToggleTransliteration => 'Transliterasyon';

  @override
  String get duaToggleTranslation => 'Salin';

  @override
  String get duaAskAiLabel => 'Tanungin si Ayara na ipaliwanag ang dua na ito';

  @override
  String get duaAskAiLockedLabel => 'Tanungin si Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ang mga paliwanag ni Ayara ay para sa mga miyembro ng Wilaya lamang. Mag-upgrade sa Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Tanungin si Ayara tungkol sa \"$name\" — paparating na!';
  }

  @override
  String get duaCopiedToast => 'Nakopya ang dua sa clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Ang Allah ang Pinakadakila';

  @override
  String get tasbihAlhamdulillahMeaning => 'Lahat ng papuri ay sa Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Luwalhati sa Allah';

  @override
  String get tasbihResetTooltip => 'I-reset';

  @override
  String get tasbihCompleteTitle => 'Tapos na ang Tasbih';

  @override
  String get tasbihCompleteMessage =>
      'Nawa’y tanggapin ng Allah ang iyong dhikr.';

  @override
  String get tasbihTapHint => 'Mag-tap kahit saan para magbilang';

  @override
  String get tasbihatScreenTitle => 'Gabay sa Salah';

  @override
  String get tasbihatScreenSubtitle => 'MGA PAGPUPURI SA DASAL';

  @override
  String get tasbihatScreenDescription =>
      'Isang kumpletong gabay sa mga pagluwalhati na binibigkas sa panahon at pagkatapos ng pang-araw-araw na mga dasal — ayon sa tradisyon ng Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Binibigkas sa ika-3 at ika-4 na rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Sa Shia jurisprudence, pinapalitan ng Tasbiḥāt al-Arbaʿa ang Surah al-Fatiha sa ika-3 at ika-4 na rakʿah ng Dhuhr, Asr, Maghrib, at Isha. Obligado (wājib) itong bigkasin nang isang beses, at inirerekomenda (mustaḥabb) na bigkasin nang tatlong beses.';

  @override
  String get tasbihatArba3Translation =>
      'Luwalhati sa Allah · Lahat ng papuri ay sa Allah\nWalang diyos maliban sa Allah · Ang Allah ang Pinakadakila';

  @override
  String get tasbihatArba3CompleteTitle => 'Tapos na ang Pagbigkas';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Nawa’y tanggapin ang iyong dasal — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Mag-tap pagkatapos ng bawat pagbigkas';

  @override
  String get tasbihatZahraSubtitle => 'Pagkatapos ng bawat dasal · 100 butil';

  @override
  String get tasbihatZahraOriginLabel => 'Pinagmulan';

  @override
  String get tasbihatZahraHadith =>
      'Humingi si Lady Fatima al-Zahra (sa) sa Propeta ﷺ ng isang alipin. Sinabi niya: \"Hindi ba kita tuturuan ng mas mabuti pa roon? Bigkasin ang Subḥānallāh nang 33 beses, Alḥamdulillāh nang 33 beses, at Allāhu Akbar nang 34 beses pagkatapos ng bawat dasal. Iyon ay mas mabuti para sa iyo kaysa sa isang alipin.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Tomo 85';

  @override
  String get tasbihatZahraOpenCounter => 'Buksan ang Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'MGA INIREREKOMENDANG DUA';

  @override
  String get tasbihatDuasSubtitle => 'Pagkatapos mong matapos ang iyong dasal';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Pagkatapos ng bawat obligadong dasal';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Sinumang bumibigkas ng Āyat al-Kursī pagkatapos ng bawat obligadong dasal, walang humahadlang sa pagitan niya at ng paraiso maliban sa kamatayan. Sinabi ni Imam al-Bāqir (a) na isa ito sa pinakadakilang mga talata sa Qur’an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Pagkatapos ng bawat dasal · sinasara ang lahat ng dua';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Ang pagpapadala ng pagpapala sa Propeta ﷺ at sa kanyang dalisay na pamilya (Āl Muḥammad) ay inirerekomenda upang tapusin ang bawat dua. Sinabi ni Imam al-Ṣādiq (a): \"Ang bawat dua ay nakabitin hanggang sa magpadala ka ng ṣalawāt kay Muḥammad at sa kanyang pamilya.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Pagkatapos ng bawat dasal · para sa Imam ng ating panahon';

  @override
  String get tasbihatDuaFarajSource =>
      'Itinuro ni Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Isang dua para sa muling paglitaw ni Imam al-Mahdī (af), ang ikalabindalawang Imam, na itinuro ng kanyang ama. Madalas itong binibigkas ng maraming Shia Muslim pagkatapos ng dasal bilang isang gawa ng debosyon sa buhay na Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ni Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Pagkatapos ng Maghrib at Isha · lalo nang inirerekomenda';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Sinabi ni Imam al-Bāqir (a) na ang pagbigkas ng Tasbīḥ al-Zahrā pagkatapos ng Isha bago matulog ay higit na mabuti kaysa sa 1000 rakʿah ng kusang-loob na dasal. Ang liwanag nito ay umaakyat sa kalangitan.';

  @override
  String get tasbihFatimaGiftPre => 'Isang handog mula sa Propeta';

  @override
  String get tasbihFatimaGiftPost => 'binibigkas pagkatapos ng bawat dasal';

  @override
  String get prayerTrackerTitle => 'TAGASUBAYBAY NG SALAH';

  @override
  String get prayerTrackerPrayed => 'Naitawid na';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count araw na sunod-sunod';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Lahat ng dasal ngayon ay natapos na. Nawa’y tanggapin ng Allah.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Nakumpleto ngayon';

  @override
  String get dhikrTrackerNotDoneToday => 'Hindi nagawa ngayon';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count araw na sunod-sunod';
  }

  @override
  String get dhikrReminderTitle => 'Paalala sa Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Isang banayad na pang-araw-araw na paalala upang bigkasin ang iyong Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'I-enable ang paalala sa Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Oras ng paalala';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Araw-araw na Hadith';

  @override
  String get hadithLabelArabic => 'ARABIKO';

  @override
  String get hadithLabelTranslation => 'SALIN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Ibahagi ang Hadith na Ito';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nSa pamamagitan ng Ayara';
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
  String get imamsScreenTitle => 'Ang Labing-apat na Walang Sala';

  @override
  String get imamsScreenSubtitle =>
      'Ang Propeta, Ginang Fatima, at ang Labindalawang Imam — ang mga nilinis at walang sala na gabay sa Twelver Shia Islam';

  @override
  String get imamLabelBorn => 'Ipinanganak';

  @override
  String get imamLabelMartyrdom => 'Pagkamartir';

  @override
  String get imamLabelStatus => 'Kalagayan';

  @override
  String get imamSectionBiography => 'TALAMBUHAY';

  @override
  String get imamSectionFamousSaying => 'SIKAT NA PANANALITA';

  @override
  String get imamRoleProphet => 'Ang Huling Propeta';

  @override
  String get imamRoleInfallible => 'Ang Walang Kamalian';

  @override
  String get imamOrdinal1 => 'Unang Imam';

  @override
  String get imamOrdinal2 => 'Ikalawang Imam';

  @override
  String get imamOrdinal3 => 'Ikatlong Imam';

  @override
  String get imamOrdinal4 => 'Ikaapat na Imam';

  @override
  String get imamOrdinal5 => 'Ikalimang Imam';

  @override
  String get imamOrdinal6 => 'Ikaanim na Imam';

  @override
  String get imamOrdinal7 => 'Ikapitong Imam';

  @override
  String get imamOrdinal8 => 'Ikawalong Imam';

  @override
  String get imamOrdinal9 => 'Ikasiyam na Imam';

  @override
  String get imamOrdinal10 => 'Ikasampung Imam';

  @override
  String get imamOrdinal11 => 'Ikalabing-isang Imam';

  @override
  String get imamOrdinal12 => 'Ikalabindalawang Imam';

  @override
  String get duaAudioScreenTitle => 'Makinig sa Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Pumili ng dua na gusto mong pakinggan. I-tap ang tile upang mag-play o mag-pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Magiging available ang audio para sa dua na ito sa susunod na update.';

  @override
  String get duaAudioClose => 'Isara';

  @override
  String get duaAudioError =>
      'Hindi ma-load ang audio. Pakisuri ang iyong koneksyon.';

  @override
  String get duaAudioMetaTransmittedBy => 'Isinalaysay ni';

  @override
  String get duaAudioMetaOccasion => 'Okasyon';

  @override
  String get duaAudioMetaDuration => 'Tagal';

  @override
  String get quickActionDailyHadith => 'Araw-araw na Hadith';

  @override
  String get quickAction14Masumeen => 'Labing-apat na Walang Sala';

  @override
  String get quickActionListenDuas => 'Makinig';

  @override
  String get quickActionTasbihat => 'Gabay sa Salah';

  @override
  String get pilgrimageSectionTitle => 'Ang Banal na Paglalakbay';

  @override
  String get pilgrimageSectionSubtitle =>
      'Mga kumpletong gabay sa Hajj at Umrah — ang paglalakbay sa Banal na Bahay ng Allah sa Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Ang Ikalimang Haligi ng Islam';

  @override
  String get hajjCardDescription =>
      'Ang dakilang taunang paglalakbay — obligado nang isang beses sa buhay para sa bawat may-kakayahang Muslim';

  @override
  String get hajjScreenTitle => 'Gabay sa Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Hakbang-hakbang na gabay sa dakilang paglalakbay';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ang Maliit na Paglalakbay';

  @override
  String get umrahCardDescription =>
      'Isang malalim na kapaki-pakinabang na espirituwal na paglalakbay na maaaring isagawa anumang oras ng taon';

  @override
  String get umrahScreenTitle => 'Gabay sa Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Hakbang-hakbang na gabay sa maliit na paglalakbay';

  @override
  String get pilgrimageStepsTitle => 'Mga Ritwal at Hakbang';

  @override
  String get pilgrimageImportantNotesTitle => 'Mahahalagang Paalala';

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
    return '$done ng $total hakbang';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Mga Shia na Manlalakbay';

  @override
  String get pilgrimageShiaNoteBody =>
      'Maraming Shia na pilgrim ang naglalakbay din sa Medina para sa ziyarat ng Propeta Muhammad (SAW) sa Masjid al-Nabawi at ang mga libingan sa Jannat al-Baqi. Ang mga pagbisitang ito ay may malalim na espiritwal na kahulugan, kahit na hindi sila mga ritwal ng Hajj.';

  @override
  String get hajjIntro =>
      'Ang Hajj ay ang ikalimang haligi ng Islam, na obligadong isagawa isang beses sa buhay para sa bawat Muslim na pisikal at pinansyal na kayang gawin ito. Para sa karamihan ng mga Shia na pilgrim ngayon, ito ay nangangahulugang Hajj al-Tamattu\', na isinasagawa sa buwan ng Dhul Hijjah sa mga yapak ni Propeta Ibrahim (AS), ang kanyang anak na si Ismail (AS), at Ginang Hajar. Ang gabay na ito ay sumusunod sa balangkas ng mga ritwal ng Ja\'fari, habang ang ziyarat sa Medina ay nananatiling isang labis na pinahahalagahang paglalakbay bago o pagkatapos ng Hajj.';

  @override
  String get umrahIntro =>
      'Ang Umrah ay ang maliit na paglalakbay patungong Mecca at, hindi tulad ng Hajj, maaari itong isagawa anumang oras ng taon. Bagaman hindi obligado, nagdadala ito ng napakalaking espirituwal na gantimpala at itinuturing na isang lubos na inirerekomendang gawaing pagsamba. May ilang ritwal itong kapareho ng Hajj ngunit mas maikli, na binubuo ng apat na pangunahing gawain.';

  @override
  String get voiceInputTitle => 'Boses na Input';

  @override
  String get voiceInputMicTitle => 'Mikropono';

  @override
  String get voiceInputMicSubtitle =>
      'Sabihin ang iyong input sa Ask Ayara sa halip na mag-type.';

  @override
  String get voiceInputMicDenied => 'Tinanggihan ang access sa mikropono.';

  @override
  String get voiceInputSpeak => 'Magsalita sa halip';

  @override
  String get voiceInputListening => 'Nakikinig…';

  @override
  String get voiceInputPermissionDenied =>
      'Kinakailangan ang access sa mikropono para sa boses na input.';
}
