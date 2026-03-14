// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'أيارا';

  @override
  String get languageSelectTitle => 'اختر لغتك';

  @override
  String get languageSelectSub => 'يمكنك تغيير هذا لاحقًا من الإعدادات';

  @override
  String get actionContinue => 'متابعة';

  @override
  String get languageSuggestedHeader => 'مقترحة';

  @override
  String get languageAllHeader => 'جميع اللغات';

  @override
  String get languageSuggestedBadge => 'مقترحة';

  @override
  String get languageSearchHint => 'بحث…';

  @override
  String get planBasic => 'القياسية';

  @override
  String get planPremium => 'ولاية';

  @override
  String get categorySlot01 => 'إرشاد يومي';

  @override
  String get categorySlot02 => 'الإيمان والثقة';

  @override
  String get categorySlot03 => 'تأمل في الصلاة';

  @override
  String get categorySlot04 => 'الصبر والرجاء';

  @override
  String get categorySlot05 => 'اطلب المغفرة';

  @override
  String get categorySlot06 => 'الرحمة والشفقة';

  @override
  String get categorySlot07 => 'قوة الإيمان';

  @override
  String get categorySlot08 => 'قلب شاكر';

  @override
  String get categorySlot09 => 'غاية الحياة';

  @override
  String get categorySlot10 => 'صلة الرحم';

  @override
  String get categorySlot11 => 'السلام الداخلي';

  @override
  String get categorySlot12 => 'حكمة النبي';

  @override
  String get categorySlot13 => 'حسن الخلق';

  @override
  String get categorySlot14 => 'مقاومة الإغراء';

  @override
  String get categorySlot15 => 'ذكر المساء';

  @override
  String get categoryCustom => 'تأمل شخصي';

  @override
  String get dhikrMeaningSubhanallah => 'سبحان الله';

  @override
  String get dhikrMeaningAlhamdulillah => 'الحمد لله';

  @override
  String get dhikrMeaningAllahuAkbar => 'الله أكبر';

  @override
  String get quranVerseHeartAtRest => 'ألا بذكر الله تطمئن القلوب.';

  @override
  String get promptHint => 'اضغط على فئة للحصول على إرشاد وتأمل إسلامي';

  @override
  String get currentLanguage => 'اللغة الحالية';

  @override
  String get settingsLanguage => 'إعدادات اللغة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get chooseLanguage => 'اختر لغتك';

  @override
  String get continueCta => 'متابعة';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كلمات',
      one: '$count كلمة',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'الخيارات';

  @override
  String get newCta => 'جديد';

  @override
  String get actionsTitle => 'ماذا تود أن تفعل؟';

  @override
  String get copy => 'نسخ';

  @override
  String get share => 'مشاركة';

  @override
  String get close => 'إغلاق';

  @override
  String get copiedToast => 'تم النسخ إلى الحافظة';

  @override
  String shareSubject(String category) {
    return 'أيارا — $category';
  }

  @override
  String get regenerateErrorTitle => 'تعذر إنشاء رد جديد';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nهل تريد المحاولة مرة أخرى؟';
  }

  @override
  String get cancelCta => 'إلغاء';

  @override
  String get retryCta => 'حاول مرة أخرى';

  @override
  String get authTitle => 'أنشئ حسابك';

  @override
  String get continueAsGuest => 'المتابعة كضيف';

  @override
  String get signInGoogle => 'تسجيل الدخول باستخدام Google';

  @override
  String get signInApple => 'تسجيل الدخول باستخدام Apple';

  @override
  String get signInEmail => 'تسجيل الدخول بالبريد الإلكتروني';

  @override
  String get upgradeWithApple => 'المتابعة باستخدام Apple';

  @override
  String get mustAccept => 'يجب أن توافق على الشروط وأن تقر بسياسة الخصوصية.';

  @override
  String get termsLabel => 'أوافق على شروط الخدمة';

  @override
  String get privacyLabel => 'لقد قرأت سياسة الخصوصية';

  @override
  String get marketingOptIn => 'أوافق على تلقي الأخبار والعروض';

  @override
  String get openTerms => 'شروط الخدمة';

  @override
  String get openPrivacy => 'سياسة الخصوصية';

  @override
  String get accountSection => 'الحساب';

  @override
  String get guestMode => 'وضع الضيف';

  @override
  String get signedIn => 'تم تسجيل الدخول';

  @override
  String get upgradeHint => 'احفظ تأملاتك عبر الأجهزة من خلال إنشاء حساب.';

  @override
  String get upgradeWithGoogle => 'المتابعة باستخدام Google';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get snackUpgraded => 'تمت ترقية الحساب باستخدام Google ✅';

  @override
  String get snackSignedIn => 'تم تسجيل الدخول باستخدام Google ✅';

  @override
  String get snackSignedOut => 'تم تسجيل الخروج';

  @override
  String get snackSignedInApple => 'تم تسجيل الدخول باستخدام Apple ✅';

  @override
  String get snackSignedInGoogle => 'تم تسجيل الدخول باستخدام Google ✅';

  @override
  String get snackUpgradedApple => 'تمت ترقية الحساب باستخدام Apple ✅';

  @override
  String get snackUpgradedGoogle => 'تمت ترقية الحساب باستخدام Google ✅';

  @override
  String get historyTitle => 'التأملات السابقة';

  @override
  String get historyOpenCta => 'التأملات السابقة';

  @override
  String get historyEmpty => 'لا توجد تأملات محفوظة بعد.';

  @override
  String get historyDeleteTitle => 'حذف التأمل؟';

  @override
  String get historyDeleteBody => 'سيؤدي هذا إلى إزالة العنصر المحدد نهائيًا.';

  @override
  String get deleteCta => 'حذف';

  @override
  String get historyButton => 'التأملات السابقة';

  @override
  String get historyEmptyTitle => 'لا توجد تأملات بعد';

  @override
  String get historyEmptyBody =>
      'أنشئ شيئًا أولًا — ستظهر العناصر المحفوظة هنا.';

  @override
  String get historyDelete => 'حذف';

  @override
  String get footerTitle => 'مع الولاية والإيمان والصبر';

  @override
  String get footerSubtitle => 'دعاء واحد في كل مرة';

  @override
  String get genericErrorSnack =>
      'حدث خطأ ما — يرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get upgradeAccountCta => 'احفظ تأملاتك عبر الأجهزة – أنشئ حسابًا';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get exportData => 'تصدير بياناتي';

  @override
  String userUidLabel(String uid) {
    return 'المعرّف: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'تمهّل قليلًا 🐯\nأيارا يحتاج إلى لحظة قبل التالية…';

  @override
  String get rateDailyLimit =>
      'لقد نفدت تأملاتك الآن.\nاحصل على المزيد من التأملات أو قم بالترقية إلى ولاية.';

  @override
  String get rateCreditsExhausted =>
      'لقد استخدمت كل تأملاتك.\nاشحن المزيد أو قم بالترقية إلى ولاية للمتابعة.';

  @override
  String get rateGraceCreditsExhausted =>
      'لقد نفدت تأملاتك الآن.\nاحصل على المزيد من التأملات أو قم بالترقية إلى ولاية.';

  @override
  String get premiumDescription =>
      'تفتح ولاية الميزات المميزة والفئات المستقبلية وشارة خاصة.';

  @override
  String ratePlanExhausted(String plan) {
    return 'تأملاتك فارغة الآن. الخطة: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'تعذر التحقق من تأملاتك: $message';
  }

  @override
  String get rateCheckGenericError => 'حدث خطأ أثناء التحقق من تأملاتك.';

  @override
  String get aiFallbackGeneric =>
      'حدث خطأ ما — يرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get limitSectionTitle => 'التأملات';

  @override
  String get limitTodayLabel => 'الاستخدام';

  @override
  String limitCreditsLabel(Object credits) {
    return 'التأملات المتبقية: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get limitLoadingLabel => 'جارٍ التحميل…';

  @override
  String get limitLoadingLabelDescription =>
      'يظهر في بطاقة التأملات أثناء جلب إحصاءات الاستخدام.';

  @override
  String get aiLimitTitle => 'التأملات';

  @override
  String get aiLimitSubtitle =>
      'كل رد يستهلك تأملًا واحدًا. تتضمن الخطة القياسية تأملات ابتدائية. تفتح ولاية الفئات المميزة وتمكّن من الشحن الإضافي.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total من التأملات المستخدمة';
  }

  @override
  String get creditsSectionTitle => 'التأملات';

  @override
  String get creditsUsageLabel => 'الاستخدام';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'التأملات المتبقية: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get creditsLoadingLabel => 'جارٍ التحميل…';

  @override
  String get creditsLoadingLabelDescription =>
      'يظهر أثناء جلب إحصاءات التأملات.';

  @override
  String get creditsTitle => 'التأملات';

  @override
  String get creditsSubtitle =>
      'كل رد يستهلك تأملًا واحدًا. تتضمن الخطة القياسية تأملات ابتدائية. تفتح ولاية الفئات المميزة وتمكّن من الشحن الإضافي.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total من التأملات المستخدمة';
  }

  @override
  String get settingsDeleteTitle => 'حذف الحساب';

  @override
  String get settingsDeleteDescription =>
      'احذف حسابك وجميع البيانات المرتبطة به نهائيًا.';

  @override
  String get settingsDeleteButtonLabel => 'احذف حسابي';

  @override
  String get settingsDeleteDialogTitle => 'حذف الحساب؟';

  @override
  String get settingsDeleteDialogBody =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه.\n\nسيتم حذف جميع محادثاتك وسجلك ومعلومات حسابك.';

  @override
  String get settingsDeleteDialogCancel => 'إلغاء';

  @override
  String get settingsDeleteDialogConfirm => 'حذف';

  @override
  String get settingsFreeLimitUsedTitle => 'تم استخدام التأملات الابتدائية';

  @override
  String get settingsFreeLimitUsedDescription =>
      'تم استخدام التأملات الابتدائية لهذا الجهاز. قم بالترقية إلى ولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'تم استخدام التأملات الابتدائية';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'تم استخدام التأملات الابتدائية لهذا الجهاز. قم بالترقية إلى ولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get deviceBoundError =>
      'هذا الجهاز مرتبط بالفعل بحساب آخر. يرجى تسجيل الدخول بالحساب الأصلي.';

  @override
  String get premiumTitle => 'وضع ولاية';

  @override
  String get premiumSubtitleBasic => 'افتح تجربة أيارا الكاملة.';

  @override
  String get premiumSubtitlePremium =>
      'أنت على ولاية. هل تحتاج إلى مزيد من التأملات؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'الخطة الحالية: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'التأملات: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'عمليات الشراء غير متاحة الآن.';

  @override
  String get premiumSignInToPurchase =>
      'سجّل الدخول لشراء التأملات أو فتح ولاية.';

  @override
  String get premiumRestorePurchases => 'استعادة المشتريات';

  @override
  String get premiumProcessing => 'جارٍ المعالجة…';

  @override
  String get premiumRestoreHintTitle =>
      'هل سبق أن اشتريت ولاية أو التأملات على هذا الجهاز أو جهاز آخر؟';

  @override
  String get premiumRestoreHintBody => 'استعد مشترياتك إذا لم تكن ظاهرة.';

  @override
  String get premiumBuyCredits200 => 'شراء 200 تأمل';

  @override
  String get premiumBuyCredits400 => 'شراء 400 تأمل';

  @override
  String get premiumBecomePremiumOneTime => 'الترقية إلى وضع ولاية';

  @override
  String get premiumTopupHint => 'مع ولاية، يمكنك شحن تأملات إضافية متى احتجت.';

  @override
  String get premiumUpgradeCta => 'ترقية';

  @override
  String get premiumRequiredForCategory =>
      'هذه الفئة متاحة فقط لمستخدمي ولاية. قم بالترقية من الإعدادات لفتح كل المحتوى المميز.';

  @override
  String get premiumBenefitsBasic =>
      'افتح ولاية لتحصل على تأملات إضافية، والوصول إلى الفئات المميزة، والمتابعة كلما احتجت إلى الإرشاد.';

  @override
  String get premiumBenefitsPremium =>
      'أنت في وضع ولاية. إذا بدأت التأملات بالنفاد، أضف المزيد وتابع دون انقطاع.';

  @override
  String get premiumButtonBecomePremium => 'فتح ولاية';

  @override
  String get premiumButtonTopup1000 => 'إضافة 1000 تأمل';

  @override
  String get premiumBadge => 'ولاية مفعّلة';

  @override
  String get premiumLoadingStore => 'جارٍ تحميل المتجر…';

  @override
  String get premiumProductNotAvailable =>
      'هذا المنتج غير متاح في المتجر بعد. يرجى المحاولة لاحقًا.';

  @override
  String get premiumPurchaseError =>
      'حدث خطأ أثناء الشراء. يرجى المحاولة مرة أخرى.';

  @override
  String get premiumBuyCredits100 => 'إضافة 100 تأمل';

  @override
  String get premiumFeatureLocked => 'افتح ولاية للوصول إلى هذه الميزة.';

  @override
  String get lockedCategoriesHint =>
      'بعض الفئات مخصصة لأعضاء ولاية. افتحها لاستكشاف كل تأمل في رحلتك.';

  @override
  String get freePlanBlockedTitle => 'لقد استخدمت التأملات الابتدائية كلها';

  @override
  String get freePlanBlockedBody =>
      'أنت على الخطة القياسية مع تأملات ابتدائية، وقد وصلت إلى الحد الأقصى. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى ولاية.';

  @override
  String get freePlanBlockedCtaGoPremium => 'اطلع على خيارات ولاية أدناه';

  @override
  String get graceBlockedTitle => 'لقد استخدمت التأملات الابتدائية كلها';

  @override
  String get graceBlockedBody =>
      'أنت على الخطة القياسية مع تأملات ابتدائية، وقد وصلت إلى الحد الأقصى. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى ولاية.';

  @override
  String get graceBlockedCtaGoPremium => 'اطلع على خيارات ولاية أدناه';

  @override
  String get rateGuestMustSignIn => 'سجّل الدخول لاستخدام أيارا وتأملاتك.';

  @override
  String get guestNoCreditsTitle => 'وضع الضيف';

  @override
  String get guestNoCreditsBody =>
      'بصفتك ضيفًا يمكنك تصفح التطبيق، لكن لا يمكنك استخدام التأملات. سجّل الدخول لاحقًا من الإعدادات لاستخدام التأملات وفتح المشتريات.';

  @override
  String get guestDialogContinue => 'متابعة';

  @override
  String get guestDialogLoginInstead => 'تسجيل الدخول بدلًا من ذلك';

  @override
  String get optionalLabel => 'اختياري';

  @override
  String get accountDeleteSuccessTitle => 'تم حذف الحساب';

  @override
  String get accountDeleteSuccessBody =>
      'تم حذف حسابك والبيانات المرتبطة به بنجاح.';

  @override
  String get accountDeleteSuccessClose => 'إغلاق';

  @override
  String get accountDeleteErrorTitle => 'تعذر حذف الحساب';

  @override
  String get accountDeleteErrorClose => 'حسنًا';

  @override
  String get accountDeleteReauthCancelled =>
      'تم إلغاء إعادة المصادقة. يرجى تسجيل الدخول مرة أخرى ثم إعادة محاولة الحذف.';

  @override
  String get accountDeleteReauthRequired =>
      'يتطلب حذف الحساب تسجيل دخول حديثًا. يرجى تسجيل الخروج ثم تسجيل الدخول مجددًا وإعادة المحاولة.';

  @override
  String get settingsDeletePermanentWarning =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه. سيتم حذف كل البيانات المرتبطة بحسابك.';

  @override
  String get dailyGraceTitle => 'إرشاد يومي';

  @override
  String get dailyGraceScriptureLabel => 'آية اليوم';

  @override
  String get dailyGraceSaintLabel => 'شخصية الأسبوع';

  @override
  String get dailyGraceReflectionLabel => 'تأمل المساء';

  @override
  String get dailyGraceCopiedToast => 'تم نسخ الآية إلى الحافظة';

  @override
  String get locationConsentLabel =>
      'السماح لأيارا باستخدام موقعي لاتجاه القبلة وأوقات الصلاة';

  @override
  String get locationConsentHint =>
      'يُستخدم فقط لهاتين الميزتين. لن يتم أبدًا مشاركة موقعك أو تخزينه.';

  @override
  String get askPageTitle => 'اسأل أيارا';

  @override
  String get askPageDescription =>
      'اسأل أي شيء عن الإيمان أو الصلاة أو الحياة أو الممارسة الإسلامية واحصل على إرشاد مستند إلى القرآن وتعاليم أهل البيت.';

  @override
  String get askPageInputHint => 'اكتب سؤالك هنا…';

  @override
  String get askPageSubmitCta => 'اسأل';

  @override
  String get askPageInputEmptyError => 'يرجى كتابة سؤال أولًا.';

  @override
  String get askResultYourQuestion => 'سؤالك';

  @override
  String get guidancePageTitle => 'القبلة';

  @override
  String get qiblaFacingMecca => 'باتجاه مكة';

  @override
  String get qiblaCompassInstruction =>
      'أدر هاتفك حتى تشير الإبرة الذهبية إلى الأعلى.\nذلك الاتجاه يشير إلى القبلة (مكة).';

  @override
  String get qiblaGpsUnavailableBody =>
      'إشارة GPS ضعيفة. انتقل إلى مكان مفتوح واضغط إعادة المحاولة.';

  @override
  String get qiblaRetry => 'إعادة المحاولة';

  @override
  String get qiblaTitle => 'اتجاه القبلة';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km كم إلى مكة';
  }

  @override
  String get qiblaLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get qiblaLocationNeededBody =>
      'اسمح بالوصول إلى الموقع لكي يتمكن أيارا من حساب اتجاه الكعبة في مكة من أي مكان تكون فيه.';

  @override
  String get qiblaOpenSettings => 'فتح الإعدادات';

  @override
  String get qiblaCompassLoading => 'جارٍ تحديد موقعك…';

  @override
  String get qiblaTowardMecca => 'نحو مكة';

  @override
  String get prayerTimesTitle => 'أوقات الصلاة';

  @override
  String get prayerTimesFajr => 'الفجر';

  @override
  String get prayerTimesDhuhr => 'الظهر';

  @override
  String get prayerTimesAsr => 'العصر';

  @override
  String get prayerTimesMaghrib => 'المغرب';

  @override
  String get prayerTimesIsha => 'العشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get prayerTimesLocationNeededBody =>
      'اسمح بالوصول إلى الموقع لكي يتمكن أيارا من حساب أوقات الصلاة الدقيقة لمدينتك.';

  @override
  String get prayerTimesNextLabel => 'التالي';

  @override
  String get prayerTimesDoneLabel => 'تم';

  @override
  String get monthlyPrayerTimesTitle => 'أوقات الصلاة الشهرية';

  @override
  String get monthlyPrayerTimesViewButton => 'عرض الشهر كاملًا';

  @override
  String get monthlyPrayerTimesNextMonth => 'الشهر التالي';

  @override
  String get monthlyPrayerTimesDayHeader => 'اليوم';

  @override
  String get sharePrayerTimes => 'مشاركة أوقات الصلاة';

  @override
  String get notificationsSectionTitle => 'الإشعارات';

  @override
  String get notificationsSectionSubtitle =>
      'تذكيرات الصلاة وفعاليات التقويم والمزيد';

  @override
  String get dailyReflectionReminderTitle => 'تأمل يومي';

  @override
  String get dailyReflectionReminderDescription =>
      'تذكير يومي لطيف لفتح أيارا والتواصل مع إيمانك.';

  @override
  String get dailyReflectionReminderEnable => 'تفعيل التذكير اليومي';

  @override
  String get dailyReflectionReminderTimeLabel => 'وقت التذكير';

  @override
  String get prayerNotificationsTitle => 'تذكيرات الصلاة';

  @override
  String get prayerNotificationsDescription =>
      'استلم تذكيرًا لطيفًا قبل كل وقت صلاة ليساعدك على البقاء متصلًا طوال اليوم.';

  @override
  String get prayerNotificationsEnable => 'تفعيل تذكيرات الصلاة';

  @override
  String get prayerNotificationsOpenSettings => 'فتح إعدادات الإشعارات';

  @override
  String get prayerNotificationsDenied => 'الإشعارات معطلة';

  @override
  String get prayerNotificationsDeniedHint =>
      'اذهب إلى الإعدادات واسمح بالإشعارات لتطبيق أيارا لتلقي تذكيرات أوقات الصلاة.';

  @override
  String get notificationsConsentLabel => 'السماح بالإشعارات لأوقات الصلاة';

  @override
  String get prayerNotifTitleFajr => '🌅 الفجر — صلاة الفجر';

  @override
  String get prayerNotifBodyFajr =>
      'الفجر صلاة صباحات أهل البيت. قال الإمام علي (ع): احفظ صلاة الفجر كما تحفظ أعز أماناتك. انهض، وتطهّر، وقف بين يدي الله.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ الظهر — صلاة منتصف النهار';

  @override
  String get prayerNotifBodyDhuhr =>
      'كان أئمة أهل البيت يقدّرون كل لحظة من الذكر. توقّف في يومك، واجمع الظهر مع العصر إن احتجت، وأعد قلبك إلى الله.';

  @override
  String get prayerNotifTitleAsr => '🌤️ العصر — صلاة العصر';

  @override
  String get prayerNotifBodyAsr =>
      'حافظ على الصلاة، فهي العهد بينك وبين الله. لقد دخل وقت العصر — فلا تدعه يمر دون ذكر.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 المغرب — صلاة الغروب';

  @override
  String get prayerNotifBodyMaghrib =>
      'غربت الشمس — وهي لحظة كان أهل البيت يقدّسونها للدعاء. أدِّ صلاة المغرب وارفع يديك إلى الله بالدعاء قبل أن يبدأ الليل.';

  @override
  String get prayerNotifTitleIsha => '🌙 العشاء — صلاة الليل';

  @override
  String get prayerNotifBodyIsha =>
      'اختم يومك في معية الله. شجّع الأئمة على صلاة الليل بعد العشاء — لكن أولًا، أتمّ صلاة العشاء واختم يومك بذكره.';

  @override
  String get outOfReflectionsBannerText => 'لقد استخدمت كل تأملاتك';

  @override
  String get outOfReflectionsBannerCta => 'احصل على المزيد';

  @override
  String get dhikrPageTitle => 'الذكر';

  @override
  String get dhikrTapToCount => 'اضغط على الدائرة للعد';

  @override
  String get dhikrResetButton => 'إعادة تعيين';

  @override
  String get dhikrComplete => 'ما شاء الله';

  @override
  String get dhikrCompleteMessage =>
      'لقد أكملت 100 ذكر لله. نسأل الله أن تكون نورًا لقلبك.';

  @override
  String get disclaimerTitle => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerBody =>
      'يوفّر أيارا تأملات إسلامية وتذكيرات ومحتوى روحيًا لدعم رحلتك الإيمانية الشخصية، مستندًا إلى القرآن وتعاليم أهل البيت. يُقدَّم هذا المحتوى لأغراض عامة إعلامية وإلهامية فقط.\n\nأيارا لا يغني عن أهل الاختصاص.\nالإرشاد في هذا التطبيق ليس بديلًا عن العالِم الإسلامي المؤهّل أو المرجع أو المعلّم المتخصص في العقيدة. في الإسلام الشيعي، تستند الهداية الدينية إلى المدرسة الجعفرية في الفقه وإلى تقليد اتباع المرجع الحي — وهو الفقيه المؤهّل الذي ترشد أحكامه المؤمنين في الممارسة الدينية. إذا كانت لديك أسئلة حول الأحكام الشرعية أو مسائل الحلال والحرام أو الواجبات الدينية الشخصية، فيرجى طلب المشورة من مرجع مؤهّل أو عالم في مجتمعك.\n\nهذا التطبيق لا يصدر أحكامًا شرعية.\nأيارا لا يتخذ قرارات ملزمة في مسائل الفقه أو الواجبات الدينية الشخصية. ولا ينبغي التعامل مع أي شيء هنا على أنه فتوى أو توجيه ديني ملزم.\n\nمركزية أهل البيت.\nفي الإسلام الشيعي، يُعدّ النبي محمد ﷺ وأهل بيته المطهّرون — أهل البيت — الأدلاء المعصومين للأمة الإسلامية بعد القرآن. والأئمة الاثنا عشر من أهل البيت هم المفسرون المعيّنون إلهيًا للتعاليم الإسلامية. يعكس المحتوى في هذا التطبيق هذا التقليد ويسعى إلى تكريمه بأمانة.\n\nشؤون المجتمع.\nيهدف هذا التطبيق إلى تشجيع ارتباطك بالإيمان مع احترام عميق للدور الحيوي الذي تؤديه مساجدك المحلية ومراكزك الإسلامية ومجتمعك الديني. ونشجّعك على البقاء متصلًا والتعلّم من المعلّمين المؤهلين القريبين منك.';

  @override
  String get disclaimerClose => 'أفهم';

  @override
  String get disclaimerInfoTooltip => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerSettingsSubtitle =>
      'لأغراض معلوماتية عامة فقط. اضغط لقراءة إخلاء المسؤولية الكامل.';

  @override
  String get disclaimerSectionHeader => 'إخلاء مسؤولية الإرشاد';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navReflect => 'تأمل';

  @override
  String get navDuas => 'الأدعية';

  @override
  String get navCalendar => 'التقويم';

  @override
  String get dashboardToday => 'اليوم';

  @override
  String get dashboardComingUp => 'قريبًا';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أيام',
      one: 'يوم',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'وصول سريع';

  @override
  String get quickActionQibla => 'القبلة';

  @override
  String get quickActionDhikr => 'الذكر';

  @override
  String get quickActionDailyGrace => 'الإرشاد';

  @override
  String get quickActionPrayerTimes => 'أوقات الصلاة';

  @override
  String get askAyaraTitle => 'اسأل أيارا';

  @override
  String get askAyaraSubtitle =>
      'اسأل أي سؤال إسلامي واحصل على إجابة متأملة وموجّهة.';

  @override
  String get askAyaraHint => 'مثلًا: ما أهمية شهر رمضان؟';

  @override
  String get askAyaraSubmit => 'اسأل';

  @override
  String get wisdomOfTheDayTitle => 'حكمة اليوم';

  @override
  String get calendarScreenTitle => 'التقويم الإسلامي';

  @override
  String get calendarUpcomingOccasions => 'المناسبات القادمة';

  @override
  String get calendarOccasionRemindersTitle => 'تذكيرات المناسبات';

  @override
  String get calendarOccasionRemindersHint =>
      'سيتم الإشعار مساء اليوم السابق لكل مناسبة';

  @override
  String get calendarNotifPermissionDenied =>
      'تم رفض إذن الإشعارات. فعّله من إعدادات جهازك.';

  @override
  String get calendarNoEvents => 'لم يتم العثور على مناسبات قادمة.';

  @override
  String get calendarAddToPhone => 'أضف إلى تقويم الهاتف';

  @override
  String get calendarAddedToPhone => 'تمت الإضافة إلى التقويم';

  @override
  String get calendarCountdownToday => 'اليوم';

  @override
  String get calendarCountdownTomorrow => 'غدًا';

  @override
  String calendarCountdownDays(int days) {
    return 'بعد $days أيام';
  }

  @override
  String get calendarAH => 'هـ';

  @override
  String get calendarMonthJan => 'يناير';

  @override
  String get calendarMonthFeb => 'فبراير';

  @override
  String get calendarMonthMar => 'مارس';

  @override
  String get calendarMonthApr => 'أبريل';

  @override
  String get calendarMonthMay => 'مايو';

  @override
  String get calendarMonthJun => 'يونيو';

  @override
  String get calendarMonthJul => 'يوليو';

  @override
  String get calendarMonthAug => 'أغسطس';

  @override
  String get calendarMonthSep => 'سبتمبر';

  @override
  String get calendarMonthOct => 'أكتوبر';

  @override
  String get calendarMonthNov => 'نوفمبر';

  @override
  String get calendarMonthDec => 'ديسمبر';

  @override
  String get calendarSeasonMuharramEarly => 'أيام محرّم — تذكّر كربلاء';

  @override
  String get calendarSeasonAshura => 'عاشوراء — يا حسين (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرّم — أيام الحزن والتأمل';

  @override
  String get calendarSeasonArbaeen => 'الأربعين — أربعون يومًا مع الحسين';

  @override
  String get calendarSeasonRoadToArbaeen => 'الطريق إلى الأربعين';

  @override
  String get calendarSeasonMabath => 'المبعث المبارك — فجر الوحي';

  @override
  String get calendarSeasonMidShaban =>
      'منتصف شعبان — ميلاد الإمام المهدي (عج)';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارك — شهر القرآن';

  @override
  String get calendarSeasonGhadir => 'عيد الغدير مبارك!';

  @override
  String get hijriMonth1 => 'محرّم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربيع الأول';

  @override
  String get hijriMonth4 => 'ربيع الآخر';

  @override
  String get hijriMonth5 => 'جمادى الأولى';

  @override
  String get hijriMonth6 => 'جمادى الآخرة';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوّال';

  @override
  String get hijriMonth11 => 'ذو القعدة';

  @override
  String get hijriMonth12 => 'ذو الحجة';

  @override
  String get duasScreenTitle => 'الأدعية والزيارات';

  @override
  String get duasSearchHint => 'ابحث في الأدعية والزيارات…';

  @override
  String get duasFilterAll => 'الكل';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أدعية وزيارات',
      one: '$count دعاء',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'لم يتم العثور على أدعية.';

  @override
  String get duaCategoryDaily => 'يومي';

  @override
  String get duaCategoryWeekly => 'أسبوعي';

  @override
  String get duaCategoryOccasions => 'المناسبات';

  @override
  String get duaCategoryZiyarat => 'الزيارات';

  @override
  String get duaCategoryTasbih => 'التسبيح';

  @override
  String get eventTypeBirth => 'الولادة';

  @override
  String get eventTypeMartyrdom => 'الاستشهاد';

  @override
  String get eventTypeOccasion => 'مناسبة';

  @override
  String get duaCopyTooltip => 'نسخ الترجمة';

  @override
  String get duaToggleTransliteration => 'النقل الصوتي';

  @override
  String get duaToggleTranslation => 'الترجمة';

  @override
  String get duaAskAiLabel => 'اطلب من أيارا شرح هذا الدعاء';

  @override
  String get duaAskAiLockedLabel => 'اسأل أيارا (ولاية)';

  @override
  String get duaAiLockedMessage =>
      'شروحات أيارا متاحة لأعضاء ولاية. قم بالترقية من الإعدادات.';

  @override
  String duaAiComingSoon(String name) {
    return 'اسأل أيارا عن \"$name\" — قريبًا!';
  }

  @override
  String get duaCopiedToast => 'تم نسخ الدعاء إلى الحافظة.';

  @override
  String get tasbihAllahuAkbarMeaning => 'الله أكبر';

  @override
  String get tasbihAlhamdulillahMeaning => 'الحمد لله';

  @override
  String get tasbihSubhanallahMeaning => 'سبحان الله';

  @override
  String get tasbihResetTooltip => 'إعادة تعيين';

  @override
  String get tasbihCompleteTitle => 'اكتمل التسبيح';

  @override
  String get tasbihCompleteMessage => 'تقبّل الله ذكرك.';

  @override
  String get tasbihTapHint => 'اضغط في أي مكان للعد';

  @override
  String get tasbihatScreenTitle => 'دليل الصلاة';

  @override
  String get tasbihatScreenSubtitle => 'تسبيحات الصلاة';

  @override
  String get tasbihatScreenDescription =>
      'دليل كامل للتسبيحات التي تُتلى أثناء الصلوات اليومية وبعدها — وفقًا لتقليد أهل البيت (ع).';

  @override
  String get tasbihatArba3Title => 'التسبيحات الأربع';

  @override
  String get tasbihatArba3Subtitle => 'تُتلى في الركعة الثالثة والرابعة';

  @override
  String get tasbihatArba3Info =>
      'في الفقه الشيعي، تقوم التسبيحات الأربع مقام سورة الفاتحة في الركعة الثالثة والرابعة من الظهر والعصر والمغرب والعشاء. ويجب قراءتها مرة واحدة، ويُستحب قراءتها ثلاث مرات.';

  @override
  String get tasbihatArba3Translation =>
      'سبحان الله · الحمد لله\nلا إله إلا الله · الله أكبر';

  @override
  String get tasbihatArba3CompleteTitle => 'اكتملت التلاوة';

  @override
  String get tasbihatArba3CompleteMessage => 'تُقبّلت صلاتك بإذن الله — آمين';

  @override
  String get tasbihatArba3TapHint => 'اضغط بعد كل تلاوة';

  @override
  String get tasbihatZahraSubtitle => 'بعد كل صلاة · 100 حبّة';

  @override
  String get tasbihatZahraOriginLabel => 'الأصل';

  @override
  String get tasbihatZahraHadith =>
      'طلبت السيدة فاطمة الزهراء (ع) من النبي ﷺ خادمًا، فقال: «أفلا أدلك على ما هو خير لك من خادم؟ تسبحين الله 33 مرة، وتحمدين الله 33 مرة، وتكبرين الله 34 مرة بعد كل صلاة. ذلك خير لك من خادم».';

  @override
  String get tasbihatZahraHadithSource => '— بحار الأنوار، ج 85';

  @override
  String get tasbihatZahraOpenCounter => 'افتح عدّاد التسبيح';

  @override
  String get tasbihatDuasTitle => 'أدعية مستحبة';

  @override
  String get tasbihatDuasSubtitle => 'بعد إتمام صلاتك';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آية الكرسي';

  @override
  String get tasbihatDuaAyatKursiWhen => 'بعد كل صلاة واجبة';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورة البقرة 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'من قرأ آية الكرسي بعد كل صلاة واجبة، لم يحل بينه وبين الجنة إلا الموت. وقال الإمام الباقر (ع) إنها من أعظم آيات القرآن.';

  @override
  String get tasbihatDuaSalawatTitle => 'الصلوات';

  @override
  String get tasbihatDuaSalawatWhen => 'بعد كل صلاة · تختم جميع الأدعية';

  @override
  String get tasbihatDuaSalawatSource => 'الإمام الصادق (ع) — الكافي';

  @override
  String get tasbihatDuaSalawatNote =>
      'يُستحب إرسال الصلاة على النبي ﷺ وآله الطاهرين (آل محمد) لختم كل دعاء. قال الإمام الصادق (ع): «كل دعاء محجوب حتى يُصلّى على محمد وآل محمد».';

  @override
  String get tasbihatDuaFarajTitle => 'دعاء الفرج';

  @override
  String get tasbihatDuaFarajWhen => 'بعد كل صلاة · لإمام زماننا';

  @override
  String get tasbihatDuaFarajSource => 'علّمه الإمام الحسن العسكري (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دعاء لظهور الإمام المهدي (عج)، الإمام الثاني عشر، الذي علمه والده. وغالبًا ما يُتلى من قبل العديد من المسلمين الشيعة بعد الصلاة كعمل من أعمال العبادة للإمام الحي.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تسبيح السيدة فاطمة';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'بعد المغرب والعشاء · مستحب بشكل خاص';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'الإمام الباقر (ع) — بحار الأنوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'قال الإمام الباقر (ع) إن قراءة تسبيح الزهراء بعد العشاء قبل النوم خير من ألف ركعة من النوافل. ونوره يصعد إلى السماء.';

  @override
  String get tasbihFatimaGiftPre => 'هدية من النبي';

  @override
  String get tasbihFatimaGiftPost => 'تُقرأ بعد كل صلاة';

  @override
  String get prayerTrackerTitle => 'متتبع الصلاة';

  @override
  String get prayerTrackerPrayed => 'تمت الصلاة';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'سلسلة $count يوم';
  }

  @override
  String get prayerTrackerAllComplete => 'اكتملت جميع صلوات اليوم. تقبّل الله.';

  @override
  String get dhikrTrackerTitle => 'تسبيح الزهراء';

  @override
  String get dhikrTrackerCompletedToday => 'أُنجز اليوم';

  @override
  String get dhikrTrackerNotDoneToday => 'لم يُنجز اليوم';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'سلسلة $count يوم';
  }

  @override
  String get dhikrReminderTitle => 'تذكير التسبيح';

  @override
  String get dhikrReminderDescription =>
      'تذكير يومي لطيف لقراءة تسبيح الزهراء (ع).';

  @override
  String get dhikrReminderEnable => 'تفعيل تذكير التسبيح';

  @override
  String get dhikrReminderTimeLabel => 'وقت التذكير';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حديث اليوم';

  @override
  String get hadithLabelArabic => 'العربية';

  @override
  String get hadithLabelTranslation => 'الترجمة';

  @override
  String get hadithBadge => 'حديث';

  @override
  String get hadithShare => 'مشاركة هذا الحديث';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nعبر أيارا';
  }

  @override
  String get hadithNavPrevious => 'السابق';

  @override
  String get hadithNavNext => 'التالي';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'الأئمة المعصومون الأربعة عشر';

  @override
  String get imamsScreenSubtitle =>
      'النبي، السيدة فاطمة، والأئمة الاثنا عشر — المرشدون المطهرون والمعصومون في الإسلام الشيعي الاثني عشري';

  @override
  String get imamLabelBorn => 'الولادة';

  @override
  String get imamLabelMartyrdom => 'الاستشهاد';

  @override
  String get imamLabelStatus => 'الصفة';

  @override
  String get imamSectionBiography => 'السيرة';

  @override
  String get imamSectionFamousSaying => 'قول مشهور';

  @override
  String get imamRoleProphet => 'خاتم الأنبياء';

  @override
  String get imamRoleInfallible => 'المعصوم';

  @override
  String get imamOrdinal1 => 'الإمام الأول';

  @override
  String get imamOrdinal2 => 'الإمام الثاني';

  @override
  String get imamOrdinal3 => 'الإمام الثالث';

  @override
  String get imamOrdinal4 => 'الإمام الرابع';

  @override
  String get imamOrdinal5 => 'الإمام الخامس';

  @override
  String get imamOrdinal6 => 'الإمام السادس';

  @override
  String get imamOrdinal7 => 'الإمام السابع';

  @override
  String get imamOrdinal8 => 'الإمام الثامن';

  @override
  String get imamOrdinal9 => 'الإمام التاسع';

  @override
  String get imamOrdinal10 => 'الإمام العاشر';

  @override
  String get imamOrdinal11 => 'الإمام الحادي عشر';

  @override
  String get imamOrdinal12 => 'الإمام الثاني عشر';

  @override
  String get duaAudioScreenTitle => 'استمع إلى الأدعية';

  @override
  String get duaAudioScreenSubtitle =>
      'اختر دعاءً للاستماع إليه. اضغط على البطاقة للتشغيل أو الإيقاف المؤقت.';

  @override
  String get duaAudioComingSoonMessage =>
      'سيكون الصوت لهذا الدعاء متاحًا في تحديث قادم.';

  @override
  String get duaAudioClose => 'إغلاق';

  @override
  String get duaAudioError => 'تعذر تحميل الصوت. يرجى التحقق من اتصالك.';

  @override
  String get duaAudioMetaTransmittedBy => 'نقله';

  @override
  String get duaAudioMetaOccasion => 'المناسبة';

  @override
  String get duaAudioMetaDuration => 'المدة';

  @override
  String get quickActionDailyHadith => 'حديث اليوم';

  @override
  String get quickAction14Masumeen => 'الأئمة المعصومون الأربعة عشر';

  @override
  String get quickActionListenDuas => 'استماع';

  @override
  String get quickActionTasbihat => 'دليل الصلاة';

  @override
  String get pilgrimageSectionTitle => 'الرحلة المقدسة';

  @override
  String get pilgrimageSectionSubtitle =>
      'أدلة كاملة للحج والعمرة — إلى بيت الله الحرام في مكة';

  @override
  String get hajjCardTitle => 'الحج';

  @override
  String get hajjCardSubtitle => 'الركن الخامس من الإسلام';

  @override
  String get hajjCardDescription =>
      'الحج السنوي العظيم — فريضة مرة في العمر على كل مسلم قادر';

  @override
  String get hajjScreenTitle => 'دليل الحج';

  @override
  String get hajjScreenSubtitle => 'دليل خطوة بخطوة للحج الأكبر';

  @override
  String get umrahCardTitle => 'العمرة';

  @override
  String get umrahCardSubtitle => 'الحج الأصغر';

  @override
  String get umrahCardDescription =>
      'رحلة روحية عظيمة الأجر يمكن أداؤها في أي وقت من السنة';

  @override
  String get umrahScreenTitle => 'دليل العمرة';

  @override
  String get umrahScreenSubtitle => 'دليل خطوة بخطوة للعمرة';

  @override
  String get pilgrimageStepsTitle => 'المناسك والخطوات';

  @override
  String get pilgrimageImportantNotesTitle => 'ملاحظات مهمة';

  @override
  String get pilgrimageDuaTitle => 'دعاء لهذه الخطوة';

  @override
  String get pilgrimageJafariNoteTitle => 'ملاحظة فقهية جعفرية';

  @override
  String get pilgrimageComplete => '✓ مكتمل';

  @override
  String get pilgrimageMarkDone => 'حدد كمنجز';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done من $total خطوات';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقيقة';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'الحجاج الشيعة';

  @override
  String get pilgrimageShiaNoteBody =>
      'يسافر العديد من الحجاج الشيعة أيضًا إلى المدينة لزيارة النبي محمد (صلى الله عليه وآله) في مسجد النبي والقبور في جنات البقيع. تحمل هذه الزيارات دلالات روحية عميقة، على الرغم من أنها ليست مناسك الحج بحد ذاتها.';

  @override
  String get hajjIntro =>
      'الحج هو الركن الخامس من أركان الإسلام، وهو واجب مرة واحدة في العمر لكل مسلم قادر جسديًا وماليًا. بالنسبة لمعظم الحجاج الشيعة الاثني عشر اليوم، يعني ذلك حج التمتع، الذي يُؤدى في شهر ذي الحجة على خطى النبي إبراهيم (عليه السلام)، وابنه إسماعيل (عليه السلام)، والسيدة هاجر. يتبع هذا الدليل الخطوط العريضة الجعفرية للمناسك، بينما تبقى الزيارة في المدينة رحلة محبوبة بعمق قبل أو بعد الحج.';

  @override
  String get umrahIntro =>
      'العمرة هي الحج الأصغر إلى مكة، وعلى خلاف الحج يمكن أداؤها في أي وقت من السنة. ورغم أنها ليست واجبة، فإن لها أجرًا روحيًا عظيمًا وتُعد من العبادات المستحبة جدًا. وتشترك مع الحج في عدة مناسك، لكنها أقصر وتتكوّن من أربعة أعمال رئيسية.';

  @override
  String get voiceInputTitle => 'إدخال صوتي';

  @override
  String get voiceInputMicTitle => 'ميكروفون';

  @override
  String get voiceInputMicSubtitle =>
      'تحدث بإدخالك إلى Ask Ayara بدلاً من الكتابة.';

  @override
  String get voiceInputMicDenied => 'تم رفض الوصول إلى الميكروفون.';

  @override
  String get voiceInputSpeak => 'تحدث بدلاً من ذلك';

  @override
  String get voiceInputListening => 'استماع…';

  @override
  String get voiceInputPermissionDenied =>
      'يتطلب إدخال الصوت الوصول إلى الميكروفون.';
}

