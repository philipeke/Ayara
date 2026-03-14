// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'آیارا (Ayara)';

  @override
  String get languageSelectTitle => 'زبان خود را انتخاب کنید';

  @override
  String get languageSelectSub =>
      'می‌توانید بعداً این را در تنظیمات تغییر دهید';

  @override
  String get actionContinue => 'ادامه';

  @override
  String get languageSuggestedHeader => 'پیشنهادی';

  @override
  String get languageAllHeader => 'همه زبان‌ها';

  @override
  String get languageSuggestedBadge => 'پیشنهادی';

  @override
  String get languageSearchHint => 'جستجو…';

  @override
  String get planBasic => 'استاندارد';

  @override
  String get planPremium => 'ولایت';

  @override
  String get categorySlot01 => 'رهنمود روزانه';

  @override
  String get categorySlot02 => 'ایمان و توکل';

  @override
  String get categorySlot03 => 'تأمل در نماز';

  @override
  String get categorySlot04 => 'صبر و امید';

  @override
  String get categorySlot05 => 'طلب آمرزش';

  @override
  String get categorySlot06 => 'رحمت و شفقت';

  @override
  String get categorySlot07 => 'قدرت ایمان';

  @override
  String get categorySlot08 => 'قلب سپاسگزار';

  @override
  String get categorySlot09 => 'هدف زندگی';

  @override
  String get categorySlot10 => 'پیوندهای خانوادگی';

  @override
  String get categorySlot11 => 'آرامش درونی';

  @override
  String get categorySlot12 => 'حکمت نبوی';

  @override
  String get categorySlot13 => 'اخلاق نیکو';

  @override
  String get categorySlot14 => 'ایستادگی در برابر وسوسه';

  @override
  String get categorySlot15 => 'ذکر شبانه';

  @override
  String get categoryCustom => 'تأمل شخصی';

  @override
  String get dhikrMeaningSubhanallah => 'پاک و منزه است خداوند';

  @override
  String get dhikrMeaningAlhamdulillah => 'ستایش مخصوص خداست';

  @override
  String get dhikrMeaningAllahuAkbar => 'خداوند بزرگتر از آن است که وصف شود';

  @override
  String get quranVerseHeartAtRest =>
      'آگاه باشید که با یاد خدا دل‌ها آرام می‌گیرد.';

  @override
  String get promptHint =>
      'برای دریافت رهنمود و تأملات اسلامی، یک دسته را انتخاب کنید';

  @override
  String get currentLanguage => 'زبان فعلی';

  @override
  String get settingsLanguage => 'تنظیمات زبان';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get chooseLanguage => 'زبان خود را انتخاب کنید';

  @override
  String get continueCta => 'ادامه';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کلمه',
      one: '$count کلمه',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'گزینه‌ها';

  @override
  String get newCta => 'جدید';

  @override
  String get actionsTitle => 'چه کاری می‌خواهید انجام دهید؟';

  @override
  String get copy => 'کپی';

  @override
  String get share => 'اشتراک‌گذاری';

  @override
  String get close => 'بستن';

  @override
  String get copiedToast => 'در حافظه کپی شد';

  @override
  String shareSubject(String category) {
    return 'آیارا — $category';
  }

  @override
  String get regenerateErrorTitle => 'خطا در تولید پاسخ جدید';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nآیا می‌خواهید دوباره تلاش کنید؟';
  }

  @override
  String get cancelCta => 'لغو';

  @override
  String get retryCta => 'تلاش مجدد';

  @override
  String get authTitle => 'ایجاد حساب کاربری';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get signInEmail => 'ورود با ایمیل';

  @override
  String get upgradeWithApple => 'ادامه با اپل';

  @override
  String get mustAccept =>
      'شما باید شرایط خدمات و سیاست حریم خصوصی را بپذیرید.';

  @override
  String get termsLabel => 'شرایط خدمات را می‌پذیرم';

  @override
  String get privacyLabel => 'سیاست حریم خصوصی را مطالعه کرده‌ام';

  @override
  String get marketingOptIn => 'تمایل دارم اخبار و پیشنهادها را دریافت کنم';

  @override
  String get openTerms => 'شرایط خدمات';

  @override
  String get openPrivacy => 'سیاست حریم خصوصی';

  @override
  String get accountSection => 'حساب کاربری';

  @override
  String get guestMode => 'حالت مهمان';

  @override
  String get signedIn => 'وارد شده';

  @override
  String get upgradeHint =>
      'با ایجاد حساب کاربری، تأملات خود را در همه دستگاه‌ها ذخیره کنید.';

  @override
  String get upgradeWithGoogle => 'ادامه با گوگل';

  @override
  String get signOut => 'خروج از حساب';

  @override
  String get snackUpgraded => 'حساب با گوگل ارتقا یافت ✅';

  @override
  String get snackSignedIn => 'با گوگل وارد شدید ✅';

  @override
  String get snackSignedOut => 'از حساب خارج شدید';

  @override
  String get snackSignedInApple => 'با اپل وارد شدید ✅';

  @override
  String get snackSignedInGoogle => 'با گوگل وارد شدید ✅';

  @override
  String get snackUpgradedApple => 'حساب با اپل ارتقا یافت ✅';

  @override
  String get snackUpgradedGoogle => 'حساب با گوگل ارتقا یافت ✅';

  @override
  String get historyTitle => 'تأملات قبلی';

  @override
  String get historyOpenCta => 'تأملات قبلی';

  @override
  String get historyEmpty => 'هنوز هیچ تأملی ذخیره نشده است.';

  @override
  String get historyDeleteTitle => 'حذف تأمل؟';

  @override
  String get historyDeleteBody =>
      'این کار مورد انتخاب شده را برای همیشه پاک می‌کند.';

  @override
  String get deleteCta => 'حذف';

  @override
  String get historyButton => 'تأملات قبلی';

  @override
  String get historyEmptyTitle => 'هنوز تأملی وجود ندارد';

  @override
  String get historyEmptyBody =>
      'ابتدا چیزی ایجاد کنید — موارد ذخیره شده شما اینجا ظاهر می‌شوند.';

  @override
  String get historyDelete => 'حذف';

  @override
  String get footerTitle => 'با ولایت، ایمان و صبر';

  @override
  String get footerSubtitle => 'هر بار با یک دعا';

  @override
  String get genericErrorSnack =>
      'مشکلی پیش آمد — لطفاً لحظاتی دیگر دوباره تلاش کنید.';

  @override
  String get upgradeAccountCta =>
      'ذخیره تأملات در همه دستگاه‌ها – ایجاد حساب کاربری';

  @override
  String get deleteAccount => 'حذف حساب کاربری';

  @override
  String get exportData => 'خروجی گرفتن از داده‌های من';

  @override
  String userUidLabel(String uid) {
    return 'شناسه کاربری: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'کمی صبر کنید 🐯\nآیارا برای پاسخ بعدی به زمان نیاز دارد…';

  @override
  String get rateDailyLimit =>
      'محدودیت تأملات روزانه شما تمام شده است.\nتأملات بیشتری تهیه کنید یا به طرح ولایت ارتقا دهید.';

  @override
  String get rateCreditsExhausted =>
      'همه تأملات خود را استفاده کرده‌اید.\nاعتبار خود را شارژ کنید یا به طرح ولایت ارتقا دهید.';

  @override
  String get rateGraceCreditsExhausted =>
      'در حال حاضر تأملی ندارید.\nتأملات بیشتری بگیرید یا به ولایت ارتقا دهید.';

  @override
  String get premiumDescription =>
      'طرح ولایت ویژگی‌های ویژه، دسته‌های آینده و نشان مخصوص را باز می‌کند.';

  @override
  String ratePlanExhausted(String plan) {
    return 'تأملات شما در حال حاضر تمام شده است. طرح: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'خطا در بررسی اعتبار: $message';
  }

  @override
  String get rateCheckGenericError =>
      'مشکلی در بررسی اعتبار تأملات شما رخ داد.';

  @override
  String get aiFallbackGeneric =>
      'مشکلی پیش آمد — لطفاً کمی بعد دوباره تلاش کنید.';

  @override
  String get limitSectionTitle => 'تأملات';

  @override
  String get limitTodayLabel => 'میزان استفاده';

  @override
  String limitCreditsLabel(Object credits) {
    return 'تأملات باقی‌مانده: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'طرح: $plan';
  }

  @override
  String get limitLoadingLabel => 'در حال بارگذاری…';

  @override
  String get limitLoadingLabelDescription => 'در حال دریافت آمار استفاده…';

  @override
  String get aiLimitTitle => 'تأملات';

  @override
  String get aiLimitSubtitle =>
      'هر پاسخ ۱ تأمل مصرف می‌کند. طرح استاندارد شامل تأملات اولیه است. طرح ولایت دسته‌های ویژه را باز کرده و امکان شارژ مجدد را فراهم می‌کند.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total تأمل استفاده شده';
  }

  @override
  String get creditsSectionTitle => 'تأملات';

  @override
  String get creditsUsageLabel => 'استفاده';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'تأملات باقی‌مانده: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'طرح: $plan';
  }

  @override
  String get creditsLoadingLabel => 'در حال بارگذاری…';

  @override
  String get creditsLoadingLabelDescription => 'در حال دریافت آمار تأملات…';

  @override
  String get creditsTitle => 'تأملات';

  @override
  String get creditsSubtitle =>
      'هر پاسخ ۱ تأمل مصرف می‌کند. طرح استاندارد شامل تأملات اولیه است. طرح ولایت دسته‌های ویژه را باز کرده و امکان شارژ مجدد را فراهم می‌کند.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total تأمل استفاده شده';
  }

  @override
  String get settingsDeleteTitle => 'حذف حساب';

  @override
  String get settingsDeleteDescription =>
      'حساب کاربری و تمام داده‌های مرتبط را برای همیشه حذف کنید.';

  @override
  String get settingsDeleteButtonLabel => 'حذف حساب من';

  @override
  String get settingsDeleteDialogTitle => 'حذف حساب کاربری؟';

  @override
  String get settingsDeleteDialogBody =>
      'این اقدام دائمی است و قابل بازگشت نیست.\n\nتمام چت‌ها، تاریخچه و اطلاعات حساب شما حذف خواهد شد.';

  @override
  String get settingsDeleteDialogCancel => 'لغو';

  @override
  String get settingsDeleteDialogConfirm => 'حذف';

  @override
  String get settingsFreeLimitUsedTitle => 'تأملات اولیه تمام شد';

  @override
  String get settingsFreeLimitUsedDescription =>
      'تأملات اولیه این دستگاه به پایان رسیده است. برای ادامه، به طرح ولایت ارتقا دهید یا اعتبار بخرید.';

  @override
  String get settingsStarterCreditsUsedTitle => 'تأملات اولیه تمام شد';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'تأملات اولیه این دستگاه به پایان رسیده است. برای ادامه، به طرح ولایت ارتقا دهید یا اعتبار بخرید.';

  @override
  String get deviceBoundError =>
      'این دستگاه قبلاً به حساب دیگری متصل شده است. لطفاً با حساب اصلی وارد شوید.';

  @override
  String get premiumTitle => 'حالت ولایت';

  @override
  String get premiumSubtitleBasic => 'تجربه کامل آیارا را باز کنید.';

  @override
  String get premiumSubtitlePremium =>
      'شما در حالت ولایت هستید. نیاز به تأملات بیشتری دارید؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'طرح فعلی: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'تأملات: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'خرید در حال حاضر در دسترس نیست.';

  @override
  String get premiumSignInToPurchase =>
      'برای خرید تأمل یا باز کردن حالت ولایت وارد شوید.';

  @override
  String get premiumRestorePurchases => 'بازیابی خریدها';

  @override
  String get premiumProcessing => 'در حال پردازش…';

  @override
  String get premiumRestoreHintTitle =>
      'قبلاً در این دستگاه یا دستگاه دیگری اشتراک تهیه کرده‌اید؟';

  @override
  String get premiumRestoreHintBody =>
      'اگر خریدهای شما نمایش داده نمی‌شود، آن‌ها را بازیابی کنید.';

  @override
  String get premiumBuyCredits200 => 'خرید ۲۰۰ تأمل';

  @override
  String get premiumBuyCredits400 => 'خرید ۴۰۰ تأمل';

  @override
  String get premiumBecomePremiumOneTime => 'ارتقا به حالت ولایت';

  @override
  String get premiumTopupHint =>
      'با اشتراک ولایت، هر زمان که نیاز داشتید می‌توانید اعتبار اضافه تهیه کنید.';

  @override
  String get premiumUpgradeCta => 'ارتقا';

  @override
  String get premiumRequiredForCategory =>
      'این دسته فقط برای کاربران طرح ولایت در دسترس است. برای دسترسی به همه محتواها، در تنظیمات ارتقا دهید.';

  @override
  String get premiumBenefitsBasic =>
      'با ارتقا به ولایت، از تأملات اضافی و دسته‌های ویژه بهره‌مند شوید.';

  @override
  String get premiumBenefitsPremium =>
      'شما در حالت ولایت هستید. اگر اعتبارتان کم است، می‌توانید آن را شارژ کنید.';

  @override
  String get premiumButtonBecomePremium => 'باز کردن طرح ولایت';

  @override
  String get premiumButtonTopup1000 => 'افزودن ۱۰۰۰ تأمل';

  @override
  String get premiumBadge => 'ولایت فعال';

  @override
  String get premiumLoadingStore => 'در حال بارگذاری فروشگاه…';

  @override
  String get premiumProductNotAvailable =>
      'این محصول هنوز در فروشگاه موجود نیست. لطفاً بعداً تلاش کنید.';

  @override
  String get premiumPurchaseError =>
      'مشکلی در فرآیند خرید پیش آمد. لطفاً دوباره تلاش کنید.';

  @override
  String get premiumBuyCredits100 => 'افزودن ۱۰۰ تأمل';

  @override
  String get premiumFeatureLocked =>
      'برای دسترسی به این ویژگی، طرح ولایت را فعال کنید.';

  @override
  String get lockedCategoriesHint =>
      'برخی دسته‌ها مخصوص اعضای ولایت است. برای همراهی در این مسیر، آن‌ها را باز کنید.';

  @override
  String get freePlanBlockedTitle => 'تأملات اولیه شما تمام شده است';

  @override
  String get freePlanBlockedBody =>
      'شما در طرح استاندارد هستید و به سقف مجاز رسیده‌اید. برای ادامه و باز کردن دسته‌های ویژه، به طرح ولایت ارتقا دهید.';

  @override
  String get freePlanBlockedCtaGoPremium => 'گزینه‌های ولایت را در زیر ببینید';

  @override
  String get graceBlockedTitle => 'تأملات اولیه تمام شد';

  @override
  String get graceBlockedBody =>
      'شما در طرح استاندارد هستید و به محدودیت رسیده‌اید. برای ادامه، لطفاً به طرح ولایت ارتقا دهید.';

  @override
  String get graceBlockedCtaGoPremium => 'مشاهده گزینه‌های ارتقا';

  @override
  String get rateGuestMustSignIn =>
      'برای استفاده از آیارا و تأملات خود، وارد حساب شوید.';

  @override
  String get guestNoCreditsTitle => 'حالت مهمان';

  @override
  String get guestNoCreditsBody =>
      'به عنوان مهمان می‌توانید برنامه را مرور کنید، اما امکان استفاده از تأملات را ندارید. برای استفاده، بعداً در تنظیمات وارد شوید.';

  @override
  String get guestDialogContinue => 'ادامه';

  @override
  String get guestDialogLoginInstead => 'ورود به حساب';

  @override
  String get optionalLabel => 'اختیاری';

  @override
  String get accountDeleteSuccessTitle => 'حساب حذف شد';

  @override
  String get accountDeleteSuccessBody =>
      'حساب کاربری و داده‌های مرتبط با موفقیت حذف شدند.';

  @override
  String get accountDeleteSuccessClose => 'بستن';

  @override
  String get accountDeleteErrorTitle => 'خطا در حذف حساب';

  @override
  String get accountDeleteErrorClose => 'تأیید';

  @override
  String get accountDeleteReauthCancelled =>
      'تأیید هویت لغو شد. لطفاً دوباره وارد شوید و مجدداً تلاش کنید.';

  @override
  String get accountDeleteReauthRequired =>
      'حذف حساب نیاز به ورود اخیر دارد. لطفاً خارج شوید، دوباره وارد شوید و تلاش کنید.';

  @override
  String get settingsDeletePermanentWarning =>
      'این اقدام دائمی است و قابل بازگشت نیست. تمام داده‌های حساب شما حذف خواهد شد.';

  @override
  String get dailyGraceTitle => 'رهنمود روزانه';

  @override
  String get dailyGraceScriptureLabel => 'آیه روز';

  @override
  String get dailyGraceSaintLabel => 'عالم هفته';

  @override
  String get dailyGraceReflectionLabel => 'تأمل شبانه';

  @override
  String get dailyGraceCopiedToast => 'آیه در حافظه کپی شد';

  @override
  String get locationConsentLabel =>
      'اجازه به آیارا برای استفاده از موقعیت مکانی جهت قبله‌نما و اوقات شرعی';

  @override
  String get locationConsentHint =>
      'فقط برای این ویژگی‌ها استفاده می‌شود. موقعیت شما هرگز ذخیره یا به اشتراک گذاشته نمی‌شود.';

  @override
  String get askPageTitle => 'از آیارا بپرس';

  @override
  String get askPageDescription =>
      'هر سوالی درباره ایمان، نماز، زندگی یا احکام اسلامی دارید بپرسید و رهنمودی بر اساس قرآن و آموزه‌های اهل‌بیت (ع) دریافت کنید.';

  @override
  String get askPageInputHint => 'سوال خود را اینجا بنویسید…';

  @override
  String get askPageSubmitCta => 'بپرس';

  @override
  String get askPageInputEmptyError => 'لطفاً ابتدا سوال خود را بنویسید.';

  @override
  String get askResultYourQuestion => 'سوال شما';

  @override
  String get guidancePageTitle => 'قبله';

  @override
  String get qiblaFacingMecca => 'رو به مکه';

  @override
  String get qiblaCompassInstruction =>
      'گوشی خود را بچرخانید تا سوزن طلایی رو به بالا قرار گیرد.\nآن جهت نشان‌دهنده قبله (مکه) است.';

  @override
  String get qiblaGpsUnavailableBody =>
      'سیگنال GPS ضعیف است. به فضای باز بروید و دوباره تلاش کنید.';

  @override
  String get qiblaRetry => 'تلاش مجدد';

  @override
  String get qiblaTitle => 'جهت قبله';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km کیلومتر تا مکه';
  }

  @override
  String get qiblaLocationNeededTitle => 'دسترسی به مکان لازم است';

  @override
  String get qiblaLocationNeededBody =>
      'اجازه دسترسی به مکان را بدهید تا آیارا بتواند جهت کعبه را از موقعیت فعلی شما محاسبه کند.';

  @override
  String get qiblaOpenSettings => 'باز کردن تنظیمات';

  @override
  String get qiblaCompassLoading => 'در حال یافتن موقعیت شما…';

  @override
  String get qiblaTowardMecca => 'به سمت مکه';

  @override
  String get prayerTimesTitle => 'اوقات شرعی';

  @override
  String get prayerTimesFajr => 'اذان صبح';

  @override
  String get prayerTimesDhuhr => 'اذان ظهر';

  @override
  String get prayerTimesAsr => 'عصر';

  @override
  String get prayerTimesMaghrib => 'اذان مغرب';

  @override
  String get prayerTimesIsha => 'عشا';

  @override
  String get prayerTimesLocationNeededTitle => 'دسترسی به مکان لازم است';

  @override
  String get prayerTimesLocationNeededBody =>
      'اجازه دسترسی به مکان را بدهید تا آیارا اوقات شرعی دقیق شهر شما را محاسبه کند.';

  @override
  String get prayerTimesNextLabel => 'بعدی';

  @override
  String get prayerTimesDoneLabel => 'انجام شد';

  @override
  String get monthlyPrayerTimesTitle => 'اوقات شرعی ماهانه';

  @override
  String get monthlyPrayerTimesViewButton => 'مشاهده کل ماه';

  @override
  String get monthlyPrayerTimesNextMonth => 'ماه آینده';

  @override
  String get monthlyPrayerTimesDayHeader => 'روز';

  @override
  String get sharePrayerTimes => 'اشتراک‌گذاری اوقات شرعی';

  @override
  String get notificationsSectionTitle => 'اعلان‌ها';

  @override
  String get notificationsSectionSubtitle =>
      'یادآوری نماز، مناسبت‌ها و موارد دیگر';

  @override
  String get dailyReflectionReminderTitle => 'تأمل روزانه';

  @override
  String get dailyReflectionReminderDescription =>
      'یادآوری روزانه برای ارتباط با ایمان و استفاده از آیارا.';

  @override
  String get dailyReflectionReminderEnable => 'فعال‌سازی یادآوری روزانه';

  @override
  String get dailyReflectionReminderTimeLabel => 'زمان یادآوری';

  @override
  String get prayerNotificationsTitle => 'یادآوری نماز';

  @override
  String get prayerNotificationsDescription =>
      'دریافت اعلان پیش از هر وقت نماز برای حفظ ارتباط معنوی در طول روز.';

  @override
  String get prayerNotificationsEnable => 'فعال‌سازی یادآوری نماز';

  @override
  String get prayerNotificationsOpenSettings => 'تنظیمات اعلان';

  @override
  String get prayerNotificationsDenied => 'اعلان‌ها غیرفعال هستند';

  @override
  String get prayerNotificationsDeniedHint =>
      'به تنظیمات بروید و اجازه اعلان به آیارا را بدهید.';

  @override
  String get notificationsConsentLabel => 'اجازه اعلان برای اوقات شرعی';

  @override
  String get prayerNotifTitleFajr => '🌅 صبح — هنگام راز و نیاز';

  @override
  String get prayerNotifBodyFajr =>
      'صبح، زمان عبادت اهل‌بیت (ع) است. امام علی (ع) فرمودند: نماز صبح را پاس بدارید. برخیزید، طاهر شوید و در پیشگاه الله بایستید.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ظهر — هنگام بازگشت';

  @override
  String get prayerNotifBodyDhuhr =>
      'امامان ما هر لحظه را برای یاد خدا غنیمت می‌شمردند. لحظه‌ای درنگ کنید و قلب خود را به سوی پروردگار بازگردانید.';

  @override
  String get prayerNotifTitleAsr => '🌤️ عصر — میانه روز';

  @override
  String get prayerNotifBodyAsr =>
      'بر نمازها محافظت کنید که پیمان میان شما و خداست. وقت عصر فرار رسیده است — آن را بدون ذکر سپری نکنید.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 مغرب — هنگام غروب';

  @override
  String get prayerNotifBodyMaghrib =>
      'خورشید غروب کرد؛ زمانی که اهل‌بیت (ع) برای دعا گرامی می‌داشتند. نماز مغرب را به جا آورید و دستان خود را برای دعا بگشایید.';

  @override
  String get prayerNotifTitleIsha => '🌙 عشا — پایان روز';

  @override
  String get prayerNotifBodyIsha =>
      'روز خود را در محضر خدا به پایان ببرید. امامان ما را به یاد خدا در انتهای روز تشویق کرده‌اند. با ذکر او بیاسایید.';

  @override
  String get outOfReflectionsBannerText => 'تأملات شما به پایان رسیده است';

  @override
  String get outOfReflectionsBannerCta => 'دریافت بیشتر';

  @override
  String get dhikrPageTitle => 'ذکر';

  @override
  String get dhikrTapToCount => 'برای شمارش روی دایره بزنید';

  @override
  String get dhikrResetButton => 'بازنشانی';

  @override
  String get dhikrComplete => 'ماشاءالله';

  @override
  String get dhikrCompleteMessage =>
      '۱۰۰ مرتبه ذکر خدا را به پایان بردید. باشد که نوری برای قلب شما باشد.';

  @override
  String get disclaimerTitle => 'درباره رهنمودهای این برنامه';

  @override
  String get disclaimerBody =>
      'آیارا تأملات، یادآوری‌ها و محتوای معنوی اسلامی را برای حمایت از مسیر ایمان شما بر اساس قرآن و آموزه‌های اهل‌بیت (ع) ارائه می‌دهد. این محتوا صرفاً جهت اطلاع‌رسانی و الهام‌بخشی است.\n\nآیارا جایگزین تحقیق و تتبع عالمانه نیست.\nرهنمودهای این برنامه جایگزین عالم دینی یا مرجع تقلید نمی‌باشد. در مذهب تشیع، هدایت دینی ریشه در فقه جعفری و سنت پیروی از مرجع تقلید زنده دارد. اگر سوالی درباره احکام شرعی، حلال و حرام یا واجبات فردی دارید، به مرجع تقلید یا عالمان دینی محل زندگی خود مراجعه کنید.\n\nاین برنامه فتوا صادر نمی‌کند.\nهیچ‌یک از مطالب نباید به عنوان فتوا یا دستور دینی الزام‌آور تلقی شود.\n\nمحوریت اهل‌بیت (ع).\nدر تشیع، پیامبر اکرم (ص) و خاندان پاک ایشان — اهل‌بیت (ع) — هادیان معتبر جامعه پس از قرآن هستند. دوازده امام معصوم (ع) مفسران منصوب الهی برای تعالیم اسلام می‌باشند. محتوای این برنامه بازتاب‌دهنده این سنت است.\n\nجامعه و مسجد.\nاین برنامه بر حفظ ارتباط شما با مساجد، مراکز اسلامی و جامعه دینی تأکید دارد و شما را به یادگیری از اساتید متعهد نزدیک خود تشویق می‌کند.';

  @override
  String get disclaimerClose => 'متوجه شدم';

  @override
  String get disclaimerInfoTooltip => 'درباره رهنمودهای برنامه';

  @override
  String get disclaimerSettingsSubtitle =>
      'فقط برای اطلاع‌رسانی عمومی. برای مطالعه متن کامل بزنید.';

  @override
  String get disclaimerSectionHeader => 'سلب مسئولیت رهنمودها';

  @override
  String get navHome => 'خانه';

  @override
  String get navReflect => 'تأمل';

  @override
  String get navDuas => 'دعاها';

  @override
  String get navCalendar => 'تقویم';

  @override
  String get dashboardToday => 'امروز';

  @override
  String get dashboardComingUp => 'مناسبت‌های پیش‌ رو';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'روز',
      one: 'روز',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'دسترسی سریع';

  @override
  String get quickActionQibla => 'قبله';

  @override
  String get quickActionDhikr => 'ذکر';

  @override
  String get quickActionDailyGrace => 'رهنمود';

  @override
  String get quickActionPrayerTimes => 'اوقات شرعی';

  @override
  String get askAyaraTitle => 'از آیارا بپرس';

  @override
  String get askAyaraSubtitle =>
      'هر سوالی دارید بپرسید و پاسخی متفکرانه و راهگشا دریافت کنید.';

  @override
  String get askAyaraHint => 'مثلاً: اهمیت ماه رمضان چیست؟';

  @override
  String get askAyaraSubmit => 'بپرس';

  @override
  String get wisdomOfTheDayTitle => 'حکمت روز';

  @override
  String get calendarScreenTitle => 'تقویم اسلامی';

  @override
  String get calendarUpcomingOccasions => 'مناسبت‌های آینده';

  @override
  String get calendarOccasionRemindersTitle => 'یادآوری مناسبت‌ها';

  @override
  String get calendarOccasionRemindersHint =>
      'اعلان در عصر روز قبل از هر مناسبت';

  @override
  String get calendarNotifPermissionDenied =>
      'دسترسی به اعلان داده نشده است. در تنظیمات آن را فعال کنید.';

  @override
  String get calendarNoEvents => 'رویداد نزدیکی یافت نشد.';

  @override
  String get calendarAddToPhone => 'اضافه به تقو��م تلفن';

  @override
  String get calendarAddedToPhone => 'به تقویم اضافه شد';

  @override
  String get calendarCountdownToday => 'امروز';

  @override
  String get calendarCountdownTomorrow => 'فردا';

  @override
  String calendarCountdownDays(int days) {
    return '$days روز دیگر';
  }

  @override
  String get calendarAH => 'هجری قمری';

  @override
  String get calendarMonthJan => 'ژانویه';

  @override
  String get calendarMonthFeb => 'فوریه';

  @override
  String get calendarMonthMar => 'مارس';

  @override
  String get calendarMonthApr => 'آوریل';

  @override
  String get calendarMonthMay => 'مه';

  @override
  String get calendarMonthJun => 'ژوئن';

  @override
  String get calendarMonthJul => 'ژوئیه';

  @override
  String get calendarMonthAug => 'اوت';

  @override
  String get calendarMonthSep => 'سپتامبر';

  @override
  String get calendarMonthOct => 'اکتبر';

  @override
  String get calendarMonthNov => 'نوامبر';

  @override
  String get calendarMonthDec => 'دسامبر';

  @override
  String get calendarSeasonMuharramEarly => 'ایام محرم — یاد کربلا';

  @override
  String get calendarSeasonAshura => 'عاشورا — یا حسین (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرم — روزهای سوگواری و تأمل';

  @override
  String get calendarSeasonArbaeen => 'اربعین — چهلمین روز شهادت امام حسین (ع)';

  @override
  String get calendarSeasonRoadToArbaeen => 'در مسیر اربعین';

  @override
  String get calendarSeasonMabath => 'عید مبعث — طلوع وحی';

  @override
  String get calendarSeasonMidShaban => 'نیمه شعبان — ولادت حضرت مهدی (عج)';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارک — ماه قرآن';

  @override
  String get calendarSeasonGhadir => 'عید غدیر مبارک!';

  @override
  String get hijriMonth1 => 'محرم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربیع‌الاول';

  @override
  String get hijriMonth4 => 'ربیع‌الثانی';

  @override
  String get hijriMonth5 => 'جمادی‌الاول';

  @override
  String get hijriMonth6 => 'جمادی‌الثانی';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذی‌القعده';

  @override
  String get hijriMonth12 => 'ذی‌الحجه';

  @override
  String get duasScreenTitle => 'دعا و زیارات';

  @override
  String get duasSearchHint => 'جستجوی دعا، زیارت…';

  @override
  String get duasFilterAll => 'همه';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دعا و زیارت',
      one: '$count دعا',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'دعایی یافت نشد.';

  @override
  String get duaCategoryDaily => 'روزانه';

  @override
  String get duaCategoryWeekly => 'هفتگی';

  @override
  String get duaCategoryOccasions => 'مناسبتی';

  @override
  String get duaCategoryZiyarat => 'زیارات';

  @override
  String get duaCategoryTasbih => 'تسبیحات';

  @override
  String get eventTypeBirth => 'ولادت';

  @override
  String get eventTypeMartyrdom => 'شهادت';

  @override
  String get eventTypeOccasion => 'مناسبت';

  @override
  String get duaCopyTooltip => 'کپی ترجمه';

  @override
  String get duaToggleTransliteration => 'نویسه‌گردانی';

  @override
  String get duaToggleTranslation => 'ترجمه';

  @override
  String get duaAskAiLabel => 'توضیح این دعا از آیارا';

  @override
  String get duaAskAiLockedLabel => 'پرسش از آیارا (ولایت)';

  @override
  String get duaAiLockedMessage =>
      'توضیحات آیارا برای اعضای طرح ولایت در دسترس است.';

  @override
  String duaAiComingSoon(String name) {
    return 'به‌زودی: درباره «$name» از آیارا بپرسید!';
  }

  @override
  String get duaCopiedToast => 'دعا در حافظه کپی شد.';

  @override
  String get tasbihAllahuAkbarMeaning => 'خداوند بزرگتر از آن است که وصف شود';

  @override
  String get tasbihAlhamdulillahMeaning => 'همه ستایش‌ها مخصوص خداست';

  @override
  String get tasbihSubhanallahMeaning => 'پاک و منزه است خداوند';

  @override
  String get tasbihResetTooltip => 'بازنشانی';

  @override
  String get tasbihCompleteTitle => 'تسبیح تمام شد';

  @override
  String get tasbihCompleteMessage => 'خداوند ذکر شما را قبول فرماید.';

  @override
  String get tasbihTapHint => 'هر جا را لمس کنید شمارش می‌شود';

  @override
  String get tasbihatScreenTitle => 'آموزش تسبیحات';

  @override
  String get tasbihatScreenSubtitle => 'ذکرهای نماز';

  @override
  String get tasbihatScreenDescription =>
      'راهنمای کامل ذکرهایی که در حین و بعد از نمازهای یومیه بر اساس سنت اهل‌بیت (ع) خوانده می‌شود.';

  @override
  String get tasbihatArba3Title => 'تسبیحات اربعه';

  @override
  String get tasbihatArba3Subtitle => 'ذکر رکعت سوم و چهارم';

  @override
  String get tasbihatArba3Info =>
      'در فقه شیعه، تسبیحات اربعه در رکعت سوم و چهارم جایگزین سوره حمد می‌شود. خواندن یک‌باره آن واجب و سه بار آن مستحب است.';

  @override
  String get tasbihatArba3Translation =>
      'پاک و منزه است خدا، و ستایش مخصوص خداست\nمعبودی جز خدا نیست، و او بزرگتر از وصف است';

  @override
  String get tasbihatArba3CompleteTitle => 'پایان قرائت';

  @override
  String get tasbihatArba3CompleteMessage => 'طاعات شما قبول — آمین';

  @override
  String get tasbihatArba3TapHint => 'بعد از هر بار خواندن ضربه بزنید';

  @override
  String get tasbihatZahraSubtitle => 'بعد از هر نماز · ۱۰۰ مرتبه';

  @override
  String get tasbihatZahraOriginLabel => 'فضیلت';

  @override
  String get tasbihatZahraHadith =>
      'حضرت فاطمه زهرا (س) از پیامبر (ص) یاری خواستند. ایشان فرمودند: «آیا تو را به چیزی بهتر راهنمایی نکنم؟ بعد از هر نماز ۳۳ بار سبحان‌الله، ۳۳ بار الحمدلله و ۳۴ بار الله‌اکبر بگو؛ این برای تو از هر خدمکاری بهتر است.»';

  @override
  String get tasbihatZahraHadithSource => '— بحارالانوار، ج ۸۵';

  @override
  String get tasbihatZahraOpenCounter => 'باز کردن تسبیح‌شمار';

  @override
  String get tasbihatDuasTitle => 'دعاهای پیشنهادی';

  @override
  String get tasbihatDuasSubtitle => 'تعقیبات نماز';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آیة‌الکرسی';

  @override
  String get tasbihatDuaAyatKursiWhen => 'بعد از هر نماز واجب';

  @override
  String get tasbihatDuaAyatKursiSource => 'سوره بقره، آیه ۲۵۵';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'هر کس بعد از نماز واجب آیة‌الکرسی بخواند، میان او و بهشت جز مرگ فاصله‌ای نیست. امام باقر (ع) آن را از بزرگترین آیات قرآن دانسته‌اند.';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen => 'بعد از هر نماز · مهر قبولی دعاها';

  @override
  String get tasbihatDuaSalawatSource => 'امام صادق (ع) — الکافی';

  @override
  String get tasbihatDuaSalawatNote =>
      'فرستادن صلوات بر محمد و آل محمد (ص) برای قبولی دعاها تأکید شده است. امام صادق (ع) فرمودند: «هر دعایی محجوب است تا زمانی که بر محمد و آل او صلوات فرستاده شود.»';

  @override
  String get tasbihatDuaFarajTitle => 'دعای فرج';

  @override
  String get tasbihatDuaFarajWhen => 'بعد از هر نماز · برای امام زمان (عج)';

  @override
  String get tasbihatDuaFarajSource => 'آموزش داده شده توسط امام حسن عسکری (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دعایی برای ظهور امام زمان (عج)، دوازدهمین امام ما. این دعا ابراز وفاداری به امام زنده است.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تسبیح حضرت زهرا (س)';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'بعد از مغرب و عشا · بسیار سفارش شده';

  @override
  String get tasbihatDuaTasbihFatimaSource => 'امام باقر (ع) — بحارالانوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'امام باقر (ع) فرمودند که تسبیح حضرت زهرا بعد از عشا پیش از خواب، بهتر از هزار رکعت نماز مستحبی است.';

  @override
  String get tasbihFatimaGiftPre => 'هدیه پیامبر (ص)';

  @override
  String get tasbihFatimaGiftPost => 'بعد از هر نماز خوانده شود';

  @override
  String get prayerTrackerTitle => 'پیگیری نماز';

  @override
  String get prayerTrackerPrayed => 'خوانده شده';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count روز پیاپی';
  }

  @override
  String get prayerTrackerAllComplete =>
      'همه نمازهای امروز خوانده شد. تقبل‌الله.';

  @override
  String get dhikrTrackerTitle => 'تسبیحات حضرت زهرا';

  @override
  String get dhikrTrackerCompletedToday => 'امروز انجام شد';

  @override
  String get dhikrTrackerNotDoneToday => 'امروز انجام نشده';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count روز پیاپی';
  }

  @override
  String get dhikrReminderTitle => 'یادآوری تسبیح';

  @override
  String get dhikrReminderDescription =>
      'یادآوری روزانه برای گفتن تسبیحات حضرت زهرا (س).';

  @override
  String get dhikrReminderEnable => 'فعال‌سازی یادآوری تسبیح';

  @override
  String get dhikrReminderTimeLabel => 'زمان یادآوری';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حدیث روز';

  @override
  String get hadithLabelArabic => 'متن عربی';

  @override
  String get hadithLabelTranslation => 'ترجمه';

  @override
  String get hadithBadge => 'حدیث';

  @override
  String get hadithShare => 'اشتراک‌گذاری این حدیث';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '«$text»\n\n— $imam\n$source\n\nاز طریق آیارا';
  }

  @override
  String get hadithNavPrevious => 'قبلی';

  @override
  String get hadithNavNext => 'بعدی';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '۱۴ معصوم (ع)';

  @override
  String get imamsScreenSubtitle =>
      'پیامبر اکرم (ص)، حضرت زهرا (س) و دوازده امام؛ هادیان معصوم اسلام';

  @override
  String get imamLabelBorn => 'ولادت';

  @override
  String get imamLabelMartyrdom => 'شهادت';

  @override
  String get imamLabelStatus => 'وضعیت';

  @override
  String get imamSectionBiography => 'زندگینامه';

  @override
  String get imamSectionFamousSaying => 'سخن مشهور';

  @override
  String get imamRoleProphet => 'خاتم‌الانبیا';

  @override
  String get imamRoleInfallible => 'معصوم';

  @override
  String get imamOrdinal1 => 'امام اول';

  @override
  String get imamOrdinal2 => 'امام دوم';

  @override
  String get imamOrdinal3 => 'امام سوم';

  @override
  String get imamOrdinal4 => 'امام چهارم';

  @override
  String get imamOrdinal5 => 'امام پنجم';

  @override
  String get imamOrdinal6 => 'امام ششم';

  @override
  String get imamOrdinal7 => 'امام هفتم';

  @override
  String get imamOrdinal8 => 'امام هشتم';

  @override
  String get imamOrdinal9 => 'امام نهم';

  @override
  String get imamOrdinal10 => 'امام دهم';

  @override
  String get imamOrdinal11 => 'امام یازدهم';

  @override
  String get imamOrdinal12 => 'امام دوازدهم';

  @override
  String get duaAudioScreenTitle => 'شنیدن دعاها';

  @override
  String get duaAudioScreenSubtitle =>
      'دعایی را برای شنیدن انتخاب کنید. برای پخش یا توقف، روی آن بزنید.';

  @override
  String get duaAudioComingSoonMessage =>
      'صوت این دعا در به‌روزرسانی‌های آینده اضافه خواهد شد.';

  @override
  String get duaAudioClose => 'بستن';

  @override
  String get duaAudioError => 'خطا در بارگذاری صوت. اتصال خود را بررسی کنید.';

  @override
  String get duaAudioMetaTransmittedBy => 'نقل شده از';

  @override
  String get duaAudioMetaOccasion => 'مناسبت';

  @override
  String get duaAudioMetaDuration => 'مدت زمان';

  @override
  String get quickActionDailyHadith => 'حدیث روز';

  @override
  String get quickAction14Masumeen => '۱۴ معصوم';

  @override
  String get quickActionListenDuas => 'شنیدن';

  @override
  String get quickActionTasbihat => 'آموزش نماز';

  @override
  String get pilgrimageSectionTitle => 'سفر مقدس';

  @override
  String get pilgrimageSectionSubtitle =>
      'راهنمای کامل حج و عمره — سفر به خانه خدا در مکه';

  @override
  String get hajjCardTitle => 'حج';

  @override
  String get hajjCardSubtitle => 'پنجمین رکن اسلام';

  @override
  String get hajjCardDescription =>
      'حج تمتع — که یک‌بار در عمر بر هر مسلمان مستطیع واجب است';

  @override
  String get hajjScreenTitle => 'راهنمای حج';

  @override
  String get hajjScreenSubtitle => 'آموزش گام‌به‌گام مناسک حج';

  @override
  String get umrahCardTitle => 'عمره';

  @override
  String get umrahCardSubtitle => 'زیارت مفرده';

  @override
  String get umrahCardDescription =>
      'سفر معنوی پرفضیلت که در تمام طول سال قابل انجام است';

  @override
  String get umrahScreenTitle => 'راهنمای عمره';

  @override
  String get umrahScreenSubtitle => 'آموزش گام‌به‌گام مناسک عمره';

  @override
  String get pilgrimageStepsTitle => 'اعمال و مراحل';

  @override
  String get pilgrimageImportantNotesTitle => 'نکات مهم';

  @override
  String get pilgrimageDuaTitle => 'دعای این مرحله';

  @override
  String get pilgrimageJafariNoteTitle => 'یادداشت فقه جعفری';

  @override
  String get pilgrimageComplete => '✓ کامل';

  @override
  String get pilgrimageMarkDone => 'به عنوان کامل علامت گذاری کنید';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done از $total مرحله';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقیقه';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'زائران شیعه';

  @override
  String get pilgrimageShiaNoteBody =>
      'زائران شیعه به‌صورت سنتی به مدینه نیز مشرف می‌شوند تا مرقد مطهر پیامبر (ص) در مسجدالنبی و قبور ائمه بقیع را زیارت کنند. این زیارت‌ها دارای اهمیت معنوی بسیار بالایی هستند.';

  @override
  String get hajjIntro =>
      'حج پنجمین رکن اسلام است که بر هر مسلمانی که توانایی مالی و بدنی داشته باشد، یک‌بار در عمر واجب می‌شود. این مناسک در ماه ذی‌الحجه انجام شده و یادآور گام‌های حضرت ابراهیم (ع)، اسماعیل (ع) و حضرت هاجر است. برای شیعیان، حج با برکت زیارت پیامبر (ص) و اهل‌بیت (ع) در مدینه کامل می‌شود.';

  @override
  String get umrahIntro =>
      'عمره زیارت خانه خداست که برخلاف حج، در هر زمانی از سال قابل انجام است. اگرچه واجب نیست، اما دارای پاداش معنوی فراوان است. عمره شامل چهار رکن اصلی می‌باشد.';
}
