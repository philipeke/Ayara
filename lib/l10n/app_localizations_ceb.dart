// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cebuano (`ceb`).
class AppLocalizationsCeb extends AppLocalizations {
  AppLocalizationsCeb([String locale = 'ceb']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Pilia ang imong pinulongan';

  @override
  String get languageSelectSub => 'Mahimo nimo kining usbon unya sa Settings';

  @override
  String get actionContinue => 'Padayon';

  @override
  String get languageSuggestedHeader => 'Gisugyot';

  @override
  String get languageAllHeader => 'Tanang pinulongan';

  @override
  String get languageSuggestedBadge => 'Gisugyot';

  @override
  String get languageSearchHint => 'Pangita…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Adlaw-adlaw nga Giya';

  @override
  String get categorySlot02 => 'Iman ug Pagsalig';

  @override
  String get categorySlot03 => 'Pamalandong sa Pag-ampo';

  @override
  String get categorySlot04 => 'Pailub ug Paglaum';

  @override
  String get categorySlot05 => 'Pangayo og Kapasayloan';

  @override
  String get categorySlot06 => 'Kalooy ug Pagkamaloloy-on';

  @override
  String get categorySlot07 => 'Kusog sa Pagtuo';

  @override
  String get categorySlot08 => 'Mapasalamatong Kasingkasing';

  @override
  String get categorySlot09 => 'Katuyoan sa Kinabuhi';

  @override
  String get categorySlot10 => 'Panaghiusa sa Pamilya';

  @override
  String get categorySlot11 => 'Kalinaw sa Sulod';

  @override
  String get categorySlot12 => 'Kaalam sa Propeta';

  @override
  String get categorySlot13 => 'Maayong Kinaaiya';

  @override
  String get categorySlot14 => 'Sukli ang Tintasyon';

  @override
  String get categorySlot15 => 'Panggabii nga Dhikr';

  @override
  String get categoryCustom => 'Personal nga Pamalandong';

  @override
  String get dhikrMeaningSubhanallah => 'Mahimayaon ang Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Ang tanang pagdayeg alang sa Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Ang Allah Mao ang Labing Dako';

  @override
  String get quranVerseHeartAtRest =>
      'Sa paghinumdom sa Allah lamang makakaplag og kalinaw ang mga kasingkasing.';

  @override
  String get promptHint =>
      'I-tap ang usa ka kategorya alang sa Islamikong giya ug pamalandong';

  @override
  String get currentLanguage => 'Karon nga pinulongan';

  @override
  String get settingsLanguage => 'Mga setting sa pinulongan';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Pilia ang imong pinulongan';

  @override
  String get continueCta => 'Padayon';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka mga pulong',
      one: '$count ka pulong',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Mga kapilian';

  @override
  String get newCta => 'Bag-o';

  @override
  String get actionsTitle => 'Unsay gusto nimong buhaton?';

  @override
  String get copy => 'Kopyaha';

  @override
  String get share => 'Ipaambit';

  @override
  String get close => 'Sirado';

  @override
  String get copiedToast => 'Nakopya sa clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Dili makahimo og bag-ong tubag';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nGusto ba nimong mosulay pag-usab?';
  }

  @override
  String get cancelCta => 'Kanselahon';

  @override
  String get retryCta => 'Sulayi pag-usab';

  @override
  String get authTitle => 'Paghimo sa imong account';

  @override
  String get continueAsGuest => 'Padayon isip bisita';

  @override
  String get signInGoogle => 'Pag-sign in gamit ang Google';

  @override
  String get signInApple => 'Pag-sign in gamit ang Apple';

  @override
  String get signInEmail => 'Pag-sign in gamit ang Email';

  @override
  String get upgradeWithApple => 'Padayon gamit ang Apple';

  @override
  String get mustAccept =>
      'Kinahanglan nimong dawaton ang Terms ug ilhon ang Privacy Policy.';

  @override
  String get termsLabel => 'Dawaton nako ang Terms of Service';

  @override
  String get privacyLabel => 'Nabasa nako ang Privacy Policy';

  @override
  String get marketingOptIn => 'Misugot ko sa pagdawat og balita ug mga alok';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Naka-sign in';

  @override
  String get upgradeHint =>
      'I-save ang imong mga pamalandong sa lain-laing device pinaagi sa paghimo og account.';

  @override
  String get upgradeWithGoogle => 'Padayon gamit ang Google';

  @override
  String get signOut => 'Pag-sign out';

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
  String get historyTitle => 'Nangaging mga pamalandong';

  @override
  String get historyOpenCta => 'Nangaging mga pamalandong';

  @override
  String get historyEmpty => 'Wala pay na-save nga mga pamalandong.';

  @override
  String get historyDeleteTitle => 'Tangtangon ang pamalandong?';

  @override
  String get historyDeleteBody =>
      'Kini permanente nga magatangtang sa piniling item.';

  @override
  String get deleteCta => 'Tangtanga';

  @override
  String get historyButton => 'Nangaging mga Pamalandong';

  @override
  String get historyEmptyTitle => 'Wala pay mga pamalandong';

