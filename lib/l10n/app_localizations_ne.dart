// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'आफ्नो भाषा छान्नुहोस्';

  @override
  String get languageSelectSub => 'यो पछि सेटिङ्समा परिवर्तन गर्न सक्नुहुन्छ';

  @override
  String get actionContinue => 'जारी राख्नुहोस्';

  @override
  String get languageSuggestedHeader => 'सुझाइएका';

  @override
  String get languageAllHeader => 'सबै भाषाहरू';

  @override
  String get languageSuggestedBadge => 'सुझाइएको';

  @override
  String get languageSearchHint => 'खोज्नुहोस्…';

  @override
  String get planBasic => 'स्ट्यान्डर्ड';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'दैनिक मार्गदर्शन';

  @override
  String get categorySlot02 => 'ईमान र भरोसा';

  @override
  String get categorySlot03 => 'नमाज चिन्तन';

  @override
  String get categorySlot04 => 'सब्र र आशा';

  @override
  String get categorySlot05 => 'माफी माग्नुहोस्';

  @override
  String get categorySlot06 => 'दया र करुणा';

  @override
  String get categorySlot07 => 'विश्वासको शक्ति';

  @override
  String get categorySlot08 => 'कृतज्ञ हृदय';

  @override
  String get categorySlot09 => 'जीवनको उद्देश्य';

  @override
  String get categorySlot10 => 'पारिवारिक बन्धन';

  @override
  String get categorySlot11 => 'आन्तरिक शान्ति';

  @override
  String get categorySlot12 => 'पैगम्बरको ज्ञान';

  @override
  String get categorySlot13 => 'असल चरित्र';

  @override
  String get categorySlot14 => 'प्रलोभनको प्रतिरोध';

  @override
  String get categorySlot15 => 'साँझको जिक्र';

  @override
  String get categoryCustom => 'व्यक्तिगत चिन्तन';

  @override
  String get dhikrMeaningSubhanallah => 'अल्लाह पवित्र हुनुहुन्छ';

  @override
  String get dhikrMeaningAlhamdulillah => 'सबै प्रशंसा अल्लाहकै लागि हो';

  @override
  String get dhikrMeaningAllahuAkbar => 'अल्लाह सबैभन्दा महान हुनुहुन्छ';

  @override
  String get quranVerseHeartAtRest =>
      'निश्चय नै, अल्लाहको स्मरणले हृदयहरूलाई शान्ति दिन्छ।';

  @override
  String get promptHint =>
      'इस्लामिक मार्गदर्शन र चिन्तनका लागि कुनै श्रेणी छुनुहोस्';

  @override
  String get currentLanguage => 'हालको भाषा';

  @override
  String get settingsLanguage => 'भाषा सेटिङ्स';

  @override
  String get settingsTitle => 'सेटिङ्स';

  @override
  String get chooseLanguage => 'आफ्नो भाषा छान्नुहोस्';

  @override
  String get continueCta => 'जारी राख्नुहोस्';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शब्द',
      one: '$count शब्द',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'विकल्पहरू';

  @override
  String get newCta => 'नयाँ';

  @override
  String get actionsTitle => 'तपाईं के गर्न चाहनुहुन्छ?';

  @override
  String get copy => 'कपी गर्नुहोस्';

  @override
  String get share => 'साझा गर्नुहोस्';

  @override
  String get close => 'बन्द गर्नुहोस्';

  @override
  String get copiedToast => 'क्लिपबोर्डमा कपी गरियो';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'नयाँ उत्तर तयार गर्न सकिएन';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nफेरि प्रयास गर्न चाहनुहुन्छ?';
  }

  @override
  String get cancelCta => 'रद्द गर्नुहोस्';

  @override
  String get retryCta => 'फेरि प्रयास गर्नुहोस्';

  @override
  String get authTitle => 'आफ्नो खाता बनाउनुहोस्';

  @override
  String get continueAsGuest => 'अतिथि रूपमा जारी राख्नुहोस्';

  @override
  String get signInGoogle => 'Google मार्फत साइन इन गर्नुहोस्';

  @override
  String get signInApple => 'Apple मार्फत साइन इन गर्नुहोस्';

  @override
  String get signInEmail => 'इमेलबाट साइन इन गर्नुहोस्';

  @override
  String get upgradeWithApple => 'Apple मार्फत जारी राख्नुहोस्';

  @override
  String get mustAccept =>
      'तपाईंले सेवा सर्तहरू स्वीकार गर्न र गोपनीयता नीति मान्य गर्नुपर्छ।';

  @override
  String get termsLabel => 'म सेवा सर्तहरू स्वीकार गर्छु';

  @override
  String get privacyLabel => 'मैले गोपनीयता नीति पढेको छु';

  @override
  String get marketingOptIn => 'म समाचार र अफरहरू प्राप्त गर्न सहमत छु';

  @override
  String get openTerms => 'सेवा सर्तहरू';

  @override
  String get openPrivacy => 'गोपनीयता नीति';

  @override
  String get accountSection => 'खाता';

  @override
  String get guestMode => 'अतिथि मोड';

  @override
  String get signedIn => 'साइन इन गरिएको';

  @override
  String get upgradeHint =>
      'खाता बनाएर आफ्ना चिन्तनहरू विभिन्न डिभाइसहरूमा सुरक्षित राख्नुहोस्।';

  @override
  String get upgradeWithGoogle => 'Google मार्फत जारी राख्नुहोस्';

  @override
  String get signOut => 'साइन आउट गर्नुहोस्';

  @override
  String get snackUpgraded => 'खाता Google मार्फत अपग्रेड गरियो ✅';

  @override
  String get snackSignedIn => 'Google मार्फत साइन इन गरियो ✅';

  @override
  String get snackSignedOut => 'साइन आउट गरियो';

  @override
  String get snackSignedInApple => 'Apple मार्फत साइन इन गरियो ✅';

  @override
  String get snackSignedInGoogle => 'Google मार्फत साइन इन गरियो ✅';

  @override
  String get snackUpgradedApple => 'खाता Apple मार्फत अपग्रेड गरियो ✅';

  @override
  String get snackUpgradedGoogle => 'खाता Google मार्फत अपग्रेड गरियो ✅';

  @override
  String get historyTitle => 'अघिल्ला चिन्तनहरू';

  @override
  String get historyOpenCta => 'अघिल्ला चिन्तनहरू';

  @override
  String get historyEmpty => 'अहिलेसम्म कुनै सुरक्षित गरिएका चिन्तन छैनन्।';

  @override
  String get historyDeleteTitle => 'चिन्तन मेटाउने?';

  @override
  String get historyDeleteBody =>
      'यसले चयन गरिएको सामग्री स्थायी रूपमा हटाउनेछ।';

  @override
  String get deleteCta => 'मेटाउनुहोस्';

  @override
  String get historyButton => 'अघिल्ला चिन्तनहरू';

  @override
  String get historyEmptyTitle => 'अहिलेसम्म कुनै चिन्तन छैन';

  @override
  String get historyEmptyBody =>
      'पहिले केही उत्पन्न गर्नुहोस् — तपाईंले सुरक्षित गरेका सामग्री यहाँ देखा पर्नेछन्।';

  @override
  String get historyDelete => 'मेटाउनुहोस्';

  @override
  String get footerTitle => 'Wilaya, ईमान र सब्रका साथ';

  @override
  String get footerSubtitle => 'एक पटकमा एक दुआ';

  @override
  String get genericErrorSnack =>
      'केही गल्ती भयो — कृपया केही क्षणपछि फेरि प्रयास गर्नुहोस्।';

  @override
  String get upgradeAccountCta =>
      'आफ्ना चिन्तनहरू विभिन्न डिभाइसहरूमा सुरक्षित राख्नुहोस् – खाता बनाउनुहोस्';

  @override
  String get deleteAccount => 'खाता मेटाउनुहोस्';

  @override
  String get exportData => 'मेरो डाटा निर्यात गर्नुहोस्';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'अलि बिस्तारै 🐯\nअर्को उत्तरअघि Ayara लाई केही क्षण चाहिन्छ…';

  @override
  String get rateDailyLimit =>
      'अहिलेलाई तपाईंका चिन्तनहरू सकिएका छन्।\nथप चिन्तनहरू लिनुहोस् वा Wilaya मा अपग्रेड गर्नुहोस्।';

  @override
  String get rateCreditsExhausted =>
      'तपाईंले आफ्ना सबै चिन्तनहरू प्रयोग गरिसक्नुभयो।\nजारी राख्न टप-अप गर्नुहोस् वा Wilaya मा अपग्रेड गर्नुहोस्।';

  @override
  String get rateGraceCreditsExhausted =>
      'अहिलेलाई तपाईंका चिन्तनहरू सकिएका छन्।\nथप चिन्तनहरू लिनुहोस् वा Wilaya मा अपग्रेड गर्नुहोस्।';

  @override
  String get premiumDescription =>
      'Wilaya ले प्रिमियम सुविधाहरू, भविष्यका श्रेणीहरू र विशेष ब्याज अनलक गर्छ।';

  @override
  String ratePlanExhausted(String plan) {
    return 'तपाईंका चिन्तनहरू अहिले खाली छन्। योजना: $plan।';
  }

  @override
  String rateCheckFailed(String message) {
    return 'तपाईंका चिन्तनहरू जाँच गर्न सकिएन: $message';
  }

  @override
  String get rateCheckGenericError =>
      'तपाईंका चिन्तनहरू जाँच गर्दा केही गल्ती भयो।';

  @override
  String get aiFallbackGeneric =>
      'केही गल्ती भयो — कृपया केही क्षणपछि फेरि प्रयास गर्नुहोस्।';

  @override
  String get limitSectionTitle => 'चिन्तनहरू';

  @override
  String get limitTodayLabel => 'प्रयोग';

  @override
  String limitCreditsLabel(Object credits) {
    return 'बाँकी चिन्तनहरू: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'योजना: $plan';
  }

  @override
  String get limitLoadingLabel => 'लोड हुँदैछ…';

  @override
  String get limitLoadingLabelDescription =>
      'प्रयोग तथ्याङ्क ल्याइँदै गर्दा चिन्तन कार्डमा देखाइने।';

  @override
  String get aiLimitTitle => 'चिन्तनहरू';

  @override
  String get aiLimitSubtitle =>
      'प्रत्येक उत्तरले 1 चिन्तन प्रयोग गर्छ। स्ट्यान्डर्डमा प्रारम्भिक चिन्तनहरू समावेश छन्। Wilaya ले प्रिमियम श्रेणीहरू अनलक गर्छ र टप-अप सक्षम बनाउँछ।';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total चिन्तनहरू प्रयोग गरियो';
  }

  @override
  String get creditsSectionTitle => 'चिन्तनहरू';

  @override
  String get creditsUsageLabel => 'प्रयोग';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'बाँकी चिन्तनहरू: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'योजना: $plan';
  }

  @override
  String get creditsLoadingLabel => 'लोड हुँदैछ…';

  @override
  String get creditsLoadingLabelDescription =>
      'चिन्तन तथ्याङ्क ल्याइँदै गर्दा देखाइने।';

  @override
  String get creditsTitle => 'चिन्तनहरू';

  @override
  String get creditsSubtitle =>
      'प्रत्येक उत्तरले 1 चिन्तन प्रयोग गर्छ। स्ट्यान्डर्डमा प्रारम्भिक चिन्तनहरू समावेश छन्। Wilaya ले प्रिमियम श्रेणीहरू अनलक गर्छ र टप-अप सक्षम बनाउँछ।';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total चिन्तनहरू प्रयोग गरियो';
  }

  @override
  String get settingsDeleteTitle => 'खाता मेटाउनुहोस्';

  @override
  String get settingsDeleteDescription =>
      'तपाईंको खाता र सम्बन्धित सबै डाटा स्थायी रूपमा मेटाउनुहोस्।';

  @override
  String get settingsDeleteButtonLabel => 'मेरो खाता मेटाउनुहोस्';

  @override
  String get settingsDeleteDialogTitle => 'खाता मेटाउने?';

  @override
  String get settingsDeleteDialogBody =>
      'यो कार्य स्थायी हो र फिर्ता गर्न सकिँदैन।\n\nतपाईंका सबै च्याट, इतिहास र खाता जानकारी मेटाइनेछ।';

  @override
  String get settingsDeleteDialogCancel => 'रद्द गर्नुहोस्';

  @override
  String get settingsDeleteDialogConfirm => 'मेटाउनुहोस्';

  @override
  String get settingsFreeLimitUsedTitle => 'प्रारम्भिक चिन्तनहरू प्रयोग भइसके';

  @override
  String get settingsFreeLimitUsedDescription =>
      'यस डिभाइसका लागि प्रारम्भिक चिन्तनहरू प्रयोग भइसकेका छन्। जारी राख्न Wilaya मा अपग्रेड गर्नुहोस् वा थप चिन्तनहरू किन्नुहोस्।';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'प्रारम्भिक चिन्तनहरू प्रयोग भइसके';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'यस डिभाइसका लागि प्रारम्भिक चिन्तनहरू प्रयोग भइसकेका छन्। जारी राख्न Wilaya मा अपग्रेड गर्नुहोस् वा थप चिन्तनहरू किन्नुहोस्।';

  @override
  String get deviceBoundError =>
      'यो डिभाइस पहिले नै अर्को खातासँग जोडिएको छ। कृपया मूल खाताबाट साइन इन गर्नुहोस्।';

  @override
  String get premiumTitle => 'Wilaya मोड';

  @override
  String get premiumSubtitleBasic => 'Ayara को पूर्ण अनुभव अनलक गर्नुहोस्।';

  @override
  String get premiumSubtitlePremium =>
      'तपाईं अहिले Wilaya मा हुनुहुन्छ। थप चिन्तनहरू चाहिन्छ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'हालको योजना: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'चिन्तनहरू: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'अहिले खरिद उपलब्ध छैन।';

  @override
  String get premiumSignInToPurchase =>
      'चिन्तनहरू किन्न वा Wilaya अनलक गर्न साइन इन गर्नुहोस्।';

  @override
  String get premiumRestorePurchases => 'खरिद पुनःस्थापित गर्नुहोस्';

  @override
  String get premiumProcessing => 'प्रक्रिया हुँदैछ…';

  @override
  String get premiumRestoreHintTitle =>
      'यो वा अर्को डिभाइसमा पहिले नै Wilaya वा चिन्तनहरू किन्नुभएको छ?';

  @override
  String get premiumRestoreHintBody =>
      'यदि देखिँदैन भने आफ्ना खरिदहरू पुनःस्थापित गर्नुहोस्।';

  @override
  String get premiumBuyCredits200 => '200 चिन्तनहरू किन्नुहोस्';

  @override
  String get premiumBuyCredits400 => '400 चिन्तनहरू किन्नुहोस्';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya मोडमा अपग्रेड गर्नुहोस्';

  @override
  String get premiumTopupHint =>
      'Wilaya सँग, जब आवश्यक पर्छ तब अतिरिक्त चिन्तनहरू टप-अप गर्न सक्नुहुन्छ।';

  @override
  String get premiumUpgradeCta => 'अपग्रेड गर्नुहोस्';

  @override
  String get premiumRequiredForCategory =>
      'यो श्रेणी केवल Wilaya प्रयोगकर्ताहरूका लागि उपलब्ध छ। सबै प्रिमियम सामग्री अनलक गर्न सेटिङ्समा अपग्रेड गर्नुहोस्।';

  @override
  String get premiumBenefitsBasic =>
      'थप चिन्तनहरू प्राप्त गर्न, प्रिमियम श्रेणीहरूमा पहुँच पाउन, र जब आवश्यक हुन्छ तब जारी राख्न Wilaya अनलक गर्नुहोस्।';

  @override
  String get premiumBenefitsPremium =>
      'तपाईं अहिले Wilaya मोडमा हुनुहुन्छ। यदि चिन्तनहरू कम हुँदैछन् भने, केही थप चिन्तनहरू थप्नुहोस् र अवरोध बिना जारी राख्नुहोस्।';

  @override
  String get premiumButtonBecomePremium => 'Wilaya अनलक गर्नुहोस्';

  @override
  String get premiumButtonTopup1000 => '1000 चिन्तनहरू थप्नुहोस्';

  @override
  String get premiumBadge => 'Wilaya सक्रिय';

  @override
  String get premiumLoadingStore => 'स्टोर लोड हुँदैछ…';

  @override
  String get premiumProductNotAvailable =>
      'यो उत्पादन अझै स्टोरमा उपलब्ध छैन। कृपया पछि फेरि प्रयास गर्नुहोस्।';

  @override
  String get premiumPurchaseError =>
      'खरिदमा केही समस्या आयो। कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String get premiumBuyCredits100 => '100 चिन्तनहरू थप्नुहोस्';

  @override
  String get premiumFeatureLocked =>
      'यो सुविधा पहुँच गर्न Wilaya अनलक गर्नुहोस्।';

  @override
  String get lockedCategoriesHint =>
      'केही श्रेणीहरू केवल Wilaya सदस्यहरूका लागि सुरक्षित छन्। आफ्नो यात्राका हरेक चिन्तन अन्वेषण गर्न तिनलाई अनलक गर्नुहोस्।';

  @override
  String get freePlanBlockedTitle => 'तपाईंका प्रारम्भिक चिन्तनहरू सकिएका छन्';

  @override
  String get freePlanBlockedBody =>
      'तपाईं स्ट्यान्डर्ड योजनामा हुनुहुन्छ र प्रारम्भिक चिन्तनहरूको सीमा पुगिसक्नुभएको छ। जारी राख्न — र प्रिमियम श्रेणीहरू अनलक गर्न — Wilaya मा अपग्रेड गर्नुहोस्।';

  @override
  String get freePlanBlockedCtaGoPremium => 'तलका Wilaya विकल्पहरू हेर्नुहोस्';

  @override
  String get graceBlockedTitle => 'तपाईंका प्रारम्भिक चिन्तनहरू सकिएका छन्';

  @override
  String get graceBlockedBody =>
      'तपाईं स्ट्यान्डर्ड योजनामा हुनुहुन्छ र प्रारम्भिक चिन्तनहरूको सीमा पुगिसक्नुभएको छ। जारी राख्न — र प्रिमियम श्रेणीहरू अनलक गर्न — Wilaya मा अपग्रेड गर्नुहोस्।';

  @override
  String get graceBlockedCtaGoPremium => 'तलका Wilaya विकल्पहरू हेर्नुहोस्';

  @override
  String get rateGuestMustSignIn =>
      'Ayara र आफ्ना चिन्तनहरू प्रयोग गर्न साइन इन गर्नुहोस्।';

  @override
  String get guestNoCreditsTitle => 'अतिथि मोड';

  @override
  String get guestNoCreditsBody =>
      'अतिथिका रूपमा तपाईं एप ब्राउज गर्न सक्नुहुन्छ, तर चिन्तनहरू प्रयोग गर्न सक्नुहुन्न। पछि सेटिङ्समा लग इन गरेर चिन्तनहरू प्रयोग गर्नुहोस् र खरिदहरू अनलक गर्नुहोस्।';

  @override
  String get guestDialogContinue => 'जारी राख्नुहोस्';

  @override
  String get guestDialogLoginInstead => 'बरु लग इन गर्नुहोस्';

  @override
  String get optionalLabel => 'वैकल्पिक';

  @override
  String get accountDeleteSuccessTitle => 'खाता मेटाइयो';

  @override
  String get accountDeleteSuccessBody =>
      'तपाईंको खाता र सम्बन्धित डाटा सफलतापूर्वक मेटाइयो।';

  @override
  String get accountDeleteSuccessClose => 'बन्द गर्नुहोस्';

  @override
  String get accountDeleteErrorTitle => 'खाता मेटाउन सकिएन';

  @override
  String get accountDeleteErrorClose => 'ठीक छ';

  @override
  String get accountDeleteReauthCancelled =>
      'पुनः प्रमाणीकरण रद्द भयो। कृपया फेरि साइन इन गरेर पुनः मेटाउने प्रयास गर्नुहोस्।';

  @override
  String get accountDeleteReauthRequired =>
      'खाता मेटाउन हालसालैको लगइन आवश्यक छ। कृपया साइन आउट गर्नुहोस्, फेरि साइन इन गर्नुहोस् र पुनः प्रयास गर्नुहोस्।';

  @override
  String get settingsDeletePermanentWarning =>
      'यो कार्य स्थायी हो र फिर्ता गर्न सकिँदैन। तपाईंको खातासँग सम्बन्धित सबै डाटा मेटाइनेछ।';

  @override
  String get dailyGraceTitle => 'दैनिक मार्गदर्शन';

  @override
  String get dailyGraceScriptureLabel => 'आजको आयत';

  @override
  String get dailyGraceSaintLabel => 'हप्ताको विद्वान';

  @override
  String get dailyGraceReflectionLabel => 'साँझको चिन्तन';

  @override
  String get dailyGraceCopiedToast => 'आयत क्लिपबोर्डमा कपी गरियो';

  @override
  String get locationConsentLabel =>
      'Qibla दिशा र नमाज समयका लागि Ayara लाई मेरो स्थान प्रयोग गर्न अनुमति दिनुहोस्';

  @override
  String get locationConsentHint =>
      'यो केवल यी सुविधाहरूका लागि प्रयोग हुन्छ। तपाईंको स्थान कहिल्यै साझा वा सुरक्षित गरिँदैन।';

  @override
  String get askPageTitle => 'Ayara लाई सोध्नुहोस्';

  @override
  String get askPageDescription =>
      'ईमान, नमाज, जीवन वा इस्लामिक अभ्यासबारे जे पनि सोध्नुहोस् र कुरआन तथा अहल अल-बैतका शिक्षामा आधारित मार्गदर्शन प्राप्त गर्नुहोस्।';

  @override
  String get askPageInputHint => 'आफ्नो प्रश्न यहाँ टाइप गर्नुहोस्…';

  @override
  String get askPageSubmitCta => 'सोध्नुहोस्';

  @override
  String get askPageInputEmptyError => 'कृपया पहिले एउटा प्रश्न लेख्नुहोस्।';

  @override
  String get askResultYourQuestion => 'तपाईंको प्रश्न';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'मक्कातर्फ उन्मुख';

  @override
  String get qiblaCompassInstruction =>
      'सुनौलो सुई माथितिर देखिने सम्म आफ्नो फोन घुमाउनुहोस्।\nत्यो दिशा Qibla (मक्का) तर्फ संकेत गर्छ।';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS सङ्केत कमजोर छ। बाहिर जानुहोस् र फेरि प्रयास गर्नुहोस् थिच्नुहोस्।';

  @override
  String get qiblaRetry => 'फेरि प्रयास गर्नुहोस्';

  @override
  String get qiblaTitle => 'Qibla दिशा';

  @override
  String qiblaDistanceLabel(String km) {
    return 'मक्कासम्म $km किमी';
  }

  @override
  String get qiblaLocationNeededTitle => 'स्थान आवश्यक छ';

  @override
  String get qiblaLocationNeededBody =>
      'तपाईं जहाँ भए पनि त्यहाँबाट मक्कास्थित काबाको दिशा गणना गर्न Ayara लाई स्थान पहुँच दिनुहोस्।';

  @override
  String get qiblaOpenSettings => 'सेटिङ्स खोल्नुहोस्';

  @override
  String get qiblaCompassLoading => 'तपाईंको स्थान पत्ता लगाउँदै…';

  @override
  String get qiblaTowardMecca => 'मक्कातर्फ';

  @override
  String get prayerTimesTitle => 'नमाज समयहरू';

  @override
  String get prayerTimesFajr => 'फज्र';

  @override
  String get prayerTimesDhuhr => 'जुहर';

  @override
  String get prayerTimesAsr => 'असर';

  @override
  String get prayerTimesMaghrib => 'मगरिब';

  @override
  String get prayerTimesIsha => 'इशा';

  @override
  String get prayerTimesLocationNeededTitle => 'स्थान आवश्यक छ';

  @override
  String get prayerTimesLocationNeededBody =>
      'तपाईंको सहरका लागि सही नमाज समयहरू गणना गर्न Ayara लाई स्थान पहुँच दिनुहोस्।';

  @override
  String get prayerTimesNextLabel => 'अर्को';

  @override
  String get prayerTimesDoneLabel => 'सम्पन्न';

  @override
  String get monthlyPrayerTimesTitle => 'मासिक नमाज समयहरू';

  @override
  String get monthlyPrayerTimesViewButton => 'पूरा महिना हेर्नुहोस्';

  @override
  String get monthlyPrayerTimesNextMonth => 'अर्को महिना';

  @override
  String get monthlyPrayerTimesDayHeader => 'दिन';

  @override
  String get sharePrayerTimes => 'नमाज समयहरू साझा गर्नुहोस्';

  @override
  String get notificationsSectionTitle => 'सूचनाहरू';

  @override
  String get notificationsSectionSubtitle =>
      'नमाज रिमाइन्डरहरू, क्यालेन्डर कार्यक्रमहरू र अन्य';

  @override
  String get dailyReflectionReminderTitle => 'दैनिक चिन्तन';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara खोल्न र आफ्नो ईमानसँग जोडिनको लागि कोमल दैनिक सम्झना।';

  @override
  String get dailyReflectionReminderEnable => 'दैनिक रिमाइन्डर सक्षम गर्नुहोस्';

  @override
  String get dailyReflectionReminderTimeLabel => 'रिमाइन्डर समय';

  @override
  String get prayerNotificationsTitle => 'नमाज रिमाइन्डरहरू';

  @override
  String get prayerNotificationsDescription =>
      'दिनभर जोडिएको महसुस गर्न प्रत्येक नमाज समयअघि कोमल रिमाइन्डर प्राप्त गर्नुहोस्।';

  @override
  String get prayerNotificationsEnable => 'नमाज रिमाइन्डरहरू सक्षम गर्नुहोस्';

  @override
  String get prayerNotificationsOpenSettings => 'सूचना सेटिङ्स खोल्नुहोस्';

  @override
  String get prayerNotificationsDenied => 'सूचनाहरू बन्द छन्';

  @override
  String get prayerNotificationsDeniedHint =>
      'नमाज समयका रिमाइन्डरहरू प्राप्त गर्न सेटिङ्समा गएर Ayara का लागि सूचनाहरू अनुमति दिनुहोस्।';

  @override
  String get notificationsConsentLabel =>
      'नमाज समयहरूका लागि सूचनाहरू अनुमति दिनुहोस्';

  @override
  String get prayerNotifTitleFajr => '🌅 फज्र — बिहानको नमाज';

  @override
  String get prayerNotifBodyFajr =>
      'फज्र अहल अल-बैतको बिहानको नमाज हो। इमाम अली (AS) ले भन्नुभयो: बिहानको नमाजलाई त्यसरी जोगाउनुहोस् जसरी तपाईं आफ्नो सबैभन्दा बहुमूल्य अमानत जोगाउनुहुन्छ। उठ्नुहोस्, आफूलाई पाक गर्नुहोस् र अल्लाहको सामु उभिनुहोस्।';

  @override
  String get prayerNotifTitleDhuhr => '☀️ जुहर — मध्याह्नको नमाज';

  @override
  String get prayerNotifBodyDhuhr =>
      'अहल अल-बैतका इमामहरूले स्मरणका प्रत्येक क्षणलाई महत्त्व दिएका छन्। आफ्नो दिनलाई केही बेर रोक्नुहोस्, आवश्यक परे जुहरलाई असरसँग मिलाउनुहोस्, र आफ्नो हृदयलाई फेरि अल्लाहतर्फ फर्काउनुहोस्।';

  @override
  String get prayerNotifTitleAsr => '🌤️ असर — दिउँसोपछिको नमाज';

  @override
  String get prayerNotifBodyAsr =>
      'नमाजको रक्षा गर्नुहोस्, किनकि यही तपाईं र अल्लाहबीचको वाचा हो। असरको समय आएको छ — यसलाई स्मरणविना बित्न नदिनुहोस्।';

  @override
  String get prayerNotifTitleMaghrib => '🌇 मगरिब — सूर्यास्तको नमाज';

  @override
  String get prayerNotifBodyMaghrib =>
      'सूर्य अस्ताएको छ — यस्तो क्षण जसलाई अहल अल-बैतले दुआका लागि पवित्र माने। मगरिब अदा गर्नुहोस् र रात सुरु हुनु अघि अल्लाहसमक्ष दुआका लागि आफ्ना हात उठाउनुहोस्।';

  @override
  String get prayerNotifTitleIsha => '🌙 इशा — रातको नमाज';

  @override
  String get prayerNotifBodyIsha =>
      'आफ्नो दिन अल्लाहको साथमा समाप्त गर्नुहोस्। इमामहरूले इशा पछि सलात अल-लैल सिफारिस गर्नुभएको छ — तर पहिले आफ्नो इशा पूरा गर्नुहोस् र दिनलाई उहाँको सम्झनाले समाप्त गर्नुहोस्।';

  @override
  String get outOfReflectionsBannerText =>
      'तपाईंले आफ्ना सबै चिन्तनहरू प्रयोग गरिसक्नुभएको छ';

  @override
  String get outOfReflectionsBannerCta => 'थप प्राप्त गर्नुहोस्';

  @override
  String get dhikrPageTitle => 'जिक्र';

  @override
  String get dhikrTapToCount => 'गन्नका लागि घेरोमा ट्याप गर्नुहोस्';

  @override
  String get dhikrResetButton => 'रिसेट गर्नुहोस्';

  @override
  String get dhikrComplete => 'माशाअल्लाह';

  @override
  String get dhikrCompleteMessage =>
      'तपाईंले अल्लाहका 100 स्मरणहरू पूरा गर्नुभएको छ। ती तपाईंको हृदयका लागि प्रकाश बनून्।';

  @override
  String get disclaimerTitle => 'यस एपको मार्गदर्शनबारे';

  @override
  String get disclaimerBody =>
      'Ayara ले तपाईंको व्यक्तिगत ईमान यात्रालाई समर्थन गर्न इस्लामिक चिन्तन, सम्झना र आध्यात्मिक सामग्री प्रदान गर्छ, जुन कुरआन र अहल अल-बैतका शिक्षामा आधारित छ। यो सामग्री केवल सामान्य जानकारी र प्रेरणाका उद्देश्यका लागि प्रदान गरिएको हो।\n\nAyara योग्य विद्वानको विकल्प होइन।\nयस एपमा रहेको मार्गदर्शन योग्य इस्लामिक विद्वान, मरजा\', वा धर्मशास्त्रमा प्रशिक्षित शिक्षकको विकल्प होइन। शिया इस्लाममा धार्मिक मार्गदर्शन जाफरी फिक्ह र जीवित मरजाको पालना गर्ने परम्परामा आधारित हुन्छ — यस्तो योग्य फकिह जसका निर्णयहरूले विश्वासीहरूलाई धार्मिक अभ्यासमा मार्गदर्शन गर्छन्। यदि तपाईंलाई धार्मिक नियम, हलाल र हराम, वा व्यक्तिगत धार्मिक कर्तव्यबारे प्रश्न छन् भने, कृपया योग्य मरजा\' वा आफ्नै समुदायका विद्वानसँग सल्लाह लिनुहोस्।\n\nयस एपले धार्मिक फैसला जारी गर्दैन।\nAyara ले फिक्ह वा व्यक्तिगत धार्मिक कर्तव्यसम्बन्धी कुनै आधिकारिक निर्णय गर्दैन। यहाँको कुनै पनि सामग्रीलाई फत्वा वा बाध्यकारी धार्मिक निर्देशनका रूपमा लिनु हुँदैन।\n\nअहल अल-बैतको केन्द्रीयता।\nशिया इस्लाममा, पैगम्बर मुहम्मद ﷺ र उहाँको पवित्र परिवार — अहल अल-बैत — कुरआनपछि इस्लामी समुदायका आधिकारिक मार्गदर्शक हुन्। अहल अल-बैतका बाह्र इमामहरू इस्लामिक शिक्षाका दिव्य रूपमा नियुक्त व्याख्याकार हुन्। यस एपको सामग्रीले यही परम्परालाई इमानदारीपूर्वक सम्मान र प्रतिबिम्बित गर्ने प्रयास गर्छ।\n\nसमुदायको महत्त्व।\nयस एपको उद्देश्य तपाईंलाई ईमानसँग जोडिन प्रेरित गर्नु हो, साथै तपाईंको स्थानीय मस्जिद, इस्लामिक केन्द्र, र धार्मिक समुदायको महत्वपूर्ण भूमिकालाई गहिरो सम्मान गर्नु पनि हो। हामी तपाईंलाई आफ्ना नजिकका योग्य शिक्षकहरूसँग जोडिइरहन र सिकिरहन प्रोत्साहन गर्छौं।';

  @override
  String get disclaimerClose => 'मैले बुझेँ';

  @override
  String get disclaimerInfoTooltip => 'यस एपको मार्गदर्शनबारे';

  @override
  String get disclaimerSettingsSubtitle =>
      'केवल सामान्य जानकारीका उद्देश्यका लागि। पूरा अस्वीकरण पढ्न ट्याप गर्नुहोस्।';

  @override
  String get disclaimerSectionHeader => 'मार्गदर्शन अस्वीकरण';

  @override
  String get navHome => 'होम';

  @override
  String get navReflect => 'चिन्तन';

  @override
  String get navDuas => 'दुआहरू';

  @override
  String get navCalendar => 'क्यालेन्डर';

  @override
  String get dashboardToday => 'आज';

  @override
  String get dashboardComingUp => 'आगामी';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दिन',
      one: 'दिन',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'छिटो पहुँच';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'जिक्र';

  @override
  String get quickActionDailyGrace => 'मार्गदर्शन';

  @override
  String get quickActionPrayerTimes => 'नमाज समयहरू';

  @override
  String get askAyaraTitle => 'Ayara लाई सोध्नुहोस्';

  @override
  String get askAyaraSubtitle =>
      'कुनै पनि इस्लामिक प्रश्न सोध्नुहोस् र विचारशील, मार्गदर्शित उत्तर प्राप्त गर्नुहोस्।';

  @override
  String get askAyaraHint => 'जस्तै: रमजानको महत्त्व के हो?';

  @override
  String get askAyaraSubmit => 'सोध्नुहोस्';

  @override
  String get wisdomOfTheDayTitle => 'आजको ज्ञान';

  @override
  String get calendarScreenTitle => 'इस्लामिक क्यालेन्डर';

  @override
  String get calendarUpcomingOccasions => 'आगामी अवसरहरू';

  @override
  String get calendarOccasionRemindersTitle => 'अवसर रिमाइन्डरहरू';

  @override
  String get calendarOccasionRemindersHint =>
      'प्रत्येक अवसरको अघिल्लो साँझ सूचना पठाइन्छ';

  @override
  String get calendarNotifPermissionDenied =>
      'सूचना अनुमति अस्वीकृत भयो। यसलाई आफ्नो डिभाइस सेटिङ्समा सक्षम गर्नुहोस्।';

  @override
  String get calendarNoEvents => 'कुनै आगामी कार्यक्रम फेला परेन।';

  @override
  String get calendarAddToPhone => 'फोन क्यालेन्डरमा थप्नुहोस्';

  @override
  String get calendarAddedToPhone => 'क्यालेन्डरमा थपियो';

  @override
  String get calendarCountdownToday => 'आज';

  @override
  String get calendarCountdownTomorrow => 'भोलि';

  @override
  String calendarCountdownDays(int days) {
    return '$days दिनमा';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'जन';

  @override
  String get calendarMonthFeb => 'फेब';

  @override
  String get calendarMonthMar => 'मार्च';

  @override
  String get calendarMonthApr => 'अप्रि';

  @override
  String get calendarMonthMay => 'मे';

  @override
  String get calendarMonthJun => 'जुन';

  @override
  String get calendarMonthJul => 'जुल';

  @override
  String get calendarMonthAug => 'अग';

  @override
  String get calendarMonthSep => 'सेप्टे';

  @override
  String get calendarMonthOct => 'अक्टो';

  @override
  String get calendarMonthNov => 'नोभे';

  @override
  String get calendarMonthDec => 'डिसे';

  @override
  String get calendarSeasonMuharramEarly =>
      'मुहर्रमका दिनहरू — कर्बलालाई स्मरण गर्नुहोस्';

  @override
  String get calendarSeasonAshura => 'आशुरा — या हुसैन (AS)';

  @override
  String get calendarSeasonMuharramLate => 'मुहर्रम — शोक र चिन्तनका दिनहरू';

  @override
  String get calendarSeasonArbaeen => 'अरबईन — हुसैनका चालीस दिन';

  @override
  String get calendarSeasonRoadToArbaeen => 'अरबईनको बाटो';

  @override
  String get calendarSeasonMabath => 'मबअथ मुबारक — वह्यीको प्रभात';

  @override
  String get calendarSeasonMidShaban =>
      'मध्य शाबान — इमाम अल-महदी (AJ) को जन्मदिन';

  @override
  String get calendarSeasonRamadan => 'रमजान मुबारक — कुरआनको महिना';

  @override
  String get calendarSeasonGhadir => 'ईद अल-गदिर मुबारक!';

  @override
  String get hijriMonth1 => 'मुहर्रम';

  @override
  String get hijriMonth2 => 'सफर';

  @override
  String get hijriMonth3 => 'रबी अल-अव्वल';

  @override
  String get hijriMonth4 => 'रबी अल-थानी';

  @override
  String get hijriMonth5 => 'जुमादा अल-अव्वल';

  @override
  String get hijriMonth6 => 'जुमादा अल-थानी';

  @override
  String get hijriMonth7 => 'रजब';

  @override
  String get hijriMonth8 => 'शाबान';

  @override
  String get hijriMonth9 => 'रमजान';

  @override
  String get hijriMonth10 => 'शव्वाल';

  @override
  String get hijriMonth11 => 'धुल-कादा';

  @override
  String get hijriMonth12 => 'धुल-हिज्जा';

  @override
  String get duasScreenTitle => 'दुआहरू र ज़ियारत';

  @override
  String get duasSearchHint => 'दुआ, ज़ियारत खोज्नुहोस्…';

  @override
  String get duasFilterAll => 'सबै';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दुआहरू र ज़ियारत',
      one: '$count दुआ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'कुनै दुआ फेला परेन।';

  @override
  String get duaCategoryDaily => 'दैनिक';

  @override
  String get duaCategoryWeekly => 'साप्ताहिक';

  @override
  String get duaCategoryOccasions => 'अवसरहरू';

  @override
  String get duaCategoryZiyarat => 'ज़ियारत';

  @override
  String get duaCategoryTasbih => 'तसबिह';

  @override
  String get eventTypeBirth => 'जन्म';

  @override
  String get eventTypeMartyrdom => 'शहादत';

  @override
  String get eventTypeOccasion => 'अवसर';

  @override
  String get duaCopyTooltip => 'अनुवाद कपी गर्नुहोस्';

  @override
  String get duaToggleTransliteration => 'उच्चारण-लेखन';

  @override
  String get duaToggleTranslation => 'अनुवाद';

  @override
  String get duaAskAiLabel => 'यो दुआ बुझाउन Ayara लाई सोध्नुहोस्';

  @override
  String get duaAskAiLockedLabel => 'Ayara लाई सोध्नुहोस् (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara का व्याख्याहरू केवल Wilaya सदस्यहरूका लागि उपलब्ध छन्। सेटिङ्समा अपग्रेड गर्नुहोस्।';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" बारे Ayara लाई सोध्नुहोस् — चाँडै आउँदैछ!';
  }

  @override
  String get duaCopiedToast => 'दुआ क्लिपबोर्डमा कपी गरियो।';

  @override
  String get tasbihAllahuAkbarMeaning => 'अल्लाह सबैभन्दा महान हुनुहुन्छ';

  @override
  String get tasbihAlhamdulillahMeaning => 'सबै प्रशंसा अल्लाहकै लागि हो';

  @override
  String get tasbihSubhanallahMeaning => 'अल्लाह पवित्र हुनुहुन्छ';

  @override
  String get tasbihResetTooltip => 'रिसेट';

  @override
  String get tasbihCompleteTitle => 'तसबिह पूरा भयो';

  @override
  String get tasbihCompleteMessage => 'अल्लाहले तपाईंको जिक्र स्वीकार गरून्।';

  @override
  String get tasbihTapHint => 'गन्नका लागि जहाँ पनि ट्याप गर्नुहोस्';

  @override
  String get tasbihatScreenTitle => 'नमाज मार्गदर्शिका';

  @override
  String get tasbihatScreenSubtitle => 'नमाजका तस्बीहहरू';

  @override
  String get tasbihatScreenDescription =>
      'दैनिक नमाजको क्रममा र पछि पढिने तस्बीहहरूको पूर्ण मार्गदर्शिका — अहल अल-बैत (अ) को परम्परा अनुसार।';

  @override
  String get tasbihatArba3Title => 'तस्बीहात अल-अर्बअ';

  @override
  String get tasbihatArba3Subtitle => 'तेस्रो र चौथो रकअतमा पढिन्छ';

  @override
  String get tasbihatArba3Info =>
      'शिया फिक्ह अनुसार, जुहर, असर, मगरिब र इशाको तेस्रो र चौथो रकअतमा तस्बीहात अल-अर्बअले सूरह फातिहाको स्थान लिन्छ। यसलाई एक पटक पढ्नु वाजिब हो, र तीन पटक पढ्नु मुस्तहब हो।';

  @override
  String get tasbihatArba3Translation =>
      'अल्लाह पवित्र हुनुहुन्छ · सबै प्रशंसा अल्लाहकै लागि हो\nअल्लाह बाहेक कुनै पूज्य छैन · अल्लाह सबैभन्दा महान हुनुहुन्छ';

  @override
  String get tasbihatArba3CompleteTitle => 'पाठ पूरा भयो';

  @override
  String get tasbihatArba3CompleteMessage => 'तपाईंको नमाज स्वीकार होस् — आमीन';

  @override
  String get tasbihatArba3TapHint => 'हरेक पाठपछि ट्याप गर्नुहोस्';

  @override
  String get tasbihatZahraSubtitle => 'हरेक नमाजपछि · 100 दाना';

  @override
  String get tasbihatZahraOriginLabel => 'उत्पत्ति';

  @override
  String get tasbihatZahraHadith =>
      'हजरत फातिमा अल-ज़हरा (स.अ.) ले पैगम्बर ﷺ सँग सेवक माग्नुभयो। उहाँले भन्नुभयो: \"के म तिमीलाई त्यसभन्दा राम्रो कुरा नबताऊँ? हरेक नमाजपछि 33 पटक सुभानल्लाह, 33 पटक अल्हम्दुलिल्लाह, र 34 पटक अल्लाहु अकबर पढ। त्यो तिमीका लागि सेवकभन्दा राम्रो हो।\"';

  @override
  String get tasbihatZahraHadithSource => '— बिहार अल-अनवार, खण्ड 85';

  @override
  String get tasbihatZahraOpenCounter => 'तसबिह काउन्टर खोल्नुहोस्';

  @override
  String get tasbihatDuasTitle => 'सिफारिस गरिएका दुआहरू';

  @override
  String get tasbihatDuasSubtitle => 'आफ्नो नमाज पूरा गरेपछि';

  @override
  String get tasbihatDuaAyatKursiTitle => 'आयतुल कुर्सी';

  @override
  String get tasbihatDuaAyatKursiWhen => 'हरेक फर्ज़ नमाजपछि';

  @override
  String get tasbihatDuaAyatKursiSource => 'सूरह अल-बकरा 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'जो कोही हरेक फर्ज़ नमाजपछि आयतुल कुर्सी पढ्छ, उसको र जन्नतबीच मृत्यु बाहेक केही बाँकी रहँदैन। इमाम अल-बाकिर (अ) ले भन्नुभयो कि यो कुरआनका सबैभन्दा महान आयतहरूमध्ये एक हो।';

  @override
  String get tasbihatDuaSalawatTitle => 'सलावात';

  @override
  String get tasbihatDuaSalawatWhen => 'हरेक नमाजपछि · सबै दुआहरू पूर्ण गर्छ';

  @override
  String get tasbihatDuaSalawatSource => 'इमाम अल-सादिक (अ) — अल-काफी';

  @override
  String get tasbihatDuaSalawatNote =>
      'पैगम्बर ﷺ र उहाँको पवित्र परिवार (आल मुहम्मद) माथि सलाम पठाउनु हरेक दुआलाई पूर्ण गर्न सिफारिस गरिएको छ। इमाम अल-सादिक (अ) ले भन्नुभयो: \"मुहम्मद र उहाँको परिवारमाथि सलावात नपठाएसम्म हरेक दुआ रोकिएको हुन्छ।\"';

  @override
  String get tasbihatDuaFarajTitle => 'दुआ अल-फराज';

  @override
  String get tasbihatDuaFarajWhen => 'हरेक नमाजपछि · हाम्रो समयका इमामका लागि';

  @override
  String get tasbihatDuaFarajSource =>
      'इमाम अल-हसन अल-असकरी (अ) ले सिकाउनुभएको';

  @override
  String get tasbihatDuaFarajNote =>
      'बारौँ इमाम, इमाम अल-महदी (अ.फ.), को पुनःप्रकटताका लागि दुआ, जुन उहाँका पिताले सिकाउनुभएको थियो। शिया विश्वासीहरूले जीवित इमामप्रतिको भक्तिका रूपमा हरेक नमाजपछि यसलाई दैनिक पढ्छन्।';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'हजरत फातिमाको तसबिह';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'मगरिब र इशा पछि · विशेष रूपमा सिफारिस गरिएको';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'इमाम अल-बाकिर (अ) — बिहार अल-अनवार';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'इमाम अल-बाकिर (अ) ले भन्नुभयो कि सुत्नुअघि इशा पछि तसबिह अल-ज़हरा पढ्नु 1000 रकअत नफल नमाजभन्दा श्रेष्ठ हो। यसको प्रकाश आकाशतर्फ उठ्छ।';

  @override
  String get tasbihFatimaGiftPre => 'पैगम्बरको उपहार';

  @override
  String get tasbihFatimaGiftPost => 'हरेक नमाजपछि पढिन्छ';

  @override
  String get prayerTrackerTitle => 'नमाज ट्र्याकर';

  @override
  String get prayerTrackerPrayed => 'नमाज पढियो';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count दिनको निरन्तरता';
  }

  @override
  String get prayerTrackerAllComplete =>
      'आजका सबै नमाजहरू पूरा भए। अल्लाहले स्वीकार गरून्।';

  @override
  String get dhikrTrackerTitle => 'तसबिह अल-ज़हरा';

  @override
  String get dhikrTrackerCompletedToday => 'आज पूरा भयो';

  @override
  String get dhikrTrackerNotDoneToday => 'आज गरिएको छैन';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count दिनको निरन्तरता';
  }

  @override
  String get dhikrReminderTitle => 'तसबिह रिमाइन्डर';

  @override
  String get dhikrReminderDescription =>
      'आफ्नो तसबिह अल-ज़हरा (SA) पढ्नको लागि कोमल दैनिक सम्झना।';

  @override
  String get dhikrReminderEnable => 'तसबिह रिमाइन्डर सक्षम गर्नुहोस्';

  @override
  String get dhikrReminderTimeLabel => 'रिमाइन्डर समय';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'दैनिक हदीस';

  @override
  String get hadithLabelArabic => 'अरबी';

  @override
  String get hadithLabelTranslation => 'अनुवाद';

  @override
  String get hadithBadge => 'हदीस';

  @override
  String get hadithShare => 'यो हदीस साझा गर्नुहोस्';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara मार्फत';
  }

  @override
  String get hadithNavPrevious => 'अघिल्लो';

  @override
  String get hadithNavNext => 'अर्को';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '१४ मासूमीन';

  @override
  String get imamsScreenSubtitle =>
      'पैगम्बर, हजरत फातिमा, र बाह्र इमाम — इस्लामका निष्पाप मार्गदर्शकहरू';

  @override
  String get imamLabelBorn => 'जन्म';

  @override
  String get imamLabelMartyrdom => 'शहादत';

  @override
  String get imamLabelStatus => 'स्थिति';

  @override
  String get imamSectionBiography => 'जीवनी';

  @override
  String get imamSectionFamousSaying => 'प्रसिद्ध वचन';

  @override
  String get imamRoleProphet => 'अन्तिम पैगम्बर';

  @override
  String get imamRoleInfallible => 'मासूम';

  @override
  String get imamOrdinal1 => 'पहिलो इमाम';

  @override
  String get imamOrdinal2 => 'दोस्रो इमाम';

  @override
  String get imamOrdinal3 => 'तेस्रो इमाम';

  @override
  String get imamOrdinal4 => 'चौथो इमाम';

  @override
  String get imamOrdinal5 => 'पाँचौँ इमाम';

  @override
  String get imamOrdinal6 => 'छैटौँ इमाम';

  @override
  String get imamOrdinal7 => 'सातौँ इमाम';

  @override
  String get imamOrdinal8 => 'आठौँ इमाम';

  @override
  String get imamOrdinal9 => 'नवौँ इमाम';

  @override
  String get imamOrdinal10 => 'दसौँ इमाम';

  @override
  String get imamOrdinal11 => 'एघारौँ इमाम';

  @override
  String get imamOrdinal12 => 'बाह्रौँ इमाम';

  @override
  String get duaAudioScreenTitle => 'दुआहरू सुन्नुहोस्';

  @override
  String get duaAudioScreenSubtitle =>
      'सुन्नका लागि कुनै दुआ छान्नुहोस्। प्ले वा पज गर्न टाइलमा ट्याप गर्नुहोस्।';

  @override
  String get duaAudioComingSoonMessage =>
      'यो दुआको अडियो आगामी अपडेटमा उपलब्ध हुनेछ।';

  @override
  String get duaAudioClose => 'बन्द गर्नुहोस्';

  @override
  String get duaAudioError =>
      'अडियो लोड गर्न सकिएन। कृपया आफ्नो कनेक्सन जाँच गर्नुहोस्।';

  @override
  String get duaAudioMetaTransmittedBy => 'रिवायत गर्ने';

  @override
  String get duaAudioMetaOccasion => 'अवसर';

  @override
  String get duaAudioMetaDuration => 'अवधि';

  @override
  String get quickActionDailyHadith => 'दैनिक हदीस';

  @override
  String get quickAction14Masumeen => '१४ मासूमीन';

  @override
  String get quickActionListenDuas => 'सुन्नुहोस्';

  @override
  String get quickActionTasbihat => 'नमाज मार्गदर्शिका';

  @override
  String get pilgrimageSectionTitle => 'पवित्र यात्रा';

  @override
  String get pilgrimageSectionSubtitle =>
      'हज र उमराहका लागि पूर्ण मार्गदर्शिका — मक्कास्थित अल्लाहको पवित्र घरतर्फको यात्रा';

  @override
  String get hajjCardTitle => 'हज';

  @override
  String get hajjCardSubtitle => 'इस्लामको पाँचौँ स्तम्भ';

  @override
  String get hajjCardDescription =>
      'महान वार्षिक यात्रा — सक्षम प्रत्येक मुसलमानका लागि जीवनमा एकपटक अनिवार्य';

  @override
  String get hajjScreenTitle => 'हज मार्गदर्शिका';

  @override
  String get hajjScreenSubtitle => 'महान यात्राको चरण-दर-चरण मार्गदर्शिका';

  @override
  String get umrahCardTitle => 'उमराह';

  @override
  String get umrahCardSubtitle => 'सानो हज';

  @override
  String get umrahCardDescription =>
      'वर्षको कुनै पनि समयमा गर्न सकिने अत्यन्तै पुण्यमय आध्यात्मिक यात्रा';

  @override
  String get umrahScreenTitle => 'उमराह मार्गदर्शिका';

  @override
  String get umrahScreenSubtitle => 'सानो यात्राको चरण-दर-चरण मार्गदर्शिका';

  @override
  String get pilgrimageStepsTitle => 'कर्मकाण्ड र चरणहरू';

  @override
  String get pilgrimageImportantNotesTitle => 'महत्वपूर्ण नोटहरू';

  @override
  String get pilgrimageDuaTitle => 'यस चरणको लागि दुआ';

  @override
  String get pilgrimageJafariNoteTitle => 'जाफरी फिक्ह नोट';

  @override
  String get pilgrimageComplete => '✓ पूरा';

  @override
  String get pilgrimageMarkDone => 'पूर्णको रूपमा चिह्नित गर्नुहोस्';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done को $total चरणहरू';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes मिनेट';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'शिया तीर्थयात्रीहरू';

  @override
  String get pilgrimageShiaNoteBody =>
      'शिया तीर्थयात्रीहरू परम्परागत रूपमा मदिनामा पनि जान्छन्, जहाँ उनीहरूले मस्जिद अल-नबवीमा पैगम्बर मुहम्मद (SAW) को रौजाको, र जन्नत अल-बक़ीमा इमामहरूको कब्रको ज़ियारत गर्छन्। यी यात्राहरू अत्यन्तै आध्यात्मिक महत्वका हुन्छन् र धेरै शिया यात्रुहरूका लागि यात्राको अभिन्न भाग मानिन्छन्।';

  @override
  String get hajjIntro =>
      'हज इस्लामको पाँचौँ स्तम्भ हो, र शारीरिक तथा आर्थिक रूपमा सक्षम प्रत्येक मुसलमानका लागि जीवनमा एकपटक अनिवार्य छ। धुल-हिज्जा महिनामा गरिने यो यात्रा पैगम्बर इब्राहिम (AS), उहाँका छोरा इस्माइल (AS), र हजरत हाजराको पदचिन्ह पछ्याउँछ। शिया मुसलमानहरूका लागि, हजमा मदिनामा पैगम्बर (SAW) र अहलुल बैतका पवित्र विश्रामस्थलहरूको ज़ियारत गर्ने महान् बरकत पनि समावेश हुन्छ।';

  @override
  String get umrahIntro =>
      'उमराह मक्कातर्फको सानो तीर्थयात्रा हो, र हजभन्दा फरक रूपमा यो वर्षको कुनै पनि समयमा गर्न सकिन्छ। यद्यपि यो अनिवार्य होइन, यसमा अत्यन्त ठूलो आध्यात्मिक प्रतिफल छ र यसलाई अत्यधिक सिफारिस गरिएको इबादत मानिन्छ। यसमा हजसँग साझा गरिएका केही कर्मकाण्डहरू छन्, तर यो छोटो हुन्छ र चार मुख्य कृत्यहरूबाट बनेको हुन्छ।';
}
