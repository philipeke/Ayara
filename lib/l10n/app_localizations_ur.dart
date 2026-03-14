// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'عیارہ';

  @override
  String get languageSelectTitle => 'اپنی زبان منتخب کریں';

  @override
  String get languageSelectSub => 'آپ یہ بعد میں ترتیبات میں تبدیل کر سکتے ہیں';

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
  String get planPremium => 'ولایہ';

  @override
  String get categorySlot01 => 'روزمرہ کی رہنمائی';

  @override
  String get categorySlot02 => 'ایمان اور اعتماد';

  @override
  String get categorySlot03 => 'نماز کی عکاسی';

  @override
  String get categorySlot04 => 'صبر اور امید';

  @override
  String get categorySlot05 => 'معافی مانگنا';

  @override
  String get categorySlot06 => 'رحمت اور شفقت';

  @override
  String get categorySlot07 => 'ایمان اور طاقت';

  @override
  String get categorySlot08 => 'شکر گزار دل';

  @override
  String get categorySlot09 => 'زندگی کا مقصد';

  @override
  String get categorySlot10 => 'خاندانی تعلقات';

  @override
  String get categorySlot11 => 'اندرونی سکون';

  @override
  String get categorySlot12 => 'نبوی حکمت';

  @override
  String get categorySlot13 => 'اچھے اخلاق';

  @override
  String get categorySlot14 => 'فتنے کا مقابلہ';

  @override
  String get categorySlot15 => 'شام کا ذکر';

  @override
  String get categoryCustom => 'ذاتی غور و فکر';

  @override
  String get dhikrMeaningSubhanallah => 'اللہ پاک ہے';

  @override
  String get dhikrMeaningAlhamdulillah => 'تمام تعریف اللہ کے لیے ہے';

  @override
  String get dhikrMeaningAllahuAkbar => 'اللہ سب سے عظیم ہے';

  @override
  String get quranVerseHeartAtRest =>
      'یقینی طور پر، اللہ کی یاد میں دل کو سکون ملتا ہے۔';

  @override
  String get promptHint =>
      'اسلامی رہنمائی اور غور و فکر کے لیے کوئی زمرہ منتخب کریں';

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
  String get copiedToast => 'کلپ بورڈ میں کاپی ہوگیا';

  @override
  String shareSubject(String category) {
    return 'عیارہ — $category';
  }

  @override
  String get regenerateErrorTitle => 'نیا جواب تیار نہیں ہوسکا';

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
  String get signInGoogle => 'Google سے سائن ان کریں';

  @override
  String get signInApple => 'Apple سے سائن ان کریں';

  @override
  String get signInEmail => 'ای میل سے سائن ان کریں';

  @override
  String get upgradeWithApple => 'Apple کے ساتھ جاری رکھیں';

  @override
  String get mustAccept =>
      'آپ کو شرائط قبول کرنی چاہیں اور رازداری کی پالیسی تسلیم کرنی چاہیے۔';

  @override
  String get termsLabel => 'میں خدمات کی شرائط قبول کرتا ہوں';

  @override
  String get privacyLabel => 'میں نے رازداری کی پالیسی پڑھ لی ہے';

  @override
  String get marketingOptIn => 'میں خبریں اور پیشکشیں موصول کرنے پر رضامند ہوں';

  @override
  String get openTerms => 'خدمات کی شرائط';

  @override
  String get openPrivacy => 'رازداری کی پالیسی';

  @override
  String get accountSection => 'اکاؤنٹ';

  @override
  String get guestMode => 'مہمان موڈ';

  @override
  String get signedIn => 'سائن ان';

  @override
  String get upgradeHint =>
      'اپنے غور و فکر کو اجہاڑوں میں محفوظ کریں اکاؤنٹ بنا کر۔';

  @override
  String get upgradeWithGoogle => 'Google کے ساتھ جاری رکھیں';

  @override
  String get signOut => 'سائن آؤٹ';

  @override
  String get snackUpgraded => 'اکاؤنٹ Google سے اپ گریڈ ہوگیا ✅';

  @override
  String get snackSignedIn => 'Google سے سائن ان ہوگئے ✅';

  @override
  String get snackSignedOut => 'سائن آؤٹ کر دیا گیا';

  @override
  String get snackSignedInApple => 'Apple سے سائن ان ہوگئے ✅';

  @override
  String get snackSignedInGoogle => 'Google سے سائن ان ہوگئے ✅';

  @override
  String get snackUpgradedApple => 'اکاؤنٹ Apple سے اپ گریڈ ہوگیا ✅';

  @override
  String get snackUpgradedGoogle => 'اکاؤنٹ Google سے اپ گریڈ ہوگیا ✅';

  @override
  String get historyTitle => 'پچھلی عکاسیاں';

  @override
  String get historyOpenCta => 'پچھلی عکاسیاں';

  @override
  String get historyEmpty => 'ابھی کوئی محفوظ عکاسی نہیں۔';

  @override
  String get historyDeleteTitle => 'عکاسی حذف کریں؟';

  @override
  String get historyDeleteBody => 'یہ منتخب چیز کو مستقل طور پر ہٹا دے گا۔';

  @override
  String get deleteCta => 'حذف کریں';

  @override
  String get historyButton => 'پچھلی عکاسیاں';

  @override
  String get historyEmptyTitle => 'ابھی کوئی عکاسی نہیں';

  @override
  String get historyEmptyBody =>
      'پہلے کچھ تیار کریں — آپ کی محفوظ شدہ اشیاء یہاں ظاہر ہوں گی۔';

  @override
  String get historyDelete => 'حذف کریں';

  @override
  String get footerTitle => 'ولایہ، ایمان اور صبر کے ساتھ';

  @override
  String get footerSubtitle => 'ایک نماز ایک وقت میں';

  @override
  String get genericErrorSnack =>
      'کچھ غلط ہوگیا — براہ کرم ایک لمحہ میں دوبارہ کوشش کریں۔';

  @override
  String get upgradeAccountCta =>
      'اپنی عکاسیوں کو اجہاڑوں میں محفوظ کریں – اکاؤنٹ بنائیں';

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
      'آسانی سے بھائی 🐯\nعیارہ کو اگلے سے پہلے ایک لمحہ چاہیے…';

  @override
  String get rateDailyLimit =>
      'ابھی آپ کی عکاسیاں ختم ہو گئی ہیں۔\nمزید عکاسیاں حاصل کریں یا ولایہ میں اپ گریڈ کریں۔';

  @override
  String get rateCreditsExhausted =>
      'آپ نے اپنی تمام عکاسیاں استعمال کر دی ہیں۔\nجاری رکھنے کے لیے ٹاپ اپ کریں یا ولایہ میں اپ گریڈ کریں۔';

  @override
  String get rateGraceCreditsExhausted =>
      'ابھی آپ کی عکاسیاں ختم ہو گئی ہیں۔\nمزید عکاسیاں حاصل کریں یا ولایہ میں اپ گریڈ کریں۔';

  @override
  String get premiumDescription =>
      'ولایہ پریمیم خصوصیات، مستقبل کی زمرہ جات، اور ایک خصوصی بیج کو کھول دیتا ہے۔';

  @override
  String ratePlanExhausted(String plan) {
    return 'آپ کی عکاسیاں ابھی خالی ہیں۔ منصوبہ: $plan۔';
  }

  @override
  String rateCheckFailed(String message) {
    return 'آپ کی عکاسیاں چیک نہیں کر سکے: $message';
  }

  @override
  String get rateCheckGenericError =>
      'آپ کی عکاسیوں کو چیک کرتے وقت کچھ غلط ہوگیا۔';

  @override
  String get aiFallbackGeneric =>
      'کچھ غلط ہوگیا — براہ کرم ایک لمحہ میں دوبارہ کوشش کریں۔';

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
      'عکاسی کارڈ میں استعمال کے اعدادوشمار حاصل کیے جارہے ہیں۔';

  @override
  String get aiLimitTitle => 'عکاسیاں';

  @override
  String get aiLimitSubtitle =>
      'ہر جواب 1 عکاسی استعمال کرتا ہے۔ معیاری میں ابتدائی عکاسیاں شامل ہیں۔ ولایہ پریمیم زمرہ جات کو کھول دیتا ہے اور ٹاپ اپ کو فعال کرتا ہے۔';

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
      'عکاسی کے اعدادوشمار حاصل کیے جارہے ہیں۔';

  @override
  String get creditsTitle => 'عکاسیاں';

  @override
  String get creditsSubtitle =>
      'ہر جواب 1 عکاسی استعمال کرتا ہے۔ معیاری میں ابتدائی عکاسیاں شامل ہیں۔ ولایہ پریمیم زمرہ جات کو کھول دیتا ہے اور ٹاپ اپ کو فعال کرتا ہے۔';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total عکاسیاں استعمال شدہ';
  }

  @override
  String get settingsDeleteTitle => 'اکاؤنٹ حذف کریں';

  @override
  String get settingsDeleteDescription =>
      'اپنے اکاؤنٹ اور تمام وابستہ ڈیٹا کو مستقل طور پر حذف کریں۔';

  @override
  String get settingsDeleteButtonLabel => 'میرا اکاؤنٹ حذف کریں';

  @override
  String get settingsDeleteDialogTitle => 'اکاؤنٹ حذف کریں؟';

  @override
  String get settingsDeleteDialogBody =>
      'یہ عمل مستقل ہے اور واپس نہیں کیا جا سکتا۔\n\nآپ کی تمام چیٹس، تاریخ اور اکاؤنٹ کی معلومات حذف کر دی جائے گی۔';

  @override
  String get settingsDeleteDialogCancel => 'منسوخ کریں';

  @override
  String get settingsDeleteDialogConfirm => 'حذف کریں';

  @override
  String get settingsFreeLimitUsedTitle => 'ابتدائی عکاسیاں استعمال شدہ';

  @override
  String get settingsFreeLimitUsedDescription =>
      'اس ڈیوائس کے لیے ابتدائی عکاسیاں استعمال ہو گئی ہیں۔ جاری رکھنے کے لیے ولایہ میں اپ گریڈ کریں یا مزید عکاسیاں خریدیں۔';

  @override
  String get settingsStarterCreditsUsedTitle => 'ابتدائی عکاسیاں استعمال شدہ';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'اس ڈیوائس کے لیے ابتدائی عکاسیاں استعمال ہو گئی ہیں۔ جاری رکھنے کے لیے ولایہ میں اپ گریڈ کریں یا مزید عکاسیاں خریدیں۔';

  @override
  String get deviceBoundError =>
      'یہ ڈیوائس پہلے سے ایک دوسرے اکاؤنٹ سے منسلک ہے۔ براہ کرم اصل اکاؤنٹ کے ساتھ سائن ان کریں۔';

  @override
  String get premiumTitle => 'ولایہ موڈ';

  @override
  String get premiumSubtitleBasic => 'عیارہ کی مکمل تجربہ کو کھول دیں۔';

  @override
  String get premiumSubtitlePremium =>
      'آپ ولایہ پر ہیں۔ مزید عکاسیوں کی ضرورت ہے؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'موجودہ منصوبہ: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'عکاسیاں: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'خریداریاں ابھی دستیاب نہیں ہیں۔';

  @override
  String get premiumSignInToPurchase =>
      'عکاسیاں خریدنے یا ولایہ کو کھولنے کے لیے سائن ان کریں۔';

  @override
  String get premiumRestorePurchases => 'خریداریاں بحال کریں';

  @override
  String get premiumProcessing => 'پروسیسنگ…';

  @override
  String get premiumRestoreHintTitle =>
      'کیا آپ نے پہلے سے اس ڈیوائس یا کسی اور پر ولایہ یا عکاسیاں خریدی ہیں؟';

  @override
  String get premiumRestoreHintBody =>
      'اگر وہ ظاہر نہ ہو رہے ہوں تو اپنی خریداریوں کو بحال کریں۔';

  @override
  String get premiumBuyCredits200 => '200 عکاسیاں خریدیں';

  @override
  String get premiumBuyCredits400 => '400 عکاسیاں خریدیں';

  @override
  String get premiumBecomePremiumOneTime => 'ولایہ موڈ میں اپ گریڈ کریں';

  @override
  String get premiumTopupHint =>
      'ولایہ کے ساتھ، آپ جب بھی چاہیں اضافی عکاسیوں کے ساتھ ٹاپ اپ کر سکتے ہیں۔';

  @override
  String get premiumUpgradeCta => 'اپ گریڈ کریں';

  @override
  String get premiumRequiredForCategory =>
      'یہ زمرہ صرف ولایہ صارفین کے لیے دستیاب ہے۔ تمام پریمیم مواد کو کھولنے کے لیے ترتیبات میں اپ گریڈ کریں۔';

  @override
  String get premiumBenefitsBasic =>
      'ولایہ کو کھول دیں اضافی عکاسیوں کے لیے، پریمیم زمرہ جات تک رسائی حاصل کریں، اور جب بھی رہنمائی کی ضرورت ہو جاری رکھیں۔';

  @override
  String get premiumBenefitsPremium =>
      'آپ ولایہ موڈ میں ہیں۔ اگر آپ کم ہو رہے ہیں تو کچھ اضافی عکاسیاں شامل کریں اور بغیر کسی رکاوٹ کے جاری رکھیں۔';

  @override
  String get premiumButtonBecomePremium => 'ولایہ کو کھول دیں';

  @override
  String get premiumButtonTopup1000 => '1000 عکاسیاں شامل کریں';

  @override
  String get premiumBadge => 'ولایہ فعال';

  @override
  String get premiumLoadingStore => 'سٹور لوڈ ہو رہا ہے…';

  @override
  String get premiumProductNotAvailable =>
      'یہ مصنوعات ابھی سٹور میں دستیاب نہیں ہے۔ براہ کرم بعد میں دوبارہ کوشش کریں۔';

  @override
  String get premiumPurchaseError =>
      'خریداری میں کچھ غلط ہوگیا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get premiumBuyCredits100 => '100 عکاسیاں شامل کریں';

  @override
  String get premiumFeatureLocked =>
      'اس خصوصیت تک رسائی حاصل کرنے کے لیے ولایہ کو کھول دیں۔';

  @override
  String get lockedCategoriesHint =>
      'کچھ زمرہ جات ولایہ کے اراکین کے لیے محفوظ ہیں۔ انہیں اپنے سفر میں ہر عکاسی کو تلاش کرنے کے لیے کھول دیں۔';

  @override
  String get freePlanBlockedTitle =>
      'آپ نے اپنی ابتدائی عکاسیاں استعمال کر دیں';

  @override
  String get freePlanBlockedBody =>
      'آپ معیاری منصوبہ پر ہیں ابتدائی عکاسیوں کے ساتھ، اور آپ حد تک پہنچ گئے ہیں۔ جاری رکھنے کے لیے — اور پریمیم زمرہ جات کو کھولنے کے لیے — ولایہ میں اپ گریڈ کریں۔';

  @override
  String get freePlanBlockedCtaGoPremium => 'نیچے ولایہ کے اختیارات دیکھیں';

  @override
  String get graceBlockedTitle => 'آپ نے اپنی ابتدائی عکاسیاں استعمال کر دیں';

  @override
  String get graceBlockedBody =>
      'آپ معیاری منصوبہ پر ہیں ابتدائی عکاسیوں کے ساتھ، اور آپ حد تک پہنچ گئے ہیں۔ جاری رکھنے کے لیے — اور پریمیم زمرہ جات کو کھولنے کے لیے — ولایہ میں اپ گریڈ کریں۔';

  @override
  String get graceBlockedCtaGoPremium => 'نیچے ولایہ کے اختیارات دیکھیں';

  @override
  String get rateGuestMustSignIn =>
      'عیارہ استعمال کرنے اور آپ کی عکاسیوں کے لیے سائن ان کریں۔';

  @override
  String get guestNoCreditsTitle => 'مہمان موڈ';

  @override
  String get guestNoCreditsBody =>
      'ایک مہمان کے طور پر آپ ایپ کو براؤز کر سکتے ہیں، لیکن آپ عکاسیوں کو استعمال نہیں کر سکتے۔ عکاسیوں کو استعمال کرنے اور خریداریوں کو کھولنے کے لیے بعد میں ترتیبات میں لاگ ان کریں۔';

  @override
  String get guestDialogContinue => 'جاری رکھیں';

  @override
  String get guestDialogLoginInstead => 'اس کی بجائے لاگ ان کریں';

  @override
  String get optionalLabel => 'اختیاری';

  @override
  String get accountDeleteSuccessTitle => 'اکاؤنٹ حذف کر دیا گیا';

  @override
  String get accountDeleteSuccessBody =>
      'آپ کا اکاؤنٹ اور وابستہ ڈیٹا کامیابی سے حذف کر دیا گیا۔';

  @override
  String get accountDeleteSuccessClose => 'بند کریں';

  @override
  String get accountDeleteErrorTitle => 'اکاؤنٹ حذف نہیں کیا جا سکا';

  @override
  String get accountDeleteErrorClose => 'ٹھیک ہے';

  @override
  String get accountDeleteReauthCancelled =>
      'دوبارہ تصدیق منسوخ کر دی گئی۔ براہ کرم دوبارہ سائن ان کریں اور حذف کرنے کی دوبارہ کوشش کریں۔';

  @override
  String get accountDeleteReauthRequired =>
      'اکاؤنٹ کی حذف کے لیے حالیہ لاگ ان کی ضرورت ہے۔ براہ کرم سائن آؤٹ کریں، دوبارہ سائن ان کریں، اور حذف کرنے کی دوبارہ کوشش کریں۔';

  @override
  String get settingsDeletePermanentWarning =>
      'یہ عمل مستقل ہے اور واپس نہیں کیا جا سکتا۔ آپ کے اکاؤنٹ سے وابستہ تمام ڈیٹا حذف کر دیا جائے گا۔';

  @override
  String get dailyGraceTitle => 'روزمرہ کی رہنمائی';

  @override
  String get dailyGraceScriptureLabel => 'آج کی آیت';

  @override
  String get dailyGraceSaintLabel => 'ہفتے کی شخصیت';

  @override
  String get dailyGraceReflectionLabel => 'شام کی عکاسی';

  @override
  String get dailyGraceCopiedToast => 'آیت کلپ بورڈ میں کاپی ہوگئی';

  @override
  String get locationConsentLabel =>
      'عیارہ کو قبلہ کی سمت اور نماز کے اوقات کے لیے میری جگہ استعمال کرنے دیں';

  @override
  String get locationConsentHint =>
      'صرف یہ خصوصیات کے لیے استعمال کیا جاتا ہے۔ آپ کی جگہ کو کبھی شیئر یا محفوظ نہیں کیا جاتا۔';

  @override
  String get askPageTitle => 'عیارہ سے پوچھیں';

  @override
  String get askPageDescription =>
      'ایمان، نماز، زندگی، یا اسلامی عمل کے بارے میں کچھ بھی پوچھیں اور قرآن اور اہل البیت کی تعلیمات سے مستند رہنمائی حاصل کریں۔';

  @override
  String get askPageInputHint => 'یہاں اپنا سوال لکھیں…';

  @override
  String get askPageSubmitCta => 'پوچھیں';

  @override
  String get askPageInputEmptyError => 'براہ کرم پہلے ایک سوال لکھیں۔';

  @override
  String get askResultYourQuestion => 'آپ کا سوال';

  @override
  String get guidancePageTitle => 'قبلہ';

  @override
  String get qiblaFacingMecca => 'مکہ کی طرف رخ';

  @override
  String get qiblaCompassInstruction =>
      'اپنے فون کو اس وقت تک گھمائیں جب تک سونے کی سوئی اوپر کی طرف نہ ہو۔\nیہ سمت قبلہ (مکہ) کی طرف ہے۔';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS سگنل کمزور ہے۔ باہر جائیں اور دوبارہ کوشش کریں۔';

  @override
  String get qiblaRetry => 'دوبارہ کوشش کریں';

  @override
  String get qiblaTitle => 'قبلہ کی سمت';

  @override
  String qiblaDistanceLabel(String km) {
    return 'مکہ سے $km کلومیٹر';
  }

  @override
  String get qiblaLocationNeededTitle => 'جگہ کی ضرورت ہے';

  @override
  String get qiblaLocationNeededBody =>
      'عیارہ کو آپ کہاں ہیں وہاں سے کعبے کی سمت کا حساب لگانے کے لیے جگہ تک رسائی دیں۔';

  @override
  String get qiblaOpenSettings => 'ترتیبات کھولیں';

  @override
  String get qiblaCompassLoading => 'آپ کی جگہ تلاش کی جا رہی ہے…';

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
      'عیارہ کو آپ کے شہر کے لیے درست نماز کے اوقات کا حساب لگانے کے لیے جگہ تک رسائی دیں۔';

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
  String get dailyReflectionReminderTitle => 'روزمرہ کی عکاسی';

  @override
  String get dailyReflectionReminderDescription =>
      'عیارہ کو کھولنے اور اپنے ایمان سے جڑنے کے لیے ایک نرم روز مرہ یادگار۔';

  @override
  String get dailyReflectionReminderEnable => 'روزمرہ یادگار فعال کریں';

  @override
  String get dailyReflectionReminderTimeLabel => 'یادگار کا وقت';

  @override
  String get prayerNotificationsTitle => 'نماز کی یادیں';

  @override
  String get prayerNotificationsDescription =>
      'ہر نماز کے وقت سے پہلے ایک نرم یادگار حاصل کریں تاکہ آپ پورے دن اپنے ایمان سے جڑے رہیں۔';

  @override
  String get prayerNotificationsEnable => 'نماز کی یادیں فعال کریں';

  @override
  String get prayerNotificationsOpenSettings => 'اطلاع کی ترتیبات کھولیں';

  @override
  String get prayerNotificationsDenied => 'اطلاعات غیر فعال ہیں';

  @override
  String get prayerNotificationsDeniedHint =>
      'ترتیبات میں جائیں اور عیارہ کے لیے اطلاعات کو اجازت دیں نماز کے اوقات کی یادوں کے لیے۔';

  @override
  String get notificationsConsentLabel =>
      'نماز کے اوقات کے لیے اطلاعات کی اجازت دیں';

  @override
  String get prayerNotifTitleFajr => '🌅 فجر — فجر کی نماز';

  @override
  String get prayerNotifBodyFajr =>
      'فجر اہل البیت کی صبحوں کی نماز ہے۔ امام علی (علیہ السلام) نے کہا: صبح کی نماز کی حفاظت کریں جیسے آپ اپنی سب سے قیمتی چیز کی حفاظت کریں۔ اٹھیں، خود کو پاک کریں، اور اللہ کے سامنے کھڑے ہوں۔';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ظہر — دوپہر کی نماز';

  @override
  String get prayerNotifBodyDhuhr =>
      'اہل البیت کے اماموں نے یاد کے ہر لمحے کو قیمتی سمجھا۔ اپنے دن کو روکیں، ضرورت پڑنے پر ظہر کو عصر کے ساتھ ملائیں، اور اپنے دل کو اللہ کی طرف واپس کریں۔';

  @override
  String get prayerNotifTitleAsr => '🌤️ عصر — دوپہر بعد کی نماز';

  @override
  String get prayerNotifBodyAsr =>
      'نماز کی حفاظت کریں، یہ آپ اور اللہ کے درمیان معاہدہ ہے۔ عصر کا وقت آ گیا ہے — اسے یاد کے بغیر گزرنے نہ دیں۔';

  @override
  String get prayerNotifTitleMaghrib => '🌇 مغرب — سورج ڈوبنے کی نماز';

  @override
  String get prayerNotifBodyMaghrib =>
      'سورج ڈوب گیا — ایک لمحہ جو اہل البیت نے دعا کے لیے مقدس سمجھا۔ مغرب کی نماز دیں اور رات شروع ہونے سے پہلے اللہ سے دعا مانگیں۔';

  @override
  String get prayerNotifTitleIsha => '🌙 عشاء — رات کی نماز';

  @override
  String get prayerNotifBodyIsha =>
      'اپنے دن کو اللہ کی صحبت میں ختم کریں۔ اماموں نے عشاء کے بعد صلاۃ اللیل کی ترغیب دی — لیکن پہلے اپنا عشاء مکمل کریں اور دن کو اس کی یاد کے ساتھ بند کریں۔';

  @override
  String get outOfReflectionsBannerText =>
      'آپ نے اپنی تمام عکاسیاں استعمال کر دیں';

  @override
  String get outOfReflectionsBannerCta => 'مزید حاصل کریں';

  @override
  String get dhikrPageTitle => 'ذکر';

  @override
  String get dhikrTapToCount => 'گننے کے لیے دائرے کو ٹیپ کریں';

  @override
  String get dhikrResetButton => 'ری سیٹ کریں';

  @override
  String get dhikrComplete => 'ما شاء اللہ';

  @override
  String get dhikrCompleteMessage =>
      'آپ نے اللہ کی 100 یادیں مکمل کر دیں۔ انہیں آپ کے دل کے لیے روشنی ہو۔';

  @override
  String get disclaimerTitle => 'اس ایپ کی رہنمائی کے بارے میں';

  @override
  String get disclaimerBody =>
      'عیارہ اسلامی عکاسی، یادیں، اور روحانی مواد فراہم کرتا ہے آپ کے ایمان کے سفر کو سہارا دینے کے لیے، قرآن اور اہل البیت کی تعلیمات سے ریشہ دار۔ یہ مواد عام معلوماتی اور الہام بخش مقاصد کے لیے پیش کیا جاتا ہے۔\n\nعیارہ قابل حذف علمائے کرام کی جگہ نہیں لیتا۔\nاس ایپ میں رہنمائی ایک سیکھی ہوئی اسلامی عالم، مرجع، یا لاہوتی طور پر تربیت یافتہ استاد کی جگہ نہیں ہے۔ شیعہ اسلام میں، مذہبی رہنمائی جعفری فقہ کے مکتب فکر (فقہ) اور ایک زندہ مرجع کی پیروی کی روایت میں ہے — ایک قابل شرعی عالم جس کے احکام ایمان والوں کو مذہبی عمل میں رہنمائی کرتے ہیں۔ اگر آپ کے پاس مذہبی احکام، حلال اور حرام کے معاملات، یا ذاتی مذہبی ذمہ داریوں کے بارے میں سوالات ہیں تو براہ کرم ایک قابل عالم یا اپنی برادری میں ایک عالم سے مشورہ کریں۔\n\nیہ ایپ مذہبی احکام نہیں دیتا۔\nعیارہ فقہ یا ذاتی مذہبی ذمہ داریوں کے معاملات پر قطعی فیصلہ نہیں دیتا۔ یہاں کچھ بھی فتویٰ یا پابند مذہبی ہدایت سے نہیں سمجھا جانا چاہیے۔\n\nاہل البیت کی مرکزیت۔\nشیعہ اسلام میں، نبی محمد صلی اللہ علیہ و آلہ وسلم اور ان کے پاک اہل البیت — اہل البیت — قرآن کے بعد اسلامی برادری کے قطعی رہنمائے ہیں۔ اہل البیت کے بارہ اماموں کو الہی طور پر اسلامی تعلیم کے تفسیر کار مقرر کیے گئے ہیں۔ اس ایپ میں مواد اس روایت کو ظاہر کرتا ہے اور اسے وفادارانہ انجام دینے کی کوشش کرتا ہے۔\n\nبرادری کے معاملات۔\nیہ ایپ ایمان کے ساتھ آپ کی شرکت کو شامل کرنے کا مقصد رکھتا ہے جب کہ آپ کے مقامی مسجد، اسلامی مرکز، اور مذہبی برادری کے اہم کردار کو گہری احترام دیتے ہوئے۔ ہم آپ کو اپنے قریب قابل اساتذہ کے ساتھ منسلک رہنے اور ان سے سیکھنے کی ترغیب دیتے ہیں۔';

  @override
  String get disclaimerClose => 'میں سمجھ گیا';

  @override
  String get disclaimerInfoTooltip => 'اس ایپ کی رہنمائی کے بارے میں';

  @override
  String get disclaimerSettingsSubtitle =>
      'عام معلوماتی مقاصد کے لیے۔ مکمل شرح کے لیے ٹیپ کریں۔';

  @override
  String get disclaimerSectionHeader => 'رہنمائی کا شرح';

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
  String get dashboardComingUp => 'آنے والا';

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
  String get askAyaraTitle => 'عیارہ سے پوچھیں';

  @override
  String get askAyaraSubtitle =>
      'کوئی اسلامی سوال پوچھیں اور ایک سوچا سمجھا جواب حاصل کریں۔';

  @override
  String get askAyaraHint => 'مثال کے طور پر رمضان کی اہمیت کیا ہے؟';

  @override
  String get askAyaraSubmit => 'پوچھیں';

  @override
  String get wisdomOfTheDayTitle => 'آج کی حکمت';

  @override
  String get calendarScreenTitle => 'اسلامی کیلنڈر';

  @override
  String get calendarUpcomingOccasions => 'آنے والے مواقع';

  @override
  String get calendarOccasionRemindersTitle => 'مواقع کی یادیں';

  @override
  String get calendarOccasionRemindersHint =>
      'ہر موقع سے ایک شام پہلے اطلاع دی گئی';

  @override
  String get calendarNotifPermissionDenied =>
      'اطلاع کی اجازت مسترد کر دی گئی۔ اپنی ڈیوائس کی ترتیبات میں اسے فعال کریں۔';

  @override
  String get calendarNoEvents => 'کوئی آنے والے واقعات نہیں ملے۔';

  @override
  String get calendarAddToPhone => 'فون کے کیلنڈر میں شامل کریں';

  @override
  String get calendarAddedToPhone => 'کیلنڈر میں شامل کر دیا گیا';

  @override
  String get calendarCountdownToday => 'آج';

  @override
  String get calendarCountdownTomorrow => 'کل';

  @override
  String calendarCountdownDays(int days) {
    return '$days دن میں';
  }

  @override
  String get calendarAH => 'ہ';

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
  String get calendarSeasonMuharramEarly => 'محرم کے دن — کربلا یاد رکھیں';

  @override
  String get calendarSeasonAshura => 'عاشورہ — یا حسین (علیہ السلام)';

  @override
  String get calendarSeasonMuharramLate => 'محرم — سوگ اور عکاسی کے دن';

  @override
  String get calendarSeasonArbaeen => 'اربعین — حسین کے چالیس دن';

  @override
  String get calendarSeasonRoadToArbaeen => 'اربعین کا سفر';

  @override
  String get calendarSeasonMabath => 'مبعث مبارک — وحی کی صبح';

  @override
  String get calendarSeasonMidShaban =>
      'شعبان کا نصف — امام المہدی (علیہ السلام) کی سالگرہ';

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
  String get hijriMonth11 => 'ذو القعدہ';

  @override
  String get hijriMonth12 => 'ذو الحجہ';

  @override
  String get duasScreenTitle => 'دعائیں اور زیارات';

  @override
  String get duasSearchHint => 'دعائیں، زیارات تلاش کریں…';

  @override
  String get duasFilterAll => 'تمام';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دعائیں اور زیارات',
      one: '$count دعا',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'کوئی دعائیں نہیں ملیں۔';

  @override
  String get duaCategoryDaily => 'روزمرہ';

  @override
  String get duaCategoryWeekly => 'ہفتہ وار';

  @override
  String get duaCategoryOccasions => 'مواقع';

  @override
  String get duaCategoryZiyarat => 'زیارات';

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
  String get duaToggleTransliteration => 'نقلِ ترجمہ';

  @override
  String get duaToggleTranslation => 'ترجمہ';

  @override
  String get duaAskAiLabel => 'عیارہ کو اس دعا کی وضاحت کے لیے پوچھیں';

  @override
  String get duaAskAiLockedLabel => 'عیارہ سے پوچھیں (ولایہ)';

  @override
  String get duaAiLockedMessage =>
      'عیارہ کی وضاحتیں ولایہ کے ارکان کے لیے دستیاب ہیں۔ ترتیبات میں اپ گریڈ کریں۔';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" کے بارے میں عیارہ سے پوچھیں — جلد آ رہا ہے!';
  }

  @override
  String get duaCopiedToast => 'دعا کلپ بورڈ میں کاپی ہوگئی۔';

  @override
  String get tasbihAllahuAkbarMeaning => 'اللہ سب سے عظیم ہے';

  @override
  String get tasbihAlhamdulillahMeaning => 'تمام تعریف اللہ کے لیے ہے';

  @override
  String get tasbihSubhanallahMeaning => 'اللہ پاک ہے';

  @override
  String get tasbihResetTooltip => 'ری سیٹ کریں';

  @override
  String get tasbihCompleteTitle => 'تسبیح مکمل';

  @override
  String get tasbihCompleteMessage => 'اللہ آپ کے ذکر کو قبول کرے۔';

  @override
  String get tasbihTapHint => 'گننے کے لیے کہیں بھی ٹیپ کریں';

  @override
  String get tasbihatScreenTitle => 'نماز کی رہنمائی';

  @override
  String get tasbihatScreenSubtitle => 'نماز کی تسبیحات';

  @override
  String get tasbihatScreenDescription =>
      'نماز کے دوران اور بعد میں کہی جانے والی تسبیحات کی مکمل رہنمائی — اہل البیت (علیہم السلام) کی روایت کے مطابق۔';

  @override
  String get tasbihatArba3Title => 'تسبیحات الاربعہ';

  @override
  String get tasbihatArba3Subtitle => 'تیسرے اور چوتھے رکعت میں کہی جاتی ہے';

  @override
  String get tasbihatArba3Info =>
      'شیعہ فقہ میں، تسبیحات الاربعہ ظہر، عصر، مغرب، اور عشاء کی تیسری اور چوتھی رکعت میں سورہ الفاتحہ کی جگہ لیتی ہے۔ اسے ایک بار کہنا لازمی (واجب) ہے، اور تین بار کہنا مستحب ہے۔';

  @override
  String get tasbihatArba3Translation =>
      'اللہ پاک ہے · تمام تعریف اللہ کے لیے ہے\nاللہ کے علاوہ کوئی خدا نہیں · اللہ سب سے عظیم ہے';

  @override
  String get tasbihatArba3CompleteTitle => 'تلاوت مکمل';

  @override
  String get tasbihatArba3CompleteMessage => 'آپ کی نماز قبول ہو — آمین';

  @override
  String get tasbihatArba3TapHint => 'ہر تلاوت کے بعد ٹیپ کریں';

  @override
  String get tasbihatZahraSubtitle => 'ہر نماز کے بعد · 100 موتیاں';

  @override
  String get tasbihatZahraOriginLabel => 'اصل';

  @override
  String get tasbihatZahraHadith =>
      'حضرت فاطمہ الزہرا (سلام اللہ علیہا) نے نبی صلی اللہ علیہ و آلہ وسلم سے ایک خادم کے لیے کہا۔ انہوں نے کہا: \"کیا میں آپ کو کسی بہتر چیز کی طرف رہنمائی نہ کروں؟ ہر نماز کے بعد سبحان اللہ 33 بار، الحمد للہ 33 بار، اور اللہ اکبر 34 بار کہیں۔ یہ آپ کے لیے ایک خادم سے بہتر ہے۔\"';

  @override
  String get tasbihatZahraHadithSource => '— بحار الانوار، جلد 85';

  @override
  String get tasbihatZahraOpenCounter => 'تسبیح کاؤنٹر کھولیں';

  @override
  String get tasbihatDuasTitle => 'تجویز کردہ دعائیں';

  @override
  String get tasbihatDuasSubtitle => 'اپنی نماز مکمل کرنے کے بعد';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آیت الکرسی';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ہر فرض نماز کے بعد';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورہ البقرہ 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'جو شخص ہر فرض نماز کے بعد آیت الکرسی کی تلاوت کرے، موت کے علاوہ اس کے اور جنت کے درمیان کوئی چیز نہیں رہتی۔ امام الباقر (علیہ السلام) نے کہا کہ یہ قرآن کی سب سے بڑی آیتوں میں سے ہے۔';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen =>
      'ہر نماز کے بعد · تمام دعاؤں کو ختم کرتا ہے';

  @override
  String get tasbihatDuaSalawatSource => 'امام الصادق (علیہ السلام) — الکافی';

  @override
  String get tasbihatDuaSalawatNote =>
      'نبی صلی اللہ علیہ و آلہ وسلم اور ان کے پاک اہل البیت (آل محمد) پر درود بھیجنا ہر دعا کو ختم کرنے کے لیے تجویز کردہ ہے۔ امام الصادق (علیہ السلام) نے کہا: \"کوئی بھی دعا معلق رہتی ہے جب تک آپ محمد اور ان کے خاندان پر صلوات نہیں بھیجتے۔\"';

  @override
  String get tasbihatDuaFarajTitle => 'دعائے فرج';

  @override
  String get tasbihatDuaFarajWhen => 'ہر نماز کے بعد · امام زماں کے لیے';

  @override
  String get tasbihatDuaFarajSource =>
      'امام الحسن العسکری (علیہ السلام) کی تعلیم';

  @override
  String get tasbihatDuaFarajNote =>
      'امام المہدی (عج) کی دوبارہ ظہور کے لیے ایک دعا، جو ان کے والد نے سکھائی۔ یہ دعا اکثر بہت سے شیعہ مسلمانوں کی طرف سے نماز کے بعد امام کی محبت میں پڑھی جاتی ہے۔';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'سیدہ فاطمہ کی تسبیح';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'مغرب اور عشاء کے بعد · خاص طور پر تجویز کردہ';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'امام الباقر (علیہ السلام) — بحار الانوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'امام الباقر (علیہ السلام) نے کہا کہ عشاء کے بعد سونے سے پہلے تسبیح الزہرا کی تلاوت 1000 رکعتوں کی نفل نماز سے بہتر ہے۔ اس کی روشنی آسمان کی طرف چڑھتی ہے۔';

  @override
  String get tasbihFatimaGiftPre => 'نبی کا تحفہ';

  @override
  String get tasbihFatimaGiftPost => 'ہر نماز کے بعد کہا جاتا ہے';

  @override
  String get prayerTrackerTitle => 'نماز کی نگرانی';

  @override
  String get prayerTrackerPrayed => 'نماز پڑھی';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count دن کا سلسلہ';
  }

  @override
  String get prayerTrackerAllComplete => 'آج تمام نمازیں مکمل۔ اللہ قبول کرے۔';

  @override
  String get dhikrTrackerTitle => 'تسبیح الزہرا';

  @override
  String get dhikrTrackerCompletedToday => 'آج مکمل';

  @override
  String get dhikrTrackerNotDoneToday => 'آج نہیں کی';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count دن کا سلسلہ';
  }

  @override
  String get dhikrReminderTitle => 'تسبیح یادگار';

  @override
  String get dhikrReminderDescription =>
      'تسبیح الزہرا (سلام اللہ علیہا) کی تلاوت کے لیے روز مرہ نرم یادگار۔';

  @override
  String get dhikrReminderEnable => 'تسبیح یادگار فعال کریں';

  @override
  String get dhikrReminderTimeLabel => 'یادگار کا وقت';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'روزمرہ حدیث';

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
    return '\"$text\"\n\n— $imam\n$source\n\nعیارہ کے ذریعے';
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
  String get imamsScreenTitle => 'چودہ معصومین';

  @override
  String get imamsScreenSubtitle =>
      'نبی، بی بی فاطمہ، اور بارہ امام — بارہ امامی شیعہ اسلام میں پاک اور معصوم رہنما';

  @override
  String get imamLabelBorn => 'پیدائش';

  @override
  String get imamLabelMartyrdom => 'شہادت';

  @override
  String get imamLabelStatus => 'حالت';

  @override
  String get imamSectionBiography => 'سوانح حیات';

  @override
  String get imamSectionFamousSaying => 'مشہور قول';

  @override
  String get imamRoleProphet => 'آخری نبی';

  @override
  String get imamRoleInfallible => 'معصوم';

  @override
  String get imamOrdinal1 => '1 ویں امام';

  @override
  String get imamOrdinal2 => '2 ویں امام';

  @override
  String get imamOrdinal3 => '3 ویں امام';

  @override
  String get imamOrdinal4 => '4 ویں امام';

  @override
  String get imamOrdinal5 => '5 ویں امام';

  @override
  String get imamOrdinal6 => '6 ویں امام';

  @override
  String get imamOrdinal7 => '7 ویں امام';

  @override
  String get imamOrdinal8 => '8 ویں امام';

  @override
  String get imamOrdinal9 => '9 ویں امام';

  @override
  String get imamOrdinal10 => '10 ویں امام';

  @override
  String get imamOrdinal11 => '11 ویں امام';

  @override
  String get imamOrdinal12 => '12 ویں امام';

  @override
  String get duaAudioScreenTitle => 'دعائیں سنیں';

  @override
  String get duaAudioScreenSubtitle =>
      'سننے کے لیے دعا منتخب کریں۔ چلانے یا موقوف کرنے کے لیے ٹائل کو ٹیپ کریں۔';

  @override
  String get duaAudioComingSoonMessage =>
      'اس دعا کے لیے آڈیو ایک آنے والی اپ ڈیٹ میں دستیاب ہوگی۔';

  @override
  String get duaAudioClose => 'بند کریں';

  @override
  String get duaAudioError =>
      'آڈیو لوڈ نہیں ہو سکی۔ براہ کرم اپنی رابطہ چیک کریں۔';

  @override
  String get duaAudioMetaTransmittedBy => 'منتقل کردہ';

  @override
  String get duaAudioMetaOccasion => 'موقع';

  @override
  String get duaAudioMetaDuration => 'مدت';

  @override
  String get quickActionDailyHadith => 'روزمرہ حدیث';

  @override
  String get quickAction14Masumeen => 'چودہ معصومین';

  @override
  String get quickActionListenDuas => 'سنیں';

  @override
  String get quickActionTasbihat => 'نماز کی رہنمائی';

  @override
  String get pilgrimageSectionTitle => 'مقدس سفر';

  @override
  String get pilgrimageSectionSubtitle =>
      'حج اور عمرہ کی مکمل رہنمائی — مکہ میں اللہ کے مقدس گھر کا حج';

  @override
  String get hajjCardTitle => 'حج';

  @override
  String get hajjCardSubtitle => 'اسلام کا پانچواں ستون';

  @override
  String get hajjCardDescription =>
      'بڑا سالانہ حج — ہر قابل مسلمان کے لیے زندگی میں ایک بار لازمی';

  @override
  String get hajjScreenTitle => 'حج کی رہنمائی';

  @override
  String get hajjScreenSubtitle => 'بڑے حج کی مرحلہ وار رہنمائی';

  @override
  String get umrahCardTitle => 'عمرہ';

  @override
  String get umrahCardSubtitle => 'چھوٹا حج';

  @override
  String get umrahCardDescription =>
      'ایک گہری روحانی یادگار جو سال کے کسی بھی وقت کیا جا سکتا ہے';

  @override
  String get umrahScreenTitle => 'عمرہ کی رہنمائی';

  @override
  String get umrahScreenSubtitle => 'چھوٹے حج کی مرحلہ وار رہنمائی';

  @override
  String get pilgrimageStepsTitle => 'رسومات اور مراحل';

  @override
  String get pilgrimageImportantNotesTitle => 'اہم نوٹس';

  @override
  String get pilgrimageDuaTitle => 'اس مرحلے کے لیے دعا';

  @override
  String get pilgrimageJafariNoteTitle => 'جعفری فقہ نوٹ';

  @override
  String get pilgrimageComplete => '✓ مکمل';

  @override
  String get pilgrimageMarkDone => 'مکمل کے طور پر نشان زد کریں';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done میں سے $total مراحل';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes منٹ';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'شیعہ زائرین';

  @override
  String get pilgrimageShiaNoteBody =>
      'بہت سے شیعہ زائرین بھی مدینہ میں نبی محمد (ص) کی زیارت کے لیے مسجد نبوی اور جنت البقیع میں قبروں کی زیارت کے لیے سفر کرتے ہیں۔ یہ دورے روحانی لحاظ سے بہت اہمیت رکھتے ہیں، حالانکہ یہ خود حج کے مناسک نہیں ہیں۔';

  @override
  String get hajjIntro =>
      'حج اسلام کا پانچواں رکن ہے، جو ہر مسلمان پر زندگی میں ایک بار فرض ہے، بشرطیکہ وہ جسمانی اور مالی طور پر اس کی استطاعت رکھتا ہو۔ آج کے زیادہ تر بارہ امامی شیعہ زائرین کے لیے، اس کا مطلب حج التمتع ہے، جو ماہ ذوالحجہ میں نبی ابراہیم (ع) کے نقش قدم پر، ان کے بیٹے اسماعیل (ع) اور بی بی ہاجرہ کے ساتھ ادا کیا جاتا ہے۔ یہ رہنما مناسک کے جعفری خاکے کی پیروی کرتا ہے، جبکہ مدینہ میں زیارت حج سے پہلے یا بعد میں ایک بہت عزیز سفر رہتا ہے۔';

  @override
  String get umrahIntro =>
      'عمرہ مکہ کا چھوٹا حج ہے اور حج کے برعکس سال کے کسی بھی وقت کیا جا سکتا ہے۔ اگرچہ لازمی نہیں ہے، لیکن یہ بہت بڑے روحانی انعام اور سفارش کردہ عمل کے طور پر سمجھا جاتا ہے۔ یہ حج کے ساتھ کئی رسومات کا اشتراک کرتا ہے لیکن مختصر ہے، چار اہم رسومات پر مشتمل ہے۔';

  @override
  String get voiceInputTitle => 'آواز کی ان پٹ';

  @override
  String get voiceInputMicTitle => 'مائیکروفون';

  @override
  String get voiceInputMicSubtitle =>
      'ٹائپ کرنے کے بجائے Ask Ayara کو اپنی آواز میں بتائیں۔';

  @override
  String get voiceInputMicDenied => 'مائیکروفون تک رسائی کی اجازت نہیں دی گئی۔';

  @override
  String get voiceInputSpeak => 'اس کے بجائے بولیں';

  @override
  String get voiceInputListening => 'سن رہے ہیں…';

  @override
  String get voiceInputPermissionDenied =>
      'آواز کی ان پٹ کے لیے مائیکروفون تک رسائی ضروری ہے۔';
}
