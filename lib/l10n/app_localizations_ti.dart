// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tigrinya (`ti`).
class AppLocalizationsTi extends AppLocalizations {
  AppLocalizationsTi([String locale = 'ti']) : super(locale);

  @override
  String get appTitle => 'አያራ';

  @override
  String get languageSelectTitle => 'ቋንቋ ምረጥ';

  @override
  String get languageSelectSub => 'ምስ ሰዓታት ቅንጅታት ሓድሓድ ከም ዚኽእል\'ዩ';

  @override
  String get actionContinue => 'መቀጸል';

  @override
  String get languageSuggestedHeader => 'ዝተሓተወ';

  @override
  String get languageAllHeader => 'ሓንቲ ሓንቲ ቋንቋታት';

  @override
  String get languageSuggestedBadge => 'ዝተሓተወ';

  @override
  String get languageSearchHint => 'ድለይ…';

  @override
  String get planBasic => 'መሰረታዊ';

  @override
  String get planPremium => 'ዊላያ';

  @override
  String get categorySlot01 => 'መዓልታዊ ምምሕዳር';

  @override
  String get categorySlot02 => 'ኢማን ምእምናን';

  @override
  String get categorySlot03 => 'ስእለት ምስተውዓል';

  @override
  String get categorySlot04 => 'ስጉምትን ሕልናን';

  @override
  String get categorySlot05 => 'ምሕረት ድለ';

  @override
  String get categorySlot06 => 'ርህራሕ ምሕዋስ';

  @override
  String get categorySlot07 => 'ኣምነት ብልጽግና';

  @override
  String get categorySlot08 => 'ምስጋና ልብ';

  @override
  String get categorySlot09 => 'ዓላማ ሕይወት';

  @override
  String get categorySlot10 => 'ሓንቲ ሕድሕድ ምጉሕ';

  @override
  String get categorySlot11 => 'ውሳነ ዝርግዝ';

  @override
  String get categorySlot12 => 'ምቕሓት ነቢይ';

  @override
  String get categorySlot13 => 'ሒወት ባህርይ';

  @override
  String get categorySlot14 => 'ዋጌ ተዘርዩ';

  @override
  String get categorySlot15 => 'ምሕዋስ ምሸት';

  @override
  String get categoryCustom => 'ብሕግዋይ ምስተውዓል';

  @override
  String get dhikrMeaningSubhanallah => 'ክብርን ክብርን ንኣለው';

  @override
  String get dhikrMeaningAlhamdulillah => 'ሙሉእ ምስጋና ንኣለው';

  @override
  String get dhikrMeaningAllahuAkbar => 'ወይዘሮ ዓቢ\'ዩ';

  @override
  String get quranVerseHeartAtRest => 'ብዝኸበርካ ንወይዘሮ ልባት ፈላጣ ዝረክብ\'ዮም።';

  @override
  String get promptHint => 'ምድራይ ምድራይ ምድራይ ምድራይ ምድራይ ምድራይ ምድራይ ምድራይ ምድራይ ምድራይ';

  @override
  String get currentLanguage => 'ሕሉም ቋንቋ';

  @override
  String get settingsLanguage => 'ምርጫ ቋንቋ';

  @override
  String get settingsTitle => 'ምርጫታት';

  @override
  String get chooseLanguage => 'ቋንቋ ምረጥ';

  @override
  String get continueCta => 'መቀጸል';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ቃላት',
      one: '$count ቃል',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ምርጫታት';

  @override
  String get newCta => 'ሓድሽ';

  @override
  String get actionsTitle => 'እንታይ ምግባር ትደሊ?';

  @override
  String get copy => 'ኮፒ';

  @override
  String get share => 'ምክፋል';

  @override
  String get close => 'ዝጋ';

  @override
  String get copiedToast => 'ናብ ትሕዝቶ ወትሩ';

  @override
  String shareSubject(String category) {
    return 'አያራ — $category';
  }

