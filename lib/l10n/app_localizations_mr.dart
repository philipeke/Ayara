// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'तुमची भाषा निवडा';

  @override
  String get languageSelectSub => 'ही नंतर सेटिंग्जमध्ये बदलू शकता';

  @override
  String get actionContinue => 'पुढे चला';

  @override
  String get languageSuggestedHeader => 'सुचवलेले';

  @override
  String get languageAllHeader => 'सर्व भाषा';

  @override
  String get languageSuggestedBadge => 'सुचवलेले';

  @override
  String get languageSearchHint => 'शोधा…';

  @override
  String get planBasic => 'स्टँडर्ड';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'दैनिक मार्गदर्शन';

  @override
  String get categorySlot02 => 'ईमान आणि विश्वास';

  @override
  String get categorySlot03 => 'नमाज चिंतन';

  @override
  String get categorySlot04 => 'सब्र आणि आशा';

  @override
  String get categorySlot05 => 'क्षमायाचना करा';

  @override
  String get categorySlot06 => 'दया आणि करुणा';

  @override
  String get categorySlot07 => 'विश्वासाची ताकद';

  @override
  String get categorySlot08 => 'कृतज्ञ हृदय';

  @override
  String get categorySlot09 => 'जीवनाचा उद्देश';

  @override
  String get categorySlot10 => 'कौटुंबिक नाती';

  @override
  String get categorySlot11 => 'आंतरिक शांती';

  @override
  String get categorySlot12 => 'पैगंबरांचे शहाणपण';

  @override
  String get categorySlot13 => 'सद्गुणी स्वभाव';

  @override
  String get categorySlot14 => 'प्रलोभनाला प्रतिकार';

  @override
  String get categorySlot15 => 'संध्याकाळचा जिक्र';

  @override
  String get categoryCustom => 'वैयक्तिक चिंतन';

  @override
  String get dhikrMeaningSubhanallah => 'अल्लाह पवित्र आहे';

  @override
  String get dhikrMeaningAlhamdulillah => 'सर्व स्तुती अल्लाहसाठी आहे';

  @override
  String get dhikrMeaningAllahuAkbar => 'अल्लाह सर्वात महान आहे';

  @override
  String get quranVerseHeartAtRest =>
      'निश्चितच, अल्लाहच्या स्मरणाने हृदयांना शांती मिळते.';

  @override
  String get promptHint =>
      'इस्लामी मार्गदर्शन आणि चिंतनासाठी एखादी श्रेणी निवडा';

  @override
  String get currentLanguage => 'सध्याची भाषा';

  @override
  String get settingsLanguage => 'भाषा सेटिंग्ज';

  @override
  String get settingsTitle => 'सेटिंग्ज';

  @override
  String get chooseLanguage => 'तुमची भाषा निवडा';

  @override
  String get continueCta => 'पुढे चला';

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
  String get optionsCta => 'पर्याय';

  @override
  String get newCta => 'नवीन';

  @override
  String get actionsTitle => 'तुम्हाला काय करायचे आहे?';

  @override
  String get copy => 'कॉपी करा';

  @override
  String get share => 'शेअर करा';

  @override
  String get close => 'बंद करा';

  @override
  String get copiedToast => 'क्लिपबोर्डवर कॉपी केले';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'नवीन उत्तर तयार करता आले नाही';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nपुन्हा प्रयत्न करायचा आहे का?';
  }

  @override
  String get cancelCta => 'रद्द करा';

  @override
  String get retryCta => 'पुन्हा प्रयत्न करा';

  @override
  String get authTitle => 'तुमचे खाते तयार करा';

  @override
  String get continueAsGuest => 'अतिथी म्हणून पुढे जा';

  @override
  String get signInGoogle => 'Google ने साइन इन करा';

  @override
  String get signInApple => 'Apple ने साइन इन करा';

  @override
  String get signInEmail => 'ईमेलने साइन इन करा';

  @override
  String get upgradeWithApple => 'Apple सह पुढे जा';

  @override
  String get mustAccept =>
      'तुम्ही अटी स्वीकारल्या पाहिजेत आणि गोपनीयता धोरण मान्य केले पाहिजे.';

  @override
  String get termsLabel => 'मी सेवा अटी स्वीकारतो/स्वीकारते';

  @override
  String get privacyLabel => 'मी गोपनीयता धोरण वाचले आहे';

  @override
  String get marketingOptIn => 'मला बातम्या आणि ऑफर मिळण्यास मान्य आहे';

  @override
  String get openTerms => 'सेवा अटी';

  @override
  String get openPrivacy => 'गोपनीयता धोरण';

  @override
  String get accountSection => 'खाते';

  @override
  String get guestMode => 'अतिथी मोड';

  @override
  String get signedIn => 'साइन इन झाले';

  @override
  String get upgradeHint =>
      'खाते तयार करून तुमची चिंतनं सर्व डिव्हाइसेसवर जतन करा.';

  @override
  String get upgradeWithGoogle => 'Google सह पुढे जा';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get snackUpgraded => 'खाते Google सह अपग्रेड केले ✅';

  @override
  String get snackSignedIn => 'Google सह साइन इन केले ✅';

  @override
  String get snackSignedOut => 'साइन आउट झाले';

  @override
  String get snackSignedInApple => 'Apple सह साइन इन केले ✅';

  @override
  String get snackSignedInGoogle => 'Google सह साइन इन केले ✅';

  @override
  String get snackUpgradedApple => 'खाते Apple सह अपग्रेड केले ✅';

  @override
  String get snackUpgradedGoogle => 'खाते Google सह अपग्रेड केले ✅';

  @override
  String get historyTitle => 'मागील चिंतनं';

  @override
  String get historyOpenCta => 'मागील चिंतनं';

  @override
  String get historyEmpty => 'अजून कोणतेही जतन केलेले चिंतन नाही.';

  @override
  String get historyDeleteTitle => 'चिंतन हटवायचे?';

  @override
  String get historyDeleteBody =>
      'यामुळे निवडलेला आयटम कायमचा काढून टाकला जाईल.';

  @override
  String get deleteCta => 'हटवा';

  @override
  String get historyButton => 'मागील चिंतनं';

  @override
  String get historyEmptyTitle => 'अजून चिंतन नाही';

  @override
  String get historyEmptyBody =>
      'आधी काहीतरी तयार करा — तुमचे जतन केलेले आयटम इथे दिसतील.';

  @override
  String get historyDelete => 'हटवा';

  @override
  String get footerTitle => 'Wilaya, ईमान आणि सब्रसह';

  @override
  String get footerSubtitle => 'एका वेळी एक प्रार्थना';

  @override
  String get genericErrorSnack =>
      'काहीतरी चुकले — कृपया थोड्या वेळाने पुन्हा प्रयत्न करा.';

  @override
  String get upgradeAccountCta =>
      'तुमची चिंतनं सर्व डिव्हाइसेसवर जतन करा – खाते तयार करा';

  @override
  String get deleteAccount => 'खाते हटवा';

  @override
  String get exportData => 'माझा डेटा निर्यात करा';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'जरा थांबा 🐯\nपुढच्या उत्तरासाठी Ayara ला थोडा वेळ हवा आहे…';

  @override
  String get rateDailyLimit =>
      'आत्ता तुमची चिंतनं संपली आहेत.\nअधिक चिंतनं मिळवा किंवा Wilaya ला अपग्रेड करा.';

  @override
  String get rateCreditsExhausted =>
      'तुम्ही तुमची सर्व चिंतनं वापरली आहेत.\nपुढे सुरू ठेवण्यासाठी टॉप-अप करा किंवा Wilaya ला अपग्रेड करा.';

  @override
  String get rateGraceCreditsExhausted =>
      'आत्ता तुमची चिंतनं संपली आहेत.\nअधिक चिंतनं मिळवा किंवा Wilaya ला अपग्रेड करा.';

  @override
  String get premiumDescription =>
      'Wilaya प्रीमियम वैशिष्ट्ये, भविष्यातील श्रेण्या आणि एक विशेष बॅज अनलॉक करते.';

  @override
  String ratePlanExhausted(String plan) {
    return 'तुमची चिंतनं आत्ता रिकामी आहेत. योजना: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'तुमची चिंतनं तपासता आली नाहीत: $message';
  }

  @override
  String get rateCheckGenericError => 'तुमची चिंतनं तपासताना काहीतरी चुकले.';

  @override
  String get aiFallbackGeneric =>
      'काहीतरी चुकले — कृपया थोड्या वेळाने पुन्हा प्रयत्न करा.';

  @override
  String get limitSectionTitle => 'चिंतनं';

  @override
  String get limitTodayLabel => 'वापर';

  @override
  String limitCreditsLabel(Object credits) {
    return 'उरलेली चिंतनं: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'योजना: $plan';
  }

  @override
  String get limitLoadingLabel => 'लोड होत आहे…';

  @override
  String get limitLoadingLabelDescription =>
      'वापर आकडेवारी घेत असताना चिंतन कार्डवर दाखवले जाते.';

  @override
  String get aiLimitTitle => 'चिंतनं';

  @override
  String get aiLimitSubtitle =>
      'प्रत्येक उत्तरासाठी 1 चिंतन वापरले जाते. स्टँडर्डमध्ये सुरुवातीची चिंतनं असतात. Wilaya प्रीमियम श्रेण्या अनलॉक करते आणि टॉप-अप सक्षम करते.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total चिंतनं वापरली';
  }

  @override
  String get creditsSectionTitle => 'चिंतनं';

  @override
  String get creditsUsageLabel => 'वापर';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'उरलेली चिंतनं: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'योजना: $plan';
  }

  @override
  String get creditsLoadingLabel => 'लोड होत आहे…';

  @override
  String get creditsLoadingLabelDescription =>
      'चिंतन आकडेवारी घेत असताना दाखवले जाते.';

  @override
  String get creditsTitle => 'चिंतनं';

  @override
  String get creditsSubtitle =>
      'प्रत्येक उत्तरासाठी 1 चिंतन वापरले जाते. स्टँडर्डमध्ये सुरुवातीची चिंतनं असतात. Wilaya प्रीमियम श्रेण्या अनलॉक करते आणि टॉप-अप सक्षम करते.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total चिंतनं वापरली';
  }

  @override
  String get settingsDeleteTitle => 'खाते हटवा';

  @override
  String get settingsDeleteDescription =>
      'तुमचे खाते आणि संबंधित सर्व डेटा कायमचा हटवा.';

  @override
  String get settingsDeleteButtonLabel => 'माझे खाते हटवा';

  @override
  String get settingsDeleteDialogTitle => 'खाते हटवायचे?';

  @override
  String get settingsDeleteDialogBody =>
      'ही कृती कायमची आहे आणि उलटवता येणार नाही.\n\nतुमचे सर्व चॅट्स, इतिहास आणि खात्याची माहिती हटवली जाईल.';

  @override
  String get settingsDeleteDialogCancel => 'रद्द करा';

  @override
  String get settingsDeleteDialogConfirm => 'हटवा';

  @override
  String get settingsFreeLimitUsedTitle => 'सुरुवातीची चिंतनं वापरून झाली';

  @override
  String get settingsFreeLimitUsedDescription =>
      'या डिव्हाइससाठीची सुरुवातीची चिंतनं वापरली गेली आहेत. पुढे सुरू ठेवण्यासाठी Wilaya ला अपग्रेड करा किंवा अधिक चिंतनं खरेदी करा.';

  @override
  String get settingsStarterCreditsUsedTitle => 'सुरुवातीची चिंतनं वापरून झाली';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'या डिव्हाइससाठीची सुरुवातीची चिंतनं वापरली गेली आहेत. पुढे सुरू ठेवण्यासाठी Wilaya ला अपग्रेड करा किंवा अधिक चिंतनं खरेदी करा.';

  @override
  String get deviceBoundError =>
      'हे डिव्हाइस आधीच दुसऱ्या खात्याशी जोडलेले आहे. कृपया मूळ खात्याने साइन इन करा.';

  @override
  String get premiumTitle => 'Wilaya मोड';

  @override
  String get premiumSubtitleBasic => 'Ayara चा संपूर्ण अनुभव अनलॉक करा.';

  @override
  String get premiumSubtitlePremium =>
      'तुम्ही Wilaya वर आहात. आणखी चिंतनं हवीत?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'सध्याची योजना: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'चिंतनं: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'खरेदी आत्ता उपलब्ध नाही.';

  @override
  String get premiumSignInToPurchase =>
      'चिंतनं खरेदी करण्यासाठी किंवा Wilaya अनलॉक करण्यासाठी साइन इन करा.';

  @override
  String get premiumRestorePurchases => 'खरेदी पुनर्स्थापित करा';

  @override
  String get premiumProcessing => 'प्रक्रिया सुरू आहे…';

  @override
  String get premiumRestoreHintTitle =>
      'या किंवा दुसऱ्या डिव्हाइसवर आधीच Wilaya किंवा चिंतनं खरेदी केली आहेत का?';

  @override
  String get premiumRestoreHintBody =>
      'ती दिसत नसल्यास तुमच्या खरेदी पुनर्स्थापित करा.';

  @override
  String get premiumBuyCredits200 => '200 चिंतनं खरेदी करा';

  @override
  String get premiumBuyCredits400 => '400 चिंतनं खरेदी करा';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya मोडला अपग्रेड करा';

  @override
  String get premiumTopupHint =>
      'Wilaya सह, गरज पडेल तेव्हा तुम्ही अतिरिक्त चिंतनांनी टॉप-अप करू शकता.';

  @override
  String get premiumUpgradeCta => 'अपग्रेड करा';

  @override
  String get premiumRequiredForCategory =>
      'ही श्रेणी फक्त Wilaya वापरकर्त्यांसाठी उपलब्ध आहे. सर्व प्रीमियम सामग्री अनलॉक करण्यासाठी सेटिंग्जमध्ये अपग्रेड करा.';

  @override
  String get premiumBenefitsBasic =>
      'अधिक चिंतनं, प्रीमियम श्रेण्यांमध्ये प्रवेश आणि जेव्हा गरज असेल तेव्हा पुढे सुरू ठेवण्यासाठी Wilaya अनलॉक करा.';

  @override
  String get premiumBenefitsPremium =>
      'तुम्ही Wilaya मोडमध्ये आहात. चिंतनं कमी होत असतील तर काही अतिरिक्त चिंतनं जोडा आणि व्यत्ययाशिवाय सुरू ठेवा.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya अनलॉक करा';

  @override
  String get premiumButtonTopup1000 => '1000 चिंतनं जोडा';

  @override
  String get premiumBadge => 'Wilaya सक्रिय';

  @override
  String get premiumLoadingStore => 'स्टोअर लोड होत आहे…';

  @override
  String get premiumProductNotAvailable =>
      'हे उत्पादन अद्याप स्टोअरमध्ये उपलब्ध नाही. कृपया नंतर पुन्हा प्रयत्न करा.';

  @override
  String get premiumPurchaseError =>
      'खरेदी करताना काहीतरी चुकले. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get premiumBuyCredits100 => '100 चिंतनं जोडा';

  @override
  String get premiumFeatureLocked =>
      'हे वैशिष्ट्य वापरण्यासाठी Wilaya अनलॉक करा.';

  @override
  String get lockedCategoriesHint =>
      'काही श्रेण्या फक्त Wilaya सदस्यांसाठी राखीव आहेत. तुमच्या प्रवासातील प्रत्येक चिंतन अनुभवण्यासाठी त्या अनलॉक करा.';

  @override
  String get freePlanBlockedTitle => 'तुमची सुरुवातीची चिंतनं संपली आहेत';

  @override
  String get freePlanBlockedBody =>
      'तुम्ही स्टँडर्ड योजनेवर आहात आणि सुरुवातीची चिंतनं संपली आहेत. पुढे सुरू ठेवण्यासाठी — आणि प्रीमियम श्रेण्या अनलॉक करण्यासाठी — Wilaya ला अपग्रेड करा.';

  @override
  String get freePlanBlockedCtaGoPremium => 'खालील Wilaya पर्याय पहा';

  @override
  String get graceBlockedTitle => 'तुमची सुरुवातीची चिंतनं संपली आहेत';

  @override
  String get graceBlockedBody =>
      'तुम्ही स्टँडर्ड योजनेवर आहात आणि सुरुवातीची चिंतनं संपली आहेत. पुढे सुरू ठेवण्यासाठी — आणि प्रीमियम श्रेण्या अनलॉक करण्यासाठी — Wilaya ला अपग्रेड करा.';

  @override
  String get graceBlockedCtaGoPremium => 'खालील Wilaya पर्याय पहा';

  @override
  String get rateGuestMustSignIn =>
      'Ayara आणि तुमची चिंतनं वापरण्यासाठी साइन इन करा.';

  @override
  String get guestNoCreditsTitle => 'अतिथी मोड';

  @override
  String get guestNoCreditsBody =>
      'अतिथी म्हणून तुम्ही ॲप पाहू शकता, पण चिंतनं वापरू शकत नाही. चिंतनं वापरण्यासाठी आणि खरेदी अनलॉक करण्यासाठी नंतर सेटिंग्जमध्ये लॉग इन करा.';

  @override
  String get guestDialogContinue => 'पुढे चला';

  @override
  String get guestDialogLoginInstead => 'त्याऐवजी लॉग इन करा';

  @override
  String get optionalLabel => 'ऐच्छिक';

  @override
  String get accountDeleteSuccessTitle => 'खाते हटवले';

  @override
  String get accountDeleteSuccessBody =>
      'तुमचे खाते आणि संबंधित डेटा यशस्वीरित्या हटवण्यात आले आहेत.';

  @override
  String get accountDeleteSuccessClose => 'बंद करा';

  @override
  String get accountDeleteErrorTitle => 'खाते हटवता आले नाही';

  @override
  String get accountDeleteErrorClose => 'ठीक आहे';

  @override
  String get accountDeleteReauthCancelled =>
      'पुन्हा-प्रमाणीकरण रद्द झाले. कृपया पुन्हा साइन इन करून हटवण्याचा प्रयत्न करा.';

  @override
  String get accountDeleteReauthRequired =>
      'खाते हटवण्यासाठी अलीकडील लॉगिन आवश्यक आहे. कृपया साइन आउट करा, पुन्हा साइन इन करा आणि हटवण्याचा प्रयत्न करा.';

  @override
  String get settingsDeletePermanentWarning =>
      'ही कृती कायमची आहे आणि उलटवता येणार नाही. तुमच्या खात्याशी संबंधित सर्व डेटा हटवला जाईल.';

  @override
  String get dailyGraceTitle => 'दैनिक मार्गदर्शन';

  @override
  String get dailyGraceScriptureLabel => 'आजचा आयत';

  @override
  String get dailyGraceSaintLabel => 'सप्ताहाचा व्यक्तिमत्व';

  @override
  String get dailyGraceReflectionLabel => 'संध्याकाळचे चिंतन';

  @override
  String get dailyGraceCopiedToast => 'आयत क्लिपबोर्डवर कॉपी केला';

  @override
  String get locationConsentLabel =>
      'किब्लाची दिशा आणि नमाजच्या वेळांसाठी Ayara ला माझे स्थान वापरू द्या';

  @override
  String get locationConsentHint =>
      'फक्त या वैशिष्ट्यांसाठी वापरले जाते. तुमचे स्थान कधीही शेअर किंवा साठवले जात नाही.';

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
  String get askPageTitle => 'Ayara ला विचारा';

  @override
  String get askPageDescription =>
      'ईमान, नमाज, जीवन किंवा इस्लामी आचरणाबद्दल काहीही विचारा आणि कुरआन व अहल अल-बैत यांच्या शिकवणुकीवर आधारित मार्गदर्शन मिळवा.';

  @override
  String get askPageInputHint => 'तुमचा प्रश्न येथे टाइप करा…';

  @override
  String get askPageSubmitCta => 'विचारा';

  @override
  String get askPageInputEmptyError => 'कृपया आधी प्रश्न लिहा.';

  @override
  String get askResultYourQuestion => 'तुमचा प्रश्न';

  @override
  String get guidancePageTitle => 'किब्ला';

  @override
  String get qiblaFacingMecca => 'मक्केकडे तोंड करून';

  @override
  String get qiblaCompassInstruction =>
      'सोनेरी सुई वर दिशेला येईपर्यंत तुमचा फोन फिरवा.\nती दिशा किब्लाकडे (मक्का) निर्देश करते.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS सिग्नल कमकुवत आहे. बाहेर जा आणि पुन्हा प्रयत्न करा वर टॅप करा.';

  @override
  String get qiblaRetry => 'पुन्हा प्रयत्न करा';

  @override
  String get qiblaTitle => 'किब्लाची दिशा';

  @override
  String qiblaDistanceLabel(String km) {
    return 'मक्केपर्यंत $km किमी';
  }

  @override
  String get qiblaLocationNeededTitle => 'स्थान आवश्यक';

  @override
  String get qiblaLocationNeededBody =>
      'तुम्ही जिथे असाल तिथून मक्केतील काबाची दिशा मोजण्यासाठी Ayara ला स्थान प्रवेश द्या.';

  @override
  String get qiblaOpenSettings => 'सेटिंग्ज उघडा';

  @override
  String get qiblaCompassLoading => 'तुमचे स्थान शोधत आहे…';

  @override
  String get qiblaTowardMecca => 'मक्केकडे';

  @override
  String get prayerTimesTitle => 'नमाजच्या वेळा';

  @override
  String get prayerTimesFajr => 'फज्र';

  @override
  String get prayerTimesDhuhr => 'जुहर';

  @override
  String get prayerTimesAsr => 'अस्र';

  @override
  String get prayerTimesMaghrib => 'मगरीब';

  @override
  String get prayerTimesIsha => 'इशा';

  @override
  String get prayerTimesLocationNeededTitle => 'स्थान आवश्यक';

  @override
  String get prayerTimesLocationNeededBody =>
      'तुमच्या शहरासाठी अचूक नमाज वेळा मोजण्यासाठी Ayara ला स्थान प्रवेश द्या.';

  @override
  String get prayerTimesNextLabel => 'पुढील';

  @override
  String get prayerTimesDoneLabel => 'पूर्ण';

  @override
  String get monthlyPrayerTimesTitle => 'मासिक नमाज वेळा';

  @override
  String get monthlyPrayerTimesViewButton => 'संपूर्ण महिना पहा';

  @override
  String get monthlyPrayerTimesNextMonth => 'पुढचा महिना';

  @override
  String get monthlyPrayerTimesDayHeader => 'दिवस';

  @override
  String get sharePrayerTimes => 'नमाज वेळा शेअर करा';

  @override
  String get notificationsSectionTitle => 'सूचना';

  @override
  String get notificationsSectionSubtitle =>
      'नमाज स्मरणपत्रे, कॅलेंडर कार्यक्रम आणि अधिक';

  @override
  String get dailyReflectionReminderTitle => 'दैनिक चिंतन';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara उघडण्यासाठी आणि तुमच्या श्रद्धेशी जोडलेले राहण्यासाठी सौम्य दैनिक स्मरणपत्र.';

  @override
  String get dailyReflectionReminderEnable => 'दैनिक स्मरणपत्र सक्षम करा';

  @override
  String get dailyReflectionReminderTimeLabel => 'स्मरणपत्राची वेळ';

  @override
  String get prayerNotificationsTitle => 'नमाज स्मरणपत्रे';

  @override
  String get prayerNotificationsDescription =>
      'दिवसभर जोडलेले राहण्यासाठी प्रत्येक नमाजपूर्वी सौम्य स्मरणपत्र मिळवा.';

  @override
  String get prayerNotificationsEnable => 'नमाज स्मरणपत्रे सक्षम करा';

  @override
  String get prayerNotificationsOpenSettings => 'सूचना सेटिंग्ज उघडा';

  @override
  String get prayerNotificationsDenied => 'सूचना बंद आहेत';

  @override
  String get prayerNotificationsDeniedHint =>
      'नमाज वेळेची स्मरणपत्रे मिळवण्यासाठी सेटिंग्जमध्ये जा आणि Ayara साठी सूचना सक्षम करा.';

  @override
  String get notificationsConsentLabel => 'नमाज वेळांसाठी सूचना परवानगी द्या';

  @override
  String get prayerNotifTitleFajr => '🌅 फज्र — पहाटेची नमाज';

  @override
  String get prayerNotifBodyFajr =>
      'फज्र ही अहल अल-बैत यांच्या सकाळची नमाज आहे. इमाम अली (AS) म्हणाले: पहाटेची नमाज जशी तुमच्या सर्वात मौल्यवान अमानतीचे रक्षण करता तशी जपा. उठा, स्वतःला पवित्र करा आणि अल्लाहसमोर उभे रहा.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ जुहर — दुपारची नमाज';

  @override
  String get prayerNotifBodyDhuhr =>
      'अहल अल-बैत यांच्या इमामांनी स्मरणाच्या प्रत्येक क्षणाला महत्त्व दिले. तुमचा दिवस थांबवा, गरज असेल तर जुहर आणि अस्र एकत्र करा आणि तुमचे हृदय पुन्हा अल्लाहकडे वळवा.';

  @override
  String get prayerNotifTitleAsr => '🌤️ अस्र — दुपारनंतरची नमाज';

  @override
  String get prayerNotifBodyAsr =>
      'नमाज जपा, कारण ती तुमच्यात आणि अल्लाहमध्ये असलेली वाचा आहे. अस्रची वेळ आली आहे — स्मरणाविना ती जाऊ देऊ नका.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 मगरीब — सूर्यास्ताची नमाज';

  @override
  String get prayerNotifBodyMaghrib =>
      'सूर्य मावळला आहे — अहल अल-बैत यांनी दुआसाठी पवित्र मानलेला क्षण. मगरीब अदा करा आणि रात्र सुरू होण्यापूर्वी अल्लाहकडे दुआसाठी हात उचला.';

  @override
  String get prayerNotifTitleIsha => '🌙 इशा — रात्रीची नमाज';

  @override
  String get prayerNotifBodyIsha =>
      'तुमचा दिवस अल्लाहच्या सान्निध्यात संपवा. इमामांनी इशानंतर सलात अल-लैलची शिफारस केली — पण आधी तुमची इशा पूर्ण करा आणि दिवस त्याच्या स्मरणाने समाप्त करा.';

  @override
  String get outOfReflectionsBannerText => 'तुमची सर्व चिंतनं वापरली गेली आहेत';

  @override
  String get outOfReflectionsBannerCta => 'अधिक मिळवा';

  @override
  String get dhikrPageTitle => 'जिक्र';

  @override
  String get dhikrTapToCount => 'मोजण्यासाठी वर्तुळावर टॅप करा';

  @override
  String get dhikrResetButton => 'रीसेट';

  @override
  String get dhikrComplete => 'माशाअल्लाह';

  @override
  String get dhikrCompleteMessage =>
      'तुम्ही अल्लाहच्या 100 स्मरणांची पूर्तता केली आहे. ती तुमच्या हृदयासाठी प्रकाश ठरो.';

  @override
  String get disclaimerTitle => 'या ॲपच्या मार्गदर्शनाबद्दल';

  @override
  String get disclaimerBody =>
      'Ayara तुमच्या वैयक्तिक श्रद्धेच्या प्रवासाला आधार देण्यासाठी इस्लामी चिंतन, स्मरणपत्रे आणि आध्यात्मिक सामग्री प्रदान करते, जी कुरआन आणि अहल अल-बैत यांच्या शिकवणुकीवर आधारित आहे. ही सामग्री केवळ सामान्य माहिती आणि प्रेरणादायी उद्देशांसाठी दिली जाते.\n\nAyara पात्र विद्वानांची जागा घेत नाही.\nया ॲपमधील मार्गदर्शन हे जाणकार इस्लामी विद्वान, मरजा\' किंवा धर्मशास्त्रात प्रशिक्षित शिक्षक यांचा पर्याय नाही. शिया इस्लाममध्ये, धार्मिक मार्गदर्शन जाफरी फिक्ह शाळा आणि जिवंत मरजाच्या (अनुकरणाच्या स्त्रोताच्या) परंपरेत रुजलेले आहे — असा पात्र फक़ीह ज्यांचे निर्णय धार्मिक आचरणात विश्वासणाऱ्यांना मार्गदर्शन करतात. जर तुम्हाला धार्मिक नियम, हलाल-हराम किंवा वैयक्तिक धार्मिक जबाबदाऱ्यांबद्दल प्रश्न असतील, तर कृपया पात्र मरजा\' किंवा तुमच्या समुदायातील विद्वानांचा सल्ला घ्या.\n\nहे ॲप धार्मिक फतवे देत नाही.\nAyara फिक्ह किंवा वैयक्तिक धार्मिक जबाबदाऱ्यांच्या बाबतीत अधिकृत निर्णय देत नाही. येथे काहीही फतवा किंवा बंधनकारक धार्मिक निर्देश मानू नये.\n\nअहल अल-बैत यांचे केंद्रस्थान.\nशिया इस्लाममध्ये, पैगंबर मुहम्मद ﷺ आणि त्यांचे पवित्र कुटुंब — अहल अल-बैत — हे कुरआननंतर इस्लामी समुदायाचे अधिकृत मार्गदर्शक आहेत. अहल अल-बैतचे बारा इमाम हे इस्लामी शिकवणीचे दैवी नियुक्त अर्थलावणारे आहेत. या ॲपमधील सामग्री या परंपरेचे प्रामाणिकपणे प्रतिनिधित्व करण्याचा आणि तिचा सन्मान राखण्याचा प्रयत्न करते.\n\nसमुदायाचे महत्त्व.\nहे ॲप तुमच्या श्रद्धेशी नाते अधिक दृढ व्हावे यासाठी आहे, तसेच तुमच्या स्थानिक मशिदी, इस्लामी केंद्र आणि धार्मिक समुदायाच्या महत्त्वपूर्ण भूमिकेचा खोल आदर राखते. तुमच्याजवळच्या पात्र शिक्षकांशी जोडलेले राहण्याचे आणि त्यांच्याकडून शिकण्याचे आम्ही प्रोत्साहन देतो.';

  @override
  String get disclaimerClose => 'मला समजले';

  @override
  String get disclaimerInfoTooltip => 'या ॲपच्या मार्गदर्शनाबद्दल';

  @override
  String get disclaimerSettingsSubtitle =>
      'फक्त सामान्य माहितीच्या उद्देशांसाठी. संपूर्ण अस्वीकरण वाचण्यासाठी टॅप करा.';

  @override
  String get disclaimerSectionHeader => 'मार्गदर्शन अस्वीकरण';

  @override
  String get navHome => 'मुख्यपृष्ठ';

  @override
  String get navReflect => 'चिंतन';

  @override
  String get navDuas => 'दुआ';

  @override
  String get navCalendar => 'कॅलेंडर';

  @override
  String get dashboardToday => 'आज';

  @override
  String get dashboardComingUp => 'पुढे येणारे';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दिवस',
      one: 'दिवस',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'त्वरित प्रवेश';

  @override
  String get quickActionQibla => 'किब्ला';

  @override
  String get quickActionDhikr => 'जिक्र';

  @override
  String get quickActionDailyGrace => 'मार्गदर्शन';

  @override
  String get quickActionPrayerTimes => 'नमाज वेळा';

  @override
  String get askAyaraTitle => 'Ayara ला विचारा';

  @override
  String get askAyaraSubtitle =>
      'कोणताही इस्लामी प्रश्न विचारा आणि विचारपूर्वक, मार्गदर्शित उत्तर मिळवा.';

  @override
  String get askAyaraHint => 'उदा. रमजानचे महत्त्व काय आहे?';

  @override
  String get askAyaraSubmit => 'विचारा';

  @override
  String get wisdomOfTheDayTitle => 'आजचे शहाणपण';

  @override
  String get calendarScreenTitle => 'इस्लामी कॅलेंडर';

  @override
  String get calendarUpcomingOccasions => 'आगामी प्रसंग';

  @override
  String get calendarOccasionRemindersTitle => 'प्रसंग स्मरणपत्रे';

  @override
  String get calendarOccasionRemindersHint =>
      'प्रत्येक प्रसंगाच्या आदल्या संध्याकाळी सूचना दिली जाईल';

  @override
  String get calendarNotifPermissionDenied =>
      'सूचना परवानगी नाकारली. ती तुमच्या डिव्हाइस सेटिंग्जमध्ये सक्षम करा.';

  @override
  String get calendarNoEvents => 'कोणतेही आगामी कार्यक्रम आढळले नाहीत.';

  @override
  String get calendarAddToPhone => 'फोन कॅलेंडरमध्ये जोडा';

  @override
  String get calendarAddedToPhone => 'कॅलेंडरमध्ये जोडले';

  @override
  String get calendarCountdownToday => 'आज';

  @override
  String get calendarCountdownTomorrow => 'उद्या';

  @override
  String calendarCountdownDays(int days) {
    return '$days दिवसांनी';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'जाने';

  @override
  String get calendarMonthFeb => 'फेब्रु';

  @override
  String get calendarMonthMar => 'मार्च';

  @override
  String get calendarMonthApr => 'एप्रिल';

  @override
  String get calendarMonthMay => 'मे';

  @override
  String get calendarMonthJun => 'जून';

  @override
  String get calendarMonthJul => 'जुलै';

  @override
  String get calendarMonthAug => 'ऑगस्ट';

  @override
  String get calendarMonthSep => 'सप्टें';

  @override
  String get calendarMonthOct => 'ऑक्टो';

  @override
  String get calendarMonthNov => 'नोव्हे';

  @override
  String get calendarMonthDec => 'डिसें';

  @override
  String get calendarSeasonMuharramEarly => 'मुहर्रमचे दिवस — करबला स्मरा';

  @override
  String get calendarSeasonAshura => 'आशुरा — या हुसेन (AS)';

  @override
  String get calendarSeasonMuharramLate => 'मुहर्रम — शोक आणि चिंतनाचे दिवस';

  @override
  String get calendarSeasonArbaeen => 'अरबाईन — हुसेनचे चाळीस दिवस';

  @override
  String get calendarSeasonRoadToArbaeen => 'अरबाईनकडे जाणारा मार्ग';

  @override
  String get calendarSeasonMabath => 'मबअथ मुबारक — वह्यीची पहाट';

  @override
  String get calendarSeasonMidShaban =>
      'मध्य शाबान — इमाम अल-महदी (AJ) यांचा जन्मदिवस';

  @override
  String get calendarSeasonRamadan => 'रमजान मुबारक — कुरआनचा महिना';

  @override
  String get calendarSeasonGhadir => 'ईद अल-गदीर मुबारक!';

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
  String get hijriMonth11 => 'धू अल-क़िदा';

  @override
  String get hijriMonth12 => 'धू अल-हिज्जा';

  @override
  String get duasScreenTitle => 'दुआ आणि ज़ियारत';

  @override
  String get duasSearchHint => 'दुआ, ज़ियारत शोधा…';

  @override
  String get duasFilterAll => 'सर्व';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दुआ आणि ज़ियारत',
      one: '$count दुआ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'कोणतीही दुआ आढळली नाही.';

  @override
  String get duaCategoryDaily => 'दैनिक';

  @override
  String get duaCategoryWeekly => 'साप्ताहिक';

  @override
  String get duaCategoryOccasions => 'प्रसंग';

  @override
  String get duaCategoryZiyarat => 'ज़ियारत';

  @override
  String get duaCategoryTasbih => 'तसबिह';

  @override
  String get eventTypeBirth => 'जन्म';

  @override
  String get eventTypeMartyrdom => 'शहादत';

  @override
  String get eventTypeOccasion => 'प्रसंग';

  @override
  String get duaCopyTooltip => 'भाषांतर कॉपी करा';

  @override
  String get duaToggleTransliteration => 'लिप्यंतरण';

  @override
  String get duaToggleTranslation => 'भाषांतर';

  @override
  String get duaAskAiLabel => 'ही दुआ समजावून सांगण्यासाठी Ayara ला विचारा';

  @override
  String get duaAskAiLockedLabel => 'Ayara ला विचारा (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara स्पष्टीकरणे फक्त Wilaya सदस्यांसाठी उपलब्ध आहेत. सेटिंग्जमध्ये अपग्रेड करा.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" बद्दल Ayara ला विचारा — लवकरच येत आहे!';
  }

  @override
  String get duaCopiedToast => 'दुआ क्लिपबोर्डवर कॉपी केली.';

  @override
  String get tasbihAllahuAkbarMeaning => 'अल्लाह सर्वात महान आहे';

  @override
  String get tasbihAlhamdulillahMeaning => 'सर्व स्तुती अल्लाहसाठी आहे';

  @override
  String get tasbihSubhanallahMeaning => 'अल्लाह पवित्र आहे';

  @override
  String get tasbihResetTooltip => 'रीसेट';

  @override
  String get tasbihCompleteTitle => 'तसबिह पूर्ण';

  @override
  String get tasbihCompleteMessage => 'अल्लाह तुमचा जिक्र स्वीकारो.';

  @override
  String get tasbihTapHint => 'मोजण्यासाठी कुठेही टॅप करा';

  @override
  String get tasbihatScreenTitle => 'नमाज मार्गदर्शक';

  @override
  String get tasbihatScreenSubtitle => 'प्रार्थनेतील स्तुतिवचन';

  @override
  String get tasbihatScreenDescription =>
      'दैनंदिन नमाजदरम्यान आणि नंतर वाचल्या जाणाऱ्या स्तुतिवचनांचे संपूर्ण मार्गदर्शन — अहल अल-बैत (अ) यांच्या परंपरेनुसार.';

  @override
  String get tasbihatArba3Title => 'तस्बीहात अल-अर्बअह';

  @override
  String get tasbihatArba3Subtitle => 'तिसऱ्या आणि चौथ्या रकअतमध्ये वाचले जाते';

  @override
  String get tasbihatArba3Info =>
      'शिया फिक्हनुसार, जुहर, अस्र, मगरीब आणि इशाच्या तिसऱ्या आणि चौथ्या रकअतमध्ये तस्बीहात अल-अर्बअह सूरह अल-फातिहाच्या जागी वाचले जाते. ते एकदा वाचणे वाजिब आहे, आणि तीनदा वाचणे मुस्तहब आहे.';

  @override
  String get tasbihatArba3Translation =>
      'अल्लाह पवित्र आहे · सर्व स्तुती अल्लाहसाठी आहे\nअल्लाहखेरीज कोणताही देव नाही · अल्लाह सर्वात महान आहे';

  @override
  String get tasbihatArba3CompleteTitle => 'पठण पूर्ण';

  @override
  String get tasbihatArba3CompleteMessage => 'तुमची नमाज स्वीकारली जावो — आमीन';

  @override
  String get tasbihatArba3TapHint => 'प्रत्येक पठणानंतर टॅप करा';

  @override
  String get tasbihatZahraSubtitle => 'प्रत्येक नमाजनंतर · 100 मणी';

  @override
  String get tasbihatZahraOriginLabel => 'उत्पत्ती';

  @override
  String get tasbihatZahraHadith =>
      'बीबी फातिमा अल-ज़हरा (स.अ.) यांनी पैगंबर ﷺ यांच्याकडे मदतनीस मागितला. ते म्हणाले: \"मी तुला त्यापेक्षा चांगली गोष्ट सांगू का? प्रत्येक नमाजनंतर 33 वेळा सुभानल्लाह, 33 वेळा अल्हम्दुलिल्लाह आणि 34 वेळा अल्लाहु अकबर म्हण. ते तुझ्यासाठी सेवकापेक्षा अधिक चांगले आहे.\"';

  @override
  String get tasbihatZahraHadithSource => '— बिहार अल-अनवार, खंड 85';

  @override
  String get tasbihatZahraOpenCounter => 'तसबिह काउंटर उघडा';

  @override
  String get tasbihatDuasTitle => 'शिफारस केलेल्या दुआ';

  @override
  String get tasbihatDuasSubtitle => 'तुमची नमाज पूर्ण केल्यानंतर';

  @override
  String get tasbihatDuaAyatKursiTitle => 'आयतुल कुर्सी';

  @override
  String get tasbihatDuaAyatKursiWhen => 'प्रत्येक फर्ज नमाजनंतर';

  @override
  String get tasbihatDuaAyatKursiSource => 'सूरह अल-बक़रह 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'जो कोणी प्रत्येक फर्ज नमाजनंतर आयतुल कुर्सी वाचतो, त्याच्या आणि जन्नतमध्ये मृत्यूखेरीज काही उरत नाही. इमाम अल-बाकिर (अ) म्हणाले की ती कुरआनमधील महान आयतींपैकी एक आहे.';

  @override
  String get tasbihatDuaSalawatTitle => 'सलावात';

  @override
  String get tasbihatDuaSalawatWhen => 'प्रत्येक नमाजनंतर · सर्व दुआ सील करते';

  @override
  String get tasbihatDuaSalawatSource => 'इमाम अल-सादिक (अ) — अल-काफी';

  @override
  String get tasbihatDuaSalawatNote =>
      'पैगंबर ﷺ आणि त्यांच्या पवित्र कुटुंबावर (आले मुहम्मद) सलाम पाठवणे प्रत्येक दुआच्या शेवटी करणे शिफारसीय आहे. इमाम अल-सादिक (अ) म्हणाले: \"मुहम्मद आणि त्यांच्या कुटुंबावर सलावात पाठवले नाहीत तोपर्यंत प्रत्येक दुआ रोखलेली असते.\"';

  @override
  String get tasbihatDuaFarajTitle => 'दुआ अल-फराज';

  @override
  String get tasbihatDuaFarajWhen =>
      'प्रत्येक नमाजनंतर · आपल्या काळातील इमामसाठी';

  @override
  String get tasbihatDuaFarajSource =>
      'इमाम अल-हसन अल-अस्करी (अ) यांनी शिकवलेली';

  @override
  String get tasbihatDuaFarajNote =>
      'इमाम अल-महदी (अफ) यांच्या पुनःप्रकट होण्यासाठी एक दुआ, ज्याला त्यांच्या वडिलांनी शिकवले. हे अनेक शिया मुसलमानांनी प्रार्थनेनंतर इमामच्या प्रति भक्ती म्हणून उच्चारले जाते.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'बीबी फातिमाची तसबिह';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'मगरीब आणि इशानंतर · विशेष शिफारसीय';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'इमाम अल-बाकिर (अ) — बिहार अल-अनवार';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'इमाम अल-बाकिर (अ) म्हणाले की झोपण्यापूर्वी इशानंतर तसबिह अल-ज़हरा वाचणे 1000 रकअत नफ्ल नमाजपेक्षा अधिक चांगले आहे. तिचा प्रकाश आकाशात चढतो.';

  @override
  String get tasbihFatimaGiftPre => 'पैगंबरांची भेट';

  @override
  String get tasbihFatimaGiftPost => 'प्रत्येक नमाजनंतर वाचली जाते';

  @override
  String get prayerTrackerTitle => 'नमाज ट्रॅकर';

  @override
  String get prayerTrackerPrayed => 'नमाज अदा केली';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count दिवसांची सलगता';
  }

  @override
  String get prayerTrackerAllComplete =>
      'आजच्या सर्व नमाज पूर्ण झाल्या. अल्लाह स्वीकारो.';

  @override
  String get dhikrTrackerTitle => 'तसबिह अल-ज़हरा';

  @override
  String get dhikrTrackerCompletedToday => 'आज पूर्ण झाले';

  @override
  String get dhikrTrackerNotDoneToday => 'आज झाले नाही';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count दिवसांची सलगता';
  }

  @override
  String get dhikrReminderTitle => 'तसबिह स्मरणपत्र';

  @override
  String get dhikrReminderDescription =>
      'तुमची तसबिह अल-ज़हरा (SA) वाचण्यासाठी सौम्य दैनिक स्मरणपत्र.';

  @override
  String get dhikrReminderEnable => 'तसबिह स्मरणपत्र सक्षम करा';

  @override
  String get dhikrReminderTimeLabel => 'स्मरणपत्राची वेळ';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'दैनिक हदीस';

  @override
  String get hadithLabelArabic => 'अरबी';

  @override
  String get hadithLabelTranslation => 'भाषांतर';

  @override
  String get hadithBadge => 'हदीस';

  @override
  String get hadithShare => 'ही हदीस शेअर करा';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara द्वारे';
  }

  @override
  String get hadithNavPrevious => 'मागील';

  @override
  String get hadithNavNext => 'पुढील';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'चौदा इन्फालिबल';

  @override
  String get imamsScreenSubtitle =>
      'पैगंबर, लेडी फातिमा, आणि बाराही इमाम — बाराही शिया इस्लाममध्ये शुद्ध आणि इन्फालिबल मार्गदर्शक';

  @override
  String get imamLabelBorn => 'जन्म';

  @override
  String get imamLabelMartyrdom => 'शहादत';

  @override
  String get imamLabelStatus => 'स्थिती';

  @override
  String get imamSectionBiography => 'चरित्र';

  @override
  String get imamSectionFamousSaying => 'प्रसिद्ध वचन';

  @override
  String get imamRoleProphet => 'अंतिम पैगंबर';

  @override
  String get imamRoleInfallible => 'निष्पाप';

  @override
  String get imamOrdinal1 => 'पहिले इमाम';

  @override
  String get imamOrdinal2 => 'दुसरे इमाम';

  @override
  String get imamOrdinal3 => 'तिसरे इमाम';

  @override
  String get imamOrdinal4 => 'चौथे इमाम';

  @override
  String get imamOrdinal5 => 'पाचवे इमाम';

  @override
  String get imamOrdinal6 => 'सहावे इमाम';

  @override
  String get imamOrdinal7 => 'सातवे इमाम';

  @override
  String get imamOrdinal8 => 'आठवे इमाम';

  @override
  String get imamOrdinal9 => 'नववे इमाम';

  @override
  String get imamOrdinal10 => 'दहावे इमाम';

  @override
  String get imamOrdinal11 => 'अकरावे इमाम';

  @override
  String get imamOrdinal12 => 'बारावे इमाम';

  @override
  String get duaAudioScreenTitle => 'दुआ ऐका';

  @override
  String get duaAudioScreenSubtitle =>
      'ऐकण्यासाठी एखादी दुआ निवडा. प्ले किंवा पॉज करण्यासाठी टाइलवर टॅप करा.';

  @override
  String get duaAudioComingSoonMessage =>
      'या दुआचा ऑडिओ आगामी अपडेटमध्ये उपलब्ध होईल.';

  @override
  String get duaAudioClose => 'बंद करा';

  @override
  String get duaAudioError =>
      'ऑडिओ लोड करता आला नाही. कृपया तुमचे कनेक्शन तपासा.';

  @override
  String get duaAudioMetaTransmittedBy => 'रिवायत करणारे';

  @override
  String get duaAudioMetaOccasion => 'प्रसंग';

  @override
  String get duaAudioMetaDuration => 'कालावधी';

  @override
  String get quickActionDailyHadith => 'दैनिक हदीस';

  @override
  String get quickAction14Masumeen => 'चौदा इन्फालिबल';

  @override
  String get quickActionListenDuas => 'ऐका';

  @override
  String get quickActionTasbihat => 'नमाज मार्गदर्शक';

  @override
  String get pilgrimageSectionTitle => 'पवित्र प्रवास';

  @override
  String get pilgrimageSectionSubtitle =>
      'हज आणि उमराहसाठी संपूर्ण मार्गदर्शक — मक्केतील अल्लाहच्या पवित्र घराची यात्रा';

  @override
  String get hajjCardTitle => 'हज';

  @override
  String get hajjCardSubtitle => 'इस्लामचा पाचवा स्तंभ';

  @override
  String get hajjCardDescription =>
      'महान वार्षिक यात्रा — प्रत्येक सक्षम मुस्लिमासाठी आयुष्यात एकदा बंधनकारक';

  @override
  String get hajjScreenTitle => 'हज मार्गदर्शक';

  @override
  String get hajjScreenSubtitle =>
      'महान यात्रेसाठी टप्प्याटप्प्याने मार्गदर्शक';

  @override
  String get umrahCardTitle => 'उमराह';

  @override
  String get umrahCardSubtitle => 'लहान यात्रा';

  @override
  String get umrahCardDescription =>
      'वर्षातील कोणत्याही वेळी करता येणारा अत्यंत फलदायी आध्यात्मिक प्रवास';

  @override
  String get umrahScreenTitle => 'उमराह मार्गदर्शक';

  @override
  String get umrahScreenSubtitle =>
      'लहान यात्रेसाठी टप्प्याटप्प्याने मार्गदर्शक';

  @override
  String get pilgrimageStepsTitle => 'विधी आणि टप्पे';

  @override
  String get pilgrimageImportantNotesTitle => 'महत्त्वाच्या नोंदी';

  @override
  String get pilgrimageDuaTitle => 'या टप्प्यासाठी दुआ';

  @override
  String get pilgrimageJafariNoteTitle => 'जाफरी फिक्ह नोट';

  @override
  String get pilgrimageComplete => '✓ पूर्ण';

  @override
  String get pilgrimageMarkDone => 'पूर्ण म्हणून चिन्हांकित करा';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done पैकी $total टप्पे';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes मिनिट';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'शिया यात्रेकरू';

  @override
  String get pilgrimageShiaNoteBody =>
      'अनेक शिया तीर्थयात्री पैगंबर मुहम्मद (सअव) यांच्या जियारतसाठी मदीना येथे मस्जिद अल-नबावी आणि जन्नत अल-बाकी येथील कब्रांवर जातात. या भेटींचा आध्यात्मिक महत्त्व आहे, तरीही त्या हजच्या विधी नाहीत.';

  @override
  String get hajjIntro =>
      'हज इस्लामचा पाचवा स्तंभ आहे, जो प्रत्येक शिया मुसलमानासाठी एकदा जीवनात शारीरिक आणि आर्थिकदृष्ट्या सक्षम असणे अनिवार्य आहे. आजच्या बहुतेक बाराही शिया तीर्थयात्र्यांसाठी, याचा अर्थ हज अल-तमत्तु\' आहे, जो इमाम इब्राहीम (अस), त्यांच्या पुत्र इस्माईल (अस), आणि लेडी हाजर यांच्या पावलावर चालत धुल हिज्जा महिन्यात केला जातो. हा मार्गदर्शक जाफरी विधींचा अनुसरण करतो, तर मदीना येथील जियारत हजच्या आधी किंवा नंतर एक अत्यंत प्रिय यात्रा राहते.';

  @override
  String get umrahIntro =>
      'उमराह ही मक्केची लहान यात्रा आहे आणि हजपेक्षा भिन्नरीत्या ती वर्षातील कोणत्याही वेळी करता येते. जरी ती बंधनकारक नसली तरी तिचे आध्यात्मिक फळ अत्यंत महान आहे आणि ती अत्यंत शिफारस केलेली इबादत मानली जाते. तिच्यात हजसारखे काही विधी आहेत, परंतु ती अधिक लहान असून चार मुख्य कृतींनी बनलेली आहे.';

  @override
  String get voiceInputTitle => 'आवाज इनपुट';

  @override
  String get voiceInputMicTitle => 'मायक्रोफोन';

  @override
  String get voiceInputMicSubtitle =>
      'टायपिंग करण्याऐवजी आयारा विचारण्यासाठी तुमचा आवाज वापरा.';

  @override
  String get voiceInputMicDenied => 'मायक्रोफोन प्रवेश नाकारला गेला.';

  @override
  String get voiceInputSpeak => 'त्याऐवजी बोला';

  @override
  String get voiceInputListening => 'ऐकत आहे…';

  @override
  String get voiceInputPermissionDenied =>
      'आवाज इनपुटसाठी मायक्रोफोन प्रवेश आवश्यक आहे.';
}
