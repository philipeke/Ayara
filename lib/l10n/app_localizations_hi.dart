// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'अयारा';

  @override
  String get languageSelectTitle => 'अपनी भाषा चुनें';

  @override
  String get languageSelectSub => 'आप इसे बाद में सेटिंग्स में बदल सकते हैं';

  @override
  String get actionContinue => 'जारी रखें';

  @override
  String get languageSuggestedHeader => 'सुझाए गए';

  @override
  String get languageAllHeader => 'सभी भाषाएँ';

  @override
  String get languageSuggestedBadge => 'सुझाया गया';

  @override
  String get languageSearchHint => 'खोजें…';

  @override
  String get planBasic => 'मानक';

  @override
  String get planPremium => 'विलायत';

  @override
  String get categorySlot01 => 'दैनिक मार्गदर्शन';

  @override
  String get categorySlot02 => 'ईमान और विश्वास';

  @override
  String get categorySlot03 => 'नमाज़ का चिंतन';

  @override
  String get categorySlot04 => 'धैर्य और आशा';

  @override
  String get categorySlot05 => 'क्षमा माँगें';

  @override
  String get categorySlot06 => 'दया और करुणा';

  @override
  String get categorySlot07 => 'विश्वास और शक्ति';

  @override
  String get categorySlot08 => 'कृतज्ञ हृदय';

  @override
  String get categorySlot09 => 'जीवन का उद्देश्य';

  @override
  String get categorySlot10 => 'पारिवारिक रिश्ते';

  @override
  String get categorySlot11 => 'आंतरिक शांति';

  @override
  String get categorySlot12 => 'पैगंबर की बुद्धिमत्ता';

  @override
  String get categorySlot13 => 'अच्छा चरित्र';

  @override
  String get categorySlot14 => 'प्रलोभन का प्रतिरोध';

  @override
  String get categorySlot15 => 'शाम की दुआ';

  @override
  String get categoryCustom => 'व्यक्तिगत चिंतन';

  @override
  String get dhikrMeaningSubhanallah => 'अल्लाह की महिमा है';

  @override
  String get dhikrMeaningAlhamdulillah => 'सभी प्रशंसा अल्लाह के लिए है';

  @override
  String get dhikrMeaningAllahuAkbar => 'अल्लाह सबसे महान है';

  @override
  String get quranVerseHeartAtRest =>
      'निश्चित रूप से, अल्लाह के जिक्र में ही दिलों को शांति मिलती है।';

  @override
  String get promptHint =>
      'इस्लामिक मार्गदर्शन और चिंतन के लिए एक श्रेणी टैप करें';

  @override
  String get currentLanguage => 'वर्तमान भाषा';

  @override
  String get settingsLanguage => 'भाषा सेटिंग्स';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get chooseLanguage => 'अपनी भाषा चुनें';

  @override
  String get continueCta => 'जारी रखें';

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
  String get optionsCta => 'विकल्प';

  @override
  String get newCta => 'नया';

  @override
  String get actionsTitle => 'आप क्या करना चाहते हैं?';

  @override
  String get copy => 'कॉपी करें';

  @override
  String get share => 'साझा करें';

  @override
  String get close => 'बंद करें';

  @override
  String get copiedToast => 'क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String shareSubject(String category) {
    return 'अयारा — $category';
  }

  @override
  String get regenerateErrorTitle => 'नया जवाब तैयार नहीं कर सके';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nक्या आप फिर से कोशिश करना चाहते हैं?';
  }

  @override
  String get cancelCta => 'रद्द करें';

  @override
  String get retryCta => 'फिर से कोशिश करें';

  @override
  String get authTitle => 'अपना खाता बनाएँ';

  @override
  String get continueAsGuest => 'मेहमान के रूप में जारी रखें';

  @override
  String get signInGoogle => 'गूगल के साथ साइन इन करें';

  @override
  String get signInApple => 'ऐप्पल के साथ साइन इन करें';

  @override
  String get signInEmail => 'ईमेल के साथ साइन इन करें';

  @override
  String get upgradeWithApple => 'ऐप्पल के साथ जारी रखें';

  @override
  String get mustAccept =>
      'आपको सेवा की शर्तों को स्वीकार करना चाहिए और गोपनीयता नीति को स्वीकार करना चाहिए।';

  @override
  String get termsLabel => 'मैं सेवा की शर्तों को स्वीकार करता हूँ';

  @override
  String get privacyLabel => 'मैंने गोपनीयता नीति को पढ़ा है';

  @override
  String get marketingOptIn => 'मैं समाचार और ऑफर प्राप्त करने के लिए सहमत हूँ';

  @override
  String get openTerms => 'सेवा की शर्तें';

  @override
  String get openPrivacy => 'गोपनीयता नीति';

  @override
  String get accountSection => 'खाता';

  @override
  String get guestMode => 'मेहमान मोड';

  @override
  String get signedIn => 'साइन इन किया गया';

  @override
  String get upgradeHint => 'अपने चिंतनों को डिवाइस में बचाएँ एक खाता बनाकर।';

  @override
  String get upgradeWithGoogle => 'गूगल के साथ जारी रखें';

  @override
  String get signOut => 'साइन आउट करें';

  @override
  String get snackUpgraded => 'खाता गूगल के साथ अपग्रेड किया गया ✅';

  @override
  String get snackSignedIn => 'गूगल के साथ साइन इन किया गया ✅';

  @override
  String get snackSignedOut => 'साइन आउट किया गया';

  @override
  String get snackSignedInApple => 'ऐप्पल के साथ साइन इन किया गया ✅';

  @override
  String get snackSignedInGoogle => 'गूगल के साथ साइन इन किया गया ✅';

  @override
  String get snackUpgradedApple => 'खाता ऐप्पल के साथ अपग्रेड किया गया ✅';

  @override
  String get snackUpgradedGoogle => 'खाता गूगल के साथ अपग्रेड किया गया ✅';

  @override
  String get historyTitle => 'पिछले चिंतन';

  @override
  String get historyOpenCta => 'पिछले चिंतन';

  @override
  String get historyEmpty => 'अभी तक कोई बचाया गया चिंतन नहीं है।';

  @override
  String get historyDeleteTitle => 'चिंतन हटाएँ?';

  @override
  String get historyDeleteBody => 'यह चयनित आइटम को स्थायी रूप से हटा देगा।';

  @override
  String get deleteCta => 'हटाएँ';

  @override
  String get historyButton => 'पिछले चिंतन';

  @override
  String get historyEmptyTitle => 'अभी तक कोई चिंतन नहीं';

  @override
  String get historyEmptyBody =>
      'पहले कुछ बनाएँ — आपकी बचाई गई वस्तुएँ यहाँ दिखाई देंगी।';

  @override
  String get historyDelete => 'हटाएँ';

  @override
  String get footerTitle => 'विलायत, ईमान और सब्र के साथ';

  @override
  String get footerSubtitle => 'एक नमाज़ के समय';

  @override
  String get genericErrorSnack =>
      'कुछ गलत हुआ — कृपया एक क्षण में फिर से कोशिश करें।';

  @override
  String get upgradeAccountCta =>
      'अपने चिंतनों को डिवाइस में बचाएँ – एक खाता बनाएँ';

  @override
  String get deleteAccount => 'खाता हटाएँ';

  @override
  String get exportData => 'अपना डेटा निर्यात करें';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'धीरे चलें 🐯\nअयारा को अगले के लिए एक क्षण चाहिए…';

  @override
  String get rateDailyLimit =>
      'अभी आपके चिंतन समाप्त हो गए हैं।\nअधिक चिंतन प्राप्त करें या विलायत में अपग्रेड करें।';

  @override
  String get rateCreditsExhausted =>
      'आपने सभी चिंतन का उपयोग कर लिया है।\nजारी रखने के लिए शीर्ष अप करें या विलायत में अपग्रेड करें।';

  @override
  String get rateGraceCreditsExhausted =>
      'अभी आपके चिंतन समाप्त हो गए हैं।\nअधिक चिंतन प्राप्त करें या विलायत में अपग्रेड करें।';

  @override
  String get premiumDescription =>
      'विलायत प्रीमियम सुविधाएँ, भविष्य की श्रेणियाँ, और एक विशेष बैज अनलॉक करता है।';

  @override
  String ratePlanExhausted(String plan) {
    return 'आपके चिंतन अभी खाली हैं। योजना: $plan।';
  }

  @override
  String rateCheckFailed(String message) {
    return 'आपके चिंतन की जांच नहीं कर सके: $message';
  }

  @override
  String get rateCheckGenericError =>
      'आपके चिंतन की जांच करते समय कुछ गलत हुआ।';

  @override
  String get aiFallbackGeneric =>
      'कुछ गलत हुआ — कृपया एक क्षण में फिर से कोशिश करें।';

  @override
  String get limitSectionTitle => 'चिंतन';

  @override
  String get limitTodayLabel => 'उपयोग';

  @override
  String limitCreditsLabel(Object credits) {
    return 'शेष चिंतन: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'योजना: $plan';
  }

  @override
  String get limitLoadingLabel => 'लोड हो रहा है…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'चिंतन';

  @override
  String get aiLimitSubtitle =>
      'प्रत्येक जवाब 1 चिंतन का उपयोग करता है। मानक में प्रारंभिक चिंतन शामिल है। विलायत प्रीमियम श्रेणियाँ अनलॉक करता है और शीर्ष-अप सक्षम करता है।';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total चिंतन का उपयोग किया गया';
  }

  @override
  String get creditsSectionTitle => 'चिंतन';

  @override
  String get creditsUsageLabel => 'उपयोग';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'शेष चिंतन: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'योजना: $plan';
  }

  @override
  String get creditsLoadingLabel => 'लोड हो रहा है…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'चिंतन';

  @override
  String get creditsSubtitle =>
      'प्रत्येक जवाब 1 चिंतन का उपयोग करता है। मानक में प्रारंभिक चिंतन शामिल है। विलायत प्रीमियम श्रेणियाँ अनलॉक करता है और शीर्ष-अप सक्षम करता है।';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total चिंतन का उपयोग किया गया';
  }

  @override
  String get settingsDeleteTitle => 'खाता हटाएँ';

  @override
  String get settingsDeleteDescription =>
      'अपने खाते और सभी जुड़े डेटा को स्थायी रूप से हटाएँ।';

  @override
  String get settingsDeleteButtonLabel => 'अपना खाता हटाएँ';

  @override
  String get settingsDeleteDialogTitle => 'खाता हटाएँ?';

  @override
  String get settingsDeleteDialogBody =>
      'यह कार्रवाई स्थायी है और वापस नहीं की जा सकती।\n\nआपकी सभी चैट, इतिहास और खाता जानकारी हटा दी जाएगी।';

  @override
  String get settingsDeleteDialogCancel => 'रद्द करें';

  @override
  String get settingsDeleteDialogConfirm => 'हटाएँ';

  @override
  String get settingsFreeLimitUsedTitle => 'प्रारंभिक चिंतन का उपयोग किया गया';

  @override
  String get settingsFreeLimitUsedDescription =>
      'इस डिवाइस के लिए प्रारंभिक चिंतन का उपयोग किया जा चुका है। जारी रखने के लिए विलायत में अपग्रेड करें या अधिक चिंतन खरीदें।';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'प्रारंभिक चिंतन का उपयोग किया गया';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'इस डिवाइस के लिए प्रारंभिक चिंतन का उपयोग किया जा चुका है। जारी रखने के लिए विलायत में अपग्रेड करें या अधिक चिंतन खरीदें।';

  @override
  String get deviceBoundError =>
      'यह डिवाइस पहले से दूसरे खाते से जुड़ा हुआ है। कृपया मूल खाते के साथ साइन इन करें।';

  @override
  String get premiumTitle => 'विलायत मोड';

  @override
  String get premiumSubtitleBasic => 'पूर्ण अयारा अनुभव अनलॉक करें।';

  @override
  String get premiumSubtitlePremium => 'आप विलायत पर हैं। अधिक चिंतन चाहिए?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'वर्तमान योजना: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'चिंतन: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'अभी खरीदारी उपलब्ध नहीं है।';

  @override
  String get premiumSignInToPurchase =>
      'चिंतन खरीदने या विलायत अनलॉक करने के लिए साइन इन करें।';

  @override
  String get premiumRestorePurchases => 'खरीदारी पुनः स्थापित करें';

  @override
  String get premiumProcessing => 'प्रक्रिया जारी है…';

  @override
  String get premiumRestoreHintTitle =>
      'क्या आपने पहले से इस डिवाइस या दूसरे पर विलायत या चिंतन खरीदा है?';

  @override
  String get premiumRestoreHintBody =>
      'यदि आपकी खरीदारी दिखाई नहीं दे रही है तो उन्हें पुनः स्थापित करें।';

  @override
  String get premiumBuyCredits200 => '200 चिंतन खरीदें';

  @override
  String get premiumBuyCredits400 => '400 चिंतन खरीदें';

  @override
  String get premiumBecomePremiumOneTime => 'विलायत मोड में अपग्रेड करें';

  @override
  String get premiumTopupHint =>
      'विलायत के साथ, आप जब चाहें अतिरिक्त चिंतन के साथ शीर्ष अप कर सकते हैं।';

  @override
  String get premiumUpgradeCta => 'अपग्रेड करें';

  @override
  String get premiumRequiredForCategory =>
      'यह श्रेणी केवल विलायत उपयोगकर्ताओं के लिए उपलब्ध है। सभी प्रीमियम सामग्री अनलॉक करने के लिए सेटिंग्स में अपग्रेड करें।';

  @override
  String get premiumBenefitsBasic =>
      'विलायत अनलॉक करें अतिरिक्त चिंतन प्राप्त करने, प्रीमियम श्रेणियों तक पहुँचने, और जब भी आपको मार्गदर्शन की आवश्यकता हो जारी रखने के लिए।';

  @override
  String get premiumBenefitsPremium =>
      'आप विलायत मोड में हैं। यदि आप कम हो रहे हैं, तो कुछ अतिरिक्त चिंतन जोड़ें और बिना किसी रुकावट के जारी रखें।';

  @override
  String get premiumButtonBecomePremium => 'विलायत अनलॉक करें';

  @override
  String get premiumButtonTopup1000 => '1000 चिंतन जोड़ें';

  @override
  String get premiumBadge => 'विलायत सक्रिय';

  @override
  String get premiumLoadingStore => 'स्टोर लोड हो रहा है…';

  @override
  String get premiumProductNotAvailable =>
      'यह उत्पाद अभी स्टोर में उपलब्ध नहीं है। कृपया बाद में फिर से कोशिश करें।';

  @override
  String get premiumPurchaseError =>
      'खरीदारी के साथ कुछ गलत हुआ। कृपया फिर से कोशिश करें।';

  @override
  String get premiumBuyCredits100 => '100 चिंतन जोड़ें';

  @override
  String get premiumFeatureLocked =>
      'इस सुविधा को एक्सेस करने के लिए विलायत अनलॉक करें।';

  @override
  String get lockedCategoriesHint =>
      'कुछ श्रेणियाँ विलायत सदस्यों के लिए आरक्षित हैं। उन्हें अनलॉक करें आपकी यात्रा पर हर चिंतन का अन्वेषण करने के लिए।';

  @override
  String get freePlanBlockedTitle =>
      'आपने अपने प्रारंभिक चिंतन समाप्त कर दिए हैं';

  @override
  String get freePlanBlockedBody =>
      'आप मानक योजना पर हैं प्रारंभिक चिंतन के साथ, और आपने सीमा तक पहुँच गए हैं। जारी रखने के लिए — और प्रीमियम श्रेणियाँ अनलॉक करने के लिए — विलायत में अपग्रेड करें।';

  @override
  String get freePlanBlockedCtaGoPremium => 'नीचे विलायत विकल्प देखें';

  @override
  String get graceBlockedTitle => 'आपने अपने प्रारंभिक चिंतन समाप्त कर दिए हैं';

  @override
  String get graceBlockedBody =>
      'आप मानक योजना पर हैं प्रारंभिक चिंतन के साथ, और आपने सीमा तक पहुँच गए हैं। जारी रखने के लिए — और प्रीमियम श्रेणियाँ अनलॉक करने के लिए — विलायत में अपग्रेड करें।';

  @override
  String get graceBlockedCtaGoPremium => 'नीचे विलायत विकल्प देखें';

  @override
  String get rateGuestMustSignIn =>
      'अयारा का उपयोग करने और अपने चिंतन के लिए साइन इन करें।';

  @override
  String get guestNoCreditsTitle => 'मेहमान मोड';

  @override
  String get guestNoCreditsBody =>
      'मेहमान के रूप में आप ऐप को ब्राउज़ कर सकते हैं, लेकिन आप चिंतन का उपयोग नहीं कर सकते। चिंतन का उपयोग करने और खरीदारी अनलॉक करने के लिए बाद में सेटिंग्स में लॉगिन करें।';

  @override
  String get guestDialogContinue => 'जारी रखें';

  @override
  String get guestDialogLoginInstead => 'इसके बजाय लॉगिन करें';

  @override
  String get optionalLabel => 'वैकल्पिक';

  @override
  String get accountDeleteSuccessTitle => 'खाता हटाया गया';

  @override
  String get accountDeleteSuccessBody =>
      'आपके खाते और संबंधित डेटा को सफलतापूर्वक हटा दिया गया है।';

  @override
  String get accountDeleteSuccessClose => 'बंद करें';

  @override
  String get accountDeleteErrorTitle => 'खाता नहीं हटा सके';

  @override
  String get accountDeleteErrorClose => 'ठीक है';

  @override
  String get accountDeleteReauthCancelled =>
      'पुनः-प्रमाणीकरण रद्द कर दिया गया। कृपया फिर से साइन इन करें और हटाना फिर से प्रयास करें।';

  @override
  String get accountDeleteReauthRequired =>
      'खाता हटाने के लिए हाल का लॉगिन आवश्यक है। कृपया साइन आउट करें, फिर से साइन इन करें, और हटाना फिर से प्रयास करें।';

  @override
  String get settingsDeletePermanentWarning =>
      'यह कार्रवाई स्थायी है और वापस नहीं की जा सकती। आपके खाते से संबंधित सभी डेटा हटा दिया जाएगा।';

  @override
  String get dailyGraceTitle => 'दैनिक मार्गदर्शन';

  @override
  String get dailyGraceScriptureLabel => 'आज का छंद';

  @override
  String get dailyGraceSaintLabel => 'सप्ताह का व्यक्तित्व';

  @override
  String get dailyGraceReflectionLabel => 'शाम का चिंतन';

  @override
  String get dailyGraceCopiedToast => 'छंद क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get locationConsentLabel =>
      'अयारा को क़िबला दिशा और नमाज़ के समय के लिए मेरे स्थान का उपयोग करने दें';

  @override
  String get locationConsentHint =>
      'केवल इन सुविधाओं के लिए उपयोग किया जाता है। आपका स्थान कभी साझा या संग्रहीत नहीं होता है।';

  @override
  String get askPageTitle => 'अयारा से पूछें';

  @override
  String get askPageDescription =>
      'विश्वास, नमाज़, जीवन, या इस्लामिक अभ्यास के बारे में कुछ भी पूछें और कुरान और अहल अल-बैत की शिक्षाओं में निहित मार्गदर्शन प्राप्त करें।';

  @override
  String get askPageInputHint => 'यहाँ अपना प्रश्न टाइप करें…';

  @override
  String get askPageSubmitCta => 'पूछें';

  @override
  String get askPageInputEmptyError => 'कृपया पहले एक प्रश्न लिखें।';

  @override
  String get askResultYourQuestion => 'आपका प्रश्न';

  @override
  String get guidancePageTitle => 'क़िबला';

  @override
  String get qiblaFacingMecca => 'मक्का की ओर';

  @override
  String get qiblaCompassInstruction =>
      'अपने फोन को घुमाएँ जब तक सोने की सुई ऊपर न हो।\nवह दिशा क़िबला (मक्का) की ओर इशारा करती है।';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS सिग्नल कमजोर है। बाहर जाएँ और फिर से प्रयास करें पर क्लिक करें।';

  @override
  String get qiblaRetry => 'फिर से प्रयास करें';

  @override
  String get qiblaTitle => 'क़िबला दिशा';

  @override
  String qiblaDistanceLabel(String km) {
    return 'मक्का से $km किमी';
  }

  @override
  String get qiblaLocationNeededTitle => 'स्थान आवश्यक है';

  @override
  String get qiblaLocationNeededBody =>
      'अयारा को स्थान पहुंच दें ताकि वह आप जहाँ हैं वहाँ से काबे की दिशा की गणना कर सके।';

  @override
  String get qiblaOpenSettings => 'सेटिंग्स खोलें';

  @override
  String get qiblaCompassLoading => 'आपकी स्थिति का पता लगा रहा है…';

  @override
  String get qiblaTowardMecca => 'मक्का की ओर';

  @override
  String get prayerTimesTitle => 'नमाज़ के समय';

  @override
  String get prayerTimesFajr => 'फज़्र';

  @override
  String get prayerTimesDhuhr => 'दुहर';

  @override
  String get prayerTimesAsr => 'असर';

  @override
  String get prayerTimesMaghrib => 'मग़रिब';

  @override
  String get prayerTimesIsha => 'इशा';

  @override
  String get prayerTimesLocationNeededTitle => 'स्थान आवश्यक है';

  @override
  String get prayerTimesLocationNeededBody =>
      'अयारा को स्थान पहुंच दें ताकि वह आपके शहर के लिए सटीक नमाज़ के समय की गणना कर सके।';

  @override
  String get prayerTimesNextLabel => 'अगला';

  @override
  String get prayerTimesDoneLabel => 'पूरा हुआ';

  @override
  String get monthlyPrayerTimesTitle => 'मासिक नमाज़ के समय';

  @override
  String get monthlyPrayerTimesViewButton => 'पूरा महीना देखें';

  @override
  String get monthlyPrayerTimesNextMonth => 'अगला महीना';

  @override
  String get monthlyPrayerTimesDayHeader => 'दिन';

  @override
  String get sharePrayerTimes => 'नमाज़ के समय साझा करें';

  @override
  String get notificationsSectionTitle => 'सूचनाएँ';

  @override
  String get notificationsSectionSubtitle =>
      'नमाज़ के अनुस्मारक, कैलेंडर ईवेंट और अधिक';

  @override
  String get dailyReflectionReminderTitle => 'दैनिक चिंतन';

  @override
  String get dailyReflectionReminderDescription =>
      'अयारा खोलने और अपने विश्वास से जुड़ने के लिए एक कोमल दैनिक अनुस्मारक।';

  @override
  String get dailyReflectionReminderEnable => 'दैनिक अनुस्मारक सक्षम करें';

  @override
  String get dailyReflectionReminderTimeLabel => 'अनुस्मारक समय';

  @override
  String get prayerNotificationsTitle => 'नमाज़ के अनुस्मारक';

  @override
  String get prayerNotificationsDescription =>
      'प्रत्येक नमाज़ के समय से पहले एक कोमल अनुस्मारक प्राप्त करें ताकि आप पूरे दिन जुड़े रहें।';

  @override
  String get prayerNotificationsEnable => 'नमाज़ के अनुस्मारक सक्षम करें';

  @override
  String get prayerNotificationsOpenSettings => 'सूचना सेटिंग्स खोलें';

  @override
  String get prayerNotificationsDenied => 'सूचनाएँ अक्षम हैं';

  @override
  String get prayerNotificationsDeniedHint =>
      'सेटिंग्स पर जाएँ और अयारा के लिए सूचनाएँ अनुमति दें नमाज़ के समय के अनुस्मारक प्राप्त करने के लिए।';

  @override
  String get notificationsConsentLabel =>
      'नमाज़ के समय के लिए सूचनाएँ अनुमति दें';

  @override
  String get prayerNotifTitleFajr => '🌅 फज़्र — भोर की नमाज़';

  @override
  String get prayerNotifBodyFajr =>
      'फज़्र अहल अल-बैत की सुबह की नमाज़ है। इमाम अली (अस) ने कहा: भोर की नमाज़ की रक्षा करें जैसे आप अपने सबसे कीमती विश्वास की रक्षा करते हैं। उठो, अपने आप को शुद्ध करो, और अल्लाह के सामने खड़े हो।';

  @override
  String get prayerNotifTitleDhuhr => '☀️ दुहर — दोपहर की नमाज़';

  @override
  String get prayerNotifBodyDhuhr =>
      'अहल अल-बैत के इमामों ने जिक्र के हर पल को महत्व दिया। अपने दिन को रोकें, दुहर को असर के साथ मिलाएँ यदि आवश्यक हो, और अपने दिल को अल्लाह की ओर लौटाएँ।';

  @override
  String get prayerNotifTitleAsr => '🌤️ असर — दोपहर बाद की नमाज़';

  @override
  String get prayerNotifBodyAsr =>
      'नमाज़ की रक्षा करें, यह आपके और अल्लाह के बीच का वचन है। असर का समय आ गया है — इसे जिक्र के बिना पास न होने दें।';

  @override
  String get prayerNotifTitleMaghrib => '🌇 मग़रिब — सूर्यास्त की नमाज़';

  @override
  String get prayerNotifBodyMaghrib =>
      'सूरज डूब गया — एक पल जिसे अहल अल-बैत ने दुआ के लिए पवित्र माना। मग़रिब अर्पित करें और रात शुरू होने से पहले अल्लाह के लिए दुआ के लिए अपने हाथ खोलें।';

  @override
  String get prayerNotifTitleIsha => '🌙 इशा — रात की नमाज़';

  @override
  String get prayerNotifBodyIsha =>
      'अल्लाह की संगति में अपने दिन का अंत करें। इमामों ने इशा के बाद सलात अल-लैल को प्रोत्साहित किया — लेकिन पहले, अपने इशा को पूरा करें और उसके जिक्र के साथ दिन को बंद करें।';

  @override
  String get outOfReflectionsBannerText => 'आपने सभी चिंतन का उपयोग कर लिया है';

  @override
  String get outOfReflectionsBannerCta => 'अधिक प्राप्त करें';

  @override
  String get dhikrPageTitle => 'दिक्र';

  @override
  String get dhikrTapToCount => 'गिनती के लिए सर्कल पर टैप करें';

  @override
  String get dhikrResetButton => 'रीसेट करें';

  @override
  String get dhikrComplete => 'मशा अल्लाह';

  @override
  String get dhikrCompleteMessage =>
      'आपने अल्लाह के 100 जिक्र पूरे कर लिए हैं। वह आपके दिल के लिए एक प्रकाश हों।';

  @override
  String get disclaimerTitle => 'इस ऐप के मार्गदर्शन के बारे में';

  @override
  String get disclaimerBody =>
      'अयारा इस्लामिक चिंतन, अनुस्मारक, और आध्यात्मिक सामग्री प्रदान करता है आपकी व्यक्तिगत विश्वास यात्रा को समर्थन करने के लिए, कुरान और अहल अल-बैत की शिक्षाओं में निहित। यह सामग्री सामान्य सूचनात्मक और प्रेरक उद्देश्यों के लिए पेश की जाती है।\n\nअयारा योग्य विद्वानता की जगह नहीं ले सकता।\nइस ऐप में मार्गदर्शन एक सीखे हुए इस्लामिक विद्वान, मर्जा, या धर्मशास्त्र-प्रशिक्षित शिक्षक का विकल्प नहीं है। शिया इस्लाम में, धार्मिक मार्गदर्शन जाफरी स्कूल ऑफ जुरिसप्रूडेंस (फिक्ह) और एक जीवंत मर्जा (अनुकरण का स्रोत) का अनुसरण करने की परंपरा में निहित है — एक योग्य न्यायविद जिनके निर्णय विश्वासियों को धार्मिक अभ्यास में निर्देशित करते हैं। यदि आपके पास धार्मिक निर्णय, हलाल और हराम मामलों, या व्यक्तिगत धार्मिक दायित्वों के बारे में प्रश्न हैं, तो कृपया एक योग्य मर्जा या आपके समुदाय के एक विद्वान से सलाह लें।\n\nयह ऐप धार्मिक निर्णय जारी नहीं करता।\nअयारा फिक्ह या व्यक्तिगत धार्मिक दायित्वों पर अधिकार निर्धारण नहीं करता। यहाँ कुछ भी एक फतवा या बाध्यकारी धार्मिक निर्देश के रूप में नहीं माना जाना चाहिए।\n\nअहल अल-बैत की केंद्रीयता।\nशिया इस्लाम में, पैगंबर मुहम्मद ﷺ और उनके पवित्र घराने — अहल अल-बैत — कुरान के बाद इस्लामिक समुदाय के अधिकृत मार्गदर्शक हैं। अहल अल-बैत के बारह इमाम इस्लामिक शिक्षा के दिव्य रूप से नियुक्त व्याख्याकार हैं। इस ऐप की सामग्री इस परंपरा को प्रतिबिंबित करती है और विश्वासपूर्वक इसका सम्मान करना चाहती है।\n\nसामुदायिक मामले।\nयह ऐप आपके विश्वास के साथ आपके जुड़ाव को प्रोत्साहित करना चाहता है जबकि गहरी सम्मान के साथ आपके स्थानीय मस्जिद, इस्लामिक केंद्र, और धार्मिक समुदाय की महत्वपूर्ण भूमिका को सम्मानित करता है। हम आपको आपके पास योग्य शिक्षकों से जुड़े रहने और सीखने के लिए प्रोत्साहित करते हैं।';

  @override
  String get disclaimerClose => 'मैं समझता हूँ';

  @override
  String get disclaimerInfoTooltip => 'इस ऐप के मार्गदर्शन के बारे में';

  @override
  String get disclaimerSettingsSubtitle =>
      'सामान्य सूचनात्मक उद्देश्यों के लिए। पूर्ण अस्वीकरण पढ़ने के लिए टैप करें।';

  @override
  String get disclaimerSectionHeader => 'मार्गदर्शन अस्वीकरण';

  @override
  String get navHome => 'घर';

  @override
  String get navReflect => 'चिंतन';

  @override
  String get navDuas => 'दुआएँ';

  @override
  String get navCalendar => 'कैलेंडर';

  @override
  String get dashboardToday => 'आज';

  @override
  String get dashboardComingUp => 'आने वाला';

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
  String get dashboardQuickAccess => 'त्वरित पहुंच';

  @override
  String get quickActionQibla => 'क़िबला';

  @override
  String get quickActionDhikr => 'दिक्र';

  @override
  String get quickActionDailyGrace => 'मार्गदर्शन';

  @override
  String get quickActionPrayerTimes => 'नमाज़ के समय';

  @override
  String get askAyaraTitle => 'अयारा से पूछें';

  @override
  String get askAyaraSubtitle =>
      'किसी भी इस्लामिक प्रश्न को पूछें और एक विचारशील, निर्देशित उत्तर प्राप्त करें।';

  @override
  String get askAyaraHint => 'उदा। रमजान का महत्व क्या है?';

  @override
  String get askAyaraSubmit => 'पूछें';

  @override
  String get wisdomOfTheDayTitle => 'दिन की बुद्धिमत्ता';

  @override
  String get calendarScreenTitle => 'इस्लामिक कैलेंडर';

  @override
  String get calendarUpcomingOccasions => 'आने वाले अवसर';

  @override
  String get calendarOccasionRemindersTitle => 'अवसर अनुस्मारक';

  @override
  String get calendarOccasionRemindersHint =>
      'प्रत्येक अवसर से शाम को सूचित किया जाता है';

  @override
  String get calendarNotifPermissionDenied =>
      'सूचना अनुमति अस्वीकृत। इसे अपनी डिवाइस सेटिंग्स में सक्षम करें।';

  @override
  String get calendarNoEvents => 'कोई आने वाली घटनाएँ नहीं मिलीं।';

  @override
  String get calendarAddToPhone => 'फोन कैलेंडर में जोड़ें';

  @override
  String get calendarAddedToPhone => 'कैलेंडर में जोड़ा गया';

  @override
  String get calendarCountdownToday => 'आज';

  @override
  String get calendarCountdownTomorrow => 'कल';

  @override
  String calendarCountdownDays(int days) {
    return '$days दिन में';
  }

  @override
  String get calendarAH => 'हि';

  @override
  String get calendarMonthJan => 'जन';

  @override
  String get calendarMonthFeb => 'फ़रवरी';

  @override
  String get calendarMonthMar => 'मार्च';

  @override
  String get calendarMonthApr => 'अप्रैल';

  @override
  String get calendarMonthMay => 'मई';

  @override
  String get calendarMonthJun => 'जून';

  @override
  String get calendarMonthJul => 'जुलाई';

  @override
  String get calendarMonthAug => 'अग';

  @override
  String get calendarMonthSep => 'सितंबर';

  @override
  String get calendarMonthOct => 'अक्टूबर';

  @override
  String get calendarMonthNov => 'नवंबर';

  @override
  String get calendarMonthDec => 'दिसंबर';

  @override
  String get calendarSeasonMuharramEarly =>
      'मुहर्रम के दिन — करबला को याद करें';

  @override
  String get calendarSeasonAshura => 'अशूरा — या हुसैन (अस)';

  @override
  String get calendarSeasonMuharramLate => 'मुहर्रम — शोक और चिंतन के दिन';

  @override
  String get calendarSeasonArbaeen => 'अरबीन — हुसैन के चालीस दिन';

  @override
  String get calendarSeasonRoadToArbaeen => 'अरबीन का रास्ता';

  @override
  String get calendarSeasonMabath => 'माबात मुबारक — प्रकाशन की सुबह';

  @override
  String get calendarSeasonMidShaban =>
      'शाबान के मध्य — इमाम अल-महदी (अज) का जन्मदिन';

  @override
  String get calendarSeasonRamadan => 'रमजान मुबारक — कुरान का महीना';

  @override
  String get calendarSeasonGhadir => 'ईद अल-गादिर मुबारक!';

  @override
  String get hijriMonth1 => 'मुहर्रम';

  @override
  String get hijriMonth2 => 'सफर';

  @override
  String get hijriMonth3 => 'रबी अल-अव्वल';

  @override
  String get hijriMonth4 => 'रबी अल-ठानी';

  @override
  String get hijriMonth5 => 'जुमादा अल-अव्वल';

  @override
  String get hijriMonth6 => 'जुमादा अल-ठानी';

  @override
  String get hijriMonth7 => 'राजब';

  @override
  String get hijriMonth8 => 'शाबान';

  @override
  String get hijriMonth9 => 'रमजान';

  @override
  String get hijriMonth10 => 'शव्वाल';

  @override
  String get hijriMonth11 => 'धु अल-किडा';

  @override
  String get hijriMonth12 => 'धु अल-हिज्जा';

  @override
  String get duasScreenTitle => 'दुआएँ और जियारत';

  @override
  String get duasSearchHint => 'दुआएँ, जियारत खोजें…';

  @override
  String get duasFilterAll => 'सभी';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दुआएँ और जियारत',
      one: '$count दुआ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'कोई दुआएँ नहीं मिलीं।';

  @override
  String get duaCategoryDaily => 'दैनिक';

  @override
  String get duaCategoryWeekly => 'साप्ताहिक';

  @override
  String get duaCategoryOccasions => 'अवसर';

  @override
  String get duaCategoryZiyarat => 'जियारत';

  @override
  String get duaCategoryTasbih => 'तस्बीह';

  @override
  String get eventTypeBirth => 'जन्म';

  @override
  String get eventTypeMartyrdom => 'शहादत';

  @override
  String get eventTypeOccasion => 'अवसर';

  @override
  String get duaCopyTooltip => 'अनुवाद कॉपी करें';

  @override
  String get duaToggleTransliteration => 'अनुलेखन';

  @override
  String get duaToggleTranslation => 'अनुवाद';

  @override
  String get duaAskAiLabel => 'अयारा को यह दुआ समझाने के लिए कहें';

  @override
  String get duaAskAiLockedLabel => 'अयारा से पूछें (विलायत)';

  @override
  String get duaAiLockedMessage =>
      'अयारा व्याख्याएँ विलायत सदस्यों के लिए उपलब्ध हैं। सेटिंग्स में अपग्रेड करें।';

  @override
  String duaAiComingSoon(String name) {
    return 'अयारा से \"$name\" के बारे में पूछें — जल्द आ रहा है!';
  }

  @override
  String get duaCopiedToast => 'दुआ क्लिपबोर्ड पर कॉपी की गई।';

  @override
  String get tasbihAllahuAkbarMeaning => 'अल्लाह सबसे महान है';

  @override
  String get tasbihAlhamdulillahMeaning => 'सभी प्रशंसा अल्लाह की है';

  @override
  String get tasbihSubhanallahMeaning => 'अल्लाह की महिमा है';

  @override
  String get tasbihResetTooltip => 'रीसेट करें';

  @override
  String get tasbihCompleteTitle => 'तस्बीह पूर्ण';

  @override
  String get tasbihCompleteMessage => 'अल्लाह आपके दिक्र को स्वीकार करें।';

  @override
  String get tasbihTapHint => 'गिनती के लिए कहीं भी टैप करें';

  @override
  String get tasbihatScreenTitle => 'नमाज़ मार्गदर्शन';

  @override
  String get tasbihatScreenSubtitle => 'नमाज़ की महिमा';

  @override
  String get tasbihatScreenDescription =>
      'नमाज़ के दौरान और बाद में पढ़ी जाने वाली महिमाओं का एक संपूर्ण मार्गदर्शन — अहल अल-बैत (अ) की परंपरा का पालन करते हुए।';

  @override
  String get tasbihatArba3Title => 'तस्बीहात अल-अर्बआ';

  @override
  String get tasbihatArba3Subtitle =>
      '3 वें और 4 वें रकात के दौरान पढ़ा जाता है';

  @override
  String get tasbihatArba3Info =>
      'शिया न्यायशास्त्र में, तस्बीहात अल-अर्बआ दुहर, असर, मग़रिब, और इशा के 3 वें और 4 वें रकात में सूरह अल-फातिहा को बदलता है। इसे एक बार पढ़ना अनिवार्य (वाजिब) है, और तीन बार पढ़ना सुझाया गया (मुस्तहब) है।';

  @override
  String get tasbihatArba3Translation =>
      'अल्लाह की महिमा हो · अल्लाह के लिए सभी प्रशंसा\nकोई नहीं सिवाय अल्लाह · अल्लाह सबसे महान है';

  @override
  String get tasbihatArba3CompleteTitle => 'पाठ पूर्ण';

  @override
  String get tasbihatArba3CompleteMessage => 'आपकी नमाज़ स्वीकृत हो — आमीन';

  @override
  String get tasbihatArba3TapHint => 'प्रत्येक पाठ के बाद टैप करें';

  @override
  String get tasbihatZahraSubtitle => 'हर नमाज़ के बाद · 100 दाने';

  @override
  String get tasbihatZahraOriginLabel => 'मूल';

  @override
  String get tasbihatZahraHadith =>
      'लेडी फातिमा अल-जहरा (सा) ने पैगंबर ﷺ से एक सेवक माँगा। उन्होंने कहा: \"क्या मैं आपको कुछ बेहतर नहीं सिखा सकता? हर नमाज़ के बाद 33 बार सुभहानल्लाह, 33 बार अलहम्दुलिल्लाह, और 34 बार अल्लाहु अकबर पढ़ें। यह आपके लिए एक सेवक से बेहतर है।\"';

  @override
  String get tasbihatZahraHadithSource => '— बिहार अल-अनवार, खंड 85';

  @override
  String get tasbihatZahraOpenCounter => 'तस्बीह काउंटर खोलें';

  @override
  String get tasbihatDuasTitle => 'सुझाई गई दुआएँ';

  @override
  String get tasbihatDuasSubtitle => 'अपनी नमाज़ पूरी करने के बाद';

  @override
  String get tasbihatDuaAyatKursiTitle => 'आयत अल-कुर्सी';

  @override
  String get tasbihatDuaAyatKursiWhen => 'हर अनिवार्य नमाज़ के बाद';

  @override
  String get tasbihatDuaAyatKursiSource => 'सूरह अल-बकरह 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'जो कोई हर अनिवार्य नमाज़ के बाद आयत अल-कुर्सी पढ़ता है, मृत्यु को छोड़कर कुछ भी उसे स्वर्ग से नहीं रोकता। इमाम अल-बाकिर (अ) ने कहा कि यह कुरान के सबसे महान छंदों में से है।';

  @override
  String get tasbihatDuaSalawatTitle => 'सलावत';

  @override
  String get tasbihatDuaSalawatWhen =>
      'हर नमाज़ के बाद · सभी दुआओं को सील करता है';

  @override
  String get tasbihatDuaSalawatSource => 'इमाम अल-सादिक (अ) — अल-काफी';

  @override
  String get tasbihatDuaSalawatNote =>
      'पैगंबर ﷺ और उनके पवित्र परिवार (आल मुहम्मद) पर आशीर्वाद भेजना हर दुआ को सील करने के लिए सुझाया गया है। इमाम अल-सादिक (अ) ने कहा: \"कोई भी दुआ निलंबित है जब तक आप मुहम्मद और उनके परिवार पर सलावत न भेजें।\"';

  @override
  String get tasbihatDuaFarajTitle => 'दुआ अल-फराज';

  @override
  String get tasbihatDuaFarajWhen =>
      'हर नमाज़ के बाद · हमारे समय के इमाम के लिए';

  @override
  String get tasbihatDuaFarajSource =>
      'इमाम अल-हसन अल-अस्करी (अ) द्वारा सिखाई गई';

  @override
  String get tasbihatDuaFarajNote =>
      'इमाम अल-महदी (अफ) की पुनः प्रकट होने के लिए एक दुआ, जो उनके पिता द्वारा सिखाई गई थी। इसे अक्सर कई शिया मुसलमान प्रार्थना के बाद जीवित इमाम के प्रति श्रद्धा के कार्य के रूप में पढ़ते हैं।';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'लेडी फातिमा की तस्बीह';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'मग़रिब और इशा के बाद · विशेष रूप से सुझाई गई';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'इमाम अल-बाकिर (अ) — बिहार अल-अनवार';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'इमाम अल-बाकिर (अ) ने कहा कि इशा के बाद सोने से पहले तस्बीह अल-जहरा पढ़ना 1000 वैकल्पिक रकात की नमाज़ से बेहतर है। इसका प्रकाश आसमान तक चढ़ता है।';

  @override
  String get tasbihFatimaGiftPre => 'पैगंबर का एक उपहार';

  @override
  String get tasbihFatimaGiftPost => 'हर नमाज़ के बाद पढ़ा जाता है';

  @override
  String get prayerTrackerTitle => 'नमाज़ ट्रैकर';

  @override
  String get prayerTrackerPrayed => 'नमाज़ पढ़ी गई';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count दिन की शृंखला';
  }

  @override
  String get prayerTrackerAllComplete =>
      'सभी नमाज़ें आज पूरी हुईं। अल्लाह स्वीकार करें।';

  @override
  String get dhikrTrackerTitle => 'तस्बीह अल-जहरा';

  @override
  String get dhikrTrackerCompletedToday => 'आज पूरा किया';

  @override
  String get dhikrTrackerNotDoneToday => 'आज नहीं किया';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count दिन की शृंखला';
  }

  @override
  String get dhikrReminderTitle => 'तस्बीह अनुस्मारक';

  @override
  String get dhikrReminderDescription =>
      'अपनी तस्बीह अल-जहरा (सा) पढ़ने के लिए एक कोमल दैनिक अनुस्मारक।';

  @override
  String get dhikrReminderEnable => 'तस्बीह अनुस्मारक सक्षम करें';

  @override
  String get dhikrReminderTimeLabel => 'अनुस्मारक समय';

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
  String get hadithShare => 'यह हदीस साझा करें';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nअयारा के माध्यम से';
  }

  @override
  String get hadithNavPrevious => 'पिछला';

  @override
  String get hadithNavNext => 'अगला';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'चौदह मासूम';

  @override
  String get imamsScreenSubtitle =>
      'नबी, बेगम फातिमा, और बारह इमाम — बारह शिया इस्लाम में शुद्ध और मासूम मार्गदर्शक';

  @override
  String get imamLabelBorn => 'जन्म';

  @override
  String get imamLabelMartyrdom => 'शहादत';

  @override
  String get imamLabelStatus => 'स्थिति';

  @override
  String get imamSectionBiography => 'जीवनी';

  @override
  String get imamSectionFamousSaying => 'प्रसिद्ध कथन';

  @override
  String get imamRoleProphet => 'अंतिम पैगंबर';

  @override
  String get imamRoleInfallible => 'अचूक';

  @override
  String get imamOrdinal1 => '1 वें इमाम';

  @override
  String get imamOrdinal2 => '2 वें इमाम';

  @override
  String get imamOrdinal3 => '3 वें इमाम';

  @override
  String get imamOrdinal4 => '4 वें इमाम';

  @override
  String get imamOrdinal5 => '5 वें इमाम';

  @override
  String get imamOrdinal6 => '6 वें इमाम';

  @override
  String get imamOrdinal7 => '7 वें इमाम';

  @override
  String get imamOrdinal8 => '8 वें इमाम';

  @override
  String get imamOrdinal9 => '9 वें इमाम';

  @override
  String get imamOrdinal10 => '10 वें इमाम';

  @override
  String get imamOrdinal11 => '11 वें इमाम';

  @override
  String get imamOrdinal12 => '12 वें इमाम';

  @override
  String get duaAudioScreenTitle => 'दुआएँ सुनें';

  @override
  String get duaAudioScreenSubtitle =>
      'सुनने के लिए एक दुआ चुनें। चलाने या रोकने के लिए टाइल पर टैप करें।';

  @override
  String get duaAudioComingSoonMessage =>
      'इस दुआ के लिए ऑडियो एक आने वाले अपडेट में उपलब्ध होगा।';

  @override
  String get duaAudioClose => 'बंद करें';

  @override
  String get duaAudioError =>
      'ऑडियो लोड नहीं कर सके। कृपया अपने कनेक्शन की जांच करें।';

  @override
  String get duaAudioMetaTransmittedBy => 'द्वारा प्रेषित';

  @override
  String get duaAudioMetaOccasion => 'अवसर';

  @override
  String get duaAudioMetaDuration => 'अवधि';

  @override
  String get quickActionDailyHadith => 'दैनिक हदीस';

  @override
  String get quickAction14Masumeen => 'चौदह मासूम';

  @override
  String get quickActionListenDuas => 'सुनें';

  @override
  String get quickActionTasbihat => 'नमाज़ मार्गदर्शन';

  @override
  String get pilgrimageSectionTitle => 'पवित्र यात्रा';

  @override
  String get pilgrimageSectionSubtitle =>
      'हज और उमरह के लिए संपूर्ण मार्गदर्शन — मक्का में अल्लाह के पवित्र घर की तीर्थ यात्रा';

  @override
  String get hajjCardTitle => 'हज';

  @override
  String get hajjCardSubtitle => 'इस्लाम का पाँचवाँ स्तंभ';

  @override
  String get hajjCardDescription =>
      'भव्य वार्षिक तीर्थ यात्रा — हर सक्षम मुसलमान के लिए जीवन में एक बार अनिवार्य';

  @override
  String get hajjScreenTitle => 'हज मार्गदर्शन';

  @override
  String get hajjScreenSubtitle =>
      'भव्य तीर्थ यात्रा के लिए चरण-दर-चरण मार्गदर्शन';

  @override
  String get umrahCardTitle => 'उमरह';

  @override
  String get umrahCardSubtitle => 'छोटी तीर्थ यात्रा';

  @override
  String get umrahCardDescription =>
      'एक गहरी आध्यात्मिक यात्रा जो वर्ष के किसी भी समय की जा सकती है';

  @override
  String get umrahScreenTitle => 'उमरह मार्गदर्शन';

  @override
  String get umrahScreenSubtitle =>
      'छोटी तीर्थ यात्रा के लिए चरण-दर-चरण मार्गदर्शन';

  @override
  String get pilgrimageStepsTitle => 'अनुष्ठान और चरण';

  @override
  String get pilgrimageImportantNotesTitle => 'महत्वपूर्ण नोट्स';

  @override
  String get pilgrimageDuaTitle => 'इस चरण के लिए दुआ';

  @override
  String get pilgrimageJafariNoteTitle => 'जाफरी फिकह नोट';

  @override
  String get pilgrimageComplete => '✓ पूरा';

  @override
  String get pilgrimageMarkDone => 'पूर्ण के रूप में चिह्नित करें';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done में से $total चरण';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes मिनट';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'शिया तीर्थयात्री';

  @override
  String get pilgrimageShiaNoteBody =>
      'कई शिया तीर्थयात्री नबी मुहम्मद (सअव) की ज़ियारत के लिए मस्जिद अल-नबवी और जन्नत अल-बाकी में कब्रों के लिए मदीना भी यात्रा करते हैं। ये दौरे गहरे आध्यात्मिक महत्व रखते हैं, हालाँकि ये खुद हज के अनुष्ठान नहीं हैं।';

  @override
  String get hajjIntro =>
      'हज इस्लाम का पाँचवाँ स्तंभ है, जो हर मुसलमान के लिए जीवन में एक बार शारीरिक और वित्तीय रूप से सक्षम होने पर अनिवार्य है। आज के अधिकांश बारह शिया तीर्थयात्रियों के लिए, इसका अर्थ है हज अल-तमत्तु\', जो इमाम इब्राहीम (अस), उनके पुत्र इस्माइल (अस), और बेगम हाजर के पदचिन्हों पर धुल हिज्जा के महीने में किया जाता है। यह मार्गदर्शिका अनुष्ठानों के जाफरी रूपरेखा का पालन करती है, जबकि मदीना में ज़ियारत हज से पहले या बाद में एक गहराई से प्रिय यात्रा बनी रहती है।';

  @override
  String get umrahIntro =>
      'उमरह मक्का की छोटी तीर्थ यात्रा है और, हज के विपरीत, साल के किसी भी समय की जा सकती है। जबकि अनिवार्य नहीं है, यह अत्यंत आध्यात्मिक पुरस्कार रखती है और इसे पूजा का एक अत्यधिक अनुशंसित कार्य माना जाता है। यह हज के साथ कई अनुष्ठान साझा करती है लेकिन छोटी है, चार मुख्य अनुष्ठानों से युक्त।';

  @override
  String get voiceInputTitle => 'वॉयस इनपुट';

  @override
  String get voiceInputMicTitle => 'माइक्रोफोन';

  @override
  String get voiceInputMicSubtitle =>
      'टाइप करने के बजाय आयारा से पूछने के लिए बोलें।';

  @override
  String get voiceInputMicDenied => 'माइक्रोफोन एक्सेस अस्वीकृत किया गया।';

  @override
  String get voiceInputSpeak => 'बोलें';

  @override
  String get voiceInputListening => 'सुन रहे हैं…';

  @override
  String get voiceInputPermissionDenied =>
      'वॉयस इनपुट के लिए माइक्रोफोन एक्सेस आवश्यक है।';
}