/// The translations for Arabic, as used in the United Arab Emirates (`ar_AE`).
class AppLocalizationsArAe extends AppLocalizationsAr {
  AppLocalizationsArAe() : super('ar_AE');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'اختر لغتك';

  @override
  String get languageSelectSub => 'يمكنك تغيير هذا لاحقاً من الإعدادات';

  @override
  String get actionContinue => 'متابعة';

  @override
  String get languageSuggestedHeader => 'مقترحة';

  @override
  String get languageAllHeader => 'جميع اللغات';

  @override
  String get languageSuggestedBadge => 'مقترحة';

  @override
  String get languageSearchHint => 'بحث…';

  @override
  String get planBasic => 'القياسية';

  @override
  String get planPremium => 'الولاية';

  @override
  String get categorySlot01 => 'إرشاد يومي';

  @override
  String get categorySlot02 => 'الإيمان والثقة';

  @override
  String get categorySlot03 => 'تأملات الصلاة';

  @override
  String get categorySlot04 => 'الصبر والرجاء';

  @override
  String get categorySlot05 => 'اطلب المغفرة';

  @override
  String get categorySlot06 => 'الرحمة والرأفة';

  @override
  String get categorySlot07 => 'قوة الإيمان';

  @override
  String get categorySlot08 => 'قلب شاكر';

  @override
  String get categorySlot09 => 'غاية الحياة';

  @override
  String get categorySlot10 => 'صلة الرحم';

  @override
  String get categorySlot11 => 'السلام الداخلي';

  @override
  String get categorySlot12 => 'حكمة النبي';

  @override
  String get categorySlot13 => 'حسن الخلق';

  @override
  String get categorySlot14 => 'مقاومة الفتنة';

  @override
  String get categorySlot15 => 'ذكر المساء';

  @override
  String get categoryCustom => 'تأمل شخصي';

  @override
  String get dhikrMeaningSubhanallah => 'سبحان الله';

  @override
  String get dhikrMeaningAlhamdulillah => 'الحمد لله';

  @override
  String get dhikrMeaningAllahuAkbar => 'الله أكبر';

  @override
  String get quranVerseHeartAtRest => 'ألا بذكر الله تطمئن القلوب.';

  @override
  String get promptHint => 'اضغط على فئة للحصول على إرشاد وتأمل إسلامي';

  @override
  String get currentLanguage => 'اللغة الحالية';

  @override
  String get settingsLanguage => 'إعدادات اللغة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get chooseLanguage => 'اختر لغتك';

  @override
  String get continueCta => 'متابعة';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كلمات',
      one: '$count كلمة',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'الخيارات';

  @override
  String get newCta => 'جديد';

  @override
  String get actionsTitle => 'ماذا تود أن تفعل؟';

  @override
  String get copy => 'نسخ';

  @override
  String get share => 'مشاركة';

  @override
  String get close => 'إغلاق';

