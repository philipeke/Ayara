// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malagasy (`mg`).
class AppLocalizationsMg extends AppLocalizations {
  AppLocalizationsMg([String locale = 'mg']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Safidio ny ianao teny';

  @override
  String get languageSelectSub =>
      'Afaka manova izany ankoatranon\'ny Fidiram-pitsarana';

  @override
  String get actionContinue => 'Manohy';

  @override
  String get languageSuggestedHeader => 'Soso-kevitra';

  @override
  String get languageAllHeader => 'Teny rehetra';

  @override
  String get languageSuggestedBadge => 'Soso-kevitra';

  @override
  String get languageSearchHint => 'Mitady…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Torolalana Isan\'andro';

  @override
  String get categorySlot02 => 'Imana & Finiavana';

  @override
  String get categorySlot03 => 'Filazana Soloinanao';

  @override
  String get categorySlot04 => 'Pazara sy Fampanantanteraina';

  @override
  String get categorySlot05 => 'Mangataka Famelombelona';

  @override
  String get categorySlot06 => 'Famindram-po sy Fankasitrahana';

  @override
  String get categorySlot07 => 'Finoana Tanjaka';

  @override
  String get categorySlot08 => 'Fo Misaotra';

  @override
  String get categorySlot09 => 'Tanjona ny Fiainana';

  @override
  String get categorySlot10 => 'Fiaraha-monina';

  @override
  String get categorySlot11 => 'Fitsaharana ao anatiny';

  @override
  String get categorySlot12 => 'Fahendrena ny Mpaminany';

  @override
  String get categorySlot13 => 'Mombamomba Tsara';

  @override
  String get categorySlot14 => 'Manohitra ny Tompition-doza';

  @override
  String get categorySlot15 => 'Dhikr Hariva';

  @override
  String get categoryCustom => 'Fisainjarana Manokana';

  @override
  String get dhikrMeaningSubhanallah => 'Voninahitra ho an\'ny Allah';

  @override
  String get dhikrMeaningAlhamdulillah =>
      'Aoka ny fosetra rehetra ho an\'ny Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah no Lehibe Indrindra';

  @override
  String get quranVerseHeartAtRest =>
      'Marina, amin\'ny fisainjarana an\'Allah dia mahita fampahantanteraina ny fo.';

  @override
  String get promptHint =>
      'Tsikio ny sokajy noho ny torolalana islamika sy fisainjarana';

  @override
  String get currentLanguage => 'Teny ankehitriny';

  @override
  String get settingsLanguage => 'Fidiram-pitsarana ny teny';

  @override
  String get settingsTitle => 'Fidiram-pitsarana';

  @override
  String get chooseLanguage => 'Safidio ny ianao teny';

  @override
  String get continueCta => 'Manohy';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count teny',
      one: '$count teny',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Safidy';

  @override
  String get newCta => 'Vaovao';

  @override
  String get actionsTitle => 'Inona no tiako hatao?';

  @override
  String get copy => 'Dika';

  @override
  String get share => 'Zaraina';

  @override
  String get close => 'Hidio';

  @override
  String get copiedToast => 'Nodinika tao amin\'ny clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Tsy afaka namorona vaovao';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nTe-handamina ve ianao?';
  }

  @override
  String get cancelCta => 'Anakandrika';

  @override
  String get retryCta => 'Andamina';

  @override
  String get authTitle => 'Lumikha ny ianao kaonty';

  @override
  String get continueAsGuest => 'Manohy ho vizitara';

  @override
  String get signInGoogle => 'Miditra miaraka amin\'ny Google';

  @override
  String get signInApple => 'Miditra miaraka amin\'ny Apple';

  @override
  String get signInEmail => 'Miditra miaraka amin\'ny Email';

  @override
  String get upgradeWithApple => 'Manohy amin\'ny Apple';

  @override
  String get mustAccept =>
      'Tsy maintsy miombon\'ny Fepetra ary omba ny Fitsarana momba ny Finoana.';

  @override
  String get termsLabel => 'Miombon\'ny Fepetra amin\'ny Fampiasana';

  @override
  String get privacyLabel => 'Namaky ny Fitsarana momba ny Finoana';

  @override
  String get marketingOptIn => 'Miombon\'ny makakatanteraka ny vaovao sy alok';

  @override
  String get openTerms => 'Fepetra amin\'ny Fampiasana';

  @override
  String get openPrivacy => 'Fitsarana momba ny Finoana';

  @override
  String get accountSection => 'Kaonty';

  @override
  String get guestMode => 'Fomba vizitara';

  @override
  String get signedIn => 'Niditra tao';

  @override
  String get upgradeHint =>
      'Mitazona ang ianao fisainjarana amin\'ny fitaovana amin\'ny fananganana kaonty.';

  @override
  String get upgradeWithGoogle => 'Manohy amin\'ny Google';

  @override
  String get signOut => 'Mivoaka';

  @override
  String get snackUpgraded => 'Kaonty nampitombo amin\'ny Google ✅';

  @override
  String get snackSignedIn => 'Niditra tao amin\'ny Google ✅';