  @override
  String get regenerateErrorTitle => 'ሓድሽ መልሲ ክምጽእ ኣይከኣለን';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nክሞሙት ትደሊ?';
  }

  @override
  String get cancelCta => 'ሰርዝ';

  @override
  String get retryCta => 'ብሓድሽ ሞሙት';

  @override
  String get authTitle => 'መዝገብ ክፈርስ';

  @override
  String get continueAsGuest => 'ብመስተንገብግበት ቀጻለ';

  @override
  String get signInGoogle => 'ብGoogle ተመሃር';

  @override
  String get signInApple => 'ብApple ተመሃር';

  @override
  String get signInEmail => 'ብEሜል ተመሃር';

  @override
  String get upgradeWithApple => 'ብApple ቀጻለ';

  @override
  String get mustAccept => 'ሕጋዊ ስምምዕ ምእማን ምድሊ።';

  @override
  String get termsLabel => 'ሕጋዊ ስምምዕ ምእማን';

  @override
  String get privacyLabel => 'ፍቅዱ ምስተዳለወ';

  @override
  String get marketingOptIn => 'ሓበሬታ ብምክፋል ምእማን';

  @override
  String get openTerms => 'ሕጋዊ ስምምዕ';

  @override
  String get openPrivacy => 'ፍቅዱ';

  @override
  String get accountSection => 'መዝገብ';

  @override
  String get guestMode => 'ዓይነት ወገንታዊ';

  @override
  String get signedIn => 'ተመሃርካ';

  @override
  String get upgradeHint => 'መሪሕ ክሳብ ዓይነተ ምሳሌታት ይምዝገብ ብመዝገብ ምምዕባል.';

  @override
  String get upgradeWithGoogle => 'ብGoogle ቀጻለ';

  @override
  String get signOut => 'መዝገብ ተወግዪ';

  @override
  String get snackUpgraded => 'ምስ Google መዝገብ ምምዕባል ✅';

  @override
  String get snackSignedIn => 'ምስ Google ተመሃርካ ✅';

  @override
  String get snackSignedOut => 'መዝገብ ተወግዪ';

  @override
  String get snackSignedInApple => 'ምስ Apple ተመሃርካ ✅';

  @override
  String get snackSignedInGoogle => 'ምስ Google ተመሃርካ ✅';

  @override
  String get snackUpgradedApple => 'ምስ Apple መዝገብ ምምዕባል ✅';

  @override
  String get snackUpgradedGoogle => 'ምስ Google መዝገብ ምምዕባል ✅';

  @override
  String get historyTitle => 'ቅድሚት ምስተውዓላት';

  @override
  String get historyOpenCta => 'ቅድሚት ምስተውዓላት';

  @override
  String get historyEmpty => 'ዝተመዘገበ ምስተውዓል የለን።';

  @override
  String get historyDeleteTitle => 'ምስተውዓል ሰርዝ?';

  @override
  String get historyDeleteBody => 'ዝተመረጠ ዝተማሃሮ ዘለዎ ሓለናይ ክወግዪ ኣለዎ።';

  @override
  String get deleteCta => 'ሰርዝ';

  @override
  String get historyButton => 'ቅድሚት ምስተውዓላት';

  @override
  String get historyEmptyTitle => 'ምስተውዓል የለን';

  @override
  String get historyEmptyBody => 'ሓጺር ምግባር ጀምር — ዝተመዘገበ ዓይነታ ሰለስተ ነገር ይርአዩ።';

  @override
  String get historyDelete => 'ሰርዝ';

  @override
  String get footerTitle => 'ምስ ዊላያ ኢማንን ስብርን';

  @override
  String get footerSubtitle => 'ሓደ ስእለት ሳብ ሳብ';

  @override
  String get genericErrorSnack => 'ስህተት ተወዲደ — ብሓድሽ ሞሙት።';

  @override
  String get upgradeAccountCta => 'መሪሕ ክሳብ ዓይነተ ምሳሌታት ይምዝገብ ብመዝገብ ምምዕባል';

  @override
  String get deleteAccount => 'መዝገብ ሰርዝ';

  @override
  String get exportData => 'መሓላለቨ ኢቲ ምላእ';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => 'ቅሊላ ዓራቢ 🐯\nአያራ ውዕሎ ሃገር ሚሮ ሓደ ድሮ…';

  @override
  String get rateDailyLimit =>
      'ሕሉም ምስተውዓላት ምዕራፍ ምናልወሉ።\nዝበለ ምስተውዓላት ምርካብ ወይ ናብ ዊላያ ምምዕባል።';

  @override
  String get rateCreditsExhausted =>
      'ሓንቲ ሓንቲ ምስተውዓል ምእመራ ክሙት።\nርእይቶ ሓደ ወይ ናብ ዊላያ ምምዕባል ብምግባር ቀጻለ።';

  @override
  String get rateGraceCreditsExhausted =>
      'ሕሉም ምስተውዓላት ምዕራፍ ምናልወሉ።\nዝበለ ምስተውዓላት ምርካብ ወይ ናብ ዊላያ ምምዕባል።';

  @override
  String get premiumDescription => 'ዊላያ ብልጽግና ባህርያት፣ ሓድሽ ምድራቦች ን ልዩ ምልክት ንክፉት።';

  @override
  String ratePlanExhausted(String plan) {
    return 'ሕሉም ምስተውዓላት ምዕራፍ ምናልወሉ። ዕቅድ: $plan።';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ምስተውዓላት ምፍታሽ ኣይከኣለን: $message';
  }

  @override
  String get rateCheckGenericError => 'ምስተውዓላት ምፍታሽ ግዜ ስህተት ተወዲደ።';

  @override
  String get aiFallbackGeneric => 'ስህተት ተወዲደ — ብሓድሽ ሞሙት።';

  @override
  String get limitSectionTitle => 'ምስተውዓላት';

  @override
  String get limitTodayLabel => 'ተጠቃሚ';

  @override
  String limitCreditsLabel(Object credits) {
    return 'ቀሪ ምስተውዓላት: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'ዕቅድ: $plan';
  }

  @override
  String get limitLoadingLabel => 'ምትጋበእ…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'ምስተውዓላት';

  @override
  String get aiLimitSubtitle =>
      'ሓደ ሓደ ምልሲ 1 ምስተውዓል ተጠቅሚ። መሰረታዊ ፊተወሪ ምስተውዓላት ምስጠምጣ። ዊላያ ብልጽግና ምድራቦች ነዊሕ ን ወገንታ ጥቀሳ ነክራ።';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ምስተውዓላት ተጠቂምዋ';
  }

  @override
  String get creditsSectionTitle => 'ምስተውዓላት';

  @override
  String get creditsUsageLabel => 'ተጠቃሚ';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'ቀሪ ምስተውዓላት: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'ዕቅድ: $plan';
  }

  @override
  String get creditsLoadingLabel => 'ምትጋበእ…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'ምስተውዓላት';

  @override
  String get creditsSubtitle =>
      'ሓደ ሓደ ምልሲ 1 ምስተውዓል ተጠቅሚ። መሰረታዊ ፊተወሪ ምስተውዓላት ምስጠምጣ። ዊላያ ብልጽግና ምድራቦች ነዊሕ ን ወገንታ ጥቀሳ ነክራ።';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ምስተውዓላት ተጠቂምዋ';
  }

  @override
  String get settingsDeleteTitle => 'መዝገብ ሰርዝ';

  @override
  String get settingsDeleteDescription =>
      'ምዕራፍ መዝገብ ከምኡ ውን ሓንቲ ሓንቲ ዝተላዩ ሓበሬታ ሰርዝ።';

  @override
  String get settingsDeleteButtonLabel => 'መዝገብ ሰርዝ';

  @override
  String get settingsDeleteDialogTitle => 'መዝገብ ሰርዝ?';

  @override
  String get settingsDeleteDialogBody =>
      'ዚሕ ስራሕ ምዕራፍ\'ዩ እንሆ ደገሙ ክወግዪ ኣይከኣለን።\n\nሓንቲ ሓንቲ ንግግር፣ ታሪክ ከምኡ ውን መዝገብ ሓበሬታ ይወግዩ።';

  @override
  String get settingsDeleteDialogCancel => 'ሰርዝ';

  @override
  String get settingsDeleteDialogConfirm => 'ሰርዝ';

  @override
  String get settingsFreeLimitUsedTitle => 'ፊተወሪ ምስተውዓላት ተጠቂምዋ';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ግዛ ዚሕ ዓይነተ ፊተወሪ ምስተውዓላት ተጠቂምዋ። ናብ ዊላያ ምምዕባል ወይ ዝበለ ምስተውዓላት ምግዳድ።';

  @override
  String get settingsStarterCreditsUsedTitle => 'ፊተወሪ ምስተውዓላት ተጠቂምዋ';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ግዛ ዚሕ ዓይነተ ፊተወሪ ምስተውዓላት ተጠቂምዋ። ናብ ዊላያ ምምዕባል ወይ ዝበለ ምስተውዓላት ምግዳድ።';

  @override
  String get deviceBoundError =>
      'ግዛ ዚሕ ሪሞ ውጽኢት ሓድሓድ መዝገብ ዝተታሓዘ\'ዩ። ምስ መጀመሪያ መዝገብ ተመሃር።';

  @override
  String get premiumTitle => 'ዊላያ ሞድ';

  @override
  String get premiumSubtitleBasic => 'ሙሉእ አያራ ግንብር ተውጻእ።';

  @override
  String get premiumSubtitlePremium => 'ምስ ዊላያ ዓይነተ። ዝበለ ምስተውዓላት ትደሊ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'ሕሉም ዕቅድ: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'ምስተውዓላት: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'ምግዳድ ሓእስተ ይኽእል ኣይኮነን።';

  @override
  String get premiumSignInToPurchase => 'ምግዳድ ወይ ዊላያ ምዝናብ ሞሙት።';

  @override
  String get premiumRestorePurchases => 'ምግዳድ ደገም';

  @override
  String get premiumProcessing => 'ምስራሕ…';

  @override
  String get premiumRestoreHintTitle =>
      'ቅድሚት ግዛ ዚሕ ወይ ሌላ ሪሞ ምስ ዊላያ ወይ ምስተውዓላት ምግዳድ ከዋህበ?';

  @override
  String get premiumRestoreHintBody => 'ምግዳድ ደገም ውዒሉ የላ።';

  @override
  String get premiumBuyCredits200 => '200 ምስተውዓላት ግዲ';

  @override
  String get premiumBuyCredits400 => '400 ምስተውዓላት ግዲ';

  @override
  String get premiumBecomePremiumOneTime => 'ናብ ዊላያ ሞድ ምምዕባል';

  @override
  String get premiumTopupHint => 'ምስ ዊላያ፡ ምስተውዓላት ተወስኺ ምስ ትደሊ ጨመር ይከኣል።';

  @override
  String get premiumUpgradeCta => 'ምምዕባል';

  @override
  String get premiumRequiredForCategory =>
      'ዚሕ ምድራብ ብወገንታ ዊላያ ተጠቃሚታት\'ዩ። ሙሉእ ብልጽግና ትሕዝቶ ተውጻእ ሙሉእ ምሙር ሰርዝ።';

  @override
  String get premiumBenefitsBasic =>
      'ዊላያ ተውጻእ ዝበለ ምስተውዓላት፣ ብልጽግና ምድራቦች ምርካብ ን ምስ ተመሃሮ ንግግር ቀጻለ።';

  @override
  String get premiumBenefitsPremium =>
      'ምስ ዊላያ ሞድ ነ\'ርካ። ምስተውዓላት መሳዕኪያ ህሩይ፡ ዝበለ ምስተውዓላት ጨመር ከምኡ ውን ሕጉ ቀጻለ።';

  @override
  String get premiumButtonBecomePremium => 'ዊላያ ተውጻእ';

  @override
  String get premiumButtonTopup1000 => '1000 ምስተውዓላት ጨመር';

  @override
  String get premiumBadge => 'ዊላያ ንቅረታ';

  @override
  String get premiumLoadingStore => 'መደቦ ምትጋበእ…';

  @override
  String get premiumProductNotAvailable => 'ዚሕ ምግዳድ መደቦ ዛ ሰዓታት ዘይርአየ።';

  @override
  String get premiumPurchaseError => 'ምግዳድ ግዜ ስህተት ተወዲደ། ብሓድሽ ሞሙት።';

  @override
  String get premiumBuyCredits100 => '100 ምስተውዓላት ጨመር';

  @override
  String get premiumFeatureLocked => 'ዚሕ ባህርይ ተውጻእ ዊላያ ምለስ።';

  @override
  String get lockedCategoriesHint =>
      'ክልተ ምድራቦች ብወገንታ ዊላያ ተወላዲት\'ዮም። ሰደድ ሓንቲ ሓንቲ ምስተውዓል ምርአይ ተውጻእ።';

  @override
  String get freePlanBlockedTitle => 'ፊተወሪ ምስተውዓላት ተጠቂምዋ';

  @override
  String get freePlanBlockedBody =>
      'ፊተወሪ ምስተውዓላት ምስ ገበርካ። ቀጻለ ን ብልጽግና ምድራቦች ተውጻእ — ናብ ዊላያ ምምዕባል።';

  @override
  String get freePlanBlockedCtaGoPremium => 'ዊላያ ምርጫታት ታሕታይ ርአይ';

  @override
  String get graceBlockedTitle => 'ፊተወሪ ምስተውዓላት ተጠቂምዋ';

  @override
  String get graceBlockedBody =>
      'ፊተወሪ ምስተውዓላት ምስ ገበርካ። ቀጻለ ን ብልጽግና ምድራቦች ተውጻእ — ናብ ዊላያ ምምዕባል።';

  @override
  String get graceBlockedCtaGoPremium => 'ዊላያ ምርጫታት ታሕታይ ርአይ';

  @override
  String get rateGuestMustSignIn => 'አያራ ምስተውዓላት ተጠቃሚ ሞሙት።';

  @override
  String get guestNoCreditsTitle => 'ወገንታዊ ሞድ';

  @override
  String get guestNoCreditsBody =>
      'ወገንታዊ ሞድ ምስ ሰለሊ ትሎ ትከኣል፡ ምስተውዓላት ግዙ ኣይከኣልን। መደቦ ምሙር ሰርዝ ምስተውዓላት ተጠቅሚ ግዙ ተውጻእ።';

  @override
  String get guestDialogContinue => 'መቀጸል';

  @override
  String get guestDialogLoginInstead => 'ቀጻለ ተመሃር';

  @override
  String get optionalLabel => 'ምርጫ';

  @override
  String get accountDeleteSuccessTitle => 'መዝገብ ሰርዙ';

  @override
  String get accountDeleteSuccessBody => 'መዝገብ ከምኡ ውን ዝተላዩ ሓበሬታ ሰርዙ።';

  @override
  String get accountDeleteSuccessClose => 'ዝጋ';

  @override
  String get accountDeleteErrorTitle => 'መዝገብ ሰርዝ ኣይከኣለን';

  @override
  String get accountDeleteErrorClose => 'ሙሉእ';

  @override
  String get accountDeleteReauthCancelled => 'ብሓድሽ ምኽያድ ዘዘዊ ነኣታ።  ሙሉእ ሞሙት።';

  @override
  String get accountDeleteReauthRequired =>
      'መዝገብ ሰርዝ ኢሳስ ግዜ ምኽያድ ይፈቅድ። ተወግዪ ምሉእ ተመሃር ብሓድሽ ምሞሙት።';

  @override
  String get settingsDeletePermanentWarning =>
      'ዚሕ ስራሕ ምዕራፍ\'ዩ ነ ደገሙ ክወግዪ ኣይከኣለን། መዝገብ ምስ ዝተላዩ ሓበሬታ ይወግዩ።';

  @override
  String get dailyGraceTitle => 'መዓልታዊ ምምሕዳር';

  @override
  String get dailyGraceScriptureLabel => 'መዓልታዊ ቁርአን';

  @override
  String get dailyGraceSaintLabel => 'FIGURE OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'ምሸት ምስተውዓል';

  @override
  String get dailyGraceCopiedToast => 'ቁርአን ናብ ትሕዝቶ ወትሩ';

  @override
  String get locationConsentLabel => 'አያራ ምስቦ ለይ ወይ ምስተውዓል ሞድ ምግባር ተስዓ';

  @override
  String get locationConsentHint =>
      'ብወገንታዊ ምስ ዓይነታ ተጠቅሚ\'ዩ። ምስቦ ውዒሎ ይለወስ ወይ ይምዝገብ ኣይኮነን።';

  @override
  String get askPageTitle => 'አያራ ሪኢ';

  @override
  String get askPageDescription =>
      'ኢማን ሕይወት ወይ ኢስላማዊ ስራሕ ስለ ምን ሪኢ ን ምስ ቁርአንን ከምኡ ምምሕዳር ምገድ።';

  @override
  String get askPageInputHint => 'ሪኢ ኣቕምጣ…';

  @override
  String get askPageSubmitCta => 'ሪኢ';

  @override
  String get askPageInputEmptyError => 'ሮኢ ሩኢ ብቐድሞት።';

  @override
  String get askResultYourQuestion => 'ሪኢ';

  @override
  String get guidancePageTitle => 'ቅብላ';

  @override
  String get qiblaFacingMecca => 'ናብ ማካ ምገጻ';

  @override
  String get qiblaCompassInstruction =>
      'ሪሞ ምስ ወርዲ ብወለ ክበቃ ምስ ዐዓመ།\nዚሕ ወገን ናብ ቅብላ (ማካ) ምገጻ\'ዩ።';

  @override
  String get qiblaGpsUnavailableBody => 'GPS ምስ ሙላ የላ። ዐውጹ ን ምሞሙት ግዲ።';

  @override
  String get qiblaRetry => 'ብሓድሽ ሞሙት';

  @override
  String get qiblaTitle => 'ቅብላ ወገን';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km ኪ.ም ናብ ማካ';
  }

  @override
  String get qiblaLocationNeededTitle => 'ምስቦ ተፈሊዩ';

  @override
  String get qiblaLocationNeededBody => 'ምስቦ ተስዓ አያራ ካዕበ ወገን ሕሉም ግዛ ስሌት ይግበር።';

  @override
  String get qiblaOpenSettings => 'ምርጫታት ተወጻእ';

  @override
  String get qiblaCompassLoading => 'ዓይንቲ ትሌ…';

  @override
  String get qiblaTowardMecca => 'ናብ ማካ';

  @override
  String get prayerTimesTitle => 'ስእለት ሰዓታት';

  @override
  String get prayerTimesFajr => 'ፋጀር';

  @override
  String get prayerTimesDhuhr => 'ድሁር';

  @override
  String get prayerTimesAsr => 'ዓስር';

  @override
  String get prayerTimesMaghrib => 'ማግሪብ';

  @override
  String get prayerTimesIsha => 'ዕሻ';

  @override
  String get prayerTimesLocationNeededTitle => 'ምስቦ ተፈሊዩ';

  @override
  String get prayerTimesLocationNeededBody =>
      'ምስቦ ተስዓ አያራ ተፈሊሙ ስእለት ሰዓታት ስሌት ይግበር።';

  @override
  String get prayerTimesNextLabel => 'ቀጣሚ';

  @override
  String get prayerTimesDoneLabel => 'ምዕራፍ';

  @override
  String get monthlyPrayerTimesTitle => 'ወርሕ ስእለት ሰዓታት';

  @override
  String get monthlyPrayerTimesViewButton => 'ሙሉእ ወርሕ ር';

  @override
  String get monthlyPrayerTimesNextMonth => 'ቀጣሚ ወርሕ';

  @override
  String get monthlyPrayerTimesDayHeader => 'መዓልታ';

  @override
  String get sharePrayerTimes => 'ስእለት ሰዓታት ምክፋል';

  @override
  String get notificationsSectionTitle => 'ዕሌት';

  @override
  String get notificationsSectionSubtitle => 'ስእለት ዕሌት ወርሕ ምክንያታት ከምኡ ውን ቀረበ';

  @override
  String get dailyReflectionReminderTitle => 'መዓልታዊ ምስተውዓል';

  @override
  String get dailyReflectionReminderDescription => 'ኢማን ምስ ምርኩስ መዓልታ መ\'ሌ ዕሌት።';

  @override
  String get dailyReflectionReminderEnable => 'መዓልታ ዕሌት ተስዓ';

  @override
  String get dailyReflectionReminderTimeLabel => 'ዕሌት ሰዓት';

  @override
  String get prayerNotificationsTitle => 'ስእለት ዕሌቶች';

  @override
  String get prayerNotificationsDescription =>
      'ሓደ ሓደ ስእለት ሰዓት ቅድሚት ታዓሪ ዕሌት ምርካብ ቀጻለ።';

  @override
  String get prayerNotificationsEnable => 'ስእለት ዕሌቶች ተስዓ';

  @override
  String get prayerNotificationsOpenSettings => 'ዕሌት ምርጫታት ተወጻእ';

  @override
  String get prayerNotificationsDenied => 'ዕሌቶች ዲሳቢል';

  @override
  String get prayerNotificationsDeniedHint =>
      'ምርጫታት ተወጻእ ምስ አያራ ስእለት ሰዓታት ዕሌቶች ምርካብ።';

  @override
  String get notificationsConsentLabel => 'ስእለት ሰዓታት ዕሌቶች ተስዓ';

  @override
  String get prayerNotifTitleFajr => '🌅 ፋጀር — ወርሙ ስእለት';

  @override
  String get prayerNotifBodyFajr =>
      'ፋጀር ቦ ዋልድ የኃሌት ስእለት\'ዩ። ኢማም ዓሊ (AS) እዩ: ጽሕፍት ውጽኢት ነ\'ብ ታሕዳሪ ማለት። ምምላእ ምጸሪ ንወለ ወይዘሮ ምቅደም።';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ድሁር — ማዓላ ስእለት';

  @override
  String get prayerNotifBodyDhuhr =>
      'ዋልድ ብህ ሚድ ስእለት ሰዓት ታሕብ\'ዩ። ንጉሥ ድሁር ምስ ዓስር ውሒድ ወይ ይገደሉ ወይ ወለ ምስ ምርኩስ።';

  @override
  String get prayerNotifTitleAsr => '🌤️ ዓስር — ምሸት ስእለት';

  @override
  String get prayerNotifBodyAsr =>
      'ስእለት ጽሕፎ ዓለኪ ምስ ወለ ተሓዛዙ። ዓስር ሰዓት ወለ — ምስቶ ሳዓ ዘላ ኣለ።';

  @override
  String get prayerNotifTitleMaghrib => '🌇 ማግሪብ — ምሸት ስእለት';

  @override
  String get prayerNotifBodyMaghrib =>
      'ጸሐይ ኣርሙ — ወገንታ ግዳ ስምም ወለ ምስ ድቁቁ። ማግሪብ ሮሩ ን ናብ ወለ ኢድ ብምስት ቅድሚት ምሸት ጀምር።';

  @override
  String get prayerNotifTitleIsha => '🌙 ዕሻ — ምሸት ስእለት';

  @override
  String get prayerNotifBodyIsha =>
      'መዓልት ወለ ምስ ምስጠምዝግበር। ዋልድ ምስ ዕሳ በ ምሪት ለይ ስእለት ትግበር — ትሳሞ ዕሳ ምስጠምዝግበር።';

  @override
  String get outOfReflectionsBannerText => 'ሓንቲ ሓንቲ ምስተውዓላት ተጠቂምዋ';

  @override
  String get outOfReflectionsBannerCta => 'ቀረበ';

  @override
  String get dhikrPageTitle => 'ዝክር';

  @override
  String get dhikrTapToCount => 'ክታብ ምንጭ';

  @override
  String get dhikrResetButton => 'ደገም';

  @override
  String get dhikrComplete => 'ማሻ\'ላሕ';

  @override
  String get dhikrCompleteMessage => '100 ወለ ክትክር ግብርት። ውጽኢት ልብ ብህ ሙታዊ ይግበሩ።';

  @override
  String get disclaimerTitle => 'ዚሕ ሰለሊ ምምሕዳር ስለ';

  @override
  String get disclaimerBody =>
      'አያራ ኢስላም ምስተውዓላት ዕሌቶች ን ሩቅ ትሕዝቶ ኢማን ምልሸ ክሳብ ንድሕር ምሙር ነ\'ብ ታቀርቢ\'ዩ። ዚሕ ትሕዝቶ ባህር ጥራሕ ማለት\'ዩ።\n\nአያራ ምህሳብ ሊቅ ይወሳደር።\nዚሕ ሰለሊ ትሕዝቶ ምሙር ተማሂርት ሊቅ ወይ ደራስ ይስርዓ። ኢስላሚ ብህገ ወለ ጥቅም ምግንዋዝ ወይ ምልሸ ምሙር ሊቅ — ምተ ዘሕይወ ማጀቅ — ተሞሮ ሞሮ ዝግበር ዓለክ། ሕጋዊ ስራሕ ወይ ምኾናም ምሙር ሊቅ ወይ ከተማ ምህሳብ ሊቅ ሪኢ።\n\nዚሕ ሰለሊ ሕጋዊ ውሰድ ቀርበ።\nአያራ ሕጋዊ ውሰድ ወይ ምግበር ሌላ ነገር ግዙ ትግበር ኣይኮነን። ዚሕ ይታ ፋትወት ወይ ሕጋዊ ኖስ ምግበር።\n\nወወ ወገንታ ምስቆቅ።\nኢስላሚ ብህ ይአሕስ ምስ ተወሎ ሙሉእ ቅር — ወወ ወገንታ (Ahl al-Bayt) — ምውሳዱ ምምሕዳር። ኤሌቭ ኢማማት ወወ ወገንታ ሽዑ ኢስላሚ ታጌጣት\'ዮም። ዚሕ ሰለሊ ዚሕ ግሌ ክብር ዓቦ።\n\nሕብረተሰብ ነገር።\nዚሕ ሰለሊ ኢማን ምስ ዓልግ ብህገ ተጥበብ አታ ሪቫ ካቢነ ምክንያት። ምሙር ልብ ከተማ ሊቅ ምግበር ዕሌ።';

  @override
  String get disclaimerClose => 'ሙሉእ';

  @override
  String get disclaimerInfoTooltip => 'ዚሕ ሰለሊ ምምሕዳር ስለ';

  @override
  String get disclaimerSettingsSubtitle => 'ባህር ጥራሕ ማለት። ሙሉእ ምምሕዳር ሪኢ ሞሙት።';

  @override
  String get disclaimerSectionHeader => 'ምምሕዳር ሁማሚ';

  @override
  String get navHome => 'መገዲ';

  @override
  String get navReflect => 'ምስተውዓል';

  @override
  String get navDuas => 'ዱዓ';

  @override
  String get navCalendar => 'ወርሕ';

  @override
  String get dashboardToday => 'ሕሉም';

  @override
  String get dashboardComingUp => 'ቀሚሙ';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'መዓልታት',
      one: 'መዓልታ',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'ፈጣሪ ምርካብ';

  @override
  String get quickActionQibla => 'ቅብላ';

  @override
  String get quickActionDhikr => 'ዝክር';

  @override
  String get quickActionDailyGrace => 'ምምሕዳር';

  @override
  String get quickActionPrayerTimes => 'ስእለት ሰዓታት';

  @override
  String get askAyaraTitle => 'አያራ ሪኢ';

  @override
  String get askAyaraSubtitle => 'ሕጋዊ ሪኢ ኢስላሚ ምልሸ ምገድ።';

  @override
  String get askAyaraHint => 'ምሳ. ራማዳን ዓርክዋ?';

  @override
  String get askAyaraSubmit => 'ሪኢ';

  @override
  String get wisdomOfTheDayTitle => 'ሙታዊ ሕሉም';

  @override
  String get calendarScreenTitle => 'ሕጃሪ ወርሕ';

  @override
  String get calendarUpcomingOccasions => 'ቀሚሙ ኔበራት';

  @override
  String get calendarOccasionRemindersTitle => 'ክንያት ዕሌቶች';

  @override
  String get calendarOccasionRemindersHint => 'ሓንቲ ሓንቲ ክንያት ቅድሚት ምሸት ዕሌት';

  @override
  String get calendarNotifPermissionDenied => 'ዕሌት ይፈቅድ ጸሪዩ። ሪሞ ምርጫታት ዕሌት ተስዓ።';

  @override
  String get calendarNoEvents => 'ቀሚሙ ኔበራት ዘይርአየ።';

  @override
  String get calendarAddToPhone => 'እንተ ወይ ኣብ መዋቅር ይገብ��';

  @override
  String get calendarAddedToPhone => 'ኣብ መዋቅር ይገብር';

  @override
  String get calendarCountdownToday => 'ሕሉም';

  @override
  String get calendarCountdownTomorrow => 'ነገር';

  @override
  String calendarCountdownDays(int days) {
    return '$days መዓልታት';
  }

  @override
  String get calendarAH => 'ሕ.ይ';

  @override
  String get calendarMonthJan => 'ጃነ';

  @override
  String get calendarMonthFeb => 'ፌብ';

  @override
  String get calendarMonthMar => 'ማር';

  @override
  String get calendarMonthApr => 'ኤፕር';

  @override
  String get calendarMonthMay => 'ሜይ';

  @override
  String get calendarMonthJun => 'ጁን';

  @override
  String get calendarMonthJul => 'ጁላ';

  @override
  String get calendarMonthAug => 'ኦገ';

  @override
  String get calendarMonthSep => 'ሴፕ';

  @override
  String get calendarMonthOct => 'ኦክ';

  @override
  String get calendarMonthNov => 'ኖቬ';

  @override
  String get calendarMonthDec => 'ዲሴ';

  @override
  String get calendarSeasonMuharramEarly => 'ሙሐረም መዓልታት — ካርባላ ምጥምታ';

  @override
  String get calendarSeasonAshura => 'ዓሱራ — ያ ሁሳይን (AS)';

  @override
  String get calendarSeasonMuharramLate => 'ሙሐረም — ምስጋና ተውዓላ መዓልታት';

  @override
  String get calendarSeasonArbaeen => 'ኣርባዓይን — ሁሳይን ሓምሳ';

  @override
  String get calendarSeasonRoadToArbaeen => 'ናብ ኣርባዓይን ወገን';

  @override
  String get calendarSeasonMabath => 'ማቡዕ ሙባረክ — 启示ታ ጅማሪ';

  @override
  String get calendarSeasonMidShaban => 'ሓንፈራ ሻዓባን — ኢማም ማሂዲ (AJ) ልደት';

  @override
  String get calendarSeasonRamadan => 'ራማዳን ሙባረክ — ቁርአን ወርሕ';

  @override
  String get calendarSeasonGhadir => 'ዓይደ ጋዲር ሙባረክ!';

  @override
  String get hijriMonth1 => 'ሙሐረም';

  @override
  String get hijriMonth2 => 'ሳፋር';

  @override
  String get hijriMonth3 => 'ራቢ\' ሉአወል';

  @override
  String get hijriMonth4 => 'ራቢ\' ሉ-ሳኒ';

  @override
  String get hijriMonth5 => 'ጁማዳ ሉአወል';

  @override
  String get hijriMonth6 => 'ጁማዳ ሉ-ሳኒ';

  @override
  String get hijriMonth7 => 'ራጃብ';

  @override
  String get hijriMonth8 => 'ሻዓባን';

  @override
  String get hijriMonth9 => 'ራማዳን';

  @override
  String get hijriMonth10 => 'ሳዋል';

  @override
  String get hijriMonth11 => 'ዱ ሉ-ቂዓዳ';

  @override
  String get hijriMonth12 => 'ዱ ሉ-ሂጃ';

  @override
  String get duasScreenTitle => 'ዱዓ ወ ዚያራ';

  @override
  String get duasSearchHint => 'ዱዓ ዚያራ ድለ…';

  @override
  String get duasFilterAll => 'ሓንቲ ሓንቲ';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ዱዓ ከምኡ ውን ዚያራ',
      one: '$count ዱዓ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'ዱዓ ዘይርአየ።';

  @override
  String get duaCategoryDaily => 'መዓልታ';

  @override
  String get duaCategoryWeekly => 'ሳብ';

  @override
  String get duaCategoryOccasions => 'ኔበራት';

  @override
  String get duaCategoryZiyarat => 'ዚያራ';

  @override
  String get duaCategoryTasbih => 'ታስቢህ';

  @override
  String get eventTypeBirth => 'ልደት';

  @override
  String get eventTypeMartyrdom => 'ሕይወት ወገጽ';

  @override
  String get eventTypeOccasion => 'ኔበራ';

  @override
  String get duaCopyTooltip => 'ትርጓሜ ኮፒ';

  @override
  String get duaToggleTransliteration => 'ቲረንስሊተረሽን';

  @override
  String get duaToggleTranslation => 'ትርጓሜ';

  @override
  String get duaAskAiLabel => 'አያራ ዚሕ ዱዓ ዓቅብዮ';

  @override
  String get duaAskAiLockedLabel => 'አያራ ሪኢ (ዊላያ)';

  @override
  String get duaAiLockedMessage =>
      'አያራ ምስተውዓላት ብወገንታ ዊላያ ተወላዲት\'ዮም। ምርጫታት ምምዕባል።';

  @override
  String duaAiComingSoon(String name) {
    return 'አያራ \"$name\" ስለ ሪኢ — ኑሕ ይምጽእ!';
  }

  @override
  String get duaCopiedToast => 'ዱዓ ናብ ትሕዝቶ ወትሩ።';

  @override
  String get tasbihAllahuAkbarMeaning => 'ወይዘሮ ዓቢ\'ዩ';

  @override
  String get tasbihAlhamdulillahMeaning => 'ሙሉእ ምስጋና ንወይዘሮ';

  @override
  String get tasbihSubhanallahMeaning => 'ክብርን ክብርን ንወይዘሮ';

  @override
  String get tasbihResetTooltip => 'ደገም';

  @override
  String get tasbihCompleteTitle => 'ታስቢህ ምዕራፍ';

  @override
  String get tasbihCompleteMessage => 'ወይዘሮ ዝክር ይቅበል።';

  @override
  String get tasbihTapHint => 'ሕላፍ ምንጭ ክታብ';

  @override
  String get tasbihatScreenTitle => 'ስእለት ምምሕዳር';

  @override
  String get tasbihatScreenSubtitle => 'ስእለት ታስቢህሳት';

  @override
  String get tasbihatScreenDescription =>
      'ሙሉእ ምምሕዳር ስእለት ምስ ገበርዋ ደገምዋ ታስቢህሳት — ወወ ወገንታ (a) ብህተ።';

  @override
  String get tasbihatArba3Title => 'ታስቢህሳት ኣርባዕ';

  @override
  String get tasbihatArba3Subtitle => '3ኛ ወ 4ኛ ራከዓ ምስ ግበር';

  @override
  String get tasbihatArba3Info =>
      'ኢስላሚ ብህ ኤሌቭ ታስቢህሳት ኣርባዕ ቁርአን ሱረት ፊለታ ትክል ጀምራ። ሙሉእ ገበር\'ዩ ወ ሰገር ገበር\'ዩ።';

  @override
  String get tasbihatArba3Translation =>
      'ክብርን ክብርን ንወይዘሮ · ሙሉእ ምስጋና ንወይዘሮ\nወይዘሮ ሙሉእ ኣሎ · ወይዘሮ ዓቢ\'ዩ';

  @override
  String get tasbihatArba3CompleteTitle => 'ክውረድ ምዕራፍ';

  @override
  String get tasbihatArba3CompleteMessage => 'ስእለት ይቅበል — ኣሚን';

  @override
  String get tasbihatArba3TapHint => 'ሓደ ሓደ ክውረድ ጀመር ምሳ ሕግዩ';

  @override
  String get tasbihatZahraSubtitle => 'ሓደ ሓደ ስእለት ደገም · 100 ወርዝ';

  @override
  String get tasbihatZahraOriginLabel => 'ምንጫ';

  @override
  String get tasbihatZahraHadith =>
      'ሎ ፋጥሚ ዝ-ዛህራ (SA) ነቢይ ﷺ ሀገር ሪኢት። በሉ: \"ትሕዝቶ ቀረበ? ታስቢህ ሱብሐኞላህ 33 ጊዜ፣ ሉ ሃምዱሊላህ 33 ጊዜ ወ ሉ ኣላሁ ኣክበር 34 ጊዜ ሓደ ሓደ ስእለት ተወከል። ዚሕ ለብ ይበልግ።\"';

  @override
  String get tasbihatZahraHadithSource => '— ቢሐር ሉ-ኣንወር ቅሪጥ 85';

  @override
  String get tasbihatZahraOpenCounter => 'ታስቢህ ክተሚ ተወጻእ';

  @override
  String get tasbihatDuasTitle => 'ምልሰ ዱዓታት';

  @override
  String get tasbihatDuasSubtitle => 'ስእለት ምዕራፍ ጅማሪ';

  @override
  String get tasbihatDuaAyatKursiTitle => 'ኣያት ሉ-ኩርሲ';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ሓደ ሓደ ሙሉእ ስእለት';

  @override
  String get tasbihatDuaAyatKursiSource => 'ሱረት ሉ-ባቃራህ 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ሚን ክወሩድ ኣያት ሉ-ኩርሲ ሓደ ሓደ ሙሉእ ስእለት፣ ምርኖ ነ ከወት ያህል ሰብ ሌላ ምልሸት። ኢማም ሺ-ባቂር (a) ኣያት ዓቢ ቡርሐን\'ዩ።';

  @override
  String get tasbihatDuaSalawatTitle => 'ሳላወት';

  @override
  String get tasbihatDuaSalawatWhen => 'ሓደ ሓደ ስእለት · ሓንቲ ሓንቲ ዱዓ ጨፈረ';

  @override
  String get tasbihatDuaSalawatSource => 'ኢማም ሺ-ሳዲቅ (a) — ሺ-ካፊ';

  @override
  String get tasbihatDuaSalawatNote =>
      'ነቢይ ﷺ ን ሩቅ ሕድሕድ (ኣል ሙሐመድ) ምስላም ዱዓ ሓደ ሓደ ዱዓ ጨፈር ተገብር\'ዩ። ኢማም ሺ-ሳዲቅ (a) እዩ: \"ሓንቲ ሓንቲ ዱዓ ሙሃመድ ን ሩቅ ሕድሕድ ሳላወት ሙሉእ ሳለ።\"';

  @override
  String get tasbihatDuaFarajTitle => 'ዱዓ ሉ-ፈራጅ';

  @override
  String get tasbihatDuaFarajWhen => 'ሓደ ሓደ ስእለት · ኢማም ሉ-ማሂዲ ለ';

  @override
  String get tasbihatDuaFarajSource => 'ኢማም ሺ-ሐሰን ሺ-ዓስከሪ (a) ትምሃርት';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. It is often recited by many Shia Muslims after prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'ታስቢህ ሎ ፋጥሚ';

  @override
  String get tasbihatDuaTasbihFatimaWhen => 'ማግሪብ ወ ዕሻ ደገም · ብልጽግና ምልሰ';

  @override
  String get tasbihatDuaTasbihFatimaSource => 'ኢማም ሺ-ባቂር (a) — ቢሐር ሺ-ኣንወር';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ኢማም ሺ-ባቂር (a) ታስቢህ ሺ-ዛህራ ዕሻ ፊቅ ሕ\'ሌ ዱዓ 1000 ራከዓት ሶጅዱድ ከምዚ ቀቅዖ\'ዩ። ብህሩይ ሰማያት ወደቀ\'ዩ።';

  @override
  String get tasbihFatimaGiftPre => 'ምስ ነቢይ ብዛ';

  @override
  String get tasbihFatimaGiftPost => 'ሓደ ሓደ ስእለት ተወከል';

  @override
  String get prayerTrackerTitle => 'ስእለት ብ-ትሓዝብ';

  @override
  String get prayerTrackerPrayed => 'ስእለት ገበር';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count መዓልታ ተከታታይ';
  }

  @override
  String get prayerTrackerAllComplete => 'ሓንቲ ሓንቲ ስእለት ሕሉም ግበር። ወይዘሮ ይቅበል።';

  @override
  String get dhikrTrackerTitle => 'ታስቢህ ሺ-ዛህራ';

  @override
  String get dhikrTrackerCompletedToday => 'ሕሉም ምስጠመምዚ';

  @override
  String get dhikrTrackerNotDoneToday => 'ሕሉም ዘይገበር';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count መዓልታ ተከታታይ';
  }

  @override
  String get dhikrReminderTitle => 'ታስቢህ ዕሌት';

  @override
  String get dhikrReminderDescription => 'መዓልታዊ ታስቢህ ሺ-ዛህራ (SA) ክወሩድ ደህሓ ዕሌት።';

  @override
  String get dhikrReminderEnable => 'ታስቢህ ዕሌት ተስዓ';

  @override
  String get dhikrReminderTimeLabel => 'ዕሌት ሰዓት';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'መዓልታዊ ሃዲስ';

  @override
  String get hadithLabelArabic => 'ዓራቢ';

  @override
  String get hadithLabelTranslation => 'ትርጓሜ';

  @override
  String get hadithBadge => 'ሃዲስ';

  @override
  String get hadithShare => 'ሃዲስ ምክፋል';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'ቅድሚት';

  @override
  String get hadithNavNext => 'ቀጣሚ';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The Fourteen Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the purified and infallible guides in Twelver Shia Islam';

  @override
  String get imamLabelBorn => 'ወለደ';

  @override
  String get imamLabelMartyrdom => 'ሕይወት ወገጽ';

  @override
  String get imamLabelStatus => 'ሁኒ';

  @override
  String get imamSectionBiography => 'ሕይወት ታሪክ';

  @override
  String get imamSectionFamousSaying => 'ትዝታ ቃል';

  @override
  String get imamRoleProphet => 'መጀመሪያ ነቢይ';

  @override
  String get imamRoleInfallible => 'ይክብር';

  @override
  String get imamOrdinal1 => '1ኛ ኢማም';

  @override
  String get imamOrdinal2 => '2ኛ ኢማም';

  @override
  String get imamOrdinal3 => '3ኛ ኢማም';

  @override
  String get imamOrdinal4 => '4ኛ ኢማም';

  @override
  String get imamOrdinal5 => '5ኛ ኢማም';

  @override
  String get imamOrdinal6 => '6ኛ ኢማም';

  @override
  String get imamOrdinal7 => '7ኛ ኢማም';

  @override
  String get imamOrdinal8 => '8ኛ ኢማም';

  @override
  String get imamOrdinal9 => '9ኛ ኢማም';

  @override
  String get imamOrdinal10 => '10ኛ ኢማም';

  @override
  String get imamOrdinal11 => '11ኛ ኢማም';

  @override
  String get imamOrdinal12 => '12ኛ ኢማም';

  @override
  String get duaAudioScreenTitle => 'ዱዓ ሃወኸ';

  @override
  String get duaAudioScreenSubtitle => 'ዱዓ ምረጥ ሃወኸ። ጥቅስ ወይ ምስጠምዝግ።';

  @override
  String get duaAudioComingSoonMessage => 'ዚሕ ዱዓ ሰውታ ከቪስ ለውዓት ይምጽእ።';

  @override
  String get duaAudioClose => 'ዝጋ';

  @override
  String get duaAudioError => 'ሰውታ ምሕዝ ኣይከኣለን። ምጱ ሙሌ።';

  @override
  String get duaAudioMetaTransmittedBy => 'ተወስዩ';

  @override
  String get duaAudioMetaOccasion => 'ኔበራ';

  @override
  String get duaAudioMetaDuration => 'ሰዓት';

  @override
  String get quickActionDailyHadith => 'መዓልታዊ ሃዲስ';

  @override
  String get quickAction14Masumeen => 'Fourteen Infallibles';

  @override
  String get quickActionListenDuas => 'ሃወኸ';

  @override
  String get quickActionTasbihat => 'ስእለት ምምሕዳር';

  @override
  String get pilgrimageSectionTitle => 'ቅድስ ጉዕዞ';

  @override
  String get pilgrimageSectionSubtitle =>
      'ሙሉእ ምምሕዳር ሓጀ ከምኡ ውን ዑመሪ — ናብ ማካ ቅድስ ቤተ ወገን';

  @override
  String get hajjCardTitle => 'ሓጀ';

  @override
  String get hajjCardSubtitle => 'ኢስላም 5ኛ ምሩግ';

  @override
  String get hajjCardDescription => 'ዓቢ ሕመራዊ ወገን — ሓደ ሓደ ብ-ሕሉም ክብር ሙሃመድ ተወላዲ';

  @override
  String get hajjScreenTitle => 'ሓጀ ምምሕዳር';

  @override
  String get hajjScreenSubtitle => 'ሓደ-ሓደ ምምሕዳር ዓቢ ወገን';

  @override
  String get umrahCardTitle => 'ዑመሪ';

  @override
  String get umrahCardSubtitle => 'ትንሳዓ ወገን';

  @override
  String get umrahCardDescription => 'ሰላም ጥሞተ ሮሕ ወገን ዓመት ሕየ ምስ ክወግዶ';

  @override
  String get umrahScreenTitle => 'ዑመሪ ምምሕዳር';

  @override
  String get umrahScreenSubtitle => 'ሓደ-ሓደ ምምሕዳር ትንሳዓ ወገን';

  @override
  String get pilgrimageStepsTitle => 'ሕጋዊ ስራሕ';

  @override
  String get pilgrimageImportantNotesTitle => 'ወሳናዊ ምልክቶች';

  @override
  String get pilgrimageDuaTitle => 'ኣብ ዚሕይወት ድዋ';

  @override
  String get pilgrimageJafariNoteTitle => 'ዝርዝር ዝነብስ ዋዕላ ዓለም';

  @override
  String get pilgrimageComplete => '✓ ይኸውን';

  @override
  String get pilgrimageMarkDone => 'እንደ ተጠናቀቀ ይምረጡ';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ኣብ $total ደረጃ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes ደቂቕ';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ሽያ ወገናት';

  @override
  String get pilgrimageShiaNoteBody =>
      'ብዙሓት ሺዓ ሓጃጃት ናብ መዲና እውን ይጉዕዙ፣ ኣብ Masjid al-Nabawi ንነቢይ ሙሓመድ (SAW) ዚያራ ንምግባር እና ኣብ Jannat al-Baqi ዘለዉ መቓብር ንምብጻሕ። እዚ ምብጻሓት ዓሚቕ መንፈሳዊ ኣገዳሲነት ኣለዎም፣ ግን ባዕሎም ሥርዓታት ሐጅ ኣይኮኑን።';

  @override
  String get hajjIntro =>
      'ሐጅ ሓምሻይ ዓምዲ እስልምና እዩ፣ ኣካላዊን ገንዘባዊን ብቕዓት ዘለዎ ኩሉ ሙስሊም ኣብ ሕይወቱ ሓንሳብ ክፍጽሞ ዝግባእ ግዴታ እዩ። ንብዙሓት ናይ 12-ኢማም ሺዓ ሓጃጃት ሎሚ፣ እዚ ማለት Hajj al-Tamattu\' እዩ፣ ኣብ ወርሒ Dhul Hijjah ብኣሰር ነቢይ Ibrahim (AS), ወዱ Ismail (AS) እና Lady Hajar ዝፍጸም። እዚ መምርሒ ንሥርዓታት Ja\'fari መስመር ይኽተል፣ ዚያራት ኣብ መዲና ግን ቅድሚ ወይ ድሕሪ ሐጅ ዝፈተወ መንፈሳዊ ጉዕዞ እዩ ዝቕጽል።';

  @override
  String get umrahIntro =>
      'ዑመሪ ማካ ትንሳዓ ወገን\'ዩ ወ ሓጀ ዘይመልካዕ ዓመት ሕየ ምስ ክወግዶ। ሙሉእ ኢዩ ግዙ ሕሩይ ምስቅምምዕ ሓደ ሓደ ሕብረተሰብ።';

  @override
  String get voiceInputTitle => 'Voice Input';

  @override
  String get voiceInputMicTitle => 'Microphone';

  @override
  String get voiceInputMicSubtitle =>
      'Speak your input to Ask Ayara instead of typing.';

  @override
  String get voiceInputMicDenied => 'Microphone access was denied.';

  @override
  String get voiceInputSpeak => 'Speak instead';

  @override
  String get voiceInputListening => 'Listening…';

  @override
  String get voiceInputPermissionDenied =>
      'Microphone access is required for voice input.';
}
