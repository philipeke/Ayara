// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get languageSelectSub => 'இதனை பின்னர் அமைப்புகளில் மாற்றலாம்';

  @override
  String get actionContinue => 'தொடரவும்';

  @override
  String get languageSuggestedHeader => 'பரிந்துரைக்கப்பட்டது';

  @override
  String get languageAllHeader => 'அனைத்து மொழிகளும்';

  @override
  String get languageSuggestedBadge => 'பரிந்துரை';

  @override
  String get languageSearchHint => 'தேடு…';

  @override
  String get planBasic => 'நிலையானது';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'தினசரி வழிகாட்டல்';

  @override
  String get categorySlot02 => 'ஈமான் மற்றும் நம்பிக்கை';

  @override
  String get categorySlot03 => 'தொழுகை சிந்தனை';

  @override
  String get categorySlot04 => 'சப்ர் மற்றும் நம்பிக்கை';

  @override
  String get categorySlot05 => 'மன்னிப்பை நாடுங்கள்';

  @override
  String get categorySlot06 => 'இரக்கம் மற்றும் கருணை';

  @override
  String get categorySlot07 => 'நம்பிக்கையின் வலிமை';

  @override
  String get categorySlot08 => 'நன்றியுள்ள இதயம்';

  @override
  String get categorySlot09 => 'வாழ்க்கையின் நோக்கம்';

  @override
  String get categorySlot10 => 'குடும்ப பந்தங்கள்';

  @override
  String get categorySlot11 => 'உள் அமைதி';

  @override
  String get categorySlot12 => 'நபி ஞானம்';

  @override
  String get categorySlot13 => 'நல்ல நற்பண்பு';

  @override
  String get categorySlot14 => 'சோதனையை எதிர்த்து நில்';

  @override
  String get categorySlot15 => 'மாலை திக்ர்';

  @override
  String get categoryCustom => 'தனிப்பட்ட சிந்தனை';

  @override
  String get dhikrMeaningSubhanallah => 'அல்லாஹ் தூய்மையானவன்';

  @override
  String get dhikrMeaningAlhamdulillah => 'எல்லாப் புகழும் அல்லாஹ்வுக்கே';

  @override
  String get dhikrMeaningAllahuAkbar => 'அல்லாஹ் மிகப் பெரியவன்';

  @override
  String get quranVerseHeartAtRest =>
      'நிச்சயமாக, அல்லாஹ்வை நினைவுகூர்வதிலே இதயங்கள் அமைதி பெறுகின்றன.';

  @override
  String get promptHint =>
      'இஸ்லாமிய வழிகாட்டலும் சிந்தனையும் பெற ஒரு வகையைத் தட்டவும்';

  @override
  String get currentLanguage => 'தற்போதைய மொழி';

  @override
  String get settingsLanguage => 'மொழி அமைப்புகள்';

  @override
  String get settingsTitle => 'அமைப்புகள்';

  @override
  String get chooseLanguage => 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get continueCta => 'தொடரவும்';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count சொற்கள்',
      one: '$count சொல்',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'விருப்பங்கள்';

  @override
  String get newCta => 'புதியது';

  @override
  String get actionsTitle => 'நீங்கள் என்ன செய்ய விரும்புகிறீர்கள்?';

  @override
  String get copy => 'நகலெடு';

  @override
  String get share => 'பகிர்';

  @override
  String get close => 'மூடு';

  @override
  String get copiedToast => 'கிளிப்போர்டிற்கு நகலெடுக்கப்பட்டது';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'புதிய பதிலை உருவாக்க முடியவில்லை';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nமீண்டும் முயற்சிக்க விரும்புகிறீர்களா?';
  }

  @override
  String get cancelCta => 'ரத்து செய்';

  @override
  String get retryCta => 'மீண்டும் முயற்சி செய்';

  @override
  String get authTitle => 'உங்கள் கணக்கை உருவாக்குங்கள்';

  @override
  String get continueAsGuest => 'விருந்தினராகத் தொடரவும்';

  @override
  String get signInGoogle => 'Google மூலம் உள்நுழைக';

  @override
  String get signInApple => 'Apple மூலம் உள்நுழைக';

  @override
  String get signInEmail => 'மின்னஞ்சல் மூலம் உள்நுழைக';

  @override
  String get upgradeWithApple => 'Apple மூலம் தொடரவும்';

  @override
  String get mustAccept =>
      'நீங்கள் சேவை விதிமுறைகளை ஏற்கவும், தனியுரிமைக் கொள்கையை ஒப்புக்கொள்ளவும் வேண்டும்.';

  @override
  String get termsLabel => 'நான் சேவை விதிமுறைகளை ஏற்கிறேன்';

  @override
  String get privacyLabel => 'நான் தனியுரிமைக் கொள்கையைப் படித்துள்ளேன்';

  @override
  String get marketingOptIn =>
      'செய்திகளையும் சலுகைகளையும் பெற ஒப்புக்கொள்கிறேன்';

  @override
  String get openTerms => 'சேவை விதிமுறைகள்';

  @override
  String get openPrivacy => 'தனியுரிமைக் கொள்கை';

  @override
  String get accountSection => 'கணக்கு';

  @override
  String get guestMode => 'விருந்தினர் முறை';

  @override
  String get signedIn => 'உள்நுழைந்துள்ளீர்கள்';

  @override
  String get upgradeHint =>
      'ஒரு கணக்கை உருவாக்கி உங்கள் சிந்தனைகளை எல்லா சாதனங்களிலும் சேமிக்கவும்.';

  @override
  String get upgradeWithGoogle => 'Google மூலம் தொடரவும்';

  @override
  String get signOut => 'வெளியேறு';

  @override
  String get snackUpgraded => 'Google மூலம் கணக்கு மேம்படுத்தப்பட்டது ✅';

  @override
  String get snackSignedIn => 'Google மூலம் உள்நுழைந்தீர்கள் ✅';

  @override
  String get snackSignedOut => 'வெளியேறிவிட்டீர்கள்';

  @override
  String get snackSignedInApple => 'Apple மூலம் உள்நுழைந்தீர்கள் ✅';

  @override
  String get snackSignedInGoogle => 'Google மூலம் உள்நுழைந்தீர்கள் ✅';

  @override
  String get snackUpgradedApple => 'Apple மூலம் கணக்கு மேம்படுத்தப்பட்டது ✅';

  @override
  String get snackUpgradedGoogle => 'Google மூலம் கணக்கு மேம்படுத்தப்பட்டது ✅';

  @override
  String get historyTitle => 'முந்தைய சிந்தனைகள்';

  @override
  String get historyOpenCta => 'முந்தைய சிந்தனைகள்';

  @override
  String get historyEmpty => 'இன்னும் சேமிக்கப்பட்ட சிந்தனைகள் இல்லை.';

  @override
  String get historyDeleteTitle => 'இந்த சிந்தனையை நீக்கவா?';

  @override
  String get historyDeleteBody =>
      'இது தேர்ந்தெடுக்கப்பட்ட உருப்படியை நிரந்தரமாக அகற்றும்.';

  @override
  String get deleteCta => 'நீக்கு';

  @override
  String get historyButton => 'முந்தைய சிந்தனைகள்';

  @override
  String get historyEmptyTitle => 'இன்னும் சிந்தனைகள் இல்லை';

  @override
  String get historyEmptyBody =>
      'முதலில் ஏதாவது உருவாக்குங்கள் — நீங்கள் சேமித்தவை இங்கே தோன்றும்.';

  @override
  String get historyDelete => 'நீக்கு';

  @override
  String get footerTitle => 'Wilaya, ஈமான் மற்றும் சப்ருடன்';

  @override
  String get footerSubtitle => 'ஒவ்வொரு முறையும் ஒரு தொழுகை';

  @override
  String get genericErrorSnack =>
      'ஏதோ தவறாகிவிட்டது — சிறிது நேரத்தில் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get upgradeAccountCta =>
      'உங்கள் சிந்தனைகளை எல்லா சாதனங்களிலும் சேமிக்கவும் – ஒரு கணக்கை உருவாக்குங்கள்';

  @override
  String get deleteAccount => 'கணக்கை நீக்கு';

  @override
  String get exportData => 'என் தரவுகளை ஏற்றுமதி செய்';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'சற்று மெதுவாக 🐯\nஅடுத்ததற்கு முன் Ayara-க்கு ஒரு கணம் தேவை…';

  @override
  String get rateDailyLimit =>
      'இப்போது உங்கள் சிந்தனைகள் முடிந்துவிட்டன.\nமேலும் சிந்தனைகளைப் பெறுங்கள் அல்லது Wilaya-க்கு மேம்படுத்துங்கள்.';

  @override
  String get rateCreditsExhausted =>
      'நீங்கள் உங்கள் எல்லா சிந்தனைகளையும் பயன்படுத்திவிட்டீர்கள்.\nதொடர மேலும் சேர்க்கவும் அல்லது Wilaya-க்கு மேம்படுத்தவும்.';

  @override
  String get rateGraceCreditsExhausted =>
      'இப்போது உங்கள் சிந்தனைகள் முடிந்துவிட்டன.\nமேலும் சிந்தனைகளைப் பெறுங்கள் அல்லது Wilaya-க்கு மேம்படுத்துங்கள்.';

  @override
  String get premiumDescription =>
      'Wilaya உயர்தர அம்சங்கள், எதிர்கால வகைகள், மற்றும் ஒரு சிறப்பு அடையாளத்தைத் திறக்கும்.';

  @override
  String ratePlanExhausted(String plan) {
    return 'உங்கள் சிந்தனைகள் இப்போது காலியாக உள்ளன. திட்டம்: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'உங்கள் சிந்தனைகளை சரிபார்க்க முடியவில்லை: $message';
  }

  @override
  String get rateCheckGenericError =>
      'உங்கள் சிந்தனைகளைச் சரிபார்க்கும்போது ஏதோ தவறாகிவிட்டது.';

  @override
  String get aiFallbackGeneric =>
      'ஏதோ தவறாகிவிட்டது — சிறிது நேரத்தில் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get limitSectionTitle => 'சிந்தனைகள்';

  @override
  String get limitTodayLabel => 'பயன்பாடு';

  @override
  String limitCreditsLabel(Object credits) {
    return 'மீதமுள்ள சிந்தனைகள்: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'திட்டம்: $plan';
  }

  @override
  String get limitLoadingLabel => 'ஏற்றப்படுகிறது…';

  @override
  String get limitLoadingLabelDescription =>
      'பயன்பாட்டு விவரங்கள் பெறப்படும் போது சிந்தனை அட்டையில் காட்டப்படும்.';

  @override
  String get aiLimitTitle => 'சிந்தனைகள்';

  @override
  String get aiLimitSubtitle =>
      'ஒவ்வொரு பதிலும் 1 சிந்தனையைப் பயன்படுத்தும். நிலையான திட்டத்தில் ஆரம்ப சிந்தனைகள் உள்ளன. Wilaya உயர்தர வகைகளைத் திறந்து, கூடுதல் வாங்குதலைச் செயல்படுத்துகிறது.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total சிந்தனைகள் பயன்படுத்தப்பட்டன';
  }

  @override
  String get creditsSectionTitle => 'சிந்தனைகள்';

  @override
  String get creditsUsageLabel => 'பயன்பாடு';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'மீதமுள்ள சிந்தனைகள்: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'திட்டம்: $plan';
  }

  @override
  String get creditsLoadingLabel => 'ஏற்றப்படுகிறது…';

  @override
  String get creditsLoadingLabelDescription =>
      'சிந்தனை விவரங்கள் பெறப்படும் போது காட்டப்படும்.';

  @override
  String get creditsTitle => 'சிந்தனைகள்';

  @override
  String get creditsSubtitle =>
      'ஒவ்வொரு பதிலும் 1 சிந்தனையைப் பயன்படுத்தும். நிலையான திட்டத்தில் ஆரம்ப சிந்தனைகள் உள்ளன. Wilaya உயர்தர வகைகளைத் திறந்து, கூடுதல் வாங்குதலைச் செயல்படுத்துகிறது.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total சிந்தனைகள் பயன்படுத்தப்பட்டன';
  }

  @override
  String get settingsDeleteTitle => 'கணக்கை நீக்கு';

  @override
  String get settingsDeleteDescription =>
      'உங்கள் கணக்கும் அதனுடன் இணைந்த அனைத்து தரவுகளும் நிரந்தரமாக நீக்கப்படும்.';

  @override
  String get settingsDeleteButtonLabel => 'என் கணக்கை நீக்கு';

  @override
  String get settingsDeleteDialogTitle => 'கணக்கை நீக்கவா?';

  @override
  String get settingsDeleteDialogBody =>
      'இந்த செயல் நிரந்தரமானது; அதை மாற்ற முடியாது.\n\nஉங்கள் அனைத்து உரையாடல்கள், வரலாறு மற்றும் கணக்கு தகவல்கள் நீக்கப்படும்.';

  @override
  String get settingsDeleteDialogCancel => 'ரத்து செய்';

  @override
  String get settingsDeleteDialogConfirm => 'நீக்கு';

  @override
  String get settingsFreeLimitUsedTitle =>
      'ஆரம்ப சிந்தனைகள் பயன்படுத்தப்பட்டுவிட்டன';

  @override
  String get settingsFreeLimitUsedDescription =>
      'இந்த சாதனத்திற்கான ஆரம்ப சிந்தனைகள் பயன்படுத்தப்பட்டுவிட்டன. தொடர Wilaya-க்கு மேம்படுத்துங்கள் அல்லது மேலும் சிந்தனைகளை வாங்குங்கள்.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'ஆரம்ப சிந்தனைகள் பயன்படுத்தப்பட்டுவிட்டன';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'இந்த சாதனத்திற்கான ஆரம்ப சிந்தனைகள் பயன்படுத்தப்பட்டுவிட்டன. தொடர Wilaya-க்கு மேம்படுத்துங்கள் அல்லது மேலும் சிந்தனைகளை வாங்குங்கள்.';

  @override
  String get deviceBoundError =>
      'இந்த சாதனம் ஏற்கனவே வேறு ஒரு கணக்குடன் இணைக்கப்பட்டுள்ளது. அசல் கணக்கில் உள்நுழையவும்.';

  @override
  String get premiumTitle => 'Wilaya முறை';

  @override
  String get premiumSubtitleBasic =>
      'Ayara-வின் முழுமையான அனுபவத்தைத் திறக்கவும்.';

  @override
  String get premiumSubtitlePremium =>
      'நீங்கள் Wilaya-வில் உள்ளீர்கள். மேலும் சிந்தனைகள் வேண்டுமா?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'தற்போதைய திட்டம்: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'சிந்தனைகள்: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'வாங்குதல் இப்போது கிடைக்கவில்லை.';

  @override
  String get premiumSignInToPurchase =>
      'சிந்தனைகளை வாங்க அல்லது Wilaya-ஐத் திறக்க உள்நுழையவும்.';

  @override
  String get premiumRestorePurchases => 'வாங்குதல்களை மீட்டமை';

  @override
  String get premiumProcessing => 'செயலாக்கப்படுகிறது…';

  @override
  String get premiumRestoreHintTitle =>
      'இந்த சாதனத்தில் அல்லது வேறு சாதனத்தில் ஏற்கனவே Wilaya அல்லது சிந்தனைகளை வாங்கியுள்ளீர்களா?';

  @override
  String get premiumRestoreHintBody =>
      'அவை தெரியவில்லை என்றால், உங்கள் வாங்குதல்களை மீட்டமைக்கவும்.';

  @override
  String get premiumBuyCredits200 => '200 சிந்தனைகள் வாங்கவும்';

  @override
  String get premiumBuyCredits400 => '400 சிந்தனைகள் வாங்கவும்';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya முறைக்கு மேம்படுத்து';

  @override
  String get premiumTopupHint =>
      'Wilaya மூலம், உங்களுக்கு தேவையானபோது கூடுதல் சிந்தனைகளைச் சேர்க்கலாம்.';

  @override
  String get premiumUpgradeCta => 'மேம்படுத்து';

  @override
  String get premiumRequiredForCategory =>
      'இந்த வகை Wilaya பயனர்களுக்கே கிடைக்கும். அனைத்து உயர்தர உள்ளடக்கத்தையும் திறக்க அமைப்புகளில் மேம்படுத்தவும்.';

  @override
  String get premiumBenefitsBasic =>
      'கூடுதல் சிந்தனைகள், உயர்தர வகைகள், மற்றும் உங்களுக்கு வழிகாட்டல் தேவைப்படும் போதெல்லாம் தொடர்வதற்காக Wilaya-ஐத் திறக்கவும்.';

  @override
  String get premiumBenefitsPremium =>
      'நீங்கள் Wilaya முறையில் உள்ளீர்கள். சிந்தனைகள் குறைந்து வருமானால், மேலும் சேர்த்து இடையூறு இன்றி தொடருங்கள்.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya-ஐத் திறக்கவும்';

  @override
  String get premiumButtonTopup1000 => '1000 சிந்தனைகள் சேர்க்கவும்';

  @override
  String get premiumBadge => 'Wilaya செயலில் உள்ளது';

  @override
  String get premiumLoadingStore => 'அங்காடி ஏற்றப்படுகிறது…';

  @override
  String get premiumProductNotAvailable =>
      'இந்த தயாரிப்பு இன்னும் அங்காடியில் கிடைக்கவில்லை. பின்னர் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get premiumPurchaseError =>
      'வாங்கும்போது ஏதோ தவறாகிவிட்டது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get premiumBuyCredits100 => '100 சிந்தனைகள் சேர்க்கவும்';

  @override
  String get premiumFeatureLocked =>
      'இந்த அம்சத்தை அணுக Wilaya-ஐத் திறக்கவும்.';

  @override
  String get lockedCategoriesHint =>
      'சில வகைகள் Wilaya உறுப்பினர்களுக்காக ஒதுக்கப்பட்டுள்ளன. உங்கள் பயணத்தின் ஒவ்வொரு சிந்தனையையும் ஆராய அவற்றைத் திறக்கவும்.';

  @override
  String get freePlanBlockedTitle => 'உங்கள் ஆரம்ப சிந்தனைகள் முடிந்துவிட்டன';

  @override
  String get freePlanBlockedBody =>
      'நீங்கள் நிலையான திட்டத்தில் உள்ளீர்கள் மற்றும் ஆரம்ப சிந்தனைகளின் எல்லையை அடைந்துவிட்டீர்கள். தொடர — மற்றும் உயர்தர வகைகளைத் திறக்க — Wilaya-க்கு மேம்படுத்துங்கள்.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'கீழே உள்ள Wilaya விருப்பங்களைப் பாருங்கள்';

  @override
  String get graceBlockedTitle => 'உங்கள் ஆரம்ப சிந்தனைகள் முடிந்துவிட்டன';

  @override
  String get graceBlockedBody =>
      'நீங்கள் நிலையான திட்டத்தில் உள்ளீர்கள் மற்றும் ஆரம்ப சிந்தனைகளின் எல்லையை அடைந்துவிட்டீர்கள். தொடர — மற்றும் உயர்தர வகைகளைத் திறக்க — Wilaya-க்கு மேம்படுத்துங்கள்.';

  @override
  String get graceBlockedCtaGoPremium =>
      'கீழே உள்ள Wilaya விருப்பங்களைப் பாருங்கள்';

  @override
  String get rateGuestMustSignIn =>
      'Ayara மற்றும் உங்கள் சிந்தனைகளைப் பயன்படுத்த உள்நுழையவும்.';

  @override
  String get guestNoCreditsTitle => 'விருந்தினர் முறை';

  @override
  String get guestNoCreditsBody =>
      'விருந்தினராக நீங்கள் பயன்பாட்டைப் பார்க்கலாம், ஆனால் சிந்தனைகளைப் பயன்படுத்த முடியாது. பின்னர் அமைப்புகளில் உள்நுழைந்து சிந்தனைகளைப் பயன்படுத்தவும் மற்றும் வாங்குதல்களைத் திறக்கவும்.';

  @override
  String get guestDialogContinue => 'தொடரவும்';

  @override
  String get guestDialogLoginInstead => 'அல்லது உள்நுழைக';

  @override
  String get optionalLabel => 'விருப்பத்தேர்வு';

  @override
  String get accountDeleteSuccessTitle => 'கணக்கு நீக்கப்பட்டது';

  @override
  String get accountDeleteSuccessBody =>
      'உங்கள் கணக்கும் அதனுடன் இணைந்த தரவுகளும் வெற்றிகரமாக நீக்கப்பட்டன.';

  @override
  String get accountDeleteSuccessClose => 'மூடு';

  @override
  String get accountDeleteErrorTitle => 'கணக்கை நீக்க முடியவில்லை';

  @override
  String get accountDeleteErrorClose => 'சரி';

  @override
  String get accountDeleteReauthCancelled =>
      'மீள்-அங்கீகாரம் ரத்து செய்யப்பட்டது. தயவுசெய்து மீண்டும் உள்நுழைந்து நீக்க முயற்சிக்கவும்.';

  @override
  String get accountDeleteReauthRequired =>
      'கணக்கை நீக்க சமீபத்திய உள்நுழைவு தேவை. வெளியேறி, மீண்டும் உள்நுழைந்து மறுபடியும் முயற்சிக்கவும்.';

  @override
  String get settingsDeletePermanentWarning =>
      'இந்த செயல் நிரந்தரமானது; மாற்ற முடியாது. உங்கள் கணக்குடன் இணைந்த எல்லா தரவுகளும் நீக்கப்படும்.';

  @override
  String get dailyGraceTitle => 'தினசரி வழிகாட்டல்';

  @override
  String get dailyGraceScriptureLabel => 'இன்றைய வசனம்';

  @override
  String get dailyGraceSaintLabel => 'வாரத்தின் சிறப்பு நபர்';

  @override
  String get dailyGraceReflectionLabel => 'மாலை சிந்தனை';

  @override
  String get dailyGraceCopiedToast =>
      'வசனம் கிளிப்போர்டிற்கு நகலெடுக்கப்பட்டது';

  @override
  String get locationConsentLabel =>
      'கிப்லா திசை மற்றும் தொழுகை நேரங்களுக்கு Ayara என் இருப்பிடத்தைப் பயன்படுத்த அனுமதி அளி';

  @override
  String get locationConsentHint =>
      'இது இந்த அம்சங்களுக்காக மட்டுமே பயன்படுத்தப்படும். உங்கள் இருப்பிடம் ஒருபோதும் பகிரப்படவோ சேமிக்கப்படவோ மாட்டாது.';

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
  String get askPageTitle => 'Ayara-விடம் கேளுங்கள்';

  @override
  String get askPageDescription =>
      'ஈமான், தொழுகை, வாழ்க்கை, அல்லது இஸ்லாமிய நடைமுறை பற்றி எதையும் கேளுங்கள்; குர்ஆன் மற்றும் அஹ்லுல்-பைத் போதனைகளில் வேரூன்றிய வழிகாட்டலைப் பெறுங்கள்.';

  @override
  String get askPageInputHint => 'உங்கள் கேள்வியை இங்கே தட்டச்சிடுங்கள்…';

  @override
  String get askPageSubmitCta => 'கேள்';

  @override
  String get askPageInputEmptyError => 'முதலில் ஒரு கேள்வியை எழுதவும்.';

  @override
  String get askResultYourQuestion => 'உங்கள் கேள்வி';

  @override
  String get guidancePageTitle => 'கிப்லா';

  @override
  String get qiblaFacingMecca => 'மக்காவை நோக்கி';

  @override
  String get qiblaCompassInstruction =>
      'தங்க நிற ஊசி மேலே சுட்டும் வரை உங்கள் தொலைபேசியை சுழற்றுங்கள்.\nஅந்தத் திசையே கிப்லா (மக்கா).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS சிக்னல் பலவீனமாக உள்ளது. வெளியில் சென்று மீண்டும் முயற்சி என்பதைத் தட்டுங்கள்.';

  @override
  String get qiblaRetry => 'மீண்டும் முயற்சி';

  @override
  String get qiblaTitle => 'கிப்லா திசை';

  @override
  String qiblaDistanceLabel(String km) {
    return 'மக்காவிற்கு $km கிமீ';
  }

  @override
  String get qiblaLocationNeededTitle => 'இருப்பிடம் தேவை';

  @override
  String get qiblaLocationNeededBody =>
      'நீங்கள் எங்கு இருந்தாலும் அங்கிருந்து மக்காவில் உள்ள கஃபாவின் திசையை Ayara கணக்கிட, இருப்பிட அணுகலை அனுமதிக்கவும்.';

  @override
  String get qiblaOpenSettings => 'அமைப்புகளைத் திற';

  @override
  String get qiblaCompassLoading => 'உங்கள் இருப்பிடம் கண்டறியப்படுகிறது…';

  @override
  String get qiblaTowardMecca => 'மக்காவை நோக்கி';

  @override
  String get prayerTimesTitle => 'தொழுகை நேரங்கள்';

  @override
  String get prayerTimesFajr => 'ஃபஜ்ர்';

  @override
  String get prayerTimesDhuhr => 'துஹ்ர்';

  @override
  String get prayerTimesAsr => 'அஸ்ர்';

  @override
  String get prayerTimesMaghrib => 'மஃரிப்';

  @override
  String get prayerTimesIsha => 'இஷா';

  @override
  String get prayerTimesLocationNeededTitle => 'இருப்பிடம் தேவை';

  @override
  String get prayerTimesLocationNeededBody =>
      'உங்கள் நகரத்திற்கான துல்லியமான தொழுகை நேரங்களை Ayara கணக்கிட, இருப்பிட அணுகலை அனுமதிக்கவும்.';

  @override
  String get prayerTimesNextLabel => 'அடுத்தது';

  @override
  String get prayerTimesDoneLabel => 'முடிந்தது';

  @override
  String get monthlyPrayerTimesTitle => 'மாதாந்திர தொழுகை நேரங்கள்';

  @override
  String get monthlyPrayerTimesViewButton => 'முழு மாதத்தையும் பார்';

  @override
  String get monthlyPrayerTimesNextMonth => 'அடுத்த மாதம்';

  @override
  String get monthlyPrayerTimesDayHeader => 'நாள்';

  @override
  String get sharePrayerTimes => 'தொழுகை நேரங்களைப் பகிர்';

  @override
  String get notificationsSectionTitle => 'அறிவிப்புகள்';

  @override
  String get notificationsSectionSubtitle =>
      'தொழுகை நினைவூட்டல்கள், காலண்டர் நிகழ்வுகள் மற்றும் மேலும்';

  @override
  String get dailyReflectionReminderTitle => 'தினசரி சிந்தனை';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara-வைத் திறந்து உங்கள் ஈமானுடன் இணைய ஒரு மென்மையான தினசரி நினைவூட்டல்.';

  @override
  String get dailyReflectionReminderEnable => 'தினசரி நினைவூட்டலை இயக்கு';

  @override
  String get dailyReflectionReminderTimeLabel => 'நினைவூட்டல் நேரம்';

  @override
  String get prayerNotificationsTitle => 'தொழுகை நினைவூட்டல்கள்';

  @override
  String get prayerNotificationsDescription =>
      'நாள்தோறும் இணைந்திருக்க ஒவ்வொரு தொழுகைக்கும் முன் ஒரு மென்மையான நினைவூட்டலைப் பெறுங்கள்.';

  @override
  String get prayerNotificationsEnable => 'தொழுகை நினைவூட்டல்களை இயக்கு';

  @override
  String get prayerNotificationsOpenSettings => 'அறிவிப்பு அமைப்புகளைத் திற';

  @override
  String get prayerNotificationsDenied => 'அறிவிப்புகள் முடக்கப்பட்டுள்ளன';

  @override
  String get prayerNotificationsDeniedHint =>
      'தொழுகை நேர நினைவூட்டல்களைப் பெற அமைப்புகளில் Ayara-விற்கான அறிவிப்புகளை அனுமதிக்கவும்.';

  @override
  String get notificationsConsentLabel =>
      'தொழுகை நேரங்களுக்கான அறிவிப்புகளை அனுமதி';

  @override
  String get prayerNotifTitleFajr => '🌅 ஃபஜ்ர் — விடியற்கால தொழுகை';

  @override
  String get prayerNotifBodyFajr =>
      'ஃபஜ்ர் என்பது அஹ்லுல்-பைத் காலையின் தொழுகை. இமாம் அலி (AS) கூறினார்: உங்கள் மிகமுக்கியமான பொறுப்பை நீங்கள் காக்கும் போல விடியற்கால தொழுகையை காக்குங்கள். எழுந்திருங்கள், தூய்மையடையுங்கள், அல்லாஹ்வின் முன்னிலையில் நிற்குங்கள்.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ துஹ்ர் — நண்பகல் தொழுகை';

  @override
  String get prayerNotifBodyDhuhr =>
      'அஹ்லுல்-பைத் இமாம்கள் நினைவுகூர்வின் ஒவ்வொரு தருணத்தையும் மதித்தனர். உங்கள் நாளை நிறுத்துங்கள், தேவைப்பட்டால் துஹ்ரையும் அஸ்ரையும் சேர்த்து தொழுங்கள், உங்கள் இதயத்தை அல்லாஹ்வை நோக்கி மீண்டும் திருப்புங்கள்.';

  @override
  String get prayerNotifTitleAsr => '🌤️ அஸ்ர் — பிற்பகல் தொழுகை';

  @override
  String get prayerNotifBodyAsr =>
      'தொழுகையை காக்குங்கள்; அது உங்களுக்கும் அல்லாஹ்வுக்கும் இடையிலான உடன்படிக்கை. அஸ்ரின் நேரம் வந்துவிட்டது — நினைவுகூராமல் அது கடந்து விடாதிருக்கட்டும்.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 மஃரிப் — சூரியஅஸ்தமன தொழுகை';

  @override
  String get prayerNotifBodyMaghrib =>
      'சூரியன் மறைந்துவிட்டது — துஆவுக்குப் புனிதமாக அஹ்லுல்-பைத் கருதிய தருணம். மஃரிபை நிறைவேற்றி, இரவு தொடங்குவதற்கு முன் அல்லாஹ்விடம் துஆவுக்காக உங்கள் கைகளை உயர்த்துங்கள்.';

  @override
  String get prayerNotifTitleIsha => '🌙 இஷா — இரவுத் தொழுகை';

  @override
  String get prayerNotifBodyIsha =>
      'உங்கள் நாளை அல்லாஹ்வின் துணைவுடன் முடிக்குங்கள். இமாம்கள் இஷாவிற்குப் பிறகு ஸலாதுல்-லைலை ஊக்குவித்தனர் — ஆனால் முதலில் உங்கள் இஷாவை முடித்து, நாளை அவரை நினைவுகூர்ந்து நிறைவு செய்யுங்கள்.';

  @override
  String get outOfReflectionsBannerText =>
      'நீங்கள் உங்கள் அனைத்து சிந்தனைகளையும் பயன்படுத்திவிட்டீர்கள்';

  @override
  String get outOfReflectionsBannerCta => 'மேலும் பெற';

  @override
  String get dhikrPageTitle => 'திக்ர்';

  @override
  String get dhikrTapToCount => 'எண்ணுவதற்கு வட்டத்தைத் தட்டவும்';

  @override
  String get dhikrResetButton => 'மீட்டமை';

  @override
  String get dhikrComplete => 'மாஷாஅல்லாஹ்';

  @override
  String get dhikrCompleteMessage =>
      'நீங்கள் அல்லாஹ்வை 100 முறை நினைவுகூர்ந்துவிட்டீர்கள். அவை உங்கள் இதயத்திற்கு ஒளியாக இருக்கட்டும்.';

  @override
  String get disclaimerTitle => 'இந்த பயன்பாட்டின் வழிகாட்டலைப் பற்றி';

  @override
  String get disclaimerBody =>
      'Ayara, குர்ஆன் மற்றும் அஹ்லுல்-பைத் போதனைகளில் வேரூன்றியவையாக, உங்கள் தனிப்பட்ட ஈமான் பயணத்தை ஆதரிக்க இஸ்லாமிய சிந்தனைகள், நினைவூட்டல்கள், மற்றும் ஆன்மிக உள்ளடக்கத்தை வழங்குகிறது. இந்த உள்ளடக்கம் பொதுவான தகவல் மற்றும் உந்துதல் நோக்கங்களுக்காக மட்டுமே வழங்கப்படுகிறது.\n\nAyara தகுதியான அறிஞர்களை மாற்றாது.\nஇந்த பயன்பாட்டிலுள்ள வழிகாட்டல், அறிவுடைய இஸ்லாமிய அறிஞர், மர்ஜா\', அல்லது தெய்வவியலில் பயிற்சி பெற்ற ஆசிரியருக்குப் பதிலாக அல்ல. ஷியா இஸ்லாத்தில், மத வழிகாட்டல் ஜஃபரீ ஃபிக்ஹ் பள்ளியிலும், உயிருடன் இருக்கும் மர்ஜா\'வை (பின்பற்றும் மூலத்தை) பின்பற்றும் பாரம்பரியத்திலும் வேரூன்றியுள்ளது — மத வழக்கங்களில் நம்பிக்கையாளர்களை வழிநடத்தும் தகுதியான ஃபகீஹ். மத உத்தரவுகள், ஹலால் மற்றும் ஹராம் விஷயங்கள், அல்லது உங்கள் தனிப்பட்ட மதக் கடமைகள் பற்றிய கேள்விகள் இருந்தால், தகுதியான மர்ஜா\' அல்லது உங்கள் சமூகத்தில் உள்ள அறிஞரிடம் ஆலோசனை பெறுங்கள்.\n\nஇந்த பயன்பாடு மத உத்தரவுகளை வழங்காது.\nAyara, ஃபிக்ஹ் அல்லது தனிப்பட்ட மதக் கடமைகள் தொடர்பான விஷயங்களில் அதிகாரப்பூர்வ தீர்மானங்களை எடுக்காது. இங்குள்ள எதையும் ஃபத்வா அல்லது கட்டாயமான மத அறிவுறுத்தலாகக் கருதக்கூடாது.\n\nஅஹ்லுல்-பைத்தின் மையத்துவம்.\nஷியா இஸ்லாத்தில், நபி முஹம்மது ﷺ மற்றும் அவரது தூய்மைப்படுத்தப்பட்ட குடும்பம் — அஹ்லுல்-பைத் — குர்ஆனுக்குப் பிறகு இஸ்லாமிய சமூகத்தின் அதிகாரப்பூர்வ வழிகாட்டிகள். அஹ்லுல்-பைத்தின் பன்னிரண்டு இமாம்கள் இஸ்லாமிய போதனையின் தெய்வீகமாக நியமிக்கப்பட்ட விளக்கவுரையாளர்கள். இந்த பயன்பாட்டின் உள்ளடக்கம் இந்த மரபை பிரதிபலிக்கிறது மற்றும் அதை உண்மையுடன் கௌரவிக்க முயல்கிறது.\n\nசமூகத்தின் முக்கியத்துவம்.\nஇந்த பயன்பாடு உங்கள் ஈமானுடன் ஆழமாக இணைய உங்களை ஊக்குவிக்க விரும்புகிறது; அதே வேளையில் உங்கள் உள்ளூர் பள்ளிவாசல், இஸ்லாமிய மையம், மற்றும் மத சமூகத்தின் முக்கியப் பங்கையும் ஆழமாக மதிக்கிறது. உங்களுக்கருகில் உள்ள தகுதியான ஆசிரியர்களுடன் இணைந்திருங்கள், அவர்களிடமிருந்து கற்றுக்கொள்ளுங்கள் என்று நாங்கள் ஊக்குவிக்கிறோம்.';

  @override
  String get disclaimerClose => 'எனக்கு புரிந்தது';

  @override
  String get disclaimerInfoTooltip => 'இந்த பயன்பாட்டின் வழிகாட்டலைப் பற்றி';

  @override
  String get disclaimerSettingsSubtitle =>
      'பொதுவான தகவலுக்காக மட்டுமே. முழு விளக்கத்தைக் காண தட்டவும்.';

  @override
  String get disclaimerSectionHeader => 'வழிகாட்டல் விளக்கம்';

  @override
  String get navHome => 'முகப்பு';

  @override
  String get navReflect => 'சிந்தி';

  @override
  String get navDuas => 'துஆக்கள்';

  @override
  String get navCalendar => 'நாட்காட்டி';

  @override
  String get dashboardToday => 'இன்று';

  @override
  String get dashboardComingUp => 'வரவிருக்கும்';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'நாட்கள்',
      one: 'நாள்',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'விரைவு அணுகல்';

  @override
  String get quickActionQibla => 'கிப்லா';

  @override
  String get quickActionDhikr => 'திக்ர்';

  @override
  String get quickActionDailyGrace => 'வழிகாட்டல்';

  @override
  String get quickActionPrayerTimes => 'தொழுகை நேரங்கள்';

  @override
  String get askAyaraTitle => 'Ayara-விடம் கேளுங்கள்';

  @override
  String get askAyaraSubtitle =>
      'எந்த இஸ்லாமிய கேள்வியையும் கேட்டு, சிந்தனையூட்டும் வழிகாட்டும் பதிலைப் பெறுங்கள்.';

  @override
  String get askAyaraHint => 'எ.கா. ரமளானின் முக்கியத்துவம் என்ன?';

  @override
  String get askAyaraSubmit => 'கேள்';

  @override
  String get wisdomOfTheDayTitle => 'இன்றைய ஞானம்';

  @override
  String get calendarScreenTitle => 'இஸ்லாமிய நாட்காட்டி';

  @override
  String get calendarUpcomingOccasions => 'வரவிருக்கும் நிகழ்வுகள்';

  @override
  String get calendarOccasionRemindersTitle => 'நிகழ்வு நினைவூட்டல்கள்';

  @override
  String get calendarOccasionRemindersHint =>
      'ஒவ்வொரு நிகழ்வுக்கும் முந்தைய மாலை அறிவிக்கப்படும்';

  @override
  String get calendarNotifPermissionDenied =>
      'அறிவிப்பு அனுமதி மறுக்கப்பட்டது. அதை உங்கள் சாதன அமைப்புகளில் இயக்கு.';

  @override
  String get calendarNoEvents =>
      'வரவிருக்கும் நிகழ்வுகள் எதுவும் கிடைக்கவில்லை.';

  @override
  String get calendarAddToPhone => 'தொலைபேசி காலண்டருக்கு சேர்க்கவும்';

  @override
  String get calendarAddedToPhone => 'காலண்டருக்கு சேர்க்கப்பட்டது';

  @override
  String get calendarCountdownToday => 'இன்று';

  @override
  String get calendarCountdownTomorrow => 'நாளை';

  @override
  String calendarCountdownDays(int days) {
    return '$days நாட்களில்';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'ஜன';

  @override
  String get calendarMonthFeb => 'பிப்';

  @override
  String get calendarMonthMar => 'மார்';

  @override
  String get calendarMonthApr => 'ஏப்';

  @override
  String get calendarMonthMay => 'மே';

  @override
  String get calendarMonthJun => 'ஜூன்';

  @override
  String get calendarMonthJul => 'ஜூலை';

  @override
  String get calendarMonthAug => 'ஆக';

  @override
  String get calendarMonthSep => 'செப்';

  @override
  String get calendarMonthOct => 'அக்';

  @override
  String get calendarMonthNov => 'நவ';

  @override
  String get calendarMonthDec => 'டிச';

  @override
  String get calendarSeasonMuharramEarly =>
      'முஹர்ரம் நாட்கள் — கர்பலாவை நினைவுகூருங்கள்';

  @override
  String get calendarSeasonAshura => 'ஆஷூரா — யா ஹுசைன் (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'முஹர்ரம் — துக்கமும் சிந்தனையும் நிறைந்த நாட்கள்';

  @override
  String get calendarSeasonArbaeen => 'அர்பஈன் — ஹுசைனின் நாற்பது நாட்கள்';

  @override
  String get calendarSeasonRoadToArbaeen => 'அர்பஈனுக்கான பாதை';

  @override
  String get calendarSeasonMabath => 'மபஅத் முபாரக் — வெளிப்பாட்டின் விடியல்';

  @override
  String get calendarSeasonMidShaban =>
      'ஷஅபானின் நடுப்பகுதி — இமாம் அல்-மஹ்தி (AJ) பிறந்தநாள்';

  @override
  String get calendarSeasonRamadan => 'ரமளான் முபாரக் — குர்ஆனின் மாதம்';

  @override
  String get calendarSeasonGhadir => 'ஈத் அல்-கதீர் முபாரக்!';

  @override
  String get hijriMonth1 => 'முஹர்ரம்';

  @override
  String get hijriMonth2 => 'சஃபர்';

  @override
  String get hijriMonth3 => 'ரபீஉல் அவ்வல்';

  @override
  String get hijriMonth4 => 'ரபீஉல் தானி';

  @override
  String get hijriMonth5 => 'ஜுமாதா அல்-அவ்வல்';

  @override
  String get hijriMonth6 => 'ஜுமாதா அல்-தானி';

  @override
  String get hijriMonth7 => 'ரஜப்';

  @override
  String get hijriMonth8 => 'ஷஅபான்';

  @override
  String get hijriMonth9 => 'ரமளான்';

  @override
  String get hijriMonth10 => 'ஷவ்வால்';

  @override
  String get hijriMonth11 => 'துல்-கிஅ்தா';

  @override
  String get hijriMonth12 => 'துல்-ஹிஜ்ஜா';

  @override
  String get duasScreenTitle => 'துஆக்களும் ஜியாரத்தும்';

  @override
  String get duasSearchHint => 'துஆக்கள், ஜியாரத்… தேடு';

  @override
  String get duasFilterAll => 'அனைத்தும்';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count துஆக்கள் மற்றும் ஜியாரத்',
      one: '$count துஆ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'துஆக்கள் எதுவும் கிடைக்கவில்லை.';

  @override
  String get duaCategoryDaily => 'தினசரி';

  @override
  String get duaCategoryWeekly => 'வாராந்திர';

  @override
  String get duaCategoryOccasions => 'நிகழ்வுகள்';

  @override
  String get duaCategoryZiyarat => 'ஜியாரத்';

  @override
  String get duaCategoryTasbih => 'தஸ்பீஹ்';

  @override
  String get eventTypeBirth => 'பிறப்பு';

  @override
  String get eventTypeMartyrdom => 'தியாக மரணம்';

  @override
  String get eventTypeOccasion => 'நிகழ்வு';

  @override
  String get duaCopyTooltip => 'மொழிபெயர்ப்பை நகலெடு';

  @override
  String get duaToggleTransliteration => 'உச்சரிப்பு வடிவம்';

  @override
  String get duaToggleTranslation => 'மொழிபெயர்ப்பு';

  @override
  String get duaAskAiLabel => 'இந்த துஆவை விளக்க Ayara-விடம் கேளுங்கள்';

  @override
  String get duaAskAiLockedLabel => 'Ayara-விடம் கேளுங்கள் (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara விளக்கங்கள் Wilaya உறுப்பினர்களுக்கே கிடைக்கும். அமைப்புகளில் மேம்படுத்துங்கள்.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" பற்றி Ayara-விடம் கேளுங்கள் — விரைவில் வருகிறது!';
  }

  @override
  String get duaCopiedToast => 'துஆ கிளிப்போர்டிற்கு நகலெடுக்கப்பட்டது.';

  @override
  String get tasbihAllahuAkbarMeaning => 'அல்லாஹ் மிகப் பெரியவன்';

  @override
  String get tasbihAlhamdulillahMeaning => 'எல்லாப் புகழும் அல்லாஹ்வுக்கே';

  @override
  String get tasbihSubhanallahMeaning => 'அல்லாஹ் தூய்மையானவன்';

  @override
  String get tasbihResetTooltip => 'மீட்டமை';

  @override
  String get tasbihCompleteTitle => 'தஸ்பீஹ் முடிந்தது';

  @override
  String get tasbihCompleteMessage =>
      'அல்லாஹ் உங்கள் திக்ரை ஏற்றுக்கொள்ளட்டும்.';

  @override
  String get tasbihTapHint => 'எண்ண எங்கும் தட்டவும்';

  @override
  String get tasbihatScreenTitle => 'தொழுகை வழிகாட்டி';

  @override
  String get tasbihatScreenSubtitle => 'தொழுகையின் புகழ்ச்சிகள்';

  @override
  String get tasbihatScreenDescription =>
      'தினசரி தொழுகைகளின் போது மற்றும் அதன் பின் ஓதப்படும் புகழ்ச்சிகளுக்கான முழுமையான வழிகாட்டி — அஹ்லுல்-பைத் (a) மரபின்படி.';

  @override
  String get tasbihatArba3Title => 'தஸ்பிஹாத் அல்-அர்பஅ';

  @override
  String get tasbihatArba3Subtitle => '3ஆம் மற்றும் 4ஆம் ரக்அத்தில் ஓதப்படும்';

  @override
  String get tasbihatArba3Info =>
      'ஷியா ஃபிக்ஹில், தஸ்பிஹாத் அல்-அர்பஅ துஹ்ர், அஸ்ர், மஃரிப் மற்றும் இஷா தொழுகைகளின் 3ஆம் மற்றும் 4ஆம் ரக்அத்தில் ஸூரத்துல்-ஃபாதிஹாவுக்கு பதிலாக ஓதப்படுகிறது. அதை ஒரு முறை ஓதுவது வாஜிப், மூன்று முறை ஓதுவது முஸ்தஹப்.';

  @override
  String get tasbihatArba3Translation =>
      'அல்லாஹ் தூய்மையானவன் · எல்லாப் புகழும் அல்லாஹ்வுக்கே\nஅல்லாஹ்வைத் தவிர வழிபாட்டிற்குரியவர் யாருமில்லை · அல்லாஹ் மிகப் பெரியவன்';

  @override
  String get tasbihatArba3CompleteTitle => 'ஓதுதல் முடிந்தது';

  @override
  String get tasbihatArba3CompleteMessage =>
      'உங்கள் தொழுகை ஏற்றுக்கொள்ளப்படட்டும் — ஆமீன்';

  @override
  String get tasbihatArba3TapHint => 'ஒவ்வொரு ஓதலுக்குப் பிறகும் தட்டவும்';

  @override
  String get tasbihatZahraSubtitle =>
      'ஒவ்வொரு தொழுகைக்குப் பிறகும் · 100 மணிகள்';

  @override
  String get tasbihatZahraOriginLabel => 'தொடக்கம்';

  @override
  String get tasbihatZahraHadith =>
      'பீபி ஃபாத்திமா அல்-ஸஹ்ரா (sa) நபி ﷺ அவர்களிடம் ஒரு உதவியாளரை கேட்டார். அவர் கூறினார்: \"அதைவிட சிறந்ததை உனக்குக் காட்டவில்லையா? ஒவ்வொரு தொழுகைக்குப் பிறகும் 33 முறை சுப்ஹானல்லாஹ், 33 முறை அல்ஹம்துலில்லாஹ், 34 முறை அல்லாஹு அக்பர் சொல். அது உனக்கு ஒரு உதவியாளரை விடச் சிறந்தது.\"';

  @override
  String get tasbihatZahraHadithSource => '— பிஹார் அல்-அன்வார், தொகுதி 85';

  @override
  String get tasbihatZahraOpenCounter => 'தஸ்பீஹ் எண்ணியைத் திறக்கவும்';

  @override
  String get tasbihatDuasTitle => 'பரிந்துரைக்கப்பட்ட துஆக்கள்';

  @override
  String get tasbihatDuasSubtitle => 'உங்கள் தொழுகையை முடித்த பின்';

  @override
  String get tasbihatDuaAyatKursiTitle => 'ஆயத்துல் குர்சி';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ஒவ்வொரு கட்டாய தொழுகைக்குப் பிறகும்';

  @override
  String get tasbihatDuaAyatKursiSource => 'ஸூரத்துல் பகரா 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ஒவ்வொரு கட்டாய தொழுகைக்குப் பிறகும் ஆயத்துல் குர்சியை ஓதுபவருக்கும் சொர்க்கத்திற்கும் இடையில் மரணத்தைத் தவிர வேறொன்றும் இல்லை. இமாம் அல்-பாகிர் (a) இதை குர்ஆனின் மிகப்பெரிய வசனங்களில் ஒன்றாகக் கூறினார்.';

  @override
  String get tasbihatDuaSalawatTitle => 'ஸலவாத்';

  @override
  String get tasbihatDuaSalawatWhen =>
      'ஒவ்வொரு தொழுகைக்குப் பிறகும் · எல்லா துஆக்களையும் நிறைவு செய்கிறது';

  @override
  String get tasbihatDuaSalawatSource => 'இமாம் அல்-ஸாதிக் (a) — அல்-காஃபி';

  @override
  String get tasbihatDuaSalawatNote =>
      'நபி ﷺ மற்றும் அவரது தூய்மையான குடும்பத்தினருக்கு (ஆல் முஹம்மத்) ஸலவாத் அனுப்புவது ஒவ்வொரு துஆவிற்கும் முடிவாக பரிந்துரைக்கப்படுகிறது. இமாம் அல்-ஸாதிக் (a) கூறினார்: \"முஹம்மதும் அவரது குடும்பத்தினரும் மீது ஸலவாத் அனுப்பும் வரை எந்த துஆவும் நிலுவையில் இருக்கும்.\"';

  @override
  String get tasbihatDuaFarajTitle => 'துஆ அல்-ஃபரஜ்';

  @override
  String get tasbihatDuaFarajWhen =>
      'ஒவ்வொரு தொழுகைக்குப் பிறகும் · நம் காலத்தின் இமாமிற்காக';

  @override
  String get tasbihatDuaFarajSource =>
      'இமாம் அல்-ஹசன் அல்-அஸ்கரி (a) கற்பித்தது';

  @override
  String get tasbihatDuaFarajNote =>
      'இமாம் அல்-மஹ்தி (அஃ) அவர்களின் மீண்டும் தோன்றுவதற்கான ஒரு துஆ, அவர் பிதாவால் கற்பிக்கப்பட்டது. இது பல ஷியா முஸ்லிம்கள் தொழுகைக்கு பிறகு வாழும் இமாமுக்கு அர்ப்பணிப்பாக அடிக்கடி உச்சரிக்கப்படுகிறது.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'பீபி ஃபாத்திமாவின் தஸ்பீஹ்';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'மஃரிப் மற்றும் இஷாவிற்குப் பிறகு · மிகவும் பரிந்துரைக்கப்படுகிறது';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'இமாம் அல்-பாகிர் (a) — பிஹார் அல்-அன்வார்';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'இமாம் அல்-பாகிர் (a), தூங்குவதற்கு முன் இஷாவிற்குப் பிறகு தஸ்பீஹ் அல்-ஸஹ்ராவை ஓதுவது 1000 ரக்அத் நஃபில் தொழுகையைவிடச் சிறந்தது என்று கூறினார். அதன் ஒளி வானங்களுக்கு எழுகிறது.';

  @override
  String get tasbihFatimaGiftPre => 'நபியிடமிருந்து ஒரு பரிசு';

  @override
  String get tasbihFatimaGiftPost => 'ஒவ்வொரு தொழுகைக்குப் பிறகும் ஓதப்படும்';

  @override
  String get prayerTrackerTitle => 'தொழுகை கண்காணிப்பு';

  @override
  String get prayerTrackerPrayed => 'தொழுதது';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count நாள் தொடர்';
  }

  @override
  String get prayerTrackerAllComplete =>
      'இன்றைய எல்லா தொழுகைகளும் முடிந்தன. அல்லாஹ் ஏற்றுக்கொள்ளட்டும்.';

  @override
  String get dhikrTrackerTitle => 'தஸ்பீஹ் அல்-ஸஹ்ரா';

  @override
  String get dhikrTrackerCompletedToday => 'இன்று முடிந்தது';

  @override
  String get dhikrTrackerNotDoneToday => 'இன்று செய்யப்படவில்லை';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count நாள் தொடர்';
  }

  @override
  String get dhikrReminderTitle => 'தஸ்பீஹ் நினைவூட்டல்';

  @override
  String get dhikrReminderDescription =>
      'உங்கள் தஸ்பீஹ் அல்-ஸஹ்ரா (SA) ஓத ஒரு மென்மையான தினசரி நினைவூட்டல்.';

  @override
  String get dhikrReminderEnable => 'தஸ்பீஹ் நினைவூட்டலை இயக்கு';

  @override
  String get dhikrReminderTimeLabel => 'நினைவூட்டல் நேரம்';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'இன்றைய ஹதீஸ்';

  @override
  String get hadithLabelArabic => 'அரபி';

  @override
  String get hadithLabelTranslation => 'மொழிபெயர்ப்பு';

  @override
  String get hadithBadge => 'ஹதீஸ்';

  @override
  String get hadithShare => 'இந்த ஹதீஸைப் பகிர்';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara வழியாக';
  }

  @override
  String get hadithNavPrevious => 'முந்தையது';

  @override
  String get hadithNavNext => 'அடுத்தது';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'பதினான்கு தவறாதவர்கள்';

  @override
  String get imamsScreenSubtitle =>
      'நபி, லேடி ஃபாத்திமா, மற்றும் பதினான்கு தவறாதவர்கள் — பதினான்கு தவறாதவர்களின் வாழ்க்கை, ஞானம் மற்றும் பாரம்பரியத்திலிர���ந்து கற்றுக்கொள்ளுங்கள்.';

  @override
  String get imamLabelBorn => 'பிறந்தது';

  @override
  String get imamLabelMartyrdom => 'தியாக மரணம்';

  @override
  String get imamLabelStatus => 'நிலை';

  @override
  String get imamSectionBiography => 'வாழ்க்கை வரலாறு';

  @override
  String get imamSectionFamousSaying => 'புகழ்பெற்ற சொல்';

  @override
  String get imamRoleProphet => 'இறுதி நபி';

  @override
  String get imamRoleInfallible => 'பிழையற்றவர்';

  @override
  String get imamOrdinal1 => '1ஆம் இமாம்';

  @override
  String get imamOrdinal2 => '2ஆம் இமாம்';

  @override
  String get imamOrdinal3 => '3ஆம் இமாம்';

  @override
  String get imamOrdinal4 => '4ஆம் இமாம்';

  @override
  String get imamOrdinal5 => '5ஆம் இமாம்';

  @override
  String get imamOrdinal6 => '6ஆம் இமாம்';

  @override
  String get imamOrdinal7 => '7ஆம் இமாம்';

  @override
  String get imamOrdinal8 => '8ஆம் இமாம்';

  @override
  String get imamOrdinal9 => '9ஆம் இமாம்';

  @override
  String get imamOrdinal10 => '10ஆம் இமாம்';

  @override
  String get imamOrdinal11 => '11ஆம் இமாம்';

  @override
  String get imamOrdinal12 => '12ஆம் இமாம்';

  @override
  String get duaAudioScreenTitle => 'துஆக்களைக் கேளுங்கள்';

  @override
  String get duaAudioScreenSubtitle =>
      'கேட்க ஒரு துஆவைத் தேர்வு செய்யவும். இயக்க அல்லது இடைநிறுத்த அட்டையைத் தட்டவும்.';

  @override
  String get duaAudioComingSoonMessage =>
      'இந்த துஆவிற்கான ஒலி அடுத்த புதுப்பிப்பில் கிடைக்கும்.';

  @override
  String get duaAudioClose => 'மூடு';

  @override
  String get duaAudioError =>
      'ஒலியை ஏற்ற முடியவில்லை. உங்கள் இணைப்பைச் சரிபார்க்கவும்.';

  @override
  String get duaAudioMetaTransmittedBy => 'அறிவித்தவர்';

  @override
  String get duaAudioMetaOccasion => 'நிகழ்வு';

  @override
  String get duaAudioMetaDuration => 'நேர அளவு';

  @override
  String get quickActionDailyHadith => 'இன்றைய ஹதீஸ்';

  @override
  String get quickAction14Masumeen => 'பதினான்கு தவறாதவர்கள்';

  @override
  String get quickActionListenDuas => 'கேள்';

  @override
  String get quickActionTasbihat => 'தொழுகை வழிகாட்டி';

  @override
  String get pilgrimageSectionTitle => 'புனிதப் பயணம்';

  @override
  String get pilgrimageSectionSubtitle =>
      'ஹஜ்ஜும் உம்ராவும் குறித்த முழுமையான வழிகாட்டிகள் — மக்காவில் உள்ள அல்லாஹ்வின் புனித இல்லத்திற்கான யாத்திரை';

  @override
  String get hajjCardTitle => 'ஹஜ்';

  @override
  String get hajjCardSubtitle => 'இஸ்லாமின் ஐந்தாவது தூண்';

  @override
  String get hajjCardDescription =>
      'பெரும் ஆண்டுதோறும் நடைபெறும் புனிதப் பயணம் — திறன் உடைய ஒவ்வொரு முஸ்லிமிற்கும் வாழ்நாளில் ஒருமுறை கட்டாயம்';

  @override
  String get hajjScreenTitle => 'ஹஜ் வழிகாட்டி';

  @override
  String get hajjScreenSubtitle => 'பெரும் யாத்திரைக்கான படிப்படியான வழிகாட்டி';

  @override
  String get umrahCardTitle => 'உம்ரா';

  @override
  String get umrahCardSubtitle => 'சிறிய யாத்திரை';

  @override
  String get umrahCardDescription =>
      'ஆண்டின் எந்த நேரத்திலும் செய்யக்கூடிய ஆழ்ந்த ஆன்மிகப் பயணம்';

  @override
  String get umrahScreenTitle => 'உம்ரா வழிகாட்டி';

  @override
  String get umrahScreenSubtitle => 'சிறிய யாத்திரைக்கான படிப்படியான வழிகாட்டி';

  @override
  String get pilgrimageStepsTitle => 'சடங்குகளும் படிகளும்';

  @override
  String get pilgrimageImportantNotesTitle => 'முக்கிய குறிப்புகள்';

  @override
  String get pilgrimageDuaTitle => 'இந்த படிக்கான துஆ';

  @override
  String get pilgrimageJafariNoteTitle => 'ஜாஃபரி ஃபிக்ஹ் குறிப்பு';

  @override
  String get pilgrimageComplete => '✓ முடிந்தது';

  @override
  String get pilgrimageMarkDone => 'முடிந்ததாகக் குறிக்கவும்';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done இல் $total படிகள்';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes நிமிடங்கள்';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ஷியா யாத்திரிகர்கள்';

  @override
  String get pilgrimageShiaNoteBody =>
      'பல ஷியா யாத்திரிகர்கள் நபி முஹம்மது (ஸல்) அவர்களின் மச்ஜித் அல்-நபவியில் ziyarat செய்ய மற்றும் ஜன்னத் அல்-பாகியில் உள்ள கல்லறைகளை பார்வையிட மெதினாவுக்கு பயணம் செய்கிறார்கள். இந்த விஜயங்கள் ஆழமான ஆன்மிக முக்கியத்துவம் கொண்டவை, ஆனால் அவை ஹஜ் சடங்குகள் அல்ல.';

  @override
  String get hajjIntro =>
      'ஹஜ் என்பது இஸ்லாமின் ஐந்தாவது தூண், உடல் மற்றும் நிதி ரீதியாக திறமையான ஒவ்வொரு முஸ்லிமுக்கும் வாழ்க்கையில் ஒருமுறை கட்டாயமாக உள்ளது. இன்று பெரும்பாலான பதினான்கு ஷியா யாத���திரிகர்களுக்கு, இது இமாம் இப்ராஹீம் (அஸ) அவர்களின் பாதையில், அவரது மகன் இஸ்மாயில் (அஸ) மற்றும் லேடி ஹாஜர் அவர்களின் காலத்தில், துல் ஹிஜ்ஜா மாதத்தில் நடைபெறும் ஹஜ் அல்-தமத்து\' ஆகும். இந்த வழிகாட்டி ஜாஃபரி சடங்குகளின் வரைபடத்தை பின்பற்றுகிறது, மேலும் மெதினாவில் ziyarat என்பது ஹஜ் முன்னதாக அல்லது பின்னதாக ஆழமாக மதிக்கப்படும் பயணம் ஆகிறது.';

  @override
  String get umrahIntro =>
      'உம்ரா என்பது மக்காவிற்கான சிறிய யாத்திரை; ஹஜ்ஜைப் போல அல்லாமல், ஆண்டின் எந்த நேரத்திலும் இதைச் செய்யலாம். அது கட்டாயமல்லையெனினும், மிகுந்த ஆன்மிக நன்மையைக் கொண்டது மற்றும் மிகவும் பரிந்துரைக்கப்பட்ட இபாதத் எனக் கருதப்படுகிறது. ஹஜ்ஜுடன் சில சடங்குகளைப் பகிர்ந்துகொள்கிறது, ஆனால் இது குறுகியதாக இருந்து நான்கு முக்கிய சடங்குகளைக் கொண்டுள்ளது.';

  @override
  String get voiceInputTitle => 'குரல் உள்ளீடு';

  @override
  String get voiceInputMicTitle => 'மைக்ரோஃபோன்';

  @override
  String get voiceInputMicSubtitle =>
      'எழுதுவதற்குப் பதிலாக Ask Ayara-க்கு உங்கள் உள்ளீட்டை பேசுங்கள்.';

  @override
  String get voiceInputMicDenied => 'மைக்ரோஃபோன் அணுகல் மறுக்கப்பட்டது.';

  @override
  String get voiceInputSpeak => 'பேசுங்கள்';

  @override
  String get voiceInputListening => 'கேட்கிறது…';

  @override
  String get voiceInputPermissionDenied =>
      'குரல் உள்ளீட்டிற்காக மைக்ரோஃபோன் அணுகல் தேவை.';
}