  @override
  String get snackSignedOut => 'Nivoaka tao';

  @override
  String get snackSignedInApple => 'Niditra tao amin\'ny Apple ✅';

  @override
  String get snackSignedInGoogle => 'Niditra tao amin\'ny Google ✅';

  @override
  String get snackUpgradedApple => 'Kaonty nampitombo amin\'ny Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Kaonty nampitombo amin\'ny Google ✅';

  @override
  String get historyTitle => 'Fisainjarana farany';

  @override
  String get historyOpenCta => 'Fisainjarana farany';

  @override
  String get historyEmpty => 'Tsy misy fisainjarana mitoetra akory.';

  @override
  String get historyDeleteTitle => 'Hafahafo ve ny fisainjarana?';

  @override
  String get historyDeleteBody =>
      'Io samy hafa amin\'ny antsoin\'ny toho ny safidy nofidina.';

  @override
  String get deleteCta => 'Faharoa';

  @override
  String get historyButton => 'Fisainjarana Farany';

  @override
  String get historyEmptyTitle => 'Tsy misy fisainjarana akory';

  @override
  String get historyEmptyBody =>
      'Lumikha ny zavatra voalohany — ny safidy mitoetra dia hiseho eto.';

  @override
  String get historyDelete => 'Faharoa';

  @override
  String get footerTitle => 'Miaraka amin\'ny Wilaya, Imana ary Sabr';

  @override
  String get footerSubtitle => 'Iray soloinanao isaky ny fotoana';

  @override
  String get genericErrorSnack =>
      'Nisy zavatra maloko — Andamina ankoatra izay.';

  @override
  String get upgradeAccountCta =>
      'Mitazona ang ianao fisainjarana amin\'ny fitaovana – lumikha ng kaonty';

  @override
  String get deleteAccount => 'Faharoa ang kaonty';

  @override
  String get exportData => 'Alefaso ny ianao angon-drakitra';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nMilina kely ny Ayara alohan\'ny manaraka…';

  @override
  String get rateDailyLimit =>
      'Tsy misy fisainjarana ho an\'ianao ankehitriny.\nMamorona maromaro na manampitombo ny Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Nahasafo ianao amin\'ny ianao fisainjarana.\nManamboarana na manampitombo ny Wilaya.';

  @override
  String get rateGraceCreditsExhausted =>
      'Tsy misy fisainjarana ho an\'ianao ankehitriny.\nMamorona maromaro na manampitombo ny Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya dia manomboka ny endri-javatra manampana, sokajy ho avy, ary famantarana manokana.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tsy misy fisainjarana ho an\'ianao ankehitriny. Toromarika: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Tsy afaka naitsiky ny ianao fisainjarana: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Nisy maloko nitama tamin\'ny naitsiky ny ianao fisainjarana.';

  @override
  String get aiFallbackGeneric =>
      'Nisy zavatra maloko — Andamina ankoatra izay.';

  @override
  String get limitSectionTitle => 'Fisainjarana';

