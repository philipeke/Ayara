// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get appTitle => 'ئایارا';

  @override
  String get languageSelectTitle => 'زمانەکەت هەڵبژێرە';

  @override
  String get languageSelectSub => 'دواتر دەتوانیت لە ڕێکخستنەکاندا بیگۆڕیت';

  @override
  String get actionContinue => 'بەردەوام بە';

  @override
  String get languageSuggestedHeader => 'پێشنیارکراو';

  @override
  String get languageAllHeader => 'هەموو زمانەکان';

  @override
  String get languageSuggestedBadge => 'پێشنیارکراو';

  @override
  String get languageSearchHint => 'بگەڕێ…';

  @override
  String get planBasic => 'ستاندارد';

  @override
  String get planPremium => 'ویلایە';

  @override
  String get categorySlot01 => 'ڕێنمایی ڕۆژانە';

  @override
  String get categorySlot02 => 'ئیمان و باوەڕ';

  @override
  String get categorySlot03 => 'ئەندێشەی نوێژ';

  @override
  String get categorySlot04 => 'سەبر و هیوا';

  @override
  String get categorySlot05 => 'داواکاری خۆشبەختی';

  @override
  String get categorySlot06 => 'ڕەحمەت و میهرەبانی';

  @override
  String get categorySlot07 => 'بەهێزی ئیمان';

  @override
  String get categorySlot08 => 'دڵی سپاسگوزار';

  @override
  String get categorySlot09 => 'مەبەستی ژیان';

  @override
  String get categorySlot10 => 'پەیوەندی خێزان';

  @override
  String get categorySlot11 => 'ئارامی ناوەوە';

  @override
  String get categorySlot12 => 'شارەزایی پێغەمبەر';

  @override
  String get categorySlot13 => 'خوی باش';

  @override
  String get categorySlot14 => 'بەرگری لە حەوەسەکان';

  @override
  String get categorySlot15 => 'زیکری ئێوارانە';

  @override
  String get categoryCustom => 'ئەندێشەی کەسی';

  @override
  String get dhikrMeaningSubhanallah => 'پاکی بۆ خودا';

  @override
  String get dhikrMeaningAlhamdulillah => 'هەموو سوپاس بۆ خودا';

  @override
  String get dhikrMeaningAllahuAkbar => 'خودا گەورەترینە';

  @override
  String get quranVerseHeartAtRest =>
      'ئاگاداربە، بە یادی خودا دڵەکان ئارام دەگرن.';

  @override
  String get promptHint => 'کتەیەک بکە بۆ ڕێنمایی ئیسلامی و ئەندێشە';

  @override
  String get currentLanguage => 'زمانی ئێستا';

  @override
  String get settingsLanguage => 'ڕێکخستنی زمان';

  @override
  String get settingsTitle => 'ڕێکخستنەکان';

  @override
  String get chooseLanguage => 'زمانەکەت هەڵبژێرە';

  @override
  String get continueCta => 'بەردەوام بە';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count وشە',
      one: '$count وشە',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'هەڵبژاردنەکان';

  @override
  String get newCta => 'نوێ';

  @override
  String get actionsTitle => 'چیت دەوێت بکەیت؟';

  @override
  String get copy => 'کۆپی بکە';

  @override
  String get share => 'هاوبەشی بکە';

  @override
  String get close => 'داخە';

  @override
  String get copiedToast => 'لە کلیپبۆردەوە کۆپی کرا';

  @override
  String shareSubject(String category) {
    return 'ئایارا — $category';
  }

  @override
  String get regenerateErrorTitle => 'نەتوانرا وەڵامێکی نوێ دروست بکرێت';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nدەتەوێت دووبارە هەوڵ بدەیت؟';
  }

  @override
  String get cancelCta => 'هەڵوەشاندنەوە';

  @override
  String get retryCta => 'دووبارە هەوڵ بدەرەوە';

  @override
  String get authTitle => 'ئەکاونتەکەت دروست بکە';

  @override
  String get continueAsGuest => 'وەک میوان بەردەوام بە';

  @override
  String get signInGoogle => 'بە Google بچۆ ژوورەوە';

  @override
  String get signInApple => 'بە Apple بچۆ ژوورەوە';

  @override
  String get signInEmail => 'بە ئیمەیڵ بچۆ ژوورەوە';

  @override
  String get upgradeWithApple => 'بە Apple بەردەوام بە';

  @override
  String get mustAccept =>
      'دەبێت مەرجەکان قبوڵ بکەیت و ئاگاداری سیاسەتی تایبەتمەندی بیت.';

  @override
  String get termsLabel => 'مەرجەکانی خزمەتگوزاری قبوڵ دەکەم';

  @override
  String get privacyLabel => 'سیاسەتی تایبەتمەندی خوێندمەوە';

  @override
  String get marketingOptIn => 'ڕازیم کە هەواڵ و ئۆفەر وەربگرم';

  @override
  String get openTerms => 'مەرجەکانی خزمەتگوزاری';

  @override
  String get openPrivacy => 'سیاسەتی تایبەتمەندی';

  @override
  String get accountSection => 'ئەکاونت';

  @override
  String get guestMode => 'دۆخی میوان';

  @override
  String get signedIn => 'چووتە ژوورەوە';

  @override
  String get upgradeHint =>
      'ئەندێشەکانت لەسەر ئامێرەکان پاشەکەوت بکە بە دروستکردنی ئەکاونت.';

  @override
  String get upgradeWithGoogle => 'بە Google بەردەوام بە';

  @override
  String get signOut => 'دەرچوون';

  @override
  String get snackUpgraded => 'ئەکاونت بە Google بەرزکرایەوە ✅';

  @override
  String get snackSignedIn => 'بە Google چووتە ژوورەوە ✅';

  @override
  String get snackSignedOut => 'دەرچووت';

  @override
  String get snackSignedInApple => 'بە Apple چووتە ژوورەوە ✅';

  @override
  String get snackSignedInGoogle => 'بە Google چووتە ژوورەوە ✅';

  @override
  String get snackUpgradedApple => 'ئەکاونت بە Apple بەرزکرایەوە ✅';

  @override
  String get snackUpgradedGoogle => 'ئەکاونت بە Google بەرزکرایەوە ✅';

  @override
  String get historyTitle => 'ئەندێشەی پێشوو';

  @override
  String get historyOpenCta => 'ئەندێشەی پێشوو';

  @override
  String get historyEmpty => 'هێشتا هیچ ئەندێشەیەکی پاشەکەوتکراو نییە.';

  @override
  String get historyDeleteTitle => 'ئەندێشە بسڕیتەوە؟';

  @override
  String get historyDeleteBody =>
      'ئەمە بەردەوام بەندەکەی هەڵبژێردراو دەسڕێتەوە.';

  @override
  String get deleteCta => 'بسڕەوە';

  @override
  String get historyButton => 'ئەندێشەی پێشوو';

  @override
  String get historyEmptyTitle => 'هێشتا هیچ ئەندێشەیەک نییە';

  @override
  String get historyEmptyBody =>
      'یەکێک دروست بکە — بەندە پاشەکەوتکراوەکانت ئێرەدا دەردەکەون.';

  @override
  String get historyDelete => 'بسڕەوە';

  @override
  String get footerTitle => 'بە ویلایە، ئیمان و سەبر';

  @override
  String get footerSubtitle => 'نوێژێک لە کاتێکدا';

  @override
  String get genericErrorSnack =>
      'شتێکی هەڵە ڕوویدا — تکایە لە کاتێکی دیکەدا هەوڵ بدەرەوە.';

  @override
  String get upgradeAccountCta =>
      'ئەندێشەکانت لەسەر ئامێرەکان پاشەکەوت بکە – ئەکاونتێک دروست بکە';

  @override
  String get deleteAccount => 'ئەکاونت بسڕەوە';

  @override
  String get exportData => 'داتاکانم هەناردە بکە';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ئارامتر بە 🐯\nئایارا کەمێک کات پێویستە پێش ئەوەی…';

  @override
  String get rateDailyLimit =>
      'ئەندێشەکانت تەواو بوون بۆ ئێستا.\nئەندێشەی زیاتر وەرگرە یان بچۆ ویلایە.';

  @override
  String get rateCreditsExhausted =>
      'هەموو ئەندێشەکانت بەکارهێنا.\nکرێدیت زیاد بکە یان ویلایە بکە بۆ بەردەوام بوون.';

  @override
  String get rateGraceCreditsExhausted =>
      'ئەندێشەکانت تەواو بوون بۆ ئێستا.\nئەندێشەی زیاتر وەرگرە یان بچۆ ویلایە.';

  @override
  String get premiumDescription =>
      'ویلایە تایبەتمەندی پرێمیوم، کتێگۆریەکانی داهاتوو، و نیشانەیەکی تایبەتی کردەوەی دەکات.';

  @override
  String ratePlanExhausted(String plan) {
    return 'ئەندێشەکانت ئێستا بەتاڵن. پلان: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'نەتوانرا ئەندێشەکانت بپشکنرێن: $message';
  }

  @override
  String get rateCheckGenericError =>
      'شتێکی هەڵە ڕوویدا لەکاتی پشکنینی ئەندێشەکانت.';

  @override
  String get aiFallbackGeneric =>
      'شتێکی هەڵە ڕوویدا — تکایە لە کاتێکی دیکەدا هەوڵ بدەرەوە.';

  @override
  String get limitSectionTitle => 'ئەندێشەکان';

  @override
  String get limitTodayLabel => 'بەکارهێنان';

  @override
  String limitCreditsLabel(Object credits) {
    return 'ئەندێشەی ماوە: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'پلان: $plan';
  }

  @override
  String get limitLoadingLabel => 'بارکردن…';

  @override
  String get limitLoadingLabelDescription =>
      'لە کارتی ئەندێشەکان دەردەکەوێت لەکاتی هێنانی ئامارەکان.';

  @override
  String get aiLimitTitle => 'ئەندێشەکان';

  @override
  String get aiLimitSubtitle =>
      'هەر وەڵامێک ١ ئەندێشە بەکاردەهێنێت. ستاندارد ئەندێشەی دەستپێکردن تێدایە. ویلایە کتێگۆری پرێمیوم کردەوەی دەکات و تۆپ-ئەپ ڕێدەدات.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ئەندێشە بەکارهێنراو';
  }

  @override
  String get creditsSectionTitle => 'ئەندێشەکان';

  @override
  String get creditsUsageLabel => 'بەکارهێنان';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'ئەندێشەی ماوە: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'پلان: $plan';
  }

  @override
  String get creditsLoadingLabel => 'بارکردن…';

  @override
  String get creditsLoadingLabelDescription =>
      'دەردەکەوێت لەکاتی هێنانی ئامارەکانی ئەندێشە.';

  @override
  String get creditsTitle => 'ئەندێشەکان';

  @override
  String get creditsSubtitle =>
      'هەر وەڵامێک ١ ئەندێشە بەکاردەهێنێت. ستاندارد ئەندێشەی دەستپێکردن تێدایە. ویلایە کتێگۆری پرێمیوم کردەوەی دەکات و تۆپ-ئەپ ڕێدەدات.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ئەندێشە بەکارهێنراو';
  }

  @override
  String get settingsDeleteTitle => 'ئەکاونت بسڕەوە';

  @override
  String get settingsDeleteDescription =>
      'ئەکاونتەکەت و هەموو داتای پەیوەندیدارەکەی بەردەوام بسڕەوە.';

  @override
  String get settingsDeleteButtonLabel => 'ئەکاونتەکەم بسڕەوە';

  @override
  String get settingsDeleteDialogTitle => 'ئەکاونت بسڕێتەوە؟';

  @override
  String get settingsDeleteDialogBody =>
      'ئەم کارە بەردەوامە و ناتوانرێت بیگەڕێنیتەوە.\n\nهەموو چاتەکانت، مێژوو و زانیاری ئەکاونتەکەت دەسڕێتەوە.';

  @override
  String get settingsDeleteDialogCancel => 'هەڵوەشاندنەوە';

  @override
  String get settingsDeleteDialogConfirm => 'بسڕەوە';

  @override
  String get settingsFreeLimitUsedTitle => 'ئەندێشەی دەستپێکردن بەکارهێنرا';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ئەندێشەی دەستپێکردنی ئەم ئامێرە بەکارهێنراوە. ویلایە بکە یان ئەندێشەی زیاتر بکڕە بۆ بەردەوام بوون.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'ئەندێشەی دەستپێکردن بەکارهێنرا';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ئەندێشەی دەستپێکردنی ئەم ئامێرە بەکارهێنراوە. ویلایە بکە یان ئەندێشەی زیاتر بکڕە بۆ بەردەوام بوون.';

  @override
  String get deviceBoundError =>
      'ئەم ئامێرە پێشتر بە ئەکاونتێکی تر بەستراوەتەوە. تکایە بە ئەکاونتی سەرەکی بچۆ ژوورەوە.';

  @override
  String get premiumTitle => 'دۆخی ویلایە';

  @override
  String get premiumSubtitleBasic => 'تەجربەی تەواوی ئایارا کردەوەی بکە.';

  @override
  String get premiumSubtitlePremium =>
      'تۆ لە ویلایەدایت. ئەندێشەی زیاتر پێویستە؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'پلانی ئێستا: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'ئەندێشەکان: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'کڕینەکان ئێستا بەردەست نین.';

  @override
  String get premiumSignInToPurchase =>
      'بچۆ ژوورەوە بۆ کڕینی ئەندێشە یان کردەوەی ویلایە.';

  @override
  String get premiumRestorePurchases => 'کڕینەکان بگەڕێنەوە';

  @override
  String get premiumProcessing => 'پرۆسەکردن…';

  @override
  String get premiumRestoreHintTitle =>
      'پێشتر ویلایە یان ئەندێشە کڕیوتە لەم ئامێرە یان ئامێرێکی دیکە؟';

  @override
  String get premiumRestoreHintBody =>
      'کڕینەکانت بگەڕێنەوە ئەگەر دەردەکەون نەبن.';

  @override
  String get premiumBuyCredits200 => '٢٠٠ ئەندێشە بکڕە';

  @override
  String get premiumBuyCredits400 => '٤٠٠ ئەندێشە بکڕە';

  @override
  String get premiumBecomePremiumOneTime => 'بچۆ دۆخی ویلایە';

  @override
  String get premiumTopupHint =>
      'بە ویلایە، دەتوانیت هەر کاتێک پێویستت بوو ئەندێشەی زیاتر زیاد بکەیت.';

  @override
  String get premiumUpgradeCta => 'بەرز بکەرەوە';

  @override
  String get premiumRequiredForCategory =>
      'ئەم کتێگۆریە تەنها بۆ بەکارهێنەرانی ویلایە بەردەستە. لە ڕێکخستنەکاندا بەرز بکەرەوە بۆ کردەوەی هەموو ناوەڕۆکی پرێمیوم.';

  @override
  String get premiumBenefitsBasic =>
      'ویلایە کردەوەی بکە بۆ وەرگرتنی ئەندێشەی زیاتر، دەستگەیشتن بە کتێگۆری پرێمیوم، و بەردەوام بوون هەر کاتێک ڕێنمایی پێویستت بوو.';

  @override
  String get premiumBenefitsPremium =>
      'تۆ لە دۆخی ویلایەدایت. ئەگەر کەم دەبیت، ئەندێشەی زیاتر زیاد بکە و بێ هەڵوەشانەوە بەردەوام بە.';

  @override
  String get premiumButtonBecomePremium => 'ویلایە کردەوەی بکە';

  @override
  String get premiumButtonTopup1000 => '١٠٠٠ ئەندێشە زیاد بکە';

  @override
  String get premiumBadge => 'ویلایە چالاکە';

  @override
  String get premiumLoadingStore => 'فرۆشگا بارکردن…';

  @override
  String get premiumProductNotAvailable =>
      'ئەم بەرهەمە هێشتا لە فرۆشگادا بەردەست نییە. تکایە دواتر هەوڵ بدەرەوە.';

  @override
  String get premiumPurchaseError =>
      'شتێکی هەڵە لە کڕینەکەدا ڕوویدا. تکایە دووبارە هەوڵ بدەرەوە.';

  @override
  String get premiumBuyCredits100 => '١٠٠ ئەندێشە زیاد بکە';

  @override
  String get premiumFeatureLocked =>
      'ویلایە کردەوەی بکە بۆ دەستگەیشتن بە ئەم تایبەتمەندیە.';

  @override
  String get lockedCategoriesHint =>
      'هەندێک کتێگۆری بۆ ئەندامانی ویلایە پارێزراون. کردەوەیان بکە بۆ گەشتکردن لە هەموو ئەندێشەکان لە ڕێگەکەتدا.';

  @override
  String get freePlanBlockedTitle => 'ئەندێشەی دەستپێکردنەکانت تەواو بوون';

  @override
  String get freePlanBlockedBody =>
      'تۆ لە پلانی ستاندارد بە ئەندێشەی دەستپێکردندایت، و گەیشتیتە سنووره. بۆ بەردەوام بوون — و کردەوەی کتێگۆری پرێمیوم — ویلایە بکە.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'هەڵبژاردنەکانی ویلایە لە خوارەوە ببینە';

  @override
  String get graceBlockedTitle => 'ئەندێشەی دەستپێکردنەکانت تەواو بوون';

  @override
  String get graceBlockedBody =>
      'تۆ لە پلانی ستاندارد بە ئەندێشەی دەستپێکردندایت، و گەیشتیتە سنووره. بۆ بەردەوام بوون — و کردەوەی کتێگۆری پرێمیوم — ویلایە بکە.';

  @override
  String get graceBlockedCtaGoPremium =>
      'هەڵبژاردنەکانی ویلایە لە خوارەوە ببینە';

  @override
  String get rateGuestMustSignIn =>
      'بچۆ ژوورەوە بۆ بەکارهێنانی ئایارا و ئەندێشەکانت.';

  @override
  String get guestNoCreditsTitle => 'دۆخی میوان';

  @override
  String get guestNoCreditsBody =>
      'وەک میوان دەتوانیت ئەپەکە بگەڕێیت، بەڵام ناتوانیت ئەندێشەکان بەکاربهێنیت. دواتر لە ڕێکخستنەکاندا چوونەژوورەوە بکە بۆ بەکارهێنانی ئەندێشەکان و کردەوەی کڕینەکان.';

  @override
  String get guestDialogContinue => 'بەردەوام بە';

  @override
  String get guestDialogLoginInstead => 'لەوەی چوونەژوورەوە بکە';

  @override
  String get optionalLabel => 'ئارەزووکارانە';

  @override
  String get accountDeleteSuccessTitle => 'ئەکاونت سڕایەوە';

  @override
  String get accountDeleteSuccessBody =>
      'ئەکاونت و داتای پەیوەندیدارەکەی بە سەرکەوتوویی سڕاوەتەوە.';

  @override
  String get accountDeleteSuccessClose => 'داخە';

  @override
  String get accountDeleteErrorTitle => 'نەتوانرا ئەکاونت بسڕێتەوە';

  @override
  String get accountDeleteErrorClose => 'باشە';

  @override
  String get accountDeleteReauthCancelled =>
      'دووبارە تاییدکردنەوە هەڵوەشاندرایەوە. تکایە دووبارە بچۆ ژوورەوە و هەوڵ بدەرەوە.';

  @override
  String get accountDeleteReauthRequired =>
      'سڕینەوەی ئەکاونت چوونەژوورەوەی تازه پێویستدەکات. تکایە دەربچە، دووبارە بچۆ ژوورەوە، و هەوڵ بدەرەوە.';

  @override
  String get settingsDeletePermanentWarning =>
      'ئەم کارە بەردەوامە و ناتوانرێت بیگەڕێنیتەوە. هەموو داتای پەیوەندیدار بە ئەکاونتەکەت دەسڕێتەوە.';

  @override
  String get dailyGraceTitle => 'ڕێنمایی ڕۆژانە';

  @override
  String get dailyGraceScriptureLabel => 'ئایەتی ڕۆژ';

  @override
  String get dailyGraceSaintLabel => 'زانای هەفتە';

  @override
  String get dailyGraceReflectionLabel => 'ئەندێشەی ئێوارانە';

  @override
  String get dailyGraceCopiedToast => 'ئایەت لە کلیپبۆردەوە کۆپی کرا';

  @override
  String get locationConsentLabel =>
      'ڕێگە بدە بە ئایارا کە شوێنەکەم بەکاربهێنێت بۆ ئاراستەی قیبلە و کاتەکانی نوێژ';

  @override
  String get locationConsentHint =>
      'تەنها بۆ ئەم تایبەتمەندیانە بەکاردێت. شوێنەکەت هەرگیز هاوبەش نادرێت یان پاشەکەوت ناکرێت.';

  @override
  String get askPageTitle => 'لە ئایارا بپرسە';

  @override
  String get askPageDescription =>
      'هەر شتێک دەربارەی ئیمان، نوێژ، ژیان، یان کارەکانی ئیسلامی بپرسە و ڕێنمایی بگرە کە ڕەگەکەی لە قورئان و وانەکانی ئەهلی بەیتدایە.';

  @override
  String get askPageInputHint => 'پرسیارەکەت ئێرەدا بنووسە…';

  @override
  String get askPageSubmitCta => 'بپرسە';

  @override
  String get askPageInputEmptyError => 'تکایە یەکەم پرسیارێک بنووسە.';

  @override
  String get askResultYourQuestion => 'پرسیارەکەت';

  @override
  String get guidancePageTitle => 'قیبلە';

  @override
  String get qiblaFacingMecca => 'ڕووبەرۆی مەکە';

  @override
  String get qiblaCompassInstruction =>
      'مۆبایلەکەت بزیوێنە تاوەکو دەزانەی زێڕینەکە بە سەرەوە ئاراستە بکات.\nئەو ئاراستەیە قیبلەی (مەکەی) پیشان دەدات.';

  @override
  String get qiblaGpsUnavailableBody =>
      'هەڵکردنی GPS لاوازە. دەرەوە برۆ و کتەی دووبارەکردنەوە بکە.';

  @override
  String get qiblaRetry => 'دووبارە هەوڵ بدەرەوە';

  @override
  String get qiblaTitle => 'ئاراستەی قیبلە';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km کم بۆ مەکە';
  }

  @override
  String get qiblaLocationNeededTitle => 'شوێن پێویستە';

  @override
  String get qiblaLocationNeededBody =>
      'ڕێگە بدە بە دەستگەیشتن بە شوێن تاکو ئایارا بتوانێت ئاراستەی کەعبە لە مەکەی پیرۆزدا لە هەرشوێنێک بیژمێرێت.';

  @override
  String get qiblaOpenSettings => 'ڕێکخستنەکان بکەرەوە';

  @override
  String get qiblaCompassLoading => 'شوێنەکەت دەدۆزرێتەوە…';

  @override
  String get qiblaTowardMecca => 'بەرەو مەکە';

  @override
  String get prayerTimesTitle => 'کاتەکانی نوێژ';

  @override
  String get prayerTimesFajr => 'فەجر';

  @override
  String get prayerTimesDhuhr => 'نیوەڕۆ';

  @override
  String get prayerTimesAsr => 'عەسر';

  @override
  String get prayerTimesMaghrib => 'ئێوارە';

  @override
  String get prayerTimesIsha => 'عیشا';

  @override
  String get prayerTimesLocationNeededTitle => 'شوێن پێویستە';

  @override
  String get prayerTimesLocationNeededBody =>
      'ڕێگە بدە بە دەستگەیشتن بە شوێن تاکو ئایارا بتوانێت کاتەکانی نوێژی دروست بۆ شارەکەت بیژمێرێت.';

  @override
  String get prayerTimesNextLabel => 'داهاتوو';

  @override
  String get prayerTimesDoneLabel => 'تەواوبوو';

  @override
  String get monthlyPrayerTimesTitle => 'کاتەکانی نوێژی مانگانە';

  @override
  String get monthlyPrayerTimesViewButton => 'مانگی تەواو ببینە';

  @override
  String get monthlyPrayerTimesNextMonth => 'مانگی داهاتوو';

  @override
  String get monthlyPrayerTimesDayHeader => 'ڕۆژ';

  @override
  String get sharePrayerTimes => 'کاتەکانی نوێژ هاوبەش بکە';

  @override
  String get notificationsSectionTitle => 'ئاگادارکردنەوەکان';

  @override
  String get notificationsSectionSubtitle =>
      'یادەوەری نوێژ، ڕووداوەکانی سالنامە و زیاتر';

  @override
  String get dailyReflectionReminderTitle => 'ئەندێشەی ڕۆژانە';

  @override
  String get dailyReflectionReminderDescription =>
      'یادەوەریەکی ئارامی ڕۆژانە بۆ کردنەوەی ئایارا و پەیوەندیکردن بە ئیمانەکەت.';

  @override
  String get dailyReflectionReminderEnable => 'یادەوەری ڕۆژانە چالاک بکە';

  @override
  String get dailyReflectionReminderTimeLabel => 'کاتی یادەوەری';

  @override
  String get prayerNotificationsTitle => 'یادەوەریەکانی نوێژ';

  @override
  String get prayerNotificationsDescription =>
      'یادەوەریەکی ئارام وەربگرە پێش هەر کاتی نوێژ بۆ ئەوەی لەسەرتاسەری ڕۆژ پەیوەندیدار بمێنیت.';

  @override
  String get prayerNotificationsEnable => 'یادەوەریەکانی نوێژ چالاک بکە';

  @override
  String get prayerNotificationsOpenSettings =>
      'ڕێکخستنەکانی ئاگادارکردنەوە بکەرەوە';

  @override
  String get prayerNotificationsDenied => 'ئاگادارکردنەوەکان ناچالاکن';

  @override
  String get prayerNotificationsDeniedHint =>
      'بچۆ ڕێکخستنەکان و ئاگادارکردنەوەکانی ئایارا ڕێگە بدە بۆ وەرگرتنی یادەوەریەکانی نوێژ.';

  @override
  String get notificationsConsentLabel =>
      'ئاگادارکردنەوە بۆ کاتەکانی نوێژ ڕێگە بدە';

  @override
  String get prayerNotifTitleFajr => '🌅 فەجر — نوێژی بەیانی';

  @override
  String get prayerNotifBodyFajr =>
      'فەجر نوێژی بەیانیەکانی ئەهلی بەیتە. ئیمام عەلی (ع) فەرموو: نوێژی بەیانی بپارێزە وەک باشترین پارێزگاری خۆت. هەستە، پاک بکەرەوە خۆت، و لە بەردەم خودادا بوەستە.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ نیوەڕۆ — نوێژی نیوەڕۆ';

  @override
  String get prayerNotifBodyDhuhr =>
      'ئیمامەکانی ئەهلی بەیت هەر کاتێکی یادەوەرییان بەها دەدا. ڕۆژەکەت ئارام بکە، نوێژی نیوەڕۆ و عەسر لەگەڵ یەکتر بکە ئەگەر پێویستە، و دڵەکەت بگەڕێنەوە بۆ خودا.';

  @override
  String get prayerNotifTitleAsr => '🌤️ عەسر — نوێژی دوای نیوەڕۆ';

  @override
  String get prayerNotifBodyAsr =>
      'نوێژەکە بپارێزە، چونکە ئەمە پەیمانی نێوانت و خوداستە. کاتی عەسر هاتووە — بەبێ یادەوەری نەیبەی.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 ئێوارە — نوێژی ئێوارانە';

  @override
  String get prayerNotifBodyMaghrib =>
      'خۆر ئاوا بووە — کاتێک کە ئەهلی بەیت بۆی پیرۆز دەگرتن بۆ دوعا. نوێژی ئێوارە بدە و دەستەکانت بکەرەوە بۆ خودا لە دوعادا پێش ئەوەی شەو دەست پێبکات.';

  @override
  String get prayerNotifTitleIsha => '🌙 عیشا — نوێژی شەو';

  @override
  String get prayerNotifBodyIsha =>
      'ڕۆژەکەت لە هاوڕێتی خودادا کۆتایی پێبهێنە. ئیمامەکان نوێژی شەو دوای عیشا پەسەند دەکرد — بەڵام یەکەم، عیشاکەت تەواو بکە و ڕۆژ بە یادەوەری ئەو کۆتایی پێبهێنە.';

  @override
  String get outOfReflectionsBannerText => 'هەموو ئەندێشەکانت بەکارهێنراون';

  @override
  String get outOfReflectionsBannerCta => 'زیاتر وەربگرە';

  @override
  String get dhikrPageTitle => 'زیکر';

  @override
  String get dhikrTapToCount => 'دایرەکە بکە بۆ ژمارەکردن';

  @override
  String get dhikrResetButton => 'ڕیسێت بکەرەوە';

  @override
  String get dhikrComplete => 'ماشاءاللە';

  @override
  String get dhikrCompleteMessage =>
      '١٠٠ یادەوەری خودات تەواو کرد. با نووری دڵت بن.';

  @override
  String get disclaimerTitle => 'دەربارەی ڕێنماییەکانی ئەم ئەپە';

  @override
  String get disclaimerBody =>
      'ئایارا ئەندێشە، یادەوەری، و ناوەڕۆکی ڕووحانی ئیسلامی دابین دەکات بۆ پشتگیری لە ڕێگای کەسی ئیمانەکەت، کە ڕەگەکەی لە قورئان و وانەکانی ئەهلی بەیتدایە. ئەم ناوەڕۆقە تەنها بۆ مەبەستی زانیاری گشتی و ئیلهامبەخشی پێشکەش کراوە.\n\nئایارا جێگرەوەی زانایانی شایستە نییە.\nڕێنماییەکانی ئەم ئەپە جێگرەوەی زانایی ئیسلامی فێرکراو، مەرجەع، یان مامۆستایەکی تیئۆلۆجییەکی پیشەسازشوو نییە. لە ئیسلامی شیعەدا، ڕێنماییی دینی ڕەگەکەی لە قانوونی جەعفەری (فیقه) و نەریتی پیرۆکردنی مەرجەعی زیندووە — فەقیهێکی شایستە کە بڕیارەکانی بەکارهێنەرانی دینی لە کارەکانی دینیدا ڕێنمایی دەکات. ئەگەر پرسیاری لە دەربارەی بڕیارەکانی دینی، حەڵاڵ و حەرام، یان پابەندبوونی دینی کەسیت هەیە، تکایە ڕای مەرجەعێک یان زانایەکی کۆمەڵگەکەت بخوازە.\n\nئەم ئەپە بڕیاری دینی نادات.\nئایارا بڕیارگیری دەسەڵاتدارانە لە بابەتەکانی فیقه یان پابەندبوونی دینی کەسی ناکات. هیچی ئێرە نابێت وەک فەتوا یان ڕێنماییی دینی پابەند مامەڵەی پێ بکرێت.\n\nناوەندییەتی ئەهلی بەیت.\nلە ئیسلامی شیعەدا، پێغەمبەر محەممەد ﷺ و خێزانی پاکیزەیەکەی — ئەهلی بەیت — ڕێنماییەکانی دەسەڵاتداری کۆمەڵگەی ئیسلامین دوای قورئان. دوازدە ئیمامی ئەهلی بەیت وانەکانی ئیسلامیی دینی ڕابەرەکانی دیاریکراوی خودایین. ناوەڕۆکی ئەم ئەپە ئەم نەریتە پیشان دەدات و دەکۆشێت بە سادەقانەیی ڕێزی بگرێ.\n\nکۆمەڵگە گرینگە.\nئەم ئەپە ئامانجی هەڵبەستنی پەیوەندیت بە ئیمان دەکات لەکاتیدا رێزی قوڵی ڕۆڵی گرینگی مزگەوتەکەی ناوخۆیی، ناوەندی ئیسلامی، و کۆمەڵگەی دینیت دەگرێت. هاندەدرێیت پەیوەندیدار بمێنیت و لە مامۆستایانی شایستەی نزیکت فێربیت.';

  @override
  String get disclaimerClose => 'تێدەگەم';

  @override
  String get disclaimerInfoTooltip => 'دەربارەی ڕێنماییەکانی ئەم ئەپە';

  @override
  String get disclaimerSettingsSubtitle =>
      'تەنها بۆ مەبەستی زانیاری گشتی. بکە بۆ خوێندنەوەی ئەمیانی تەواو.';

  @override
  String get disclaimerSectionHeader => 'ئەمیانی ڕێنمایی';

  @override
  String get navHome => 'ماڵەوە';

  @override
  String get navReflect => 'ئەندێشە';

  @override
  String get navDuas => 'دوعاکان';

  @override
  String get navCalendar => 'سالنامە';

  @override
  String get dashboardToday => 'ئەمڕۆ';

  @override
  String get dashboardComingUp => 'داهاتوو';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ڕۆژ',
      one: 'ڕۆژ',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'دەستگەیشتنی خێرا';

  @override
  String get quickActionQibla => 'قیبلە';

  @override
  String get quickActionDhikr => 'زیکر';

  @override
  String get quickActionDailyGrace => 'ڕێنمایی';

  @override
  String get quickActionPrayerTimes => 'کاتەکانی نوێژ';

  @override
  String get askAyaraTitle => 'لە ئایارا بپرسە';

  @override
  String get askAyaraSubtitle =>
      'هەر پرسیارێکی ئیسلامی بپرسە و وەڵامێکی بیرکراوە و ڕێنماییکراو وەربگرە.';

  @override
  String get askAyaraHint => 'بۆ نموونە: گرینگیی مانگی ڕەمەزان چییە؟';

  @override
  String get askAyaraSubmit => 'بپرسە';

  @override
  String get wisdomOfTheDayTitle => 'شارەزایی ڕۆژ';

  @override
  String get calendarScreenTitle => 'سالنامەی ئیسلامی';

  @override
  String get calendarUpcomingOccasions => 'ئۆکازیۆنەکانی داهاتوو';

  @override
  String get calendarOccasionRemindersTitle => 'یادەوەریەکانی ئۆکازیۆن';

  @override
  String get calendarOccasionRemindersHint =>
      'ئێوارەی پێش هەر ئۆکازیۆنێک ئاگادار دەکرێیتەوە';

  @override
  String get calendarNotifPermissionDenied =>
      'مۆڵەتی ئاگادارکردنەوە ڕەتکراوەتەوە. لە ڕێکخستنەکانی ئامێرەکەتدا کردەوەی بکە.';

  @override
  String get calendarNoEvents => 'هیچ ڕووداوێکی داهاتوو نەدۆزرایەوە.';

  @override
  String get calendarAddToPhone => 'Zêde bike bo Kalendarê Telefona';

  @override
  String get calendarAddedToPhone => 'Zêde kirin di Kalendarê de';

  @override
  String get calendarCountdownToday => 'ئەمڕۆ';

  @override
  String get calendarCountdownTomorrow => 'سبەینێ';

  @override
  String calendarCountdownDays(int days) {
    return 'لە $days ڕۆژدا';
  }

  @override
  String get calendarAH => 'هـ';

  @override
  String get calendarMonthJan => 'کانوونی دووەم';

  @override
  String get calendarMonthFeb => 'شوبات';

  @override
  String get calendarMonthMar => 'ئازار';

  @override
  String get calendarMonthApr => 'نیسان';

  @override
  String get calendarMonthMay => 'ئایار';

  @override
  String get calendarMonthJun => 'حوزەیران';

  @override
  String get calendarMonthJul => 'تەممووز';

  @override
  String get calendarMonthAug => 'ئاب';

  @override
  String get calendarMonthSep => 'ئەیلوول';

  @override
  String get calendarMonthOct => 'تشرینی یەکەم';

  @override
  String get calendarMonthNov => 'تشرینی دووەم';

  @override
  String get calendarMonthDec => 'کانوونی یەکەم';

  @override
  String get calendarSeasonMuharramEarly =>
      'ڕۆژەکانی موحەڕڕەم — کەربەلا بیرەوەری بکە';

  @override
  String get calendarSeasonAshura => 'عاشووراء — یا حوسەین (ع)';

  @override
  String get calendarSeasonMuharramLate => 'موحەڕڕەم — ڕۆژەکانی شین و ئەندێشە';

  @override
  String get calendarSeasonArbaeen => 'ئەربەعین — چل ڕۆژی حوسەین';

  @override
  String get calendarSeasonRoadToArbaeen => 'ڕێگەکە بۆ ئەربەعین';

  @override
  String get calendarSeasonMabath => 'مەبعەثی موبارەک — سپێدەدەمی وەحی';

  @override
  String get calendarSeasonMidShaban =>
      'نیوەی شەعبان — ڕۆژی لەدایکبوونی ئیمام مەهدی (عج)';

  @override
  String get calendarSeasonRamadan => 'ڕەمەزانی موبارەک — مانگی قورئان';

  @override
  String get calendarSeasonGhadir => 'عیدی غەدیری موبارەک!';

  @override
  String get hijriMonth1 => 'موحەڕڕەم';

  @override
  String get hijriMonth2 => 'سەفەر';

  @override
  String get hijriMonth3 => 'ڕەبیعول ئەووەل';

  @override
  String get hijriMonth4 => 'ڕەبیعول ثانی';

  @override
  String get hijriMonth5 => 'جومادول ئەووەل';

  @override
  String get hijriMonth6 => 'جومادول ثانی';

  @override
  String get hijriMonth7 => 'ڕەجەب';

  @override
  String get hijriMonth8 => 'شەعبان';

  @override
  String get hijriMonth9 => 'ڕەمەزان';

  @override
  String get hijriMonth10 => 'شەووال';

  @override
  String get hijriMonth11 => 'ذوالقەعدە';

  @override
  String get hijriMonth12 => 'ذوالحیججە';

  @override
  String get duasScreenTitle => 'دوعا و زیارەت';

  @override
  String get duasSearchHint => 'دوعا، زیارەت بگەڕێ…';

  @override
  String get duasFilterAll => 'هەموو';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دوعا و زیارەت',
      one: '$count دوعا',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'هیچ دوعایەک نەدۆزرایەوە.';

  @override
  String get duaCategoryDaily => 'ڕۆژانە';

  @override
  String get duaCategoryWeekly => 'هەفتانە';

  @override
  String get duaCategoryOccasions => 'ئۆکازیۆنەکان';

  @override
  String get duaCategoryZiyarat => 'زیارەت';

  @override
  String get duaCategoryTasbih => 'تەسبیح';

  @override
  String get eventTypeBirth => 'لەدایکبوون';

  @override
  String get eventTypeMartyrdom => 'شەهادەت';

  @override
  String get eventTypeOccasion => 'ئۆکازیۆن';

  @override
  String get duaCopyTooltip => 'وەرگێڕان کۆپی بکە';

  @override
  String get duaToggleTransliteration => 'دەنگدەرکردنەوە';

  @override
  String get duaToggleTranslation => 'وەرگێڕان';

  @override
  String get duaAskAiLabel => 'لە ئایارا بخوازە ئەم دوعایە ڕوون بکاتەوە';

  @override
  String get duaAskAiLockedLabel => 'لە ئایارا بپرسە (ویلایە)';

  @override
  String get duaAiLockedMessage =>
      'ڕوونکردنەوەکانی ئایارا بۆ ئەندامانی ویلایە بەردەستە. لە ڕێکخستنەکاندا بەرز بکەرەوە.';

  @override
  String duaAiComingSoon(String name) {
    return 'لە ئایارا دەربارەی \"$name\" بپرسە — بەزوودی دێت!';
  }

  @override
  String get duaCopiedToast => 'دوعا لە کلیپبۆردەوە کۆپی کرا.';

  @override
  String get tasbihAllahuAkbarMeaning => 'خودا گەورەترینە';

  @override
  String get tasbihAlhamdulillahMeaning => 'هەموو سوپاس بۆ خودا';

  @override
  String get tasbihSubhanallahMeaning => 'پاکی بۆ خودا';

  @override
  String get tasbihResetTooltip => 'ڕیسێت بکەرەوە';

  @override
  String get tasbihCompleteTitle => 'تەسبیح تەواو بوو';

  @override
  String get tasbihCompleteMessage => 'خودا زیکرەکانت قبوڵ بکات.';

  @override
  String get tasbihTapHint => 'هەرشوێنێک بکە بۆ ژمارەکردن';

  @override
  String get tasbihatScreenTitle => 'ڕێنمایی نوێژ';

  @override
  String get tasbihatScreenSubtitle => 'تەسبیحاتی نوێژ';

  @override
  String get tasbihatScreenDescription =>
      'ڕێنماییەکی تەواو بۆ تەسبیحاتی خوێندنەوە لەکاتی و دوای نوێژەکانی ڕۆژانە — بەپێی نەریتی ئەهلی بەیت (ع).';

  @override
  String get tasbihatArba3Title => 'تەسبیحاتی ئەربەعە';

  @override
  String get tasbihatArba3Subtitle => 'لە ڕەکعەتی ٣ و ٤ خوێندرێتەوە';

  @override
  String get tasbihatArba3Info =>
      'لە فیقهی شیعەدا، تەسبیحاتی ئەربەعە جێگرەوەی سورەی ئەلفاتیحە دەبێت لە ڕەکعەتی ٣ و ٤ی نوێژی نیوەڕۆ، عەسر، ئێوارە، و عیشا. واجبە کە یەک جار بخوێنرێتەوە، و موستەحەبە کە سێ جار بخوێنرێتەوە.';

  @override
  String get tasbihatArba3Translation =>
      'پاکی بۆ خودا · هەموو سوپاس بۆ خودا\nهیچ خوداوەندێک نییە جگە لە خودا · خودا گەورەترینە';

  @override
  String get tasbihatArba3CompleteTitle => 'خوێندنەوە تەواو بوو';

  @override
  String get tasbihatArba3CompleteMessage => 'با نوێژەکەت قبوڵ بکرێت — ئامین';

  @override
  String get tasbihatArba3TapHint => 'دوای هەر خوێندنەوەیەک بکە';

  @override
  String get tasbihatZahraSubtitle => 'دوای هەر نوێژێک · ١٠٠ دانە';

  @override
  String get tasbihatZahraOriginLabel => 'سەرچاوە';

  @override
  String get tasbihatZahraHadith =>
      'سیدەتنا فاطیمەی زەهرا (س) لە پێغەمبەر ﷺ داواکاری خزمەتکاری کرد. فەرموویی: «ئایا ڕێنماییت نادەم بۆ شتێکی باشتر؟ دوای هەر نوێژێک ٣٣ جار سوبحانەللە، ٣٣ جار ئەلحەمدولللە، و ٣٤ جار ئەللاهو ئەکبەر بخوێنەوە. ئەمە بۆت باشتر لە خزمەتکارە.»';

  @override
  String get tasbihatZahraHadithSource => '— بیحار ئەلئەنوار، ج. ٨٥';

  @override
  String get tasbihatZahraOpenCounter => 'ژمێری تەسبیح کردەوەی بکە';

  @override
  String get tasbihatDuasTitle => 'دوعاکانی پێشنیارکراو';

  @override
  String get tasbihatDuasSubtitle => 'دوای تەواوکردنی نوێژەکەت';

  @override
  String get tasbihatDuaAyatKursiTitle => 'ئایەتی کورسی';

  @override
  String get tasbihatDuaAyatKursiWhen => 'دوای هەر نوێژی واجب';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورەی بەقەرە ٢:٢٥٥';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'هەرکە دوای هەر نوێژی واجب ئایەتی کورسی بخوێنێتەوە، هیچ شتێک نەماوە نێوانی و بەهەشت جگە لە مەرگ. ئیمام ئەلباقیر (ع) فەرموو ئەمە لە گەورەترین ئایەتەکانی قورئانی پیرۆزدایە.';

  @override
  String get tasbihatDuaSalawatTitle => 'سەڵاوات';

  @override
  String get tasbihatDuaSalawatWhen =>
      'دوای هەر نوێژێک · هەموو دوعاکان دادەپۆشێت';

  @override
  String get tasbihatDuaSalawatSource => 'ئیمام ئەلصادق (ع) — ئەلکافی';

  @override
  String get tasbihatDuaSalawatNote =>
      'ناردنی درود لەسەر پێغەمبەر ﷺ و خێزانی پاکیزەیەکەی (ئالی محەممەد) پێشنیاردەکرێت هەر دوعایەک داببخرێت. ئیمام ئەلصادق (ع) فەرموو: «هەر دوعایەک داماوبووە تاوەکو سەڵاوات لەسەر محەممەد و خێزانەکەی دەنێریت.»';

  @override
  String get tasbihatDuaFarajTitle => 'دوعای فەرەج';

  @override
  String get tasbihatDuaFarajWhen => 'دوای هەر نوێژێک · بۆ ئیمامی زەمانەکەمان';

  @override
  String get tasbihatDuaFarajSource =>
      'فێرکراوی لەلایەن ئیمام ئەلحەسەن ئەلعەسکەری (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دوعایەک بۆ دەرکەوتنی ئیمام مەهدی (عج)، دوازدەیەم ئیمام، فێرکراوی باوکی. ڕۆژانە لەلایەن مومینانی شیعەدا دوای هەر نوێژێک دەخوێنرێتەوە وەک کارێکی دینی بۆ ئیمامی زیندوو.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تەسبیحی سیدەتنا فاطیمە';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'دوای نوێژی ئێوارە و عیشا · بە تایبەتی پێشنیارکراو';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ئیمام ئەلباقیر (ع) — بیحار ئەلئەنوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ئیمام ئەلباقیر (ع) فەرموو کە خوێندنەوەی تەسبیحی زەهرا دوای عیشا پێش خەوکردن باشتره لە ١٠٠٠ ڕەکعەتی نوێژی ئارەزووکارانە. نووری لە بۆ ئاسمان دەچێت.';

  @override
  String get tasbihFatimaGiftPre => 'دیاریەک لە پێغەمبەر';

  @override
  String get tasbihFatimaGiftPost => 'دوای هەر نوێژێک دەخوێنرێتەوە';

  @override
  String get prayerTrackerTitle => 'شوێنکەوتنی نوێژ';

  @override
  String get prayerTrackerPrayed => 'نوێژی کرد';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'زنجیرەی $count ڕۆژ';
  }

  @override
  String get prayerTrackerAllComplete =>
      'هەموو نوێژەکانی ئەمڕۆ تەواو کران. خودا قبوڵ بکات.';

  @override
  String get dhikrTrackerTitle => 'تەسبیحاتی زەهرا';

  @override
  String get dhikrTrackerCompletedToday => 'ئەمڕۆ تەواوکرا';

  @override
  String get dhikrTrackerNotDoneToday => 'ئەمڕۆ ئەنجامنەدراو';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'زنجیرەی $count ڕۆژ';
  }

  @override
  String get dhikrReminderTitle => 'یادەوەری تەسبیح';

  @override
  String get dhikrReminderDescription =>
      'یادەوەریەکی ئارامی ڕۆژانە بۆ خوێندنەوەی تەسبیحاتی زەهرا (س).';

  @override
  String get dhikrReminderEnable => 'یادەوەری تەسبیح چالاک بکە';

  @override
  String get dhikrReminderTimeLabel => 'کاتی یادەوەری';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حەدیثی ڕۆژ';

  @override
  String get hadithLabelArabic => 'عەرەبی';

  @override
  String get hadithLabelTranslation => 'وەرگێڕان';

  @override
  String get hadithBadge => 'حەدیث';

  @override
  String get hadithShare => 'ئەم حەدیثە هاوبەش بکە';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nبە ئایارا';
  }

  @override
  String get hadithNavPrevious => 'پێشوو';

  @override
  String get hadithNavNext => 'داهاتوو';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '١٤ مەعسووم';

  @override
  String get imamsScreenSubtitle =>
      'پێغەمبەر، سیدەتنا فاطیمە، و دوازدە ئیمام — ڕێبەرانی بێ گوناهی ئیسلام';

  @override
  String get imamLabelBorn => 'لەدایکبوون';

  @override
  String get imamLabelMartyrdom => 'شەهادەت';

  @override
  String get imamLabelStatus => 'دۆخ';

  @override
  String get imamSectionBiography => 'بیۆگرافی';

  @override
  String get imamSectionFamousSaying => 'فەرمودەی بناوبانگ';

  @override
  String get imamRoleProphet => 'کۆتا پێغەمبەر';

  @override
  String get imamRoleInfallible => 'بێ گوناه';

  @override
  String get imamOrdinal1 => 'ئیمامی ١ەم';

  @override
  String get imamOrdinal2 => 'ئیمامی ٢ەم';

  @override
  String get imamOrdinal3 => 'ئیمامی ٣ەم';

  @override
  String get imamOrdinal4 => 'ئیمامی ٤ەم';

  @override
  String get imamOrdinal5 => 'ئیمامی ٥ەم';

  @override
  String get imamOrdinal6 => 'ئیمامی ٦ەم';

  @override
  String get imamOrdinal7 => 'ئیمامی ٧ەم';

  @override
  String get imamOrdinal8 => 'ئیمامی ٨ەم';

  @override
  String get imamOrdinal9 => 'ئیمامی ٩ەم';

  @override
  String get imamOrdinal10 => 'ئیمامی ١٠ەم';

  @override
  String get imamOrdinal11 => 'ئیمامی ١١ەم';

  @override
  String get imamOrdinal12 => 'ئیمامی ١٢ەم';

  @override
  String get duaAudioScreenTitle => 'دوعاکان گوێ بگرە';

  @override
  String get duaAudioScreenSubtitle =>
      'دوعایەک هەڵبژێرە بۆ گوێگرتن. کتەی تایڵەکە بکە بۆ دەستپێکردن یان وەستاندن.';

  @override
  String get duaAudioComingSoonMessage =>
      'دەنگی ئەم دوعایە لە نوێکردنەوەیەکی داهاتوودا بەردەست دەبێت.';

  @override
  String get duaAudioClose => 'داخە';

  @override
  String get duaAudioError =>
      'نەتوانرا دەنگ بارکرێت. تکایە پەیوەندیەکەت بپشکنە.';

  @override
  String get duaAudioMetaTransmittedBy => 'گەیاندراوی لەلایەن';

  @override
  String get duaAudioMetaOccasion => 'ئۆکازیۆن';

  @override
  String get duaAudioMetaDuration => 'ماوە';

  @override
  String get quickActionDailyHadith => 'حەدیثی ڕۆژ';

  @override
  String get quickAction14Masumeen => '١٤ مەعسووم';

  @override
  String get quickActionListenDuas => 'گوێبگرە';

  @override
  String get quickActionTasbihat => 'ڕێنمایی نوێژ';

  @override
  String get pilgrimageSectionTitle => 'گەشتی پیرۆز';

  @override
  String get pilgrimageSectionSubtitle =>
      'ڕێنماییی تەواو بۆ حەج و عومرە — گەشتی پیرۆز بۆ مالی پیرۆزی خودا لە مەکەی پیرۆز';

  @override
  String get hajjCardTitle => 'حەج';

  @override
  String get hajjCardSubtitle => 'پێنجەمین ستونی ئیسلام';

  @override
  String get hajjCardDescription =>
      'گەشتی ساڵانەی گەورە — واجبە یەک جار لە ژیاندا بۆ هەر موسولمانێکی توانادار';

  @override
  String get hajjScreenTitle => 'ڕێنمایی حەج';

  @override
  String get hajjScreenSubtitle =>
      'ڕێنماییی هەڵوەشاوەی گام بە گام بۆ گەشتی گەورە';

  @override
  String get umrahCardTitle => 'عومرە';

  @override
  String get umrahCardSubtitle => 'گەشتی بچووک';

  @override
  String get umrahCardDescription =>
      'گەشتێکی ڕووحانیی قازانچدارە کە دەتوانرێت لە هەر کاتێکی ساڵدا ئەنجام بدرێت';

  @override
  String get umrahScreenTitle => 'ڕێنمایی عومرە';

  @override
  String get umrahScreenSubtitle =>
      'ڕێنماییی هەڵوەشاوەی گام بە گام بۆ گەشتی بچووک';

  @override
  String get pilgrimageStepsTitle => 'ئایینەکان و گامەکان';

  @override
  String get pilgrimageImportantNotesTitle => 'تێبینیە گرینگەکان';

  @override
  String get pilgrimageDuaTitle => 'Dua ji bo vê gava';

  @override
  String get pilgrimageJafariNoteTitle => 'Nîşana Fiqhê Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Tamam';

  @override
  String get pilgrimageMarkDone => 'Wekî qedandî nîşan bidin';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ji $total gavan';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes deqîqe';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'حاجیانی شیعە';

  @override
  String get pilgrimageShiaNoteBody =>
      'حاجیانی شیعە بە نەریتی ئەوەشیان دەچنە مەدینە بۆ سەردانی مزگەوتی نەبەوی و گۆڕی پێغەمبەر محەممەد (ص)، و گۆڕەکانی ئیمامەکان لە جەننەتی بەقیعدا. ئەم سەردانانە گرینگیەکی ڕووحانیی زۆری هەیە و بۆ زۆربەی موسولمانانی شیعە بەشێکی گرینگی گەشتەکەن.';

  @override
  String get hajjIntro =>
      'حەج پێنجەمین ستونی ئیسلامە، واجبە یەک جار لە ژیاندا بۆ هەر موسولمانێک کە بە جەستە و دارایی توانادارە. لە مانگی ذوالحیججەدا ئەنجام دەدرێت، شوێن پێی پێغەمبەر ئیبراهیم (ع)، کوڕی ئیسماعیل (ع)، و سیدەتنا هاجەر دەگرێتەوە. بۆ موسولمانانی شیعە، حەج هەروەها بەرکەتی قوڵی سەردانکردنی شوێنی ئیستراحەتی پێغەمبەر (ص) و ئەهلی بەیت لە مەدینەش تێدایە.';

  @override
  String get umrahIntro =>
      'عومرە گەشتی بچووکە بۆ مەکە و، بەپێچەوانەی حەج، دەتوانرێت لە هەر کاتێکی ساڵدا ئەنجام بدرێت. هەرچەندە واجب نییە، بەڵام قازانچی ڕووحانیی بەرزی هەیە و وەک کارێکی ئیبادەتی بەرزتاوازداو دادەنرێت. چەند ئایینێک لەگەڵ حەج هاوبەشی هەیە بەڵام کورتترە، چوار ئایینی سەرەکیی تێدایە.';
}