  @override
  String get historyEmptyBody =>
      'Paghimo usa una — ang imong na-save nga mga item makita dinhi.';

  @override
  String get historyDelete => 'Tangtanga';

  @override
  String get footerTitle => 'Uban ang Wilaya, Iman ug Sabr';

  @override
  String get footerSubtitle => 'Usa ka pag-ampo matag higayon';

  @override
  String get genericErrorSnack =>
      'Adunay sayop — palihog sulayi pag-usab pagkahuman sa makadiyot.';

  @override
  String get upgradeAccountCta =>
      'I-save ang imong mga pamalandong sa lain-laing device – paghimo og account';

  @override
  String get deleteAccount => 'Tangtanga ang account';

  @override
  String get exportData => 'I-export ang akong data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Hinay-hinay lang 🐯\nNagkinahanglan pa og gamayng higayon ang Ayara sa dili pa ang sunod…';

  @override
  String get rateDailyLimit =>
      'Nahutdan ka na og pamalandong sa pagkakaron.\nPagkuha og dugang o pag-upgrade sa Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Nagamit na nimo ang tanan nimong pamalandong.\nPag-top up o pag-upgrade sa Wilaya aron makapadayon.';

  @override
  String get rateGraceCreditsExhausted =>
      'Nahutdan ka na og pamalandong sa pagkakaron.\nPagkuha og dugang o pag-upgrade sa Wilaya.';

  @override
  String get premiumDescription =>
      'Ang Wilaya nag-abli sa premium nga mga feature, umaabot nga mga kategorya, ug usa ka espesyal nga badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Hutdan na ang imong mga pamalandong karon. Plano: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Dili masusi ang imong mga pamalandong: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Adunay sayop samtang gisusi ang imong mga pamalandong.';

  @override
  String get aiFallbackGeneric =>
      'Adunay sayop — palihog sulayi pag-usab pagkahuman sa makadiyot.';

  @override
  String get limitSectionTitle => 'Mga pamalandong';

  @override
  String get limitTodayLabel => 'Paggamit';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Nahibiling mga pamalandong: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get limitLoadingLabel => 'Nag-load…';

  @override
  String get limitLoadingLabelDescription =>
      'Ipakita sa reflections card samtang gikuha ang usage stats.';

  @override
  String get aiLimitTitle => 'Mga pamalandong';

