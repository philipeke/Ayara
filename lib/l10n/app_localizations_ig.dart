// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Igbo (`ig`).
class AppLocalizationsIg extends AppLocalizations {
  AppLocalizationsIg([String locale = 'ig']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Họrọ asụsụ gị';

  @override
  String get languageSelectSub => 'Ị nwere ike ịgbanwe nke a emechaa na Ntọala';

  @override
  String get actionContinue => 'Gaa n’ihu';

  @override
  String get languageSuggestedHeader => 'A tụrụ aro';

  @override
  String get languageAllHeader => 'Asụsụ niile';

  @override
  String get languageSuggestedBadge => 'A tụrụ aro';

  @override
  String get languageSearchHint => 'Chọọ…';

  @override
  String get planBasic => 'Nkịtị';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Nduzi Kwa Ụbọchị';

  @override
  String get categorySlot02 => 'Iman na Ntụkwasị Obi';

  @override
  String get categorySlot03 => 'Ntụle Ekpere';

  @override
  String get categorySlot04 => 'Ndidi na Olileanya';

  @override
  String get categorySlot05 => 'Rịọ Mgbaghara';

  @override
  String get categorySlot06 => 'Ebere na Obiọma';

  @override
  String get categorySlot07 => 'Ike Okwukwe';

  @override
  String get categorySlot08 => 'Obi Ekele';

  @override
  String get categorySlot09 => 'Ebumnuche Ndụ';

  @override
  String get categorySlot10 => 'Njikọ Ezinụlọ';

  @override
  String get categorySlot11 => 'Udo N’ime Obi';

  @override
  String get categorySlot12 => 'Amamihe Onyeamụma';

  @override
  String get categorySlot13 => 'Àgwà Ọma';

  @override
  String get categorySlot14 => 'Guzogide Ọnwunwa';

  @override
  String get categorySlot15 => 'Dhikr Mgbede';

  @override
  String get categoryCustom => 'Ntụle Onwe Onye';

  @override
  String get dhikrMeaningSubhanallah => 'Otuto dịrị Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Otuto niile bụ nke Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah bụ Onye Kasị Ukwuu';

  @override
  String get quranVerseHeartAtRest =>
      'N’ezie, n’icheta Allah ka obi na-ahụ izuike.';

  @override
  String get promptHint => 'Pịa otu ngalaba ka ị nweta nduzi na ntụle Islam';

  @override
  String get currentLanguage => 'Asụsụ dị ugbu a';

  @override
  String get settingsLanguage => 'Ntọala asụsụ';

  @override
  String get settingsTitle => 'Ntọala';

  @override
  String get chooseLanguage => 'Họrọ asụsụ gị';

  @override
  String get continueCta => 'Gaa n’ihu';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count okwu',
      one: '$count okwu',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Nhọrọ';

  @override
  String get newCta => 'Ọhụrụ';

  @override
  String get actionsTitle => 'Gịnị ka ị ga-achọ ime?';

  @override
  String get copy => 'Detuo';

  @override
  String get share => 'Kekọrịta';

  @override
  String get close => 'Mechie';

  @override
  String get copiedToast => 'E dekọrọ ya na clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Enweghị ike imepụta nzaghachi ọhụrụ';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nỊ chọrọ ịnwale ọzọ?';
  }

  @override
  String get cancelCta => 'Kagbuo';

  @override
  String get retryCta => 'Nwalee ọzọ';

  @override
  String get authTitle => 'Mepụta akaụntụ gị';

  @override
  String get continueAsGuest => 'Gaa n’ihu dị ka ọbịa';

  @override
  String get signInGoogle => 'Jiri Google banye';

  @override
  String get signInApple => 'Jiri Apple banye';

  @override
  String get signInEmail => 'Jiri Email banye';

  @override
  String get upgradeWithApple => 'Gaa n’ihu na Apple';

  @override
  String get mustAccept => 'Ị ga-anabata Usoro ma kweta Amụma Nzuzo.';

  @override
  String get termsLabel => 'Anabatara m Usoro Ọrụ';

  @override
  String get privacyLabel => 'Agụla m Amụma Nzuzo';

  @override
  String get marketingOptIn => 'Ekwenyere m ịnata akụkọ na onyinye';

  @override
  String get openTerms => 'Usoro Ọrụ';

  @override
  String get openPrivacy => 'Amụma Nzuzo';

  @override
  String get accountSection => 'Akaụntụ';

  @override
  String get guestMode => 'Ụdị ọbịa';

  @override
  String get signedIn => 'Abanyela';

  @override
  String get upgradeHint =>
      'Chekwaa ntụle gị n’ụwa ngwaọrụ dị iche iche site n’ịmepụta akaụntụ.';

  @override
  String get upgradeWithGoogle => 'Gaa n’ihu na Google';

  @override
  String get signOut => 'Pụọ';

  @override
  String get snackUpgraded => 'Akaụntụ ewelitela site na Google ✅';

  @override
  String get snackSignedIn => 'Ejiri Google banye ✅';

  @override
  String get snackSignedOut => 'Apụla';

  @override
  String get snackSignedInApple => 'Ejiri Apple banye ✅';

  @override
  String get snackSignedInGoogle => 'Ejiri Google banye ✅';

  @override
  String get snackUpgradedApple => 'Akaụntụ ewelitela site na Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akaụntụ ewelitela site na Google ✅';

