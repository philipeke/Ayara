// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'أيارہ';

  @override
  String get languageSelectTitle => 'اپنی زبان منتخب کریں';

  @override
  String get languageSelectSub =>
      'آپ بعد میں ترتیبات میں اسے تبدیل کر سکتے ہیں';

  @override
  String get actionContinue => 'جاری رکھیں';

  @override
  String get languageSuggestedHeader => 'تجویز کردہ';

  @override
  String get languageAllHeader => 'تمام زبانیں';

  @override
  String get languageSuggestedBadge => 'تجویز کردہ';

  @override
  String get languageSearchHint => 'تلاش کریں…';

  @override
  String get planBasic => 'معیاری';

  @override
  String get planPremium => 'ولایت';

  @override
  String get categorySlot01 => 'روزانہ رہنمائی';

  @override
  String get categorySlot02 => 'ایمان اور اعتماد';

  @override
  String get categorySlot03 => 'نماز کی عکاسی';

  @override
  String get categorySlot04 => 'صبر اور امید';

  @override
  String get categorySlot05 => 'معافی مانگو';

  @override
  String get categorySlot06 => 'رحمت اور شفقت';

  @override
  String get categorySlot07 => 'ایمان اور طاقت';

  @override
  String get categorySlot08 => 'شکر گزار دل';

  @override
  String get categorySlot09 => 'زندگی کا مقصد';

  @override
  String get categorySlot10 => 'خاندانی رشتے';

  @override
  String get categorySlot11 => 'اندرونی سکون';

  @override
  String get categorySlot12 => 'نبی کی حکمت';

  @override
  String get categorySlot13 => 'اچھا کردار';

  @override
  String get categorySlot14 => 'ہوسِ کا مقابلہ';

  @override
  String get categorySlot15 => 'شام کا ذکر';

  @override
  String get categoryCustom => 'ذاتی عکاسی';

  @override
  String get dhikrMeaningSubhanallah => 'اللہ پاک ہے';

  @override
  String get dhikrMeaningAlhamdulillah => 'تمام تعریفیں اللہ کے لیے ہیں';

  @override
  String get dhikrMeaningAllahuAkbar => 'اللہ سب سے بڑا ہے';

  @override
  String get quranVerseHeartAtRest =>
      'یقیناً اللہ کی یاد میں دلوں کو سکون ملتا ہے۔';

  @override
  String get promptHint => 'اسلامی رہنمائی اور عکاسی کے لیے کوئی زمرہ دبائیں';

  @override
  String get currentLanguage => 'موجودہ زبان';

  @override
  String get settingsLanguage => 'زبان کی ترتیبات';

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get chooseLanguage => 'اپنی زبان منتخب کریں';

  @override
  String get continueCta => 'جاری رکھیں';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count الفاظ',
      one: '$count لفظ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'اختیارات';

  @override
  String get newCta => 'نیا';

  @override
  String get actionsTitle => 'آپ کیا کرنا چاہتے ہیں؟';

  @override
  String get copy => 'کاپی کریں';

  @override
  String get share => 'شیئر کریں';

  @override
  String get close => 'بند کریں';

  @override
  String get copiedToast => 'کلپ بورڈ میں کاپی ہو گیا';

  @override
  String shareSubject(String category) {
    return 'أيارہ — $category';
  }

  @override
  String get regenerateErrorTitle => 'نیا جواب تیار نہیں ہو سکا';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nکیا آپ دوبارہ کوشش کرنا چاہتے ہیں؟';
  }

  @override
  String get cancelCta => 'منسوخ کریں';

  @override
  String get retryCta => 'دوبارہ کوشش کریں';

  @override
  String get authTitle => 'اپنا اکاؤنٹ بنائیں';

  @override
  String get continueAsGuest => 'مہمان کے طور پر جاری رکھیں';

  @override
  String get signInGoogle => 'Google کے ساتھ سائن ان کریں';

  @override
  String get signInApple => 'Apple کے ساتھ سائن ان کریں';

  @override
  String get signInEmail => 'ای میل کے ساتھ سائن ان کریں';

  @override
  String get upgradeWithApple => 'Apple کے ساتھ جاری رکھیں';

  @override
  String get mustAccept =>
      'آپ کو شرائط قبول کرنی ہوں گی اور رازداری کی پالیسی کو تسلیم کرنا ہوگا۔';

  @override
  String get termsLabel => 'میں خدمات کی شرائط قبول کرتا ہوں';

  @override
  String get privacyLabel => 'میں نے رازداری کی پالیسی پڑھی ہے';

  @override
  String get marketingOptIn => 'میں خبروں اور پیشکشیں وصول کرنے پر رضامند ہوں';

  @override
  String get openTerms => 'خدمات کی شرائط';

  @override
  String get openPrivacy => 'رازداری کی پالیسی';

  @override
  String get accountSection => 'اکاؤنٹ';

  @override
  String get guestMode => 'مہمان موڈ';

  @override
  String get signedIn => 'سائن ان ہو گئے';

  @override
  String get upgradeHint =>
      'اپنے اکاؤنٹ بنا کر اپنی عکاسیوں کو مختلف ڈیوائسوں پر محفوظ کریں۔';

  @override
  String get upgradeWithGoogle => 'Google کے ساتھ جاری رکھیں';

  @override
  String get signOut => 'سائن آؤٹ کریں';

  @override
  String get snackUpgraded => 'اکاؤنٹ Google سے اپ گریڈ ہو گیا ✅';

  @override
  String get snackSignedIn => 'Google سے سائن ان ہو گئے ✅';

  @override
  String get snackSignedOut => 'سائن آؤٹ ہو گئے';

  @override
  String get snackSignedInApple => 'Apple سے سائن ان ہو گئے ✅';

  @override
  String get snackSignedInGoogle => 'Google سے سائن ان ہو گئے ✅';

  @override
  String get snackUpgradedApple => 'اکاؤنٹ Apple سے اپ گریڈ ہو گیا ✅';

  @override
  String get snackUpgradedGoogle => 'اکاؤنٹ Google سے اپ گریڈ ہو گیا ✅';

  @override
  String get historyTitle => 'پچھلی عکاسیاں';

  @override
  String get historyOpenCta => 'پچھلی عکاسیاں';

  @override
  String get historyEmpty => 'ابھی کوئی محفوظ عکاسی نہیں۔';

  @override
  String get historyDeleteTitle => 'عکاسی حذف کریں؟';

  @override
  String get historyDeleteBody => 'یہ منتخب شے کو مستقل طور پر ہٹا دے گا۔';

  @override
  String get deleteCta => 'حذف کریں';

  @override
  String get historyButton => 'پچھلی عکاسیاں';

  @override
  String get historyEmptyTitle => 'ابھی کوئی عکاسی نہیں';

  @override
  String get historyEmptyBody =>
      'پہلے کچھ تیار کریں — آپ کی محفوظ اشیاء یہاں ظاہر ہوں گی۔';

  @override
  String get historyDelete => 'حذف کریں';

  @override
  String get footerTitle => 'ولایت، ایمان اور صبر کے ساتھ';

  @override
  String get footerSubtitle => 'ایک نماز میں';

  @override
  String get genericErrorSnack =>
      'کچھ غلط ہو گیا — براہ کرم ایک لمحے میں دوبارہ کوشش کریں۔';

  @override
  String get upgradeAccountCta =>
      'اپنی عکاسیوں کو مختلف ڈیوائسوں پر محفوظ کریں – ایک اکاؤنٹ بنائیں';

  @override
  String get deleteAccount => 'اکاؤنٹ حذف کریں';

  @override
  String get exportData => 'میرا ڈیٹا برآمد کریں';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'آہستے رہو 🐯\nأيارہ کو اگلے سے پہلے ایک لمحے کی ضرورت ہے…';

  @override
  String get rateDailyLimit =>
      'اب کے لیے آپ کی عکاسیاں ختم ہو گئی ہیں۔\nمزید عکاسیں حاصل کریں یا ولایت میں اپ گریڈ کریں۔';

  @override
  String get rateCreditsExhausted =>
      'آپ نے اپنی تمام عکاسیں استعمال کر لی ہیں۔\nجاری رکھنے کے لیے اپنی گنتی بڑھائیں یا ولایت میں اپ گریڈ کریں۔';

  @override
  String get rateGraceCreditsExhausted =>
      'اب کے لیے آپ کی عکاسیاں ختم ہو گئی ہیں۔\nمزید عکاسیں حاصل کریں یا ولایت میں اپ گریڈ کریں۔';

  @override
  String get premiumDescription =>
      'ولایت پریمیم خصوصیات، مستقبل کے زمرہ جات، اور ایک خصوصی بیج اتار دیتا ہے۔';

  @override
  String ratePlanExhausted(String plan) {
    return 'آپ کی عکاسیاں اب خالی ہیں۔ منصوبہ: $plan۔';
  }

  @override
  String rateCheckFailed(String message) {
    return 'آپ کی عکاسیوں کو چیک نہیں کیا جا سکا: $message';
  }

  @override
  String get rateCheckGenericError =>
      'آپ کی عکاسیوں کو چیک کرتے وقت کچھ غلط ہو گیا۔';

  @override
  String get aiFallbackGeneric =>
      'کچھ غلط ہو گیا — براہ کرم ایک لمحے میں دوبارہ کوشش کریں۔';

  @override
  String get limitSectionTitle => 'عکاسیاں';

  @override
  String get limitTodayLabel => 'استعمال';

  @override
  String limitCreditsLabel(Object credits) {
    return 'باقی عکاسیاں: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'منصوبہ: $plan';
  }

  @override
  String get limitLoadingLabel => 'لوڈ ہو رہا ہے…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'عکاسیاں';

  @override
  String get aiLimitSubtitle =>
      'ہر جواب 1 عکاسی استعمال کرتا ہے۔ معیاری میں ابتدائی عکاسیاں شامل ہیں۔ ولایت پریمیم زمرہ جات اور اپ ٹاپ اپ کو فعال کرتا ہے۔';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total عکاسیاں استعمال شدہ';
  }

  @override
  String get creditsSectionTitle => 'عکاسیاں';

  @override
  String get creditsUsageLabel => 'استعمال';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'باقی عکاسیاں: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'منصوبہ: $plan';
  }

  @override
  String get creditsLoadingLabel => 'لوڈ ہو رہا ہے…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'عکاسیاں';

  @override
  String get creditsSubtitle =>
      'ہر جواب 1 عکاسی استعمال کرتا ہے۔ معیاری میں ابتدائی عکاسیاں شامل ہیں۔ ولایت پریمیم زمرہ جات اور اپ ٹاپ اپ کو فعال کرتا ہے۔';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total عکاسیاں استعمال شدہ';
  }

  @override
  String get settingsDeleteTitle => 'اکاؤنٹ حذف کریں';

  @override
  String get settingsDeleteDescription =>
      'اپنے اکاؤنٹ اور تمام متعلقہ ڈیٹا کو مستقل طور پر حذف کریں۔';

  @override
  String get settingsDeleteButtonLabel => 'میرا اکاؤنٹ حذف کریں';

  @override
  String get settingsDeleteDialogTitle => 'اکاؤنٹ حذف کریں؟';

  @override
  String get settingsDeleteDialogBody =>
      'یہ کریڑی مستقل ہے اور کالعدم نہیں کی جا سکتی۔\n\nآپ کی تمام گفتگویاں، تاریخ اور اکاؤنٹ کی معلومات حذف کر دی جائے گی۔';

  @override
  String get settingsDeleteDialogCancel => 'منسوخ کریں';

  @override
  String get settingsDeleteDialogConfirm => 'حذف کریں';

  @override
  String get settingsFreeLimitUsedTitle => 'ابتدائی عکاسیاں استعمال شدہ';

  @override
  String get settingsFreeLimitUsedDescription =>
      'اس ڈیوائس کی ابتدائی عکاسیاں استعمال ہو گئی ہیں۔ جاری رکھنے کے لیے ولایت میں اپ گریڈ کریں یا مزید عکاسیں خریدیں۔';

  @override
  String get settingsStarterCreditsUsedTitle => 'ابتدائی عکاسیاں استعمال شدہ';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'اس ڈیوائس کی ابتدائی عکاسیاں استعمال ہو گئی ہیں۔ جاری رکھنے کے لیے ولایت میں اپ گریڈ کریں یا مزید عکاسیں خریدیں۔';

  @override
  String get deviceBoundError =>
      'یہ ڈیوائس پہلے سے ایک اور اکاؤنٹ سے جڑی ہے۔ براہ کرم اصل اکاؤنٹ سے سائن ان کریں۔';

  @override
  String get premiumTitle => 'ولایت موڈ';

  @override
  String get premiumSubtitleBasic => 'مکمل أيارہ کا تجربہ اتار دیں۔';

  @override
  String get premiumSubtitlePremium =>
      'آپ ولایت پر ہیں۔ مزید عکاسیوں کی ضرورت ہے؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'موجودہ منصوبہ: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'عکاسیاں: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'فی الوقت خریداری دستیاب نہیں۔';

  @override
  String get premiumSignInToPurchase =>
      'عکاسیں خریدنے یا ولایت کو اتارنے کے لیے سائن ان کریں۔';

  @override
  String get premiumRestorePurchases => 'خریداریوں کو بحال کریں';

  @override
  String get premiumProcessing => 'کارروائی میں ہے…';

  @override
  String get premiumRestoreHintTitle =>
      'کیا آپ نے اس ڈیوائس یا کسی اور پر ولایت یا عکاسیں خریدی ہیں؟';

  @override
  String get premiumRestoreHintBody =>
      'اگر وہ ظاہر نہیں ہو رہی ہیں تو اپنی خریداریوں کو بحال کریں۔';

  @override
  String get premiumBuyCredits200 => '200 عکاسیں خریدیں';

  @override
  String get premiumBuyCredits400 => '400 عکاسیں خریدیں';

  @override
  String get premiumBecomePremiumOneTime => 'ولایت موڈ میں اپ گریڈ کریں';

  @override
  String get premiumTopupHint =>
      'ولایت کے ساتھ، آپ جب ضرورت ہو اضافی عکاسیں شامل کر سکتے ہیں۔';

  @override
  String get premiumUpgradeCta => 'اپ گریڈ کریں';

  @override
  String get premiumRequiredForCategory =>
      'یہ زمرہ صرف ولایت کے صارفین کے لیے دستیاب ہے۔ تمام پریمیم مواد کو اتارنے کے لیے ترتیبات میں اپ گریڈ کریں۔';

  @override
  String get premiumBenefitsBasic =>
      'ولایت کو اتار کر اضافی عکاسیں حاصل کریں، پریمیم زمرہ جات تک رسائی حاصل کریں، اور جب بھی آپ کو رہنمائی کی ضرورت ہو جاری رکھیں۔';

  @override
  String get premiumBenefitsPremium =>
      'آپ ولایت موڈ میں ہیں۔ اگر آپ کم ہو رہے ہیں تو کچھ اضافی عکاسیں شامل کریں اور وقفوں کے بغیر جاری رکھیں۔';

  @override
  String get premiumButtonBecomePremium => 'ولایت کو اتاریں';

  @override
  String get premiumButtonTopup1000 => '1000 عکاسیں شامل کریں';

  @override
  String get premiumBadge => 'ولایت فعال';

  @override
  String get premiumLoadingStore => 'اسٹور لوڈ ہو رہا ہے…';

  @override
  String get premiumProductNotAvailable =>
      'یہ پروڈکٹ ابھی اسٹور میں دستیاب نہیں ہے۔ براہ کرم بعد میں دوبارہ کوشش کریں۔';

  @override
  String get premiumPurchaseError =>
      'خریداری میں کچھ غلط ہو گیا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get premiumBuyCredits100 => '100 عکاسیں شامل کریں';

  @override
  String get premiumFeatureLocked =>
      'اس خصوصیت تک رسائی کے لیے ولایت کو اتاریں۔';

  @override
  String get lockedCategoriesHint =>
      'کچھ زمرہ جات ولایت کے اراکین کے لیے محفوظ ہیں۔ آپ کے سفر میں ہر عکاسی کو دیکھنے کے لیے انہیں اتاریں۔';

  @override
  String get freePlanBlockedTitle => 'آپ نے اپنی ابتدائی عکاسیں ختم کر لیں';

  @override
  String get freePlanBlockedBody =>
      'آپ معیاری منصوبے پر ہیں جس میں ابتدائی عکاسیاں ہیں، اور آپ اس حد تک پہنچ گئے ہیں۔ جاری رکھنے کے لیے — اور پریمیم زمرہ جات کو اتارنے کے لیے — ولایت میں اپ گریڈ کریں۔';

  @override
  String get freePlanBlockedCtaGoPremium => 'نیچے ولایت کی اختیارات دیکھیں';

  @override
  String get graceBlockedTitle => 'آپ نے اپنی ابتدائی عکاسیں ختم کر لیں';

  @override
  String get graceBlockedBody =>
      'آپ معیاری منصوبے پر ہیں جس میں ابتدائی عکاسیاں ہیں، اور آپ اس حد تک پہنچ گئے ہیں۔ جاری رکھنے کے لیے — اور پریمیم زمرہ جات کو اتارنے کے لیے — ولایت میں اپ گریڈ کریں۔';

  @override
  String get graceBlockedCtaGoPremium => 'نیچے ولایت کی اختیارات دیکھیں';

  @override
  String get rateGuestMustSignIn =>
      'أيارہ اور آپ کی عکاسیوں کو استعمال کرنے کے لیے سائن ان کریں۔';

  @override
  String get guestNoCreditsTitle => 'مہمان موڈ';

  @override
  String get guestNoCreditsBody =>
      'ایک مہمان کے طور پر آپ ایپلیکیشن کو براؤز کر سکتے ہیں، لیکن آپ عکاسیوں کو استعمال نہیں کر سکتے۔ عکاسیوں کو استعمال کرنے اور خریداریوں کو اتارنے کے لیے بعد میں ترتیبات میں لاگ ان کریں۔';

  @override
  String get guestDialogContinue => 'جاری رکھیں';

  @override
  String get guestDialogLoginInstead => 'اس کی جگہ لاگ ان کریں';

  @override
  String get optionalLabel => 'اختیاری';

  @override
  String get accountDeleteSuccessTitle => 'اکاؤنٹ حذف ہو گیا';

  @override
  String get accountDeleteSuccessBody =>
      'آپ کے اکاؤنٹ اور متعلقہ ڈیٹا کو کامیابی سے حذف کر دیا گیا ہے۔';

  @override
  String get accountDeleteSuccessClose => 'بند کریں';

  @override
  String get accountDeleteErrorTitle => 'اکاؤنٹ حذف نہیں کیا جا سکا';

  @override
  String get accountDeleteErrorClose => 'ٹھیک ہے';

  @override
  String get accountDeleteReauthCancelled =>
      'دوبارہ تصدیق منسوخ کر دی گئی۔ براہ کرم دوبارہ سائن ان کریں اور حذف کرنے کی کوشش دوبارہ کریں۔';

  @override
  String get accountDeleteReauthRequired =>
      'اکاؤنٹ حذف کرنے کے لیے حالیہ لاگ ان کی ضرورت ہے۔ براہ کرم سائن آؤٹ کریں، دوبارہ سائن ان کریں، اور حذف کرنے کی کوشش دوبارہ کریں۔';

  @override
  String get settingsDeletePermanentWarning =>
      'یہ کریڑی مستقل ہے اور کالعدم نہیں کی جا سکتی۔ آپ کے اکاؤنٹ سے منسلک تمام ڈیٹا حذف کر دیا جائے گا۔';

  @override
  String get dailyGraceTitle => 'روزانہ رہنمائی';

  @override
  String get dailyGraceScriptureLabel => 'آج کی آیت';

  @override
  String get dailyGraceSaintLabel => 'اس ہفتے کے عالم';

  @override
  String get dailyGraceReflectionLabel => 'شام کی عکاسی';

  @override
  String get dailyGraceCopiedToast => 'آیت کلپ بورڈ میں کاپی ہو گئی';

  @override
  String get locationConsentLabel =>
      'أيارہ کو قبلہ سمت اور نماز کے اوقات کے لیے میری جگہ استعمال کرنے کی اجازت دیں';

  @override
  String get locationConsentHint =>
      'صرف ان خصوصیات کے لیے استعمال کیا جاتا ہے۔ آپ کی جگہ کبھی شیئر یا محفوظ نہیں کی جاتی۔';

  @override
  String get askPageTitle => 'أيارہ سے پوچھیں';

  @override
  String get askPageDescription =>
      'ایمان، نماز، زندگی، یا اسلامی عمل کے بارے میں کچھ بھی پوچھیں اور قرآن اور اہل البیت کی تعلیمات سے جڑی رہنمائی حاصل کریں۔';

  @override
  String get askPageInputHint => 'یہاں اپنا سوال لکھیں…';

  @override
  String get askPageSubmitCta => 'پوچھیں';

  @override
  String get askPageInputEmptyError => 'براہ کرم پہلے سوال لکھیں۔';

  @override
  String get askResultYourQuestion => 'آپ کا سوال';

  @override
  String get guidancePageTitle => 'قبلہ';

  @override
  String get qiblaFacingMecca => 'مکہ کی طرف رخ';

  @override
  String get qiblaCompassInstruction =>
      'اپنے فون کو گھمائیں جب تک سونے کی سوئی اوپر کی طرف اشارہ نہ کرے۔\nیہ سمت قبلہ (مکہ) کی طرف ہے۔';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS سگنل کمزور ہے۔ باہر جائیں اور دوبارہ کوشش دبائیں۔';

  @override
  String get qiblaRetry => 'دوبارہ کوشش کریں';

  @override
  String get qiblaTitle => 'قبلہ سمت';

  @override
  String qiblaDistanceLabel(String km) {
    return 'مکہ سے $km کلومیٹر';
  }

  @override
  String get qiblaLocationNeededTitle => 'جگہ کی ضرورت ہے';

  @override
  String get qiblaLocationNeededBody =>
      'جگہ کی رسائی کی اجازت دیں تاکہ أيارہ آپ جہاں ہیں وہاں سے کعبے کی سمت کا حساب لگا سکے۔';

  @override
  String get qiblaOpenSettings => 'ترتیبات کھولیں';

  @override
  String get qiblaCompassLoading => 'آپ کی جگہ تلاش ہو رہی ہے…';

  @override
  String get qiblaTowardMecca => 'مکہ کی طرف';

  @override
  String get prayerTimesTitle => 'نماز کے اوقات';

  @override
  String get prayerTimesFajr => 'فجر';

  @override
  String get prayerTimesDhuhr => 'ظہر';

  @override
  String get prayerTimesAsr => 'عصر';

  @override
  String get prayerTimesMaghrib => 'مغرب';

  @override
  String get prayerTimesIsha => 'عشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'جگہ کی ضرورت ہے';

  @override
  String get prayerTimesLocationNeededBody =>
      'جگہ کی رسائی کی اجازت دیں تاکہ أيارہ آپ کے شہر کے لیے درست نماز کے اوقات کا حساب لگا سکے۔';

  @override
  String get prayerTimesNextLabel => 'اگلی';

  @override
  String get prayerTimesDoneLabel => 'مکمل';

  @override
  String get monthlyPrayerTimesTitle => 'ماہانہ نماز کے اوقات';

  @override
  String get monthlyPrayerTimesViewButton => 'مکمل مہینہ دیکھیں';

  @override
  String get monthlyPrayerTimesNextMonth => 'اگلا مہینہ';

  @override
  String get monthlyPrayerTimesDayHeader => 'دن';

  @override
  String get sharePrayerTimes => 'نماز کے اوقات شیئر کریں';

  @override
  String get notificationsSectionTitle => 'اطلاعات';

  @override
  String get notificationsSectionSubtitle =>
      'نماز کی یادیں، کیلنڈر کے واقعات اور بہت کچھ';

  @override
  String get dailyReflectionReminderTitle => 'روزانہ عکاسی';

  @override
  String get dailyReflectionReminderDescription =>
      'أيارہ کھولنے اور اپنے ایمان سے جڑنے کے لیے ایک نرم روزانہ یاد دہانی۔';

  @override
  String get dailyReflectionReminderEnable => 'روزانہ یاد دہانی فعال کریں';

  @override
  String get dailyReflectionReminderTimeLabel => 'یاد دہانی کا وقت';

  @override
  String get prayerNotificationsTitle => 'نماز کی یادیں';

  @override
  String get prayerNotificationsDescription =>
      'ہر نماز کے وقت سے پہلے ایک نرم یاد دہانی حاصل کریں تاکہ آپ پوری دن جڑے رہیں۔';

  @override
  String get prayerNotificationsEnable => 'نماز کی یادیں فعال کریں';

  @override
  String get prayerNotificationsOpenSettings => 'اطلاع کی ترتیبات کھولیں';

  @override
  String get prayerNotificationsDenied => 'اطلاعات بند ہیں';

  @override
  String get prayerNotificationsDeniedHint =>
      'ترتیبات میں جائیں اور نماز کے وقت کی یادوں کو حاصل کرنے کے لیے أيارہ کے لیے اطلاعات کی اجازت دیں۔';

  @override
  String get notificationsConsentLabel =>
      'نماز کے اوقات کے لیے اطلاعات کی اجازت دیں';

  @override
  String get prayerNotifTitleFajr => '🌅 فجر — صبح کی نماز';

  @override
  String get prayerNotifBodyFajr =>
      'فجر اہل البیت کی صبح کی نماز ہے۔ امام علی (ع) نے کہا: فجر کی نماز کو ویسے ہی محفوظ رکھو جیسے تم اپنے سب سے قیمتی امانت کو محفوظ رکھتے ہو۔ اٹھو، اپنے آپ کو صاف کرو، اور اللہ کے سامنے کھڑے ہو۔';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ظہر — دوپہر کی نماز';

  @override
  String get prayerNotifBodyDhuhr =>
      'اہل البیت کے اماموں نے یاد دہانی کے ہر لمحے کو قدر دی۔ اپنے دن کو روکو، ظہر کو عصر کے ساتھ ملاؤ اگر ضرورت ہو، اور اپنے دل کو اللہ کی طرف لوٹاؤ۔';

  @override
  String get prayerNotifTitleAsr => '🌤️ عصر — دوپہر کے بعد کی نماز';

  @override
  String get prayerNotifBodyAsr =>
      'نماز کی حفاظت کریں، کیونکہ یہ تم اور اللہ کے درمیان عہد ہے۔ عصر کا وقت آ گیا ہے — اسے یاد دہانی کے بغیر مت جانے دیں۔';

  @override
  String get prayerNotifTitleMaghrib => '🌇 مغرب — غروب آفتاب کی نماز';

  @override
  String get prayerNotifBodyMaghrib =>
      'سورج غروب ہو گیا ہے — ایک لمحہ جو اہل البیت کے لیے دعا کے لیے مقدس تھا۔ مغرب کی نماز دیں اور اللہ سے رات شروع ہونے سے پہلے دعا میں اپنے ہاتھ کھولیں۔';

  @override
  String get prayerNotifTitleIsha => '🌙 عشاء — رات کی نماز';

  @override
  String get prayerNotifBodyIsha =>
      'اپنے دن کو اللہ کی صحبت میں ختم کریں۔ اماموں نے عشاء کے بعد صلاۃ اللیل کی حوصلہ افزائی کی — لیکن پہلے، اپنی عشاء مکمل کریں اور اس کی یاد دہانی کے ساتھ دن ختم کریں۔';

  @override
  String get outOfReflectionsBannerText =>
      'آپ نے اپنی تمام عکاسیں استعمال کر لیں';

  @override
  String get outOfReflectionsBannerCta => 'مزید حاصل کریں';

  @override
  String get dhikrPageTitle => 'ذکر';

  @override
  String get dhikrTapToCount => 'گنتی کرنے کے لیے دائرے کو دبائیں';

  @override
  String get dhikrResetButton => 'دوبارہ ترتیب دیں';

  @override
  String get dhikrComplete => 'ماشاء اللہ';

  @override
  String get dhikrCompleteMessage =>
      'آپ نے اللہ کی 100 یادوں کو مکمل کیا ہے۔ وہ آپ کے دل کے لیے روشنی ہوں۔';

  @override
  String get disclaimerTitle => 'اس ایپلیکیشن کی رہنمائی کے بارے میں';

  @override
  String get disclaimerBody =>
      'أيارہ اسلامی عکاسیں، یادیں، اور روحانی مواد فراہم کرتا ہے تاکہ آپ کے ایمان کے سفر کو قرآن اور اہل البیت کی تعلیمات سے جڑے ہوئے طریقے سے معاونت کی جائے۔ یہ مواد عام طور پر معلوماتی اور الہام انگیز مقاصد کے لیے فراہم کیا جاتا ہے۔\n\nأيارہ قابل اہل عالموں کی جگہ نہیں لیتا۔\nاس ایپلیکیشن میں رہنمائی ایک سیکھے ہوئے اسلامی عالم، مرجع، یا الہیاتی طریقے سے تربیت یافتہ استاد کا متبادل نہیں ہے۔ شیعہ اسلام میں، مذہبی رہنمائی جعفری فقہ (فقہ) کے نظریہ اور ایک زندہ مرجع (نقل کے ذریعہ) — ایک قابل حرمت فقیہ جس کے فیصلے مومنین کو مذہبی عمل میں ہدایت کرتے ہیں — سے جڑی ہے۔ اگر آپ کے پاس مذہبی حکم، حلال اور حرام کے معاملات، یا ذاتی مذہبی واجبات کے بارے میں سوالات ہیں تو براہ کرم اپنی کمیونٹی میں ایک قابل حرمت مرجع یا عالم سے رہنمائی حاصل کریں۔\n\nیہ ایپلیکیشن مذہبی حکم جاری نہیں کرتی۔\nأيارہ فقہ یا ذاتی مذہبی واجبات کے معاملات پر سے سے باندھنے والے فیصلے نہیں کرتا۔ یہاں کچھ بھی فتویٰ یا پابند مذہبی ہدایت کے طور پر دیکھا جانا چاہیے۔\n\nاہل البیت کا مرکزیت۔\nشیعہ اسلام میں، نبی محمد ﷺ اور ان کے پاکیزہ خاندان — اہل البیت — قرآن کے بعد اسلامی کمیونٹی کے سلطہ ہدایتیں ہیں۔ اہل البیت کے بارہ اماموں میں اسلامی تعلیم کے الہی منصوبے کے مترجم ہیں۔ اس ایپلیکیشن میں مواد اس روایت کو عکاس کرتا ہے اور اسے وفادارانہ طریقے سے احترام کرنے کی کوشش کرتا ہے۔\n\nکمیونٹی اہم ہے۔\nیہ ایپلیکیشن ایمان سے آپ کی مشغولیت کو حوصلہ دینے کا مقصد رکھتی ہے جبکہ اپنی مقامی مسجد، اسلامی مرکز، اور مذہبی کمیونٹی کے اہم کردار کو گہرائی سے احترام دیتی ہے۔ ہم آپ کو اپنے قریب قابل ماہرین سے جڑے اور سیکھنے کی حوصلہ افزائی کرتے ہیں۔';

  @override
  String get disclaimerClose => 'میں سمجھتا ہوں';

  @override
  String get disclaimerInfoTooltip => 'اس ایپلیکیشن کی رہنمائی کے بارے میں';

  @override
  String get disclaimerSettingsSubtitle =>
      'صرف عام معلوماتی مقاصد کے لیے۔ مکمل اعلام پڑھنے کے لیے دبائیں۔';

  @override
  String get disclaimerSectionHeader => 'رہنمائی کا اعلام';

  @override
  String get navHome => 'گھر';

  @override
  String get navReflect => 'عکاسی کریں';

  @override
  String get navDuas => 'دعائیں';

  @override
  String get navCalendar => 'کیلنڈر';

  @override
  String get dashboardToday => 'آج';

  @override
  String get dashboardComingUp => 'آنے والی';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'دن',
      one: 'دن',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'فوری رسائی';

  @override
  String get quickActionQibla => 'قبلہ';

  @override
  String get quickActionDhikr => 'ذکر';

  @override
  String get quickActionDailyGrace => 'رہنمائی';

  @override
  String get quickActionPrayerTimes => 'نماز کے اوقات';

  @override
  String get askAyaraTitle => 'أيارہ سے پوچھیں';

  @override
  String get askAyaraSubtitle =>
      'کوئی بھی اسلامی سوال پوچھیں اور ایک سوچ سمجھ کر جواب حاصل کریں۔';

  @override
  String get askAyaraHint => 'مثال: رمضان کی اہمیت کیا ہے؟';

  @override
  String get askAyaraSubmit => 'پوچھیں';

  @override
  String get wisdomOfTheDayTitle => 'آج کی حکمت';

  @override
  String get calendarScreenTitle => 'اسلامی کیلنڈر';

  @override
  String get calendarUpcomingOccasions => 'آنے والے مواقع';

  @override
  String get calendarOccasionRemindersTitle => 'موقع کی یادیں';

  @override
  String get calendarOccasionRemindersHint =>
      'ہر موقع سے پہلے شام کو اطلاع دی جاتی ہے';

  @override
  String get calendarNotifPermissionDenied =>
      'اطلاع کی اجازت مسترد کر دی گئی۔ اپنی ڈیوائس کی ترتیبات میں اسے فعال کریں۔';

  @override
  String get calendarNoEvents => 'کوئی آنے والے واقعات نہیں ملے۔';

  @override
  String get calendarAddToPhone => 'ਫੋਨ ਕੈਲੰਡਰ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get calendarAddedToPhone => 'ਕੈਲੰਡਰ ਵਿੱਚ ਸ਼ਾਮਲ ਕੀਤਾ ਗਿਆ';

  @override
  String get calendarCountdownToday => 'آج';

  @override
  String get calendarCountdownTomorrow => 'کل';

  @override
  String calendarCountdownDays(int days) {
    return '$days دن میں';
  }

  @override
  String get calendarAH => 'ہـ';

  @override
  String get calendarMonthJan => 'جنوری';

  @override
  String get calendarMonthFeb => 'فروری';

  @override
  String get calendarMonthMar => 'مارچ';

  @override
  String get calendarMonthApr => 'اپریل';

  @override
  String get calendarMonthMay => 'مئی';

  @override
  String get calendarMonthJun => 'جون';

  @override
  String get calendarMonthJul => 'جولائی';

  @override
  String get calendarMonthAug => 'اگست';

  @override
  String get calendarMonthSep => 'ستمبر';

  @override
  String get calendarMonthOct => 'اکتوبر';

  @override
  String get calendarMonthNov => 'نومبر';

  @override
  String get calendarMonthDec => 'دسمبر';

  @override
  String get calendarSeasonMuharramEarly => 'محرم کے دن — کربلا کو یاد رکھیں';

  @override
  String get calendarSeasonAshura => 'عاشورہ — یا حسین (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرم — سوگ اور عکاسی کے دن';

  @override
  String get calendarSeasonArbaeen => 'اربعین — حسین کے چالیس دن';

  @override
  String get calendarSeasonRoadToArbaeen => 'اربعین کا راستہ';

  @override
  String get calendarSeasonMabath => 'مبعث مبارک — وحی کی صبح';

  @override
  String get calendarSeasonMidShaban =>
      'شعبان کے درمیان — امام المہدی (ع) کی سالگرہ';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارک — قرآن کا مہینہ';

  @override
  String get calendarSeasonGhadir => 'عید الغدیر مبارک!';

  @override
  String get hijriMonth1 => 'محرم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربیع الاول';

  @override
  String get hijriMonth4 => 'ربیع الثانی';

  @override
  String get hijriMonth5 => 'جمادی الاول';

  @override
  String get hijriMonth6 => 'جمادی الثانی';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذوالقعدہ';

  @override
  String get hijriMonth12 => 'ذوالحجہ';

  @override
  String get duasScreenTitle => 'دعائیں اور زیارت';

  @override
  String get duasSearchHint => 'دعائیں اور زیارت تلاش کریں…';

  @override
  String get duasFilterAll => 'تمام';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دعائیں اور زیارت',
      one: '$count دعا',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'کوئی دعا نہیں ملی۔';

  @override
  String get duaCategoryDaily => 'روزانہ';

  @override
  String get duaCategoryWeekly => 'ہفتہ وار';

  @override
  String get duaCategoryOccasions => 'مواقع';

  @override
  String get duaCategoryZiyarat => 'زیارت';

  @override
  String get duaCategoryTasbih => 'تسبیح';

  @override
  String get eventTypeBirth => 'پیدائش';

  @override
  String get eventTypeMartyrdom => 'شہادت';

  @override
  String get eventTypeOccasion => 'موقع';

  @override
  String get duaCopyTooltip => 'ترجمہ کاپی کریں';

  @override
  String get duaToggleTransliteration => 'ترجمہ و توضیح';

  @override
  String get duaToggleTranslation => 'ترجمہ';

  @override
  String get duaAskAiLabel => 'أيارہ سے اس دعا کی وضاحت کرنے کو کہیں';

  @override
  String get duaAskAiLockedLabel => 'أيارہ سے پوچھیں (ولایت)';

  @override
  String get duaAiLockedMessage =>
      'أيارہ کی وضاحتیں ولایت کے اراکین کے لیے دستیاب ہیں۔ ترتیبات میں اپ گریڈ کریں۔';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" کے بارے میں أيارہ سے پوچھیں — جلد آنے والی!';
  }

  @override
  String get duaCopiedToast => 'دعا کلپ بورڈ میں کاپی ہو گئی۔';

  @override
  String get tasbihAllahuAkbarMeaning => 'اللہ سب سے بڑا ہے';

  @override
  String get tasbihAlhamdulillahMeaning => 'تمام تعریفیں اللہ کو ہیں';

  @override
  String get tasbihSubhanallahMeaning => 'اللہ پاک ہے';

  @override
  String get tasbihResetTooltip => 'دوبارہ ترتیب دیں';

  @override
  String get tasbihCompleteTitle => 'تسبیح مکمل';

  @override
  String get tasbihCompleteMessage => 'اللہ آپ کی ذکر کو قبول کرے۔';

  @override
  String get tasbihTapHint => 'گنتی کرنے کے لیے کہیں بھی دبائیں';

  @override
  String get tasbihatScreenTitle => 'نماز کی ہدایت';

  @override
  String get tasbihatScreenSubtitle => 'نماز کی تسبیحیں';

  @override
  String get tasbihatScreenDescription =>
      'روزانہ کی نمازوں کے دوران اور بعد میں پڑھی جانے والی تسبیحوں کی مکمل ہدایت — اہل البیت (ع) کی روایت کے مطابق۔';

  @override
  String get tasbihatArba3Title => 'تسبیحات الارباعہ';

  @override
  String get tasbihatArba3Subtitle => 'تیسری اور چوتھی رکعت میں پڑھی جاتی ہے';

  @override
  String get tasbihatArba3Info =>
      'شیعہ فقہ میں، تسبیحات الارباعہ ظہر، عصر، مغرب اور عشاء کی تیسری اور چوتھی رکعات میں سورۃ الفاتحہ کو بدلتی ہے۔ یہ ایک بار پڑھنا واجب ہے اور تین بار پڑھنا مستحب ہے۔';

  @override
  String get tasbihatArba3Translation =>
      'اللہ پاک ہے · تمام تعریفیں اللہ کے لیے ہیں\nاللہ کے علاوہ کوئی خدا نہیں · اللہ سب سے بڑا ہے';

  @override
  String get tasbihatArba3CompleteTitle => 'تلاوت مکمل';

  @override
  String get tasbihatArba3CompleteMessage =>
      'اللہ آپ کی نماز کو قبول کرے — آمین';

  @override
  String get tasbihatArba3TapHint => 'ہر تلاوت کے بعد دبائیں';

  @override
  String get tasbihatZahraSubtitle => 'ہر نماز کے بعد · 100 موتیاں';

  @override
  String get tasbihatZahraOriginLabel => 'ماخذ';

  @override
  String get tasbihatZahraHadith =>
      'بی بی فاطمہ الزہرا (س) نے نبی ﷺ سے ایک نوکر مانگا۔ انہوں نے کہا: کیا میں آپ کو کچھ بہتری نہ دکھاؤں؟ ہر نماز کے بعد سبحان اللہ 33 بار، الحمد للہ 33 بار، اور اللہ اکبر 34 بار کہیں۔ یہ نوکر کے لیے آپ کے لیے بہتر ہے۔';

  @override
  String get tasbihatZahraHadithSource => '— بحار الانوار، جلد 85';

  @override
  String get tasbihatZahraOpenCounter => 'تسبیح کاؤنٹر کھولیں';

  @override
  String get tasbihatDuasTitle => 'سفارش شدہ دعائیں';

  @override
  String get tasbihatDuasSubtitle => 'نماز کو مکمل کرنے کے بعد';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آیۃ الکرسی';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ہر فرض نماز کے بعد';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورۃ البقرۃ 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'جو شخص ہر فرض نماز کے بعد آیۃ الکرسی پڑھے، جنت تک اس کے درمیان موت کے علاوہ کچھ نہیں ہے۔ امام الباقر (ع) نے کہا کہ یہ قرآن کی سب سے بڑی آیات میں سے ہے۔';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen =>
      'ہر نماز کے بعد · تمام دعاؤں کو مہر کرتا ہے';

  @override
  String get tasbihatDuaSalawatSource => 'امام صادق (ع) — الکافی';

  @override
  String get tasbihatDuaSalawatNote =>
      'نبی ﷺ اور ان کے پاکیزہ خاندان (آل محمد) پر سلام بھیجنا ہر دعا کو مہر کرنے کے لیے سفارش کی جاتی ہے۔ امام صادق (ع) نے کہا: \"ہر دعا تعلیق میں ہے جب تک آپ محمد اور ان کے خاندان پر صلوات نہ بھیجیں۔\"';

  @override
  String get tasbihatDuaFarajTitle => 'دعائے الفرج';

  @override
  String get tasbihatDuaFarajWhen =>
      'ہر نماز کے بعد · ہمارے زمانے کے امام کے لیے';

  @override
  String get tasbihatDuaFarajSource =>
      'امام الحسن العسکری (ع) کی طرف سے سکھائی جاتی ہے';

  @override
  String get tasbihatDuaFarajNote =>
      'امام المہدی (ع)، بارہویں امام کی ظہور کے لیے ایک دعا، ان کے والد نے سکھائی۔ روزانہ شیعہ مومنین ہر نماز کے بعد زندہ امام کے فریضے کے طور پر پڑھتے ہیں۔';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'بی بی فاطمہ کی تسبیح';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'مغرب اور عشاء کے بعد · خاص طور پر سفارش کی جاتی ہے';

  @override
  String get tasbihatDuaTasbihFatimaSource => 'امام الباقر (ع) — بحار الانوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'امام الباقر (ع) نے کہا کہ عشاء کے بعد سونے سے پہلے تسبیح الزہرا پڑھنا 1000 رکعات کی نفل نماز سے بہتر ہے۔ اس کی روشنی آسمان کی طرف چڑھتی ہے۔';

  @override
  String get tasbihFatimaGiftPre => 'نبی کی طرف سے ایک تحفہ';

  @override
  String get tasbihFatimaGiftPost => 'ہر نماز کے بعد پڑھی جاتی ہے';

  @override
  String get prayerTrackerTitle => 'نماز کا ٹریکر';

  @override
  String get prayerTrackerPrayed => 'نماز پڑھی';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count دن کی لڑی';
  }

  @override
  String get prayerTrackerAllComplete => 'آج تمام نمازیں مکمل۔ اللہ قبول کرے۔';

  @override
  String get dhikrTrackerTitle => 'تسبیح الزہرا';

  @override
  String get dhikrTrackerCompletedToday => 'آج مکمل ہوئی';

  @override
  String get dhikrTrackerNotDoneToday => 'آج نہیں کی گئی';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count دن کی لڑی';
  }

  @override
  String get dhikrReminderTitle => 'تسبیح یاد دہانی';

  @override
  String get dhikrReminderDescription =>
      'اپنی تسبیح الزہرا (س) پڑھنے کے لیے ایک نرم روزانہ یاد دہانی۔';

  @override
  String get dhikrReminderEnable => 'تسبیح یاد دہانی فعال کریں';

  @override
  String get dhikrReminderTimeLabel => 'یاد دہانی کا وقت';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'روزانہ حدیث';

  @override
  String get hadithLabelArabic => 'عربی';

  @override
  String get hadithLabelTranslation => 'ترجمہ';

  @override
  String get hadithBadge => 'حدیث';

  @override
  String get hadithShare => 'یہ حدیث شیئر کریں';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia أيارہ';
  }

  @override
  String get hadithNavPrevious => 'پچھلی';

  @override
  String get hadithNavNext => 'اگلی';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 معصومین';

  @override
  String get imamsScreenSubtitle =>
      'نبی، بی بی فاطمہ، اور بارہ اماموں — اسلام کی معصوم رہنمائی';

  @override
  String get imamLabelBorn => 'پیدائش';

  @override
  String get imamLabelMartyrdom => 'شہادت';

  @override
  String get imamLabelStatus => 'حالت';

  @override
  String get imamSectionBiography => 'حیات';

  @override
  String get imamSectionFamousSaying => 'مشہور قول';

  @override
  String get imamRoleProphet => 'آخری نبی';

  @override
  String get imamRoleInfallible => 'معصوم';

  @override
  String get imamOrdinal1 => 'پہلا امام';

  @override
  String get imamOrdinal2 => 'دوسرا امام';

  @override
  String get imamOrdinal3 => 'تیسرا امام';

  @override
  String get imamOrdinal4 => 'چوتھا امام';

  @override
  String get imamOrdinal5 => 'پانچواں امام';

  @override
  String get imamOrdinal6 => 'چھٹا امام';

  @override
  String get imamOrdinal7 => 'ستواں امام';

  @override
  String get imamOrdinal8 => 'آٹھواں امام';

  @override
  String get imamOrdinal9 => 'نواں امام';

  @override
  String get imamOrdinal10 => 'دسواں امام';

  @override
  String get imamOrdinal11 => 'گیارہواں امام';

  @override
  String get imamOrdinal12 => 'بارہواں امام';

  @override
  String get duaAudioScreenTitle => 'دعائیں سنیں';

  @override
  String get duaAudioScreenSubtitle =>
      'سننے کے لیے دعا منتخب کریں۔ بجانے یا موقوف کرنے کے لیے ٹائل دبائیں۔';

  @override
  String get duaAudioComingSoonMessage =>
      'اس دعا کی آڈیو آنے والی اپ ڈیٹ میں دستیاب ہوگی۔';

  @override
  String get duaAudioClose => 'بند کریں';

  @override
  String get duaAudioError =>
      'آڈیو لوڈ نہیں کیا جا سکا۔ براہ کرم اپنی رابطہ کاری کو چیک کریں۔';

  @override
  String get duaAudioMetaTransmittedBy => 'ترسیل کنندہ';

  @override
  String get duaAudioMetaOccasion => 'موقع';

  @override
  String get duaAudioMetaDuration => 'دورانیہ';

  @override
  String get quickActionDailyHadith => 'روزانہ حدیث';

  @override
  String get quickAction14Masumeen => '14 معصومین';

  @override
  String get quickActionListenDuas => 'سنیں';

  @override
  String get quickActionTasbihat => 'نماز کی ہدایت';

  @override
  String get pilgrimageSectionTitle => 'مقدس سفر';

  @override
  String get pilgrimageSectionSubtitle =>
      'حج اور عمرہ کی مکمل ہدایتیں — مکہ میں اللہ کے مقدس گھر کی زیارت';

  @override
  String get hajjCardTitle => 'حج';

  @override
  String get hajjCardSubtitle => 'اسلام کا پانچواں ستون';

  @override
  String get hajjCardDescription =>
      'بڑی سالانہ زیارت — ہر صلاحیت رکھنے والے مسلمان کے لیے ایک بار لازمی';

  @override
  String get hajjScreenTitle => 'حج کی ہدایت';

  @override
  String get hajjScreenSubtitle => 'بڑی زیارت کے لیے مرحلہ وار ہدایت';

  @override
  String get umrahCardTitle => 'عمرہ';

  @override
  String get umrahCardSubtitle => 'چھوٹی زیارت';

  @override
  String get umrahCardDescription =>
      'ایک گہرا روحانی سفر جو سال کے کسی بھی وقت کیا جا سکتا ہے';

  @override
  String get umrahScreenTitle => 'عمرہ کی ہدایت';

  @override
  String get umrahScreenSubtitle => 'چھوٹی زیارت کے لیے مرحلہ وار ہدایت';

  @override
  String get pilgrimageStepsTitle => 'رسومات اور مراحل';

  @override
  String get pilgrimageImportantNotesTitle => 'اہم نوٹس';

  @override
  String get pilgrimageDuaTitle => 'ਇਸ ਕਦਮ ਲਈ ਦੁਆ';

  @override
  String get pilgrimageJafariNoteTitle => 'ਜਾਫਰੀ ਫਿਕ੍ਹ ਨੋਟ';

  @override
  String get pilgrimageComplete => '✓ ਪੂਰਾ';

  @override
  String get pilgrimageMarkDone => 'ਪੂਰਾ ਹੋਣ ਦੇ ਤੌਰ \'ਤੇ ਚਿੰਨ੍ਹਿਤ ਕਰੋ';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ਵਿੱਚੋਂ $total ਕਦਮ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes ਮਿੰਟ';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'شیعہ زائرین';

  @override
  String get pilgrimageShiaNoteBody =>
      'شیعہ زائرین روایتی طور پر مدینے کا بھی سفر کرتے ہیں تاکہ نبی محمد (ص) کی قبر مسجد النبوی میں دیکھ سکیں، اور اماموں کی قبریں جنۃ البقیع میں۔ یہ زیارتیں بہت زیادہ روحانی اہمیت رکھتی ہیں اور اکثر شیعہ مسلمانوں کے لیے سفر کا ایک لازمی حصہ سمجھی جاتی ہیں۔';

  @override
  String get hajjIntro =>
      'حج اسلام کا پانچواں ستون ہے، ہر مسلمان کے لیے جو جسمانی اور مالی لحاظ سے قابل ہو، ایک بار واجب ہے۔ ذوالحجہ کے مہینے میں کیا جاتا ہے، یہ نبی ابراہیم (ع)، ان کے بیٹے اسماعیل (ع)، اور بی بی ہاجرہ کے قدموں پر چلتا ہے۔ شیعہ مسلمانوں کے لیے، حج میں مدینے میں نبی (ص) اور اہل البیت کی آرام کی جگہوں کی زیارت کا شامل ہے۔';

  @override
  String get umrahIntro =>
      'عمرہ مکہ میں چھوٹی زیارت ہے اور، حج کے برعکس، سال کے کسی بھی وقت کی جا سکتی ہے۔ اگرچہ لازمی نہیں، لیکن یہ بہت روحانی انعام رکھتی ہے اور عبادت کا ایک بہت سفارش شدہ عمل سمجھی جاتی ہے۔ یہ حج کی کچھ رسومات شیئر کرتی ہے لیکن کم ہے، چار اہم رسومات پر مشتمل ہے۔';
}