  @override
  String get copiedToast => 'تم النسخ إلى الحافظة';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'تعذر إنشاء رد جديد';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nهل تريد المحاولة مرة أخرى؟';
  }

  @override
  String get cancelCta => 'إلغاء';

  @override
  String get retryCta => 'حاول مرة أخرى';

  @override
  String get authTitle => 'أنشئ حسابك';

  @override
  String get continueAsGuest => 'المتابعة كضيف';

  @override
  String get signInGoogle => 'تسجيل الدخول عبر Google';

  @override
  String get signInApple => 'تسجيل الدخول عبر Apple';

  @override
  String get signInEmail => 'تسجيل الدخول عبر البريد الإلكتروني';

  @override
  String get upgradeWithApple => 'المتابعة عبر Apple';

  @override
  String get mustAccept =>
      'يجب عليك قبول شروط الخدمة والإقرار بسياسة الخصوصية.';

  @override
  String get termsLabel => 'أوافق على شروط الخدمة';

  @override
  String get privacyLabel => 'لقد قرأت سياسة الخصوصية';

  @override
  String get marketingOptIn => 'أوافق على تلقي الأخبار والعروض';

  @override
  String get openTerms => 'شروط الخدمة';

  @override
  String get openPrivacy => 'سياسة الخصوصية';

  @override
  String get accountSection => 'الحساب';

  @override
  String get guestMode => 'وضع الضيف';

  @override
  String get signedIn => 'تم تسجيل الدخول';

  @override
  String get upgradeHint => 'احفظ تأملاتك عبر الأجهزة المختلفة بإنشاء حساب.';

  @override
  String get upgradeWithGoogle => 'المتابعة عبر Google';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get snackUpgraded => 'تمت ترقية الحساب عبر Google ✅';

  @override
  String get snackSignedIn => 'تم تسجيل الدخول عبر Google ✅';

  @override
  String get snackSignedOut => 'تم تسجيل الخروج';

  @override
  String get snackSignedInApple => 'تم تسجيل الدخول عبر Apple ✅';

  @override
  String get snackSignedInGoogle => 'تم تسجيل الدخول عبر Google ✅';

  @override
  String get snackUpgradedApple => 'تمت ترقية الحساب عبر Apple ✅';

  @override
  String get snackUpgradedGoogle => 'تمت ترقية الحساب عبر Google ✅';

  @override
  String get historyTitle => 'التأملات السابقة';

  @override
  String get historyOpenCta => 'التأملات السابقة';

  @override
  String get historyEmpty => 'لا توجد تأملات محفوظة حتى الآن.';

  @override
  String get historyDeleteTitle => 'حذف التأمل؟';

  @override
  String get historyDeleteBody => 'سيؤدي هذا إلى إزالة العنصر المحدد نهائياً.';

  @override
  String get deleteCta => 'حذف';

  @override
  String get historyButton => 'التأملات السابقة';

  @override
  String get historyEmptyTitle => 'لا توجد تأملات بعد';

  @override
  String get historyEmptyBody =>
      'أنشئ شيئاً أولاً — ستظهر العناصر المحفوظة هنا.';

  @override
  String get historyDelete => 'حذف';

  @override
  String get footerTitle => 'مع الولاية والإيمان والصبر';

  @override
  String get footerSubtitle => 'دعاء بعد دعاء';

  @override
  String get genericErrorSnack =>
      'حدث خطأ ما — يُرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get upgradeAccountCta =>
      'احفظ تأملاتك عبر الأجهزة المختلفة – أنشئ حساباً';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get exportData => 'تصدير بياناتي';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'على مهلك 🐯\nيحتاج Ayara إلى لحظة قبل التالي…';

  @override
  String get rateDailyLimit =>
      'لقد نفدت تأملاتك حالياً.\nاحصل على المزيد من التأملات أو قم بالترقية إلى الولاية.';

  @override
  String get rateCreditsExhausted =>
      'لقد استخدمت جميع تأملاتك.\nأضف المزيد أو قم بالترقية إلى الولاية للمتابعة.';

  @override
  String get rateGraceCreditsExhausted =>
      'لقد نفدت تأملاتك حالياً.\nاحصل على المزيد من التأملات أو قم بالترقية إلى الولاية.';

  @override
  String get premiumDescription =>
      'الولاية تفتح الميزات المميزة والفئات المستقبلية وشارة خاصة.';

  @override
  String ratePlanExhausted(String plan) {
    return 'رصيد تأملاتك فارغ حالياً. الخطة: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'تعذر التحقق من تأملاتك: $message';
  }

  @override
  String get rateCheckGenericError => 'حدث خطأ أثناء التحقق من تأملاتك.';

  @override
  String get aiFallbackGeneric =>
      'حدث خطأ ما — يُرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get limitSectionTitle => 'التأملات';

  @override
  String get limitTodayLabel => 'الاستخدام';

  @override
  String limitCreditsLabel(Object credits) {
    return 'التأملات المتبقية: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get limitLoadingLabel => 'جارٍ التحميل…';

  @override
  String get limitLoadingLabelDescription =>
      'يظهر في بطاقة التأملات أثناء جلب إحصاءات الاستخدام.';

  @override
  String get aiLimitTitle => 'التأملات';

  @override
  String get aiLimitSubtitle =>
      'كل رد يستهلك تأملاً واحداً. تتضمن الخطة القياسية تأملات البداية. وتفتح الولاية الفئات المميزة وتتيح إضافة الرصيد.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total تأملات مستخدمة';
  }

  @override
  String get creditsSectionTitle => 'التأملات';

  @override
  String get creditsUsageLabel => 'الاستخدام';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'التأملات المتبقية: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get creditsLoadingLabel => 'جارٍ التحميل…';

  @override
  String get creditsLoadingLabelDescription =>
      'يظهر أثناء جلب إحصاءات التأملات.';

  @override
  String get creditsTitle => 'التأملات';

  @override
  String get creditsSubtitle =>
      'كل رد يستهلك تأملاً واحداً. تتضمن الخطة القياسية تأملات البداية. وتفتح الولاية الفئات المميزة وتتيح إضافة الرصيد.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total تأملات مستخدمة';
  }

  @override
  String get settingsDeleteTitle => 'حذف الحساب';

  @override
  String get settingsDeleteDescription =>
      'احذف حسابك وجميع البيانات المرتبطة به نهائياً.';

  @override
  String get settingsDeleteButtonLabel => 'حذف حسابي';

  @override
  String get settingsDeleteDialogTitle => 'حذف الحساب؟';

  @override
  String get settingsDeleteDialogBody =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه.\n\nسيتم حذف جميع محادثاتك وسجلك ومعلومات حسابك.';

  @override
  String get settingsDeleteDialogCancel => 'إلغاء';

  @override
  String get settingsDeleteDialogConfirm => 'حذف';

  @override
  String get settingsFreeLimitUsedTitle => 'تم استخدام تأملات البداية';

  @override
  String get settingsFreeLimitUsedDescription =>
      'تم استخدام تأملات البداية لهذا الجهاز. قم بالترقية إلى الولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get settingsStarterCreditsUsedTitle => 'تم استخدام تأملات البداية';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'تم استخدام تأملات البداية لهذا الجهاز. قم بالترقية إلى الولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get deviceBoundError =>
      'هذا الجهاز مرتبط بالفعل بحساب آخر. يُرجى تسجيل الدخول بالحساب الأصلي.';

  @override
  String get premiumTitle => 'وضع الولاية';

  @override
  String get premiumSubtitleBasic => 'افتح تجربة Ayara الكاملة.';

  @override
  String get premiumSubtitlePremium =>
      'أنت على خطة الولاية. هل تحتاج إلى المزيد من التأملات؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'الخطة الحالية: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'التأملات: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'عمليات الشراء غير متاحة حالياً.';

  @override
  String get premiumSignInToPurchase =>
      'سجّل الدخول لشراء التأملات أو فتح الولاية.';

  @override
  String get premiumRestorePurchases => 'استعادة المشتريات';

  @override
  String get premiumProcessing => 'جارٍ المعالجة…';

  @override
  String get premiumRestoreHintTitle =>
      'هل سبق أن اشتريت الولاية أو التأملات على هذا الجهاز أو جهاز آخر؟';

  @override
  String get premiumRestoreHintBody => 'استعد مشترياتك إذا لم تكن ظاهرة.';

  @override
  String get premiumBuyCredits200 => 'اشترِ 200 تأمل';

  @override
  String get premiumBuyCredits400 => 'اشترِ 400 تأمل';

  @override
  String get premiumBecomePremiumOneTime => 'الترقية إلى وضع الولاية';

  @override
  String get premiumTopupHint =>
      'مع الولاية، يمكنك إضافة المزيد من التأملات متى احتجت.';

  @override
  String get premiumUpgradeCta => 'ترقية';

  @override
  String get premiumRequiredForCategory =>
      'هذه الفئة متاحة فقط لمستخدمي الولاية. قم بالترقية من الإعدادات لفتح جميع المحتويات المميزة.';

  @override
  String get premiumBenefitsBasic =>
      'افتح الولاية لتحصل على تأملات إضافية، وإمكانية الوصول إلى الفئات المميزة، والمتابعة متى احتجت إلى الإرشاد.';

  @override
  String get premiumBenefitsPremium =>
      'أنت الآن في وضع الولاية. إذا كان رصيدك منخفضاً، أضف المزيد من التأملات وتابع من دون انقطاع.';

  @override
  String get premiumButtonBecomePremium => 'افتح الولاية';

  @override
  String get premiumButtonTopup1000 => 'أضف 1000 تأمل';

  @override
  String get premiumBadge => 'الولاية مفعّلة';

  @override
  String get premiumLoadingStore => 'جارٍ تحميل المتجر…';

  @override
  String get premiumProductNotAvailable =>
      'هذا المنتج غير متاح في المتجر حالياً. يُرجى المحاولة لاحقاً.';

  @override
  String get premiumPurchaseError =>
      'حدث خطأ في عملية الشراء. يُرجى المحاولة مرة أخرى.';

  @override
  String get premiumBuyCredits100 => 'أضف 100 تأمل';

  @override
  String get premiumFeatureLocked => 'افتح الولاية للوصول إلى هذه الميزة.';

  @override
  String get lockedCategoriesHint =>
      'بعض الفئات مخصصة لأعضاء الولاية. افتحها لتستكشف كل تأمل في رحلتك.';

  @override
  String get freePlanBlockedTitle => 'لقد استهلكت تأملات البداية الخاصة بك';

  @override
  String get freePlanBlockedBody =>
      'أنت على الخطة القياسية مع تأملات البداية، وقد وصلت إلى الحد. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى الولاية.';

  @override
  String get freePlanBlockedCtaGoPremium => 'اطّلع على خيارات الولاية أدناه';

  @override
  String get graceBlockedTitle => 'لقد استهلكت تأملات البداية الخاصة بك';

  @override
  String get graceBlockedBody =>
      'أنت على الخطة القياسية مع تأملات البداية، وقد وصلت إلى الحد. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى الولاية.';

  @override
  String get graceBlockedCtaGoPremium => 'اطّلع على خيارات الولاية أدناه';

  @override
  String get rateGuestMustSignIn => 'سجّل الدخول لاستخدام Ayara وتأملاتك.';

  @override
  String get guestNoCreditsTitle => 'وضع الضيف';

  @override
  String get guestNoCreditsBody =>
      'بصفتك ضيفاً يمكنك تصفح التطبيق، لكن لا يمكنك استخدام التأملات. سجّل الدخول لاحقاً من الإعدادات لاستخدام التأملات وفتح المشتريات.';

  @override
  String get guestDialogContinue => 'متابعة';

  @override
  String get guestDialogLoginInstead => 'تسجيل الدخول بدلاً من ذلك';

  @override
  String get optionalLabel => 'اختياري';

  @override
  String get accountDeleteSuccessTitle => 'تم حذف الحساب';

  @override
  String get accountDeleteSuccessBody =>
      'تم حذف حسابك والبيانات المرتبطة به بنجاح.';

  @override
  String get accountDeleteSuccessClose => 'إغلاق';

  @override
  String get accountDeleteErrorTitle => 'تعذر حذف الحساب';

  @override
  String get accountDeleteErrorClose => 'موافق';

  @override
  String get accountDeleteReauthCancelled =>
      'تم إلغاء إعادة التحقق. يُرجى تسجيل الدخول مجدداً ثم إعادة محاولة الحذف.';

  @override
  String get accountDeleteReauthRequired =>
      'يتطلب حذف الحساب تسجيل دخول حديث. يُرجى تسجيل الخروج ثم تسجيل الدخول مجدداً وإعادة المحاولة.';

  @override
  String get settingsDeletePermanentWarning =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه. سيتم حذف جميع البيانات المرتبطة بحسابك.';

  @override
  String get dailyGraceTitle => 'إرشاد يومي';

  @override
  String get dailyGraceScriptureLabel => 'آية اليوم';

  @override
  String get dailyGraceSaintLabel => 'شخصية الأسبوع';

  @override
  String get dailyGraceReflectionLabel => 'تأمل المساء';

  @override
  String get dailyGraceCopiedToast => 'تم نسخ الآية إلى الحافظة';

  @override
  String get locationConsentLabel =>
      'اسمح لـ Ayara باستخدام موقعي لتحديد اتجاه القبلة ومواقيت الصلاة';

  @override
  String get locationConsentHint =>
      'يُستخدم فقط لهذه الميزات. لن تتم مشاركة موقعك أو تخزينه أبداً.';

  @override
  String get askPageTitle => 'اسأل Ayara';

  @override
  String get askPageDescription =>
      'اسأل عن أي شيء يتعلق بالإيمان أو الصلاة أو الحياة أو الممارسة الإسلامية، واحصل على إرشاد منبثق من القرآن وتعاليم أهل البيت.';

  @override
  String get askPageInputHint => 'اكتب سؤالك هنا…';

  @override
  String get askPageSubmitCta => 'اسأل';

  @override
  String get askPageInputEmptyError => 'يرجى كتابة سؤال أولاً.';

  @override
  String get askResultYourQuestion => 'سؤالك';

  @override
  String get guidancePageTitle => 'القبلة';

  @override
  String get qiblaFacingMecca => 'باتجاه مكة';

  @override
  String get qiblaCompassInstruction =>
      'أدر هاتفك حتى تشير الإبرة الذهبية إلى الأعلى.\nذلك الاتجاه يشير إلى القبلة (مكة).';

  @override
  String get qiblaGpsUnavailableBody =>
      'إشارة GPS ضعيفة. انتقل إلى مكان مفتوح ثم اضغط «إعادة المحاولة».';

  @override
  String get qiblaRetry => 'إعادة المحاولة';

  @override
  String get qiblaTitle => 'اتجاه القبلة';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km كم إلى مكة';
  }

  @override
  String get qiblaLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get qiblaLocationNeededBody =>
      'اسمح بالوصول إلى الموقع ليتمكن Ayara من حساب اتجاه الكعبة في مكة من أي مكان تكون فيه.';

  @override
  String get qiblaOpenSettings => 'فتح الإعدادات';

  @override
  String get qiblaCompassLoading => 'جارٍ تحديد موقعك…';

  @override
  String get qiblaTowardMecca => 'نحو مكة';

  @override
  String get prayerTimesTitle => 'مواقيت الصلاة';

  @override
  String get prayerTimesFajr => 'الفجر';

  @override
  String get prayerTimesDhuhr => 'الظهر';

  @override
  String get prayerTimesAsr => 'العصر';

  @override
  String get prayerTimesMaghrib => 'المغرب';

  @override
  String get prayerTimesIsha => 'العشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get prayerTimesLocationNeededBody =>
      'اسمح بالوصول إلى الموقع ليتمكن Ayara من حساب مواقيت صلاة دقيقة لمدينتك.';

  @override
  String get prayerTimesNextLabel => 'التالي';

  @override
  String get prayerTimesDoneLabel => 'تم';

  @override
  String get monthlyPrayerTimesTitle => 'مواقيت الصلاة الشهرية';

  @override
  String get monthlyPrayerTimesViewButton => 'عرض الشهر كاملًا';

  @override
  String get monthlyPrayerTimesNextMonth => 'الشهر التالي';

  @override
  String get monthlyPrayerTimesDayHeader => 'اليوم';

  @override
  String get sharePrayerTimes => 'مشاركة مواقيت الصلاة';

  @override
  String get notificationsSectionTitle => 'الإشعارات';

  @override
  String get notificationsSectionSubtitle =>
      'تذكيرات الصلاة، وأحداث التقويم، والمزيد';

  @override
  String get dailyReflectionReminderTitle => 'تأمل يومي';

  @override
  String get dailyReflectionReminderDescription =>
      'تذكير يومي لطيف لفتح Ayara والتواصل مع إيمانك.';

  @override
  String get dailyReflectionReminderEnable => 'تفعيل التذكير اليومي';

  @override
  String get dailyReflectionReminderTimeLabel => 'وقت التذكير';

  @override
  String get prayerNotificationsTitle => 'تذكيرات الصلاة';

  @override
  String get prayerNotificationsDescription =>
      'تلقَّ تذكيراً لطيفاً قبل كل وقت صلاة لمساعدتك على البقاء على صلة طوال اليوم.';

  @override
  String get prayerNotificationsEnable => 'تفعيل تذكيرات الصلاة';

  @override
  String get prayerNotificationsOpenSettings => 'فتح إعدادات الإشعارات';

  @override
  String get prayerNotificationsDenied => 'الإشعارات معطلة';

  @override
  String get prayerNotificationsDeniedHint =>
      'انتقل إلى الإعدادات واسمح بإشعارات Ayara لتتلقى تذكيرات مواقيت الصلاة.';

  @override
  String get notificationsConsentLabel => 'السماح بإشعارات مواقيت الصلاة';

  @override
  String get prayerNotifTitleFajr => '🌅 الفجر — صلاة الفجر';

  @override
  String get prayerNotifBodyFajr =>
      'الفجر هو صلاة صباحات أهل البيت. قال الإمام علي (ع): احفظ صلاة الفجر كما تحفظ أثمن أماناتك. قم، وتطهّر، وقف بين يدي الله.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ الظهر — صلاة الظهر';

  @override
  String get prayerNotifBodyDhuhr =>
      'كان أئمة أهل البيت يعظّمون كل لحظة من الذكر. توقّف قليلاً في يومك، واجمع الظهر مع العصر إن احتجت، وأعد قلبك إلى الله.';

  @override
  String get prayerNotifTitleAsr => '🌤️ العصر — صلاة العصر';

  @override
  String get prayerNotifBodyAsr =>
      'حافظ على الصلاة، فهي العهد بينك وبين الله. لقد دخل وقت العصر — فلا تدعه يمضي من دون ذكر.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 المغرب — صلاة المغرب';

  @override
  String get prayerNotifBodyMaghrib =>
      'لقد غربت الشمس — وهي لحظة كان أهل البيت يجلّونها للدعاء. أدّ صلاة المغرب وارفع يديك إلى الله بالدعاء قبل أن يبدأ الليل.';

  @override
  String get prayerNotifTitleIsha => '🌙 العشاء — صلاة العشاء';

  @override
  String get prayerNotifBodyIsha =>
      'اختم يومك في معية الله. وقد شجّع الأئمة على صلاة الليل بعد العشاء — لكن أتمّ أولاً صلاة العشاء، واختتم يومك بذكره.';

  @override
  String get outOfReflectionsBannerText => 'لقد استخدمت جميع تأملاتك';

  @override
  String get outOfReflectionsBannerCta => 'احصل على المزيد';

  @override
  String get dhikrPageTitle => 'الذكر';

  @override
  String get dhikrTapToCount => 'اضغط على الدائرة للعد';

  @override
  String get dhikrResetButton => 'إعادة تعيين';

  @override
  String get dhikrComplete => 'ما شاء الله';

  @override
  String get dhikrCompleteMessage =>
      'لقد أكملت 100 مرة من ذكر الله. جعلها الله نوراً لقلبك.';

  @override
  String get disclaimerTitle => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerBody =>
      'يقدم Ayara تأملات إسلامية وتذكيرات ومحتوى روحياً لدعم رحلتك الشخصية في الإيمان، مستنداً إلى القرآن وتعاليم أهل البيت. ويُقدَّم هذا المحتوى لأغراض عامة ومعلوماتية وإلهامية فقط.\n\nAyara لا يغني عن أهل العلم المؤهلين.\nالإرشاد الوارد في هذا التطبيق ليس بديلاً عن عالم إسلامي متبحّر، أو مرجع ديني، أو معلم مؤهل في العلوم الشرعية. ففي الإسلام الشيعي، يستند الإرشاد الديني إلى مدرسة الفقه الجعفري وتقليد اتباع المرجع الحي — وهو فقيه مؤهل تُهتدى بأحكامه في الممارسة الدينية. إذا كانت لديك أسئلة حول الأحكام الشرعية، أو مسائل الحلال والحرام، أو الواجبات الدينية الشخصية، فالرجاء طلب المشورة من مرجع مؤهل أو عالم في مجتمعك.\n\nهذا التطبيق لا يصدر أحكاماً شرعية.\nلا يقدم Ayara أحكاماً ملزمة أو فتاوى في مسائل الفقه أو الالتزامات الدينية الشخصية. ولا ينبغي اعتبار أي شيء هنا فتوى أو توجيهاً دينياً ملزماً.\n\nمركزية أهل البيت.\nفي الإسلام الشيعي، يُعد النبي محمد ﷺ وأهل بيته المطهرون — أهل البيت — المرجع الهادي للمجتمع الإسلامي بعد القرآن. والأئمة الاثنا عشر من أهل البيت هم المفسرون المعيّنون إلهياً لتعاليم الإسلام. ويعكس محتوى هذا التطبيق هذه المدرسة ويسعى إلى تكريمها بأمانة.\n\nأهمية المجتمع.\nيهدف هذا التطبيق إلى تشجيع ارتباطك بالإيمان مع احترامه العميق للدور الحيوي لمسجدك المحلي، ومركزك الإسلامي، ومجتمعك الديني. ونحن نشجعك على البقاء على صلة بالمعلمين المؤهلين من حولك والتعلّم منهم.';

  @override
  String get disclaimerClose => 'أفهم ذلك';

  @override
  String get disclaimerInfoTooltip => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerSettingsSubtitle =>
      'لأغراض معلوماتية عامة فقط. اضغط لقراءة إخلاء المسؤولية الكامل.';

  @override
  String get disclaimerSectionHeader => 'إخلاء مسؤولية الإرشاد';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navReflect => 'تأمل';

  @override
  String get navDuas => 'الأدعية';

  @override
  String get navCalendar => 'التقويم';

  @override
  String get dashboardToday => 'اليوم';

  @override
  String get dashboardComingUp => 'القادم';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أيام',
      one: 'يوم',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'وصول سريع';

  @override
  String get quickActionQibla => 'القبلة';

  @override
  String get quickActionDhikr => 'الذكر';

  @override
  String get quickActionDailyGrace => 'الإرشاد';

  @override
  String get quickActionPrayerTimes => 'مواقيت الصلاة';

  @override
  String get askAyaraTitle => 'اسأل Ayara';

  @override
  String get askAyaraSubtitle =>
      'اسأل أي سؤال إسلامي واحصل على جواب متزن وعميق وموجّه.';

  @override
  String get askAyaraHint => 'مثلاً: ما أهمية شهر رمضان؟';

  @override
  String get askAyaraSubmit => 'اسأل';

  @override
  String get wisdomOfTheDayTitle => 'حكمة اليوم';

  @override
  String get calendarScreenTitle => 'التقويم الإسلامي';

  @override
  String get calendarUpcomingOccasions => 'المناسبات القادمة';

  @override
  String get calendarOccasionRemindersTitle => 'تذكيرات المناسبات';

  @override
  String get calendarOccasionRemindersHint =>
      'يتم التنبيه مساء اليوم السابق لكل مناسبة';

  @override
  String get calendarNotifPermissionDenied =>
      'تم رفض إذن الإشعارات. فعّله من إعدادات جهازك.';

  @override
  String get calendarNoEvents => 'لم يتم العثور على مناسبات قادمة.';

  @override
  String get calendarAddToPhone => 'أضف إلى تقويم الهاتف';

  @override
  String get calendarAddedToPhone => 'تمت الإضافة إلى التقويم';

  @override
  String get calendarCountdownToday => 'اليوم';

  @override
  String get calendarCountdownTomorrow => 'غداً';

  @override
  String calendarCountdownDays(int days) {
    return 'بعد $days أيام';
  }

  @override
  String get calendarAH => 'هـ';

  @override
  String get calendarMonthJan => 'يناير';

  @override
  String get calendarMonthFeb => 'فبراير';

  @override
  String get calendarMonthMar => 'مارس';

  @override
  String get calendarMonthApr => 'أبريل';

  @override
  String get calendarMonthMay => 'مايو';

  @override
  String get calendarMonthJun => 'يونيو';

  @override
  String get calendarMonthJul => 'يوليو';

  @override
  String get calendarMonthAug => 'أغسطس';

  @override
  String get calendarMonthSep => 'سبتمبر';

  @override
  String get calendarMonthOct => 'أكتوبر';

  @override
  String get calendarMonthNov => 'نوفمبر';

  @override
  String get calendarMonthDec => 'ديسمبر';

  @override
  String get calendarSeasonMuharramEarly => 'أيام محرّم — تذكّر كربلاء';

  @override
  String get calendarSeasonAshura => 'عاشوراء — يا حسين (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرّم — أيام الحزن والتأمل';

  @override
  String get calendarSeasonArbaeen => 'الأربعين — أربعون يوماً من الحسين';

  @override
  String get calendarSeasonRoadToArbaeen => 'الطريق إلى الأربعين';

  @override
  String get calendarSeasonMabath => 'مبعث مبارك — فجر الوحي';

  @override
  String get calendarSeasonMidShaban => 'منتصف شعبان — مولد الإمام المهدي (عج)';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارك — شهر القرآن';

  @override
  String get calendarSeasonGhadir => 'عيد الغدير مبارك!';

  @override
  String get hijriMonth1 => 'محرّم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربيع الأول';

  @override
  String get hijriMonth4 => 'ربيع الآخر';

  @override
  String get hijriMonth5 => 'جمادى الأولى';

  @override
  String get hijriMonth6 => 'جمادى الآخرة';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذو القعدة';

  @override
  String get hijriMonth12 => 'ذو الحجة';

  @override
  String get duasScreenTitle => 'الأدعية والزيارات';

  @override
  String get duasSearchHint => 'ابحث في الأدعية والزيارات…';

  @override
  String get duasFilterAll => 'الكل';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أدعية وزيارات',
      one: '$count دعاء',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'لم يتم العثور على أدعية.';

  @override
  String get duaCategoryDaily => 'يومي';

  @override
  String get duaCategoryWeekly => 'أسبوعي';

  @override
  String get duaCategoryOccasions => 'مناسبات';

  @override
  String get duaCategoryZiyarat => 'زيارات';

  @override
  String get duaCategoryTasbih => 'تسبيح';

  @override
  String get eventTypeBirth => 'مولد';

  @override
  String get eventTypeMartyrdom => 'استشهاد';

  @override
  String get eventTypeOccasion => 'مناسبة';

  @override
  String get duaCopyTooltip => 'نسخ الترجمة';

  @override
  String get duaToggleTransliteration => 'الترجمة الصوتية';

  @override
  String get duaToggleTranslation => 'الترجمة';

  @override
  String get duaAskAiLabel => 'اطلب من Ayara شرح هذا الدعاء';

  @override
  String get duaAskAiLockedLabel => 'اسأل Ayara (الولاية)';

  @override
  String get duaAiLockedMessage =>
      'شروحات Ayara متاحة لأعضاء الولاية. قم بالترقية من الإعدادات.';

  @override
  String duaAiComingSoon(String name) {
    return 'اسأل Ayara عن \"$name\" — قريباً!';
  }

  @override
  String get duaCopiedToast => 'تم نسخ الدعاء إلى الحافظة.';

  @override
  String get tasbihAllahuAkbarMeaning => 'الله أكبر';

  @override
  String get tasbihAlhamdulillahMeaning => 'الحمد لله';

  @override
  String get tasbihSubhanallahMeaning => 'سبحان الله';

  @override
  String get tasbihResetTooltip => 'إعادة تعيين';

  @override
  String get tasbihCompleteTitle => 'اكتمل التسبيح';

  @override
  String get tasbihCompleteMessage => 'تقبّل الله ذكرك.';

  @override
  String get tasbihTapHint => 'اضغط في أي مكان للعد';

  @override
  String get tasbihatScreenTitle => 'دليل الصلاة';

  @override
  String get tasbihatScreenSubtitle => 'تسبيحات الصلاة';

  @override
  String get tasbihatScreenDescription =>
      'دليل كامل للتسبيحات التي تُقرأ أثناء الصلوات اليومية وبعدها — وفقاً لتراث أهل البيت (ع).';

  @override
  String get tasbihatArba3Title => 'التسبيحات الأربع';

  @override
  String get tasbihatArba3Subtitle => 'تُقرأ في الركعة الثالثة والرابعة';

  @override
  String get tasbihatArba3Info =>
      'في الفقه الشيعي، تحلّ التسبيحات الأربع محل سورة الفاتحة في الركعتين الثالثة والرابعة من صلوات الظهر والعصر والمغرب والعشاء. وقراءتها مرة واحدة واجبة، وقراءتها ثلاث مرات مستحبة.';

  @override
  String get tasbihatArba3Translation =>
      'سبحان الله · الحمد لله\nلا إله إلا الله · الله أكبر';

  @override
  String get tasbihatArba3CompleteTitle => 'اكتملت التلاوة';

  @override
  String get tasbihatArba3CompleteMessage => 'تقبّل الله صلاتك — آمين';

  @override
  String get tasbihatArba3TapHint => 'اضغط بعد كل تلاوة';

  @override
  String get tasbihatZahraSubtitle => 'بعد كل صلاة · 100 حبّة';

  @override
  String get tasbihatZahraOriginLabel => 'المصدر';

  @override
  String get tasbihatZahraHadith =>
      'طلبت السيدة فاطمة الزهراء (ع) من النبي ﷺ خادماً، فقال: «أفلا أدلّك على ما هو خير لك من خادم؟ تقولين سبحان الله 33 مرة، والحمد لله 33 مرة، والله أكبر 34 مرة بعد كل صلاة، فهو خير لك من خادم.»';

  @override
  String get tasbihatZahraHadithSource => '— بحار الأنوار، ج 85';

  @override
  String get tasbihatZahraOpenCounter => 'فتح عدّاد التسبيح';

  @override
  String get tasbihatDuasTitle => 'أدعية مستحبة';

  @override
  String get tasbihatDuasSubtitle => 'بعد إتمام صلاتك';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آية الكرسي';

  @override
  String get tasbihatDuaAyatKursiWhen => 'بعد كل صلاة واجبة';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورة البقرة 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'من قرأ آية الكرسي بعد كل صلاة واجبة، لم يكن بينه وبين الجنة إلا الموت. وقال الإمام الباقر (ع) إنها من أعظم آيات القرآن.';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen => 'بعد كل صلاة · تختم جميع الأدعية';

  @override
  String get tasbihatDuaSalawatSource => 'الإمام الصادق (ع) — الكافي';

  @override
  String get tasbihatDuaSalawatNote =>
      'يُستحب إرسال الصلاة على النبي ﷺ وآله الطاهرين (آل محمد) لختم كل دعاء. وقال الإمام الصادق (ع): «كل دعاء محجوب حتى يصلى على محمد وآل محمد.»';

  @override
  String get tasbihatDuaFarajTitle => 'دعاء الفرج';

  @override
  String get tasbihatDuaFarajWhen => 'بعد كل صلاة · لإمام زماننا';

  @override
  String get tasbihatDuaFarajSource => 'علّمه الإمام الحسن العسكري (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دعاء لظهور الإمام المهدي (عج)، الإمام الثاني عشر، الذي علمه له والده. وغالبًا ما يُتلى من قبل العديد من المسلمين الشيعة بعد الصلاة كعمل من أعمال devotion للإمام الحي.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تسبيح السيدة فاطمة';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'بعد المغرب والعشاء · مستحب على وجه الخصوص';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'الإمام الباقر (ع) — بحار الأنوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'قال الإمام الباقر (ع) إن قراءة تسبيح الزهراء بعد العشاء قبل النوم خير من ألف ركعة نافلة، ونوره يصعد إلى السماوات.';

  @override
  String get tasbihFatimaGiftPre => 'هديّة من النبي';

  @override
  String get tasbihFatimaGiftPost => 'يُقرأ بعد كل صلاة';

  @override
  String get prayerTrackerTitle => 'متابعة الصلاة';

  @override
  String get prayerTrackerPrayed => 'تمت الصلاة';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count يوم متتالٍ';
  }

  @override
  String get prayerTrackerAllComplete =>
      'اكتملت جميع صلوات اليوم. تقبّلها الله.';

  @override
  String get dhikrTrackerTitle => 'تسبيح الزهراء';

  @override
  String get dhikrTrackerCompletedToday => 'اكتمل اليوم';

  @override
  String get dhikrTrackerNotDoneToday => 'لم يتم اليوم';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count يوم متتالٍ';
  }

  @override
  String get dhikrReminderTitle => 'تذكير التسبيح';

  @override
  String get dhikrReminderDescription =>
      'تذكير يومي لطيف لتقرأ تسبيح الزهراء (ع).';

  @override
  String get dhikrReminderEnable => 'تفعيل تذكير التسبيح';

  @override
  String get dhikrReminderTimeLabel => 'وقت التذكير';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حديث اليوم';

  @override
  String get hadithLabelArabic => 'العربية';

  @override
  String get hadithLabelTranslation => 'الترجمة';

  @override
  String get hadithBadge => 'حديث';

  @override
  String get hadithShare => 'مشاركة هذا الحديث';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nعبر Ayara';
  }

  @override
  String get hadithNavPrevious => 'السابق';

  @override
  String get hadithNavNext => 'التالي';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'الأئمة المعصومون الأربعة عشر';

  @override
  String get imamsScreenSubtitle =>
      'النبي، السيدة فاطمة، والأئمة الاثنا عشر — المرشدون المطهرون والمعصومون في الإسلام الشيعي الاثني عشري';

  @override
  String get imamLabelBorn => 'الميلاد';

  @override
  String get imamLabelMartyrdom => 'الاستشهاد';

  @override
  String get imamLabelStatus => 'الحالة';

  @override
  String get imamSectionBiography => 'السيرة';

  @override
  String get imamSectionFamousSaying => 'قول مشهور';

  @override
  String get imamRoleProphet => 'النبي الخاتم';

  @override
  String get imamRoleInfallible => 'المعصوم';

  @override
  String get imamOrdinal1 => 'الإمام الأول';

  @override
  String get imamOrdinal2 => 'الإمام الثاني';

  @override
  String get imamOrdinal3 => 'الإمام الثالث';

  @override
  String get imamOrdinal4 => 'الإمام الرابع';

  @override
  String get imamOrdinal5 => 'الإمام الخامس';

  @override
  String get imamOrdinal6 => 'الإمام السادس';

  @override
  String get imamOrdinal7 => 'الإمام السابع';

  @override
  String get imamOrdinal8 => 'الإمام الثامن';

  @override
  String get imamOrdinal9 => 'الإمام التاسع';

  @override
  String get imamOrdinal10 => 'الإمام العاشر';

  @override
  String get imamOrdinal11 => 'الإمام الحادي عشر';

  @override
  String get imamOrdinal12 => 'الإمام الثاني عشر';

  @override
  String get duaAudioScreenTitle => 'استمع إلى الأدعية';

  @override
  String get duaAudioScreenSubtitle =>
      'اختر دعاءً للاستماع إليه. اضغط على البطاقة للتشغيل أو الإيقاف المؤقت.';

  @override
  String get duaAudioComingSoonMessage =>
      'سيتوفر الصوت لهذا الدعاء في تحديث قادم.';

  @override
  String get duaAudioClose => 'إغلاق';

  @override
  String get duaAudioError => 'تعذر تحميل الصوت. يُرجى التحقق من اتصالك.';

  @override
  String get duaAudioMetaTransmittedBy => 'رواه';

  @override
  String get duaAudioMetaOccasion => 'المناسبة';

  @override
  String get duaAudioMetaDuration => 'المدة';

  @override
  String get quickActionDailyHadith => 'حديث اليوم';

  @override
  String get quickAction14Masumeen => 'الأئمة المعصومون الأربعة عشر';

  @override
  String get quickActionListenDuas => 'استماع';

  @override
  String get quickActionTasbihat => 'دليل الصلاة';

  @override
  String get pilgrimageSectionTitle => 'الرحلة المقدسة';

  @override
  String get pilgrimageSectionSubtitle =>
      'أدلة متكاملة للحج والعمرة — رحلة زيارة بيت الله الحرام في مكة';

  @override
  String get hajjCardTitle => 'الحج';

  @override
  String get hajjCardSubtitle => 'الركن الخامس من الإسلام';

  @override
  String get hajjCardDescription =>
      'الرحلة الإيمانية السنوية العظمى — واجبة مرة واحدة في العمر على كل مسلم مستطيع';

  @override
  String get hajjScreenTitle => 'دليل الحج';

  @override
  String get hajjScreenSubtitle => 'دليل خطوة بخطوة للحج الأكبر';

  @override
  String get umrahCardTitle => 'العمرة';

  @override
  String get umrahCardSubtitle => 'الحج الأصغر';

  @override
  String get umrahCardDescription =>
      'رحلة روحانية عظيمة الأثر يمكن أداؤها في أي وقت من السنة';

  @override
  String get umrahScreenTitle => 'دليل العمرة';

  @override
  String get umrahScreenSubtitle => 'دليل خطوة بخطوة للعمرة';

  @override
  String get pilgrimageStepsTitle => 'المناسك والخطوات';

  @override
  String get pilgrimageImportantNotesTitle => 'ملاحظات مهمة';

  @override
  String get pilgrimageDuaTitle => 'دعاء لهذه الخطوة';

  @override
  String get pilgrimageJafariNoteTitle => 'ملاحظة فقهية جعفرية';

  @override
  String get pilgrimageComplete => '✓ مكتمل';

  @override
  String get pilgrimageMarkDone => 'حدد كمنجز';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done من $total خطوات';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقيقة';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'الحجاج الشيعة';

  @override
  String get pilgrimageShiaNoteBody =>
      'يسافر العديد من الحجاج الشيعة أيضًا إلى المدينة لزيارة النبي محمد (ص) في مسجد النبي والقبور في جنات البقيع. تحمل هذه الزيارات دلالات روحية عميقة، على الرغم من أنها ليست شعائر الحج بحد ذاتها.';

  @override
  String get hajjIntro =>
      'الحج هو الركن الخامس من أركان الإسلام، وهو واجب مرة واحدة في العمر لكل مسلم قادر جسديًا وماليًا. بالنسبة لمعظم الحجاج الشيعة الاثني عشر اليوم، يعني ذلك حج التمتع، الذي يُؤدى في شهر ذي الحجة على خطى النبي إبراهيم (ع)، وابنه إسماعيل (ع)، والسيدة هاجر. يتبع هذا الدليل الخطوط العريضة الجعفرية للشعائر، بينما تبقى الزيارة في المدينة رحلة محبوبة بعمق قبل أو بعد الحج.';

  @override
  String get umrahIntro =>
      'العمرة هي الحج الأصغر إلى مكة، وعلى خلاف الحج يمكن أداؤها في أي وقت من السنة. ومع أنها ليست واجبة، فإن لها أجراً روحياً عظيماً، وتُعد عبادة مستحبة جداً. وهي تشترك مع الحج في عدد من المناسك، لكنها أقصر، وتتكوّن من أربعة أعمال رئيسية.';

  @override
  String get voiceInputTitle => 'إدخال صوتي';

  @override
  String get voiceInputMicTitle => 'ميكروفون';

  @override
  String get voiceInputMicSubtitle =>
      'تحدث بإدخالك إلى Ask Ayara بدلاً من الكتابة.';

  @override
  String get voiceInputMicDenied => 'تم رفض الوصول إلى الميكروفون.';

  @override
  String get voiceInputSpeak => 'تحدث بدلاً من ذلك';

  @override
  String get voiceInputListening => 'جاري الاستماع…';

  @override
  String get voiceInputPermissionDenied =>
      'يتطلب إدخال الصوت الوصول إلى الميكروفون.';
}

/// The translations for Arabic, as used in Egypt (`ar_EG`).
class AppLocalizationsArEg extends AppLocalizationsAr {
  AppLocalizationsArEg() : super('ar_EG');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'اختر لغتك';

  @override
  String get languageSelectSub => 'يمكنك تغيير هذا لاحقاً من الإعدادات';

  @override
  String get actionContinue => 'متابعة';

  @override
  String get languageSuggestedHeader => 'مقترحة';

  @override
  String get languageAllHeader => 'كل اللغات';

  @override
  String get languageSuggestedBadge => 'مقترحة';

  @override
  String get languageSearchHint => 'بحث…';

  @override
  String get planBasic => 'الأساسية';

  @override
  String get planPremium => 'الولاية';

  @override
  String get categorySlot01 => 'إرشاد يومي';

  @override
  String get categorySlot02 => 'الإيمان والثقة';

  @override
  String get categorySlot03 => 'تأملات الصلاة';

  @override
  String get categorySlot04 => 'الصبر والرجاء';

  @override
  String get categorySlot05 => 'اطلب المغفرة';

  @override
  String get categorySlot06 => 'الرحمة والرأفة';

  @override
  String get categorySlot07 => 'قوة الإيمان';

  @override
  String get categorySlot08 => 'قلب شاكر';

  @override
  String get categorySlot09 => 'غاية الحياة';

  @override
  String get categorySlot10 => 'صلة الرحم';

  @override
  String get categorySlot11 => 'السلام الداخلي';

  @override
  String get categorySlot12 => 'حكمة النبي';

  @override
  String get categorySlot13 => 'حسن الخلق';

  @override
  String get categorySlot14 => 'مقاومة الفتنة';

  @override
  String get categorySlot15 => 'ذكر المساء';

  @override
  String get categoryCustom => 'تأمل شخصي';

  @override
  String get dhikrMeaningSubhanallah => 'سبحان الله';

  @override
  String get dhikrMeaningAlhamdulillah => 'الحمد لله';

  @override
  String get dhikrMeaningAllahuAkbar => 'الله أكبر';

  @override
  String get quranVerseHeartAtRest => 'ألا بذكر الله تطمئن القلوب.';

  @override
  String get promptHint => 'اضغط على فئة للحصول على إرشاد وتأمل إسلامي';

  @override
  String get currentLanguage => 'اللغة الحالية';

  @override
  String get settingsLanguage => 'إعدادات اللغة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get chooseLanguage => 'اختر لغتك';

  @override
  String get continueCta => 'متابعة';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كلمات',
      one: '$count كلمة',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'الخيارات';

  @override
  String get newCta => 'جديد';

  @override
  String get actionsTitle => 'ماذا تريد أن تفعل؟';

  @override
  String get copy => 'نسخ';

  @override
  String get share => 'مشاركة';

  @override
  String get close => 'إغلاق';