  @override
  String get historyTitle => 'Ntụle gara aga';

  @override
  String get historyOpenCta => 'Ntụle gara aga';

  @override
  String get historyEmpty => 'Enweghị ntụle echekwara ugbu a.';

  @override
  String get historyDeleteTitle => 'Hichapụ ntụle?';

  @override
  String get historyDeleteBody => 'Nke a ga-ewepụ ihe ahọpụtara kpamkpam.';

  @override
  String get deleteCta => 'Hichapụ';

  @override
  String get historyButton => 'Ntụle Gara Aga';

  @override
  String get historyEmptyTitle => 'Enweghị ntụle ugbu a';

  @override
  String get historyEmptyBody =>
      'Mepụta ihe mbụ — ihe ndị ị chekwara ga-apụta ebe a.';

  @override
  String get historyDelete => 'Hichapụ';

  @override
  String get footerTitle => 'Na Wilaya, Iman na Sabr';

  @override
  String get footerSubtitle => 'Otu ekpere n’otu oge';

  @override
  String get genericErrorSnack =>
      'Ihe adịghị mma mere — biko nwalee ọzọ n’oge dị mkpirikpi.';

  @override
  String get upgradeAccountCta =>
      'Chekwaa ntụle gị n’ụwa ngwaọrụ dị iche iche – mepụta akaụntụ';

  @override
  String get deleteAccount => 'Hichapụ akaụntụ';

  @override
  String get exportData => 'Bupu data m';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Nwayọọ nwayọọ 🐯\nAyara chọrọ obere oge tupu nke ọzọ…';

  @override
  String get rateDailyLimit =>
      'Ị gwụla ntụle ugbu a.\nNweta ntụle ndị ọzọ ma ọ bụ kwalite gaa Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'I jirila ntụle gị niile.\nTinye ọzọ ma ọ bụ kwalite gaa Wilaya iji gaa n’ihu.';

  @override
  String get rateGraceCreditsExhausted =>
      'Ị gwụla ntụle ugbu a.\nNweta ntụle ndị ọzọ ma ọ bụ kwalite gaa Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya na-emeghe atụmatụ premium, ngalaba ndị ga-abịa, na akara pụrụ iche.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Ntụle gị efu ugbu a. Atụmatụ: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Enweghị ike ịlele ntụle gị: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ihe na-adịghị mma mere mgbe a na-enyocha ntụle gị.';

  @override
  String get aiFallbackGeneric =>
      'Ihe adịghị mma mere — biko nwalee ọzọ n’oge dị mkpirikpi.';

  @override
  String get limitSectionTitle => 'Ntụle';

