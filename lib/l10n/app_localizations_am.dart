// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'ቋንቋዎን ይምረጡ';

  @override
  String get languageSelectSub => 'ይህን በኋላ በቅንብሮች ውስጥ መቀየር ይችላሉ';

  @override
  String get actionContinue => 'ቀጥል';

  @override
  String get languageSuggestedHeader => 'የተጠቆመ';

  @override
  String get languageAllHeader => 'ሁሉም ቋንቋዎች';

  @override
  String get languageSuggestedBadge => 'የተጠቆመ';

  @override
  String get languageSearchHint => 'ፈልግ…';

  @override
  String get planBasic => 'መደበኛ';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'የዕለት መመሪያ';

  @override
  String get categorySlot02 => 'ኢማን እና እምነት';

  @override
  String get categorySlot03 => 'የሶላት ምልከታ';

  @override
  String get categorySlot04 => 'ትዕግሥት እና ተስፋ';

  @override
  String get categorySlot05 => 'ይቅርታን ፈልግ';

  @override
  String get categorySlot06 => 'ምሕረት እና ርኅራኄ';

  @override
  String get categorySlot07 => 'የእምነት ብርታት';

  @override
  String get categorySlot08 => 'አመስጋኝ ልብ';

  @override
  String get categorySlot09 => 'የሕይወት ዓላማ';

  @override
  String get categorySlot10 => 'የቤተሰብ ትስስር';

  @override
  String get categorySlot11 => 'የውስጥ ሰላም';

  @override
  String get categorySlot12 => 'የነቢዩ ጥበብ';

  @override
  String get categorySlot13 => 'መልካም ጠባይ';

  @override
  String get categorySlot14 => 'ፈተናን ተቋቋም';

  @override
  String get categorySlot15 => 'የምሽት ዝክር';

  @override
  String get categoryCustom => 'የግል ምልከታ';

  @override
  String get dhikrMeaningSubhanallah => 'ለአላህ ክብር ይሁን';

  @override
  String get dhikrMeaningAlhamdulillah => 'ምስጋና ሁሉ ለአላህ ነው';

  @override
  String get dhikrMeaningAllahuAkbar => 'አላህ ታላቁ ነው';

  @override
  String get quranVerseHeartAtRest => 'እውነት በአላህ ማስታወስ ውስጥ ልቦች ዕረፍትን ያገኛሉ።';

  @override
  String get promptHint => 'ለእስልማዊ መመሪያ እና ምልከታ አንድ ምድብ ይንኩ';

  @override
  String get currentLanguage => 'አሁን ያለው ቋንቋ';

  @override
  String get settingsLanguage => 'የቋንቋ ቅንብሮች';

  @override
  String get settingsTitle => 'ቅንብሮች';

  @override
  String get chooseLanguage => 'ቋንቋዎን ይምረጡ';

  @override
  String get continueCta => 'ቀጥል';

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
  String get optionsCta => 'አማራጮች';

  @override
  String get newCta => 'አዲስ';

  @override
  String get actionsTitle => 'ምን ማድረግ ይፈልጋሉ?';

  @override
  String get copy => 'ገልብጥ';

  @override
  String get share => 'አጋራ';

  @override
  String get close => 'ዝጋ';

  @override
  String get copiedToast => 'ወደ ክሊፕቦርድ ተገልብጧል';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'አዲስ ምላሽ ማመንጨት አልተቻለም';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nእንደገና ለመሞከር ይፈልጋሉ?';
  }

  @override
  String get cancelCta => 'ሰርዝ';

  @override
  String get retryCta => 'እንደገና ሞክር';

  @override
  String get authTitle => 'መለያዎን ይፍጠሩ';

  @override
  String get continueAsGuest => 'እንደ እንግዳ ቀጥል';

  @override
  String get signInGoogle => 'በGoogle ግባ';

  @override
  String get signInApple => 'በApple ግባ';

  @override
  String get signInEmail => 'በኢሜይል ግባ';

  @override
  String get upgradeWithApple => 'በApple ቀጥል';

  @override
  String get mustAccept => 'የአገልግሎት ውሎችን መቀበል እና የግላዊነት ፖሊሲን መረዳት አለብዎት።';

  @override
  String get termsLabel => 'የአገልግሎት ውሎቹን እቀበላለሁ';

  @override
  String get privacyLabel => 'የግላዊነት ፖሊሲውን አንብቤዋለሁ';

  @override
  String get marketingOptIn => 'ዜናና ቅናሾች ለመቀበል እስማማለሁ';

  @override
  String get openTerms => 'የአገልግሎት ውሎች';

  @override
  String get openPrivacy => 'የግላዊነት ፖሊሲ';

  @override
  String get accountSection => 'መለያ';

  @override
  String get guestMode => 'የእንግዳ ሁኔታ';

  @override
  String get signedIn => 'ገብተዋል';

  @override
  String get upgradeHint => 'መለያ በመፍጠር ምልከታዎችዎን በተለያዩ መሣሪያዎች ላይ ያስቀምጡ።';

  @override
  String get upgradeWithGoogle => 'በGoogle ቀጥል';

  @override
  String get signOut => 'ውጣ';

  @override
  String get snackUpgraded => 'መለያው በGoogle ተሻሽሏል ✅';

  @override
  String get snackSignedIn => 'በGoogle ገብተዋል ✅';

  @override
  String get snackSignedOut => 'ወጥተዋል';

  @override
  String get snackSignedInApple => 'በApple ገብተዋል ✅';

  @override
  String get snackSignedInGoogle => 'በGoogle ገብተዋል ✅';

  @override
  String get snackUpgradedApple => 'መለያው በApple ተሻሽሏል ✅';

  @override
  String get snackUpgradedGoogle => 'መለያው በGoogle ተሻሽሏል ✅';

  @override
  String get historyTitle => 'ያለፉ ምልከታዎች';

  @override
  String get historyOpenCta => 'ያለፉ ምልከታዎች';

  @override
  String get historyEmpty => 'እስካሁን የተቀመጡ ምልከታዎች የሉም።';

  @override
  String get historyDeleteTitle => 'ምልከታው ይሰረዝ?';

  @override
  String get historyDeleteBody => 'ይህ የተመረጠውን ንጥል በቋሚነት ያስወግዳል።';

  @override
  String get deleteCta => 'ሰርዝ';

  @override
  String get historyButton => 'ያለፉ ምልከታዎች';

  @override
  String get historyEmptyTitle => 'እስካሁን ምልከታ የለም';

  @override
  String get historyEmptyBody => 'መጀመሪያ አንድ ነገር ያመንጩ — የተቀመጡ ንጥሎችዎ እዚህ ይታያሉ።';

  @override
  String get historyDelete => 'ሰርዝ';

  @override
  String get footerTitle => 'በWilaya፣ ኢማን እና ሰብር';

  @override
  String get footerSubtitle => 'አንድ ጸሎት በአንድ ጊዜ';

  @override
  String get genericErrorSnack => 'አንድ ችግር ተፈጥሯል — እባክዎ ከትንሽ ጊዜ በኋላ ደግመው ይሞክሩ።';

  @override
  String get upgradeAccountCta => 'ምልከታዎችዎን በተለያዩ መሣሪያዎች ላይ ያስቀምጡ – መለያ ይፍጠሩ';

  @override
  String get deleteAccount => 'መለያን ሰርዝ';

  @override
  String get exportData => 'ውሂቤን ወደ ውጭ አውጣ';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ቀስ ብለህ 🐯\nAyara ከሚቀጥለው በፊት አንድ ትንሽ ጊዜ ይፈልጋል…';

  @override
  String get rateDailyLimit =>
      'ለአሁን ምልከታዎችዎ አልቀዋል።\nተጨማሪ ምልከታዎች ያግኙ ወይም ወደ Wilaya ያሻሽሉ።';

  @override
  String get rateCreditsExhausted =>
      'ሁሉንም ምልከታዎችዎን ተጠቅመዋል።\nለመቀጠል ክሬዲት ይጨምሩ ወይም ወደ Wilaya ያሻሽሉ።';

  @override
  String get rateGraceCreditsExhausted =>
      'ለአሁን ምልከታዎችዎ አልቀዋል።\nተጨማሪ ምልከታዎች ያግኙ ወይም ወደ Wilaya ያሻሽሉ።';

  @override
  String get premiumDescription =>
      'Wilaya ፕሪሚየም ባህሪያትን፣ ወደፊት የሚመጡ ምድቦችን እና ልዩ ምልክትን ይከፍታል።';

  @override
  String ratePlanExhausted(String plan) {
    return 'ምልከታዎችዎ አሁን ባዶ ናቸው። እቅድ፦ $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ምልከታዎችዎን ማረጋገጥ አልተቻለም፦ $message';
  }

  @override
  String get rateCheckGenericError => 'ምልከታዎችዎን ሲያረጋግጥ አንድ ችግር ተፈጥሯል።';

  @override
  String get aiFallbackGeneric => 'አንድ ችግር ተፈጥሯል — እባክዎ ከትንሽ ጊዜ በኋላ ደግመው ይሞክሩ።';

  @override
  String get limitSectionTitle => 'ምልከታዎች';

  @override
  String get limitTodayLabel => 'አጠቃቀም';

  @override
  String limitCreditsLabel(Object credits) {
    return 'የቀሩ ምልከታዎች፦ $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'እቅድ፦ $plan';
  }

  @override
  String get limitLoadingLabel => 'በመጫን ላይ…';

  @override
  String get limitLoadingLabelDescription =>
      'የአጠቃቀም መረጃ ሲወሰድ በምልከታ ካርድ ላይ የሚታይ።';

  @override
  String get aiLimitTitle => 'ምልከታዎች';

  @override
  String get aiLimitSubtitle =>
      'እያንዳንዱ ምላሽ 1 ምልከታ ይጠቀማል። መደበኛ ጀማሪ ምልከታዎችን ያካትታል። Wilaya ፕሪሚየም ምድቦችን ይከፍታል እና ተጨማሪ መጨመርን ያስችላል።';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ምልከታዎች ተጠቅመዋል';
  }

  @override
  String get creditsSectionTitle => 'ምልከታዎች';

  @override
  String get creditsUsageLabel => 'አጠቃቀም';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'የቀሩ ምልከታዎች፦ $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'እቅድ፦ $plan';
  }

  @override
  String get creditsLoadingLabel => 'በመጫን ላይ…';

  @override
  String get creditsLoadingLabelDescription => 'የምልከታ መረጃ ሲጫን የሚታይ።';

  @override
  String get creditsTitle => 'ምልከታዎች';

  @override
  String get creditsSubtitle =>
      'እያንዳንዱ ምላሽ 1 ምልከታ ይጠቀማል። መደበኛ ጀማሪ ምልከታዎችን ያካትታል። Wilaya ፕሪሚየም ምድቦችን ይከፍታል እና ተጨማሪ መጨመርን ያስችላል።';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ምልከታዎች ተጠቅመዋል';
  }

  @override
  String get settingsDeleteTitle => 'መለያ ሰርዝ';

  @override
  String get settingsDeleteDescription => 'መለያዎን እና ሁሉንም ተያያዥ ውሂብ በቋሚነት ያጥፉ።';

  @override
  String get settingsDeleteButtonLabel => 'መለያዬን ሰርዝ';

  @override
  String get settingsDeleteDialogTitle => 'መለያ ይሰረዝ?';

  @override
  String get settingsDeleteDialogBody =>
      'ይህ እርምጃ ቋሚ ነው እና መመለስ አይቻልም።\n\nሁሉም ውይይቶችዎ፣ ታሪክዎ እና የመለያ መረጃዎ ይሰረዛሉ።';

  @override
  String get settingsDeleteDialogCancel => 'ሰርዝ';

  @override
  String get settingsDeleteDialogConfirm => 'ሰርዝ';

  @override
  String get settingsFreeLimitUsedTitle => 'የጀማሪ ምልከታዎች ተጠቅመዋል';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ለዚህ መሣሪያ ያሉ የጀማሪ ምልከታዎች ተጠቅመዋል። ለመቀጠል ወደ Wilaya ያሻሽሉ ወይም ተጨማሪ ምልከታዎችን ይግዙ።';

  @override
  String get settingsStarterCreditsUsedTitle => 'የጀማሪ ምልከታዎች ተጠቅመዋል';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ለዚህ መሣሪያ ያሉ የጀማሪ ምልከታዎች ተጠቅመዋል። ለመቀጠል ወደ Wilaya ያሻሽሉ ወይም ተጨማሪ ምልከታዎችን ይግዙ።';

  @override
  String get deviceBoundError =>
      'ይህ መሣሪያ ከሌላ መለያ ጋር አስቀድሞ ተያይዟል። እባክዎ በመጀመሪያው መለያ ይግቡ።';

  @override
  String get premiumTitle => 'የWilaya ሁኔታ';

  @override
  String get premiumSubtitleBasic => 'ሙሉውን የAyara ተሞክሮ ይክፈቱ።';

  @override
  String get premiumSubtitlePremium => 'በWilaya ላይ ነዎት። ተጨማሪ ምልከታዎች ይፈልጋሉ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'አሁን ያለው እቅድ፦ $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'ምልከታዎች፦ $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'ግዢዎች አሁን አይገኙም።';

  @override
  String get premiumSignInToPurchase => 'ምልከታዎችን ለመግዛት ወይም Wilaya ለመክፈት ይግቡ።';

  @override
  String get premiumRestorePurchases => 'ግዢዎችን መልስ';

  @override
  String get premiumProcessing => 'በሂደት ላይ…';

  @override
  String get premiumRestoreHintTitle =>
      'Wilaya ወይም ምልከታዎችን በዚህ ወይም በሌላ መሣሪያ ላይ አስቀድሞ ገዝተዋል?';

  @override
  String get premiumRestoreHintBody => 'ካልታዩ ግዢዎችዎን ይመልሱ።';

  @override
  String get premiumBuyCredits200 => '200 ምልከታዎች ይግዙ';

  @override
  String get premiumBuyCredits400 => '400 ምልከታዎች ይግዙ';

  @override
  String get premiumBecomePremiumOneTime => 'ወደ Wilaya ሁኔታ ያሻሽሉ';

  @override
  String get premiumTopupHint => 'በWilaya ከፈለጉት ጊዜ ተጨማሪ ምልከታዎችን መጨመር ይችላሉ።';

  @override
  String get premiumUpgradeCta => 'አሻሽል';

  @override
  String get premiumRequiredForCategory =>
      'ይህ ምድብ ለWilaya ተጠቃሚዎች ብቻ ይገኛል። ሁሉንም ፕሪሚየም ይዘት ለመክፈት በቅንብሮች ውስጥ ያሻሽሉ።';

  @override
  String get premiumBenefitsBasic =>
      'ተጨማሪ ምልከታዎችን ለማግኘት፣ ፕሪሚየም ምድቦችን ለመድረስ እና መመሪያ ሲፈልጉ ለመቀጠል Wilaya ይክፈቱ።';

  @override
  String get premiumBenefitsPremium =>
      'በWilaya ሁኔታ ውስጥ ነዎት። እየቀነሱ ከሆነ፣ ተጨማሪ ምልከታዎችን ያክሉ እና ያለ መቋረጥ ይቀጥሉ።';

  @override
  String get premiumButtonBecomePremium => 'Wilayaን ክፈት';

  @override
  String get premiumButtonTopup1000 => '1000 ምልከታዎች ጨምር';

  @override
  String get premiumBadge => 'Wilaya ንቁ ነው';

  @override
  String get premiumLoadingStore => 'መደብሩ በመጫን ላይ…';

  @override
  String get premiumProductNotAvailable =>
      'ይህ ምርት ገና በመደብሩ ውስጥ አይገኝም። እባክዎ በኋላ ደግመው ይሞክሩ።';

  @override
  String get premiumPurchaseError => 'በግዢው ሂደት አንድ ችግር ተፈጥሯል። እባክዎ እንደገና ይሞክሩ።';

  @override
  String get premiumBuyCredits100 => '100 ምልከታዎች ጨምር';

  @override
  String get premiumFeatureLocked => 'ይህን ባህሪ ለመጠቀም Wilayaን ይክፈቱ።';

  @override
  String get lockedCategoriesHint =>
      'አንዳንድ ምድቦች ለWilaya አባላት ብቻ የተያዙ ናቸው። በጉዞዎ ላይ ያሉ ሁሉንም ምልከታዎች ለማሰስ እነሱን ይክፈቱ።';

  @override
  String get freePlanBlockedTitle => 'የጀማሪ ምልከታዎችዎን በሙሉ ተጠቅመዋል';

  @override
  String get freePlanBlockedBody =>
      'በመደበኛ እቅድ ላይ በጀማሪ ምልከታዎች ነዎት፣ እና ወሰኑን ደርሰዋል። ለመቀጠል — እና ፕሪሚየም ምድቦችን ለመክፈት — ወደ Wilaya ያሻሽሉ።';

  @override
  String get freePlanBlockedCtaGoPremium => 'ከታች ያሉትን የWilaya አማራጮች ይመልከቱ';

  @override
  String get graceBlockedTitle => 'የጀማሪ ምልከታዎችዎን በሙሉ ተጠቅመዋል';

  @override
  String get graceBlockedBody =>
      'በመደበኛ እቅድ ላይ በጀማሪ ምልከታዎች ነዎት፣ እና ወሰኑን ደርሰዋል። ለመቀጠል — እና ፕሪሚየም ምድቦችን ለመክፈት — ወደ Wilaya ያሻሽሉ።';

  @override
  String get graceBlockedCtaGoPremium => 'ከታች ያሉትን የWilaya አማራጮች ይመልከቱ';

  @override
  String get rateGuestMustSignIn => 'Ayaraን እና ምልከታዎችዎን ለመጠቀም ይግቡ።';

  @override
  String get guestNoCreditsTitle => 'የእንግዳ ሁኔታ';

  @override
  String get guestNoCreditsBody =>
      'እንደ እንግዳ መተግበሪያውን ማሰስ ይችላሉ፣ ግን ምልከታዎችን መጠቀም አይችሉም። ምልከታዎችን ለመጠቀም እና ግዢዎችን ለመክፈት በኋላ በቅንብሮች ውስጥ ይግቡ።';

  @override
  String get guestDialogContinue => 'ቀጥል';

  @override
  String get guestDialogLoginInstead => 'በምትኩ ግባ';

  @override
  String get optionalLabel => 'አማራጭ';

  @override
  String get accountDeleteSuccessTitle => 'መለያው ተሰርዟል';

  @override
  String get accountDeleteSuccessBody => 'መለያዎ እና ተያያዥ ውሂቦች በተሳካ ሁኔታ ተሰርዘዋል።';

  @override
  String get accountDeleteSuccessClose => 'ዝጋ';

  @override
  String get accountDeleteErrorTitle => 'መለያውን መሰረዝ አልተቻለም';

  @override
  String get accountDeleteErrorClose => 'እሺ';

  @override
  String get accountDeleteReauthCancelled =>
      'እንደገና ማረጋገጥ ተሰርዟል። እባክዎ እንደገና ይግቡ እና መሰረዙን ደግመው ይሞክሩ።';

  @override
  String get accountDeleteReauthRequired =>
      'መለያ መሰረዝ ቅርብ ጊዜ የተደረገ መግቢያ ይፈልጋል። እባክዎ ይውጡ፣ እንደገና ይግቡ እና እንደገና ይሞክሩ።';

  @override
  String get settingsDeletePermanentWarning =>
      'ይህ እርምጃ ቋሚ ነው እና መመለስ አይቻልም። ከመለያዎ ጋር የተያያዙ ሁሉም ውሂቦች ይሰረዛሉ።';

  @override
  String get dailyGraceTitle => 'የዕለት መመሪያ';

  @override
  String get dailyGraceScriptureLabel => 'የቀኑ አያ';

  @override
  String get dailyGraceSaintLabel => 'የሳምንቱ ዓሊም';

  @override
  String get dailyGraceReflectionLabel => 'የምሽት ምልከታ';

  @override
  String get dailyGraceCopiedToast => 'አያው ወደ ክሊፕቦርድ ተገልብጧል';

  @override
  String get locationConsentLabel =>
      'Ayara ለቂብላ አቅጣጫ እና የሶላት ሰዓቶች አካባቢዬን እንዲጠቀም ፍቀድ';

  @override
  String get locationConsentHint =>
      'ለእነዚህ ባህሪያት ብቻ ይጠቀማል። አካባቢዎ አይጋራም እና አይቀመጥም።';

  @override
  String get askPageTitle => 'Ayaraን ጠይቅ';

  @override
  String get askPageDescription =>
      'ስለ እምነት፣ ሶላት፣ ሕይወት ወይም እስልማዊ አሠራር ማንኛውንም ጥያቄ ጠይቅ እና ከቁርአንና ከAhl al-Bayt ትምህርቶች የተመሠረተ መመሪያ ተቀበል።';

  @override
  String get askPageInputHint => 'ጥያቄዎን እዚህ ይጻፉ…';

  @override
  String get askPageSubmitCta => 'ጠይቅ';

  @override
  String get askPageInputEmptyError => 'እባክዎ መጀመሪያ ጥያቄ ይጻፉ።';

  @override
  String get askResultYourQuestion => 'ጥያቄዎ';

  @override
  String get guidancePageTitle => 'ቂብላ';

  @override
  String get qiblaFacingMecca => 'ወደ መካ የተቃኘ';

  @override
  String get qiblaCompassInstruction =>
      'የወርቅ መርፌው ወደ ላይ እስኪያመለክት ድረስ ስልክዎን ያዙሩ።\nያ አቅጣጫ ወደ ቂብላ (መካ) ይወስዳል።';

  @override
  String get qiblaGpsUnavailableBody =>
      'የGPS ምልክት ደካማ ነው። ወደ ውጭ ይሂዱ እና እንደገና ሞክር ይንኩ።';

  @override
  String get qiblaRetry => 'እንደገና ሞክር';

  @override
  String get qiblaTitle => 'የቂብላ አቅጣጫ';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km ኪ.ሜ ወደ መካ';
  }

  @override
  String get qiblaLocationNeededTitle => 'አካባቢ ያስፈልጋል';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara ከየትኛውም ቦታ ወደ መካ ያለውን የካዕባ አቅጣጫ ለማስላት የአካባቢ ፍቃድ ይስጡ።';

  @override
  String get qiblaOpenSettings => 'ቅንብሮችን ክፈት';

  @override
  String get qiblaCompassLoading => 'አቀማመጥዎን በመፈለግ ላይ…';

  @override
  String get qiblaTowardMecca => 'ወደ መካ';

  @override
  String get prayerTimesTitle => 'የሶላት ሰዓቶች';

  @override
  String get prayerTimesFajr => 'ፈጅር';

  @override
  String get prayerTimesDhuhr => 'ዙህር';

  @override
  String get prayerTimesAsr => 'አስር';

  @override
  String get prayerTimesMaghrib => 'መግሪብ';

  @override
  String get prayerTimesIsha => 'ዒሻ';

  @override
  String get prayerTimesLocationNeededTitle => 'አካባቢ ያስፈልጋል';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara ለከተማዎ ትክክለኛ የሶላት ሰዓቶችን ለማስላት የአካባቢ ፍቃድ ይስጡ።';

  @override
  String get prayerTimesNextLabel => 'ቀጣይ';

  @override
  String get prayerTimesDoneLabel => 'ተጠናቋል';

  @override
  String get monthlyPrayerTimesTitle => 'ወርሃዊ የሶላት ሰዓቶች';

  @override
  String get monthlyPrayerTimesViewButton => 'ሙሉ ወሩን ተመልከት';

  @override
  String get monthlyPrayerTimesNextMonth => 'ቀጣዩ ወር';

  @override
  String get monthlyPrayerTimesDayHeader => 'ቀን';

  @override
  String get sharePrayerTimes => 'የሶላት ሰዓቶችን አጋራ';

  @override
  String get notificationsSectionTitle => 'ማሳወቂያዎች';

  @override
  String get notificationsSectionSubtitle =>
      'የሶላት አስታዋሾች፣ የቀን መቁጠሪያ ክስተቶች እና ሌሎችም';

  @override
  String get dailyReflectionReminderTitle => 'የዕለት ምልከታ';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayaraን ለመክፈት እና ከእምነትዎ ጋር ለመገናኘት ለስላሳ የዕለት አስታዋሽ።';

  @override
  String get dailyReflectionReminderEnable => 'የዕለት አስታዋሽን አንቃ';

  @override
  String get dailyReflectionReminderTimeLabel => 'የአስታዋሽ ሰዓት';

  @override
  String get prayerNotificationsTitle => 'የሶላት አስታዋሾች';

  @override
  String get prayerNotificationsDescription =>
      'ቀኑን ሙሉ እንዲገናኙ ከእያንዳንዱ የሶላት ሰዓት በፊት ለስላሳ አስታዋሽ ይቀበሉ።';

  @override
  String get prayerNotificationsEnable => 'የሶላት አስታዋሾችን አንቃ';

  @override
  String get prayerNotificationsOpenSettings => 'የማሳወቂያ ቅንብሮችን ክፈት';

  @override
  String get prayerNotificationsDenied => 'ማሳወቂያዎች ተሰናክለዋል';

  @override
  String get prayerNotificationsDeniedHint =>
      'ወደ ቅንብሮች ሂዱ እና የሶላት ሰዓት አስታዋሾችን ለመቀበል ለAyara ማሳወቂያዎችን ይፍቀዱ።';

  @override
  String get notificationsConsentLabel => 'ለሶላት ሰዓቶች ማሳወቂያዎችን ፍቀድ';

  @override
  String get prayerNotifTitleFajr => '🌅 ፈጅር — የንጋት ሶላት';

  @override
  String get prayerNotifBodyFajr =>
      'ፈጅር የAhl al-Bayt የጠዋት ሶላት ነው። ኢማም አሊ (AS) እንዲህ አሉ፦ የንጋት ሶላትን እንደ እጅግ ውድ አደራህ ጠብቀው። ተነሳ፣ ንጹሕ ሁን፣ ከአላህ ፊት ቁም።';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ዙህር — የቀትር ሶላት';

  @override
  String get prayerNotifBodyDhuhr =>
      'የAhl al-Bayt ኢማሞች እያንዳንዱን የዝክር ጊዜ ይከብሩ ነበር። ቀንዎን ለአፍታ አቁሙ፣ ካስፈለገ ዙህርን ከአስር ጋር ያዋህዱ፣ ልብዎንም ወደ አላህ ይመልሱ።';

  @override
  String get prayerNotifTitleAsr => '🌤️ አስር — የከሰዓት በኋላ ሶላት';

  @override
  String get prayerNotifBodyAsr =>
      'ሶላቱን ጠብቁ፣ ምክንያቱም እሱ በእናንተና በአላህ መካከል ያለ ቃል ኪዳን ነው። የአስር ሰዓት ደርሷል — ያለ ዝክር እንዳያልፍ።';

  @override
  String get prayerNotifTitleMaghrib => '🌇 መግሪብ — የፀሐይ መጥለቂያ ሶላት';

  @override
  String get prayerNotifBodyMaghrib =>
      'ፀሐይ ጠልቃለች — Ahl al-Bayt ለዱዓ የተቀደሰ ብለው ያዩት ጊዜ። መግሪብን ስገድ እና ሌሊቱ ከመጀመሩ በፊት እጆችህን ወደ አላህ በዱዓ አንሳ።';

  @override
  String get prayerNotifTitleIsha => '🌙 ዒሻ — የሌሊት ሶላት';

  @override
  String get prayerNotifBodyIsha =>
      'ቀንዎን በአላህ ጓደኝነት ያጠናቁ። ኢማሞቹ ከዒሻ በኋላ ሶላት አል-ሌይልን አበረታቱ — ነገር ግን በፊት ዒሻዎን ያጠናቁ እና ቀኑን በእርሱ ዝክር ይዝጉ።';

  @override
  String get outOfReflectionsBannerText => 'ሁሉንም ምልከታዎችዎን ተጠቅመዋል';

  @override
  String get outOfReflectionsBannerCta => 'ተጨማሪ አግኝ';

  @override
  String get dhikrPageTitle => 'ዝክር';

  @override
  String get dhikrTapToCount => 'ለመቁጠር ክብን ይንኩ';

  @override
  String get dhikrResetButton => 'ዳግም አስጀምር';

  @override
  String get dhikrComplete => 'ማሻአላህ';

  @override
  String get dhikrCompleteMessage => '100 የአላህ ዝክሮችን አጠናቀዋል። ለልብዎ ብርሃን ይሁኑልዎ።';

  @override
  String get disclaimerTitle => 'ስለዚህ መተግበሪያ መመሪያ';

  @override
  String get disclaimerBody =>
      'Ayara በቁርአን እና በAhl al-Bayt ትምህርቶች ላይ የተመሠረተ የእስልምና ምልከታዎችን፣ አስታዋሾችን እና መንፈሳዊ ይዘትን ለግል የእምነት ጉዞዎ ድጋፍ ያቀርባል። ይህ ይዘት ለአጠቃላይ መረጃና መነሳሳት ዓላማ ብቻ ይቀርባል።\n\nAyara ብቃት ያለውን የእውቀት መምህር አይተካም።\nበዚህ መተግበሪያ ያለው መመሪያ የተማረ የእስልምና ምሁር፣ ማርጃዕ ወይም በሥነ መለኮት የሰለጠነ መምህር ምትክ አይደለም። በሺዓ እስልምና ውስጥ የሃይማኖት መመሪያ በጃዕፋሪ የፍትሕ ትምህርት ቤት (ፊቅህ) እና ሕያው ማርጃዕን (የተከታይነት ምንጭ) የመከተል ባህል ላይ የተመሠረተ ነው — ይህም በሃይማኖታዊ አሠራር ላይ አማኞችን የሚመራ ብቃት ያለው የሕግ ባለሙያ ነው። ስለ ሃይማኖታዊ ውሳኔዎች፣ ሐላልና ሐራም ጉዳዮች ወይም ስለ ግል ሃይማኖታዊ ግዴታዎች ጥያቄ ካለዎት፣ እባክዎ ብቃት ያለውን ማርጃዕ ወይም በማህበረሰብዎ ውስጥ ያለ ምሁር ያነጋግሩ።\n\nይህ መተግበሪያ ሃይማኖታዊ ውሳኔዎችን አይሰጥም።\nAyara በፊቅህ ወይም በግል ሃይማኖታዊ ግዴታዎች ላይ የሥልጣን ውሳኔ አያደርግም። እዚህ ያለ ምንም ነገር እንደ ፈትዋ ወይም እንደ አስገዳጅ ሃይማኖታዊ መመሪያ ሊቆጠር አይገባም።\n\nየAhl al-Bayt ማዕከላዊነት።\nበሺዓ እስልምና ውስጥ ነቢዩ ሙሐመድ ﷺ እና ንጹሐን ቤተሰቦቻቸው — Ahl al-Bayt — ከቁርአን በኋላ የእስልምና ማህበረሰብ ሥልጣናዊ መሪዎች ናቸው። የAhl al-Bayt አሥራ ሁለቱ ኢማሞች በእግዚአብሔር የተሾሙ የእስልምና ትምህርት ተርጓሚዎች ናቸው። በዚህ መተግበሪያ ውስጥ ያለው ይዘት ይህን ባህል ያንጸባርቃል እና በታማኝነት ለማክበር ይሞክራል።\n\nየማህበረሰብ ጉዳዮች።\nይህ መተግበሪያ ከእምነትዎ ጋር ያለዎትን ተሳትፎ ለማበረታታት ይፈልጋል፣ በተመሳሳይ ጊዜ የአካባቢዎን መስጊድ፣ የእስልምና ማዕከል እና የሃይማኖት ማህበረሰብ ጠቃሚ ሚና በእጅጉ ያከብራል። በአቅራቢያዎ ካሉ ብቃት ያላቸው መምህራን ጋር ተገናኝተው እንዲቆዩ እና እንዲማሩ እናበረታታዎታለን።';

  @override
  String get disclaimerClose => 'ገብቶኛል';

  @override
  String get disclaimerInfoTooltip => 'ስለዚህ መተግበሪያ መመሪያ';

  @override
  String get disclaimerSettingsSubtitle =>
      'ለአጠቃላይ መረጃ ዓላማ ብቻ። ሙሉ ማስጠንቀቂያውን ለማንበብ ይንኩ።';

  @override
  String get disclaimerSectionHeader => 'የመመሪያ ማስጠንቀቂያ';

  @override
  String get navHome => 'መነሻ';

  @override
  String get navReflect => 'አስብ';

  @override
  String get navDuas => 'ዱዓዎች';

  @override
  String get navCalendar => 'የቀን መቁጠሪያ';

  @override
  String get dashboardToday => 'ዛሬ';

  @override
  String get dashboardComingUp => 'የሚቀጥለው';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ቀናት',
      one: 'ቀን',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'ፈጣን መዳረሻ';

  @override
  String get quickActionQibla => 'ቂብላ';

  @override
  String get quickActionDhikr => 'ዝክር';

  @override
  String get quickActionDailyGrace => 'መመሪያ';

  @override
  String get quickActionPrayerTimes => 'የሶላት ሰዓቶች';

  @override
  String get askAyaraTitle => 'Ayaraን ጠይቅ';

  @override
  String get askAyaraSubtitle =>
      'ማንኛውንም እስልማዊ ጥያቄ ጠይቅ እና አስተዋይ እና የሚመራ ምላሽ ተቀበል።';

  @override
  String get askAyaraHint => 'ለምሳሌ፦ የረመዳን አስፈላጊነት ምንድነው?';

  @override
  String get askAyaraSubmit => 'ጠይቅ';

  @override
  String get wisdomOfTheDayTitle => 'የቀኑ ጥበብ';

  @override
  String get calendarScreenTitle => 'እስልማዊ የቀን መቁጠሪያ';

  @override
  String get calendarUpcomingOccasions => 'የሚመጡ አጋጣሚዎች';

  @override
  String get calendarOccasionRemindersTitle => 'የአጋጣሚ አስታዋሾች';

  @override
  String get calendarOccasionRemindersHint => 'ከእያንዳንዱ አጋጣሚ በፊት ባለው ምሽት ይታወቃሉ';

  @override
  String get calendarNotifPermissionDenied =>
      'የማሳወቂያ ፍቃድ ተከልክሏል። በመሣሪያዎ ቅንብሮች ውስጥ ያንቁት።';

  @override
  String get calendarNoEvents => 'ምንም የሚመጡ ክስተቶች አልተገኙም።';

  @override
  String get calendarAddToPhone => 'ወደ ስልክ ካሌንደር ያክሉ';

  @override
  String get calendarAddedToPhone => 'ወደ ካሌንደር ተጨምሯል';

  @override
  String get calendarCountdownToday => 'ዛሬ';

  @override
  String get calendarCountdownTomorrow => 'ነገ';

  @override
  String calendarCountdownDays(int days) {
    return 'በ$days ቀናት ውስጥ';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'ጃን';

  @override
  String get calendarMonthFeb => 'ፌብ';

  @override
  String get calendarMonthMar => 'ማር';

  @override
  String get calendarMonthApr => 'ኤፕ';

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
  String get calendarSeasonMuharramEarly => 'የሙሐረም ቀናት — ከርበላን አስታውስ';

  @override
  String get calendarSeasonAshura => 'አሹራ — ያ ሑሰይን (AS)';

  @override
  String get calendarSeasonMuharramLate => 'ሙሐረም — የሐዘን እና ምልከታ ቀናት';

  @override
  String get calendarSeasonArbaeen => 'አርባኢን — የሑሰይን አርባ ቀናት';

  @override
  String get calendarSeasonRoadToArbaeen => 'ወደ አርባኢን የሚወስደው መንገድ';

  @override
  String get calendarSeasonMabath => 'መብዓት ሙባረክ — የወህይ ንጋት';

  @override
  String get calendarSeasonMidShaban => 'የሻዕባን መካከል — የኢማም አል-መህዲ (AJ) የልደት ቀን';

  @override
  String get calendarSeasonRamadan => 'ረመዳን ሙባረክ — የቁርአን ወር';

  @override
  String get calendarSeasonGhadir => 'ዒድ አል-ገዲር ሙባረክ!';

  @override
  String get hijriMonth1 => 'ሙሐረም';

  @override
  String get hijriMonth2 => 'ሰፈር';

  @override
  String get hijriMonth3 => 'ረቢዕ አል-አወል';

  @override
  String get hijriMonth4 => 'ረቢዕ አል-ታኒ';

  @override
  String get hijriMonth5 => 'ጁማዳ አል-አወል';

  @override
  String get hijriMonth6 => 'ጁማዳ አል-ታኒ';

  @override
  String get hijriMonth7 => 'ረጀብ';

  @override
  String get hijriMonth8 => 'ሻዕባን';

  @override
  String get hijriMonth9 => 'ረመዳን';

  @override
  String get hijriMonth10 => 'ሸዋል';

  @override
  String get hijriMonth11 => 'ዙል ቂዳ';

  @override
  String get hijriMonth12 => 'ዙል ሂጃ';

  @override
  String get duasScreenTitle => 'ዱዓዎች እና ዚያራት';

  @override
  String get duasSearchHint => 'ዱዓዎችን፣ ዚያራትን ፈልግ…';

  @override
  String get duasFilterAll => 'ሁሉም';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ዱዓዎች እና ዚያራት',
      one: '$count ዱዓ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'ምንም ዱዓዎች አልተገኙም።';

  @override
  String get duaCategoryDaily => 'ዕለታዊ';

  @override
  String get duaCategoryWeekly => 'ሳምንታዊ';

  @override
  String get duaCategoryOccasions => 'አጋጣሚዎች';

  @override
  String get duaCategoryZiyarat => 'ዚያራት';

  @override
  String get duaCategoryTasbih => 'ተስቢሕ';

  @override
  String get eventTypeBirth => 'ልደት';

  @override
  String get eventTypeMartyrdom => 'ሰማዕትነት';

  @override
  String get eventTypeOccasion => 'አጋጣሚ';

  @override
  String get duaCopyTooltip => 'ትርጉም ገልብጥ';

  @override
  String get duaToggleTransliteration => 'የድምፅ ጽሑፍ';

  @override
  String get duaToggleTranslation => 'ትርጉም';

  @override
  String get duaAskAiLabel => 'Ayara ይህን ዱዓ እንዲያብራራ ጠይቅ';

  @override
  String get duaAskAiLockedLabel => 'Ayaraን ጠይቅ (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'የAyara ማብራሪያዎች ለWilaya አባላት ብቻ ይገኛሉ። በቅንብሮች ውስጥ ያሻሽሉ።';

  @override
  String duaAiComingSoon(String name) {
    return 'Ayaraን ስለ \"$name\" ጠይቅ — በቅርቡ ይመጣል!';
  }

  @override
  String get duaCopiedToast => 'ዱዓ ወደ ቅንጥብ ሰሌዳ ተቀድቷል።';

  @override
  String get tasbihAllahuAkbarMeaning => 'አላህ ከሁሉ በላይ ታላቅ ነው';

  @override
  String get tasbihAlhamdulillahMeaning => 'ሁሉም ምስጋና ለአላህ ነው';

  @override
  String get tasbihSubhanallahMeaning => 'ክብር ለአላህ ይሁን';

  @override
  String get tasbihResetTooltip => 'ዳግም አስጀምር';

  @override
  String get tasbihCompleteTitle => 'ተስቢሕ ተጠናቋል';

  @override
  String get tasbihCompleteMessage => 'አላህ ዝክርህን ይቀበል።';

  @override
  String get tasbihTapHint => 'ለመቁጠር በማንኛውም ቦታ ይንኩ';

  @override
  String get tasbihatScreenTitle => 'የሶላት መመሪያ';

  @override
  String get tasbihatScreenSubtitle => 'የሶላት ምስጋናዎች';

  @override
  String get tasbihatScreenDescription =>
      'በየቀኑ ሶላት ጊዜና ከሶላት በኋላ የሚነበቡ ምስጋናዎችን የሚያብራራ ሙሉ መመሪያ — የአህል አል-በይት (ዐ) ባህልን በመከተል።';

  @override
  String get tasbihatArba3Title => 'ተስቢሓት አል-አርባዓ';

  @override
  String get tasbihatArba3Subtitle => 'በ3ኛና 4ኛ ረከዓ የሚነበብ';

  @override
  String get tasbihatArba3Info =>
      'በሺዓ ፍቅህ መሠረት ተስቢሓት አል-አርባዓ በዙህር፣ አስር፣ መግሪብ እና ኢሻ ሶላት 3ኛና 4ኛ ረከዓ ውስጥ ሱረቱል ፋቲሓን ይተካል። አንድ ጊዜ ማንበቡ ግዴታ (ዋጅብ) ሲሆን ሶስት ጊዜ ማንበቡ የሚመከር (ሙስተሐብ) ነው።';

  @override
  String get tasbihatArba3Translation =>
      'ክብር ለአላህ ይሁን · ምስጋና ሁሉ ለአላህ ነው\nከአላህ በቀር አምላክ የለም · አላህ ከሁሉ በላይ ታላቅ ነው';

  @override
  String get tasbihatArba3CompleteTitle => 'ንባቡ ተጠናቋል';

  @override
  String get tasbihatArba3CompleteMessage => 'ሶላትህ ተቀባይነት ያግኝ — አሚን';

  @override
  String get tasbihatArba3TapHint => 'ከእያንዳንዱ ንባብ በኋላ ይንኩ';

  @override
  String get tasbihatZahraSubtitle => 'ከእያንዳንዱ ሶላት በኋላ · 100 ፍሬዎች';

  @override
  String get tasbihatZahraOriginLabel => 'ምንጭ';

  @override
  String get tasbihatZahraHadith =>
      'ሰይዲቲ ፋጢማ አል-ዛህራ (ሰ.ዐ) ነቢዩን ﷺ አገልጋይ ጠየቀች። እርሱም፦ \"ከዚህ የተሻለ ነገር ልመራሽ አልሆንምን? ከእያንዳንዱ ሶላት በኋላ ሱብሓንአላህ 33 ጊዜ፣ አልሐምዱሊላህ 33 ጊዜ፣ አላሁ አክበር 34 ጊዜ አንብቢ። ይህ ከአገልጋይ ይልቅ ይሻልሻል።\" አለ።';

  @override
  String get tasbihatZahraHadithSource => '— ቢሓር አል-አንዋር፣ ቅጽ 85';

  @override
  String get tasbihatZahraOpenCounter => 'የተስቢሕ መቁጠሪያ ክፈት';

  @override
  String get tasbihatDuasTitle => 'የሚመከሩ ዱዓዎች';

  @override
  String get tasbihatDuasSubtitle => 'ሶላትህን ከጨረስክ በኋላ';

  @override
  String get tasbihatDuaAyatKursiTitle => 'አያቱል ኩርሲ';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ከእያንዳንዱ ግዴታ ሶላት በኋላ';

  @override
  String get tasbihatDuaAyatKursiSource => 'ሱረቱል በቀራ 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ከእያንዳንዱ ግዴታ ሶላት በኋላ አያቱል ኩርሲን የሚያነብ፣ ከጀነት የሚለየው ከሞት በቀር ምንም የለም። ኢማም አል-ባቂር (ዐ) ይህ በቁርአን ውስጥ ካሉ እጅግ ታላላቅ አንቀጾች መካከል ነው ብለዋል።';

  @override
  String get tasbihatDuaSalawatTitle => 'ሰላዋት';

  @override
  String get tasbihatDuaSalawatWhen => 'ከእያንዳንዱ ሶላት በኋላ · ሁሉንም ዱዓዎች ያሳርፋል';

  @override
  String get tasbihatDuaSalawatSource => 'ኢማም አል-ሳዲቅ (ዐ) — አል-ካፊ';

  @override
  String get tasbihatDuaSalawatNote =>
      'በነቢዩ ﷺ እና በንጹህ ቤተሰባቸው (አል ሙሐመድ) ላይ ሰላምና በረከት መላክ እያንዳንዱን ዱዓ ለማሳረፍ ይመከራል። ኢማም አል-ሳዲቅ (ዐ)፦ \"በሙሐመድና በቤተሰባቸው ላይ ሰላዋት እስክትልክ ድረስ ማንኛውም ዱዓ ተቆልፎ ይቆያል።\" ብለዋል።';

  @override
  String get tasbihatDuaFarajTitle => 'ዱዓኡል ፈረጅ';

  @override
  String get tasbihatDuaFarajWhen => 'ከእያንዳንዱ ሶላት በኋላ · ለዘመናችን ኢማም';

  @override
  String get tasbihatDuaFarajSource => 'በኢማም አል-ሐሰን አል-አስከሪ (ዐ) የተማረ';

  @override
  String get tasbihatDuaFarajNote =>
      'ለ12ኛው ኢማም ኢማም አል-መህዲ (ዐፈ) ዳግም መገለጥ የሚደረግ ዱዓ ነው፣ በአባቱ የተማረ። ሕያው ኢማሙን ለመውደድና ለመታዘዝ ምልክት ሆኖ በታማኝ ሺዓዎች ከእያንዳንዱ ሶላት በኋላ በየቀኑ ይነበባል።';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'የሰይዲቲ ፋጢማ ተስቢሕ';

  @override
  String get tasbihatDuaTasbihFatimaWhen => 'ከመግሪብ እና ኢሻ በኋላ · በተለይ የሚመከር';

  @override
  String get tasbihatDuaTasbihFatimaSource => 'ኢማም አል-ባቂር (ዐ) — ቢሓር አል-አንዋር';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ኢማም አል-ባቂር (ዐ) እንደተናገሩት፣ ከኢሻ በኋላ ከመተኛት በፊት ተስቢሕ አል-ዛህራን ማንበብ ከ1000 ረከዓ ነፍል ሶላት ይበልጣል። ብርሃኑም ወደ ሰማያት ይወጣል።';

  @override
  String get tasbihFatimaGiftPre => 'ከነቢዩ የተሰጠ ስጦታ';

  @override
  String get tasbihFatimaGiftPost => 'ከእያንዳንዱ ሶላት በኋላ የሚነበብ';

  @override
  String get prayerTrackerTitle => 'የሶላት መከታተያ';

  @override
  String get prayerTrackerPrayed => 'ተሰግዷል';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ቀን ተከታታይ';
  }

  @override
  String get prayerTrackerAllComplete => 'የዛሬ ሶላቶች ሁሉ ተጠናቀዋል። አላህ ይቀበል።';

  @override
  String get dhikrTrackerTitle => 'ተስቢሕ አል-ዛህራ';

  @override
  String get dhikrTrackerCompletedToday => 'ዛሬ ተጠናቋል';

  @override
  String get dhikrTrackerNotDoneToday => 'ዛሬ አልተደረገም';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ቀን ተከታታይ';
  }

  @override
  String get dhikrReminderTitle => 'የተስቢሕ አስታዋሽ';

  @override
  String get dhikrReminderDescription =>
      'ተስቢሕ አል-ዛህራ (ሰ.ዐ) እንድታነብ የሚያስታውስ ለስላሳ የዕለት ተዕለት አስታዋሽ።';

  @override
  String get dhikrReminderEnable => 'የተስቢሕ አስታዋሽን አንቃ';

  @override
  String get dhikrReminderTimeLabel => 'የአስታዋሽ ሰዓት';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'የዕለቱ ሐዲስ';

  @override
  String get hadithLabelArabic => 'ዐረብኛ';

  @override
  String get hadithLabelTranslation => 'ትርጉም';

  @override
  String get hadithBadge => 'ሐዲስ';

  @override
  String get hadithShare => 'ይህን ሐዲስ አጋራ';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nበAyara';
  }

  @override
  String get hadithNavPrevious => 'ቀዳሚ';

  @override
  String get hadithNavNext => 'ቀጣይ';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14ቱ ማዕሱሚን';

  @override
  String get imamsScreenSubtitle =>
      'ነቢዩ፣ ሰይዲቲ ፋጢማ እና አስራ ሁለቱ ኢማሞች — የእስልምና የስህተት ነፃ መሪዎች';

  @override
  String get imamLabelBorn => 'የተወለደበት';

  @override
  String get imamLabelMartyrdom => 'ሸሂድነት';

  @override
  String get imamLabelStatus => 'ሁኔታ';

  @override
  String get imamSectionBiography => 'የሕይወት ታሪክ';

  @override
  String get imamSectionFamousSaying => 'የታወቀ ንግግር';

  @override
  String get imamRoleProphet => 'የመጨረሻው ነቢይ';

  @override
  String get imamRoleInfallible => 'ከስህተት የጸዳ';

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
  String get duaAudioScreenTitle => 'ዱዓዎችን አዳምጥ';

  @override
  String get duaAudioScreenSubtitle =>
      'ለማዳመጥ አንድ ዱዓ ምረጥ። ለመጫወት ወይም ለማቆም ካርዱን ንካ።';

  @override
  String get duaAudioComingSoonMessage => 'የዚህ ዱዓ ድምፅ በሚቀጥለው ማሻሻያ ውስጥ ይገኛል።';

  @override
  String get duaAudioClose => 'ዝጋ';

  @override
  String get duaAudioError => 'ድምፁን መጫን አልተቻለም። እባክህ ግንኙነትህን አረጋግጥ።';

  @override
  String get duaAudioMetaTransmittedBy => 'ያስተላለፈው';

  @override
  String get duaAudioMetaOccasion => 'አጋጣሚ';

  @override
  String get duaAudioMetaDuration => 'ቆይታ';

  @override
  String get quickActionDailyHadith => 'የዕለቱ ሐዲስ';

  @override
  String get quickAction14Masumeen => '14ቱ ማዕሱሚን';

  @override
  String get quickActionListenDuas => 'አዳምጥ';

  @override
  String get quickActionTasbihat => 'የሶላት መመሪያ';

  @override
  String get pilgrimageSectionTitle => 'ቅዱሱ ጉዞ';

  @override
  String get pilgrimageSectionSubtitle =>
      'ለሐጅ እና ዑምራ ሙሉ መመሪያዎች — ወደ መካ ያለው የአላህ ቅዱስ ቤት ሐጅ';

  @override
  String get hajjCardTitle => 'ሐጅ';

  @override
  String get hajjCardSubtitle => 'የእስልምና አምስተኛው ምሰሶ';

  @override
  String get hajjCardDescription =>
      'ታላቁ ዓመታዊ ሐጅ — ለእያንዳንዱ ችሎታ ላለው ሙስሊም በሕይወት አንድ ጊዜ ግዴታ ነው';

  @override
  String get hajjScreenTitle => 'የሐጅ መመሪያ';

  @override
  String get hajjScreenSubtitle => 'ለታላቁ ሐጅ ደረጃ በደረጃ መመሪያ';

  @override
  String get umrahCardTitle => 'ዑምራ';

  @override
  String get umrahCardSubtitle => 'ትንሹ ሐጅ';

  @override
  String get umrahCardDescription =>
      'በዓመቱ ማንኛውም ጊዜ ሊደረግ የሚችል እጅግ ፍሬያማ መንፈሳዊ ጉዞ';

  @override
  String get umrahScreenTitle => 'የዑምራ መመሪያ';

  @override
  String get umrahScreenSubtitle => 'ለትንሹ ሐጅ ደረጃ በደረጃ መመሪያ';

  @override
  String get pilgrimageStepsTitle => 'ሥርዓቶች እና ደረጃዎች';

  @override
  String get pilgrimageImportantNotesTitle => 'አስፈላጊ ማስታወሻዎች';

  @override
  String get pilgrimageDuaTitle => 'የዚህ ደረጃ ዱአ';

  @override
  String get pilgrimageJafariNoteTitle => 'የጃ\'ፋሪ ፊቅህ አስታውስ';

  @override
  String get pilgrimageComplete => '✓ ተጠናቀቀ';

  @override
  String get pilgrimageMarkDone => 'እንደ ተጠናቀቀ ይምረጡ';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ከ $total ደረጃዎች';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes ደቂቀ ጊዜ';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ሺዓ ሐጃጆች';

  @override
  String get pilgrimageShiaNoteBody =>
      'ሺዓ ሐጃጆች በተለምዶ ወደ መዲና በመጓዝ በመስጂድ አል-ነበዊ ያለውን የነቢዩ ሙሐመድ (ሰዐወ) መቃብር እና በጀናት አል-በቂዕ ያሉትን የኢማሞች መቃብሮች ይጎበኛሉ። እነዚህ ጉብኝቶች እጅግ ታላቅ መንፈሳዊ ክብደት አላቸው እና ለአብዛኞቹ ሺዓ ሙስሊሞች የጉዞው ዋና ክፍል ተደርገው ይቆጠራሉ።';

  @override
  String get hajjIntro =>
      'ሐጅ የእስልምና አምስተኛው ምሰሶ ሲሆን፣ ለእያንዳንዱ በአካልና በገንዘብ የሚችል ሙስሊም በሕይወቱ አንድ ጊዜ ግዴታ ነው። በዙል-ሒጃ ወር ውስጥ የሚደረግ ሲሆን የነቢዩ ኢብራሂም (ዐ)፣ የልጁ ኢስማኢል (ዐ) እና የሰይዲቲ ሐጀር ፈለግ ይከተላል። ለሺዓ ሙስሊሞች ሐጅ በመዲና ያሉትን የነቢዩ (ሰዐወ) እና የአህሉል በይት መዓረፊያ ቦታዎች የመጎብኘት ታላቅ በረከትንም ያካትታል።';

  @override
  String get umrahIntro =>
      'ዑምራ ወደ መካ የሚደረግ ትንሹ ሐጅ ሲሆን፣ ከሐጅ በተለየ መልኩ በዓመቱ ማንኛውም ጊዜ ሊደረግ ይችላል። ግዴታ ባይሆንም ታላቅ መንፈሳዊ ምንዳ አለው እና በጣም የሚመከር የአምልኮ ተግባር ነው። ከሐጅ ጋር ብዙ ሥርዓቶችን ይጋራል፣ ግን አጭር ሲሆን አራት ዋና ሥርዓቶችን ያካትታል።';
}