  @override
  String get copiedToast => 'تم النسخ إلى الحافظة';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'تعذّر إنشاء رد جديد';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nهل تريد المحاولة مرة أخرى؟';
  }

  @override
  String get cancelCta => 'إلغاء';

  @override
  String get retryCta => 'حاول مرة أخرى';

  @override
  String get authTitle => 'أنشئ حسابك';

  @override
  String get continueAsGuest => 'المتابعة كضيف';

  @override
  String get signInGoogle => 'تسجيل الدخول عبر Google';

  @override
  String get signInApple => 'تسجيل الدخول عبر Apple';

  @override
  String get signInEmail => 'تسجيل الدخول عبر البريد الإلكتروني';

  @override
  String get upgradeWithApple => 'المتابعة عبر Apple';

  @override
  String get mustAccept => 'يجب أن توافق على شروط الخدمة وتقر بسياسة الخصوصية.';

  @override
  String get termsLabel => 'أوافق على شروط الخدمة';

  @override
  String get privacyLabel => 'لقد قرأت سياسة الخصوصية';

  @override
  String get marketingOptIn => 'أوافق على تلقي الأخبار والعروض';

  @override
  String get openTerms => 'شروط الخدمة';

  @override
  String get openPrivacy => 'سياسة الخصوصية';

  @override
  String get accountSection => 'الحساب';

  @override
  String get guestMode => 'وضع الضيف';

  @override
  String get signedIn => 'تم تسجيل الدخول';

  @override
  String get upgradeHint => 'احفظ تأملاتك عبر أجهزتك المختلفة بإنشاء حساب.';

  @override
  String get upgradeWithGoogle => 'المتابعة عبر Google';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get snackUpgraded => 'تمت ترقية الحساب عبر Google ✅';

  @override
  String get snackSignedIn => 'تم تسجيل الدخول عبر Google ✅';

  @override
  String get snackSignedOut => 'تم تسجيل الخروج';

  @override
  String get snackSignedInApple => 'تم تسجيل الدخول عبر Apple ✅';

  @override
  String get snackSignedInGoogle => 'تم تسجيل الدخول عبر Google ✅';

  @override
  String get snackUpgradedApple => 'تمت ترقية الحساب عبر Apple ✅';

  @override
  String get snackUpgradedGoogle => 'تمت ترقية الحساب عبر Google ✅';

  @override
  String get historyTitle => 'التأملات السابقة';

  @override
  String get historyOpenCta => 'التأملات السابقة';

  @override
  String get historyEmpty => 'لا توجد تأملات محفوظة بعد.';

  @override
  String get historyDeleteTitle => 'حذف التأمل؟';

  @override
  String get historyDeleteBody => 'سيؤدي هذا إلى إزالة العنصر المحدد نهائياً.';

  @override
  String get deleteCta => 'حذف';

  @override
  String get historyButton => 'التأملات السابقة';

  @override
  String get historyEmptyTitle => 'لا توجد تأملات بعد';

  @override
  String get historyEmptyBody =>
      'أنشئ شيئاً أولاً — ستظهر العناصر المحفوظة هنا.';

  @override
  String get historyDelete => 'حذف';

  @override
  String get footerTitle => 'مع الولاية والإيمان والصبر';

  @override
  String get footerSubtitle => 'دعاء بعد دعاء';

  @override
  String get genericErrorSnack =>
      'حدث خطأ ما — يُرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get upgradeAccountCta =>
      'احفظ تأملاتك عبر أجهزتك المختلفة – أنشئ حساباً';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get exportData => 'تصدير بياناتي';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'على مهلك 🐯\nيحتاج Ayara إلى لحظة قبل التالي…';

  @override
  String get rateDailyLimit =>
      'لقد نفدت تأملاتك حالياً.\nاحصل على المزيد من التأملات أو قم بالترقية إلى الولاية.';

  @override
  String get rateCreditsExhausted =>
      'لقد استخدمت كل تأملاتك.\nأضف المزيد أو قم بالترقية إلى الولاية للمتابعة.';

  @override
  String get rateGraceCreditsExhausted =>
      'لقد نفدت تأملاتك حالياً.\nاحصل على المزيد من التأملات أو قم بالترقية إلى الولاية.';

  @override
  String get premiumDescription =>
      'الولاية تفتح الميزات المميزة والفئات القادمة وشارة خاصة.';

  @override
  String ratePlanExhausted(String plan) {
    return 'رصيد تأملاتك فارغ حالياً. الخطة: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'تعذّر التحقق من تأملاتك: $message';
  }

  @override
  String get rateCheckGenericError => 'حدث خطأ أثناء التحقق من تأملاتك.';

  @override
  String get aiFallbackGeneric =>
      'حدث خطأ ما — يُرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get limitSectionTitle => 'التأملات';

  @override
  String get limitTodayLabel => 'الاستخدام';

  @override
  String limitCreditsLabel(Object credits) {
    return 'التأملات المتبقية: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get limitLoadingLabel => 'جارٍ التحميل…';

  @override
  String get limitLoadingLabelDescription =>
      'يظهر في بطاقة التأملات أثناء جلب إحصاءات الاستخدام.';

  @override
  String get aiLimitTitle => 'التأملات';

  @override
  String get aiLimitSubtitle =>
      'كل رد يستهلك تأملاً واحداً. تتضمن الخطة الأساسية تأملات البداية. وتفتح الولاية الفئات المميزة وتتيح إضافة الرصيد.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total تأملات مستخدمة';
  }

  @override
  String get creditsSectionTitle => 'التأملات';

  @override
  String get creditsUsageLabel => 'الاستخدام';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'التأملات المتبقية: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get creditsLoadingLabel => 'جارٍ التحميل…';

  @override
  String get creditsLoadingLabelDescription =>
      'يظهر أثناء جلب إحصاءات التأملات.';

  @override
  String get creditsTitle => 'التأملات';

  @override
  String get creditsSubtitle =>
      'كل رد يستهلك تأملاً واحداً. تتضمن الخطة الأساسية تأملات البداية. وتفتح الولاية الفئات المميزة وتتيح إضافة الرصيد.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total تأملات مستخدمة';
  }

  @override
  String get settingsDeleteTitle => 'حذف الحساب';

  @override
  String get settingsDeleteDescription =>
      'احذف حسابك وجميع البيانات المرتبطة به نهائياً.';

  @override
  String get settingsDeleteButtonLabel => 'حذف حسابي';

  @override
  String get settingsDeleteDialogTitle => 'حذف الحساب؟';

  @override
  String get settingsDeleteDialogBody =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه.\n\nسيتم حذف جميع محادثاتك وسجلك ومعلومات حسابك.';

  @override
  String get settingsDeleteDialogCancel => 'إلغاء';

  @override
  String get settingsDeleteDialogConfirm => 'حذف';

  @override
  String get settingsFreeLimitUsedTitle => 'تم استخدام تأملات البداية';

  @override
  String get settingsFreeLimitUsedDescription =>
      'تم استخدام تأملات البداية لهذا الجهاز. قم بالترقية إلى الولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get settingsStarterCreditsUsedTitle => 'تم استخدام تأملات البداية';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'تم استخدام تأملات البداية لهذا الجهاز. قم بالترقية إلى الولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get deviceBoundError =>
      'هذا الجهاز مرتبط بالفعل بحساب آخر. يُرجى تسجيل الدخول بالحساب الأصلي.';

  @override
  String get premiumTitle => 'وضع الولاية';

  @override
  String get premiumSubtitleBasic => 'افتح تجربة Ayara الكاملة.';

  @override
  String get premiumSubtitlePremium =>
      'أنت على خطة الولاية. هل تحتاج إلى المزيد من التأملات؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'الخطة الحالية: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'التأملات: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'عمليات الشراء غير متاحة حالياً.';

  @override
  String get premiumSignInToPurchase =>
      'سجّل الدخول لشراء التأملات أو فتح الولاية.';

  @override
  String get premiumRestorePurchases => 'استعادة المشتريات';

  @override
  String get premiumProcessing => 'جارٍ المعالجة…';

  @override
  String get premiumRestoreHintTitle =>
      'هل سبق أن اشتريت الولاية أو التأملات على هذا الجهاز أو جهاز آخر؟';

  @override
  String get premiumRestoreHintBody => 'استعد مشترياتك إذا لم تكن ظاهرة.';

  @override
  String get premiumBuyCredits200 => 'اشترِ 200 تأمل';

  @override
  String get premiumBuyCredits400 => 'اشترِ 400 تأمل';

  @override
  String get premiumBecomePremiumOneTime => 'الترقية إلى وضع الولاية';

  @override
  String get premiumTopupHint =>
      'مع الولاية، يمكنك إضافة المزيد من التأملات متى احتجت.';

  @override
  String get premiumUpgradeCta => 'ترقية';

  @override
  String get premiumRequiredForCategory =>
      'هذه الفئة متاحة فقط لمستخدمي الولاية. قم بالترقية من الإعدادات لفتح كل المحتوى المميز.';

  @override
  String get premiumBenefitsBasic =>
      'افتح الولاية لتحصل على تأملات إضافية، وإمكانية الوصول إلى الفئات المميزة، والمتابعة متى احتجت إلى الإرشاد.';

  @override
  String get premiumBenefitsPremium =>
      'أنت الآن في وضع الولاية. إذا كان رصيدك منخفضاً، أضف المزيد من التأملات وتابع من دون انقطاع.';

  @override
  String get premiumButtonBecomePremium => 'افتح الولاية';

  @override
  String get premiumButtonTopup1000 => 'أضف 1000 تأمل';

  @override
  String get premiumBadge => 'الولاية مفعّلة';

  @override
  String get premiumLoadingStore => 'جارٍ تحميل المتجر…';

  @override
  String get premiumProductNotAvailable =>
      'هذا المنتج غير متاح في المتجر حالياً. يُرجى المحاولة لاحقاً.';

  @override
  String get premiumPurchaseError =>
      'حدث خطأ في عملية الشراء. يُرجى المحاولة مرة أخرى.';

  @override
  String get premiumBuyCredits100 => 'أضف 100 تأمل';

  @override
  String get premiumFeatureLocked => 'افتح الولاية للوصول إلى هذه الميزة.';

  @override
  String get lockedCategoriesHint =>
      'بعض الفئات مخصصة لأعضاء الولاية. افتحها لتستكشف كل تأمل في رحلتك.';

  @override
  String get freePlanBlockedTitle => 'لقد استهلكت تأملات البداية الخاصة بك';

  @override
  String get freePlanBlockedBody =>
      'أنت على الخطة الأساسية مع تأملات البداية، وقد وصلت إلى الحد. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى الولاية.';

  @override
  String get freePlanBlockedCtaGoPremium => 'اطّلع على خيارات الولاية أدناه';

  @override
  String get graceBlockedTitle => 'لقد استهلكت تأملات البداية الخاصة بك';

  @override
  String get graceBlockedBody =>
      'أنت على الخطة الأساسية مع تأملات البداية، وقد وصلت إلى الحد. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى الولاية.';

  @override
  String get graceBlockedCtaGoPremium => 'اطّلع على خيارات الولاية أدناه';

  @override
  String get rateGuestMustSignIn => 'سجّل الدخول لاستخدام Ayara وتأملاتك.';

  @override
  String get guestNoCreditsTitle => 'وضع الضيف';

  @override
  String get guestNoCreditsBody =>
      'بصفتك ضيفاً يمكنك تصفح التطبيق، لكن لا يمكنك استخدام التأملات. سجّل الدخول لاحقاً من الإعدادات لاستخدام التأملات وفتح المشتريات.';

  @override
  String get guestDialogContinue => 'متابعة';

  @override
  String get guestDialogLoginInstead => 'تسجيل الدخول بدلاً من ذلك';

  @override
  String get optionalLabel => 'اختياري';

  @override
  String get accountDeleteSuccessTitle => 'تم حذف الحساب';

  @override
  String get accountDeleteSuccessBody =>
      'تم حذف حسابك والبيانات المرتبطة به بنجاح.';

  @override
  String get accountDeleteSuccessClose => 'إغلاق';

  @override
  String get accountDeleteErrorTitle => 'تعذّر حذف الحساب';

  @override
  String get accountDeleteErrorClose => 'موافق';

  @override
  String get accountDeleteReauthCancelled =>
      'تم إلغاء إعادة التحقق. يُرجى تسجيل الدخول مجدداً ثم إعادة محاولة الحذف.';

  @override
  String get accountDeleteReauthRequired =>
      'يتطلب حذف الحساب تسجيل دخول حديث. يُرجى تسجيل الخروج ثم تسجيل الدخول مجدداً وإعادة المحاولة.';

  @override
  String get settingsDeletePermanentWarning =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه. سيتم حذف جميع البيانات المرتبطة بحسابك.';

  @override
  String get dailyGraceTitle => 'إرشاد يومي';

  @override
  String get dailyGraceScriptureLabel => 'آية اليوم';

  @override
  String get dailyGraceSaintLabel => 'شخصية الأسبوع';

  @override
  String get dailyGraceReflectionLabel => 'تأمل المساء';

  @override
  String get dailyGraceCopiedToast => 'تم نسخ الآية إلى الحافظة';

  @override
  String get locationConsentLabel =>
      'اسمح لـ Ayara باستخدام موقعي لتحديد اتجاه القبلة ومواقيت الصلاة';

  @override
  String get locationConsentHint =>
      'يُستخدم فقط لهذه الميزات. لن تتم مشاركة موقعك أو تخزينه أبداً.';

  @override
  String get askPageTitle => 'اسأل Ayara';

  @override
  String get askPageDescription =>
      'اسأل عن أي شيء يتعلق بالإيمان أو الصلاة أو الحياة أو الممارسة الإسلامية، واحصل على إرشاد منبثق من القرآن وتعاليم أهل البيت.';

  @override
  String get askPageInputHint => 'اكتب سؤالك هنا…';

  @override
  String get askPageSubmitCta => 'اسأل';

  @override
  String get askPageInputEmptyError => 'يرجى كتابة سؤال أولاً.';

  @override
  String get askResultYourQuestion => 'سؤالك';

  @override
  String get guidancePageTitle => 'القبلة';

  @override
  String get qiblaFacingMecca => 'باتجاه مكة';

  @override
  String get qiblaCompassInstruction =>
      'أدر هاتفك حتى تشير الإبرة الذهبية إلى الأعلى.\nذلك الاتجاه يشير إلى القبلة (مكة).';

  @override
  String get qiblaGpsUnavailableBody =>
      'إشارة GPS ضعيفة. انتقل إلى مكان مفتوح ثم اضغط «إعادة المحاولة».';

  @override
  String get qiblaRetry => 'إعادة المحاولة';

  @override
  String get qiblaTitle => 'اتجاه القبلة';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km كم إلى مكة';
  }

  @override
  String get qiblaLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get qiblaLocationNeededBody =>
      'اسمح بالوصول إلى الموقع ليتمكن Ayara من حساب اتجاه الكعبة في مكة من أي مكان تكون فيه.';

  @override
  String get qiblaOpenSettings => 'فتح الإعدادات';

  @override
  String get qiblaCompassLoading => 'جارٍ تحديد موقعك…';

  @override
  String get qiblaTowardMecca => 'نحو مكة';

  @override
  String get prayerTimesTitle => 'مواقيت الصلاة';

  @override
  String get prayerTimesFajr => 'الفجر';

  @override
  String get prayerTimesDhuhr => 'الظهر';

  @override
  String get prayerTimesAsr => 'العصر';

  @override
  String get prayerTimesMaghrib => 'المغرب';

  @override
  String get prayerTimesIsha => 'العشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get prayerTimesLocationNeededBody =>
      'اسمح بالوصول إلى الموقع ليتمكن Ayara من حساب مواقيت صلاة دقيقة لمدينتك.';

  @override
  String get prayerTimesNextLabel => 'التالي';

  @override
  String get prayerTimesDoneLabel => 'تم';

  @override
  String get monthlyPrayerTimesTitle => 'مواقيت الصلاة الشهرية';

  @override
  String get monthlyPrayerTimesViewButton => 'عرض الشهر كاملاً';

  @override
  String get monthlyPrayerTimesNextMonth => 'الشهر التالي';

  @override
  String get monthlyPrayerTimesDayHeader => 'اليوم';

  @override
  String get sharePrayerTimes => 'مشاركة مواقيت الصلاة';

  @override
  String get notificationsSectionTitle => 'الإشعارات';

  @override
  String get notificationsSectionSubtitle =>
      'تذكيرات الصلاة، وأحداث التقويم، والمزيد';

  @override
  String get dailyReflectionReminderTitle => 'تأمل يومي';

  @override
  String get dailyReflectionReminderDescription =>
      'تذكير يومي لطيف لفتح Ayara والتواصل مع إيمانك.';

  @override
  String get dailyReflectionReminderEnable => 'تفعيل التذكير اليومي';

  @override
  String get dailyReflectionReminderTimeLabel => 'وقت التذكير';

  @override
  String get prayerNotificationsTitle => 'تذكيرات الصلاة';

  @override
  String get prayerNotificationsDescription =>
      'تلقَّ تذكيراً لطيفاً قبل كل وقت صلاة لمساعدتك على البقاء على صلة طوال اليوم.';

  @override
  String get prayerNotificationsEnable => 'تفعيل تذكيرات الصلاة';

  @override
  String get prayerNotificationsOpenSettings => 'فتح إعدادات الإشعارات';

  @override
  String get prayerNotificationsDenied => 'الإشعارات معطّلة';

  @override
  String get prayerNotificationsDeniedHint =>
      'انتقل إلى الإعدادات واسمح بإشعارات Ayara لتتلقى تذكيرات مواقيت الصلاة.';

  @override
  String get notificationsConsentLabel => 'السماح بإشعارات مواقيت الصلاة';

  @override
  String get prayerNotifTitleFajr => '🌅 الفجر — صلاة الفجر';

  @override
  String get prayerNotifBodyFajr =>
      'الفجر هو صلاة صباحات أهل البيت. قال الإمام علي (ع): احفظ صلاة الفجر كما تحفظ أثمن أماناتك. قم، وتطهّر، وقف بين يدي الله.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ الظهر — صلاة الظهر';

  @override
  String get prayerNotifBodyDhuhr =>
      'كان أئمة أهل البيت يعظّمون كل لحظة من الذكر. توقّف قليلاً في يومك، واجمع الظهر مع العصر إن احتجت، وأعد قلبك إلى الله.';

  @override
  String get prayerNotifTitleAsr => '🌤️ العصر — صلاة العصر';

  @override
  String get prayerNotifBodyAsr =>
      'حافظ على الصلاة، فهي العهد بينك وبين الله. لقد دخل وقت العصر — فلا تدعه يمضي من دون ذكر.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 المغرب — صلاة المغرب';

  @override
  String get prayerNotifBodyMaghrib =>
      'لقد غربت الشمس — وهي لحظة كان أهل البيت يجلّونها للدعاء. أدّ صلاة المغرب وارفع يديك إلى الله بالدعاء قبل أن يبدأ الليل.';

  @override
  String get prayerNotifTitleIsha => '🌙 العشاء — صلاة العشاء';

  @override
  String get prayerNotifBodyIsha =>
      'اختم يومك في معية الله. وقد شجّع الأئمة على صلاة الليل بعد العشاء — لكن أتمّ أولاً صلاة العشاء، واختتم يومك بذكره.';

  @override
  String get outOfReflectionsBannerText => 'لقد استخدمت كل تأملاتك';

  @override
  String get outOfReflectionsBannerCta => 'احصل على المزيد';

  @override
  String get dhikrPageTitle => 'الذكر';

  @override
  String get dhikrTapToCount => 'اضغط على الدائرة للعد';

  @override
  String get dhikrResetButton => 'إعادة تعيين';

  @override
  String get dhikrComplete => 'ما شاء الله';

  @override
  String get dhikrCompleteMessage =>
      'لقد أكملت 100 مرة من ذكر الله. جعلها الله نوراً لقلبك.';

  @override
  String get disclaimerTitle => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerBody =>
      'يقدم Ayara تأملات إسلامية وتذكيرات ومحتوى روحياً لدعم رحلتك الشخصية في الإيمان، مستنداً إلى القرآن وتعاليم أهل البيت. ويُقدَّم هذا المحتوى لأغراض عامة ومعلوماتية وإلهامية فقط.\n\nAyara لا يغني عن أهل العلم المؤهلين.\nالإرشاد الوارد في هذا التطبيق ليس بديلاً عن عالم إسلامي متبحّر، أو مرجع ديني، أو معلم مؤهل في العلوم الشرعية. ففي الإسلام الشيعي، يستند الإرشاد الديني إلى مدرسة الفقه الجعفري وتقليد اتباع المرجع الحي — وهو فقيه مؤهل تُهتدى بأحكامه في الممارسة الدينية. إذا كانت لديك أسئلة حول الأحكام الشرعية، أو مسائل الحلال والحرام، أو الواجبات الدينية الشخصية، فالرجاء طلب المشورة من مرجع مؤهل أو عالم في مجتمعك.\n\nهذا التطبيق لا يصدر أحكاماً شرعية.\nلا يقدم Ayara أحكاماً ملزمة أو فتاوى في مسائل الفقه أو الالتزامات الدينية الشخصية. ولا ينبغي اعتبار أي شيء هنا فتوى أو توجيهاً دينياً ملزماً.\n\nمركزية أهل البيت.\nفي الإسلام الشيعي، يُعد النبي محمد ﷺ وأهل بيته المطهرون — أهل البيت — المرجع الهادي للمجتمع الإسلامي بعد القرآن. والأئمة الاثنا عشر من أهل البيت هم المفسرون المعيّنون إلهياً لتعاليم الإسلام. ويعكس محتوى هذا التطبيق هذه المدرسة ويسعى إلى تكريمها بأمانة.\n\nأهمية المجتمع.\nيهدف هذا التطبيق إلى تشجيع ارتباطك بالإيمان مع احترامه العميق للدور الحيوي لمسجدك المحلي، ومركزك الإسلامي، ومجتمعك الديني. ونحن نشجعك على البقاء على صلة بالمعلمين المؤهلين من حولك والتعلّم منهم.';

  @override
  String get disclaimerClose => 'أفهم ذلك';

  @override
  String get disclaimerInfoTooltip => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerSettingsSubtitle =>
      'لأغراض معلوماتية عامة فقط. اضغط لقراءة إخلاء المسؤولية الكامل.';

  @override
  String get disclaimerSectionHeader => 'إخلاء مسؤولية الإرشاد';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navReflect => 'تأمل';

  @override
  String get navDuas => 'الأدعية';

  @override
  String get navCalendar => 'التقويم';

  @override
  String get dashboardToday => 'اليوم';

  @override
  String get dashboardComingUp => 'القادم';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أيام',
      one: 'يوم',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'وصول سريع';

  @override
  String get quickActionQibla => 'القبلة';

  @override
  String get quickActionDhikr => 'الذكر';

  @override
  String get quickActionDailyGrace => 'الإرشاد';

  @override
  String get quickActionPrayerTimes => 'مواقيت الصلاة';

  @override
  String get askAyaraTitle => 'اسأل Ayara';

  @override
  String get askAyaraSubtitle =>
      'اسأل أي سؤال إسلامي واحصل على جواب متزن وعميق وموجّه.';

  @override
  String get askAyaraHint => 'مثلاً: ما أهمية شهر رمضان؟';

  @override
  String get askAyaraSubmit => 'اسأل';

  @override
  String get wisdomOfTheDayTitle => 'حكمة اليوم';

  @override
  String get calendarScreenTitle => 'التقويم الإسلامي';

  @override
  String get calendarUpcomingOccasions => 'المناسبات القادمة';

  @override
  String get calendarOccasionRemindersTitle => 'تذكيرات المناسبات';

  @override
  String get calendarOccasionRemindersHint =>
      'يتم التنبيه مساء اليوم السابق لكل مناسبة';

  @override
  String get calendarNotifPermissionDenied =>
      'تم رفض إذن الإشعارات. فعّله من إعدادات جهازك.';

  @override
  String get calendarNoEvents => 'لم يتم العثور على مناسبات قادمة.';

  @override
  String get calendarAddToPhone => 'أضف إلى تقويم الهاتف';

  @override
  String get calendarAddedToPhone => 'تمت الإضافة إلى التقويم';

  @override
  String get calendarCountdownToday => 'اليوم';

  @override
  String get calendarCountdownTomorrow => 'غداً';

  @override
  String calendarCountdownDays(int days) {
    return 'بعد $days أيام';
  }

  @override
  String get calendarAH => 'هـ';

  @override
  String get calendarMonthJan => 'يناير';

  @override
  String get calendarMonthFeb => 'فبراير';

  @override
  String get calendarMonthMar => 'مارس';

  @override
  String get calendarMonthApr => 'أبريل';

  @override
  String get calendarMonthMay => 'مايو';

  @override
  String get calendarMonthJun => 'يونيو';

  @override
  String get calendarMonthJul => 'يوليو';

  @override
  String get calendarMonthAug => 'أغسطس';

  @override
  String get calendarMonthSep => 'سبتمبر';

  @override
  String get calendarMonthOct => 'أكتوبر';

  @override
  String get calendarMonthNov => 'نوفمبر';

  @override
  String get calendarMonthDec => 'ديسمبر';

  @override
  String get calendarSeasonMuharramEarly => 'أيام محرّم — تذكّر كربلاء';

  @override
  String get calendarSeasonAshura => 'عاشوراء — يا حسين (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرّم — أيام الحزن والتأمل';

  @override
  String get calendarSeasonArbaeen => 'الأربعين — أربعون يوماً من الحسين';

  @override
  String get calendarSeasonRoadToArbaeen => 'الطريق إلى الأربعين';

  @override
  String get calendarSeasonMabath => 'مبعث مبارك — فجر الوحي';

  @override
  String get calendarSeasonMidShaban => 'منتصف شعبان — مولد الإمام المهدي (عج)';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارك — شهر القرآن';

  @override
  String get calendarSeasonGhadir => 'عيد الغدير مبارك!';

  @override
  String get hijriMonth1 => 'محرّم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربيع الأول';

  @override
  String get hijriMonth4 => 'ربيع الآخر';

  @override
  String get hijriMonth5 => 'جمادى الأولى';

  @override
  String get hijriMonth6 => 'جمادى الآخرة';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذو القعدة';

  @override
  String get hijriMonth12 => 'ذو الحجة';

  @override
  String get duasScreenTitle => 'الأدعية والزيارات';

  @override
  String get duasSearchHint => 'ابحث في الأدعية والزيارات…';

  @override
  String get duasFilterAll => 'الكل';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أدعية وزيارات',
      one: '$count دعاء',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'لم يتم العثور على أدعية.';

  @override
  String get duaCategoryDaily => 'يومي';

  @override
  String get duaCategoryWeekly => 'أسبوعي';

  @override
  String get duaCategoryOccasions => 'مناسبات';

  @override
  String get duaCategoryZiyarat => 'زيارات';

  @override
  String get duaCategoryTasbih => 'تسبيح';

  @override
  String get eventTypeBirth => 'مولد';

  @override
  String get eventTypeMartyrdom => 'استشهاد';

  @override
  String get eventTypeOccasion => 'مناسبة';

  @override
  String get duaCopyTooltip => 'نسخ الترجمة';

  @override
  String get duaToggleTransliteration => 'الترجمة الصوتية';

  @override
  String get duaToggleTranslation => 'الترجمة';

  @override
  String get duaAskAiLabel => 'اطلب من Ayara شرح هذا الدعاء';

  @override
  String get duaAskAiLockedLabel => 'اسأل Ayara (الولاية)';

  @override
  String get duaAiLockedMessage =>
      'شروحات Ayara متاحة لأعضاء الولاية. قم بالترقية من الإعدادات.';

  @override
  String duaAiComingSoon(String name) {
    return 'اسأل Ayara عن \"$name\" — قريباً!';
  }

  @override
  String get duaCopiedToast => 'تم نسخ الدعاء إلى الحافظة.';

  @override
  String get tasbihAllahuAkbarMeaning => 'الله أكبر';

  @override
  String get tasbihAlhamdulillahMeaning => 'الحمد لله';

  @override
  String get tasbihSubhanallahMeaning => 'سبحان الله';

  @override
  String get tasbihResetTooltip => 'إعادة تعيين';

  @override
  String get tasbihCompleteTitle => 'اكتمل التسبيح';

  @override
  String get tasbihCompleteMessage => 'تقبّل الله ذكرك.';

  @override
  String get tasbihTapHint => 'اضغط في أي مكان للعد';

  @override
  String get tasbihatScreenTitle => 'دليل الصلاة';

  @override
  String get tasbihatScreenSubtitle => 'تسبيحات الصلاة';

  @override
  String get tasbihatScreenDescription =>
      'دليل كامل للتسبيحات التي تُقرأ أثناء الصلوات اليومية وبعدها — وفقاً لتراث أهل البيت (ع).';

  @override
  String get tasbihatArba3Title => 'التسبيحات الأربع';

  @override
  String get tasbihatArba3Subtitle => 'تُقرأ في الركعة الثالثة والرابعة';

  @override
  String get tasbihatArba3Info =>
      'في الفقه الشيعي، تحلّ التسبيحات الأربع محل سورة الفاتحة في الركعتين الثالثة والرابعة من صلوات الظهر والعصر والمغرب والعشاء. وقراءتها مرة واحدة واجبة، وقراءتها ثلاث مرات مستحبة.';

  @override
  String get tasbihatArba3Translation =>
      'سبحان الله · الحمد لله\nلا إله إلا الله · الله أكبر';

  @override
  String get tasbihatArba3CompleteTitle => 'اكتملت التلاوة';

  @override
  String get tasbihatArba3CompleteMessage => 'تقبّل الله صلاتك — آمين';

  @override
  String get tasbihatArba3TapHint => 'اضغط بعد كل تلاوة';

  @override
  String get tasbihatZahraSubtitle => 'بعد كل صلاة · 100 حبّة';

  @override
  String get tasbihatZahraOriginLabel => 'المصدر';

  @override
  String get tasbihatZahraHadith =>
      'طلبت السيدة فاطمة الزهراء (ع) من النبي ﷺ خادماً، فقال: «أفلا أدلّك على ما هو خير لك من خادم؟ تقولين سبحان الله 33 مرة، والحمد لله 33 مرة، والله أكبر 34 مرة بعد كل صلاة، فهو خير لك من خادم.»';

  @override
  String get tasbihatZahraHadithSource => '— بحار الأنوار، ج 85';

  @override
  String get tasbihatZahraOpenCounter => 'فتح عدّاد التسبيح';

  @override
  String get tasbihatDuasTitle => 'أدعية مستحبة';

  @override
  String get tasbihatDuasSubtitle => 'بعد إتمام صلاتك';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آية الكرسي';

  @override
  String get tasbihatDuaAyatKursiWhen => 'بعد كل صلاة واجبة';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورة البقرة 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'من قرأ آية الكرسي بعد كل صلاة واجبة، لم يكن بينه وبين الجنة إلا الموت. وقال الإمام الباقر (ع) إنها من أعظم آيات القرآن.';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen => 'بعد كل صلاة · تختم جميع الأدعية';

  @override
  String get tasbihatDuaSalawatSource => 'الإمام الصادق (ع) — الكافي';

  @override
  String get tasbihatDuaSalawatNote =>
      'يُستحب إرسال الصلاة على النبي ﷺ وآله الطاهرين (آل محمد) لختم كل دعاء. وقال الإمام الصادق (ع): «كل دعاء محجوب حتى يُصلّى على محمد وآل محمد.»';

  @override
  String get tasbihatDuaFarajTitle => 'دعاء الفرج';

  @override
  String get tasbihatDuaFarajWhen => 'بعد كل صلاة · لإمام زماننا';

  @override
  String get tasbihatDuaFarajSource => 'علّمه الإمام الحسن العسكري (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دعاء لظهور الإمام المهدي (عج)، الإمام الثاني عشر، الذي علمه والده. وغالبًا ما يُتلى من قبل العديد من المسلمين الشيعة بعد الصلاة كعمل من أعمال العبادة للإمام الحي.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تسبيح السيدة فاطمة';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'بعد المغرب والعشاء · مستحب على وجه الخصوص';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'الإمام الباقر (ع) — بحار الأنوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'قال الإمام الباقر (ع) إن قراءة تسبيح الزهراء بعد العشاء قبل النوم خير من ألف ركعة نافلة، ونوره يصعد إلى السماوات.';

  @override
  String get tasbihFatimaGiftPre => 'هديّة من النبي';

  @override
  String get tasbihFatimaGiftPost => 'يُقرأ بعد كل صلاة';

  @override
  String get prayerTrackerTitle => 'متابعة الصلاة';

  @override
  String get prayerTrackerPrayed => 'تمت الصلاة';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count يوم متتالٍ';
  }

  @override
  String get prayerTrackerAllComplete =>
      'اكتملت جميع صلوات اليوم. تقبّلها الله.';

  @override
  String get dhikrTrackerTitle => 'تسبيح الزهراء';

  @override
  String get dhikrTrackerCompletedToday => 'اكتمل اليوم';

  @override
  String get dhikrTrackerNotDoneToday => 'لم يتم اليوم';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count يوم متتالٍ';
  }

  @override
  String get dhikrReminderTitle => 'تذكير التسبيح';

  @override
  String get dhikrReminderDescription =>
      'تذكير يومي لطيف لتقرأ تسبيح الزهراء (ع).';

  @override
  String get dhikrReminderEnable => 'تفعيل تذكير التسبيح';

  @override
  String get dhikrReminderTimeLabel => 'وقت التذكير';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حديث اليوم';

  @override
  String get hadithLabelArabic => 'العربية';

  @override
  String get hadithLabelTranslation => 'الترجمة';

  @override
  String get hadithBadge => 'حديث';

  @override
  String get hadithShare => 'مشاركة هذا الحديث';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nعبر Ayara';
  }

  @override
  String get hadithNavPrevious => 'السابق';

  @override
  String get hadithNavNext => 'التالي';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'الأئمة المعصومون الأربعة عشر';

  @override
  String get imamsScreenSubtitle =>
      'النبي، السيدة فاطمة، والأئمة الاثنا عشر — المرشدون المطهرون والمعصومون في الإسلام الشيعي الاثني عشري';

  @override
  String get imamLabelBorn => 'الميلاد';

  @override
  String get imamLabelMartyrdom => 'الاستشهاد';

  @override
  String get imamLabelStatus => 'الحالة';

  @override
  String get imamSectionBiography => 'السيرة';

  @override
  String get imamSectionFamousSaying => 'قول مشهور';

  @override
  String get imamRoleProphet => 'النبي الخاتم';

  @override
  String get imamRoleInfallible => 'المعصوم';

  @override
  String get imamOrdinal1 => 'الإمام الأول';

  @override
  String get imamOrdinal2 => 'الإمام الثاني';

  @override
  String get imamOrdinal3 => 'الإمام الثالث';

  @override
  String get imamOrdinal4 => 'الإمام الرابع';

  @override
  String get imamOrdinal5 => 'الإمام الخامس';

  @override
  String get imamOrdinal6 => 'الإمام السادس';

  @override
  String get imamOrdinal7 => 'الإمام السابع';

  @override
  String get imamOrdinal8 => 'الإمام الثامن';

  @override
  String get imamOrdinal9 => 'الإمام التاسع';

  @override
  String get imamOrdinal10 => 'الإمام العاشر';

  @override
  String get imamOrdinal11 => 'الإمام الحادي عشر';

  @override
  String get imamOrdinal12 => 'الإمام الثاني عشر';

  @override
  String get duaAudioScreenTitle => 'استمع إلى الأدعية';

  @override
  String get duaAudioScreenSubtitle =>
      'اختر دعاءً للاستماع إليه. اضغط على البطاقة للتشغيل أو الإيقاف المؤقت.';

  @override
  String get duaAudioComingSoonMessage =>
      'سيتوفر الصوت لهذا الدعاء في تحديث قادم.';

  @override
  String get duaAudioClose => 'إغلاق';

  @override
  String get duaAudioError => 'تعذّر تحميل الصوت. يُرجى التحقق من اتصالك.';

  @override
  String get duaAudioMetaTransmittedBy => 'رواه';

  @override
  String get duaAudioMetaOccasion => 'المناسبة';

  @override
  String get duaAudioMetaDuration => 'المدة';

  @override
  String get quickActionDailyHadith => 'حديث اليوم';

  @override
  String get quickAction14Masumeen => 'الأئمة المعصومون الأربعة عشر';

  @override
  String get quickActionListenDuas => 'استماع';

  @override
  String get quickActionTasbihat => 'دليل الصلاة';

  @override
  String get pilgrimageSectionTitle => 'الرحلة المقدسة';

  @override
  String get pilgrimageSectionSubtitle =>
      'أدلة متكاملة للحج والعمرة — رحلة زيارة بيت الله الحرام في مكة';

  @override
  String get hajjCardTitle => 'الحج';

  @override
  String get hajjCardSubtitle => 'الركن الخامس من الإسلام';

  @override
  String get hajjCardDescription =>
      'الرحلة الإيمانية السنوية العظمى — واجبة مرة واحدة في العمر على كل مسلم مستطيع';

  @override
  String get hajjScreenTitle => 'دليل الحج';

  @override
  String get hajjScreenSubtitle => 'دليل خطوة بخطوة للحج الأكبر';

  @override
  String get umrahCardTitle => 'العمرة';

  @override
  String get umrahCardSubtitle => 'الحج الأصغر';

  @override
  String get umrahCardDescription =>
      'رحلة روحانية عظيمة الأثر يمكن أداؤها في أي وقت من السنة';

  @override
  String get umrahScreenTitle => 'دليل العمرة';

  @override
  String get umrahScreenSubtitle => 'دليل خطوة بخطوة للعمرة';

  @override
  String get pilgrimageStepsTitle => 'المناسك والخطوات';

  @override
  String get pilgrimageImportantNotesTitle => 'ملاحظات مهمة';

  @override
  String get pilgrimageDuaTitle => 'دعاء لهذه الخطوة';

  @override
  String get pilgrimageJafariNoteTitle => 'ملاحظة فقهية جعفرية';

  @override
  String get pilgrimageComplete => '✓ مكتمل';

  @override
  String get pilgrimageMarkDone => 'حدد كمنجز';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done من $total خطوات';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقيقة';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'الحجاج الشيعة';

  @override
  String get pilgrimageShiaNoteBody =>
      'يسافر العديد من الحجاج الشيعة أيضًا إلى المدينة لزيارة النبي محمد (صلى الله عليه وآله) في مسجد النبي وقبور جنة البقيع. تحمل هذه الزيارات دلالات روحية عميقة، على الرغم من أنها ليست شعائر الحج بحد ذاتها.';

  @override
  String get hajjIntro =>
      'الحج هو الركن الخامس من أركان الإسلام، وهو واجب مرة واحدة في العمر لكل مسلم قادر جسديًا وماليًا. بالنسبة لمعظم الحجاج الشيعة الاثني عشر اليوم، يعني ذلك حج التمتع، الذي يُؤدى في شهر ذي الحجة على خطى النبي إبراهيم (عليه السلام)، وابنه إسماعيل (عليه السلام)، والسيدة هاجر. يتبع هذا الدليل الخطوط العريضة الجعفرية للشعائر، بينما تبقى الزيارة في المدينة رحلة محبوبة بعمق قبل أو بعد الحج.';

  @override
  String get umrahIntro =>
      'العمرة هي الحج الأصغر إلى مكة، وعلى خلاف الحج يمكن أداؤها في أي وقت من السنة. ومع أنها ليست واجبة، فإن لها أجراً روحياً عظيماً، وتُعد عبادة مستحبة جداً. وهي تشترك مع الحج في عدد من المناسك، لكنها أقصر، وتتكوّن من أربعة أعمال رئيسية.';

  @override
  String get voiceInputTitle => 'إدخال صوتي';

  @override
  String get voiceInputMicTitle => 'ميكروفون';

  @override
  String get voiceInputMicSubtitle =>
      'تحدث بإدخالك إلى Ask Ayara بدلاً من الكتابة.';

  @override
  String get voiceInputMicDenied => 'تم رفض الوصول إلى الميكروفون.';

  @override
  String get voiceInputSpeak => 'تحدث بدلاً من ذلك';

  @override
  String get voiceInputListening => 'جاري الاستماع…';

  @override
  String get voiceInputPermissionDenied =>
      'يتطلب إدخال الصوت الوصول إلى الميكروفون.';
}

/// The translations for Arabic, as used in Iraq (`ar_IQ`).
class AppLocalizationsArIq extends AppLocalizationsAr {
  AppLocalizationsArIq() : super('ar_IQ');

  @override
  String get appTitle => 'أيارا';