  @override
  String get limitTodayLabel => 'Ojiji';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Ntụle fọdụrụ: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Atụmatụ: $plan';
  }

  @override
  String get limitLoadingLabel => 'Na-ebudata…';

  @override
  String get limitLoadingLabelDescription =>
      'A na-egosi na kaadị ntụle mgbe a na-ebudata ọnụ ọgụgụ ojiji.';

  @override
  String get aiLimitTitle => 'Ntụle';

  @override
  String get aiLimitSubtitle =>
      'Nzaghachi ọ bụla na-eji ntụle 1. Nkịtị gụnyere ntụle mmalite. Wilaya na-emeghe ngalaba premium ma na-enye ohere itinye ọzọ.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ntụle ejirila';
  }

  @override
  String get creditsSectionTitle => 'Ntụle';

  @override
  String get creditsUsageLabel => 'Ojiji';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Ntụle fọdụrụ: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Atụmatụ: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Na-ebudata…';

  @override
  String get creditsLoadingLabelDescription =>
      'A na-egosi ya mgbe a na-ebudata ọnụọgụ ntụle.';

  @override
  String get creditsTitle => 'Ntụle';

  @override
  String get creditsSubtitle =>
      'Nzaghachi ọ bụla na-eji ntụle 1. Nkịtị gụnyere ntụle mmalite. Wilaya na-emeghe ngalaba premium ma na-enye ohere itinye ọzọ.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ntụle ejirila';
  }

  @override
  String get settingsDeleteTitle => 'Hichapụ akaụntụ';

  @override
  String get settingsDeleteDescription =>
      'Hichapụ akaụntụ gị na data niile metụtara ya kpamkpam.';

  @override
  String get settingsDeleteButtonLabel => 'Hichapụ akaụntụ m';

  @override
  String get settingsDeleteDialogTitle => 'Hichapụ akaụntụ?';

  @override
  String get settingsDeleteDialogBody =>
      'Omume a bụ nke na-adịgide adịgide ma a pụghị ịlaghachi azụ.\n\nA ga-ehichapụ nkata gị niile, akụkọ ihe mere eme, na ozi akaụntụ.';

  @override
  String get settingsDeleteDialogCancel => 'Kagbuo';

  @override
  String get settingsDeleteDialogConfirm => 'Hichapụ';

  @override
  String get settingsFreeLimitUsedTitle => 'Ejirila ntụle mmalite';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Ejirila ntụle mmalite nke ngwaọrụ a. Kwalite gaa Wilaya ma ọ bụ zụta ntụle ndị ọzọ iji gaa n’ihu.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Ejirila ntụle mmalite';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Ejirila ntụle mmalite nke ngwaọrụ a. Kwalite gaa Wilaya ma ọ bụ zụta ntụle ndị ọzọ iji gaa n’ihu.';

  @override
  String get deviceBoundError =>
      'Ejikọtalarị ngwaọrụ a na akaụntụ ọzọ. Biko jiri akaụntụ mbụ banye.';

  @override
  String get premiumTitle => 'Ụdị Wilaya';

  @override
  String get premiumSubtitleBasic => 'Meghee ahụmịhe Ayara zuru ezu.';

  @override
  String get premiumSubtitlePremium => 'Ị nọ na Wilaya. Ị chọrọ ntụle ndị ọzọ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Atụmatụ dị ugbu a: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Ntụle: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Ịzụ ahịa adịghị ugbu a.';

  @override
  String get premiumSignInToPurchase =>
      'Banye iji zụta ntụle ma ọ bụ mepee Wilaya.';

  @override
  String get premiumRestorePurchases => 'Weghachite ịzụ ahịa';

  @override
  String get premiumProcessing => 'Na-ahazi…';

  @override
  String get premiumRestoreHintTitle =>
      'Ị zụtara Wilaya ma ọ bụ ntụle na ngwaọrụ a ma ọ bụ nke ọzọ?';

  @override
  String get premiumRestoreHintBody =>
      'Weghachite ihe ị zụtara ma ọ bụrụ na ha anaghị apụta.';

  @override
  String get premiumBuyCredits200 => 'Zụta ntụle 200';

  @override
  String get premiumBuyCredits400 => 'Zụta ntụle 400';

  @override
  String get premiumBecomePremiumOneTime => 'Kwalite gaa n’ụdị Wilaya';

  @override
  String get premiumTopupHint =>
      'Na Wilaya, ị nwere ike itinye ntụle ndị ọzọ mgbe ọ bụla ịchọrọ.';

  @override
  String get premiumUpgradeCta => 'Kwalite';

  @override
  String get premiumRequiredForCategory =>
      'Ngalaba a dị naanị ndị ọrụ Wilaya. Kwalite na Ntọala iji mepee ọdịnaya premium niile.';

  @override
  String get premiumBenefitsBasic =>
      'Meghee Wilaya ka ị nweta ntụle ndị ọzọ, nweta ngalaba premium, ma gaa n’ihu mgbe ọ bụla ịchọrọ nduzi.';

  @override
  String get premiumBenefitsPremium =>
      'Ị nọ n’ụdị Wilaya. Ọ bụrụ na o na-agwụ gị, tinye ntụle ndị ọzọ ma gaa n’ihu na-enweghị nkwụsị.';

  @override
  String get premiumButtonBecomePremium => 'Meghee Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Tinye ntụle 1000';

  @override
  String get premiumBadge => 'Wilaya na-arụ ọrụ';

  @override
  String get premiumLoadingStore => 'Na-ebudata ụlọ ahịa…';

  @override
  String get premiumProductNotAvailable =>
      'Ngwaahịa a adịghị na ụlọ ahịa ugbu a. Biko nwalee ọzọ mgbe e mesịrị.';

  @override
  String get premiumPurchaseError =>
      'Ihe adịghị mma mere na ịzụta. Biko nwalee ọzọ.';

  @override
  String get premiumBuyCredits100 => 'Tinye ntụle 100';

  @override
  String get premiumFeatureLocked => 'Meghee Wilaya iji nweta atụmatụ a.';

  @override
  String get lockedCategoriesHint =>
      'Edebere ụfọdụ ngalaba maka ndị otu Wilaya. Meghee ha iji nyochaa ntụle ọ bụla na njem gị.';

  @override
  String get freePlanBlockedTitle => 'I jirila ntụle mmalite gị niile';

  @override
  String get freePlanBlockedBody =>
      'Ị nọ na atụmatụ Nkịtị na ntụle mmalite, ma eruola gị ókè ahụ. Iji gaa n’ihu — ma mepee ngalaba premium — kwalite gaa Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Lee nhọrọ Wilaya n’okpuru';

  @override
  String get graceBlockedTitle => 'I jirila ntụle mmalite gị niile';

  @override
  String get graceBlockedBody =>
      'Ị nọ na atụmatụ Nkịtị na ntụle mmalite, ma eruola gị ókè ahụ. Iji gaa n’ihu — ma mepee ngalaba premium — kwalite gaa Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Lee nhọrọ Wilaya n’okpuru';

  @override
  String get rateGuestMustSignIn => 'Banye iji jiri Ayara na ntụle gị.';

  @override
  String get guestNoCreditsTitle => 'Ụdị ọbịa';

  @override
  String get guestNoCreditsBody =>
      'Dị ka ọbịa ị nwere ike ilele ngwa ahụ, mana ị pụghị iji ntụle. Banye n’oge ọzọ na Ntọala iji jiri ntụle ma mepee ohere ịzụta.';

  @override
  String get guestDialogContinue => 'Gaa n’ihu';

  @override
  String get guestDialogLoginInstead => 'Banye kama';

  @override
  String get optionalLabel => 'nhọrọ';

  @override
  String get accountDeleteSuccessTitle => 'Ehichapụrụ akaụntụ';

  @override
  String get accountDeleteSuccessBody =>
      'Akaụntụ gị na data metụtara ya ehichapụrụ nke ọma.';

  @override
  String get accountDeleteSuccessClose => 'Mechie';

  @override
  String get accountDeleteErrorTitle => 'Enweghị ike ihichapụ akaụntụ';

  @override
  String get accountDeleteErrorClose => 'Ọ dị mma';

  @override
  String get accountDeleteReauthCancelled =>
      'A kagbuola ịbanye ọzọ. Biko banye ọzọ ma nwalee ihichapụ ọzọ.';

  @override
  String get accountDeleteReauthRequired =>
      'Ihichapụ akaụntụ chọrọ nbanye ọhụrụ. Biko pụọ, banye ọzọ, ma nwalee ọzọ.';

  @override
  String get settingsDeletePermanentWarning =>
      'Omume a bụ nke na-adịgide adịgide ma a pụghị ịlaghachi azụ. A ga-ehichapụ data niile metụtara akaụntụ gị.';

  @override
  String get dailyGraceTitle => 'Nduzi Kwa Ụbọchị';

  @override
  String get dailyGraceScriptureLabel => 'AMA AMA ỤBỌCHI';

  @override
  String get dailyGraceSaintLabel => 'ỌKÀMMỤMỤ IZU A';

  @override
  String get dailyGraceReflectionLabel => 'NTỤLE MGBEDE';

  @override
  String get dailyGraceCopiedToast => 'E detuola amaokwu ahụ na clipboard';

  @override
  String get locationConsentLabel =>
      'Kwe ka Ayara jiri ebe m nọ maka ntụziaka Qibla na oge ekpere';

  @override
  String get locationConsentHint =>
      'A na-eji ya naanị maka atụmatụ ndị a. A naghị ekekọrịta ma ọ bụ echekwa ebe ịnọ gị.';

  @override
  String get askPageTitle => 'Jụọ Ayara';

  @override
  String get askPageDescription =>
      'Jụọ ihe ọ bụla gbasara okwukwe, ekpere, ndụ, ma ọ bụ omume Islam ma nata nduzi sitere na Qur’an na nkuzi Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Dee ajụjụ gị ebe a…';

  @override
  String get askPageSubmitCta => 'Jụọ';

  @override
  String get askPageInputEmptyError => 'Biko dee ajụjụ mbụ.';

  @override
  String get askResultYourQuestion => 'Ajụjụ gị';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Na-eche Makkah ihu';

  @override
  String get qiblaCompassInstruction =>
      'Tụgharịa ekwentị gị ruo mgbe agịga ọlaedo ga-egosi elu.\nNtuziaka ahụ na-egosi Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Mgbaàmà GPS adịghị ike. Gaa n’èzí ma pịa Nwalee ọzọ.';

  @override
  String get qiblaRetry => 'Nwalee ọzọ';

  @override
  String get qiblaTitle => 'Ntuziaka Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km ruo Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'A chọrọ ebe ịnọ';

  @override
  String get qiblaLocationNeededBody =>
      'Kwe ka e nweta ebe ịnọ gị ka Ayara nwee ike ịgbakọọ ntụziaka Kaaba dị na Makkah site n’ebe ọ bụla ị nọ.';

  @override
  String get qiblaOpenSettings => 'Meghee Ntọala';

  @override
  String get qiblaCompassLoading => 'Na-achọta ọnọdụ gị…';

  @override
  String get qiblaTowardMecca => 'N’ihu Makkah';

  @override
  String get prayerTimesTitle => 'Oge Ekpere';

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
  String get prayerTimesLocationNeededTitle => 'A chọrọ ebe ịnọ';

  @override
  String get prayerTimesLocationNeededBody =>
      'Kwe ka e nweta ebe ịnọ gị ka Ayara nwee ike ịgbakọọ oge ekpere ziri ezi maka obodo gị.';

  @override
  String get prayerTimesNextLabel => 'Nke na-abịa';

  @override
  String get prayerTimesDoneLabel => 'Emechara';

  @override
  String get monthlyPrayerTimesTitle => 'Oge Ekpere Kwa Ọnwa';

  @override
  String get monthlyPrayerTimesViewButton => 'Lee Ọnwa Dum';

  @override
  String get monthlyPrayerTimesNextMonth => 'Ọnwa na-abịa';

  @override
  String get monthlyPrayerTimesDayHeader => 'Ụbọchị';

  @override
  String get sharePrayerTimes => 'Kekọrịta oge ekpere';

  @override
  String get notificationsSectionTitle => 'Ọkwa';

  @override
  String get notificationsSectionSubtitle =>
      'Ihe ncheta ekpere, ihe omume kalenda na ndị ọzọ';

  @override
  String get dailyReflectionReminderTitle => 'Ntụle Kwa Ụbọchị';

  @override
  String get dailyReflectionReminderDescription =>
      'Ihe ncheta dị nro kwa ụbọchị iji meghee Ayara ma jikọọ na okwukwe gị.';

  @override
  String get dailyReflectionReminderEnable =>
      'Mee ka ihe ncheta kwa ụbọchị rụọ ọrụ';

  @override
  String get dailyReflectionReminderTimeLabel => 'Oge ihe ncheta';

  @override
  String get prayerNotificationsTitle => 'Ihe Ncheta Ekpere';

  @override
  String get prayerNotificationsDescription =>
      'Nata ihe ncheta dị nro tupu oge ekpere ọ bụla iji nyere gị aka ịnọ na njikọ n’ụbọchị dum.';

  @override
  String get prayerNotificationsEnable => 'Mee ka ihe ncheta ekpere rụọ ọrụ';

  @override
  String get prayerNotificationsOpenSettings => 'Meghee ntọala ọkwa';

  @override
  String get prayerNotificationsDenied => 'A gbanyụrụ ọkwa';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gaa na Ntọala ma kwe ka Ayara zitere ọkwa ka ị nata ihe ncheta oge ekpere.';

  @override
  String get notificationsConsentLabel => 'Kwe ka ọkwa maka oge ekpere';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Ekpere Ụtụtụ';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr bụ ekpere ụtụtụ nke Ahl al-Bayt. Imam Ali (AS) kwuru: Chekwa ekpere ụtụtụ dịka ị na-echekwa ihe kasị baa uru a nyere gị n’aka. Bilie, sachapụ onwe gị, ma guzo n’ihu Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Ekpere Ehihie';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imam nke Ahl al-Bayt na-asọpụrụ oge ọ bụla nke ncheta. Kwụsị ụbọchị gị obere oge, jikọta Dhuhr na Asr ma ọ bụrụ na ọ dị mkpa, ma laghachi obi gị n’ebe Allah nọ.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Ekpere Mgbede';

  @override
  String get prayerNotifBodyAsr =>
      'Chekwa ekpere, n’ihi na ọ bụ nkwekọrịta dị n’etiti gị na Allah. Oge Asr eruola — ekwela ka ọ gafee n’enweghị ncheta.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Ekpere Anyasị';

  @override
  String get prayerNotifBodyMaghrib =>
      'Anwụ adaala — oge Ahl al-Bayt jiri mee ihe dị nsọ maka arịrịọ. Kpee Maghrib ma meghee aka gị n’ihu Allah n’ime dua tupu abalị amalite.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Ekpere Abalị';

  @override
  String get prayerNotifBodyIsha =>
      'Jisie ike mechie ụbọchị gị na Allah. Imam kpọrọ oku maka Salat al-Layl mgbe Isha gasịrị — ma nke mbụ, mezue Isha gị ma mechie ụbọchị ahụ na ncheta Ya.';

  @override
  String get outOfReflectionsBannerText => 'I jirila ntụle gị niile';

  @override
  String get outOfReflectionsBannerCta => 'Nweta ọzọ';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Pịa okirikiri ahụ ka ị gụọ';

  @override
  String get dhikrResetButton => 'Tọgharịa';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Ị mezula ncheta Allah 100. Ka ha bụrụ ìhè nye obi gị.';

  @override
  String get disclaimerTitle => 'Banyere nduzi ngwa a';

  @override
  String get disclaimerBody =>
      'Ayara na-enye ntụle Islam, ihe ncheta, na ọdịnaya ime mmụọ iji kwado njem okwukwe nke onwe gị, nke sitere na Qur’an na nkuzi Ahl al-Bayt. A na-enye ọdịnaya a naanị maka ebumnuche ozi zuru oke na mkpali.\n\nAyara anaghị dochie agụmakwụkwọ ruru eru.\nNduzi dị na ngwa a abụghị nnọchi maka ọkà mmụta Islam ruru eru, marja\', ma ọ bụ onye nkụzi a zụlitere n’ihe ọmụmụ okwukwe. N’ime Islam Shia, nduzi okpukpe sitere na ụlọ akwụkwọ Ja\'fari nke iwu (fiqh) na omenala iso Marja\' dị ndụ (isi iyi nke nṅomi) — onye ọka iwu ruru eru nke mkpebi ya na-edu ndị kwere ekwe n’omume okpukpe. Ọ bụrụ na i nwere ajụjụ gbasara iwu okpukpe, halal na haram, ma ọ bụ ọrụ okpukpe nke onwe, biko chọọ ndụmọdụ n’aka Marja\' ruru eru ma ọ bụ ọkà mmụta nọ n’obodo gị.\n\nNgwa a anaghị enye mkpebi okpukpe.\nAyara anaghị eme mkpebi nwere ikike n’ihe gbasara fiqh ma ọ bụ ọrụ okpukpe nke onwe. Enweghị ihe ọ bụla ebe a kwesịrị ka ewere ya dịka fatwa ma ọ bụ ntuziaka okpukpe na-ejikọ iwu.\n\nIsi mkpa nke Ahl al-Bayt.\nN’ime Islam Shia, Onyeamụma Muhammad ﷺ na ezinụlọ ya dị ọcha — Ahl al-Bayt — bụ ndị nduzi nwere ikike nke obodo Islam mgbe Qur’an gasịrị. Imam iri na abụọ nke Ahl al-Bayt bụ ndị a họpụtara site n’aka Chineke iji kọwaa nkuzi Islam. Ọdịnaya dị na ngwa a na-egosipụta omenala a ma na-achọ ịkwanyere ya ugwu n’eziokwu.\n\nIhe gbasara obodo.\nNgwa a na-achọ ịgba gị ume ka ị na-etinye aka n’okwukwe gị ebe ọ na-asọpụrụ nke ukwuu ọrụ dị mkpa nke ụlọ alakụba mpaghara gị, ụlọ Islam, na obodo okpukpe gị. Anyị na-agba gị ume ka ị nọgide na-ejikọta na ịmụ ihe n’aka ndị nkụzi ruru eru dị gị nso.';

  @override
  String get disclaimerClose => 'Aghọtaram m';

  @override
  String get disclaimerInfoTooltip => 'Banyere nduzi ngwa a';

  @override
  String get disclaimerSettingsSubtitle =>
      'Maka ebumnuche ozi zuru oke naanị. Pịa ka ị gụọ nkwupụta zuru ezu.';

  @override
  String get disclaimerSectionHeader => 'Nkwupụta nduzi';

  @override
  String get navHome => 'Ụlọ';

  @override
  String get navReflect => 'Tụlee';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Kalenda';

  @override
  String get dashboardToday => 'TAA';

  @override
  String get dashboardComingUp => 'Na-abịa';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ụbọchị',
      one: 'ụbọchị',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Nbata Ngwa Ngwa';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Nduzi';

  @override
  String get quickActionPrayerTimes => 'Oge Ekpere';

  @override
  String get askAyaraTitle => 'Jụọ Ayara';

  @override
  String get askAyaraSubtitle =>
      'Jụọ ajụjụ Islam ọ bụla ma nata azịza e chere nke ọma na nke na-eduzi.';

  @override
  String get askAyaraHint => 'dịka ọmụmaatụ Gịnị bụ mkpa Ramadan?';

  @override
  String get askAyaraSubmit => 'Jụọ';

  @override
  String get wisdomOfTheDayTitle => 'Amamihe Ụbọchị';

  @override
  String get calendarScreenTitle => 'Kalenda Islam';

  @override
  String get calendarUpcomingOccasions => 'Emume Na-abịa';

  @override
  String get calendarOccasionRemindersTitle => 'Ihe Ncheta Emume';

  @override
  String get calendarOccasionRemindersHint =>
      'A ga-ama gị ọkwa mgbede tupu emume ọ bụla';

  @override
  String get calendarNotifPermissionDenied =>
      'A jụrụ ikike ọkwa. Mee ka ọ rụọ ọrụ na ntọala ngwaọrụ gị.';

  @override
  String get calendarNoEvents => 'Enweghị ihe omume na-abịa.';

  @override
  String get calendarAddToPhone => 'Tinye na Kalenda ekwentị';

  @override
  String get calendarAddedToPhone => 'Tinye na Kalenda';

  @override
  String get calendarCountdownToday => 'TAA';

  @override
  String get calendarCountdownTomorrow => 'ECHI';

  @override
  String calendarCountdownDays(int days) {
    return 'n’ime ụbọchị $days';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jen';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Maach';

  @override
  String get calendarMonthApr => 'Eprel';

  @override
  String get calendarMonthMay => 'Mee';

  @override
  String get calendarMonthJun => 'Juun';

  @override
  String get calendarMonthJul => 'Julai';

  @override
  String get calendarMonthAug => 'Ọgọst';

  @override
  String get calendarMonthSep => 'Sept';

  @override
  String get calendarMonthOct => 'Ọkt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dis';

  @override
  String get calendarSeasonMuharramEarly => 'Ụbọchị Muharram — cheta Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — ụbọchị iru uju na ntụle';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — ụbọchị iri anọ nke Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ụzọ gaa Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — chi ụtụtụ nke mkpughe';

  @override
  String get calendarSeasonMidShaban =>
      'Etiti Sha\'ban — ọmụmụ Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ọnwa Qur’an';

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
  String get duasScreenTitle => 'Dua na Ziyarat';

  @override
  String get duasSearchHint => 'Chọọ dua, ziyarat…';

  @override
  String get duasFilterAll => 'Ha niile';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua na ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Enweghị dua achọpụtara.';

  @override
  String get duaCategoryDaily => 'Kwa ụbọchị';

  @override
  String get duaCategoryWeekly => 'Kwa izu';

  @override
  String get duaCategoryOccasions => 'Emume';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Ọmụmụ';

  @override
  String get eventTypeMartyrdom => 'Nrụọ Mmụọ';

  @override
  String get eventTypeOccasion => 'Emume';

  @override
  String get duaCopyTooltip => 'Detuo ntụgharị asụsụ';

  @override
  String get duaToggleTransliteration => 'Ntụgharị mkpụrụedemede';

  @override
  String get duaToggleTranslation => 'Ntụgharị asụsụ';

  @override
  String get duaAskAiLabel => 'Jụọ Ayara ka ọ kọwaa dua a';

  @override
  String get duaAskAiLockedLabel => 'Jụọ Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Nkọwa Ayara dị maka ndị otu Wilaya. Kwalite na Ntọala.';

  @override
  String duaAiComingSoon(String name) {
    return 'Jụọ Ayara banyere \"$name\" — na-abịa n’oge na-adịghị anya!';
  }

  @override
  String get duaCopiedToast => 'E dekọrọ dua ahụ na clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah bụ Onye Kasị Ukwuu';

  @override
  String get tasbihAlhamdulillahMeaning => 'Otuto niile bụ nke Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Otuto dịrị Allah';

  @override
  String get tasbihResetTooltip => 'Tọgharịa';

  @override
  String get tasbihCompleteTitle => 'Tasbih Ezuola';

  @override
  String get tasbihCompleteMessage => 'Ka Allah nabata dhikr gị.';

  @override
  String get tasbihTapHint => 'Pịa ebe ọ bụla ka ị gụọ';

  @override
  String get tasbihatScreenTitle => 'Nduzi Ekpere';

  @override
  String get tasbihatScreenSubtitle => 'OTUTO EKPERE';

  @override
  String get tasbihatScreenDescription =>
      'Nduzi zuru ezu nke otuto a na-agụ n’oge na mgbe ekpere kwa ụbọchị gasịrị — na-eso omenala Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'A na-agụ ya na rakʿah nke 3 na nke 4';

  @override
  String get tasbihatArba3Info =>
      'N’iwu Shia, Tasbiḥāt al-Arbaʿa na-anọchi Surah al-Fatiha na rakʿah nke 3 na nke 4 nke Dhuhr, Asr, Maghrib, na Isha. Ọ bụ iwu (wājib) ịgụ ya otu ugboro, ma a na-akwado (mustaḥabb) ịgụ ya ugboro atọ.';

  @override
  String get tasbihatArba3Translation =>
      'Otuto dịrị Allah · Otuto niile bụ nke Allah\nEnweghị chi ọzọ ma e wezụga Allah · Allah bụ Onye Kasị Ukwuu';

  @override
  String get tasbihatArba3CompleteTitle => 'Agụchaala';

  @override
  String get tasbihatArba3CompleteMessage => 'Ka a nabata ekpere gị — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Pịa mgbe agụchara ugboro ọ bụla';

  @override
  String get tasbihatZahraSubtitle => 'Mgbe ekpere ọ bụla gasịrị · mkpụrụ 100';

  @override
  String get tasbihatZahraOriginLabel => 'Mmalite';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) rịọrọ Onyeamụma ﷺ ka ọ nye ya ohu. Ọ sịrị: \"Ka m gosi gị ihe ka mma? Gụọ Subḥānallāh ugboro 33, Alḥamdulillāh ugboro 33, na Allāhu Akbar ugboro 34 mgbe ekpere ọ bụla gasịrị. Nke ahụ ka mma karịa ohu nye gị.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Meghee Ngụkọ Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUA A NA-AKWADO';

  @override
  String get tasbihatDuasSubtitle => 'Mgbe i mezuchara ekpere gị';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Mgbe ekpere iwu ọ bụla gasịrị';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Onye ọ bụla na-agụ Āyat al-Kursī mgbe ekpere iwu ọ bụla gasịrị, ọ dịghị ihe guzo n’etiti ya na paradaịs ma e wezụga ọnwụ. Imam al-Bāqir (a) kwuru na ọ bụ otu n’ime amaokwu kacha ukwu na Qur’an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Mgbe ekpere ọ bụla gasịrị · na-emechi arịrịọ niile';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Izipu ngozi n’elu Onyeamụma ﷺ na ezinụlọ ya dị ọcha (Āl Muḥammad) ka a na-akwado iji mechie dua ọ bụla. Imam al-Ṣādiq (a) kwuru: \"Dua ọ bụla na-adọpụ uche ruo mgbe ị zitere ṣalawāt n’elu Muḥammad na ezinụlọ ya.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Mgbe ekpere ọ bụla gasịrị · maka Imam nke oge anyị';

  @override
  String get tasbihatDuaFarajSource => 'Imam al-Ḥasan al-ʿAskarī (a) kụziri ya';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua maka pụta ọzọ nke Imam al-Mahdī (af), Imam nke iri na abụọ, nke nna ya kụziri. Ndị kwere ekwe Shia na-agụ ya kwa ụbọchị mgbe ekpere ọ bụla gasịrị dịka ngosipụta nke ịhụnanya nye Imam dị ndụ.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ nke Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Mgbe Maghrib na Isha gasịrị · a na-akwado ya nke ukwuu';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) kwuru na ịgụ Tasbīḥ al-Zahrā mgbe Isha gasịrị tupu ụra ka mma karịa rakʿah 1000 nke ekpere onwe onye. Ìhè ya na-arịgo eluigwe.';

  @override
  String get tasbihFatimaGiftPre => 'Onyinye sitere n’aka Onyeamụma';

  @override
  String get tasbihFatimaGiftPost => 'a na-agụ ya mgbe ekpere ọ bụla gasịrị';

  @override
  String get prayerTrackerTitle => 'NDETA EKPERE';

  @override
  String get prayerTrackerPrayed => 'Ekpeela';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'ụbọchị $count n’usoro';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Ekpere niile ezuola taa. Ka Allah nabata.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Emechala taa';

  @override
  String get dhikrTrackerNotDoneToday => 'Emebeghị taa';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'ụbọchị $count n’usoro';
  }

  @override
  String get dhikrReminderTitle => 'Ihe Ncheta Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Ihe ncheta dị nro kwa ụbọchị iji gụọ Tasbīḥ al-Zahrā (SA) gị.';

  @override
  String get dhikrReminderEnable => 'Mee ka ihe ncheta Tasbīḥ rụọ ọrụ';

  @override
  String get dhikrReminderTimeLabel => 'Oge ihe ncheta';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Kwa Ụbọchị';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'NTỤGHARỊ ASỤSỤ';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Kekọrịta Hadith a';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nSite na Ayara';
  }

  @override
  String get hadithNavPrevious => 'Nke gara aga';

  @override
  String get hadithNavNext => 'Nke na-esote';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Masumeen 14';

  @override
  String get imamsScreenSubtitle =>
      'Onyeamụma, Lady Fatima, na Imam iri na abụọ — ndị nduzi Islam na-adịghị emehie';

  @override
  String get imamLabelBorn => 'A mụrụ';

  @override
  String get imamLabelMartyrdom => 'Nrụọ Mmụọ';

  @override
  String get imamLabelStatus => 'Ọnọdụ';

  @override
  String get imamSectionBiography => 'AKỤKỌ NDỤ';

  @override
  String get imamSectionFamousSaying => 'OKWU A MA AMA';

  @override
  String get imamRoleProphet => 'Onyeamụma Ikpeazụ';

  @override
  String get imamRoleInfallible => 'Onye Na-adịghị Emehie';

  @override
  String get imamOrdinal1 => 'Imam nke 1';

  @override
  String get imamOrdinal2 => 'Imam nke 2';

  @override
  String get imamOrdinal3 => 'Imam nke 3';

  @override
  String get imamOrdinal4 => 'Imam nke 4';

  @override
  String get imamOrdinal5 => 'Imam nke 5';

  @override
  String get imamOrdinal6 => 'Imam nke 6';

  @override
  String get imamOrdinal7 => 'Imam nke 7';

  @override
  String get imamOrdinal8 => 'Imam nke 8';

  @override
  String get imamOrdinal9 => 'Imam nke 9';

  @override
  String get imamOrdinal10 => 'Imam nke 10';

  @override
  String get imamOrdinal11 => 'Imam nke 11';

  @override
  String get imamOrdinal12 => 'Imam nke 12';

  @override
  String get duaAudioScreenTitle => 'Gee Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Họrọ dua ị ga-ege. Pịa taịl ahụ ka ịkpọọ ma ọ bụ kwụsịtụ.';

  @override
  String get duaAudioComingSoonMessage =>
      'Ụda maka dua a ga-adị na mmelite na-abịa.';

  @override
  String get duaAudioClose => 'Mechie';

  @override
  String get duaAudioError => 'Enweghị ike ibudata ụda. Biko lelee njikọ gị.';

  @override
  String get duaAudioMetaTransmittedBy => 'Onye zipụtara';

  @override
  String get duaAudioMetaOccasion => 'Emume';

  @override
  String get duaAudioMetaDuration => 'Ogologo oge';

  @override
  String get quickActionDailyHadith => 'Hadith Kwa Ụbọchị';

  @override
  String get quickAction14Masumeen => 'Masumeen 14';

  @override
  String get quickActionListenDuas => 'Gee ntị';

  @override
  String get quickActionTasbihat => 'Nduzi Ekpere';

  @override
  String get pilgrimageSectionTitle => 'Njem Nsọ';

  @override
  String get pilgrimageSectionSubtitle =>
      'Nduzi zuru ezu maka Hajj na Umrah — njem nsọ gaa n’Ụlọ Nsọ nke Allah na Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Ogidi nke ise nke Islam';

  @override
  String get hajjCardDescription =>
      'Njem nsọ ukwu kwa afọ — iwu otu ugboro n’ime ndụ maka Muslim ọ bụla nwere ike ime ya';

  @override
  String get hajjScreenTitle => 'Nduzi Hajj';

  @override
  String get hajjScreenSubtitle => 'Nduzi nzọụkwụ n’usoro maka njem nsọ ukwu';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Njem Nsọ Nta';

  @override
  String get umrahCardDescription =>
      'Njem ime mmụọ bara ụba nke ukwuu nke a pụrụ ime n’oge ọ bụla n’afọ';

  @override
  String get umrahScreenTitle => 'Nduzi Umrah';

  @override
  String get umrahScreenSubtitle => 'Nduzi nzọụkwụ n’usoro maka njem nsọ nta';

  @override
  String get pilgrimageStepsTitle => 'Emume na Nzọụkwụ';

  @override
  String get pilgrimageImportantNotesTitle => 'Ndetu Dị Mkpa';

  @override
  String get pilgrimageDuaTitle => 'Dua maka nzọụkwụ a';

  @override
  String get pilgrimageJafariNoteTitle => 'Nkwupụta Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Pụrụ Iche';

  @override
  String get pilgrimageMarkDone => 'Mepụta dịka zuru ezu';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done nke $total nzọụkwụ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes nkeji';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Ndị njem Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Ndị njem Shia na-emekarịkwa njem gaa Medina ileta ili Onyeamụma Muhammad (SAW) na Masjid al-Nabawi, na ili ndị Imam dị na Jannat al-Baqi. Nleta ndị a nwere nnukwu mkpa ime mmụọ ma a na-ewere ha dịka akụkụ dị mkpa nke njem ahụ nye ọtụtụ ndị Muslim Shia.';

  @override
  String get hajjIntro =>
      'Hajj bụ ogidi nke ise nke Islam, iwu otu ugboro n’ime ndụ maka Muslim ọ bụla nwere ike ime ya n’ahụ na n’ego. A na-eme ya n’ọnwa Dhul Hijjah, ọ na-agbaso nzọụkwụ Onyeamụma Ibrahim (AS), nwa ya nwoke Ismail (AS), na Lady Hajar. Maka ndị Muslim Shia, Hajj gụnyekwara nnukwu ngọzi nke ileta ebe Onyeamụma (SAW) na Ahlul Bayt zuru ike na Medina.';

  @override
  String get umrahIntro =>
      'Umrah bụ njem nsọ nta gaa Mecca, ma n’adịghị ka Hajj, a pụrụ ime ya n’oge ọ bụla n’afọ. Ọ bụ ezie na ọ bụghị iwu, ọ na-eweta nnukwu ụgwọ ọrụ ime mmụọ ma a na-ewere ya dị ka ọrụ ofufe a na-akwado nke ukwuu. Ọ na-ekekọrịta ọtụtụ emume ya na Hajj mana ọ dị mkpụmkpụ, ebe ọ nwere emume isi anọ.';
}