  @override
  String get limitTodayLabel => 'Fampiasana';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Fisainjarana sisa: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Toromarika: $plan';
  }

  @override
  String get limitLoadingLabel => 'Miantsoantsoa…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Fisainjarana';

  @override
  String get aiLimitSubtitle =>
      'Ny valiny iray dia mampiasa ny fisainjarana 1. Ny Standard dia misy fisainjarana fanambohana. Ny Wilaya dia manomboka ny sokajy lalindalina ary manambina-vokatra.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total fisainjarana nampiasaina';
  }

  @override
  String get creditsSectionTitle => 'Fisainjarana';

  @override
  String get creditsUsageLabel => 'Fampiasana';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Fisainjarana sisa: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Toromarika: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Miantsoantsoa…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Fisainjarana';

  @override
  String get creditsSubtitle =>
      'Ny valiny iray dia mampiasa ny fisainjarana 1. Ny Standard dia misy fisainjarana fanambohana. Ny Wilaya dia manomboka ny sokajy lalindalina ary manambina-vokatra.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total fisainjarana nampiasaina';
  }

  @override
  String get settingsDeleteTitle => 'Faharoa ang kaonty';

  @override
  String get settingsDeleteDescription =>
      'Faharoa mihitsy ny ianao kaonty sy ny angon-drakitra ifampitsarana.';

  @override
  String get settingsDeleteButtonLabel => 'Faharoa ang ianao kaonty';

  @override
  String get settingsDeleteDialogTitle => 'Faharoa ve ang kaonty?';

  @override
  String get settingsDeleteDialogBody =>
      'Ity hetsika dia mihitsy ary tsy azo tsy amina.\n\nHo faharoa ny ianao kabary rehetra, soratra sy fampahalalana kaonty.';

  @override
  String get settingsDeleteDialogCancel => 'Anakandrika';

  @override
  String get settingsDeleteDialogConfirm => 'Faharoa';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Fisainjarana fanambohana nampiasaina';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Ny fisainjarana fanambohana ho an\'ity fitaovana ity dia nampiasaina. Manampitombo ny Wilaya na vidin\'ny fisainjarana maromaro noho ny halanjana.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Fisainjarana fanambohana nampiasaina';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Ny fisainjarana fanambohana ho an\'ity fitaovana ity dia nampiasaina. Manampitombo ny Wilaya na vidin\'ny fisainjarana maromaro noho ny halanjana.';

  @override
  String get deviceBoundError =>
      'Ity fitaovana ity dia fototra tamin\'ny kaonty hafa. Miditra amin\'ny kaonty tany am-boalohany.';

  @override
  String get premiumTitle => 'Fomba Wilaya';

  @override
  String get premiumSubtitleBasic => 'Soloino ny Ayara feno mahakasika.';

  @override
  String get premiumSubtitlePremium =>
      'Ianao dia mampitombom-pankasitrahana Wilaya. Manana fisainjarana maromaro ve?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Toromarika ankehitriny: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Fisainjarana: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Ny vidin\'ny santionany ay tsy ahitana ankehitriny.';

  @override
  String get premiumSignInToPurchase =>
      'Miditra hividiana ny fisainjarana na manomboka ny Wilaya.';

  @override
  String get premiumRestorePurchases => 'Avereno ny vidin\'ny santionany';

  @override
  String get premiumProcessing => 'Manatsara…';

  @override
  String get premiumRestoreHintTitle =>
      'Efa nividin\'ny vidin\'ny santionany ny Wilaya na fisainjarana amin\'ity fitaovana ity na hafa?';

  @override
  String get premiumRestoreHintBody =>
      'Avereno ny vidin\'ny santionany raha tsy aseho.';

  @override
  String get premiumBuyCredits200 => 'Vidin\'ny fisainjarana 200';

  @override
  String get premiumBuyCredits400 => 'Vidin\'ny fisainjarana 400';

  @override
  String get premiumBecomePremiumOneTime => 'Manampitombo ny fomba Wilaya';

  @override
  String get premiumTopupHint =>
      'Miaraka amin\'ny Wilaya, afaka manampy-ny fisainjarana maromaro raha ilaina.';

  @override
  String get premiumUpgradeCta => 'Manampitombo';

  @override
  String get premiumRequiredForCategory =>
      'Ity sokajy ity dia ho an\'ny mpampiasa Wilaya fotsiny. Manampitombo amin\'ny Fidiram-pitsarana mba hanombonome ny samy hafa.';

  @override
  String get premiumBenefitsBasic =>
      'Soloino ny Wilaya mba hamanana fisainjarana maromaro, fihaonanao ao amin\'ny sokajy lalindalina, ary mihalimina amin\'ny halanja.';

  @override
  String get premiumBenefitsPremium =>
      'Ianao dia Wilaya fomba. Raha mahina, manampy-ny fisainjarana maromaro ary mihalimina nefa tsy fitsinjovana.';

  @override
  String get premiumButtonBecomePremium => 'Soloino ny Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Manampy-ny fisainjarana 1000';

  @override
  String get premiumBadge => 'Wilaya mihetsika';

  @override
  String get premiumLoadingStore => 'Miantsoantsoa ny trano santionany…';

  @override
  String get premiumProductNotAvailable =>
      'Ity santionany ity ay tsy hita amin\'ny trano ankehitriny. Andamina ankoatra.';

  @override
  String get premiumPurchaseError =>
      'Nisy zavatra maloko amin\'ny vidin\'ny santionany. Andamina.';

  @override
  String get premiumBuyCredits100 => 'Manampy-ny fisainjarana 100';

  @override
  String get premiumFeatureLocked =>
      'Soloino ny Wilaya mba hifampitsarana ity endri-javatra ity.';

  @override
  String get lockedCategoriesHint =>
      'Ny sokajy sasany dia ho an\'ny mpampiasa Wilaya fotsiny. Soloino izy ireo mba hisampotika amin\'ny bôkô tsara.';

  @override
  String get freePlanBlockedTitle =>
      'Ianao dia nampiasa ny ianao fisainjarana fanambohana';

  @override
  String get freePlanBlockedBody =>
      'Ianao dia mampitombom-pankasitrahana Standard amin\'ny fisainjarana fanambohana, ary ianao dia nahatratra ny fetra. Noho ny halanja — ary mba manomboka ny sokajy lalindalina — manampitombo ny Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Jereo ny safidy Wilaya etsy ambany';

  @override
  String get graceBlockedTitle =>
      'Ianao dia nampiasa ny ianao fisainjarana fanambohana';

  @override
  String get graceBlockedBody =>
      'Ianao dia mampitombom-pankasitrahana Standard amin\'ny fisainjarana fanambohana, ary ianao dia nahatratra ny fetra. Noho ny halanja — ary mba manomboka ny sokajy lalindalina — manampitombo ny Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Jereo ny safidy Wilaya etsy ambany';

  @override
  String get rateGuestMustSignIn =>
      'Miditra mba hampiasa ny Ayara sy ny ianao fisainjarana.';

  @override
  String get guestNoCreditsTitle => 'Fomba vizitara';

  @override
  String get guestNoCreditsBody =>
      'Ho vizitara afaka mitodika ny application, fa tsy afaka mampiasa fisainjarana. Miditra ankoatra amin\'ny Fidiram-pitsarana mba hampiasa fisainjarana.';

  @override
  String get guestDialogContinue => 'Manohy';

  @override
  String get guestDialogLoginInstead => 'Miditra';

  @override
  String get optionalLabel => 'malamini';

  @override
  String get accountDeleteSuccessTitle => 'Kaonty faraha';

  @override
  String get accountDeleteSuccessBody =>
      'Ny ianao kaonty sy ny angon-drakitra ifampitsarana dia nofaraha mahatokoa.';

  @override
  String get accountDeleteSuccessClose => 'Hidio';

  @override
  String get accountDeleteErrorTitle => 'Tsy afaka nof faharoa ang kaonty';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ny fitsara fanambarana dia foanana. Miditra ankoatra ary andamina ny faharoa.';

  @override
  String get accountDeleteReauthRequired =>
      'Ny faharoa kaonty dia mila fanambarana vaovao. Mivoaka, miditra ankoatra, ary andamina ny faharoa.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ity hetsika dia mihitsy ary tsy azo tsy amina. Ny angon-drakitra rehetra iampitahony kaonty ay hofaraha.';

  @override
  String get dailyGraceTitle => 'Torolalana Isan\'andro';

  @override
  String get dailyGraceScriptureLabel => 'RESAKA EV\'ANDROANY';

  @override
  String get dailyGraceSaintLabel => 'MPANAHY AMIN\'NY HERINANDRO';

  @override
  String get dailyGraceReflectionLabel => 'FISAINJARANA HARIVA';

  @override
  String get dailyGraceCopiedToast => 'Resaka nodinika tao amin\'ny clipboard';

  @override
  String get locationConsentLabel =>
      'Halefaso an\'ny Ayara ny ianao toerana ho an\'ny Qibla sy ora soloinanao';

  @override
  String get locationConsentHint =>
      'Ampiasaina ho an\'ity endri-javatra ity fotsiny. Ny ianao toerana ay tsy zaraina na mitoetra.';

  @override
  String get askPageTitle => 'Manontany an\'ny Ayara';

  @override
  String get askPageDescription =>
      'Manontany ny zavatra momba ny finoana, soloinanao, fiainana, na fampiasana islàmika ary makatanteraka ang torolalana nifonoina amin\'ny Quran sy ny fampananarana ny Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Soratanao ny ianao fanontaniana eto…';

  @override
  String get askPageSubmitCta => 'Manontany';

  @override
  String get askPageInputEmptyError => 'Soratanao ny fanontaniana aloha.';

  @override
  String get askResultYourQuestion => 'Ny ianao fanontaniana';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Tanora ho Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Mandehandeha ny ianao telefora ambara ny ovy haridina dia hahotahotahan\'ny lanatsin\'i Qibla.\nIa ny lalana manoro ho any Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Ny fampiasana GPS dia ny malemy. Mivoaka ary tsikio ny Andamina.';

  @override
  String get qiblaRetry => 'Andamina';

  @override
  String get qiblaTitle => 'Lalana Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km ho any Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Toerana ilaina';

  @override
  String get qiblaLocationNeededBody =>
      'Halefaso ny fanambarana toerana mba afaka manisika ny Ayara ny toerana Kaaba amin\'ny Makkah avy amin\'ny ianao toerana.';

  @override
  String get qiblaOpenSettings => 'Sokafidin\'ny Fiditra';

  @override
  String get qiblaCompassLoading => 'Mitady ny ianao toerana…';

  @override
  String get qiblaTowardMecca => 'Ho any Makkah';

  @override
  String get prayerTimesTitle => 'Oran\'ny Soloinanao';

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
  String get prayerTimesLocationNeededTitle => 'Toerana ilaina';

  @override
  String get prayerTimesLocationNeededBody =>
      'Halefaso ny fanambarana toerana mba afaka manisika ny Ayara ny ora soloinanao marina ho an\'ny ianao kaograo.';

  @override
  String get prayerTimesNextLabel => 'Manaraka';

  @override
  String get prayerTimesDoneLabel => 'Vita';

  @override
  String get monthlyPrayerTimesTitle => 'Oran\'ny Soloinanao isam-bolana';

  @override
  String get monthlyPrayerTimesViewButton => 'Jereo ny Volana Feno';

  @override
  String get monthlyPrayerTimesNextMonth => 'Volana manaraka';

  @override
  String get monthlyPrayerTimesDayHeader => 'Andro';

  @override
  String get sharePrayerTimes => 'Zaraina ang oran\'ny soloinanao';

  @override
  String get notificationsSectionTitle => 'Fampahalala';

  @override
  String get notificationsSectionSubtitle =>
      'Aditsiana soloinanao, kalandrova ary zava-drehetra';

  @override
  String get dailyReflectionReminderTitle => 'Fisainjarana Isan\'andro';

  @override
  String get dailyReflectionReminderDescription =>
      'Aditsiana malemy isan\'andro mba hanokatra ny Ayara ary mampifandray amin\'ny ianao finoana.';

  @override
  String get dailyReflectionReminderEnable =>
      'Enabela ang aditsiana isan\'andro';

  @override
  String get dailyReflectionReminderTimeLabel => 'Oran\'ny aditsiana';

  @override
  String get prayerNotificationsTitle => 'Aditsiana Soloinanao';

  @override
  String get prayerNotificationsDescription =>
      'Makatanteraka ny aditsiana malemy alohan\'ny soloinna mora-morna azo sy faharatsiana ny ianao amin\'ny andro.';

  @override
  String get prayerNotificationsEnable => 'Enabela ang aditsiana soloinanao';

  @override
  String get prayerNotificationsOpenSettings => 'Sokafidin\'ny Fampahalala';

  @override
  String get prayerNotificationsDenied => 'Ny fampahalala ay tsy enabela';

  @override
  String get prayerNotificationsDeniedHint =>
      'Mandehana amin\'ny Fidiram-pitsarana ary halefaso ny fampahalala ho an\'ny Ayara mba makatanteraka ny aditsiana soloinanao.';

  @override
  String get notificationsConsentLabel =>
      'Halefaso ny fampahalala ho an\'ny oran\'ny soloinanao';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Soloinanao amin\'ny Afiny';

  @override
  String get prayerNotifBodyFajr =>
      'Ny Fajr dia ny soloinanao ny Ahl al-Bayt ao amin\'ny fitaoman-trano. Imam Ali (AS) nilaza: Mitahiry ny soloinanao aloha satria mitahiry ny ianao zavatra mikasika. Miarina, madio, ary miharombandà amin\'ny Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Soloinanao Amin\'ny Fadifadi';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ny Imama Ahl al-Bayt dia nampitamberain\'ny fotoana rehetra. Andianao ny ianao andro, ampizarain\'ny Dhuhr miaraka amin\'ny Asr raha mila, ary manaveritaly ny ianao fo amin\'ny Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Soloinanao Amin\'ny Antoandro';

  @override
  String get prayerNotifBodyAsr =>
      'Mitahiry ny soloinanao, satria io ny konin-keloka eo amin\'anao sy Allah. Tonga ny oran\'ny Asr — tsy halefaso nefa tsy misy fisainjarana.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Soloinanao amin\'ny Hariva';

  @override
  String get prayerNotifBodyMaghrib =>
      'Ny masoandro ay niala — fotoana ny Ahl al-Bayt sandratra ho an\'ny fangatahana. Alaviño ny Maghrib ary sokafidin\'ny ianao tanana amin\'ny Allah amin\'ny dua alohan\'ny alina.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Soloinanao Amin\'ny Alina';

  @override
  String get prayerNotifBodyIsha =>
      'Vahao ny ianao andro amin\'ny fiaraha amin\'ny Allah. Ny Imama dia nanisy-laza Salat al-Layl aorian\'ny Isha — fa aloha, mahatia ny ianao Isha ary vahao ny andro amin\'ny fisainjarana.';

  @override
  String get outOfReflectionsBannerText =>
      'Ianao dia nampiasa ny ianao fisainjarana rehetra';

  @override
  String get outOfReflectionsBannerCta => 'Mamorona maromaro';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tsikio ny faribolana mba manisika';

  @override
  String get dhikrResetButton => 'Avereno';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Ianao dia nahataia 100 fisainjarana an\'ny Allah. Aoka izy ho jiro ho an\'ny ianao fo.';

  @override
  String get disclaimerTitle => 'Momba ny torolalana ny sofina';

  @override
  String get disclaimerBody =>
      'Ny Ayara dia mahatanteraka ny fisainjarana islamika, aditsiana ary lohahohaza mihoatra mba haharitra ny ianao tany am-boalohany finoana, nifonoina amin\'ny Quran sy ny fampananarana ny Ahl al-Bayt. Ity lohahohaza ity dia alaviño ho an\'ny zavatra fampahalala sy fanampiana fotsiny.\n\nTsy manova ny Ayara ny mpampananarana mahay.\nNy torolalana amin\'ity application ity ay tsy manova ny mpampananarana islamika mahay, marja\', na mpampianatra teolojika. Raha maninona ka misy fanontaniana momba ny finoana, ahy ary haram, na finoana manokana, mangataka torolalana amin\'ny Marja\' mahay na mpampananarana amin\'ny ianao fiangonan-dehibe.\n\nTsy manda torolalana ny Ayara.\nTsy manatanteraka fatwa ny Ayara na fampiasana manokana. Tsy miharaka ho manda izy koa ny zavatra eto.\n\nNy toeran\'ny Ahl al-Bayt.\nAm-pinoana Shia, Mpaminany Muhammad ﷺ sy ny alokin\'any fiadiana — Ahl al-Bayt — dia ny mpitantrika fahagiopavolan\'ny fiangonan-islamika. Ny Imama roapolo sy roaximpela Ahl al-Bayt dia nampahaivin\'ny Allah ny maha-mpampananarana ny fampananarana islamika. Ny lohahohaza amin\'ity application ity dia miharaka itom-baika ity fampananarana ity.\n\nZavatra fiangonan-dehibe.\nIty application ity dia mangataka fahampiana amin\'ny ianao finoana, izay faingana mitahiry ny toeran\'ny Imama. Mangataka anao manohy fiaraha amin\'ny ianao fiangonan-dehibe.';

  @override
  String get disclaimerClose => 'Azo satria';

  @override
  String get disclaimerInfoTooltip => 'Momba ny torolalana ny sofina';

  @override
  String get disclaimerSettingsSubtitle =>
      'Ho an\'ny zavatra fampahalala fotsiny. Tsikio mba hamaky ny fatwa rehetra.';

  @override
  String get disclaimerSectionHeader => 'Fampahalala ny torolalana';

  @override
  String get navHome => 'Tahala';

  @override
  String get navReflect => 'Fisainjarana';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalandrova';

  @override
  String get dashboardToday => 'ANKEHITRINY';

  @override
  String get dashboardComingUp => 'Avy ho avy';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'andro',
      one: 'andro',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Fahariana Haingana';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Torolalana';

  @override
  String get quickActionPrayerTimes => 'Oran\'ny Soloinanao';

  @override
  String get askAyaraTitle => 'Manontany an\'ny Ayara';

  @override
  String get askAyaraSubtitle =>
      'Manontany ny fanontaniana islamika ary makatanteraka ny valiny mahay.';

  @override
  String get askAyaraHint => 'eg. Inona no toeran\'ny Ramadan?';

  @override
  String get askAyaraSubmit => 'Manontany';

  @override
  String get wisdomOfTheDayTitle => 'Fahendren\'ny Andro';

  @override
  String get calendarScreenTitle => 'Kalandrova Islamika';

  @override
  String get calendarUpcomingOccasions => 'Fanatanjahan-tena Avy Ho Avy';

  @override
  String get calendarOccasionRemindersTitle => 'Aditsiana Fanatanjahan-tena';

  @override
  String get calendarOccasionRemindersHint =>
      'Misy aditsiana ny hariva alohan\'ny fanatanjahan-tena';

  @override
  String get calendarNotifPermissionDenied =>
      'Ny fanambarana fampahalala ay panokana. Enabela izany amin\'ny ianao fitaovana.';

  @override
  String get calendarNoEvents => 'Tsy misy hanatanjahan-tena ahitana.';

  @override
  String get calendarAddToPhone => 'Ampidiro ao amin\'ny Kalendrin\'ny finday';

  @override
  String get calendarAddedToPhone => 'Ampidirina ao amin\'ny Kalendrie';

  @override
  String get calendarCountdownToday => 'ANKEHITRINY';

  @override
  String get calendarCountdownTomorrow => 'RAHAMPITSO';

  @override
  String calendarCountdownDays(int days) {
    return 'ao anatin\'ny $days andro';
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
  String get calendarSeasonMuharramEarly => 'Andro Muharram — talaho Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — andro fisasarana ary fisainjarana';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — falo andro Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Lalana any Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — maraina ny fanambarana';

  @override
  String get calendarSeasonMidShaban =>
      'Saha-Sha\'ban — fitsingerina Imam al-Mahdi';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — volana ny Quran';

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
  String get duasSearchHint => 'Mitady duas, ziyarat…';

  @override
  String get duasFilterAll => 'Rehetra';

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
  String get duasEmpty => 'Tsy misy duas ahitana.';

  @override
  String get duaCategoryDaily => 'Isan\'andro';

  @override
  String get duaCategoryWeekly => 'Isam-bolana';

  @override
  String get duaCategoryOccasions => 'Fanatanjahan-tena';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Fitsingerina';

  @override
  String get eventTypeMartyrdom => 'Fanatanjahan-tena fahafatesana';

  @override
  String get eventTypeOccasion => 'Fanatanjahan-tena';

  @override
  String get duaCopyTooltip => 'Dika';

  @override
  String get duaToggleTransliteration => 'Transcription';

  @override
  String get duaToggleTranslation => 'Dika';

  @override
  String get duaAskAiLabel =>
      'Mangataka an\'ny Ayara mampilazalaza ity dua ity';

  @override
  String get duaAskAiLockedLabel => 'Mangataka an\'ny Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ny fanazavaran\'ny Ayara dia ho an\'ny mpampiasa Wilaya fotsiny. Manampitombo amin\'ny Fidiram-pitsarana.';

  @override
  String duaAiComingSoon(String name) {
    return 'Manontany an\'ny Ayara momba ny \"$name\" — avy ho avy!';
  }

  @override
  String get duaCopiedToast => 'Dua nodinika tao amin\'ny clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah no Lehibe Indrindra';

  @override
  String get tasbihAlhamdulillahMeaning =>
      'Aoka ny fosetra rehetra ho an\'ny Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Voninahitra ho an\'ny Allah';

  @override
  String get tasbihResetTooltip => 'Avereno';

  @override
  String get tasbihCompleteTitle => 'Tasbih Vita';

  @override
  String get tasbihCompleteMessage => 'Aoka Allah omba ny ianao dhikr.';

  @override
  String get tasbihTapHint => 'Tsikio ionatan mba manisika';

  @override
  String get tasbihatScreenTitle => 'Torolalana Soloinanao';

  @override
  String get tasbihatScreenSubtitle => 'NY GLORIFICATION SOLOINANAO';

  @override
  String get tasbihatScreenDescription =>
      'Torolalana feno ny glorification soloinanao amin\'ny amin\'ny ary aorian\'ny soloinanao isan\'andro — fanaraka ny fampananarana ny Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Soloinanao amin\'ny 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Amin\'ny jurisprudence Shia, Tasbiḥāt al-Arbaʿa dia manova Surah al-Fatiha amin\'ny 3rd ary 4th rakʿah Dhuhr, Asr, Maghrib, ary Isha. Wājib mampinina iray fotoana, ary mustaḥabb mampinina telo.';

  @override
  String get tasbihatArba3Translation =>
      'Voninahitra ho an\'ny Allah · Aoka ny fosetra rehetra ho an\'ny Allah\nTsy misy god ankoatry ny Allah · Allah no Lehibe Indrindra';

  @override
  String get tasbihatArba3CompleteTitle => 'Mampinina Vita';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Aoka ny ianao soloinanao omba — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tsikio aorian\'ny fampinina';

  @override
  String get tasbihatZahraSubtitle =>
      'Aorian\'ny soloinanao rehetra · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Oranjina';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) nangataka mpanompo amin\'ny Mpaminany. Nilaza izy: \"Tsy misolo-bolova na marinarinao zavatra tsara? Mampinina Subḥānallāh 33 fotoana, Alḥamdulillāh 33 fotoana, ary Allāhu Akbar 34 fotoana aorian\'ny soloinanao. Io dia tsara ho anao noho ny mpanompo.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Sokafidin\'ny Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS SOSO-KEVITRA';

  @override
  String get tasbihatDuasSubtitle => 'Aorian\'ny fahataia ang ianao soloinanao';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Aorian\'ny soloinanao nisa-nisa';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Izay mampinina Āyat al-Kursī aorian\'ny soloinanao tsia-nisa, tsy misy mihitsy eo anelanelanao ary Paradise ankoatry ny fahafatesana. Imam al-Bāqir (a) nilaza io ho amin\'ny fitsingerina lehibe amin\'ny Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Aorian\'ny soloinanao rehetra · seals ny aditsiana rehetra';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Manambina fitsarana amin\'ny Mpaminany ﷺ ary ny alokin\'any fiadiana (Āl Muḥammad) dia soso-kevitra mba harahaba ny dua. Imam al-Ṣādiq (a) nilaza: \"Ny dua rehetra dia mitsangantsangana alohan\'ny mambina ṣalawāt amin\'ny Muḥammad ary ny alokin\'any.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Aorian\'ny soloinanao rehetra · ho an\'ny Imam ny ianao fotoana';

  @override
  String get tasbihatDuaFarajSource =>
      'Ampianarina Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua ho an\'ny fiodiodian\'Imam al-Mahdī (af), Imam roaximpela, ampianarina Imam al-Ḥasan. Soloinanao isan\'andro Shia avy am-boalohany aorian\'ny soloinanao ho toy ny toy fanity amin\'ny Imam miveloma.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Aorian\'ny Maghrib & Isha · soso-kevitra indrindra';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) nilaza soloinanao Tasbīḥ al-Zahrā aorian\'ny Isha alohan\'ny fisinoan\'alina dia tsara noho ny 1000 rakʿahs ny fangatahana. Ny jiro dia miakatra any an-langit.';

  @override
  String get tasbihFatimaGiftPre => 'Fanomezam-po amin\'ny Mpaminany';

  @override
  String get tasbihFatimaGiftPost => 'soloinanao aorian\'ny soloinanao rehetra';

  @override
  String get prayerTrackerTitle => 'FANARAMARANA SOLOINANAO';

  @override
  String get prayerTrackerPrayed => 'Soloinanao';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count andro fanambarana';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Ny soloinanao rehetra dia vita ankehitriny. Aoka Allah omba.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Vita ankehitriny';

  @override
  String get dhikrTrackerNotDoneToday => 'Tsy vita ankehitriny';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count andro fanambarana';
  }

  @override
  String get dhikrReminderTitle => 'Aditsiana Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Aditsiana malemy isan\'andro mampinina ang ianao Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enabela ang aditsiana Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Oran\'ny aditsiana';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Isan\'andro';

  @override
  String get hadithLabelArabic => 'ARABE';

  @override
  String get hadithLabelTranslation => 'DIKA';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Zaraina ity Hadith ity';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Farany';

  @override
  String get hadithNavNext => 'Manaraka';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Ny Masumeen 14';

  @override
  String get imamsScreenSubtitle =>
      'Mpaminany, Lady Fatima, ary Imama Roapolo — Mpitantrika fa dinahoana ny Islam';

  @override
  String get imamLabelBorn => 'Teraka';

  @override
  String get imamLabelMartyrdom => 'Fahafatesana';

  @override
  String get imamLabelStatus => 'Toe-javatra';

  @override
  String get imamSectionBiography => 'TANTARAN\'NY OLONA';

  @override
  String get imamSectionFamousSaying => 'RESAKA MALAZA';

  @override
  String get imamRoleProphet => 'Mpaminany Farany';

  @override
  String get imamRoleInfallible => 'Fa dinahoan\'ny fahala';

  @override
  String get imamOrdinal1 => 'Imam 1st';

  @override
  String get imamOrdinal2 => 'Imam 2nd';

  @override
  String get imamOrdinal3 => 'Imam 3rd';

  @override
  String get imamOrdinal4 => 'Imam 4th';

  @override
  String get imamOrdinal5 => 'Imam 5th';

  @override
  String get imamOrdinal6 => 'Imam 6th';

  @override
  String get imamOrdinal7 => 'Imam 7th';

  @override
  String get imamOrdinal8 => 'Imam 8th';

  @override
  String get imamOrdinal9 => 'Imam 9th';

  @override
  String get imamOrdinal10 => 'Imam 10th';

  @override
  String get imamOrdinal11 => 'Imam 11th';

  @override
  String get imamOrdinal12 => 'Imam 12th';

  @override
  String get duaAudioScreenTitle => 'Mandoahao Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Safidio dua alohan\'ny mandoahao. Tsikio ny taratasy mba hamanoa na hansirotsika.';

  @override
  String get duaAudioComingSoonMessage =>
      'Ny feo ho an\'ity dua ity dia ho misy avy ho avy.';

  @override
  String get duaAudioClose => 'Hidio';

  @override
  String get duaAudioError =>
      'Tsy afaka naloadina ang feo. Tsinjovy ny ianao alahao.';

  @override
  String get duaAudioMetaTransmittedBy => 'Nampiasain\'ny';

  @override
  String get duaAudioMetaOccasion => 'Fanatanjahan-tena';

  @override
  String get duaAudioMetaDuration => 'Fandadiany';

  @override
  String get quickActionDailyHadith => 'Hadith Isan\'andro';

  @override
  String get quickAction14Masumeen => 'Masumeen 14';

  @override
  String get quickActionListenDuas => 'Mandoahao';

  @override
  String get quickActionTasbihat => 'Torolalana Soloinanao';

  @override
  String get pilgrimageSectionTitle => 'Ny Tany Masina';

  @override
  String get pilgrimageSectionSubtitle =>
      'Torolalana feno ny Hajj & Umrah — fimandihanana amin\'ny Trano Masina Allah any Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Ny Halava Pillar ny Islam';

  @override
  String get hajjCardDescription =>
      'Ny fimandihanana grandinaha isan-taona — ilaina indray mandeha ho an\'ny Silamo afaka';

  @override
  String get hajjScreenTitle => 'Torolalana Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Torolalana tsindrom-pahita amin\'ny fimandihanana grandinaha';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ny Fimandihanana Kely';

  @override
  String get umrahCardDescription =>
      'Ny fimandihanana mitera-panahy maniraka — afaka tanteraina amin\'ny fotoana amin\'ny taona';

  @override
  String get umrahScreenTitle => 'Torolalana Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Torolalana tsindrom-pahita amin\'ny fimandihanana kely';

  @override
  String get pilgrimageStepsTitle => 'Fitsaran-tsoratra ary Dingana';

  @override
  String get pilgrimageImportantNotesTitle => 'Taratasy Fahan\'ana';

  @override
  String get pilgrimageDuaTitle => 'Dua ho an\'ity dingana ity';

  @override
  String get pilgrimageJafariNoteTitle => 'Fanamarihana Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Vita';

  @override
  String get pilgrimageMarkDone => 'Marika ho vita';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done amin\'ny $total dingana';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes minitra';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Fimandihanana Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Ny fimandihanana Shia dia miveloma any amin\'ny Medina mba hitsarangim-pahita ny vavahadin\'ny Mpaminany Muhammad (SAW) amin\'ny Masjid al-Nabawi, ary ny fasan\'ny Imama amin\'ny Jannat al-Baqi. Ity fikelikeli ity dia toeran\'ny mitera-panahy ataon\'ny Silamo Shia.';

  @override
  String get hajjIntro =>
      'Hajj dia Pillar fahasoloinanao Islam, ilaina indray mandeha ho an\'ny Silamo afaka. Tanteraina amin\'ny volana Dhul Hijjah, soloin\'ny hahazo fitsingerina Imam Ibrahim (AS), Ismail (AS), ary Lady Hajar. Ho an\'ny Silamo Shia, Hajj koa dia manakiana fitsaran-panahy fitsarangim-pahita amin\'ny fasan\'ny Mpaminany (SAW) ary Ahlul Bayt amin\'ny Medina.';

  @override
  String get umrahIntro =>
      'Umrah dia fimandihanana kely ho any Mecca ary, tsy moka ny Hajj, afaka tanteraina amin\'ny fotoana amin\'ny taona. Izay tsy ilaina, izay maniraka fitera-panahy ary soso-kevitra indrindra finoana. Io dia mizara raka-zaraka amin\'ny Hajj fa kely kokoa, manana dingana fahat-efatra.';
}