  @override
  String get languageSelectTitle => 'اختر لغتك';

  @override
  String get languageSelectSub => 'يمكنك تغيير هذا لاحقًا من الإعدادات';

  @override
  String get actionContinue => 'متابعة';

  @override
  String get languageSuggestedHeader => 'مقترحة';

  @override
  String get languageAllHeader => 'كل اللغات';

  @override
  String get languageSuggestedBadge => 'مقترحة';

  @override
  String get languageSearchHint => 'بحث…';

  @override
  String get planBasic => 'القياسية';

  @override
  String get planPremium => 'الولاية';

  @override
  String get categorySlot01 => 'إرشاد يومي';

  @override
  String get categorySlot02 => 'الإيمان والثقة';

  @override
  String get categorySlot03 => 'تأمل في الصلاة';

  @override
  String get categorySlot04 => 'الصبر والرجاء';

  @override
  String get categorySlot05 => 'اطلب المغفرة';

  @override
  String get categorySlot06 => 'الرحمة والشفقة';

  @override
  String get categorySlot07 => 'قوة الإيمان';

  @override
  String get categorySlot08 => 'قلب شاكر';

  @override
  String get categorySlot09 => 'غاية الحياة';

  @override
  String get categorySlot10 => 'صلة الرحم';

  @override
  String get categorySlot11 => 'السلام الداخلي';

  @override
  String get categorySlot12 => 'حكمة النبي';

  @override
  String get categorySlot13 => 'حسن الخلق';

  @override
  String get categorySlot14 => 'مقاومة الإغراء';

  @override
  String get categorySlot15 => 'ذكر المساء';

  @override
  String get categoryCustom => 'تأمل شخصي';

  @override
  String get dhikrMeaningSubhanallah => 'سبحان الله';

  @override
  String get dhikrMeaningAlhamdulillah => 'الحمد لله';

  @override
  String get dhikrMeaningAllahuAkbar => 'الله أكبر';

  @override
  String get quranVerseHeartAtRest => 'ألا بذكر الله تطمئن القلوب.';

  @override
  String get promptHint => 'اضغط على فئة للحصول على إرشاد وتأمل إسلامي';

  @override
  String get currentLanguage => 'اللغة الحالية';

  @override
  String get settingsLanguage => 'إعدادات اللغة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get chooseLanguage => 'اختر لغتك';

  @override
  String get continueCta => 'متابعة';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كلمات',
      one: '$count كلمة',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'الخيارات';

  @override
  String get newCta => 'جديد';

  @override
  String get actionsTitle => 'ماذا تود أن تفعل؟';

  @override
  String get copy => 'نسخ';

  @override
  String get share => 'مشاركة';

  @override
  String get close => 'إغلاق';

  @override
  String get copiedToast => 'تم النسخ إلى الحافظة';

  @override
  String shareSubject(String category) {
    return 'أيارا — $category';
  }

  @override
  String get regenerateErrorTitle => 'تعذّر إنشاء رد جديد';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nهل تريد المحاولة مرة أخرى؟';
  }

  @override
  String get cancelCta => 'إلغاء';

  @override
  String get retryCta => 'حاول مرة أخرى';

  @override
  String get authTitle => 'أنشئ حسابك';

  @override
  String get continueAsGuest => 'المتابعة كضيف';

  @override
  String get signInGoogle => 'تسجيل الدخول باستخدام Google';

  @override
  String get signInApple => 'تسجيل الدخول باستخدام Apple';

  @override
  String get signInEmail => 'تسجيل الدخول بالبريد الإلكتروني';

  @override
  String get upgradeWithApple => 'المتابعة باستخدام Apple';

  @override
  String get mustAccept => 'يجب أن توافق على الشروط وتقرّ بسياسة الخصوصية.';

  @override
  String get termsLabel => 'أوافق على شروط الخدمة';

  @override
  String get privacyLabel => 'لقد قرأت سياسة الخصوصية';

  @override
  String get marketingOptIn => 'أوافق على تلقي الأخبار والعروض';

  @override
  String get openTerms => 'شروط الخدمة';

  @override
  String get openPrivacy => 'سياسة الخصوصية';

  @override
  String get accountSection => 'الحساب';

  @override
  String get guestMode => 'وضع الضيف';

  @override
  String get signedIn => 'تم تسجيل الدخول';

  @override
  String get upgradeHint => 'احفظ تأملاتك عبر الأجهزة من خلال إنشاء حساب.';

  @override
  String get upgradeWithGoogle => 'المتابعة باستخدام Google';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get snackUpgraded => 'تمت ترقية الحساب باستخدام Google ✅';

  @override
  String get snackSignedIn => 'تم تسجيل الدخول باستخدام Google ✅';

  @override
  String get snackSignedOut => 'تم تسجيل الخروج';

  @override
  String get snackSignedInApple => 'تم تسجيل الدخول باستخدام Apple ✅';

  @override
  String get snackSignedInGoogle => 'تم تسجيل الدخول باستخدام Google ✅';

  @override
  String get snackUpgradedApple => 'تمت ترقية الحساب باستخدام Apple ✅';

  @override
  String get snackUpgradedGoogle => 'تمت ترقية الحساب باستخدام Google ✅';

  @override
  String get historyTitle => 'التأملات السابقة';

  @override
  String get historyOpenCta => 'التأملات السابقة';

  @override
  String get historyEmpty => 'لا توجد تأملات محفوظة بعد.';

  @override
  String get historyDeleteTitle => 'حذف التأمل؟';

  @override
  String get historyDeleteBody => 'سيؤدي هذا إلى إزالة العنصر المحدد نهائيًا.';

  @override
  String get deleteCta => 'حذف';

  @override
  String get historyButton => 'التأملات السابقة';

  @override
  String get historyEmptyTitle => 'لا توجد تأملات بعد';

  @override
  String get historyEmptyBody =>
      'أنشئ شيئًا أولًا — ستظهر العناصر المحفوظة هنا.';

  @override
  String get historyDelete => 'حذف';

  @override
  String get footerTitle => 'مع الولاية والإيمان والصبر';

  @override
  String get footerSubtitle => 'دعاء واحد في كل مرة';

  @override
  String get genericErrorSnack =>
      'حدث خطأ ما — يُرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get upgradeAccountCta => 'احفظ تأملاتك عبر الأجهزة – أنشئ حسابًا';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get exportData => 'تصدير بياناتي';

  @override
  String userUidLabel(String uid) {
    return 'المعرّف: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'تمهّل قليلًا 🐯\nأيارا يحتاج لحظة قبل التالية…';

  @override
  String get rateDailyLimit =>
      'لقد نفدت تأملاتك حاليًا.\nاحصل على المزيد من التأملات أو قم بالترقية إلى الولاية.';

  @override
  String get rateCreditsExhausted =>
      'لقد استخدمت كل تأملاتك.\nاشحن المزيد أو قم بالترقية إلى الولاية للمتابعة.';

  @override
  String get rateGraceCreditsExhausted =>
      'لقد نفدت تأملاتك حاليًا.\nاحصل على المزيد من التأملات أو قم بالترقية إلى الولاية.';

  @override
  String get premiumDescription =>
      'الولاية تفتح الميزات المميزة والفئات المستقبلية وشارة خاصة.';

  @override
  String ratePlanExhausted(String plan) {
    return 'تأملاتك فارغة الآن. الخطة: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'تعذّر التحقق من تأملاتك: $message';
  }

  @override
  String get rateCheckGenericError => 'حدث خطأ أثناء التحقق من تأملاتك.';

  @override
  String get aiFallbackGeneric =>
      'حدث خطأ ما — يُرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get limitSectionTitle => 'التأملات';

  @override
  String get limitTodayLabel => 'الاستخدام';

  @override
  String limitCreditsLabel(Object credits) {
    return 'التأملات المتبقية: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get limitLoadingLabel => 'جارٍ التحميل…';

  @override
  String get limitLoadingLabelDescription =>
      'يُعرض في بطاقة التأملات أثناء جلب إحصاءات الاستخدام.';

  @override
  String get aiLimitTitle => 'التأملات';

  @override
  String get aiLimitSubtitle =>
      'كل رد يستهلك تأملًا واحدًا. تتضمن الخطة القياسية تأملات ابتدائية. تفتح الولاية الفئات المميزة وتمكّن من الشحن الإضافي.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total من التأملات المستخدمة';
  }

  @override
  String get creditsSectionTitle => 'التأملات';

  @override
  String get creditsUsageLabel => 'الاستخدام';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'التأملات المتبقية: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get creditsLoadingLabel => 'جارٍ التحميل…';

  @override
  String get creditsLoadingLabelDescription =>
      'يُعرض أثناء جلب إحصاءات التأملات.';

  @override
  String get creditsTitle => 'التأملات';

  @override
  String get creditsSubtitle =>
      'كل رد يستهلك تأملًا واحدًا. تتضمن الخطة القياسية تأملات ابتدائية. تفتح الولاية الفئات المميزة وتمكّن من الشحن الإضافي.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total من التأملات المستخدمة';
  }

  @override
  String get settingsDeleteTitle => 'حذف الحساب';

  @override
  String get settingsDeleteDescription =>
      'احذف حسابك وجميع البيانات المرتبطة به نهائيًا.';

  @override
  String get settingsDeleteButtonLabel => 'احذف حسابي';

  @override
  String get settingsDeleteDialogTitle => 'حذف الحساب؟';

  @override
  String get settingsDeleteDialogBody =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه.\n\nسيتم حذف جميع محادثاتك وسجلك ومعلومات حسابك.';

  @override
  String get settingsDeleteDialogCancel => 'إلغاء';

  @override
  String get settingsDeleteDialogConfirm => 'حذف';

  @override
  String get settingsFreeLimitUsedTitle => 'تم استخدام التأملات الابتدائية';

  @override
  String get settingsFreeLimitUsedDescription =>
      'تم استخدام التأملات الابتدائية لهذا الجهاز. قم بالترقية إلى الولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'تم استخدام التأملات الابتدائية';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'تم استخدام التأملات الابتدائية لهذا الجهاز. قم بالترقية إلى الولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get deviceBoundError =>
      'هذا الجهاز مرتبط بالفعل بحساب آخر. يُرجى تسجيل الدخول بالحساب الأصلي.';

  @override
  String get premiumTitle => 'وضع الولاية';

  @override
  String get premiumSubtitleBasic => 'افتح تجربة أيارا الكاملة.';

  @override
  String get premiumSubtitlePremium =>
      'أنت على الولاية. هل تحتاج إلى مزيد من التأملات؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'الخطة الحالية: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'التأملات: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'عمليات الشراء غير متاحة الآن.';

  @override
  String get premiumSignInToPurchase =>
      'سجّل الدخول لشراء التأملات أو فتح الولاية.';

  @override
  String get premiumRestorePurchases => 'استعادة المشتريات';

  @override
  String get premiumProcessing => 'جارٍ المعالجة…';

  @override
  String get premiumRestoreHintTitle =>
      'هل سبق أن اشتريت الولاية أو التأملات على هذا الجهاز أو جهاز آخر؟';

  @override
  String get premiumRestoreHintBody => 'استعد مشترياتك إذا لم تكن ظاهرة.';

  @override
  String get premiumBuyCredits200 => 'شراء 200 تأمل';

  @override
  String get premiumBuyCredits400 => 'شراء 400 تأمل';

  @override
  String get premiumBecomePremiumOneTime => 'الترقية إلى وضع الولاية';

  @override
  String get premiumTopupHint =>
      'مع الولاية، يمكنك شحن تأملات إضافية متى احتجت.';

  @override
  String get premiumUpgradeCta => 'ترقية';

  @override
  String get premiumRequiredForCategory =>
      'هذه الفئة متاحة فقط لمستخدمي الولاية. قم بالترقية من الإعدادات لفتح كل المحتوى المميز.';

  @override
  String get premiumBenefitsBasic =>
      'افتح الولاية لتحصل على تأملات إضافية، والوصول إلى الفئات المميزة، والمتابعة كلما احتجت إلى الإرشاد.';

  @override
  String get premiumBenefitsPremium =>
      'أنت في وضع الولاية. إذا بدأت التأملات بالنفاد، أضف المزيد وتابع من دون انقطاع.';

  @override
  String get premiumButtonBecomePremium => 'فتح الولاية';

  @override
  String get premiumButtonTopup1000 => 'إضافة 1000 تأمل';

  @override
  String get premiumBadge => 'الولاية مفعّلة';

  @override
  String get premiumLoadingStore => 'جارٍ تحميل المتجر…';

  @override
  String get premiumProductNotAvailable =>
      'هذا المنتج غير متاح في المتجر بعد. يُرجى المحاولة لاحقًا.';

  @override
  String get premiumPurchaseError =>
      'حدث خطأ أثناء الشراء. يُرجى المحاولة مرة أخرى.';

  @override
  String get premiumBuyCredits100 => 'إضافة 100 تأمل';

  @override
  String get premiumFeatureLocked => 'افتح الولاية للوصول إلى هذه الميزة.';

  @override
  String get lockedCategoriesHint =>
      'بعض الفئات مخصصة لأعضاء الولاية. افتحها لاستكشاف كل تأمل في رحلتك.';

  @override
  String get freePlanBlockedTitle => 'لقد استخدمت التأملات الابتدائية كلها';

  @override
  String get freePlanBlockedBody =>
      'أنت على الخطة القياسية مع تأملات ابتدائية، وقد وصلت إلى الحد الأقصى. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى الولاية.';

  @override
  String get freePlanBlockedCtaGoPremium => 'اطّلع على خيارات الولاية أدناه';

  @override
  String get graceBlockedTitle => 'لقد استخدمت التأملات الابتدائية كلها';

  @override
  String get graceBlockedBody =>
      'أنت على الخطة القياسية مع تأملات ابتدائية، وقد وصلت إلى الحد الأقصى. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى الولاية.';

  @override
  String get graceBlockedCtaGoPremium => 'اطّلع على خيارات الولاية أدناه';

  @override
  String get rateGuestMustSignIn => 'سجّل الدخول لاستخدام أيارا وتأملاتك.';

  @override
  String get guestNoCreditsTitle => 'وضع الضيف';

  @override
  String get guestNoCreditsBody =>
      'بصفتك ضيفًا يمكنك تصفح التطبيق، لكن لا يمكنك استخدام التأملات. سجّل الدخول لاحقًا من الإعدادات لاستخدام التأملات وفتح المشتريات.';

  @override
  String get guestDialogContinue => 'متابعة';

  @override
  String get guestDialogLoginInstead => 'تسجيل الدخول بدلًا من ذلك';

  @override
  String get optionalLabel => 'اختياري';

  @override
  String get accountDeleteSuccessTitle => 'تم حذف الحساب';

  @override
  String get accountDeleteSuccessBody =>
      'تم حذف حسابك والبيانات المرتبطة به بنجاح.';

  @override
  String get accountDeleteSuccessClose => 'إغلاق';

  @override
  String get accountDeleteErrorTitle => 'تعذّر حذف الحساب';

  @override
  String get accountDeleteErrorClose => 'حسنًا';

  @override
  String get accountDeleteReauthCancelled =>
      'تم إلغاء إعادة المصادقة. يُرجى تسجيل الدخول مرة أخرى ثم إعادة محاولة الحذف.';

  @override
  String get accountDeleteReauthRequired =>
      'يتطلب حذف الحساب تسجيل دخول حديثًا. يُرجى تسجيل الخروج ثم تسجيل الدخول مجددًا وإعادة المحاولة.';

  @override
  String get settingsDeletePermanentWarning =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه. سيتم حذف كل البيانات المرتبطة بحسابك.';

  @override
  String get dailyGraceTitle => 'إرشاد يومي';

  @override
  String get dailyGraceScriptureLabel => 'آية اليوم';

  @override
  String get dailyGraceSaintLabel => 'شخصية الأسبوع';

  @override
  String get dailyGraceReflectionLabel => 'تأمل المساء';

  @override
  String get dailyGraceCopiedToast => 'تم نسخ الآية إلى الحافظة';

  @override
  String get locationConsentLabel =>
      'السماح لأيارا باستخدام موقعي لاتجاه القبلة وأوقات الصلاة';

  @override
  String get locationConsentHint =>
      'يُستخدم فقط لهاتين الميزتين. لن يتم أبدًا مشاركة موقعك أو تخزينه.';

  @override
  String get askPageTitle => 'اسأل أيارا';

  @override
  String get askPageDescription =>
      'اسأل أي شيء عن الإيمان أو الصلاة أو الحياة أو الممارسة الإسلامية، واحصل على إرشاد مستند إلى القرآن وتعاليم أهل البيت.';

  @override
  String get askPageInputHint => 'اكتب سؤالك هنا…';

  @override
  String get askPageSubmitCta => 'اسأل';

  @override
  String get askPageInputEmptyError => 'يرجى كتابة سؤال أولًا.';

  @override
  String get askResultYourQuestion => 'سؤالك';

  @override
  String get guidancePageTitle => 'القبلة';

  @override
  String get qiblaFacingMecca => 'باتجاه مكة';

  @override
  String get qiblaCompassInstruction =>
      'أدر هاتفك حتى تشير الإبرة الذهبية إلى الأعلى.\nذلك الاتجاه يشير إلى القبلة (مكة).';

  @override
  String get qiblaGpsUnavailableBody =>
      'إشارة GPS ضعيفة. انتقل إلى مكان مفتوح واضغط إعادة المحاولة.';

  @override
  String get qiblaRetry => 'إعادة المحاولة';

  @override
  String get qiblaTitle => 'اتجاه القبلة';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km كم إلى مكة';
  }

  @override
  String get qiblaLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get qiblaLocationNeededBody =>
      'اسمح بالوصول إلى الموقع لكي يتمكن أيارا من حساب اتجاه الكعبة في مكة من أي مكان تكون فيه.';

  @override
  String get qiblaOpenSettings => 'فتح الإعدادات';

  @override
  String get qiblaCompassLoading => 'جارٍ تحديد موقعك…';

  @override
  String get qiblaTowardMecca => 'نحو مكة';

  @override
  String get prayerTimesTitle => 'أوقات الصلاة';

  @override
  String get prayerTimesFajr => 'الفجر';

  @override
  String get prayerTimesDhuhr => 'الظهر';

  @override
  String get prayerTimesAsr => 'العصر';

  @override
  String get prayerTimesMaghrib => 'المغرب';

  @override
  String get prayerTimesIsha => 'العشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get prayerTimesLocationNeededBody =>
      'اسمح بالوصول إلى الموقع لكي يتمكن أيارا من حساب أوقات الصلاة الدقيقة لمدينتك.';

  @override
  String get prayerTimesNextLabel => 'التالي';

  @override
  String get prayerTimesDoneLabel => 'تم';

  @override
  String get monthlyPrayerTimesTitle => 'أوقات الصلاة الشهرية';

  @override
  String get monthlyPrayerTimesViewButton => 'عرض الشهر كاملًا';

  @override
  String get monthlyPrayerTimesNextMonth => 'الشهر التالي';

  @override
  String get monthlyPrayerTimesDayHeader => 'اليوم';

  @override
  String get sharePrayerTimes => 'مشاركة أوقات الصلاة';

  @override
  String get notificationsSectionTitle => 'الإشعارات';

  @override
  String get notificationsSectionSubtitle =>
      'تذكيرات الصلاة وفعاليات التقويم والمزيد';

  @override
  String get dailyReflectionReminderTitle => 'تأمل يومي';

  @override
  String get dailyReflectionReminderDescription =>
      'تذكير يومي لطيف لفتح أيارا والتواصل مع إيمانك.';

  @override
  String get dailyReflectionReminderEnable => 'تفعيل التذكير اليومي';

  @override
  String get dailyReflectionReminderTimeLabel => 'وقت التذكير';

  @override
  String get prayerNotificationsTitle => 'تذكيرات الصلاة';

  @override
  String get prayerNotificationsDescription =>
      'استلم تذكيرًا لطيفًا قبل كل وقت صلاة ليساعدك على البقاء متصلًا طوال اليوم.';

  @override
  String get prayerNotificationsEnable => 'تفعيل تذكيرات الصلاة';

  @override
  String get prayerNotificationsOpenSettings => 'فتح إعدادات الإشعارات';

  @override
  String get prayerNotificationsDenied => 'الإشعارات معطلة';

  @override
  String get prayerNotificationsDeniedHint =>
      'اذهب إلى الإعدادات واسمح بالإشعارات لتطبيق أيارا لتلقي تذكيرات أوقات الصلاة.';

  @override
  String get notificationsConsentLabel => 'السماح بالإشعارات لأوقات الصلاة';

  @override
  String get prayerNotifTitleFajr => '🌅 الفجر — صلاة الفجر';

  @override
  String get prayerNotifBodyFajr =>
      'الفجر صلاة صباحات أهل البيت. قال الإمام علي (ع): احفظ صلاة الفجر كما تحفظ أعز أماناتك. انهض، وتطهّر، وقف بين يدي الله.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ الظهر — صلاة منتصف النهار';

  @override
  String get prayerNotifBodyDhuhr =>
      'كان أئمة أهل البيت يقدّرون كل لحظة من الذكر. توقّف في يومك، واجمع الظهر مع العصر إن احتجت، وأعد قلبك إلى الله.';

  @override
  String get prayerNotifTitleAsr => '🌤️ العصر — صلاة العصر';

  @override
  String get prayerNotifBodyAsr =>
      'حافظ على الصلاة، فهي العهد بينك وبين الله. لقد دخل وقت العصر — فلا تدعه يمر دون ذكر.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 المغرب — صلاة الغروب';

  @override
  String get prayerNotifBodyMaghrib =>
      'غربت الشمس — وهي لحظة كان أهل البيت يقدّسونها للدعاء. أدِّ صلاة المغرب وارفع يديك إلى الله بالدعاء قبل أن يبدأ الليل.';

  @override
  String get prayerNotifTitleIsha => '🌙 العشاء — صلاة الليل';

  @override
  String get prayerNotifBodyIsha =>
      'اختم يومك في معية الله. شجّع الأئمة على صلاة الليل بعد العشاء — لكن أولًا، أتمّ صلاة العشاء واختم يومك بذكره.';

  @override
  String get outOfReflectionsBannerText => 'لقد استخدمت كل تأملاتك';

  @override
  String get outOfReflectionsBannerCta => 'احصل على المزيد';

  @override
  String get dhikrPageTitle => 'الذكر';

  @override
  String get dhikrTapToCount => 'اضغط على الدائرة للعد';

  @override
  String get dhikrResetButton => 'إعادة تعيين';

  @override
  String get dhikrComplete => 'ما شاء الله';

  @override
  String get dhikrCompleteMessage =>
      'لقد أكملت 100 ذكر لله. نسأل الله أن تكون نورًا لقلبك.';

  @override
  String get disclaimerTitle => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerBody =>
      'يوفّر أيارا تأملات إسلامية وتذكيرات ومحتوى روحيًا لدعم رحلتك الإيمانية الشخصية، مستندًا إلى القرآن وتعاليم أهل البيت. يُقدَّم هذا المحتوى لأغراض عامة إعلامية وإلهامية فقط.\n\nأيارا لا يغني عن أهل الاختصاص.\nالإرشاد في هذا التطبيق ليس بديلًا عن العالِم الإسلامي المؤهّل أو المرجع أو المعلّم المتخصص في العقيدة. في الإسلام الشيعي، تستند الهداية الدينية إلى المدرسة الجعفرية في الفقه وإلى تقليد اتباع المرجع الحي — وهو الفقيه المؤهّل الذي ترشد أحكامه المؤمنين في الممارسة الدينية. إذا كانت لديك أسئلة حول الأحكام الشرعية أو مسائل الحلال والحرام أو الواجبات الدينية الشخصية، فيُرجى طلب المشورة من مرجع مؤهّل أو عالم في مجتمعك.\n\nهذا التطبيق لا يصدر أحكامًا شرعية.\nأيارا لا يتخذ قرارات ملزمة في مسائل الفقه أو الواجبات الدينية الشخصية. ولا ينبغي التعامل مع أي شيء هنا على أنه فتوى أو توجيه ديني ملزم.\n\nمركزية أهل البيت.\nفي الإسلام الشيعي، يُعدّ النبي محمد ﷺ وأهل بيته المطهّرون — أهل البيت — الأدلاء المعصومين للأمة الإسلامية بعد القرآن. والأئمة الاثنا عشر من أهل البيت هم المفسرون المعيّنون إلهيًا للتعاليم الإسلامية. يعكس المحتوى في هذا التطبيق هذا التقليد ويسعى إلى تكريمه بأمانة.\n\nشؤون المجتمع.\nيهدف هذا التطبيق إلى تشجيع ارتباطك بالإيمان مع احترام عميق للدور الحيوي الذي تؤديه مساجدك المحلية ومراكزك الإسلامية ومجتمعك الديني. ونشجّعك على البقاء متصلًا والتعلّم من المعلّمين المؤهلين القريبين منك.';

  @override
  String get disclaimerClose => 'أفهم';

  @override
  String get disclaimerInfoTooltip => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerSettingsSubtitle =>
      'لأغراض معلوماتية عامة فقط. اضغط لقراءة إخلاء المسؤولية الكامل.';

  @override
  String get disclaimerSectionHeader => 'إخلاء مسؤولية الإرشاد';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navReflect => 'تأمل';

  @override
  String get navDuas => 'الأدعية';

  @override
  String get navCalendar => 'التقويم';

  @override
  String get dashboardToday => 'اليوم';

  @override
  String get dashboardComingUp => 'قريبًا';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أيام',
      one: 'يوم',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'وصول سريع';

  @override
  String get quickActionQibla => 'القبلة';

  @override
  String get quickActionDhikr => 'الذكر';

  @override
  String get quickActionDailyGrace => 'الإرشاد';

  @override
  String get quickActionPrayerTimes => 'أوقات الصلاة';

  @override
  String get askAyaraTitle => 'اسأل أيارا';

  @override
  String get askAyaraSubtitle =>
      'اسأل أي سؤال إسلامي واحصل على إجابة متأملة وموجّهة.';

  @override
  String get askAyaraHint => 'مثال: ما أهمية شهر رمضان؟';

  @override
  String get askAyaraSubmit => 'اسأل';

  @override
  String get wisdomOfTheDayTitle => 'حكمة اليوم';

  @override
  String get calendarScreenTitle => 'التقويم الإسلامي';

  @override
  String get calendarUpcomingOccasions => 'المناسبات القادمة';

  @override
  String get calendarOccasionRemindersTitle => 'تذكيرات المناسبات';

  @override
  String get calendarOccasionRemindersHint =>
      'سيتم الإشعار مساء اليوم السابق لكل مناسبة';

  @override
  String get calendarNotifPermissionDenied =>
      'تم رفض إذن الإشعارات. فعّله من إعدادات جهازك.';

  @override
  String get calendarNoEvents => 'لم يتم العثور على مناسبات قادمة.';

  @override
  String get calendarAddToPhone => 'أضف إلى تقويم الهاتف';

  @override
  String get calendarAddedToPhone => 'تمت الإضافة إلى التقويم';

  @override
  String get calendarCountdownToday => 'اليوم';

  @override
  String get calendarCountdownTomorrow => 'غدًا';

  @override
  String calendarCountdownDays(int days) {
    return 'بعد $days أيام';
  }

  @override
  String get calendarAH => 'هـ';

  @override
  String get calendarMonthJan => 'ينا';

  @override
  String get calendarMonthFeb => 'فبر';

  @override
  String get calendarMonthMar => 'مار';

  @override
  String get calendarMonthApr => 'أبر';

  @override
  String get calendarMonthMay => 'ماي';

  @override
  String get calendarMonthJun => 'يون';

  @override
  String get calendarMonthJul => 'يول';

  @override
  String get calendarMonthAug => 'أغس';

  @override
  String get calendarMonthSep => 'سبت';

  @override
  String get calendarMonthOct => 'أكت';

  @override
  String get calendarMonthNov => 'نوف';

  @override
  String get calendarMonthDec => 'ديس';

  @override
  String get calendarSeasonMuharramEarly => 'أيام محرّم — تذكّر كربلاء';

  @override
  String get calendarSeasonAshura => 'عاشوراء — يا حسين (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرّم — أيام الحزن والتأمل';

  @override
  String get calendarSeasonArbaeen => 'الأربعين — أربعون يومًا من الحسين';

  @override
  String get calendarSeasonRoadToArbaeen => 'الطريق إلى الأربعين';

  @override
  String get calendarSeasonMabath => 'مبعث مبارك — فجر الوحي';

  @override
  String get calendarSeasonMidShaban =>
      'منتصف شعبان — ميلاد الإمام المهدي (عج)';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارك — شهر القرآن';

  @override
  String get calendarSeasonGhadir => 'عيد الغدير مبارك!';

  @override
  String get hijriMonth1 => 'محرّم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربيع الأول';

  @override
  String get hijriMonth4 => 'ربيع الآخر';

  @override
  String get hijriMonth5 => 'جمادى الأولى';

  @override
  String get hijriMonth6 => 'جمادى الآخرة';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوّال';

  @override
  String get hijriMonth11 => 'ذو القعدة';

  @override
  String get hijriMonth12 => 'ذو الحجة';

  @override
  String get duasScreenTitle => 'الأدعية والزيارات';

  @override
  String get duasSearchHint => 'ابحث في الأدعية والزيارات…';

  @override
  String get duasFilterAll => 'الكل';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أدعية وزيارات',
      one: '$count دعاء',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'لم يتم العثور على أدعية.';

  @override
  String get duaCategoryDaily => 'يومي';

  @override
  String get duaCategoryWeekly => 'أسبوعي';

  @override
  String get duaCategoryOccasions => 'المناسبات';

  @override
  String get duaCategoryZiyarat => 'الزيارات';

  @override
  String get duaCategoryTasbih => 'التسبيح';

  @override
  String get eventTypeBirth => 'الولادة';

  @override
  String get eventTypeMartyrdom => 'الاستشهاد';

  @override
  String get eventTypeOccasion => 'مناسبة';

  @override
  String get duaCopyTooltip => 'نسخ الترجمة';

  @override
  String get duaToggleTransliteration => 'اللفظ';

  @override
  String get duaToggleTranslation => 'الترجمة';

  @override
  String get duaAskAiLabel => 'اطلب من أيارا شرح هذا الدعاء';

  @override
  String get duaAskAiLockedLabel => 'اسأل أيارا (الولاية)';

  @override
  String get duaAiLockedMessage =>
      'شروحات أيارا متاحة لأعضاء الولاية. قم بالترقية من الإعدادات.';

  @override
  String duaAiComingSoon(String name) {
    return 'اسأل أيارا عن \"$name\" — قريبًا!';
  }

  @override
  String get duaCopiedToast => 'تم نسخ الدعاء إلى الحافظة.';

  @override
  String get tasbihAllahuAkbarMeaning => 'الله أكبر';

  @override
  String get tasbihAlhamdulillahMeaning => 'الحمد لله';

  @override
  String get tasbihSubhanallahMeaning => 'سبحان الله';

  @override
  String get tasbihResetTooltip => 'إعادة تعيين';

  @override
  String get tasbihCompleteTitle => 'اكتمل التسبيح';

  @override
  String get tasbihCompleteMessage => 'تقبّل الله ذكرك.';

  @override
  String get tasbihTapHint => 'اضغط في أي مكان للعد';

  @override
  String get tasbihatScreenTitle => 'دليل الصلاة';

  @override
  String get tasbihatScreenSubtitle => 'تسبيحات الصلاة';

  @override
  String get tasbihatScreenDescription =>
      'دليل كامل للتسبيحات التي تُتلى أثناء الصلوات اليومية وبعدها — وفقًا لتقليد أهل البيت (ع).';

  @override
  String get tasbihatArba3Title => 'التسبيحات الأربع';

  @override
  String get tasbihatArba3Subtitle => 'تُتلى في الركعة الثالثة والرابعة';

  @override
  String get tasbihatArba3Info =>
      'في الفقه الشيعي، تقوم التسبيحات الأربع مقام سورة الفاتحة في الركعة الثالثة والرابعة من الظهر والعصر والمغرب والعشاء. ويجب (واجب) قراءتها مرة واحدة، ويُستحب (مستحب) قراءتها ثلاث مرات.';

  @override
  String get tasbihatArba3Translation =>
      'سبحان الله · الحمد لله\nلا إله إلا الله · الله أكبر';

  @override
  String get tasbihatArba3CompleteTitle => 'اكتملت التلاوة';

  @override
  String get tasbihatArba3CompleteMessage => 'تُقبّلت صلاتك بإذن الله — آمين';

  @override
  String get tasbihatArba3TapHint => 'اضغط بعد كل تلاوة';

  @override
  String get tasbihatZahraSubtitle => 'بعد كل صلاة · 100 حبّة';

  @override
  String get tasbihatZahraOriginLabel => 'الأصل';

  @override
  String get tasbihatZahraHadith =>
      'طلبت السيدة فاطمة الزهراء (ع) من النبي ﷺ خادمًا، فقال: «أفلا أدلك على ما هو خير لك من خادم؟ تسبحين الله 33 مرة، وتحمدين الله 33 مرة، وتكبرين الله 34 مرة بعد كل صلاة. ذلك خير لك من خادم».';

  @override
  String get tasbihatZahraHadithSource => '— بحار الأنوار، ج 85';

  @override
  String get tasbihatZahraOpenCounter => 'افتح عدّاد التسبيح';

  @override
  String get tasbihatDuasTitle => 'أدعية مستحبة';

  @override
  String get tasbihatDuasSubtitle => 'بعد إتمام صلاتك';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آية الكرسي';

  @override
  String get tasbihatDuaAyatKursiWhen => 'بعد كل صلاة واجبة';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورة البقرة 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'من قرأ آية الكرسي بعد كل صلاة واجبة، لم يحل بينه وبين الجنة إلا الموت. وقال الإمام الباقر (ع) إنها من أعظم آيات القرآن.';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen => 'بعد كل صلاة · تختم جميع الأدعية';

  @override
  String get tasbihatDuaSalawatSource => 'الإمام الصادق (ع) — الكافي';

  @override
  String get tasbihatDuaSalawatNote =>
      'يُستحب إرسال الصلاة على النبي ﷺ وآله الطاهرين (آل محمد) لختم كل دعاء. قال الإمام الصادق (ع): «كل دعاء محجوب حتى يُصلّى على محمد وآل محمد».';

  @override
  String get tasbihatDuaFarajTitle => 'دعاء الفرج';

  @override
  String get tasbihatDuaFarajWhen => 'بعد كل صلاة · لإمام زماننا';

  @override
  String get tasbihatDuaFarajSource => 'علّمه الإمام الحسن العسكري (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دعاء لظهور الإمام المهدي (عج)، الإمام الثاني عشر، الذي علمه والده. وغالبًا ما يُتلى من قبل العديد من المسلمين الشيعة بعد الصلاة كعمل من أعمال العبادة للإمام الحي.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تسبيح السيدة فاطمة';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'بعد المغرب والعشاء · مستحب بشكل خاص';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'الإمام الباقر (ع) — بحار الأنوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'قال الإمام الباقر (ع) إن قراءة تسبيح الزهراء بعد العشاء قبل النوم خير من ألف ركعة من النوافل. ونوره يصعد إلى السماء.';

  @override
  String get tasbihFatimaGiftPre => 'هدية من النبي';

  @override
  String get tasbihFatimaGiftPost => 'تُقرأ بعد كل صلاة';

  @override
  String get prayerTrackerTitle => 'متتبع الصلاة';

  @override
  String get prayerTrackerPrayed => 'تمت الصلاة';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'سلسلة $count يوم';
  }

  @override
  String get prayerTrackerAllComplete => 'اكتملت جميع صلوات اليوم. تقبّل الله.';

  @override
  String get dhikrTrackerTitle => 'تسبيح الزهراء';

  @override
  String get dhikrTrackerCompletedToday => 'أُنجز اليوم';

  @override
  String get dhikrTrackerNotDoneToday => 'لم يُنجز اليوم';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'سلسلة $count يوم';
  }

  @override
  String get dhikrReminderTitle => 'تذكير التسبيح';

  @override
  String get dhikrReminderDescription =>
      'تذكير يومي لطيف لقراءة تسبيح الزهراء (ع).';

  @override
  String get dhikrReminderEnable => 'تفعيل تذكير التسبيح';

  @override
  String get dhikrReminderTimeLabel => 'وقت التذكير';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حديث اليوم';

  @override
  String get hadithLabelArabic => 'العربية';

  @override
  String get hadithLabelTranslation => 'الترجمة';

  @override
  String get hadithBadge => 'حديث';

  @override
  String get hadithShare => 'مشاركة هذا الحديث';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nعبر أيارا';
  }

  @override
  String get hadithNavPrevious => 'السابق';

  @override
  String get hadithNavNext => 'التالي';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'الأئمة الأربعة عشر';

  @override
  String get imamsScreenSubtitle =>
      'النبي، السيدة فاطمة، والأئمة الاثنا عشر — المرشدون المطهرون والمعصومون في الإسلام الشيعي الاثني عشري';

  @override
  String get imamLabelBorn => 'الولادة';

  @override
  String get imamLabelMartyrdom => 'الاستشهاد';

  @override
  String get imamLabelStatus => 'الصفة';

  @override
  String get imamSectionBiography => 'السيرة';

  @override
  String get imamSectionFamousSaying => 'قول مشهور';

  @override
  String get imamRoleProphet => 'خاتم الأنبياء';

  @override
  String get imamRoleInfallible => 'المعصوم';

  @override
  String get imamOrdinal1 => 'الإمام الأول';

  @override
  String get imamOrdinal2 => 'الإمام الثاني';

  @override
  String get imamOrdinal3 => 'الإمام الثالث';

  @override
  String get imamOrdinal4 => 'الإمام الرابع';

  @override
  String get imamOrdinal5 => 'الإمام الخامس';

  @override
  String get imamOrdinal6 => 'الإمام السادس';

  @override
  String get imamOrdinal7 => 'الإمام السابع';

  @override
  String get imamOrdinal8 => 'الإمام الثامن';

  @override
  String get imamOrdinal9 => 'الإمام التاسع';

  @override
  String get imamOrdinal10 => 'الإمام العاشر';

  @override
  String get imamOrdinal11 => 'الإمام الحادي عشر';

  @override
  String get imamOrdinal12 => 'الإمام الثاني عشر';

  @override
  String get duaAudioScreenTitle => 'استمع إلى الأدعية';

  @override
  String get duaAudioScreenSubtitle =>
      'اختر دعاءً للاستماع إليه. اضغط على البطاقة للتشغيل أو الإيقاف المؤقت.';

  @override
  String get duaAudioComingSoonMessage =>
      'سيكون الصوت لهذا الدعاء متاحًا في تحديث قادم.';

  @override
  String get duaAudioClose => 'إغلاق';

  @override
  String get duaAudioError => 'تعذّر تحميل الصوت. يُرجى التحقق من اتصالك.';

  @override
  String get duaAudioMetaTransmittedBy => 'نقله';

  @override
  String get duaAudioMetaOccasion => 'المناسبة';

  @override
  String get duaAudioMetaDuration => 'المدة';

  @override
  String get quickActionDailyHadith => 'حديث اليوم';

  @override
  String get quickAction14Masumeen => 'الأئمة الأربعة عشر';

  @override
  String get quickActionListenDuas => 'استماع';

  @override
  String get quickActionTasbihat => 'دليل الصلاة';

  @override
  String get pilgrimageSectionTitle => 'الرحلة المقدسة';

  @override
  String get pilgrimageSectionSubtitle =>
      'أدلة كاملة للحج والعمرة — إلى بيت الله الحرام في مكة';

  @override
  String get hajjCardTitle => 'الحج';

  @override
  String get hajjCardSubtitle => 'الركن الخامس من الإسلام';

  @override
  String get hajjCardDescription =>
      'الحج السنوي العظيم — فريضة مرة في العمر على كل مسلم قادر';

  @override
  String get hajjScreenTitle => 'دليل الحج';

  @override
  String get hajjScreenSubtitle => 'دليل خطوة بخطوة للحج الأكبر';

  @override
  String get umrahCardTitle => 'العمرة';

  @override
  String get umrahCardSubtitle => 'الحج الأصغر';

  @override
  String get umrahCardDescription =>
      'رحلة روحية عظيمة الأجر يمكن أداؤها في أي وقت من السنة';

  @override
  String get umrahScreenTitle => 'دليل العمرة';

  @override
  String get umrahScreenSubtitle => 'دليل خطوة بخطوة للعمرة';

  @override
  String get pilgrimageStepsTitle => 'المناسك والخطوات';

  @override
  String get pilgrimageImportantNotesTitle => 'ملاحظات مهمة';

  @override
  String get pilgrimageDuaTitle => 'دعاء لهذه الخطوة';

  @override
  String get pilgrimageJafariNoteTitle => 'ملاحظة فقهية جعفرية';

  @override
  String get pilgrimageComplete => '✓ مكتمل';

  @override
  String get pilgrimageMarkDone => 'حدد كمنجز';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done من $total خطوات';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقيقة';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'الحجاج الشيعة';

  @override
  String get pilgrimageShiaNoteBody =>
      'يسافر العديد من الحجاج الشيعة أيضًا إلى المدينة لزيارة النبي محمد (ص) في مسجد النبي وزيارة القبور في جنات البقيع. تحمل هذه الزيارات دلالات روحية عميقة، على الرغم من أنها ليست مناسك الحج بحد ذاتها.';

  @override
  String get hajjIntro =>
      'الحج هو الركن الخامس من أركان الإسلام، وهو واجب مرة واحدة في العمر لكل مسلم قادر جسديًا وماليًا. بالنسبة لمعظم الحجاج الشيعة الاثني عشر اليوم، يعني ذلك حج التمتع، الذي يُؤدى في شهر ذي الحجة على خطى النبي إبراهيم (ع)، وابنه إسماعيل (ع)، والسيدة هاجر. يتبع هذا الدليل الخطوط العريضة الجعفرية للمناسك، بينما تبقى الزيارة في المدينة رحلة محبوبة بعمق قبل أو بعد الحج.';

  @override
  String get umrahIntro =>
      'العمرة هي الحج الأصغر إلى مكة، وعلى خلاف الحج يمكن أداؤها في أي وقت من السنة. ورغم أنها ليست واجبة، فإن لها أجرًا روحيًا عظيمًا وتُعد من العبادات المستحبة جدًا. وتشترك مع الحج في عدة مناسك، لكنها أقصر وتتكوّن من أربعة أعمال رئيسية.';

  @override
  String get voiceInputTitle => 'إدخال صوتي';

  @override
  String get voiceInputMicTitle => 'ميكروفون';

  @override
  String get voiceInputMicSubtitle =>
      'تحدث بإدخالك إلى Ask Ayara بدلاً من الكتابة.';

  @override
  String get voiceInputMicDenied => 'تم رفض الوصول إلى الميكروفون.';

  @override
  String get voiceInputSpeak => 'تحدث بدلاً من ذلك';

  @override
  String get voiceInputListening => 'استماع…';

  @override
  String get voiceInputPermissionDenied =>
      'الوصول إلى الميكروفون مطلوب لإدخال الصوت.';
}

