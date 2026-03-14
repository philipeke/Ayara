// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get appTitle => 'អាយារ៉ា';

  @override
  String get languageSelectTitle => 'ជ្រើសរើសភាษារបស់អ្នក';

  @override
  String get languageSelectSub => 'អ្នកអាចផ្លាស់ប្តូរនេះក្រោយមកក្នុងការកំណត់';

  @override
  String get actionContinue => 'ដោះស្រាយ';

  @override
  String get languageSuggestedHeader => 'បានស្នើសុំ';

  @override
  String get languageAllHeader => 'ភាសាទាំងអស់';

  @override
  String get languageSuggestedBadge => 'បានស្នើសុំ';

  @override
  String get languageSearchHint => 'ស្វាគមន៍...';

  @override
  String get planBasic => 'ស្តង់ដារ';

  @override
  String get planPremium => 'វីលាយ៉ា';

  @override
  String get categorySlot01 => 'ការណែនាំប្រចាំថ្ងៃ';

  @override
  String get categorySlot02 => 'ហ៊ីមាន និង ទំនុកចិត្ត';

  @override
  String get categorySlot03 => 'ការឆ្លឹងលើការ祈祷';

  @override
  String get categorySlot04 => 'ការអធ្យាស្រ័យ សង្ឃឹម';

  @override
  String get categorySlot05 => 'ស្វាគមន៍សម្រាប់ការសូត្របង្ហាញ';

  @override
  String get categorySlot06 => 'ស្នេហា អាណិត';

  @override
  String get categorySlot07 => 'ជំនឿ កម្លាំង';

  @override
  String get categorySlot08 => 'បេះដូងដែលមានលក្ខណៈកតេវិន';

  @override
  String get categorySlot09 => 'គោលបំណងនៃជីវិត';

  @override
  String get categorySlot10 => 'សក្ខីកម្មគ្រួសារ';

  @override
  String get categorySlot11 => 'សន្តិភាពខាងក្នុង';

  @override
  String get categorySlot12 => 'ប្រាជ្ញាលោកបង្ហាញ';

  @override
  String get categorySlot13 => 'លក្ខណៈពិសេសល្អ';

  @override
  String get categorySlot14 => 'ប្រឆាំងនឹងដំណោះស្រាយ';

  @override
  String get categorySlot15 => 'ឝិគ្រច័ន្ទ';

  @override
  String get categoryCustom => 'ការរឹតសម្អាតផ្ទាល់ខ្លួន';

  @override
  String get dhikrMeaningSubhanallah => 'glory ជា Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'សរុបការសរសើរ ដល់ Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah គឺលំដាប់ដ៏ធំបំផុត';

  @override
  String get quranVerseHeartAtRest =>
      'សូត្រ ក្នុងសន្ទស្សន៍របស់ Allah បេះដូងរកឃើញការសម្រាក។';

  @override
  String get promptHint => 'ចុចលើប្រភេទមួយសម្រាប់ការណែនាំ និង ការឆ្លឹងលើ Islam';

  @override
  String get currentLanguage => 'ភាษាបច្ចុប្បន្ន';

  @override
  String get settingsLanguage => 'ការកំណត់ភាសា';

  @override
  String get settingsTitle => 'ការកំណត់';

  @override
  String get chooseLanguage => 'ជ្រើសរើសភាษារបស់អ្នក';

  @override
  String get continueCta => 'ដោះស្រាយ';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ពាក្យ',
      one: '$count ពាក្យ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ជម្រើស';

  @override
  String get newCta => 'ថ្មី';

  @override
  String get actionsTitle => 'តើអ្នកចង់ធ្វើឱ្យប្រើប្រាស់?';

  @override
  String get copy => 'ចម្លង';

  @override
  String get share => 'ចែករំលែក';

  @override
  String get close => 'បិទ';

  @override
  String get copiedToast => 'ចម្លងទៅ clipboard';

  @override
  String shareSubject(String category) {
    return 'អាយារ៉ា — $category';
  }

  @override
  String get regenerateErrorTitle => 'មិនអាចបង្កើតចម្លើយថ្មីបាន';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nតើអ្នកចង់ព្យាយាម ម្តងទៀត?';
  }

  @override
  String get cancelCta => 'បោះបង់';

  @override
  String get retryCta => 'ព្យាយាម ម្តងទៀត';

  @override
  String get authTitle => 'បង្កើតគណនីរបស់អ្នក';

  @override
  String get continueAsGuest => 'ដោះស្រាយជាឧបករណ៍ផ្ទុក';

  @override
  String get signInGoogle => 'ចូលរូបដោយប្រើ Google';

  @override
  String get signInApple => 'ចូលរូបដោយប្រើ Apple';

  @override
  String get signInEmail => 'ចូលរូបដោយប្រើអ៊ីមែល';

  @override
  String get upgradeWithApple => 'ដោះស្រាយដោយប្រើ Apple';

  @override
  String get mustAccept =>
      'អ្នកត្រូវតែលិខិតយល់ព្រម និងទទួលស្គាល់គោលការណ៍ឯកជនភាព។';

  @override
  String get termsLabel => 'ខ្ញុំយល់ព្រមលក្ខខណ្ឌនៃសេវាកម្ម';

  @override
  String get privacyLabel => 'ខ្ញុំបានអានគោលការណ៍ឯកជនភាព';

  @override
  String get marketingOptIn =>
      'ខ្ញុំយល់ព្រមក្នុងការទទួលបានព័ត៌មាន និងការផ្តល់ជូន';

  @override
  String get openTerms => 'លក្ខខណ្ឌនៃសេវាកម្ម';

  @override
  String get openPrivacy => 'គោលការណ៍ឯកជនភាព';

  @override
  String get accountSection => 'គណនី';

  @override
  String get guestMode => 'របៀបឧបករណ៍ផ្ទុក';

  @override
  String get signedIn => 'ចូលរូបរួចហើយ';

  @override
  String get upgradeHint => 'រក្សាទុកការឆ្លឹងលើបាន devices ដោយបង្កើតគណនី។';

  @override
  String get upgradeWithGoogle => 'ដោះស្រាយដោយប្រើ Google';

  @override
  String get signOut => 'ចាកចេញ';

  @override
  String get snackUpgraded => 'គណនីដែលបានផ្នើមដោយ Google ✅';

  @override
  String get snackSignedIn => 'ចូលរូបដោយ Google ✅';

  @override
  String get snackSignedOut => 'ចាកចេញ';

  @override
  String get snackSignedInApple => 'ចូលរូបដោយ Apple ✅';

  @override
  String get snackSignedInGoogle => 'ចូលរូបដោយ Google ✅';

  @override
  String get snackUpgradedApple => 'គណនីដែលបានផ្នើមដោយ Apple ✅';

  @override
  String get snackUpgradedGoogle => 'គណនីដែលបានផ្នើមដោយ Google ✅';

  @override
  String get historyTitle => 'ការឆ្លឹងលើមុន';

  @override
  String get historyOpenCta => 'ការឆ្លឹងលើមុន';

  @override
  String get historyEmpty => 'មិនមានការឆ្លឹងលើដែលបានរក្សាទុក នៅឡើយ។';

  @override
  String get historyDeleteTitle => 'លុបការឆ្លឹងលើ?';

  @override
  String get historyDeleteBody =>
      'នេះនឹងដកបង្ហាញរបស់ដែលបានជ្រើសរើស ដោយមិនមានលក្ខខណ្ឌ។';

  @override
  String get deleteCta => 'លុប';

  @override
  String get historyButton => 'ការឆ្លឹងលើមុន';

  @override
  String get historyEmptyTitle => 'មិនមានការឆ្លឹងលើនៅឡើយ';

  @override
  String get historyEmptyBody =>
      'បង្កើតរបស់មួយចំនួនដំបូង — របស់ដែលបានរក្សាទុក នឹងបង្ហាញខាងក្រោម។';

  @override
  String get historyDelete => 'លុប';

  @override
  String get footerTitle => 'ដោយប្រើ Wilaya, Iman និង Sabr';

  @override
  String get footerSubtitle => 'ការ祈祷មួយនៅពេលមួយ';

  @override
  String get genericErrorSnack => 'មានការលំបាក — សូមព្យាយាម ម្តងទៀត។';

  @override
  String get upgradeAccountCta => 'រក្សាទុកការឆ្លឹងលើបាន devices — បង្កើតគណនី';

  @override
  String get deleteAccount => 'លុបគណនី';

  @override
  String get exportData => 'នាំចេញទិន្នន័យ';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ង្វង់សេឡូង 🐯\nអាយារ៉ាត្រូវការពេលមួយ មុនលើផ្នែកបន្ទាប់...';

  @override
  String get rateDailyLimit =>
      'អ្នកបានប្រើ reflections ដែលបានកំណត់។\nទទួលបាន reflections ច្រើនឬផ្នើម Wilaya។';

  @override
  String get rateCreditsExhausted =>
      'អ្នកបានប្រើ reflections ដែលបានទាំងអស់។\nបូករឺផ្នើម Wilaya ដើម្បីបន្តបាន។';

  @override
  String get rateGraceCreditsExhausted =>
      'អ្នកបានប្រើ reflections ដែលបានកំណត់។\nទទួលបាន reflections ច្រើនឬផ្នើម Wilaya។';

  @override
  String get premiumDescription =>
      'Wilaya សម្រាប់មាន reflections ច្រើន, ប្រភេទដែលសមរម្យ ឥឡូវនេះ ឬក្រោយមក។';

  @override
  String ratePlanExhausted(String plan) {
    return 'Reflections របស់អ្នក ត្រូវបានផ្សាយ។ ផែនការ: $plan។';
  }

  @override
  String rateCheckFailed(String message) {
    return 'មិនអាចពិនិត្យលើ reflections របស់អ្នក: $message';
  }

  @override
  String get rateCheckGenericError =>
      'មានលម្លាប់ក្នុងការពិនិត្យលើ reflections របស់អ្នក។';

  @override
  String get aiFallbackGeneric => 'មានការលំបាក — សូមព្យាយាម ម្តងទៀត។';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'ការប្រើប្រាស់';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflections នៅសល់: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'ផែនការ: $plan';
  }

  @override
  String get limitLoadingLabel => 'កំពុងផ្ទុក...';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'ប្រើ 1 reflection រៀងរាល់។ ស្តង់ដារ reflection ដោះស្រាយ។ Wilaya បង្ហាញលម្អិតនិងបូក។';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections ប្រើ';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'ការប្រើប្រាស់';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflections នៅសល់: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'ផែនការ: $plan';
  }

  @override
  String get creditsLoadingLabel => 'កំពុងផ្ទុក...';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'ប្រើ 1 reflection រៀងរាល់។ ស្តង់ដារ reflection ដោះស្រាយ។ Wilaya បង្ហាញលម្អិតនិងបូក។';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections ប្រើ';
  }

  @override
  String get settingsDeleteTitle => 'លុបគណនី';

  @override
  String get settingsDeleteDescription =>
      'លុបគណនីនិងទិន្នន័យដែលពាក់ព័ន្ធដោយមិនមានលក្ខខណ្ឌ។';

  @override
  String get settingsDeleteButtonLabel => 'លុបគណនីរបស់ខ្ញុំ';

  @override
  String get settingsDeleteDialogTitle => 'លុបគណនី?';

  @override
  String get settingsDeleteDialogBody =>
      'សកម្មភាពនេះគឺមិនអាចដកមកវិញបាន។\n\nចរាចរលម្អិត ប្រវត្តិ និងលម្អិតគណនីនឹងលុបដោះស្រាយ។';

  @override
  String get settingsDeleteDialogCancel => 'បោះបង់';

  @override
  String get settingsDeleteDialogConfirm => 'លុប';

  @override
  String get settingsFreeLimitUsedTitle => 'ដោះស្រាយ reflections ប្រើ';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ដោះស្រាយ reflections សម្រាប់ device នេះ។ ផ្នើម Wilaya ឬលក់ reflections នេះ។';

  @override
  String get settingsStarterCreditsUsedTitle => 'ដោះស្រាយ reflections ប្រើ';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ដោះស្រាយ reflections សម្រាប់ device នេះ។ ផ្នើម Wilaya ឬលក់ reflections នេះ។';

  @override
  String get deviceBoundError =>
      'Device នេះ ត្រូវបានភ្ជាប់ដោយគណនីផ្សេងទៀត។ សូមចូលរូបដោយប្រើគណនីដើម។';

  @override
  String get premiumTitle => 'របៀប Wilaya';

  @override
  String get premiumSubtitleBasic => 'សម្រាក Ayara ពេញលេញ។';

  @override
  String get premiumSubtitlePremium =>
      'អ្នកមាន Wilaya។ ត្រូវការ reflections បន្ថែម?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'ផែនការបច្ចុប្បន្ន: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'ការលក់មិនឡើងរឹង។';

  @override
  String get premiumSignInToPurchase =>
      'ចូលរូបដើម្បីលក់ reflections ឬ Wilaya សម្រាក។';

  @override
  String get premiumRestorePurchases => 'ស្ដារការលក់';

  @override
  String get premiumProcessing => 'ដំណើរការ...';

  @override
  String get premiumRestoreHintTitle =>
      'ដូច្នេះលក់ Wilaya ឬ reflections រួចរាល់?';

  @override
  String get premiumRestoreHintBody => 'ស្ដារការលក់ ប្រសិនបើមិនបង្ហាញ។';

  @override
  String get premiumBuyCredits200 => 'លក់ 200 reflections';

  @override
  String get premiumBuyCredits400 => 'លក់ 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'ផ្នើម Wilaya របៀប';

  @override
  String get premiumTopupHint =>
      'ដោយប្រើ Wilaya អ្នក reflections បូក ពេលដែលត្រូវការ។';

  @override
  String get premiumUpgradeCta => 'ផ្នើម';

  @override
  String get premiumRequiredForCategory =>
      'ប្រភេទនេះ Wilaya ប្រើប្រាស់ប៉ុណ្ណាក្រោយ។ ផ្នើម ក្នុង Settings វិស័យ។';

  @override
  String get premiumBenefitsBasic =>
      'សម្រាក Wilaya reflections ច្រើន ប្រភេទលម្អិត បន្ត រេ Wilaya។';

  @override
  String get premiumBenefitsPremium =>
      'អ្នកមាន Wilaya របៀប។ ប្រសិនបើ reflections ខ្លី បូក។';

  @override
  String get premiumButtonBecomePremium => 'សម្រាក Wilaya';

  @override
  String get premiumButtonTopup1000 => 'បូក 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya សកម្ម';

  @override
  String get premiumLoadingStore => 'រក្សាទុក ផ្ទុក...';

  @override
  String get premiumProductNotAvailable =>
      'ផលិតផលនេះ មិនមាន។ សូមព្យាយាម ក្រោយមក។';

  @override
  String get premiumPurchaseError => 'មានលម្លាប់លក់។ សូមព្យាយាម ម្តងទៀត។';

  @override
  String get premiumBuyCredits100 => 'បូក 100 reflections';

  @override
  String get premiumFeatureLocked => 'សម្រាក Wilaya មាន។';

  @override
  String get lockedCategoriesHint => 'ប្រភេទខ្លះ Wilaya ឬក្រោយ។ សម្រាក។';

  @override
  String get freePlanBlockedTitle => 'អ្នកបានប្រើ reflections ដោះស្រាយ';

  @override
  String get freePlanBlockedBody =>
      'អ្នក ស្តង់ដារ ដោះស្រាយ reflections។ បានឈានដល់ដែនកំណត់។ ដើម្បីបន្ត — និងសម្រាក ប្រភេទលម្អិត — ផ្នើម Wilaya។';

  @override
  String get freePlanBlockedCtaGoPremium => 'Wilaya ដូច្នេះខាងក្រោម';

  @override
  String get graceBlockedTitle => 'អ្នកបានប្រើ reflections ដោះស្រាយ';

  @override
  String get graceBlockedBody =>
      'អ្នក ស្តង់ដារ ដោះស្រាយ reflections។ បានឈានដល់ដែនកំណត់។ ដើម្បីបន្ត — និងសម្រាក ប្រភេទលម្អិត — ផ្នើម Wilaya។';

  @override
  String get graceBlockedCtaGoPremium => 'Wilaya ដូច្នេះខាងក្រោម';

  @override
  String get rateGuestMustSignIn => 'ចូលរូបដើម្បីប្រើ Ayara និង reflections។';

  @override
  String get guestNoCreditsTitle => 'របៀបឧបករណ៍ផ្ទុក';

  @override
  String get guestNoCreditsBody =>
      'ឧបករណ៍ផ្ទុក រូបមន្ត។ ល្ងាច ចូលលម្អិត រូបមន្ត សម្រាក។';

  @override
  String get guestDialogContinue => 'ដោះស្រាយ';

  @override
  String get guestDialogLoginInstead => 'ចូលលម្អិត';

  @override
  String get optionalLabel => 'ម៉ាកក';

  @override
  String get accountDeleteSuccessTitle => 'គណនីលុប';

  @override
  String get accountDeleteSuccessBody => 'គណនីនិងទិន្នន័យលុប។';

  @override
  String get accountDeleteSuccessClose => 'បិទ';

  @override
  String get accountDeleteErrorTitle => 'មិនលុបគណនីបាន';

  @override
  String get accountDeleteErrorClose => 'យល់ព្រម';

  @override
  String get accountDeleteReauthCancelled =>
      'ពិនិត្យម្តងទៀតលុប។ សូមចូលលម្អិត លម្អិត។';

  @override
  String get accountDeleteReauthRequired =>
      'លុបគណនីពិនិត្យ។ សូមលោក ចូលលម្អិត លម្អិត។';

  @override
  String get settingsDeletePermanentWarning =>
      'សកម្មភាពលុបដោយមិនមានលក្ខខណ្ឌ។ ទិន្នន័យលុប។';

  @override
  String get dailyGraceTitle => 'ការណែនាំប្រចាំថ្ងៃ';

  @override
  String get dailyGraceScriptureLabel => 'សូត្រថ្ងៃ';

  @override
  String get dailyGraceSaintLabel => 'រូបភាពនៃសប្តាហ៍';

  @override
  String get dailyGraceReflectionLabel => 'ការឆ្លឹងលើល្ងាច';

  @override
  String get dailyGraceCopiedToast => 'សូត្របានចម្លង clipboard';

  @override
  String get locationConsentLabel => 'ឱ្យ Ayara ប្រើទីតាំងដើម្បី Qibla និងដែន។';

  @override
  String get locationConsentHint => 'ប្រើដើម្បីលម្អិត។ ទីតាំង ក្រោយ ឬ។';

  @override
  String get askPageTitle => 'សួរ Ayara';

  @override
  String get askPageDescription =>
      'សួរលម្អិត ជំនឿ ដែន ឬ ស្ថាប័នគ្រាន់ ឬ បង្ហាញ។';

  @override
  String get askPageInputHint => 'សរសេរសម្ភាសន៍ទីនេះ...';

  @override
  String get askPageSubmitCta => 'សួរ';

  @override
  String get askPageInputEmptyError => 'សូមសរសេរសម្ភាសន៍ដំបូង។';

  @override
  String get askResultYourQuestion => 'សម្ភាសន៍របស់អ្នក';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'ឈប់ Makkah';

  @override
  String get qiblaCompassInstruction =>
      'ប្តូរ phone ឃ្លាំងមាស ឡើងលើ។\nទិសដៅចង្អុលរបស់ Qibla (Makkah)។';

  @override
  String get qiblaGpsUnavailableBody => 'GPS ខ្សោយ។ ឡើងលើក ឬ។';

  @override
  String get qiblaRetry => 'ឡើងលើក';

  @override
  String get qiblaTitle => 'Qibla ទិសដៅ';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km រើង Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'ទីតាំងត្រូវការ';

  @override
  String get qiblaLocationNeededBody => 'ឱ្យ Ayara ទីតាំង Kaaba ក្នុង Makkah។';

  @override
  String get qiblaOpenSettings => 'Settings បើក';

  @override
  String get qiblaCompassLoading => 'ទីតាំង រក...';

  @override
  String get qiblaTowardMecca => 'ឈប់ Makkah';

  @override
  String get prayerTimesTitle => 'ដែនពេលវេលា';

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
  String get prayerTimesLocationNeededTitle => 'ទីតាំងត្រូវការ';

  @override
  String get prayerTimesLocationNeededBody => 'ឱ្យ Ayara ដែនពេលវេលាល្អ។';

  @override
  String get prayerTimesNextLabel => 'បន្ទាប់';

  @override
  String get prayerTimesDoneLabel => 'រៀងរាល់';

  @override
  String get monthlyPrayerTimesTitle => 'ដែនពេលវេលាខែ';

  @override
  String get monthlyPrayerTimesViewButton => 'ចូលលម្អិត';

  @override
  String get monthlyPrayerTimesNextMonth => 'ខែបន្ទាប់';

  @override
  String get monthlyPrayerTimesDayHeader => 'ថ្ងៃ';

  @override
  String get sharePrayerTimes => 'ចែក ដែនពេលវេលា';

  @override
  String get notificationsSectionTitle => 'ការជូនដំណឹង';

  @override
  String get notificationsSectionSubtitle => 'ដែនលម្អាក & ច្រើន';

  @override
  String get dailyReflectionReminderTitle => 'ការឆ្លឹងលើប្រចាំថ្ងៃ';

  @override
  String get dailyReflectionReminderDescription =>
      'ខ្ញុំលម្អាក ប្រចាំថ្ងៃ Ayara ក្នុងលម្អិតជំនឿ។';

  @override
  String get dailyReflectionReminderEnable => 'ឱ្យលម្អាក';

  @override
  String get dailyReflectionReminderTimeLabel => 'លម្អាក ពេលវេលា';

  @override
  String get prayerNotificationsTitle => 'ដែនលម្អាក';

  @override
  String get prayerNotificationsDescription => 'ទទួលលម្អាក ដែនពេលវេលា។';

  @override
  String get prayerNotificationsEnable => 'ឱ្យដែនលម្អាក';

  @override
  String get prayerNotificationsOpenSettings => 'ការជូនដំណឹង Settings បើក';

  @override
  String get prayerNotificationsDenied => 'ការជូនដំណឹងលប់';

  @override
  String get prayerNotificationsDeniedHint =>
      'Settings ឱ្យការជូនដំណឹង Ayara ដែនលម្អាក។';

  @override
  String get notificationsConsentLabel => 'ឱ្យការជូនដំណឹងដែនពេលវេលា';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — ដែនលេង';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ដែនខាង។ Imam Ali (AS) សោយលេង។ ឡើងលើក ល្អ។';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — ដែនថ្ងៃ';

  @override
  String get prayerNotifBodyDhuhr => 'ដែន Ahl al-Bayt រៀងរាល់។ ផ្សារដែន។';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — ដែនល្ងាច';

  @override
  String get prayerNotifBodyAsr => 'ដែន ចូលលម្អិត។ ពេលវេលា Asr — កុំលុច។';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — ដែនលេង';

  @override
  String get prayerNotifBodyMaghrib => 'ព្រះ ចូលលម្អិត។ Maghrib ដែន។';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — ដែនយប់';

  @override
  String get prayerNotifBodyIsha => 'បង្ហាញថ្ងៃ។ Isha ឡើងលើក ឯកា។';

  @override
  String get outOfReflectionsBannerText => 'អ្នកបានប្រើ reflections ទាំងអស់';

  @override
  String get outOfReflectionsBannerCta => 'ទទួលបានច្រើន';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'ចុច រាប់';

  @override
  String get dhikrResetButton => 'កំណត់';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'អ្នកបានបញ្ចប់ 100 ការចងចាំ Allah។ អាចទាំងពួកគេបង្ហាញពន្លឺសម្រាប់បេះដូងរបស់អ្នក។';

  @override
  String get disclaimerTitle => 'អំពីការណែនាំ app នេះ';

  @override
  String get disclaimerBody =>
      'Ayara ផ្តល់ជូន Islam ឆ្លឹង លម្អាក វិសាលភាព ឯកា ក្នុង Quran រូបមន្ត។ ឧបនីយកម្មលម្អិត។\n\nAyara មិនដូច។\nលម្អិត app មិនប៉ុម្ពៀង scholar Islam marja\' គ្រូ។ Shia Islam ដូច Ja\'fari school fiqh ក្នុង marja\' — scholar លម្អិត។ ដោយលម្អិត fiqh halal haram សូម marja\' scholar ក្រុម។\n\nApp មិនលម្អិត។\nAyara មិនលម្អិត fiqh ឬលម្អិត។ មិនលម្អិត fatwa ឬលម្អិត។\n\nAhl al-Bayt។\nShia Islam Prophet Muhammad ﷺ ឧបករណ៍ — Ahl al-Bayt — ក្រុម Islam។ ១២ Imam Ahl al-Bayt ឧបករណ៍លម្អិត។ Ayara ខាងក្រោម។\n\nក្រុម។\nApp ល្អ ក្នុង mosque រូប។ ថ្វាយក្រុម ឧបករណ៍។';

  @override
  String get disclaimerClose => 'ខ្ញុំយល់ដឹង';

  @override
  String get disclaimerInfoTooltip => 'អំពីការណែនាំ app នេះ';

  @override
  String get disclaimerSettingsSubtitle =>
      'ឧបនីយកម្មលម្អិត។ ចុចដើម្បីអានលម្អិត។';

  @override
  String get disclaimerSectionHeader => 'រឹង disclaimer';

  @override
  String get navHome => 'ផ្ទះ';

  @override
  String get navReflect => 'ឆ្លឹង';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'ឆ្នាំ';

  @override
  String get dashboardToday => 'ថ្ងៃ';

  @override
  String get dashboardComingUp => 'ឡើងលើក';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ថ្ងៃ',
      one: 'ថ្ងៃ',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'ចូលលម្អិត';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'ល្អ';

  @override
  String get quickActionPrayerTimes => 'ដែនពេលវេលា';

  @override
  String get askAyaraTitle => 'សួរ Ayara';

  @override
  String get askAyaraSubtitle => 'សួរ Islam សួរលម្អិត។';

  @override
  String get askAyaraHint => 'ឧ. Ramadan ដូចម្តេច?';

  @override
  String get askAyaraSubmit => 'សួរ';

  @override
  String get wisdomOfTheDayTitle => 'ប្រាជ្ញាថ្ងៃ';

  @override
  String get calendarScreenTitle => 'ឆ្នាំ Islam';

  @override
  String get calendarUpcomingOccasions => 'ឡើងលើក';

  @override
  String get calendarOccasionRemindersTitle => 'លម្អាក';

  @override
  String get calendarOccasionRemindersHint => 'ល្ងាច ម៉ាក';

  @override
  String get calendarNotifPermissionDenied => 'ការជូនដំណឹងលប់។ Settings បើក។';

  @override
  String get calendarNoEvents => 'ឡើងលើក។';

  @override
  String get calendarAddToPhone => 'បន្ថែមទៅកាលវិភាគទូរស័ព្ទ';

  @override
  String get calendarAddedToPhone => 'បានបន្ថែមទៅកាលវិភាគ';

  @override
  String get calendarCountdownToday => 'ថ្ងៃ';

  @override
  String get calendarCountdownTomorrow => 'ថ្ងៃស្វាយ';

  @override
  String calendarCountdownDays(int days) {
    return 'ថ្ងៃ $days';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'មករា';

  @override
  String get calendarMonthFeb => 'កុម្ភៈ';

  @override
  String get calendarMonthMar => 'មីនា';

  @override
  String get calendarMonthApr => 'មេសា';

  @override
  String get calendarMonthMay => 'ឧសភា';

  @override
  String get calendarMonthJun => 'មិថុនា';

  @override
  String get calendarMonthJul => 'កក្កដា';

  @override
  String get calendarMonthAug => 'សីហា';

  @override
  String get calendarMonthSep => 'កញ្ញា';

  @override
  String get calendarMonthOct => 'តុលា';

  @override
  String get calendarMonthNov => 'វិច្ឆិកា';

  @override
  String get calendarMonthDec => 'ធ្នូ';

  @override
  String get calendarSeasonMuharramEarly => 'ថ្ងៃ Muharram — ចងចាំ Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — ថ្ងៃ ឆ្លឹង';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — សល់ថ្ងៃ Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'ផ្លូវ Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — ដើមរឹង';

  @override
  String get calendarSeasonMidShaban =>
      'Sha\'ban កម្មង — ថ្ងៃកើត Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ខែ Quran';

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
  String get duasSearchHint => 'សូត្រ ziyarat...';

  @override
  String get duasFilterAll => 'ទាំងអស់';

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
  String get duasEmpty => 'ស័ក់។';

  @override
  String get duaCategoryDaily => 'ប្រចាំថ្ងៃ';

  @override
  String get duaCategoryWeekly => 'សប្ដាហ៍';

  @override
  String get duaCategoryOccasions => 'ម៉ាក';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'កើត';

  @override
  String get eventTypeMartyrdom => 'មរណៈ';

  @override
  String get eventTypeOccasion => 'ម៉ាក';

  @override
  String get duaCopyTooltip => 'ចម្លង';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'ផ្ទេរ';

  @override
  String get duaAskAiLabel => 'សួរ Ayara ពន្យល់ dua នេះ';

  @override
  String get duaAskAiLockedLabel => 'សួរ Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage => 'Ayara ឧបនីយកម្ម Wilaya។ Settings ផ្នើម។';

  @override
  String duaAiComingSoon(String name) {
    return 'សួរ Ayara ពន្យល់ \"$name\" — ឡើងលើក!';
  }

  @override
  String get duaCopiedToast => 'Dua បានចម្លង clipboard។';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ធំ';

  @override
  String get tasbihAlhamdulillahMeaning => 'សរុប Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Allah ឯកា';

  @override
  String get tasbihResetTooltip => 'កំណត់';

  @override
  String get tasbihCompleteTitle => 'Tasbih សាក់';

  @override
  String get tasbihCompleteMessage => 'អាច Allah ទទួលលើ dhikr។';

  @override
  String get tasbihTapHint => 'ចុច រាប់';

  @override
  String get tasbihatScreenTitle => 'ដែនចង្វាក់';

  @override
  String get tasbihatScreenSubtitle => 'ដែនឯកា';

  @override
  String get tasbihatScreenDescription =>
      'ដែនឯកា ក្នុងលម្អិត — Ahl al-Bayt (a) ក្រឡេក។';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'ក្នុង ៣ និង ៤ rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Shia fiqh Tasbiḥāt al-Arbaʿa ដូច Surah al-Fatiha ក្នុង ៣ និង ៤ rakʿah Dhuhr Asr Maghrib និង Isha។ wājib មួយលេង និង mustaḤabb បីលេង។';

  @override
  String get tasbihatArba3Translation =>
      'Allah ឯកា · Allah សរុប\nគ្មាន god Allah · Allah ធំ';

  @override
  String get tasbihatArba3CompleteTitle => 'ដែនលម្អិត សាក់';

  @override
  String get tasbihatArba3CompleteMessage => 'អាច ដែនលម្អិត — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'ចុច ក្រោយលម្អិត';

  @override
  String get tasbihatZahraSubtitle => 'បន្ទាប់រៀងរាល់ដែន · ១០០ beads';

  @override
  String get tasbihatZahraOriginLabel => 'ដែល';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) សួរលោកបង្ហាញ សេវាកម្ម។ លោក: \"សូមដូច្នេះ? Subḥānallāh ៣៣ Alḥamdulillāh ៣៣ និង Allāhu Akbar ៣៤ បន្ទាប់រៀងរាល់ដែន។ ល្អប្រទាប់ រៀងរាល់ សេវាកម្ម។\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'បើក Tasbīḥ រាប់';

  @override
  String get tasbihatDuasTitle => 'ដូច បានស្នើសុំ';

  @override
  String get tasbihatDuasSubtitle => 'បន្ទាប់ពីបញ្ចប់ ដែនលម្អិត';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'បន្ទាប់រៀងរាល់ដែនលម្អិត';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ដែលលម្អិត Āyat al-Kursī បន្ទាប់រៀងរាល់ដែនលម្អិត គ្មាននរណាក្នុង paradise លើកលែង death។ Imam al-Bāqir (a) និយាយ វា ក្នុង verses ធំបំផុត ក្នុង Quran។';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'បន្ទាប់រៀងរាល់ដែន · ដូច dua ទាំងអស់';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'ផ្ញើ salutations លោក ﷺ និង ក្រុម (Āl Muḥammad) ដូច ក្នុង dua។ Imam al-Ṣādiq (a) និយាយ: \"dua ក្រឡេក រហូត dua ក្នុង Muḥammad និង ក្រុម។\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'បន្ទាប់រៀងរាល់ដែន · Imam ម៉ោង';

  @override
  String get tasbihatDuaFarajSource => 'Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'ការអធិស្ឋានសម្រាប់ការបង្ហាញឡើងវិញនៃអ៊ីម៉ាមអាល់-ម៉ាហ្ដី (អហ) អ៊ីម៉ាមទី ១២ ដែលបានបង្រៀនដោយឪពុករបស់គាត់។ វាត្រូវបានអានដោយជាច្រើនស៊ីអ៊ីស្លាមក្រោយពីការអធិស្ឋានជាការបង្ហាញនៃការគោរពដល់អ៊ីម៉ាមដែលនៅរស់។';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Maghrib និង Isha · ពិសេស បានស្នើសុំ';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) និយាយ ដែល Tasbīḥ al-Zahrā បន្ទាប់ Isha មុន ដេក ល្អ ក្នុង ១០០០ rakʿahs ដែន។ ពន្លឺ កើនឡើង ក្នុង heaven។';

  @override
  String get tasbihFatimaGiftPre => 'របៀប លោក';

  @override
  String get tasbihFatimaGiftPost => 'ដែល បន្ទាប់រៀងរាល់ដែន';

  @override
  String get prayerTrackerTitle => 'ដែន រាប់';

  @override
  String get prayerTrackerPrayed => 'ដែន';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete => 'ដែនលម្អិត សាក់។ អាច Allah ទទួល។';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'សាក់ ថ្ងៃ';

  @override
  String get dhikrTrackerNotDoneToday => 'មិនលម្អិត ថ្ងៃ';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ លម្អាក';

  @override
  String get dhikrReminderDescription =>
      'ខ្ញុំលម្អាក ប្រចាំថ្ងៃ សម្រាប់ Tasbīḥ al-Zahrā (SA)។';

  @override
  String get dhikrReminderEnable => 'ឱ្យលម្អាក Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'លម្អាក ពេលវេលា';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith ប្រចាំថ្ងៃ';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'ផ្ទេរ';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'ចែក Hadith នេះ';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'មុន';

  @override
  String get hadithNavNext => 'បន្ទាប់';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'អ៊ីម៉ាមទាំង ១៤';

  @override
  String get imamsScreenSubtitle =>
      'នគរដ្រេក, អ្នកស្រីហ្វាតីមា និងអ៊ីម៉ាម ១២ — មគ្គុទេសក៍ដែលបានសំអាតនិងមិនមានកំហុសក្នុងអ៊ីស្លាមស៊ីអ៊ីស្លាម';

  @override
  String get imamLabelBorn => 'កើត';

  @override
  String get imamLabelMartyrdom => 'មរណៈ';

  @override
  String get imamLabelStatus => 'ស្ថិតិ';

  @override
  String get imamSectionBiography => 'biography';

  @override
  String get imamSectionFamousSaying => 'ដូច';

  @override
  String get imamRoleProphet => 'លោកបង្ហាញ ចុងក្រោយ';

  @override
  String get imamRoleInfallible => 'ឯកា';

  @override
  String get imamOrdinal1 => '១ Imam';

  @override
  String get imamOrdinal2 => '២ Imam';

  @override
  String get imamOrdinal3 => '៣ Imam';

  @override
  String get imamOrdinal4 => '៤ Imam';

  @override
  String get imamOrdinal5 => '៥ Imam';

  @override
  String get imamOrdinal6 => '៦ Imam';

  @override
  String get imamOrdinal7 => '៧ Imam';

  @override
  String get imamOrdinal8 => '៨ Imam';

  @override
  String get imamOrdinal9 => '៩ Imam';

  @override
  String get imamOrdinal10 => '១០ Imam';

  @override
  String get imamOrdinal11 => '១១ Imam';

  @override
  String get imamOrdinal12 => '១២ Imam';

  @override
  String get duaAudioScreenTitle => 'ស្តាប់ Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'ជ្រើសរើស dua ដើម្បីស្តាប់។ ចុច tiles ដើម្បីលេង ឬ ឈប់។';

  @override
  String get duaAudioComingSoonMessage =>
      'ឧបនីយកម្ម dua នេះ នឹងមាន ក្នុង ឡើងលើក។';

  @override
  String get duaAudioClose => 'បិទ';

  @override
  String get duaAudioError => 'មិនឡើងលម្អិត ឧបនីយកម្ម។ ពិនិត្យ តំណ័ង។';

  @override
  String get duaAudioMetaTransmittedBy => 'បង្ហាញដោយ';

  @override
  String get duaAudioMetaOccasion => 'ម៉ាក';

  @override
  String get duaAudioMetaDuration => 'រយៈពេល';

  @override
  String get quickActionDailyHadith => 'Hadith ប្រចាំថ្ងៃ';

  @override
  String get quickAction14Masumeen => 'អ៊ីម៉ាមទាំង ១៤';

  @override
  String get quickActionListenDuas => 'ស្តាប់';

  @override
  String get quickActionTasbihat => 'ដែនចង្វាក់';

  @override
  String get pilgrimageSectionTitle => 'ដើមដ្រើង 거룩';

  @override
  String get pilgrimageSectionSubtitle =>
      'ចង្វាក់ Hajj និង Umrah — ដើមដ្រើង ផ្ទះ ឯកា Allah ក្នុង Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'ខ្នើង ៥ Islam';

  @override
  String get hajjCardDescription =>
      'ដើមដ្រើង ឆ្នាំ ធំ — ដូច រាល់ Muslim ស្វាមី';

  @override
  String get hajjScreenTitle => 'ចង្វាក់ Hajj';

  @override
  String get hajjScreenSubtitle => 'ក្រឡេក ដើម្បី ដើមដ្រើង ធំ';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'ដើមដ្រើង ខ្ចាស់';

  @override
  String get umrahCardDescription =>
      'ដើមដ្រើង រឹង ឆ្នាយ — អាច ក្នុង ឆ្នាំ ដូច្នេះ';

  @override
  String get umrahScreenTitle => 'ចង្វាក់ Umrah';

  @override
  String get umrahScreenSubtitle => 'ក្រឡេក ដើម្បី ដើមដ្រើង ខ្ចាស់';

  @override
  String get pilgrimageStepsTitle => 'ឥសលាម និង ក្រឡេក';

  @override
  String get pilgrimageImportantNotesTitle => 'សម្គាល់ សម្គាល់';

  @override
  String get pilgrimageDuaTitle => 'ដូអាសម្រាប់ជំហាននេះ';

  @override
  String get pilgrimageJafariNoteTitle => 'កំណត់សម្គាល់ហ្កាហ្វារី';

  @override
  String get pilgrimageComplete => '✓ បានបញ្ចប់';

  @override
  String get pilgrimageMarkDone => 'សម្គាល់ថាបញ្ចប់';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done នៃ $total ជំហាន';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes នាទី';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia ដើមដ្រើង';

  @override
  String get pilgrimageShiaNoteBody =>
      'អ្នកបរិច្ចាគស៊ីអ៊ីស្លាមជាច្រើនក៏ធ្វើដំណើរទៅកាន់ម៉ាឌីណាដើម្បីចូលរួមក្នុងការទស្សនាអ្នកនាងម៉ូហ្ស៉ា (សាអវ) នៅម៉ាស៊ីតអាល់-ណាបាវី និងកន្លែងសពនៅចាន់ណាតអាល់-បាគី។ ការទស្សនានេះមានសារៈសំខាន់ផ្លូវចិត្តយ៉ាងជ្រាលជ្រៅ ទោះបីជាវាមិនមែនជាពិធីនៃហ៉ាជក៏ដោយ។';

  @override
  String get hajjIntro =>
      'ហ៉ាជគឺជាគ្រឹះទី ៥ នៃអ៊ីស្លាម ដែលត្រូវបានកំណត់មួយដងក្នុងជីវិតសម្រាប់មូស្លីមរាល់គ្នាដែលអាចធ្វើបានទាំងផ្លូវកាយនិងហិរញ្ញវត្ថុ។ សម្រាប់អ្នកបរិច្ចាគស៊ីអ៊ីស្លាមទាំង ១២ នៅថ្ងៃនេះ វាមានន័យថា ហ៉ាជអាល់-តាម៉ាត់, ដែលត្រូវបានអនុវត្តនៅក្នុងខែឌុលហិជ្ជា ក្នុងជំហានរបស់នគរដ្រេក (អអស), កូនប្រុសរបស់គាត់ អ៊ីស្ម៉ាអែល (អអស) និងអ្នកស្រីហ្សាហ្សារ។ មគ្គុទេសក៍នេះអនុវត្តតាមរចនាសម្ព័ន្ធជាដំណាក់កាលនៃពិធីសាសនា ខណៈពេលដែលការទស្សនានៅម៉ាឌីណានៅតែជាដំណើរដ៏មានតម្លៃមួយមុនឬក្រោយហ៉ាជ។';

  @override
  String get umrahIntro =>
      'Umrah គឺ ដើមដ្រើង ខ្ចាស់ ដល់ Mecca និង មិនដូច Hajj អាច ក្នុង ឆ្នាំ។ ខណៈ មិនដូច វា កាន់កាប់ រឹង វិសាលភាព និង ដូច ឯកា ឧបករណ៍។ វា ចែក ឥសលាម ច្រើន ក្នុង Hajj ប៉ុន្តែ ខ្ចាស់។';

  @override
  String get voiceInputTitle => 'ការបញ្ចូលសំឡេង';

  @override
  String get voiceInputMicTitle => 'មីក្រូហ្វូន';

  @override
  String get voiceInputMicSubtitle =>
      'និយាយអំពីការបញ្ចូលរបស់អ្នកដើម្បីសួរ Ask Ayara ជំនួសការបញ្ចូលតួអក្សរ។';

  @override
  String get voiceInputMicDenied => 'ការចូលដំណើរការមីក្រូហ្វូនត្រូវបានបដិសេធ។';

  @override
  String get voiceInputSpeak => 'និយាយជំនួស';

  @override
  String get voiceInputListening => 'កំពុងស្តាប់…';

  @override
  String get voiceInputPermissionDenied =>
      'ការចូលដំណើរការមីក្រូហ្វូនត្រូវការសម្រាប់ការបញ្ចូលសំឡេង។';
}