  @override
  String get aiLimitSubtitle =>
      'Ang matag tubag mogamit og 1 ka pamalandong. Ang Standard adunay starter reflections. Ang Wilaya moabli sa premium nga mga kategorya ug mopahimo sa top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ka mga pamalandong ang nagamit';
  }

  @override
  String get creditsSectionTitle => 'Mga pamalandong';

  @override
  String get creditsUsageLabel => 'Paggamit';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Nahibiling mga pamalandong: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Nag-load…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ipakita samtang gikuha ang reflection stats.';

  @override
  String get creditsTitle => 'Mga pamalandong';

  @override
  String get creditsSubtitle =>
      'Ang matag tubag mogamit og 1 ka pamalandong. Ang Standard adunay starter reflections. Ang Wilaya moabli sa premium nga mga kategorya ug mopahimo sa top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ka mga pamalandong ang nagamit';
  }

  @override
  String get settingsDeleteTitle => 'Tangtanga ang account';

  @override
  String get settingsDeleteDescription =>
      'Permanente nga tangtanga ang imong account ug tanang kauban nga data.';

  @override
  String get settingsDeleteButtonLabel => 'Tangtanga ang akong account';

  @override
  String get settingsDeleteDialogTitle => 'Tangtangon ang account?';

  @override
  String get settingsDeleteDialogBody =>
      'Kini permanente ug dili na mabalik.\n\nAng tanan nimong chats, history ug impormasyon sa account matangtang.';

  @override
  String get settingsDeleteDialogCancel => 'Kanselahon';

  @override
  String get settingsDeleteDialogConfirm => 'Tangtanga';

  @override
  String get settingsFreeLimitUsedTitle => 'Nagamit na ang starter reflections';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Nagamit na ang starter reflections para niining device. Pag-upgrade sa Wilaya o pagpalit og dugang nga mga pamalandong aron makapadayon.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Nagamit na ang starter reflections';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Nagamit na ang starter reflections para niining device. Pag-upgrade sa Wilaya o pagpalit og dugang nga mga pamalandong aron makapadayon.';

  @override
  String get deviceBoundError =>
      'Kini nga device naka-link na sa laing account. Palihog sign in gamit ang orihinal nga account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic =>
      'Ablihi ang tibuok nga kasinatian sa Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Anaa ka sa Wilaya. Nagkinahanglan pa og dugang nga mga pamalandong?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Karon nga plano: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Mga pamalandong: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Dili available ang mga pagpalit sa pagkakaron.';

  @override
  String get premiumSignInToPurchase =>
      'Pag-sign in aron makapalit og mga pamalandong o maablihan ang Wilaya.';

  @override
  String get premiumRestorePurchases => 'Ibalik ang mga pagpalit';

  @override
  String get premiumProcessing => 'Giproseso…';

  @override
  String get premiumRestoreHintTitle =>
      'Nakapalit na ba og Wilaya o mga pamalandong sa kini nga device o sa laing usa?';

  @override
  String get premiumRestoreHintBody =>
      'Ibalik ang imong mga pagpalit kung wala kini makita.';

  @override
  String get premiumBuyCredits200 => 'Palit og 200 ka pamalandong';

  @override
  String get premiumBuyCredits400 => 'Palit og 400 ka pamalandong';

  @override
  String get premiumBecomePremiumOneTime => 'Pag-upgrade sa Wilaya mode';

  @override
  String get premiumTopupHint =>
      'Uban sa Wilaya, mahimo kang mo-top up og dugang nga mga pamalandong bisan kanus-a nimo kinahanglan.';

  @override
  String get premiumUpgradeCta => 'I-upgrade';

  @override
  String get premiumRequiredForCategory =>
      'Kini nga kategorya para lamang sa mga user sa Wilaya. Pag-upgrade sa Settings aron maablihan ang tanang premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Ablihi ang Wilaya aron makakuha og dugang nga mga pamalandong, maka-access sa premium nga mga kategorya, ug makapadayon bisan kanus-a nimo gikinahanglan ang giya.';

  @override
  String get premiumBenefitsPremium =>
      'Anaa ka sa Wilaya mode. Kung hapit na mahurot, pagdugang og ekstra nga mga pamalandong ug ipadayon nga walay hunong.';

  @override
  String get premiumButtonBecomePremium => 'Ablihi ang Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Dugangi og 1000 ka pamalandong';

  @override
  String get premiumBadge => 'Aktibo ang Wilaya';

  @override
  String get premiumLoadingStore => 'Nag-load ang store…';

  @override
  String get premiumProductNotAvailable =>
      'Kini nga produkto dili pa available sa store. Palihog sulayi pag-usab sa ulahi.';

  @override
  String get premiumPurchaseError =>
      'Adunay sayop sa pagpalit. Palihog sulayi pag-usab.';

  @override
  String get premiumBuyCredits100 => 'Dugangi og 100 ka pamalandong';

  @override
  String get premiumFeatureLocked =>
      'Ablihi ang Wilaya aron magamit kini nga feature.';

  @override
  String get lockedCategoriesHint =>
      'Adunay pipila ka mga kategorya nga gitagana alang sa mga miyembro sa Wilaya. Ablihi kini aron masusi ang tanang pamalandong sa imong panaw.';

  @override
  String get freePlanBlockedTitle =>
      'Nagamit na nimo ang imong starter reflections';

  @override
  String get freePlanBlockedBody =>
      'Anaa ka sa Standard nga plano uban sa starter reflections, ug naabot na nimo ang limit. Aron makapadayon — ug maablihan ang premium nga mga kategorya — pag-upgrade sa Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Tan-awa ang mga opsyon sa Wilaya sa ubos';

  @override
  String get graceBlockedTitle =>
      'Nagamit na nimo ang imong starter reflections';

  @override
  String get graceBlockedBody =>
      'Anaa ka sa Standard nga plano uban sa starter reflections, ug naabot na nimo ang limit. Aron makapadayon — ug maablihan ang premium nga mga kategorya — pag-upgrade sa Wilaya.';

  @override
  String get graceBlockedCtaGoPremium =>
      'Tan-awa ang mga opsyon sa Wilaya sa ubos';

  @override
  String get rateGuestMustSignIn =>
      'Pag-sign in aron magamit ang Ayara ug ang imong mga pamalandong.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'Isip bisita mahimo kang mosuroy sa app, apan dili ka makagamit og mga pamalandong. Pag-log in sa ulahi sa Settings aron magamit ang mga pamalandong ug maablihan ang mga pagpalit.';

  @override
  String get guestDialogContinue => 'Padayon';

  @override
  String get guestDialogLoginInstead => 'Pag-log in hinuon';

  @override
  String get optionalLabel => 'opsyonal';

  @override
  String get accountDeleteSuccessTitle => 'Natangtang na ang account';

  @override
  String get accountDeleteSuccessBody =>
      'Malampuson nang natangtang ang imong account ug kauban nga data.';

  @override
  String get accountDeleteSuccessClose => 'Sirado';

  @override
  String get accountDeleteErrorTitle => 'Dili matangtang ang account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Gikansela ang re-authentication. Palihog pag-sign in pag-usab ug sulayi ang pagtangtang pag-usab.';

  @override
  String get accountDeleteReauthRequired =>
      'Ang pagtangtang sa account nanginahanglan og bag-ong login. Palihog sign out, sign in pag-usab, ug sulayi pag-usab.';

  @override
  String get settingsDeletePermanentWarning =>
      'Kini nga lihok permanente ug dili na mabalik. Ang tanang data nga may kalabutan sa imong account matangtang.';

  @override
  String get dailyGraceTitle => 'Adlaw-adlaw nga Giya';

  @override
  String get dailyGraceScriptureLabel => 'BERSIKULO SA ADLAW';

  @override
  String get dailyGraceSaintLabel => 'FIGURA SA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'PANGGABII NGA PAMALANDONG';

  @override
  String get dailyGraceCopiedToast => 'Nakopya ang bersikulo sa clipboard';

  @override
  String get locationConsentLabel =>
      'Tugoti ang Ayara nga mogamit sa akong lokasyon alang sa direksyon sa Qibla ug oras sa pag-ampo';

  @override
  String get locationConsentHint =>
      'Gigamit lamang alang niining mga feature. Ang imong lokasyon dili gyud i-share o i-store.';

  @override
  String get askPageTitle => 'Pangutan-a ang Ayara';

  @override
  String get askPageDescription =>
      'Pangutana bisan unsa mahitungod sa pagtuo, pag-ampo, kinabuhi, o Islamikong praktis ug dawata ang giya nga nakagamot sa Quran ug sa mga pagtulon-an sa Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Isulat dinhi ang imong pangutana…';

  @override
  String get askPageSubmitCta => 'Pangutana';

  @override
  String get askPageInputEmptyError => 'Palihog pagsulat una og pangutana.';

  @override
  String get askResultYourQuestion => 'Imong pangutana';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Padulong sa Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Pihota ang imong telepono hangtod ang bulawang dagom motudlo paibabaw.\nKana nga direksyon mao ang Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Huyang ang GPS signal. Lakaw sa gawas ug i-tap ang Retry.';

  @override
  String get qiblaRetry => 'Sulayi pag-usab';

  @override
  String get qiblaTitle => 'Direksyon sa Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km padulong sa Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Gikinahanglan ang lokasyon';

  @override
  String get qiblaLocationNeededBody =>
      'Tugoti ang access sa lokasyon aron makalkula sa Ayara ang direksyon sa Kaaba sa Makkah gikan sa bisan asa ka anaa.';

  @override
  String get qiblaOpenSettings => 'Ablihi ang Settings';

  @override
  String get qiblaCompassLoading => 'Gipangita ang imong posisyon…';

  @override
  String get qiblaTowardMecca => 'Padulong sa Makkah';

  @override
  String get prayerTimesTitle => 'Mga Oras sa Pag-ampo';

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
  String get prayerTimesLocationNeededTitle => 'Gikinahanglan ang lokasyon';

  @override
  String get prayerTimesLocationNeededBody =>
      'Tugoti ang access sa lokasyon aron makalkula sa Ayara ang tukmang mga oras sa pag-ampo para sa imong siyudad.';

  @override
  String get prayerTimesNextLabel => 'Sunod';

  @override
  String get prayerTimesDoneLabel => 'Nahuman';

  @override
  String get monthlyPrayerTimesTitle => 'Binulan nga mga Oras sa Pag-ampo';

  @override
  String get monthlyPrayerTimesViewButton => 'Tan-awa ang Tibuok Bulan';

  @override
  String get monthlyPrayerTimesNextMonth => 'Sunod nga bulan';

  @override
  String get monthlyPrayerTimesDayHeader => 'Adlaw';

  @override
  String get sharePrayerTimes => 'Ipaambit ang mga oras sa pag-ampo';

  @override
  String get notificationsSectionTitle => 'Mga Pahibalo';

  @override
  String get notificationsSectionSubtitle =>
      'Mga pahinumdom sa pag-ampo, kalendaryong panghitabo ug uban pa';

  @override
  String get dailyReflectionReminderTitle => 'Adlaw-adlaw nga Pamalandong';

  @override
  String get dailyReflectionReminderDescription =>
      'Usa ka malumo nga adlaw-adlaw nga pahinumdom sa pag-abli sa Ayara ug pagpabiling konektado sa imong pagtuo.';

  @override
  String get dailyReflectionReminderEnable =>
      'I-enable ang adlaw-adlaw nga pahinumdom';

  @override
  String get dailyReflectionReminderTimeLabel => 'Oras sa pahinumdom';

  @override
  String get prayerNotificationsTitle => 'Mga Pahinumdom sa Pag-ampo';

  @override
  String get prayerNotificationsDescription =>
      'Dawata ang usa ka malumo nga pahinumdom sa dili pa ang matag oras sa pag-ampo aron magpabiling konektado tibuok adlaw.';

  @override
  String get prayerNotificationsEnable =>
      'I-enable ang mga pahinumdom sa pag-ampo';

  @override
  String get prayerNotificationsOpenSettings =>
      'Ablihi ang notification settings';

  @override
  String get prayerNotificationsDenied => 'Naka-disable ang notifications';

  @override
  String get prayerNotificationsDeniedHint =>
      'Adto sa Settings ug tugoti ang notifications para sa Ayara aron makadawat og mga pahinumdom sa oras sa pag-ampo.';

  @override
  String get notificationsConsentLabel =>
      'Tugoti ang notifications alang sa mga oras sa pag-ampo';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Pag-ampo sa Kaadlawon';

  @override
  String get prayerNotifBodyFajr =>
      'Ang Fajr mao ang pag-ampo sa kaadlawon sa Ahl al-Bayt. Miingon si Imam Ali (AS): Bantayi ang pag-ampo sa kaadlawon sama sa pagpanalipod ninyo sa inyong labing bililhon nga pagsalig. Bangon, paghinlo sa kaugalingon, ug tindog atubangan sa Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Pag-ampo sa Udto';

  @override
  String get prayerNotifBodyDhuhr =>
      'Gibililhon sa mga Imam sa Ahl al-Bayt ang matag higayon sa paghinumdom. Hunong usa sa imong adlaw, isagol ang Dhuhr ug Asr kung gikinahanglan, ug ibalik ang imong kasingkasing sa Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Pag-ampo sa Hapon';

  @override
  String get prayerNotifBodyAsr =>
      'Bantayi ang pag-ampo, kay kini mao ang kasabotan tali kanimo ug sa Allah. Miabot na ang oras sa Asr — ayaw tugoti nga molabay kini nga walay paghinumdom.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Pag-ampo sa Pagsalop sa Adlaw';

  @override
  String get prayerNotifBodyMaghrib =>
      'Misalop na ang adlaw — usa ka higayon nga gihuptan nga sagrado sa Ahl al-Bayt alang sa pag-ampo. Buhata ang Maghrib ug iisa ang imong mga kamot ngadto sa Allah sa dua sa dili pa magsugod ang gabii.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Pag-ampo sa Gabii';

  @override
  String get prayerNotifBodyIsha =>
      'Tapusa ang imong adlaw kauban ang Allah. Giawhag sa mga Imam ang Salat al-Layl human sa Isha — apan una, tapusa ang imong Isha ug sirad-i ang adlaw sa Iyang paghinumdom.';

  @override
  String get outOfReflectionsBannerText =>
      'Nagamit na nimo ang tanan nimong mga pamalandong';

  @override
  String get outOfReflectionsBannerCta => 'Kuhaa pa';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'I-tap ang lingin aron moihap';

  @override
  String get dhikrResetButton => 'I-reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Nahuman na nimo ang 100 ka mga paghinumdom sa Allah. Hinaot nga mahimo kining kahayag alang sa imong kasingkasing.';

  @override
  String get disclaimerTitle => 'Mahitungod sa giya sa kini nga app';

  @override
  String get disclaimerBody =>
      'Ang Ayara naghatag og Islamikong mga pamalandong, mga pahinumdom, ug espiritwal nga sulod aron mosuporta sa imong personal nga panaw sa pagtuo, nga nakagamot sa Quran ug sa mga pagtulon-an sa Ahl al-Bayt. Kini nga sulod gitanyag lamang alang sa kinatibuk-ang impormasyon ug inspirasyonal nga katuyoan.\n\nAng Ayara dili puli sa kuwalipikadong scholarship.\nAng giya niini nga app dili kapuli sa usa ka maalamong Islamikong scholar, marja\', o theolohikong natudluang magtutudlo. Sa Shia Islam, ang relihiyosong giya nakagamot sa Ja\'fari nga tunghaan sa jurisprudence (fiqh) ug sa tradisyon sa pagsunod sa usa ka buhing Marja\' (tinubdan sa emulation) — usa ka kuwalipikadong jurist kansang mga hukom naggiya sa mga magtutuo sa relihiyosong praktis. Kung aduna kay mga pangutana bahin sa relihiyosong mga hukom, mga butang nga halal ug haram, o personal nga relihiyosong mga obligasyon, palihog pangayo og tambag gikan sa usa ka kuwalipikadong Marja\' o scholar sa imong komunidad.\n\nKini nga app dili nagpagawas og relihiyosong mga hukom.\nAng Ayara dili mohimo og may awtoridad nga pagdeterminar sa mga butang sa fiqh o personal nga relihiyosong obligasyon. Walay bisan unsa dinhi ang angay isipon nga fatwa o nagbugkos nga relihiyosong instruksyon.\n\nAng sentral nga kahinungdanon sa Ahl al-Bayt.\nSa Shia Islam, ang Propeta Muhammad ﷺ ug ang iyang putli nga panimalay — ang Ahl al-Bayt — mao ang may awtoridad nga mga giya sa Islamikong komunidad human sa Quran. Ang dose ka mga Imam sa Ahl al-Bayt mao ang gitudlo sa Diyos nga mga maghuhubad sa Islamikong pagtulon-an. Ang sulod niini nga app nagpakita niini nga tradisyon ug naningkamot sa pagpasidungog niini sa matinud-anon nga paagi.\n\nMahinungdanon ang komunidad.\nKini nga app nagtumong sa pag-awhag sa imong pakiglambigit sa pagtuo samtang lawom nga nagtahod sa mahinungdanong tahas sa imong lokal nga mosque, Islamikong sentro, ug relihiyosong komunidad. Giawhag ka namo nga magpabiling konektado ug makat-on gikan sa kuwalipikadong mga magtutudlo nga anaa duol kanimo.';

  @override
  String get disclaimerClose => 'Nasabtan ko';

  @override
  String get disclaimerInfoTooltip => 'Mahitungod sa giya sa kini nga app';

  @override
  String get disclaimerSettingsSubtitle =>
      'Alang lamang sa kinatibuk-ang katuyoan sa impormasyon. I-tap aron mabasa ang tibuok disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Disclaimer sa giya';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Pamalandong';

  @override
  String get navDuas => 'Mga Dua';

  @override
  String get navCalendar => 'Kalendaryo';

  @override
  String get dashboardToday => 'KARON';

  @override
  String get dashboardComingUp => 'Umaabot';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mga adlaw',
      one: 'adlaw',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Dali nga Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Giya';

  @override
  String get quickActionPrayerTimes => 'Mga Oras sa Pag-ampo';

  @override
  String get askAyaraTitle => 'Pangutan-a ang Ayara';

  @override
  String get askAyaraSubtitle =>
      'Pangutana bisan unsang Islamikong pangutana ug dawata ang usa ka maampingong giya nga tubag.';

  @override
  String get askAyaraHint => 'pananglitan, Unsa ang kahinungdanon sa Ramadan?';

  @override
  String get askAyaraSubmit => 'Pangutana';

  @override
  String get wisdomOfTheDayTitle => 'Kaalam sa Adlaw';

  @override
  String get calendarScreenTitle => 'Islamikong Kalendaryo';

  @override
  String get calendarUpcomingOccasions => 'Umaabot nga mga Okasyon';

  @override
  String get calendarOccasionRemindersTitle => 'Mga Pahinumdom sa Okasyon';

  @override
  String get calendarOccasionRemindersHint =>
      'Pahibaloon sa gabii sa wala pa ang matag okasyon';

  @override
  String get calendarNotifPermissionDenied =>
      'Gidumilian ang notification permission. I-enable kini sa imong device settings.';

  @override
  String get calendarNoEvents => 'Walay nakitang umaabot nga mga panghitabo.';

  @override
  String get calendarAddToPhone => 'Idugang sa Kalendaryo sa Telepono';

  @override
  String get calendarAddedToPhone => 'Nidugang sa Kalendaryo';

  @override
  String get calendarCountdownToday => 'KARON';

  @override
  String get calendarCountdownTomorrow => 'UGMA';

  @override
  String calendarCountdownDays(int days) {
    return 'sa sulod sa $days ka adlaw';
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
      'Mga Adlaw sa Muharram — hinumdomi ang Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — mga adlaw sa kasubo ug pamalandong';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — kap-atan ka adlaw ni Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ang dalan ngadto sa Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — ang kaadlawon sa kapadayagan';

  @override
  String get calendarSeasonMidShaban =>
      'Tunga sa Sha\'ban — adlawng natawhan ni Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ang bulan sa Quran';

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
  String get duasScreenTitle => 'Mga Dua ug Ziyarat';

  @override
  String get duasSearchHint => 'Pangita og mga dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tanan';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka mga dua ug ziyarat',
      one: '$count ka dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Walay nakitang mga dua.';

  @override
  String get duaCategoryDaily => 'Adlaw-adlaw';

  @override
  String get duaCategoryWeekly => 'Sinemanal';

  @override
  String get duaCategoryOccasions => 'Mga okasyon';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Pagkatawo';

  @override
  String get eventTypeMartyrdom => 'Pagkamartir';

  @override
  String get eventTypeOccasion => 'Okasyon';

  @override
  String get duaCopyTooltip => 'Kopyaha ang hubad';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Hubad';

  @override
  String get duaAskAiLabel => 'Pangutan-a ang Ayara nga ipasabut kini nga dua';

  @override
  String get duaAskAiLockedLabel => 'Pangutan-a ang Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ang mga pagpasabot sa Ayara anaa lamang alang sa mga miyembro sa Wilaya. Pag-upgrade sa Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pangutan-a ang Ayara mahitungod sa \"$name\" — moabot na sa dili madugay!';
  }

  @override
  String get duaCopiedToast => 'Nakopya ang dua sa clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Ang Allah Mao ang Labing Dako';

  @override
  String get tasbihAlhamdulillahMeaning => 'Ang tanang pagdayeg iya sa Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Mahimayaon ang Allah';

  @override
  String get tasbihResetTooltip => 'I-reset';

  @override
  String get tasbihCompleteTitle => 'Nahuman ang Tasbih';

  @override
  String get tasbihCompleteMessage =>
      'Hinaot nga dawaton sa Allah ang imong dhikr.';

  @override
  String get tasbihTapHint => 'I-tap bisan asa aron moihap';

  @override
  String get tasbihatScreenTitle => 'Giya sa Pag-ampo';

  @override
  String get tasbihatScreenSubtitle => 'ANG MGA PAGHIMAYA SA PAG-AMPO';

  @override
  String get tasbihatScreenDescription =>
      'Usa ka kompleto nga giya sa mga paghimaya nga gi-recite sa panahon ug human sa adlaw-adlaw nga mga pag-ampo — sumala sa tradisyon sa Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Gi-recite sa ika-3 ug ika-4 nga rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Sa Shia jurisprudence, ang Tasbiḥāt al-Arbaʿa mopuli sa Surah al-Fatiha sa ika-3 ug ika-4 nga rakʿah sa Dhuhr, Asr, Maghrib, ug Isha. Obligado (wājib) nga i-recite kini kausa, ug girekomenda (mustaḥabb) nga i-recite kini tulo ka beses.';

  @override
  String get tasbihatArba3Translation =>
      'Mahimayaon ang Allah · Ang tanang pagdayeg alang sa Allah\nWalay laing diyos gawas sa Allah · Ang Allah Mao ang Labing Dako';

  @override
  String get tasbihatArba3CompleteTitle => 'Nahuman ang Recitation';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Hinaot nga dawaton ang imong pag-ampo — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'I-tap human sa matag recitation';

  @override
  String get tasbihatZahraSubtitle => 'Human sa matag pag-ampo · 100 ka beads';

  @override
  String get tasbihatZahraOriginLabel => 'Gigikanan';

  @override
  String get tasbihatZahraHadith =>
      'Si Lady Fatima al-Zahra (sa) nangayo sa Propeta ﷺ og usa ka sulugoon. Miingon siya: \"Dili ba ko magtudlo kanimo og usa ka butang nga mas maayo pa kay sa usa ka sulugoon? Pag-recite og Subḥānallāh 33 ka beses, Alḥamdulillāh 33 ka beses, ug Allāhu Akbar 34 ka beses human sa matag pag-ampo. Kana mas maayo pa para kanimo kay sa usa ka sulugoon.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Ablihi ang Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'GIREKOMENDANG MGA DUĀ';

  @override
  String get tasbihatDuasSubtitle => 'Human makompleto ang imong pag-ampo';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Human sa matag obligadong pag-ampo';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Bisan kinsa nga mo-recite sa Āyat al-Kursī human sa matag obligadong pag-ampo, walay bisan unsa nga makababag tali kaniya ug sa paraiso gawas sa kamatayon. Miingon si Imam al-Bāqir (a) nga usa kini sa labing dagkong mga bersikulo sa Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Human sa matag pag-ampo · nagtimaan sa tanang mga pangamuyo';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Ang pagpadala og mga panalangin ngadto sa Propeta ﷺ ug sa iyang putli nga pamilya (Āl Muḥammad) girekomenda aron timaanan ang matag dua. Miingon si Imam al-Ṣādiq (a): \"Ang bisan unsang dua gisuspenso hangtod magpadala ka og ṣalawāt kang Muḥammad ug sa iyang pamilya.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Human sa matag pag-ampo · alang sa Imam sa atong kapanahonan';

  @override
  String get tasbihatDuaFarajSource =>
      'Gitudlo ni Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Usa ka dua para sa pagbalik ni Imam al-Mahdī (af), ang ikaduha nga Imam, nga gitudlo sa iyang amahan. Kanunay kini nga ginabasa sa daghang mga Shia Muslim human sa pag-ampo isip usa ka buhat sa pagkamapainubsanon sa buhi nga Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ni Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Human sa Maghrib ug Isha · ilabina nga girekomenda';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Miingon si Imam al-Bāqir (a) nga ang pag-recite sa Tasbīḥ al-Zahrā human sa Isha sa dili pa matulog mas maayo pa kay sa 1000 ka rakʿahs sa opsyonal nga pag-ampo. Ang kahayag niini mosaka ngadto sa kalangitan.';

  @override
  String get tasbihFatimaGiftPre => 'Usa ka gasa gikan sa Propeta';

  @override
  String get tasbihFatimaGiftPost => 'gi-recite human sa matag pag-ampo';

  @override
  String get prayerTrackerTitle => 'PAGSUBAY SA PAG-AMPO';

  @override
  String get prayerTrackerPrayed => 'Nakaampo';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ka adlaw nga sunod-sunod';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Nahuman ang tanang mga pag-ampo karong adlawa. Hinaot nga dawaton sa Allah.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Nahuman karong adlawa';

  @override
  String get dhikrTrackerNotDoneToday => 'Wala buhata karong adlawa';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ka adlaw nga sunod-sunod';
  }

  @override
  String get dhikrReminderTitle => 'Pahinumdom sa Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Usa ka malumo nga adlaw-adlaw nga pahinumdom sa pag-recite sa imong Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'I-enable ang pahinumdom sa Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Oras sa pahinumdom';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Adlaw-adlaw nga Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'HUBAD';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Ipaambit Kini nga Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPinaagi sa Ayara';
  }

  @override
  String get hadithNavPrevious => 'Nangagi';

  @override
  String get hadithNavNext => 'Sunod';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Ang Katorse nga Walay Sayop';

  @override
  String get imamsScreenSubtitle =>
      'Ang Propeta, Lady Fatima, ug ang Dose ka Imam — ang mga hinlo ug walay sayop nga mga giya sa Twelver Shia Islam';

  @override
  String get imamLabelBorn => 'Natawo';

  @override
  String get imamLabelMartyrdom => 'Pagkamartir';

  @override
  String get imamLabelStatus => 'Kahimtang';

  @override
  String get imamSectionBiography => 'BIOGRAPIYA';

  @override
  String get imamSectionFamousSaying => 'BANTOG NGA GIINGON';

  @override
  String get imamRoleProphet => 'Ang Katapusang Propeta';

  @override
  String get imamRoleInfallible => 'Ang Walay Sayop';

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
  String get duaAudioScreenTitle => 'Paminawa ang mga Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Pilia ang usa ka dua aron paminawon. I-tap ang tile aron i-play o i-pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Ang audio para niini nga dua mahimong available sa umaabot nga update.';

  @override
  String get duaAudioClose => 'Sirado';

  @override
  String get duaAudioError =>
      'Dili ma-load ang audio. Palihog susiha ang imong koneksyon.';

  @override
  String get duaAudioMetaTransmittedBy => 'Gipasa ni';

  @override
  String get duaAudioMetaOccasion => 'Okasyon';

  @override
  String get duaAudioMetaDuration => 'Gidugayon';

  @override
  String get quickActionDailyHadith => 'Adlaw-adlaw nga Hadith';

  @override
  String get quickAction14Masumeen => 'Katorse nga Walay Sayop';

  @override
  String get quickActionListenDuas => 'Paminaw';

  @override
  String get quickActionTasbihat => 'Giya sa Pag-ampo';

  @override
  String get pilgrimageSectionTitle => 'Ang Sagradong Panaw';

  @override
  String get pilgrimageSectionSubtitle =>
      'Kompleto nga mga giya sa Hajj ug Umrah — ang panaw ngadto sa Balaang Balay sa Allah sa Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Ang Ikalimang Haligi sa Islam';

  @override
  String get hajjCardDescription =>
      'Ang dako nga tinuig nga pilgrimage — obligado kausa sa kinabuhi alang sa matag Muslim nga makahimo';

  @override
  String get hajjScreenTitle => 'Giya sa Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Lakang-sa-lakang nga giya ngadto sa dakong pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ang Mas Gagmay nga Pilgrimage';

  @override
  String get umrahCardDescription =>
      'Usa ka lawom nga magantihon nga espiritwal nga panaw nga mahimong buhaton sa bisan unsang panahon sa tuig';

  @override
  String get umrahScreenTitle => 'Giya sa Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Lakang-sa-lakang nga giya ngadto sa mas gagmay nga pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Mga Ritwal ug mga Lakang';

  @override
  String get pilgrimageImportantNotesTitle => 'Importante nga mga Nota';

  @override
  String get pilgrimageDuaTitle => 'Dua para niining lakang';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Nota';

  @override
  String get pilgrimageComplete => '✓ Kumpleto';

  @override
  String get pilgrimageMarkDone => 'Imarka isipon';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done sa $total mga lakang';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Mga Shia nga Pilgrim';

  @override
  String get pilgrimageShiaNoteBody =>
      'Daghang mga Shia nga pilgrim ang nagbiyahe usab sa Medina para sa ziyarat sa Propeta Muhammad (SAW) sa Masjid al-Nabawi ug sa mga lubnganan sa Jannat al-Baqi. Ang mga pagbisita niini nagdala og lalom nga espiritwal nga kahulugan, bisan pa man nga dili kini mga ritwal sa Hajj.';

  @override
  String get hajjIntro =>
      'Ang Hajj mao ang ikalimang haligi sa Islam, nga obligadong buhaton usa ka beses sa kinabuhi alang sa matag Muslim nga pisikal ug pinansyal nga makahimo. Para sa kadaghanan sa mga Twelver Shia nga pilgrim karon, kini nagpasabot sa Hajj al-Tamattu\', nga gihimo sa bulan sa Dhul Hijjah sa mga lakang ni Propeta Ibrahim (AS), sa iyang anak nga si Ismail (AS), ug Lady Hajar. Ang giya nga kini nagsunod sa Ja\'fari nga balangkas sa mga ritwal, samtang ang ziyarat sa Medina nagpabilin nga usa ka hinigugma nga pagbiyahe sa wala pa o human sa Hajj.';

  @override
  String get umrahIntro =>
      'Ang Umrah mao ang mas gagmay nga pilgrimage ngadto sa Mecca ug, dili sama sa Hajj, mahimong buhaton sa bisan unsang panahon sa tuig. Bisan dili obligado, kini adunay dako kaayong espiritwal nga ganti ug giisip nga usa ka girekomendang buhat sa pagsimba. Nagpaambit kini og pipila ka mga ritwal uban sa Hajj apan mas mubo, ug naglangkob sa upat ka punoan nga mga ritwal.';

  @override
  String get voiceInputTitle => 'Tingog nga Input';

  @override
  String get voiceInputMicTitle => 'Mikropono';

  @override
  String get voiceInputMicSubtitle =>
      'Isulti ang imong input sa Ask Ayara imbis nga magtype.';

  @override
  String get voiceInputMicDenied => 'Gidili ang pag-access sa mikropono.';

  @override
  String get voiceInputSpeak => 'Isulti imbis';

  @override
  String get voiceInputListening => 'Naminaw…';

  @override
  String get voiceInputPermissionDenied =>
      'Gikinahanglan ang pag-access sa mikropono para sa voice input.';
}