/// The translations for Arabic, as used in Morocco (`ar_MA`).
class AppLocalizationsArMa extends AppLocalizationsAr {
  AppLocalizationsArMa() : super('ar_MA');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'اختار اللغة ديالك';

  @override
  String get languageSelectSub => 'تقدر تبدلها من بعد فالإعدادات';

  @override
  String get actionContinue => 'متابعة';

  @override
  String get languageSuggestedHeader => 'مقترحة';

  @override
  String get languageAllHeader => 'جميع اللغات';

  @override
  String get languageSuggestedBadge => 'مقترحة';

  @override
  String get languageSearchHint => 'بحث…';

  @override
  String get planBasic => 'العادي';

  @override
  String get planPremium => 'ولاية';

  @override
  String get categorySlot01 => 'الهداية اليومية';

  @override
  String get categorySlot02 => 'الإيمان والتوكل';

  @override
  String get categorySlot03 => 'تأملات الصلاة';

  @override
  String get categorySlot04 => 'الصبر والرجاء';

  @override
  String get categorySlot05 => 'اطلب المغفرة';

  @override
  String get categorySlot06 => 'الرحمة والشفقة';

  @override
  String get categorySlot07 => 'قوة الإيمان';

  @override
  String get categorySlot08 => 'قلب شاكر';

  @override
  String get categorySlot09 => 'غاية الحياة';

  @override
  String get categorySlot10 => 'صلة الرحم';

  @override
  String get categorySlot11 => 'السكينة الداخلية';

  @override
  String get categorySlot12 => 'حكمة النبي';

  @override
  String get categorySlot13 => 'حسن الخلق';

  @override
  String get categorySlot14 => 'قاوم الإغراء';

  @override
  String get categorySlot15 => 'ذكر المساء';

  @override
  String get categoryCustom => 'تأمل شخصي';

  @override
  String get dhikrMeaningSubhanallah => 'سبحان الله';

  @override
  String get dhikrMeaningAlhamdulillah => 'الحمد لله';

  @override
  String get dhikrMeaningAllahuAkbar => 'الله أكبر';

  @override
  String get quranVerseHeartAtRest => 'ألا بذكر الله تطمئن القلوب.';

  @override
  String get promptHint => 'اضغط على فئة للحصول على إرشاد وتأمل إسلامي';

  @override
  String get currentLanguage => 'اللغة الحالية';

  @override
  String get settingsLanguage => 'إعدادات اللغة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get chooseLanguage => 'اختار اللغة ديالك';

  @override
  String get continueCta => 'متابعة';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كلمات',
      one: '$count كلمة',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'خيارات';

  @override
  String get newCta => 'جديد';

  @override
  String get actionsTitle => 'شنو بغيتي تدير؟';

  @override
  String get copy => 'نسخ';

  @override
  String get share => 'مشاركة';

  @override
  String get close => 'إغلاق';

  @override
  String get copiedToast => 'تنسخ للحافظة';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'ما قدرناش نولدو جواب جديد';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nبغيتي تعاود المحاولة؟';
  }

  @override
  String get cancelCta => 'إلغاء';

  @override
  String get retryCta => 'عاود المحاولة';

  @override
  String get authTitle => 'صايب الحساب ديالك';

  @override
  String get continueAsGuest => 'متابعة كضيف';

  @override
  String get signInGoogle => 'الدخول باستعمال Google';

  @override
  String get signInApple => 'الدخول باستعمال Apple';

  @override
  String get signInEmail => 'الدخول بالبريد الإلكتروني';

  @override
  String get upgradeWithApple => 'متابعة باستعمال Apple';

  @override
  String get mustAccept =>
      'خاصك توافق على الشروط وتقرّ بأنك قريتي سياسة الخصوصية.';

  @override
  String get termsLabel => 'كنوافق على شروط الخدمة';

  @override
  String get privacyLabel => 'قريت سياسة الخصوصية';

  @override
  String get marketingOptIn => 'كنوافق نتوصل بالأخبار والعروض';

  @override
  String get openTerms => 'شروط الخدمة';

  @override
  String get openPrivacy => 'سياسة الخصوصية';

  @override
  String get accountSection => 'الحساب';

  @override
  String get guestMode => 'وضع الضيف';

  @override
  String get signedIn => 'تم تسجيل الدخول';

  @override
  String get upgradeHint => 'حفظ التأملات ديالك بين الأجهزة كيكون بإنشاء حساب.';

  @override
  String get upgradeWithGoogle => 'متابعة باستعمال Google';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get snackUpgraded => 'تمت ترقية الحساب عبر Google ✅';

  @override
  String get snackSignedIn => 'تم تسجيل الدخول عبر Google ✅';

  @override
  String get snackSignedOut => 'تم تسجيل الخروج';

  @override
  String get snackSignedInApple => 'تم تسجيل الدخول عبر Apple ✅';

  @override
  String get snackSignedInGoogle => 'تم تسجيل الدخول عبر Google ✅';

  @override
  String get snackUpgradedApple => 'تمت ترقية الحساب عبر Apple ✅';

  @override
  String get snackUpgradedGoogle => 'تمت ترقية الحساب عبر Google ✅';

  @override
  String get historyTitle => 'التأملات السابقة';

  @override
  String get historyOpenCta => 'التأملات السابقة';

  @override
  String get historyEmpty => 'ما كايناش تأملات محفوظة حتى الآن.';

  @override
  String get historyDeleteTitle => 'واش تحذف هاد التأمل؟';

  @override
  String get historyDeleteBody =>
      'هاد العملية غادي تحيد العنصر المختار نهائياً.';

  @override
  String get deleteCta => 'حذف';

  @override
  String get historyButton => 'التأملات السابقة';

  @override
  String get historyEmptyTitle => 'ما كايناش تأملات حتى الآن';

  @override
  String get historyEmptyBody =>
      'ولد شي حاجة أولاً — العناصر المحفوظة ديالك غادي يبانوا هنا.';

  @override
  String get historyDelete => 'حذف';

  @override
  String get footerTitle => 'مع الولاية والإيمان والصبر';

  @override
  String get footerSubtitle => 'دعاء وراء دعاء';

  @override
  String get genericErrorSnack => 'وقع شي مشكل — عاود المحاولة من بعد شوية.';

  @override
  String get upgradeAccountCta => 'حفظ التأملات ديالك بين الأجهزة – صايب حساب';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get exportData => 'تصدير البيانات ديالي';

  @override
  String userUidLabel(String uid) {
    return 'المعرّف: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'بالشوية 🐯\nAyara محتاجة لحظة قبل المرة الجاية…';

  @override
  String get rateDailyLimit =>
      'سالاو عليك التأملات دابا.\nجيب تأملات أكثر أو رقّي لـ ولاية.';

  @override
  String get rateCreditsExhausted =>
      'استعملتي جميع التأملات ديالك.\nزيد شوية ولا رقّي لـ ولاية باش تكمل.';

  @override
  String get rateGraceCreditsExhausted =>
      'سالاو عليك التأملات دابا.\nجيب تأملات أكثر أو رقّي لـ ولاية.';

  @override
  String get premiumDescription =>
      'ولاية كتحلّ المزايا المميزة، الفئات المستقبلية، وشارة خاصة.';

  @override
  String ratePlanExhausted(String plan) {
    return 'التأملات ديالك سالاو دابا. الخطة: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ما قدرناش نتحققو من التأملات ديالك: $message';
  }

  @override
  String get rateCheckGenericError => 'وقع شي مشكل فالتأكد من التأملات ديالك.';

  @override
  String get aiFallbackGeneric => 'وقع شي مشكل — عاود المحاولة من بعد شوية.';

  @override
  String get limitSectionTitle => 'التأملات';

  @override
  String get limitTodayLabel => 'الاستعمال';

  @override
  String limitCreditsLabel(Object credits) {
    return 'التأملات المتبقية: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get limitLoadingLabel => 'جارٍ التحميل…';

  @override
  String get limitLoadingLabelDescription =>
      'كتبان فبطاقة التأملات بينما كيتجابو إحصائيات الاستعمال.';

  @override
  String get aiLimitTitle => 'التأملات';

  @override
  String get aiLimitSubtitle =>
      'كل جواب كيستهلك تأمل واحد. الخطة العادية فيها تأملات البداية. ولاية كتحل الفئات المميزة وكتفعّل الشحن الإضافي.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total من التأملات استُعملت';
  }

  @override
  String get creditsSectionTitle => 'التأملات';

  @override
  String get creditsUsageLabel => 'الاستعمال';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'التأملات المتبقية: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get creditsLoadingLabel => 'جارٍ التحميل…';

  @override
  String get creditsLoadingLabelDescription =>
      'كتبان بينما كيتجابو إحصائيات التأملات.';

  @override
  String get creditsTitle => 'التأملات';

  @override
  String get creditsSubtitle =>
      'كل جواب كيستهلك تأمل واحد. الخطة العادية فيها تأملات البداية. ولاية كتحل الفئات المميزة وكتفعّل الشحن الإضافي.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total من التأملات استُعملت';
  }

  @override
  String get settingsDeleteTitle => 'حذف الحساب';

  @override
  String get settingsDeleteDescription =>
      'حذف الحساب ديالك وجميع البيانات المرتبطة به نهائياً.';

  @override
  String get settingsDeleteButtonLabel => 'حذف الحساب ديالي';

  @override
  String get settingsDeleteDialogTitle => 'واش نحذف الحساب؟';

  @override
  String get settingsDeleteDialogBody =>
      'هاد العملية نهائية وما كتقدرش ترجعها.\n\nجميع المحادثات، السجل، ومعلومات الحساب غادي يتحذفو.';

  @override
  String get settingsDeleteDialogCancel => 'إلغاء';

  @override
  String get settingsDeleteDialogConfirm => 'حذف';

  @override
  String get settingsFreeLimitUsedTitle => 'تأملات البداية استُعملت';

  @override
  String get settingsFreeLimitUsedDescription =>
      'تأملات البداية لهاد الجهاز تستهلكات. رقّي لـ ولاية أو شري تأملات أكثر باش تكمل.';

  @override
  String get settingsStarterCreditsUsedTitle => 'تأملات البداية استُعملت';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'تأملات البداية لهاد الجهاز تستهلكات. رقّي لـ ولاية أو شري تأملات أكثر باش تكمل.';

  @override
  String get deviceBoundError =>
      'هاد الجهاز راه مربوط من قبل بحساب آخر. دخل بالحساب الأصلي من فضلك.';

  @override
  String get premiumTitle => 'وضع ولاية';

  @override
  String get premiumSubtitleBasic => 'حلّ تجربة Ayara الكاملة.';

  @override
  String get premiumSubtitlePremium => 'راك فـ ولاية. محتاج تأملات أكثر؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'الخطة الحالية: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'التأملات: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'الشراء ما متاحش دابا.';

  @override
  String get premiumSignInToPurchase => 'دخل باش تشري التأملات أو تفعّل ولاية.';

  @override
  String get premiumRestorePurchases => 'استرجاع المشتريات';

  @override
  String get premiumProcessing => 'جارٍ المعالجة…';

  @override
  String get premiumRestoreHintTitle =>
      'شريتي من قبل ولاية أو تأملات فهاد الجهاز أو جهاز آخر؟';

  @override
  String get premiumRestoreHintBody => 'رجّع المشتريات ديالك إلا ما بانو لكش.';

  @override
  String get premiumBuyCredits200 => 'شري 200 تأمل';

  @override
  String get premiumBuyCredits400 => 'شري 400 تأمل';

  @override
  String get premiumBecomePremiumOneTime => 'رقّي لوضع ولاية';

  @override
  String get premiumTopupHint =>
      'مع ولاية، تقدر تزيد تأملات إضافية وقت ما تحتاج.';

  @override
  String get premiumUpgradeCta => 'ترقية';

  @override
  String get premiumRequiredForCategory =>
      'هاد الفئة متاحة غير لمستخدمي ولاية. رقّي من الإعدادات باش تحلّ جميع المحتويات المميزة.';

  @override
  String get premiumBenefitsBasic =>
      'حلّ ولاية باش تاخذ تأملات إضافية، تدخل للفئات المميزة، وتكمل ملي تحتاج التوجيه.';

  @override
  String get premiumBenefitsPremium =>
      'راك فـ وضع ولاية. إلا كنتي قربتي تسالي، زيد شوية تأملات وكمل بلا انقطاع.';

  @override
  String get premiumButtonBecomePremium => 'حلّ ولاية';

  @override
  String get premiumButtonTopup1000 => 'زيد 1000 تأمل';

  @override
  String get premiumBadge => 'ولاية مفعّلة';

  @override
  String get premiumLoadingStore => 'جارٍ تحميل المتجر…';

  @override
  String get premiumProductNotAvailable =>
      'هاد المنتج ما متوفرش فالمتجر دابا. عاود المحاولة من بعد.';

  @override
  String get premiumPurchaseError => 'وقع شي مشكل فالشراء. عاود المحاولة.';

  @override
  String get premiumBuyCredits100 => 'زيد 100 تأمل';

  @override
  String get premiumFeatureLocked => 'حلّ ولاية باش توصل لهاد الميزة.';

  @override
  String get lockedCategoriesHint =>
      'بعض الفئات مخصصة لأعضاء ولاية. حلّهم باش تكتاشف كل تأملات الرحلة ديالك.';

  @override
  String get freePlanBlockedTitle => 'استعملتي جميع تأملات البداية';

  @override
  String get freePlanBlockedBody =>
      'راك فالخطة العادية مع تأملات البداية، ووصلتي للحد. باش تكمل — وتحل الفئات المميزة — رقّي لـ ولاية.';

  @override
  String get freePlanBlockedCtaGoPremium => 'شوف خيارات ولاية لتحت';

  @override
  String get graceBlockedTitle => 'استعملتي جميع تأملات البداية';

  @override
  String get graceBlockedBody =>
      'راك فالخطة العادية مع تأملات البداية، ووصلتي للحد. باش تكمل — وتحل الفئات المميزة — رقّي لـ ولاية.';

  @override
  String get graceBlockedCtaGoPremium => 'شوف خيارات ولاية لتحت';

  @override
  String get rateGuestMustSignIn => 'دخل باش تستعمل Ayara والتأملات ديالك.';

  @override
  String get guestNoCreditsTitle => 'وضع الضيف';

  @override
  String get guestNoCreditsBody =>
      'كضيف تقدر تتصفح التطبيق، ولكن ما تقدرش تستعمل التأملات. سجل الدخول من بعد من الإعدادات باش تستعمل التأملات وتحلّ المشتريات.';

  @override
  String get guestDialogContinue => 'متابعة';

  @override
  String get guestDialogLoginInstead => 'سجّل الدخول عوضاً عن ذلك';

  @override
  String get optionalLabel => 'اختياري';

  @override
  String get accountDeleteSuccessTitle => 'تم حذف الحساب';

  @override
  String get accountDeleteSuccessBody =>
      'تم حذف الحساب ديالك والبيانات المرتبطة به بنجاح.';

  @override
  String get accountDeleteSuccessClose => 'إغلاق';

  @override
  String get accountDeleteErrorTitle => 'ما قدرناش نحذفو الحساب';

  @override
  String get accountDeleteErrorClose => 'موافق';

  @override
  String get accountDeleteReauthCancelled =>
      'إعادة التحقق من الهوية تلغات. دخل مرة أخرى وعاود محاولة الحذف.';

  @override
  String get accountDeleteReauthRequired =>
      'حذف الحساب كيتطلب تسجيل دخول حديث. خرج، دخل من جديد، وعاود المحاولة.';

  @override
  String get settingsDeletePermanentWarning =>
      'هاد العملية نهائية وما كتقدرش ترجعها. جميع البيانات المرتبطة بالحساب ديالك غادي تتحذف.';

  @override
  String get dailyGraceTitle => 'الهداية اليومية';

  @override
  String get dailyGraceScriptureLabel => 'آية اليوم';

  @override
  String get dailyGraceSaintLabel => 'شخصية الأسبوع';

  @override
  String get dailyGraceReflectionLabel => 'تأمل المساء';

  @override
  String get dailyGraceCopiedToast => 'تم نسخ الآية للحافظة';

  @override
  String get locationConsentLabel =>
      'سمح لـ Ayara يستعمل الموقع ديالي لتحديد القبلة وأوقات الصلاة';

  @override
  String get locationConsentHint =>
      'كيستعمل غير لهاد الميزات. الموقع ديالك ما كيتشاركش وما كيتخزنش.';

  @override
  String get askPageTitle => 'سول Ayara';

  @override
  String get askPageDescription =>
      'سول أي سؤال على الإيمان، الصلاة، الحياة، أو الممارسة الإسلامية وخذ إرشاد مرتكز على القرآن وتعاليم أهل البيت.';

  @override
  String get askPageInputHint => 'كتب السؤال ديالك هنا…';

  @override
  String get askPageSubmitCta => 'سول';

  @override
  String get askPageInputEmptyError => 'من فضلك كتب السؤال أولاً.';

  @override
  String get askResultYourQuestion => 'السؤال ديالك';

  @override
  String get guidancePageTitle => 'القبلة';

  @override
  String get qiblaFacingMecca => 'متجه نحو مكة';

  @override
  String get qiblaCompassInstruction =>
      'دوّر الهاتف ديالك حتى تبان الإبرة الذهبية طالعة للفوق.\nهاد الاتجاه هو اتجاه القبلة (مكة).';

  @override
  String get qiblaGpsUnavailableBody =>
      'إشارة GPS ضعيفة. خرج لبرا واضغط على إعادة المحاولة.';

  @override
  String get qiblaRetry => 'إعادة المحاولة';

  @override
  String get qiblaTitle => 'اتجاه القبلة';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km كم إلى مكة';
  }

  @override
  String get qiblaLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get qiblaLocationNeededBody =>
      'سمح بالوصول للموقع باش Ayara تحسب اتجاه الكعبة فمكة من أي بلاصة نتا فيها.';

  @override
  String get qiblaOpenSettings => 'فتح الإعدادات';

  @override
  String get qiblaCompassLoading => 'جارٍ تحديد الموقع ديالك…';

  @override
  String get qiblaTowardMecca => 'نحو مكة';

  @override
  String get prayerTimesTitle => 'أوقات الصلاة';

  @override
  String get prayerTimesFajr => 'الفجر';

  @override
  String get prayerTimesDhuhr => 'الظهر';

  @override
  String get prayerTimesAsr => 'العصر';

  @override
  String get prayerTimesMaghrib => 'المغرب';

  @override
  String get prayerTimesIsha => 'العشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get prayerTimesLocationNeededBody =>
      'سمح بالوصول للموقع باش Ayara تحسب أوقات صلاة دقيقة لمدينتك.';

  @override
  String get prayerTimesNextLabel => 'التالي';

  @override
  String get prayerTimesDoneLabel => 'تم';

  @override
  String get monthlyPrayerTimesTitle => 'أوقات الصلاة الشهرية';

  @override
  String get monthlyPrayerTimesViewButton => 'شوف الشهر كامل';

  @override
  String get monthlyPrayerTimesNextMonth => 'الشهر الجاي';

  @override
  String get monthlyPrayerTimesDayHeader => 'اليوم';

  @override
  String get sharePrayerTimes => 'مشاركة أوقات الصلاة';

  @override
  String get notificationsSectionTitle => 'الإشعارات';

  @override
  String get notificationsSectionSubtitle =>
      'تذكيرات الصلاة، أحداث التقويم، وأكثر';

  @override
  String get dailyReflectionReminderTitle => 'التأمل اليومي';

  @override
  String get dailyReflectionReminderDescription =>
      'تذكير يومي لطيف باش تفتح Ayara وتبقى على صلة بإيمانك.';

  @override
  String get dailyReflectionReminderEnable => 'تفعيل التذكير اليومي';

  @override
  String get dailyReflectionReminderTimeLabel => 'وقت التذكير';

  @override
  String get prayerNotificationsTitle => 'تذكيرات الصلاة';

  @override
  String get prayerNotificationsDescription =>
      'توصل بتذكير لطيف قبل كل صلاة باش تبقى مرتبط طوال اليوم.';

  @override
  String get prayerNotificationsEnable => 'تفعيل تذكيرات الصلاة';

  @override
  String get prayerNotificationsOpenSettings => 'فتح إعدادات الإشعارات';

  @override
  String get prayerNotificationsDenied => 'الإشعارات معطلة';

  @override
  String get prayerNotificationsDeniedHint =>
      'مشي للإعدادات وسمح بالإشعارات لـ Ayara باش توصلك تذكيرات أوقات الصلاة.';

  @override
  String get notificationsConsentLabel => 'سمح بالإشعارات لأوقات الصلاة';

  @override
  String get prayerNotifTitleFajr => '🌅 الفجر — صلاة الصبح';

  @override
  String get prayerNotifBodyFajr =>
      'الفجر هو صلاة صباح أهل البيت. قال الإمام علي (ع): احفظوا صلاة الفجر كما تحفظون أثمن أماناتكم. انهض، تطهّر، وقف بين يدي الله.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ الظهر — صلاة منتصف النهار';

  @override
  String get prayerNotifBodyDhuhr =>
      'كان الأئمة من أهل البيت يعتنون بكل لحظة ذكر. وقف نهارك، واجمع الظهر مع العصر عند الحاجة، وردّ قلبك إلى الله.';

  @override
  String get prayerNotifTitleAsr => '🌤️ العصر — صلاة العصر';

  @override
  String get prayerNotifBodyAsr =>
      'حافظ على الصلاة، فهي العهد بينك وبين الله. دخل وقت العصر — لا تدعه يمر بلا ذكر.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 المغرب — صلاة الغروب';

  @override
  String get prayerNotifBodyMaghrib =>
      'غربت الشمس — وهي لحظة كان أهل البيت يقدّسونها للدعاء. صلِّ المغرب وافتح يديك لله بالدعاء قبل أن يبدأ الليل.';

  @override
  String get prayerNotifTitleIsha => '🌙 العشاء — صلاة الليل';

  @override
  String get prayerNotifBodyIsha =>
      'اختم يومك بصحبة الله. شجّع الأئمة على صلاة الليل بعد العشاء — لكن أولاً أتمّ العشاء واختم يومك بذكره.';

  @override
  String get outOfReflectionsBannerText => 'استعملتي جميع التأملات ديالك';

  @override
  String get outOfReflectionsBannerCta => 'جيب أكثر';

  @override
  String get dhikrPageTitle => 'الذكر';

  @override
  String get dhikrTapToCount => 'اضغط على الدائرة باش تعدّ';

  @override
  String get dhikrResetButton => 'إعادة التعيين';

  @override
  String get dhikrComplete => 'ما شاء الله';

  @override
  String get dhikrCompleteMessage =>
      'كملتي 100 من أذكار الله. نسأل الله تكون نوراً لقلبك.';

  @override
  String get disclaimerTitle => 'حول الإرشاد فهاد التطبيق';

  @override
  String get disclaimerBody =>
      'Ayara كتوفر تأملات إسلامية، تذكيرات، ومحتوى روحاني لدعم رحلتك الشخصية فالإيمان، مرتكز على القرآن وتعاليم أهل البيت. هاد المحتوى مقدم فقط لأغراض عامة معلوماتية وإلهامية.\n\nAyara ما كتعوضش العلم الشرعي المؤهل.\nالإرشاد الموجود فهاد التطبيق ماشي بديل عن عالم ديني مؤهل، مرجع تقليد، أو أستاذ مكوَّن فالعقيدة. فالإسلام الشيعي، الإرشاد الديني كيرتكز على المدرسة الجعفرية فالفقه وعلى تقليد اتباع المرجع الحي — وهو فقيه مؤهل كتوجّه أحكامه المؤمنين فالممارسة الدينية. إذا كانت عندك أسئلة على الأحكام الشرعية، الحلال والحرام، أو الواجبات الدينية الشخصية، رجاءً استاشر مع مرجع مؤهل أو عالم فالمجتمع ديالك.\n\nهاد التطبيق ما كيعطيش أحكام شرعية.\nAyara ما كتقومش بتحديدات ملزمة فمسائل الفقه أو الواجبات الدينية الشخصية. ما كاين حتى شي حاجة هنا خاصها تتفهم على أنها فتوى أو توجيه ديني ملزم.\n\nمحورية أهل البيت.\nفالإسلام الشيعي، النبي محمد ﷺ وأهل بيته الطاهرون — أهل البيت — هم الهداة المعصومون ديال الأمة الإسلامية من بعد القرآن. الأئمة الاثنا عشر من أهل البيت هم المفسرون المعيّنون إلهياً للتعاليم الإسلامية. المحتوى فهاد التطبيق كيعكس هاد التقليد وكيحاول يكرّمو بأمانة.\n\nأهمية الجماعة.\nهاد التطبيق كيهذف يشجّعك على الارتباط بالإيمان مع احترام عميق للدور الحيوي ديال المسجد المحلي، المركز الإسلامي، والمجتمع الديني ديالك. كنشجعوك تبقى مرتبط وتتعلّم من الأساتذة المؤهلين القريبين منك.';

  @override
  String get disclaimerClose => 'فهمت';

  @override
  String get disclaimerInfoTooltip => 'حول الإرشاد فهاد التطبيق';

  @override
  String get disclaimerSettingsSubtitle =>
      'لأغراض معلوماتية عامة فقط. اضغط باش تقرا التنبيه كامل.';

  @override
  String get disclaimerSectionHeader => 'تنبيه الإرشاد';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navReflect => 'تأمل';

  @override
  String get navDuas => 'الأدعية';

  @override
  String get navCalendar => 'التقويم';

  @override
  String get dashboardToday => 'اليوم';

  @override
  String get dashboardComingUp => 'قريباً';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أيام',
      one: 'يوم',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'وصول سريع';

  @override
  String get quickActionQibla => 'القبلة';

  @override
  String get quickActionDhikr => 'الذكر';

  @override
  String get quickActionDailyGrace => 'الهداية';

  @override
  String get quickActionPrayerTimes => 'أوقات الصلاة';

  @override
  String get askAyaraTitle => 'سول Ayara';

  @override
  String get askAyaraSubtitle =>
      'سول أي سؤال إسلامي وخذ جواباً متأملاً وموجهاً.';

  @override
  String get askAyaraHint => 'مثلاً: ما هي أهمية رمضان؟';

  @override
  String get askAyaraSubmit => 'سول';

  @override
  String get wisdomOfTheDayTitle => 'حكمة اليوم';

  @override
  String get calendarScreenTitle => 'التقويم الإسلامي';

  @override
  String get calendarUpcomingOccasions => 'المناسبات القادمة';

  @override
  String get calendarOccasionRemindersTitle => 'تذكيرات المناسبات';

  @override
  String get calendarOccasionRemindersHint =>
      'غادي يوصلك إشعار فليلة قبل كل مناسبة';

  @override
  String get calendarNotifPermissionDenied =>
      'صلاحية الإشعارات مرفوضة. فعّلها من إعدادات الجهاز.';

  @override
  String get calendarNoEvents => 'ما كايناش أحداث قادمة.';

  @override
  String get calendarAddToPhone => 'أضف إلى تقويم الهاتف';

  @override
  String get calendarAddedToPhone => 'تمت الإضافة إلى التقويم';

  @override
  String get calendarCountdownToday => 'اليوم';

  @override
  String get calendarCountdownTomorrow => 'غداً';

  @override
  String calendarCountdownDays(int days) {
    return 'بعد $days أيام';
  }

  @override
  String get calendarAH => 'هـ';

  @override
  String get calendarMonthJan => 'ينا';

  @override
  String get calendarMonthFeb => 'فبر';

  @override
  String get calendarMonthMar => 'مارس';

  @override
  String get calendarMonthApr => 'أبر';

  @override
  String get calendarMonthMay => 'ماي';

  @override
  String get calendarMonthJun => 'يون';

  @override
  String get calendarMonthJul => 'يول';

  @override
  String get calendarMonthAug => 'غشت';

  @override
  String get calendarMonthSep => 'شتن';

  @override
  String get calendarMonthOct => 'أكت';

  @override
  String get calendarMonthNov => 'نون';

  @override
  String get calendarMonthDec => 'دجن';

  @override
  String get calendarSeasonMuharramEarly => 'أيام محرم — تذكّر كربلاء';

  @override
  String get calendarSeasonAshura => 'عاشوراء — يا حسين (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرم — أيام الحزن والتأمل';

  @override
  String get calendarSeasonArbaeen => 'الأربعين — أربعون يوماً من الحسين';

  @override
  String get calendarSeasonRoadToArbaeen => 'الطريق إلى الأربعين';

  @override
  String get calendarSeasonMabath => 'مبعث مبارك — فجر الوحي';

  @override
  String get calendarSeasonMidShaban => 'منتصف شعبان — مولد الإمام المهدي (عج)';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارك — شهر القرآن';

  @override
  String get calendarSeasonGhadir => 'عيد الغدير مبارك!';

  @override
  String get hijriMonth1 => 'محرم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربيع الأول';

  @override
  String get hijriMonth4 => 'ربيع الثاني';

  @override
  String get hijriMonth5 => 'جمادى الأولى';

  @override
  String get hijriMonth6 => 'جمادى الثانية';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذو القعدة';

  @override
  String get hijriMonth12 => 'ذو الحجة';

  @override
  String get duasScreenTitle => 'الأدعية والزيارات';

  @override
  String get duasSearchHint => 'ابحث فالأدعية، الزيارات…';

  @override
  String get duasFilterAll => 'الكل';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أدعية وزيارات',
      one: '$count دعاء',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'ما لقاينا حتى دعاء.';

  @override
  String get duaCategoryDaily => 'يومي';

  @override
  String get duaCategoryWeekly => 'أسبوعي';

  @override
  String get duaCategoryOccasions => 'مناسبات';

  @override
  String get duaCategoryZiyarat => 'زيارات';

  @override
  String get duaCategoryTasbih => 'تسبيح';

  @override
  String get eventTypeBirth => 'مولد';

  @override
  String get eventTypeMartyrdom => 'شهادة';

  @override
  String get eventTypeOccasion => 'مناسبة';

  @override
  String get duaCopyTooltip => 'نسخ الترجمة';

  @override
  String get duaToggleTransliteration => 'النقل الصوتي';

  @override
  String get duaToggleTranslation => 'الترجمة';

  @override
  String get duaAskAiLabel => 'سول Ayara تشرح هاد الدعاء';

  @override
  String get duaAskAiLockedLabel => 'سول Ayara (ولاية)';

  @override
  String get duaAiLockedMessage =>
      'شروحات Ayara متاحة لأعضاء ولاية فقط. رقّي من الإعدادات.';

  @override
  String duaAiComingSoon(String name) {
    return 'سول Ayara على \"$name\" — قريباً!';
  }

  @override
  String get duaCopiedToast => 'تم نسخ الدعاء للحافظة.';

  @override
  String get tasbihAllahuAkbarMeaning => 'الله أكبر';

  @override
  String get tasbihAlhamdulillahMeaning => 'الحمد لله';

  @override
  String get tasbihSubhanallahMeaning => 'سبحان الله';

  @override
  String get tasbihResetTooltip => 'إعادة التعيين';

  @override
  String get tasbihCompleteTitle => 'اكتمل التسبيح';

  @override
  String get tasbihCompleteMessage => 'نسأل الله أن يتقبل ذكرك.';

  @override
  String get tasbihTapHint => 'اضغط في أي مكان باش تعدّ';

  @override
  String get tasbihatScreenTitle => 'دليل الصلاة';

  @override
  String get tasbihatScreenSubtitle => 'تسبيحات الصلاة';

  @override
  String get tasbihatScreenDescription =>
      'دليل كامل للتسبيحات التي تُقال أثناء وبعد الصلوات اليومية — وفق تقليد أهل البيت (ع).';

  @override
  String get tasbihatArba3Title => 'التسبيحات الأربعة';

  @override
  String get tasbihatArba3Subtitle => 'تُقرأ فالرّكعة الثالثة والرابعة';

  @override
  String get tasbihatArba3Info =>
      'فالفقه الشيعي، التسبيحات الأربعة كتعوّض سورة الفاتحة فالرّكعة الثالثة والرابعة من الظهر والعصر والمغرب والعشاء. واجب تتقال مرة واحدة، ومُستحب تتقال ثلاث مرات.';

  @override
  String get tasbihatArba3Translation =>
      'سبحان الله · الحمد لله\nلا إله إلا الله · الله أكبر';

  @override
  String get tasbihatArba3CompleteTitle => 'اكتملت التلاوة';

  @override
  String get tasbihatArba3CompleteMessage => 'نسأل الله أن يتقبل صلاتك — آمين';

  @override
  String get tasbihatArba3TapHint => 'اضغط بعد كل تلاوة';

  @override
  String get tasbihatZahraSubtitle => 'بعد كل صلاة · 100 حبّة';

  @override
  String get tasbihatZahraOriginLabel => 'الأصل';

  @override
  String get tasbihatZahraHadith =>
      'طلبت السيدة فاطمة الزهراء (ع) من النبي ﷺ خادماً، فقال: «ألا أدلك على ما هو خير لك من خادم؟ قولي سبحان الله 33 مرة، والحمد لله 33 مرة، والله أكبر 34 مرة بعد كل صلاة. فهو خير لك من خادم.»';

  @override
  String get tasbihatZahraHadithSource => '— بحار الأنوار، ج85';

  @override
  String get tasbihatZahraOpenCounter => 'فتح عدّاد التسبيح';

  @override
  String get tasbihatDuasTitle => 'أدعية مستحبة';

  @override
  String get tasbihatDuasSubtitle => 'بعد إتمام الصلاة';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آية الكرسي';

  @override
  String get tasbihatDuaAyatKursiWhen => 'بعد كل صلاة واجبة';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورة البقرة 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'من قرأ آية الكرسي بعد كل صلاة واجبة، ما يمنعه من الجنة إلا الموت. وقال الإمام الباقر (ع) إنها من أعظم آيات القرآن.';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen => 'بعد كل صلاة · تختم كل الدعوات';

  @override
  String get tasbihatDuaSalawatSource => 'الإمام الصادق (ع) — الكافي';

  @override
  String get tasbihatDuaSalawatNote =>
      'الصلاة على النبي ﷺ وآله الطاهرين (آل محمد) مستحبة لختم كل دعاء. قال الإمام الصادق (ع): «كل دعاء محجوب حتى يُصلّى على محمد وآل محمد.»';

  @override
  String get tasbihatDuaFarajTitle => 'دعاء الفرج';

  @override
  String get tasbihatDuaFarajWhen => 'بعد كل صلاة · لإمام زماننا';

  @override
  String get tasbihatDuaFarajSource => 'علّمه الإمام الحسن العسكري (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دعاء لظهور الإمام المهدي (عج)، الإمام الثاني عشر، الذي علمه والده. يُتلى هذا الدعاء غالبًا من قبل العديد من المسلمين الشيعة بعد الصلاة كعمل من أعمال العبادة للإمام الحي.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تسبيح السيدة فاطمة';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'بعد المغرب والعشاء · مستحب بشكل خاص';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'الإمام الباقر (ع) — بحار الأنوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'قال الإمام الباقر (ع) إن تسبيح الزهراء بعد العشاء قبل النوم خير من ألف ركعة نافلة، ونوره يصعد إلى السماء.';

  @override
  String get tasbihFatimaGiftPre => 'هبة من النبي';

  @override
  String get tasbihFatimaGiftPost => 'تُقرأ بعد كل صلاة';

  @override
  String get prayerTrackerTitle => 'متابعة الصلاة';

  @override
  String get prayerTrackerPrayed => 'صُلّيت';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count أيام متتالية';
  }

  @override
  String get prayerTrackerAllComplete =>
      'جميع الصلوات تكملات اليوم. تقبّل الله.';

  @override
  String get dhikrTrackerTitle => 'تسبيح الزهراء';

  @override
  String get dhikrTrackerCompletedToday => 'تم اليوم';

  @override
  String get dhikrTrackerNotDoneToday => 'لم يتم اليوم';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count أيام متتالية';
  }

  @override
  String get dhikrReminderTitle => 'تذكير التسبيح';

  @override
  String get dhikrReminderDescription =>
      'تذكير يومي لطيف باش تقرا تسبيح الزهراء (ع).';

  @override
  String get dhikrReminderEnable => 'تفعيل تذكير التسبيح';

  @override
  String get dhikrReminderTimeLabel => 'وقت التذكير';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حديث اليوم';

  @override
  String get hadithLabelArabic => 'العربية';

  @override
  String get hadithLabelTranslation => 'الترجمة';

  @override
  String get hadithBadge => 'حديث';

  @override
  String get hadithShare => 'شارك هاد الحديث';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nعبر Ayara';
  }

  @override
  String get hadithNavPrevious => 'السابق';

  @override
  String get hadithNavNext => 'التالي';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'الأئمة الأربعة عشر';

  @override
  String get imamsScreenSubtitle =>
      'النبي، السيدة فاطمة، والأئمة الاثنا عشر — المرشدون المطهرون والمعصومون في الإسلام الشيعي الاثني عشري';

  @override
  String get imamLabelBorn => 'الولادة';

  @override
  String get imamLabelMartyrdom => 'الشهادة';

  @override
  String get imamLabelStatus => 'الصفة';

  @override
  String get imamSectionBiography => 'السيرة';

  @override
  String get imamSectionFamousSaying => 'قول مشهور';

  @override
  String get imamRoleProphet => 'النبي الخاتم';

  @override
  String get imamRoleInfallible => 'المعصوم';

  @override
  String get imamOrdinal1 => 'الإمام الأول';

  @override
  String get imamOrdinal2 => 'الإمام الثاني';

  @override
  String get imamOrdinal3 => 'الإمام الثالث';

  @override
  String get imamOrdinal4 => 'الإمام الرابع';

  @override
  String get imamOrdinal5 => 'الإمام الخامس';

  @override
  String get imamOrdinal6 => 'الإمام السادس';

  @override
  String get imamOrdinal7 => 'الإمام السابع';

  @override
  String get imamOrdinal8 => 'الإمام الثامن';

  @override
  String get imamOrdinal9 => 'الإمام التاسع';

  @override
  String get imamOrdinal10 => 'الإمام العاشر';

  @override
  String get imamOrdinal11 => 'الإمام الحادي عشر';

  @override
  String get imamOrdinal12 => 'الإمام الثاني عشر';

  @override
  String get duaAudioScreenTitle => 'استمع إلى الأدعية';

  @override
  String get duaAudioScreenSubtitle =>
      'اختار دعاء باش تسمعو. اضغط على البطاقة للتشغيل أو الإيقاف.';

  @override
  String get duaAudioComingSoonMessage =>
      'الصوت ديال هاد الدعاء غادي يتوفر فالتحديث الجاي.';

  @override
  String get duaAudioClose => 'إغلاق';

  @override
  String get duaAudioError => 'ما قدرناش نحمّلو الصوت. تفقد الاتصال ديالك.';

  @override
  String get duaAudioMetaTransmittedBy => 'رواه';

  @override
  String get duaAudioMetaOccasion => 'المناسبة';

  @override
  String get duaAudioMetaDuration => 'المدة';

  @override
  String get quickActionDailyHadith => 'حديث اليوم';

  @override
  String get quickAction14Masumeen => 'الأئمة الأربعة عشر';

  @override
  String get quickActionListenDuas => 'استمع';

  @override
  String get quickActionTasbihat => 'دليل الصلاة';

  @override
  String get pilgrimageSectionTitle => 'الرحلة المقدسة';

  @override
  String get pilgrimageSectionSubtitle =>
      'أدلة كاملة للحج والعمرة — رحلة بيت الله الحرام في مكة';

  @override
  String get hajjCardTitle => 'الحج';

  @override
  String get hajjCardSubtitle => 'الركن الخامس من الإسلام';

  @override
  String get hajjCardDescription =>
      'الحج السنوي العظيم — واجب مرة واحدة في العمر على كل مسلم قادر';

  @override
  String get hajjScreenTitle => 'دليل الحج';

  @override
  String get hajjScreenSubtitle => 'دليل خطوة بخطوة للحج الأكبر';

  @override
  String get umrahCardTitle => 'العمرة';

  @override
  String get umrahCardSubtitle => 'الحج الأصغر';

  @override
  String get umrahCardDescription =>
      'رحلة روحانية عظيمة الأجر يمكن أداؤها في أي وقت من السنة';

  @override
  String get umrahScreenTitle => 'دليل العمرة';

  @override
  String get umrahScreenSubtitle => 'دليل خطوة بخطوة للعمرة';

  @override
  String get pilgrimageStepsTitle => 'المناسك والخطوات';

  @override
  String get pilgrimageImportantNotesTitle => 'ملاحظات مهمة';

  @override
  String get pilgrimageDuaTitle => 'دعاء لهذه الخطوة';

  @override
  String get pilgrimageJafariNoteTitle => 'ملاحظة فقهية جعفرية';

  @override
  String get pilgrimageComplete => '✓ مكتمل';

  @override
  String get pilgrimageMarkDone => 'حدد كمنجز';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done من $total خطوات';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقيقة';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'الحجاج الشيعة';

  @override
  String get pilgrimageShiaNoteBody =>
      'يسافر العديد من الحجاج الشيعة أيضًا إلى المدينة لزيارة النبي محمد (ص) في مسجد النبي والقبور في جنات البقيع. تحمل هذه الزيارات دلالات روحية عميقة، على الرغم من أنها ليست مناسك الحج بحد ذاتها.';

  @override
  String get hajjIntro =>
      'الحج هو الركن الخامس من أركان الإسلام، وهو واجب مرة واحدة في العمر لكل مسلم قادر جسديًا وماليًا. بالنسبة لمعظم الحجاج الشيعة الاثني عشر اليوم، يعني ذلك حج التمتع، الذي يُؤدى في شهر ذي الحجة على خطى النبي إبراهيم (ع)، وابنه إسماعيل (ع)، والسيدة هاجر. يتبع هذا الدليل الخطوط العريضة الجعفرية للمناسك، بينما تبقى الزيارة في المدينة رحلة محبوبة بعمق قبل أو بعد الحج.';

  @override
  String get umrahIntro =>
      'العمرة هي الحج الأصغر إلى مكة، وخلافاً للحج، يمكن أداؤها في أي وقت من السنة. ورغم أنها غير واجبة، فهي ذات أجر روحي عظيم وتُعتبر عبادة مستحبة جداً. فيها عدة مناسك مشتركة مع الحج لكنها أقصر، وتتكوّن من أربع شعائر رئيسية.';

  @override
  String get voiceInputTitle => 'إدخال صوتي';

  @override
  String get voiceInputMicTitle => 'ميكروفون';

  @override
  String get voiceInputMicSubtitle =>
      'تحدث بإدخالك إلى Ask Ayara بدلاً من الكتابة.';

  @override
  String get voiceInputMicDenied => 'تم رفض الوصول إلى الميكروفون.';

  @override
  String get voiceInputSpeak => 'تحدث بدلاً من ذلك';

  @override
  String get voiceInputListening => 'جاري الاستماع…';

  @override
  String get voiceInputPermissionDenied =>
      'يتطلب إدخال الصوت الوصول إلى الميكروفون.';
}

/// The translations for Arabic, as used in Saudi Arabia (`ar_SA`).
class AppLocalizationsArSa extends AppLocalizationsAr {
  AppLocalizationsArSa() : super('ar_SA');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'اختر لغتك';

  @override
  String get languageSelectSub => 'يمكنك تغيير ذلك لاحقاً من الإعدادات';

  @override
  String get actionContinue => 'متابعة';

  @override
  String get languageSuggestedHeader => 'مقترحة';

  @override
  String get languageAllHeader => 'جميع اللغات';

  @override
  String get languageSuggestedBadge => 'مقترحة';

  @override
  String get languageSearchHint => 'بحث…';

  @override
  String get planBasic => 'الأساسية';

  @override
  String get planPremium => 'الولاية';

  @override
  String get categorySlot01 => 'إرشاد يومي';

  @override
  String get categorySlot02 => 'الإيمان والثقة';

  @override
  String get categorySlot03 => 'تأملات الصلاة';

  @override
  String get categorySlot04 => 'الصبر والرجاء';

  @override
  String get categorySlot05 => 'اطلب المغفرة';

  @override
  String get categorySlot06 => 'الرحمة والرأفة';

  @override
  String get categorySlot07 => 'قوة الإيمان';

  @override
  String get categorySlot08 => 'قلب شاكر';

  @override
  String get categorySlot09 => 'غاية الحياة';

  @override
  String get categorySlot10 => 'صلة الرحم';

  @override
  String get categorySlot11 => 'السلام الداخلي';

  @override
  String get categorySlot12 => 'حكمة النبي';

  @override
  String get categorySlot13 => 'حسن الخلق';

  @override
  String get categorySlot14 => 'مجاهدة الفتنة';

  @override
  String get categorySlot15 => 'أذكار المساء';

  @override
  String get categoryCustom => 'تأمل شخصي';

  @override
  String get dhikrMeaningSubhanallah => 'سبحان الله';

  @override
  String get dhikrMeaningAlhamdulillah => 'الحمد لله';

  @override
  String get dhikrMeaningAllahuAkbar => 'الله أكبر';

  @override
  String get quranVerseHeartAtRest => 'ألا بذكر الله تطمئن القلوب.';

  @override
  String get promptHint => 'اضغط على فئة للحصول على إرشاد وتأمل إسلامي';

  @override
  String get currentLanguage => 'اللغة الحالية';

  @override
  String get settingsLanguage => 'إعدادات اللغة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get chooseLanguage => 'اختر لغتك';

  @override
  String get continueCta => 'متابعة';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كلمات',
      one: '$count كلمة',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'الخيارات';

  @override
  String get newCta => 'جديد';

  @override
  String get actionsTitle => 'ماذا تود أن تفعل؟';

  @override
  String get copy => 'نسخ';

  @override
  String get share => 'مشاركة';

  @override
  String get close => 'إغلاق';

  @override
  String get copiedToast => 'تم النسخ إلى الحافظة';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'تعذر إنشاء رد جديد';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nهل تريد المحاولة مرة أخرى؟';
  }

  @override
  String get cancelCta => 'إلغاء';

  @override
  String get retryCta => 'حاول مرة أخرى';

  @override
  String get authTitle => 'أنشئ حسابك';

  @override
  String get continueAsGuest => 'المتابعة كضيف';

  @override
  String get signInGoogle => 'تسجيل الدخول عبر Google';

  @override
  String get signInApple => 'تسجيل الدخول عبر Apple';

  @override
  String get signInEmail => 'تسجيل الدخول عبر البريد الإلكتروني';

  @override
  String get upgradeWithApple => 'المتابعة عبر Apple';

  @override
  String get mustAccept =>
      'يجب عليك قبول شروط الخدمة والإقرار بسياسة الخصوصية.';

  @override
  String get termsLabel => 'أوافق على شروط الخدمة';

  @override
  String get privacyLabel => 'لقد قرأت سياسة الخصوصية';

  @override
  String get marketingOptIn => 'أوافق على تلقي الأخبار والعروض';

  @override
  String get openTerms => 'شروط الخدمة';

  @override
  String get openPrivacy => 'سياسة الخصوصية';

  @override
  String get accountSection => 'الحساب';

  @override
  String get guestMode => 'وضع الضيف';

  @override
  String get signedIn => 'تم تسجيل الدخول';

  @override
  String get upgradeHint =>
      'احفظ تأملاتك عبر أجهزتك المختلفة من خلال إنشاء حساب.';

  @override
  String get upgradeWithGoogle => 'المتابعة عبر Google';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get snackUpgraded => 'تمت ترقية الحساب عبر Google ✅';

  @override
  String get snackSignedIn => 'تم تسجيل الدخول عبر Google ✅';

  @override
  String get snackSignedOut => 'تم تسجيل الخروج';

  @override
  String get snackSignedInApple => 'تم تسجيل الدخول عبر Apple ✅';

  @override
  String get snackSignedInGoogle => 'تم تسجيل الدخول عبر Google ✅';

  @override
  String get snackUpgradedApple => 'تمت ترقية الحساب عبر Apple ✅';

  @override
  String get snackUpgradedGoogle => 'تمت ترقية الحساب عبر Google ✅';

  @override
  String get historyTitle => 'التأملات السابقة';

  @override
  String get historyOpenCta => 'التأملات السابقة';

  @override
  String get historyEmpty => 'لا توجد تأملات محفوظة حتى الآن.';

  @override
  String get historyDeleteTitle => 'حذف التأمل؟';

  @override
  String get historyDeleteBody => 'سيؤدي ذلك إلى إزالة العنصر المحدد نهائياً.';

  @override
  String get deleteCta => 'حذف';

  @override
  String get historyButton => 'التأملات السابقة';

  @override
  String get historyEmptyTitle => 'لا توجد تأملات بعد';

  @override
  String get historyEmptyBody =>
      'أنشئ شيئاً أولاً — ستظهر العناصر المحفوظة هنا.';

  @override
  String get historyDelete => 'حذف';

  @override
  String get footerTitle => 'مع الولاية والإيمان والصبر';

  @override
  String get footerSubtitle => 'دعاء بعد دعاء';

  @override
  String get genericErrorSnack =>
      'حدث خطأ ما — يُرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get upgradeAccountCta =>
      'احفظ تأملاتك عبر أجهزتك المختلفة – أنشئ حساباً';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get exportData => 'تصدير بياناتي';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'على مهلك 🐯\nيحتاج Ayara إلى لحظة قبل التالي…';

  @override
  String get rateDailyLimit =>
      'نفدت تأملاتك حالياً.\nاحصل على المزيد من التأملات أو قم بالترقية إلى الولاية.';

  @override
  String get rateCreditsExhausted =>
      'لقد استخدمت جميع تأملاتك.\nأضف المزيد أو قم بالترقية إلى الولاية للمتابعة.';

  @override
  String get rateGraceCreditsExhausted =>
      'نفدت تأملاتك حالياً.\nاحصل على المزيد من التأملات أو قم بالترقية إلى الولاية.';

  @override
  String get premiumDescription =>
      'الولاية تفتح الميزات المميزة والفئات المستقبلية وشارة خاصة.';

  @override
  String ratePlanExhausted(String plan) {
    return 'رصيد تأملاتك فارغ حالياً. الخطة: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'تعذر التحقق من تأملاتك: $message';
  }

  @override
  String get rateCheckGenericError => 'حدث خطأ أثناء التحقق من تأملاتك.';

  @override
  String get aiFallbackGeneric =>
      'حدث خطأ ما — يُرجى المحاولة مرة أخرى بعد قليل.';

  @override
  String get limitSectionTitle => 'التأملات';

  @override
  String get limitTodayLabel => 'الاستخدام';

  @override
  String limitCreditsLabel(Object credits) {
    return 'التأملات المتبقية: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get limitLoadingLabel => 'جارٍ التحميل…';

  @override
  String get limitLoadingLabelDescription =>
      'يظهر في بطاقة التأملات أثناء جلب إحصاءات الاستخدام.';

  @override
  String get aiLimitTitle => 'التأملات';

  @override
  String get aiLimitSubtitle =>
      'كل رد يستهلك تأملاً واحداً. تتضمن الخطة الأساسية تأملات البداية. وتفتح الولاية الفئات المميزة وتتيح إضافة الرصيد.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total تأملات مستخدمة';
  }

  @override
  String get creditsSectionTitle => 'التأملات';

  @override
  String get creditsUsageLabel => 'الاستخدام';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'التأملات المتبقية: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'الخطة: $plan';
  }

  @override
  String get creditsLoadingLabel => 'جارٍ التحميل…';

  @override
  String get creditsLoadingLabelDescription =>
      'يظهر أثناء جلب إحصاءات التأملات.';

  @override
  String get creditsTitle => 'التأملات';

  @override
  String get creditsSubtitle =>
      'كل رد يستهلك تأملاً واحداً. تتضمن الخطة الأساسية تأملات البداية. وتفتح الولاية الفئات المميزة وتتيح إضافة الرصيد.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total تأملات مستخدمة';
  }

  @override
  String get settingsDeleteTitle => 'حذف الحساب';

  @override
  String get settingsDeleteDescription =>
      'احذف حسابك وجميع البيانات المرتبطة به نهائياً.';

  @override
  String get settingsDeleteButtonLabel => 'حذف حسابي';

  @override
  String get settingsDeleteDialogTitle => 'حذف الحساب؟';

  @override
  String get settingsDeleteDialogBody =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه.\n\nسيتم حذف جميع محادثاتك وسجلك ومعلومات حسابك.';

  @override
  String get settingsDeleteDialogCancel => 'إلغاء';

  @override
  String get settingsDeleteDialogConfirm => 'حذف';

  @override
  String get settingsFreeLimitUsedTitle => 'تم استخدام تأملات البداية';

  @override
  String get settingsFreeLimitUsedDescription =>
      'تم استخدام تأملات البداية لهذا الجهاز. قم بالترقية إلى الولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get settingsStarterCreditsUsedTitle => 'تم استخدام تأملات البداية';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'تم استخدام تأملات البداية لهذا الجهاز. قم بالترقية إلى الولاية أو اشترِ المزيد من التأملات للمتابعة.';

  @override
  String get deviceBoundError =>
      'هذا الجهاز مرتبط بالفعل بحساب آخر. يُرجى تسجيل الدخول بالحساب الأصلي.';

  @override
  String get premiumTitle => 'وضع الولاية';

  @override
  String get premiumSubtitleBasic => 'افتح تجربة Ayara الكاملة.';

  @override
  String get premiumSubtitlePremium =>
      'أنت على خطة الولاية. هل تحتاج إلى المزيد من التأملات؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'الخطة الحالية: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'التأملات: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'عمليات الشراء غير متاحة حالياً.';

  @override
  String get premiumSignInToPurchase =>
      'سجّل الدخول لشراء التأملات أو فتح الولاية.';

  @override
  String get premiumRestorePurchases => 'استعادة المشتريات';

  @override
  String get premiumProcessing => 'جارٍ المعالجة…';

  @override
  String get premiumRestoreHintTitle =>
      'هل سبق أن اشتريت الولاية أو التأملات على هذا الجهاز أو جهاز آخر؟';

  @override
  String get premiumRestoreHintBody => 'استعد مشترياتك إذا لم تكن ظاهرة.';

  @override
  String get premiumBuyCredits200 => 'اشترِ 200 تأمل';

  @override
  String get premiumBuyCredits400 => 'اشترِ 400 تأمل';

  @override
  String get premiumBecomePremiumOneTime => 'الترقية إلى وضع الولاية';

  @override
  String get premiumTopupHint =>
      'مع الولاية، يمكنك إضافة المزيد من التأملات متى احتجت.';

  @override
  String get premiumUpgradeCta => 'ترقية';

  @override
  String get premiumRequiredForCategory =>
      'هذه الفئة متاحة فقط لمستخدمي الولاية. قم بالترقية من الإعدادات لفتح جميع المحتويات المميزة.';

  @override
  String get premiumBenefitsBasic =>
      'افتح الولاية لتحصل على تأملات إضافية، وإمكانية الوصول إلى الفئات المميزة، والمتابعة متى احتجت إلى الإرشاد.';

  @override
  String get premiumBenefitsPremium =>
      'أنت الآن في وضع الولاية. إذا كان رصيدك منخفضاً، أضف المزيد من التأملات وتابع دون انقطاع.';

  @override
  String get premiumButtonBecomePremium => 'افتح الولاية';

  @override
  String get premiumButtonTopup1000 => 'أضف 1000 تأمل';

  @override
  String get premiumBadge => 'الولاية مفعّلة';

  @override
  String get premiumLoadingStore => 'جارٍ تحميل المتجر…';

  @override
  String get premiumProductNotAvailable =>
      'هذا المنتج غير متاح في المتجر حالياً. يُرجى المحاولة لاحقاً.';

  @override
  String get premiumPurchaseError =>
      'حدث خطأ في عملية الشراء. يُرجى المحاولة مرة أخرى.';

  @override
  String get premiumBuyCredits100 => 'أضف 100 تأمل';

  @override
  String get premiumFeatureLocked => 'افتح الولاية للوصول إلى هذه الميزة.';

  @override
  String get lockedCategoriesHint =>
      'بعض الفئات مخصصة لأعضاء الولاية. افتحها لتستكشف كل تأمل في رحلتك.';

  @override
  String get freePlanBlockedTitle => 'لقد استهلكت تأملات البداية الخاصة بك';

  @override
  String get freePlanBlockedBody =>
      'أنت على الخطة الأساسية مع تأملات البداية، وقد بلغت الحد. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى الولاية.';

  @override
  String get freePlanBlockedCtaGoPremium => 'اطّلع على خيارات الولاية أدناه';

  @override
  String get graceBlockedTitle => 'لقد استهلكت تأملات البداية الخاصة بك';

  @override
  String get graceBlockedBody =>
      'أنت على الخطة الأساسية مع تأملات البداية، وقد بلغت الحد. للمتابعة — ولفتح الفئات المميزة — قم بالترقية إلى الولاية.';

  @override
  String get graceBlockedCtaGoPremium => 'اطّلع على خيارات الولاية أدناه';

  @override
  String get rateGuestMustSignIn => 'سجّل الدخول لاستخدام Ayara وتأملاتك.';

  @override
  String get guestNoCreditsTitle => 'وضع الضيف';

  @override
  String get guestNoCreditsBody =>
      'بصفتك ضيفاً يمكنك تصفح التطبيق، لكن لا يمكنك استخدام التأملات. سجّل الدخول لاحقاً من الإعدادات لاستخدام التأملات وفتح المشتريات.';

  @override
  String get guestDialogContinue => 'متابعة';

  @override
  String get guestDialogLoginInstead => 'تسجيل الدخول بدلاً من ذلك';

  @override
  String get optionalLabel => 'اختياري';

  @override
  String get accountDeleteSuccessTitle => 'تم حذف الحساب';

  @override
  String get accountDeleteSuccessBody =>
      'تم حذف حسابك والبيانات المرتبطة به بنجاح.';

  @override
  String get accountDeleteSuccessClose => 'إغلاق';

  @override
  String get accountDeleteErrorTitle => 'تعذر حذف الحساب';

  @override
  String get accountDeleteErrorClose => 'موافق';

  @override
  String get accountDeleteReauthCancelled =>
      'تم إلغاء إعادة التحقق. يُرجى تسجيل الدخول مجدداً ثم إعادة محاولة الحذف.';

  @override
  String get accountDeleteReauthRequired =>
      'يتطلب حذف الحساب تسجيل دخول حديث. يُرجى تسجيل الخروج ثم تسجيل الدخول مجدداً وإعادة المحاولة.';

  @override
  String get settingsDeletePermanentWarning =>
      'هذا الإجراء نهائي ولا يمكن التراجع عنه. سيتم حذف جميع البيانات المرتبطة بحسابك.';

  @override
  String get dailyGraceTitle => 'إرشاد يومي';

  @override
  String get dailyGraceScriptureLabel => 'آية اليوم';

  @override
  String get dailyGraceSaintLabel => 'شخصية الأسبوع';

  @override
  String get dailyGraceReflectionLabel => 'تأمل المساء';

  @override
  String get dailyGraceCopiedToast => 'تم نسخ الآية إلى الحافظة';

  @override
  String get locationConsentLabel =>
      'اسمح لـ Ayara باستخدام موقعي لتحديد اتجاه القبلة ومواقيت الصلاة';

  @override
  String get locationConsentHint =>
      'يُستخدم فقط لهذه الميزات. لن تتم مشاركة موقعك أو تخزينه أبداً.';

  @override
  String get askPageTitle => 'اسأل Ayara';

  @override
  String get askPageDescription =>
      'اسأل عن أي شيء يتعلق بالإيمان أو الصلاة أو الحياة أو الممارسة الإسلامية، واحصل على إرشاد مستند إلى القرآن وتعاليم أهل البيت.';

  @override
  String get askPageInputHint => 'اكتب سؤالك هنا…';

  @override
  String get askPageSubmitCta => 'اسأل';

  @override
  String get askPageInputEmptyError => 'يرجى كتابة سؤال أولاً.';

  @override
  String get askResultYourQuestion => 'سؤالك';

  @override
  String get guidancePageTitle => 'القبلة';

  @override
  String get qiblaFacingMecca => 'باتجاه مكة';

  @override
  String get qiblaCompassInstruction =>
      'أدر هاتفك حتى تشير الإبرة الذهبية إلى الأعلى.\nذلك الاتجاه يشير إلى القبلة (مكة).';

  @override
  String get qiblaGpsUnavailableBody =>
      'إشارة GPS ضعيفة. انتقل إلى مكان مفتوح ثم اضغط «إعادة المحاولة».';

  @override
  String get qiblaRetry => 'إعادة المحاولة';

  @override
  String get qiblaTitle => 'اتجاه القبلة';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km كم إلى مكة';
  }

  @override
  String get qiblaLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get qiblaLocationNeededBody =>
      'اسمح بالوصول إلى الموقع ليتمكن Ayara من حساب اتجاه الكعبة في مكة من أي مكان تكون فيه.';

  @override
  String get qiblaOpenSettings => 'فتح الإعدادات';

  @override
  String get qiblaCompassLoading => 'جارٍ تحديد موقعك…';

  @override
  String get qiblaTowardMecca => 'نحو مكة';

  @override
  String get prayerTimesTitle => 'مواقيت الصلاة';

  @override
  String get prayerTimesFajr => 'الفجر';

  @override
  String get prayerTimesDhuhr => 'الظهر';

  @override
  String get prayerTimesAsr => 'العصر';

  @override
  String get prayerTimesMaghrib => 'المغرب';

  @override
  String get prayerTimesIsha => 'العشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'الموقع مطلوب';

  @override
  String get prayerTimesLocationNeededBody =>
      'اسمح بالوصول إلى الموقع ليتمكن Ayara من حساب مواقيت صلاة دقيقة لمدينتك.';

  @override
  String get prayerTimesNextLabel => 'التالي';

  @override
  String get prayerTimesDoneLabel => 'تم';

  @override
  String get monthlyPrayerTimesTitle => 'مواقيت الصلاة الشهرية';

  @override
  String get monthlyPrayerTimesViewButton => 'عرض الشهر كاملاً';

  @override
  String get monthlyPrayerTimesNextMonth => 'الشهر التالي';

  @override
  String get monthlyPrayerTimesDayHeader => 'اليوم';

  @override
  String get sharePrayerTimes => 'مشاركة مواقيت الصلاة';

  @override
  String get notificationsSectionTitle => 'الإشعارات';

  @override
  String get notificationsSectionSubtitle =>
      'تذكيرات الصلاة، وأحداث التقويم، والمزيد';

  @override
  String get dailyReflectionReminderTitle => 'تأمل يومي';

  @override
  String get dailyReflectionReminderDescription =>
      'تذكير يومي لطيف لفتح Ayara والتواصل مع إيمانك.';

  @override
  String get dailyReflectionReminderEnable => 'تفعيل التذكير اليومي';

  @override
  String get dailyReflectionReminderTimeLabel => 'وقت التذكير';

  @override
  String get prayerNotificationsTitle => 'تذكيرات الصلاة';

  @override
  String get prayerNotificationsDescription =>
      'تلقَّ تذكيراً لطيفاً قبل كل وقت صلاة ليساعدك على البقاء على صلة طوال اليوم.';

  @override
  String get prayerNotificationsEnable => 'تفعيل تذكيرات الصلاة';

  @override
  String get prayerNotificationsOpenSettings => 'فتح إعدادات الإشعارات';

  @override
  String get prayerNotificationsDenied => 'الإشعارات معطلة';

  @override
  String get prayerNotificationsDeniedHint =>
      'انتقل إلى الإعدادات واسمح بإشعارات Ayara لتتلقى تذكيرات مواقيت الصلاة.';

  @override
  String get notificationsConsentLabel => 'السماح بإشعارات مواقيت الصلاة';

  @override
  String get prayerNotifTitleFajr => '🌅 الفجر — صلاة الفجر';

  @override
  String get prayerNotifBodyFajr =>
      'الفجر هو صلاة صباحات أهل البيت. قال الإمام علي (ع): احفظ صلاة الفجر كما تحفظ أثمن أماناتك. قم، وتطهّر، وقف بين يدي الله.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ الظهر — صلاة الظهر';

  @override
  String get prayerNotifBodyDhuhr =>
      'كان أئمة أهل البيت يعظّمون كل لحظة من الذكر. توقّف قليلاً في يومك، واجمع الظهر مع العصر إن احتجت، وأعد قلبك إلى الله.';

  @override
  String get prayerNotifTitleAsr => '🌤️ العصر — صلاة العصر';

  @override
  String get prayerNotifBodyAsr =>
      'حافظ على الصلاة، فهي العهد بينك وبين الله. لقد دخل وقت العصر — فلا تدعه يمضي دون ذكر.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 المغرب — صلاة المغرب';

  @override
  String get prayerNotifBodyMaghrib =>
      'لقد غربت الشمس — وهي لحظة كان أهل البيت يجلّونها للدعاء. أدّ صلاة المغرب وارفع يديك إلى الله بالدعاء قبل أن يبدأ الليل.';

  @override
  String get prayerNotifTitleIsha => '🌙 العشاء — صلاة العشاء';

  @override
  String get prayerNotifBodyIsha =>
      'اختم يومك في معية الله. وقد شجّع الأئمة على صلاة الليل بعد العشاء — لكن أتمّ أولاً صلاة العشاء، واختتم يومك بذكره.';

  @override
  String get outOfReflectionsBannerText => 'لقد استخدمت جميع تأملاتك';

  @override
  String get outOfReflectionsBannerCta => 'احصل على المزيد';

  @override
  String get dhikrPageTitle => 'الذكر';

  @override
  String get dhikrTapToCount => 'اضغط على الدائرة للعد';

  @override
  String get dhikrResetButton => 'إعادة تعيين';

  @override
  String get dhikrComplete => 'ما شاء الله';

  @override
  String get dhikrCompleteMessage =>
      'لقد أكملت 100 مرة من ذكر الله. جعلها الله نوراً لقلبك.';

  @override
  String get disclaimerTitle => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerBody =>
      'يقدم Ayara تأملات إسلامية وتذكيرات ومحتوى روحياً لدعم رحلتك الشخصية في الإيمان، مستنداً إلى القرآن وتعاليم أهل البيت. ويُقدَّم هذا المحتوى لأغراض عامة ومعلوماتية وإلهامية فقط.\n\nAyara لا يغني عن أهل العلم المؤهلين.\nالإرشاد الوارد في هذا التطبيق ليس بديلاً عن عالم إسلامي متبحّر، أو مرجع ديني، أو معلّم مؤهل في العلوم الشرعية. ففي الإسلام الشيعي، يستند الإرشاد الديني إلى مدرسة الفقه الجعفري وتقليد اتباع المرجع الحي — وهو فقيه مؤهل تُهتدى بأحكامه في الممارسة الدينية. إذا كانت لديك أسئلة حول الأحكام الشرعية، أو مسائل الحلال والحرام، أو الواجبات الدينية الشخصية، فالرجاء طلب المشورة من مرجع مؤهل أو عالم في مجتمعك.\n\nهذا التطبيق لا يصدر أحكاماً شرعية.\nلا يقدم Ayara أحكاماً ملزمة أو فتاوى في مسائل الفقه أو الالتزامات الدينية الشخصية. ولا ينبغي اعتبار أي شيء هنا فتوى أو توجيهاً دينياً ملزماً.\n\nمركزية أهل البيت.\nفي الإسلام الشيعي، يُعد النبي محمد ﷺ وأهل بيته المطهرون — أهل البيت — المرجع الهادي للمجتمع الإسلامي بعد القرآن. والأئمة الاثنا عشر من أهل البيت هم المفسرون المعيّنون إلهياً لتعاليم الإسلام. ويعكس محتوى هذا التطبيق هذه المدرسة ويسعى إلى تكريمها بأمانة.\n\nأهمية المجتمع.\nيهدف هذا التطبيق إلى تشجيع ارتباطك بالإيمان مع احترامه العميق للدور الحيوي لمسجدك المحلي، ومركزك الإسلامي، ومجتمعك الديني. ونحن نشجعك على البقاء على صلة بالمعلمين المؤهلين من حولك والتعلّم منهم.';

  @override
  String get disclaimerClose => 'أفهم ذلك';

  @override
  String get disclaimerInfoTooltip => 'حول الإرشاد في هذا التطبيق';

  @override
  String get disclaimerSettingsSubtitle =>
      'لأغراض معلوماتية عامة فقط. اضغط لقراءة إخلاء المسؤولية الكامل.';

  @override
  String get disclaimerSectionHeader => 'إخلاء مسؤولية الإرشاد';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navReflect => 'تأمل';

  @override
  String get navDuas => 'الأدعية';

  @override
  String get navCalendar => 'التقويم';

  @override
  String get dashboardToday => 'اليوم';

  @override
  String get dashboardComingUp => 'القادم';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أيام',
      one: 'يوم',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'وصول سريع';

  @override
  String get quickActionQibla => 'القبلة';

  @override
  String get quickActionDhikr => 'الذكر';

  @override
  String get quickActionDailyGrace => 'الإرشاد';

  @override
  String get quickActionPrayerTimes => 'مواقيت الصلاة';

  @override
  String get askAyaraTitle => 'اسأل Ayara';

  @override
  String get askAyaraSubtitle =>
      'اسأل أي سؤال إسلامي واحصل على جواب متزن وعميق وموجّه.';

  @override
  String get askAyaraHint => 'مثلاً: ما أهمية شهر رمضان؟';

  @override
  String get askAyaraSubmit => 'اسأل';

  @override
  String get wisdomOfTheDayTitle => 'حكمة اليوم';

  @override
  String get calendarScreenTitle => 'التقويم الإسلامي';

  @override
  String get calendarUpcomingOccasions => 'المناسبات القادمة';

  @override
  String get calendarOccasionRemindersTitle => 'تذكيرات المناسبات';

  @override
  String get calendarOccasionRemindersHint =>
      'سيصلك التنبيه مساء اليوم السابق لكل مناسبة';

  @override
  String get calendarNotifPermissionDenied =>
      'تم رفض إذن الإشعارات. فعّله من إعدادات جهازك.';

  @override
  String get calendarNoEvents => 'لم يتم العثور على مناسبات قادمة.';

  @override
  String get calendarAddToPhone => 'أضف إلى تقويم الهاتف';

  @override
  String get calendarAddedToPhone => 'تمت الإضافة إلى التقويم';

  @override
  String get calendarCountdownToday => 'اليوم';

  @override
  String get calendarCountdownTomorrow => 'غداً';

  @override
  String calendarCountdownDays(int days) {
    return 'بعد $days أيام';
  }

  @override
  String get calendarAH => 'هـ';

  @override
  String get calendarMonthJan => 'يناير';

  @override
  String get calendarMonthFeb => 'فبراير';

  @override
  String get calendarMonthMar => 'مارس';

  @override
  String get calendarMonthApr => 'أبريل';

  @override
  String get calendarMonthMay => 'مايو';

  @override
  String get calendarMonthJun => 'يونيو';

  @override
  String get calendarMonthJul => 'يوليو';

  @override
  String get calendarMonthAug => 'أغسطس';

  @override
  String get calendarMonthSep => 'سبتمبر';

  @override
  String get calendarMonthOct => 'أكتوبر';

  @override
  String get calendarMonthNov => 'نوفمبر';

  @override
  String get calendarMonthDec => 'ديسمبر';

  @override
  String get calendarSeasonMuharramEarly => 'أيام محرّم — تذكّر كربلاء';

  @override
  String get calendarSeasonAshura => 'عاشوراء — يا حسين (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرّم — أيام الحزن والتأمل';

  @override
  String get calendarSeasonArbaeen => 'الأربعين — أربعون يوماً من الحسين';

  @override
  String get calendarSeasonRoadToArbaeen => 'الطريق إلى الأربعين';

  @override
  String get calendarSeasonMabath => 'المبعث المبارك — فجر الوحي';

  @override
  String get calendarSeasonMidShaban => 'منتصف شعبان — مولد الإمام المهدي (عج)';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارك — شهر القرآن';

  @override
  String get calendarSeasonGhadir => 'عيد الغدير مبارك!';

  @override
  String get hijriMonth1 => 'محرّم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربيع الأول';

  @override
  String get hijriMonth4 => 'ربيع الآخر';

  @override
  String get hijriMonth5 => 'جمادى الأولى';

  @override
  String get hijriMonth6 => 'جمادى الآخرة';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذو القعدة';

  @override
  String get hijriMonth12 => 'ذو الحجة';

  @override
  String get duasScreenTitle => 'الأدعية والزيارات';

  @override
  String get duasSearchHint => 'ابحث في الأدعية والزيارات…';

  @override
  String get duasFilterAll => 'الكل';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أدعية وزيارات',
      one: '$count دعاء',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'لم يتم العثور على أدعية.';

  @override
  String get duaCategoryDaily => 'يومي';

  @override
  String get duaCategoryWeekly => 'أسبوعي';

  @override
  String get duaCategoryOccasions => 'مناسبات';

  @override
  String get duaCategoryZiyarat => 'زيارات';

  @override
  String get duaCategoryTasbih => 'تسبيح';

  @override
  String get eventTypeBirth => 'مولد';

  @override
  String get eventTypeMartyrdom => 'استشهاد';

  @override
  String get eventTypeOccasion => 'مناسبة';

  @override
  String get duaCopyTooltip => 'نسخ الترجمة';

  @override
  String get duaToggleTransliteration => 'النقل الصوتي';

  @override
  String get duaToggleTranslation => 'الترجمة';

  @override
  String get duaAskAiLabel => 'اطلب من Ayara شرح هذا الدعاء';

  @override
  String get duaAskAiLockedLabel => 'اسأل Ayara (الولاية)';

  @override
  String get duaAiLockedMessage =>
      'شروحات Ayara متاحة لأعضاء الولاية. قم بالترقية من الإعدادات.';

  @override
  String duaAiComingSoon(String name) {
    return 'اسأل Ayara عن \"$name\" — قريباً!';
  }

  @override
  String get duaCopiedToast => 'تم نسخ الدعاء إلى الحافظة.';

  @override
  String get tasbihAllahuAkbarMeaning => 'الله أكبر';

  @override
  String get tasbihAlhamdulillahMeaning => 'الحمد لله';

  @override
  String get tasbihSubhanallahMeaning => 'سبحان الله';

  @override
  String get tasbihResetTooltip => 'إعادة تعيين';

  @override
  String get tasbihCompleteTitle => 'اكتمل التسبيح';

  @override
  String get tasbihCompleteMessage => 'تقبّل الله ذكرك.';

  @override
  String get tasbihTapHint => 'اضغط في أي مكان للعد';

  @override
  String get tasbihatScreenTitle => 'دليل الصلاة';

  @override
  String get tasbihatScreenSubtitle => 'تسبيحات الصلاة';

  @override
  String get tasbihatScreenDescription =>
      'دليل كامل للتسبيحات التي تُقرأ أثناء الصلوات اليومية وبعدها — وفقاً لتراث أهل البيت (ع).';

  @override
  String get tasbihatArba3Title => 'التسبيحات الأربع';

  @override
  String get tasbihatArba3Subtitle => 'تُقرأ في الركعة الثالثة والرابعة';

  @override
  String get tasbihatArba3Info =>
      'في الفقه الشيعي، تحلّ التسبيحات الأربع محل سورة الفاتحة في الركعتين الثالثة والرابعة من صلوات الظهر والعصر والمغرب والعشاء. وقراءتها مرة واحدة واجبة، وقراءتها ثلاث مرات مستحبة.';

  @override
  String get tasbihatArba3Translation =>
      'سبحان الله · الحمد لله\nلا إله إلا الله · الله أكبر';

  @override
  String get tasbihatArba3CompleteTitle => 'اكتملت التلاوة';

  @override
  String get tasbihatArba3CompleteMessage => 'تقبّل الله صلاتك — آمين';

  @override
  String get tasbihatArba3TapHint => 'اضغط بعد كل تلاوة';

  @override
  String get tasbihatZahraSubtitle => 'بعد كل صلاة · 100 حبّة';

  @override
  String get tasbihatZahraOriginLabel => 'المصدر';

  @override
  String get tasbihatZahraHadith =>
      'طلبت السيدة فاطمة الزهراء (ع) من النبي ﷺ خادماً، فقال: «أفلا أدلّك على ما هو خير لك من خادم؟ تقولين سبحان الله 33 مرة، والحمد لله 33 مرة، والله أكبر 34 مرة بعد كل صلاة، فهو خير لك من خادم.»';

  @override
  String get tasbihatZahraHadithSource => '— بحار الأنوار، ج 85';

  @override
  String get tasbihatZahraOpenCounter => 'فتح عدّاد التسبيح';

  @override
  String get tasbihatDuasTitle => 'أدعية مستحبة';

  @override
  String get tasbihatDuasSubtitle => 'بعد إتمام صلاتك';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آية الكرسي';

  @override
  String get tasbihatDuaAyatKursiWhen => 'بعد كل صلاة واجبة';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورة البقرة 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'من قرأ آية الكرسي بعد كل صلاة واجبة، لم يكن بينه وبين الجنة إلا الموت. وقال الإمام الباقر (ع) إنها من أعظم آيات القرآن.';

  @override
  String get tasbihatDuaSalawatTitle => 'صلوات';

  @override
  String get tasbihatDuaSalawatWhen => 'بعد كل صلاة · تختم جميع الأدعية';

  @override
  String get tasbihatDuaSalawatSource => 'الإمام الصادق (ع) — الكافي';

  @override
  String get tasbihatDuaSalawatNote =>
      'يُستحب إرسال الصلاة على النبي ﷺ وآله الطاهرين (آل محمد) لختم كل دعاء. وقال الإمام الصادق (ع): «كل دعاء محجوب حتى يُصلّى على محمد وآل محمد.»';

  @override
  String get tasbihatDuaFarajTitle => 'دعاء الفرج';

  @override
  String get tasbihatDuaFarajWhen => 'بعد كل صلاة · لإمام زماننا';

  @override
  String get tasbihatDuaFarajSource => 'علّمه الإمام الحسن العسكري (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دعاء لظهور الإمام المهدي (عج)، الإمام الثاني عشر، الذي علمه والده. وغالبًا ما يُتلى من قبل العديد من المسلمين الشيعة بعد الصلاة كعمل من أعمال devotion للإمام الحي.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تسبيح السيدة فاطمة';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'بعد المغرب والعشاء · مستحب على وجه الخصوص';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'الإمام الباقر (ع) — بحار الأنوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'قال الإمام الباقر (ع) إن قراءة تسبيح الزهراء بعد العشاء قبل النوم خير من ألف ركعة نافلة، ونوره يصعد إلى السماوات.';

  @override
  String get tasbihFatimaGiftPre => 'هدية من النبي';

  @override
  String get tasbihFatimaGiftPost => 'يُقرأ بعد كل صلاة';

  @override
  String get prayerTrackerTitle => 'متابعة الصلاة';

  @override
  String get prayerTrackerPrayed => 'أُديت الصلاة';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count يوم متتالٍ';
  }

  @override
  String get prayerTrackerAllComplete =>
      'اكتملت جميع صلوات اليوم. تقبّلها الله.';

  @override
  String get dhikrTrackerTitle => 'تسبيح الزهراء';

  @override
  String get dhikrTrackerCompletedToday => 'اكتمل اليوم';

  @override
  String get dhikrTrackerNotDoneToday => 'لم يتم اليوم';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count يوم متتالٍ';
  }

  @override
  String get dhikrReminderTitle => 'تذكير التسبيح';

  @override
  String get dhikrReminderDescription =>
      'تذكير يومي لطيف لقراءة تسبيح الزهراء (ع).';

  @override
  String get dhikrReminderEnable => 'تفعيل تذكير التسبيح';

  @override
  String get dhikrReminderTimeLabel => 'وقت التذكير';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حديث اليوم';

  @override
  String get hadithLabelArabic => 'العربية';

  @override
  String get hadithLabelTranslation => 'الترجمة';

  @override
  String get hadithBadge => 'حديث';

  @override
  String get hadithShare => 'مشاركة هذا الحديث';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nعبر Ayara';
  }

  @override
  String get hadithNavPrevious => 'السابق';

  @override
  String get hadithNavNext => 'التالي';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'الأئمة المعصومون الأربعة عشر';

  @override
  String get imamsScreenSubtitle =>
      'النبي، السيدة فاطمة، والأئمة الاثنا عشر — المرشدون المطهرون والمعصومون في الإسلام الشيعي الاثني عشري';

  @override
  String get imamLabelBorn => 'الميلاد';

  @override
  String get imamLabelMartyrdom => 'الاستشهاد';

  @override
  String get imamLabelStatus => 'الحالة';

  @override
  String get imamSectionBiography => 'السيرة';

  @override
  String get imamSectionFamousSaying => 'قول مشهور';

  @override
  String get imamRoleProphet => 'النبي الخاتم';

  @override
  String get imamRoleInfallible => 'المعصوم';

  @override
  String get imamOrdinal1 => 'الإمام الأول';

  @override
  String get imamOrdinal2 => 'الإمام الثاني';

  @override
  String get imamOrdinal3 => 'الإمام الثالث';

  @override
  String get imamOrdinal4 => 'الإمام الرابع';

  @override
  String get imamOrdinal5 => 'الإمام الخامس';

  @override
  String get imamOrdinal6 => 'الإمام السادس';

  @override
  String get imamOrdinal7 => 'الإمام السابع';

  @override
  String get imamOrdinal8 => 'الإمام الثامن';

  @override
  String get imamOrdinal9 => 'الإمام التاسع';

  @override
  String get imamOrdinal10 => 'الإمام العاشر';

  @override
  String get imamOrdinal11 => 'الإمام الحادي عشر';

  @override
  String get imamOrdinal12 => 'الإمام الثاني عشر';

  @override
  String get duaAudioScreenTitle => 'استمع إلى الأدعية';

  @override
  String get duaAudioScreenSubtitle =>
      'اختر دعاءً للاستماع إليه. اضغط على البطاقة للتشغيل أو الإيقاف المؤقت.';

  @override
  String get duaAudioComingSoonMessage =>
      'سيتوفر الصوت لهذا الدعاء في تحديث قادم.';

  @override
  String get duaAudioClose => 'إغلاق';

  @override
  String get duaAudioError => 'تعذر تحميل الصوت. يُرجى التحقق من اتصالك.';

  @override
  String get duaAudioMetaTransmittedBy => 'رواه';

  @override
  String get duaAudioMetaOccasion => 'المناسبة';

  @override
  String get duaAudioMetaDuration => 'المدة';

  @override
  String get quickActionDailyHadith => 'حديث اليوم';

  @override
  String get quickAction14Masumeen => 'الأئمة المعصومون الأربعة عشر';

  @override
  String get quickActionListenDuas => 'استماع';

  @override
  String get quickActionTasbihat => 'دليل الصلاة';

  @override
  String get pilgrimageSectionTitle => 'الرحلة المقدسة';

  @override
  String get pilgrimageSectionSubtitle =>
      'أدلة متكاملة للحج والعمرة — رحلة زيارة بيت الله الحرام في مكة';

  @override
  String get hajjCardTitle => 'الحج';

  @override
  String get hajjCardSubtitle => 'الركن الخامس من الإسلام';

  @override
  String get hajjCardDescription =>
      'الرحلة الإيمانية السنوية العظمى — واجبة مرة واحدة في العمر على كل مسلم مستطيع';

  @override
  String get hajjScreenTitle => 'دليل الحج';

  @override
  String get hajjScreenSubtitle => 'دليل خطوة بخطوة للحج الأكبر';

  @override
  String get umrahCardTitle => 'العمرة';

  @override
  String get umrahCardSubtitle => 'الحج الأصغر';

  @override
  String get umrahCardDescription =>
      'رحلة روحانية عظيمة الأثر يمكن أداؤها في أي وقت من السنة';

  @override
  String get umrahScreenTitle => 'دليل العمرة';

  @override
  String get umrahScreenSubtitle => 'دليل خطوة بخطوة للعمرة';

  @override
  String get pilgrimageStepsTitle => 'المناسك والخطوات';

  @override
  String get pilgrimageImportantNotesTitle => 'ملاحظات مهمة';

  @override
  String get pilgrimageDuaTitle => 'دعاء لهذه الخطوة';

  @override
  String get pilgrimageJafariNoteTitle => 'ملاحظة فقهية جعفرية';

  @override
  String get pilgrimageComplete => '✓ مكتمل';

  @override
  String get pilgrimageMarkDone => 'حدد كمنجز';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done من $total خطوات';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقيقة';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'الحجاج الشيعة';

  @override
  String get pilgrimageShiaNoteBody =>
      'يسافر العديد من الحجاج الشيعة أيضًا إلى المدينة لزيارة النبي محمد (صلى الله عليه وآله) في مسجد النبي والقبور في جنات البقيع. تحمل هذه الزيارات دلالات روحية عميقة، على الرغم من أنها ليست مناسك الحج بحد ذاتها.';

  @override
  String get hajjIntro =>
      'الحج هو الركن الخامس من أركان الإسلام، واجب مرة واحدة في العمر على كل مسلم ��ادر جسديًا وماليًا. بالنسبة لمعظم الحجاج الشيعة الاثني عشر اليوم، يعني ذلك حج التمتع، الذي يُؤدى في شهر ذي الحجة على خطى النبي إبراهيم (عليه السلام)، وابنه إسماعيل (عليه السلام)، والسيدة هاجر. يتبع هذا الدليل الخطوط العريضة الجعفرية للمناسك، بينما تبقى الزيارة في المدينة رحلة محبوبة بعمق قبل أو بعد الحج.';

  @override
  String get umrahIntro =>
      'العمرة هي الحج الأصغر إلى مكة، وعلى خلاف الحج يمكن أداؤها في أي وقت من السنة. ومع أنها ليست واجبة، فإن لها أجراً روحياً عظيماً، وتُعد عبادة مستحبة جداً. وهي تشترك مع الحج في عدد من المناسك، لكنها أقصر، وتتكوّن من أربعة أعمال رئيسية.';

  @override
  String get voiceInputTitle => 'إدخال صوتي';

  @override
  String get voiceInputMicTitle => 'ميكروفون';

  @override
  String get voiceInputMicSubtitle =>
      'تحدث بإدخالك إلى Ask Ayara بدلاً من الكتابة.';

  @override
  String get voiceInputMicDenied => 'تم رفض الوصول إلى الميكروفون.';

  @override
  String get voiceInputSpeak => 'تحدث بدلاً من ذلك';

  @override
  String get voiceInputListening => 'استماع…';

  @override
  String get voiceInputPermissionDenied =>
      'يتطلب إدخال الصوت الوصول إلى الميكروفون.';
}
