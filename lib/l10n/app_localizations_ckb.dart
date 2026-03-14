// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Central Kurdish (`ckb`).
class AppLocalizationsCkb extends AppLocalizations {
  AppLocalizationsCkb([String locale = 'ckb']) : super(locale);

  @override
  String get appTitle => 'ئایارا';

  @override
  String get languageSelectTitle => 'زمانی خۆت هەڵبژێرە';

  @override
  String get languageSelectSub => 'دەتوانیت ئەمە دواتر لە شێوەپێدان بگۆڕیت';

  @override
  String get actionContinue => 'بەردەوام بە';

  @override
  String get languageSuggestedHeader => 'پێشنیار کراو';

  @override
  String get languageAllHeader => 'هەموو زمانەکان';

  @override
  String get languageSuggestedBadge => 'پێشنیار کراو';

  @override
  String get languageSearchHint => 'گەڕان…';

  @override
  String get planBasic => 'بنچینەیی';

  @override
  String get planPremium => 'ویلایە';

  @override
  String get categorySlot01 => 'ڕاھێنانی ڕۆژانە';

  @override
  String get categorySlot02 => 'ئیمان و باوەڕ';

  @override
  String get categorySlot03 => 'فکرکردن لە نوێژ';

  @override
  String get categorySlot04 => 'ساتاییت و هیوا';

  @override
  String get categorySlot05 => 'لێبوردن بیسە';

  @override
  String get categorySlot06 => 'بەزەیی و شفقەت';

  @override
  String get categorySlot07 => 'ئیمان و بەهێز';

  @override
  String get categorySlot08 => 'دڵی شکردار';

  @override
  String get categorySlot09 => 'مەبەستی ژیان';

  @override
  String get categorySlot10 => 'پێوەندی خێزان';

  @override
  String get categorySlot11 => 'ئاسایش و ئاڕامی';

  @override
  String get categorySlot12 => 'حیکمەتی پێغەمبەر';

  @override
  String get categorySlot13 => 'خوێنی باشتر';

  @override
  String get categorySlot14 => 'بەرپا کردن لە وسوسە';

  @override
  String get categorySlot15 => 'ذکری ئێوار';

  @override
  String get categoryCustom => 'فکرکردنی تایبەت';

  @override
  String get dhikrMeaningSubhanallah => 'شکۆ و شەرەفی خودایە';

  @override
  String get dhikrMeaningAlhamdulillah => 'هەموو ستایش بۆ خودا';

  @override
  String get dhikrMeaningAllahuAkbar => 'خودا گەورەترە';

  @override
  String get quranVerseHeartAtRest => 'بانگ دان بۆ خودا دڵی آسایش دەدات.';

  @override
  String get promptHint => 'زمرەیەک دوێن بۆ ڕاھێنانی ئیسلامی';

  @override
  String get currentLanguage => 'زمانی ئێستا';

  @override
  String get settingsLanguage => 'ڕێکخستنی زمان';

  @override
  String get settingsTitle => 'ڕێکخستنەکان';

  @override
  String get chooseLanguage => 'زمانی خۆت هەڵبژێرە';

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
  String get optionsCta => 'بژاردەکان';

  @override
  String get newCta => 'نوێ';

  @override
  String get actionsTitle => 'چی دەتەوێت بکەیت؟';

  @override
  String get copy => 'کۆپی';

  @override
  String get share => 'بەشی کردن';

  @override
  String get close => 'داخستن';

  @override
  String get copiedToast => 'کۆپی کرا بۆ تختە';

  @override
  String shareSubject(String category) {
    return 'ئایارا — $category';
  }

  @override
  String get regenerateErrorTitle => 'نەتوانی وەڵام نوێ دروست کەم';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nدەتەوێت دووبارە هەوڵ بدەیت؟';
  }

  @override
  String get cancelCta => 'هەڵگرتن';

  @override
  String get retryCta => 'دووبارە هەوڵ بدە';

  @override
  String get authTitle => 'هەژمارت دروست کە';

  @override
  String get continueAsGuest => 'بەردەوام بە وەک مێوان';

  @override
  String get signInGoogle => 'چونە ژوورەوە بە Google';

  @override
  String get signInApple => 'چونە ژوورەوە بە Apple';

  @override
  String get signInEmail => 'چونە ژوورەوە بە ئیمێیل';

  @override
  String get upgradeWithApple => 'بەردەوام بە Apple';

  @override
  String get mustAccept =>
      'پێویستە شەرتەکان قبوول بکەیت و سیاسەتی پێوەندیدار بپێژنیت.';

  @override
  String get termsLabel => 'شەرتەکانی خزمەتگوزاری قبوول دەکەم';

  @override
  String get privacyLabel => 'سیاسەتی تێکۆشن خوێندوومەتەوە';

  @override
  String get marketingOptIn =>
      'بە هەبوونەدا رێزی دەدەم هەڵەمەتی و پێشنیاز وەرگرتن';

  @override
  String get openTerms => 'شەرتەکانی خزمەتگوزاری';

  @override
  String get openPrivacy => 'سیاسەتی تێکۆشن';

  @override
  String get accountSection => 'هەژمار';

  @override
  String get guestMode => 'مۆدی مێوان';

  @override
  String get signedIn => 'چووی ژوورەوە';

  @override
  String get upgradeHint => 'بەژماردنی ئەکاونتت فیزیەکان پاسیفکەرەو بەرھەمێ';

  @override
  String get upgradeWithGoogle => 'بەردەوام بە Google';

  @override
  String get signOut => 'دەرچونی ژوورەوە';

  @override
  String get snackUpgraded => 'هەژمار بەرزکرا بە Google ✅';

  @override
  String get snackSignedIn => 'چووی ژوورەوە بە Google ✅';

  @override
  String get snackSignedOut => 'دەرچوو لە ژوورەوە';

  @override
  String get snackSignedInApple => 'چووی ژوورەوە بە Apple ✅';

  @override
  String get snackSignedInGoogle => 'چووی ژوورەوە بە Google ✅';

  @override
  String get snackUpgradedApple => 'هەژمار بەرزکرا بە Apple ✅';

  @override
  String get snackUpgradedGoogle => 'هەژمار بەرزکرا بە Google ✅';

  @override
  String get historyTitle => 'فکرکردنەکانی پێشتر';

  @override
  String get historyOpenCta => 'فکرکردنەکانی پێشتر';

  @override
  String get historyEmpty => 'هیچ فکرکردنی تێدەپەڵێودراو نیە تێگەیشتن.';

  @override
  String get historyDeleteTitle => 'فکرکردنە بسڕێتەوە؟';

  @override
  String get historyDeleteBody =>
      'ئەم تێکردەی دەستنیشانکراو بەشێوەی دەبڵاو لابیدە.';

  @override
  String get deleteCta => 'بسڕێتەوە';

  @override
  String get historyButton => 'فکرکردنەکانی پێشتر';

  @override
  String get historyEmptyTitle => 'هیچ فکرکردنێک نیە';

  @override
  String get historyEmptyBody =>
      'یەکەم شتێک دروست بکە — ئەو تێکردەیانەی تێدەپەڵێودراو لێرەدا دەرچن.';

  @override
  String get historyDelete => 'بسڕێتەوە';

  @override
  String get footerTitle => 'بە ویلایە، ئیمان و سەبر';

  @override
  String get footerSubtitle => 'یەک نوێژ لە جاری';

  @override
  String get genericErrorSnack =>
      'تێدەڕوو شت ناچار بوو — لە نۆگە تردا دووبارە هەوڵ بدەرەوە.';

  @override
  String get upgradeAccountCta =>
      'بەژماردنی ئەکاونتت فیزیەکان پاسیفکەرەو بەرھەمێ – ھەژمار دروست کە';

  @override
  String get deleteAccount => 'بسڕێتەوە هەژمار';

  @override
  String get exportData => 'داتا منی هەناردەبکە';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ئاسان بیت 🐯\nئایارا پێویستی بە کاتێک دەکات بۆ یەکێتریت…';

  @override
  String get rateDailyLimit =>
      'بۆ ئێستا فکرکردنەکانت هەتاوەتاوە.\nفکرکردنی زیاتر وەرگرە یان بە ویلایە ئپگریڈ بکە.';

  @override
  String get rateCreditsExhausted =>
      'هەموو فکرکردنەکانت بەسەر چووە.\nکۆکردنەوە یان بە ویلایە ئپگریڈ بکە بۆ بەردەوامی.';

  @override
  String get rateGraceCreditsExhausted =>
      'بۆ ئێستا فکرکردنەکانت هەتاوەتاوە.\nفکرکردنی زیاتر وەرگرە یان بە ویلایە ئپگریڈ بکە.';

  @override
  String get premiumDescription =>
      'ویلایە تایبەتمەندیە پریمیۆم، زمرەکانی داھاتوو، و بەج تایبەتی چالاک دەکات.';

  @override
  String ratePlanExhausted(String plan) {
    return 'فکرکردنەکانت بۆ ئێستا بەتاڵن. پلان: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'نەتوانی فکرکردنەکانت بپشکنی: $message';
  }

  @override
  String get rateCheckGenericError =>
      'تێدەڕوو شتێک ناچار بوو کاتێک فکرکردنەکانت پشکنی دەکردوا.';

  @override
  String get aiFallbackGeneric =>
      'تێدەڕوو شت ناچار بوو — لە نۆگە تردا دووبارە هەوڵ بدەرەوە.';

  @override
  String get limitSectionTitle => 'فکرکردنەکان';

  @override
  String get limitTodayLabel => 'بەکارھێنان';

  @override
  String limitCreditsLabel(Object credits) {
    return 'فکرکردنی بەماونده: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'پلان: $plan';
  }

  @override
  String get limitLoadingLabel => 'بارکراوە…';

  @override
  String get limitLoadingLabelDescription =>
      'تیایدا تێدەپێندەکاتیت پشکی ئامار بەکارھێنان بارکراو بن.';

  @override
  String get aiLimitTitle => 'فکرکردنەکان';

  @override
  String get aiLimitSubtitle =>
      'ھەر وەڵام 1 فکرکردن بەکار دەھێنێت. بنچینەیی فکرکردنی دەستپێ تێدەدات. ویلایە زمرەکانی پریمیۆم کردۆتەوە و کۆکردنەوە چالاک دەکات.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total فکرکردنی بەکارھێنراو';
  }

  @override
  String get creditsSectionTitle => 'فکرکردنەکان';

  @override
  String get creditsUsageLabel => 'بەکارھێنان';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'فکرکردنی بەماونده: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'پلان: $plan';
  }

  @override
  String get creditsLoadingLabel => 'بارکراوە…';

  @override
  String get creditsLoadingLabelDescription =>
      'تیایدا کاتێک پشکی ئامار فکرکردن بارکراو بن.';

  @override
  String get creditsTitle => 'فکرکردنەکان';

  @override
  String get creditsSubtitle =>
      'ھەر وەڵام 1 فکرکردن بەکار دەھێنێت. بنچینەیی فکرکردنی دەستپێ تێدەدات. ویلایە زمرەکانی پریمیۆم کردۆتەوە و کۆکردنەوە چالاک دەکات.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total فکرکردنی بەکارھێنراو';
  }

  @override
  String get settingsDeleteTitle => 'بسڕێتەوە هەژمار';

  @override
  String get settingsDeleteDescription =>
      'بەشێوەی دەبڵاو هەژمارت و هەموو داتا پەیوەندیدار بسڕێتەوە.';

  @override
  String get settingsDeleteButtonLabel => 'بسڕێتەوە هەژمارم';

  @override
  String get settingsDeleteDialogTitle => 'بسڕێتەوە هەژمار؟';

  @override
  String get settingsDeleteDialogBody =>
      'ئەم کردەیە دەبڵاوە و نیکار گەڕاندنەوەی نیە.\n\nهەموو چاتەکانت، مێژووت و زانیاری هەژمارت دەبسرێتەوە.';

  @override
  String get settingsDeleteDialogCancel => 'هەڵگرتن';

  @override
  String get settingsDeleteDialogConfirm => 'بسڕێتەوە';

  @override
  String get settingsFreeLimitUsedTitle => 'فکرکردنی دەستپێ بەکارھێنراو';

  @override
  String get settingsFreeLimitUsedDescription =>
      'فکرکردنی دەستپێی ئەم جیهازە بەکارھێنراوە. بە ویلایە ئپگریڤ بکە یان فکرکردنی زیاتر بیکرە بۆ بەردەوامی.';

  @override
  String get settingsStarterCreditsUsedTitle => 'فکرکردنی دەستپێ بەکارھێنراو';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'فکرکردنی دەستپێی ئەم جیهازە بەکارھێنراوە. بە ویلایە ئپگریڤ بکە یان فکرکردنی زیاتر بیکرە بۆ بەردەوامی.';

  @override
  String get deviceBoundError =>
      'ئەم جیهازە بەتێکی هەژماری تری پەیوەسھ کێناوە. تکایە بە هەژماری دەستپێگی چون ژوورەوە بکە.';

  @override
  String get premiumTitle => 'مۆدی ویلایە';

  @override
  String get premiumSubtitleBasic =>
      'بە کێشی تێدەپەڵێوکردنی ئایارا بەسەر بگریت.';

  @override
  String get premiumSubtitlePremium =>
      'تۆ لە ویلایە یت. پێویستی بە فکرکردنی زیاتر؟';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'پلانی ئێستا: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'فکرکردنەکان: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'کڕین بۆ ئێستا بەردەست نین.';

  @override
  String get premiumSignInToPurchase =>
      'چون ژوورەوە بکە بۆ کڕینی فکرکردن یان کردۆتەوەی ویلایە.';

  @override
  String get premiumRestorePurchases => 'گێڕانەوەی کڕینەکان';

  @override
  String get premiumProcessing => 'پرۆسێس کراوە…';

  @override
  String get premiumRestoreHintTitle =>
      'بۆ کجا ویلایە یان فکرکردن لە ئەم جیهازە یا جیهازێکی تردا کڕیوە؟';

  @override
  String get premiumRestoreHintBody =>
      'گێڕانەوەی کڕینەکانت ئەگەر نیشان نەدانن.';

  @override
  String get premiumBuyCredits200 => 'کڕین 200 فکرکردن';

  @override
  String get premiumBuyCredits400 => 'کڕین 400 فکرکردن';

  @override
  String get premiumBecomePremiumOneTime => 'بەرزکردن بۆ مۆدی ویلایە';

  @override
  String get premiumTopupHint =>
      'بە ویلایە، دەتوانیت فکرکردنی زیاتر کۆ بکەنەوە ھەرچ جار پێویستت بێ.';

  @override
  String get premiumUpgradeCta => 'بەرزکردن';

  @override
  String get premiumRequiredForCategory =>
      'ئەم زمرەیە تەنیا بۆ بەکارھێنەری ویلایە بڵاو دراوە. لە شێوەپێدان بەرز بکە بۆ کردۆتەوەی هەموو ناوەڕۆکی پریمیۆم.';

  @override
  String get premiumBenefitsBasic =>
      'کردۆتەوەی ویلایە بۆ فکرکردنی زیاتر، دەستپێگی زمرەکانی پریمیۆم، و بەردەوامی ھەرچ جار پێویستت بێ.';

  @override
  String get premiumBenefitsPremium =>
      'تۆ لە مۆدی ویلایە یت. ئەگەر کەم بیت، فکرکردنی زیاتر زیاد بکە و بەردەوام بە بێ هیچ کڕتاویت.';

  @override
  String get premiumButtonBecomePremium => 'کردۆتەوەی ویلایە';

  @override
  String get premiumButtonTopup1000 => 'زیادکردن 1000 فکرکردن';

  @override
  String get premiumBadge => 'ویلایە چالاکە';

  @override
  String get premiumLoadingStore => 'بارکردنی فرۆشتگا…';

  @override
  String get premiumProductNotAvailable =>
      'ئەم بەرھەمە هیشتا لە فرۆشتگا بەردەست نیە. تکایە دواتر دووبارە ھەوڵ بدەرەوە.';

  @override
  String get premiumPurchaseError =>
      'تێدەڕوو شتێک ناچار بوو لە کڕین. تکایە دووبارە ھەوڵ بدەرەوە.';

  @override
  String get premiumBuyCredits100 => 'زیادکردن 100 فکرکردن';

  @override
  String get premiumFeatureLocked =>
      'کردۆتەوەی ویلایە بۆ دەستپێگی ئەم تایبەتمەندیەیە.';

  @override
  String get lockedCategoriesHint =>
      'ھیچ زمرەیەک بۆ ئەندامانی ویلایە مەھیم دراوە. کردۆتەوەی بۆ بۆدانی ھەموو فکرکردن لە سفرتەکەت.';

  @override
  String get freePlanBlockedTitle => 'فکرکردنی دەستپێیت بە سەر چووە';

  @override
  String get freePlanBlockedBody =>
      'تۆ لە پلانی بنچینەیی یت بە فکرکردنی دەستپێ، و دەگات لە سنورەکان. بۆ بەردەوامی — و کردۆتەوەی زمرەکانی پریمیۆم — بە ویلایە ئپگریڤ بکە.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'بیبینە بژاردەکانی ویلایە لێ خوارەوە';

  @override
  String get graceBlockedTitle => 'فکرکردنی دەستپێیت بە سەر چووە';

  @override
  String get graceBlockedBody =>
      'تۆ لە پلانی بنچینەیی یت بە فکرکردنی دەستپێ، و دەگات لە سنورەکان. بۆ بەردەوامی — و کردۆتەوەی زمرەکانی پریمیۆم — بە ویلایە ئپگریڤ بکە.';

  @override
  String get graceBlockedCtaGoPremium => 'بیبینە بژاردەکانی ویلایە لێ خوارەوە';

  @override
  String get rateGuestMustSignIn =>
      'چون ژوورەوە بکە بۆ بەکارھێنان ئایارا و فکرکردنەکانت.';

  @override
  String get guestNoCreditsTitle => 'مۆدی مێوان';

  @override
  String get guestNoCreditsBody =>
      'وەک مێوان دەتوانیت ئەپی بگەڕێت، بەڵام نیتوانیت فکرکردن بەکار بھێنیت. دواتر تێدا چون ژوورەوە بکە بۆ بەکارھێنانی فکرکردن و کردۆتەوەی کڕینەکان.';

  @override
  String get guestDialogContinue => 'بەردەوام بە';

  @override
  String get guestDialogLoginInstead => 'چون ژوورەوە بکە';

  @override
  String get optionalLabel => 'بژاردەیی';

  @override
  String get accountDeleteSuccessTitle => 'هەژمار سڕاسڕی';

  @override
  String get accountDeleteSuccessBody =>
      'هەژمارت و داتای پەیوەندیدارت بە سەرکەوتویی سڕاسڕی کران.';

  @override
  String get accountDeleteSuccessClose => 'داخستن';

  @override
  String get accountDeleteErrorTitle => 'نەتوانی هەژمار سڕبکە';

  @override
  String get accountDeleteErrorClose => 'باشە';

  @override
  String get accountDeleteReauthCancelled =>
      'دووبارە پشتڕاستیکردن هەڵگری کرا. تکایە دووبارە چون ژوورەوە بکە و سڕینەوە دووبارە هەوڵ بدەرەوە.';

  @override
  String get accountDeleteReauthRequired =>
      'سڕینەوەی هەژمار پێویستی بە چونەژوورەوەی نوێت لێ دەکات. تکایە دەرچە، دووبارە چون ژوورەوە بکە، و سڕینەوە دووبارە هەوڵ بدەرەوە.';

  @override
  String get settingsDeletePermanentWarning =>
      'ئەم کردەیە دەبڵاوە و نیکار گەڕاندنەوەی نیە. هەموو داتای پەیوەندیدار بە هەژمارت دەسڕێتەوە.';

  @override
  String get dailyGraceTitle => 'ڕاھێنانی ڕۆژانە';

  @override
  String get dailyGraceScriptureLabel => 'ئایەتی ڕۆژی';

  @override
  String get dailyGraceSaintLabel => 'عامیلی ھەفتە';

  @override
  String get dailyGraceReflectionLabel => 'فکرکردنی ئێوار';

  @override
  String get dailyGraceCopiedToast => 'ئایەت کۆپی کرا بۆ تختە';

  @override
  String get locationConsentLabel =>
      'دەستمێژوو بدە ئایارایە تا بۆدانی قیبلە و کاتی نوێژ بەکار بھێنێت';

  @override
  String get locationConsentHint =>
      'تەنیا بۆ ئەم تایبەتمەندیانە بەکار دەھێنرێت. بۆدانت ھرگیز بەشی یان تێدەپەڵێو نابێت.';

  @override
  String get askPageTitle => 'لێپرسین ئایارا';

  @override
  String get askPageDescription =>
      'لێپرسین ھەرشتێک دەربارەی ئیمان، نوێژ، ژیان، یان جێبەجێکردنی ئیسلام و وەڵامی ڕاھێنراو بە قورئان و فێرکردنی ئەھلبەیت وەرگرە.';

  @override
  String get askPageInputHint => 'پرسیارەکانت لێرە بنووسە…';

  @override
  String get askPageSubmitCta => 'لێپرسین';

  @override
  String get askPageInputEmptyError => 'تکایە یەکەم سوال بنووسە.';

  @override
  String get askResultYourQuestion => 'پرسیارەکەت';

  @override
  String get guidancePageTitle => 'قیبلە';

  @override
  String get qiblaFacingMecca => 'ڕووبەڕووی مەکە';

  @override
  String get qiblaCompassInstruction =>
      'تێلفۆنەکە ھولتیڵەوە ھەتا ستێ زێری ئاو بۆ سەرەوە نیشان بدات.\nئەم ئاراستە قیبلە (مەکە) نیشان دەدات.';

  @override
  String get qiblaGpsUnavailableBody =>
      'نیشانی GPS کەم دروست نیە. بڕۆ بڕتاڵا و سڕتپێی دا.';

  @override
  String get qiblaRetry => 'دووبارە ھەوڵ بدە';

  @override
  String get qiblaTitle => 'ئاراستەی قیبلە';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km کیلۆمەتر بۆ مەکە';
  }

  @override
  String get qiblaLocationNeededTitle => 'بۆدان پێویست';

  @override
  String get qiblaLocationNeededBody =>
      'دەستمێژوو بدە دەستپێگی بۆدان بۆ ئەوەی ئایارا ئاراستەی کاعبە لە مەکە لە کوێت بیهێنێت.';

  @override
  String get qiblaOpenSettings => 'کردنەوەی شێوەپێدان';

  @override
  String get qiblaCompassLoading => 'دۆزینەوەی بۆدانت…';

  @override
  String get qiblaTowardMecca => 'ڕوون بۆ مەکە';

  @override
  String get prayerTimesTitle => 'کاتی نوێژ';

  @override
  String get prayerTimesFajr => 'فاجر';

  @override
  String get prayerTimesDhuhr => 'دھور';

  @override
  String get prayerTimesAsr => 'عەسر';

  @override
  String get prayerTimesMaghrib => 'مغرب';

  @override
  String get prayerTimesIsha => 'عیشاء';

  @override
  String get prayerTimesLocationNeededTitle => 'بۆدان پێویست';

  @override
  String get prayerTimesLocationNeededBody =>
      'دەستمێژوو بدە دەستپێگی بۆدان بۆ ئەوەی ئایارا کاتی نوێژی درست بۆ شارت بیهێنێت.';

  @override
  String get prayerTimesNextLabel => 'دواتر';

  @override
  String get prayerTimesDoneLabel => 'تێدەپەڵێو';

  @override
  String get monthlyPrayerTimesTitle => 'کاتی نوێژی مانگانە';

  @override
  String get monthlyPrayerTimesViewButton => 'بیبینە مانگی تێدا';

  @override
  String get monthlyPrayerTimesNextMonth => 'مانگی دواتر';

  @override
  String get monthlyPrayerTimesDayHeader => 'ڕۆژ';

  @override
  String get sharePrayerTimes => 'بەشیکردنی کاتی نوێژ';

  @override
  String get notificationsSectionTitle => 'ئاگاداریەکان';

  @override
  String get notificationsSectionSubtitle =>
      'یادآوریی نوێژ، ڕووداوی مانگ و زیاتر';

  @override
  String get dailyReflectionReminderTitle => 'فکرکردنی ڕۆژانە';

  @override
  String get dailyReflectionReminderDescription =>
      'یادآوری ناڵێتەیەکی ڕۆژانە بۆ کردنەوەی ئایارا و پەیوەسدان بە ئیماندا.';

  @override
  String get dailyReflectionReminderEnable => 'چالاک کردنی یادآوری ڕۆژانە';

  @override
  String get dailyReflectionReminderTimeLabel => 'کاتی یادآوری';

  @override
  String get prayerNotificationsTitle => 'یادآوریی نوێژ';

  @override
  String get prayerNotificationsDescription =>
      'یادآوری ناڵێتەیە لە بەرەو کاتی ھەر نوێژ وەرگرە بۆ ئەوەی ھەتاو ڕۆژت پەیوەست بمێنیتەوە.';

  @override
  String get prayerNotificationsEnable => 'چالاک کردنی یادآوریی نوێژ';

  @override
  String get prayerNotificationsOpenSettings => 'کردنەوەی شێوەپێدانی ئاگاداری';

  @override
  String get prayerNotificationsDenied => 'ئاگاداری ناچالاک';

  @override
  String get prayerNotificationsDeniedHint =>
      'بچۆ شێوەپێدان و دەستمێژوو بدە ئاگاداریەکان بۆ ئایارا بۆ وەرگرتنی یادآوریی نوێژ.';

  @override
  String get notificationsConsentLabel =>
      'دەستمێژوو بدە ئاگاداریەکان بۆ کاتی نوێژ';

  @override
  String get prayerNotifTitleFajr => '🌅 فاجر — نوێژی سپێدەی';

  @override
  String get prayerNotifBodyFajr =>
      'فاجر نوێژی سپێدەی ئەھلبەیت هەیە. ئیمام علی (ع) فەرمێند: فاجر بپاریزە ھەروەک تێکۆشنی گرانقیمەتتت بپاریزیت. لەبەری بیزوه کە خۆت پاک بکە و لە بەرامبەر خودا ڕاستپێ.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ دھور — نوێژی نیوەڕۆ';

  @override
  String get prayerNotifBodyDhuhr =>
      'ئیمامانی ئەھلبەیت ھەر چاوێکی یادی خودا گرنگ دیوەن. نیوەڕۆیت تێگەیشت، دھور و عەسر کۆ بکە ئەگەر پێویست بێ، و دڵت بۆ خودا گێڕانەوە.';

  @override
  String get prayerNotifTitleAsr => '🌤️ عەسر — نوێژی ئەندامیای';

  @override
  String get prayerNotifBodyAsr =>
      'نوێژ بپاریزە، چونکە پەیمانی نێوات و خودا هەیە. کاتی عەسر هاتووە — مەیتێوێ بێ یاد.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 مغرب — نوێژی ئێوار';

  @override
  String get prayerNotifBodyMaghrib =>
      'خۆر دابااچیچوو — کاتێکی ئەھلبەیت بۆی مقدس دیوە دعا. مغرب بکە و دەستت بۆ خودا بۆ دعا کردن بکێش بەرەو شەوە.';

  @override
  String get prayerNotifTitleIsha => '🌙 عیشاء — نوێژی شەو';

  @override
  String get prayerNotifBodyIsha =>
      'ڕۆژت لە گەڕایی خودادا تێدەپەڵێو بکە. ئیمامانت سپاردنی صلاۃ اللیل دواتر عیشاء فیڕموویتاون — بەڵام یەکەم عیشاء تێدەپەڵێو بکە و ڕۆژت لە یادی هەتێژ بند بکە.';

  @override
  String get outOfReflectionsBannerText => 'ھەموو فکرکردنەکانت بەسەر چووە';

  @override
  String get outOfReflectionsBannerCta => 'فکرکردنی زیاتر وەرگرە';

  @override
  String get dhikrPageTitle => 'ذکر';

  @override
  String get dhikrTapToCount => 'سڕتپێی بدە خولە بۆ ژماردن';

  @override
  String get dhikrResetButton => 'ڕیتسێت';

  @override
  String get dhikrComplete => 'ما شاء الله';

  @override
  String get dhikrCompleteMessage =>
      'تۆ 100 یادی خودا تێدەپەڵێو کردیت. بێت بۆ ڕووناکی دڵت.';

  @override
  String get disclaimerTitle => 'دەربارەی ڕاھێنانی ئەم ئەپ';

  @override
  String get disclaimerBody =>
      'ئایارا فکرکردنی ئیسلامی، یادآوری، و ناوەڕۆکی رووحانی دابین دەکات بۆ پاسیداری سفرتەی ئیماندی خۆت، ریشەدراو لە قورئان و فێرکردنی ئەھلبەیت. ئەم ناوەڕۆکە بۆ مەبەست ئاگادهری و الھام عام پێشکەش دەکرێت.\n\nئایارا جێگرەی عالم ئیسلامی ناکات.\nڕاھێنان لە ئەم ئەپ جێگرەی عالم ئیسلامی یاخود مەرجەع یاخود مامۆستا فکری ئیسلامی ناکات. ئەگەر پرسیارت لەسەر ڕێسا ئیسلامی، حلال و حرام، یاخود تاوانی ئیسلامی خودت هێ، تکایە لەسەر مەرجەع یاخود عالمێکی گهرستت ھیوا بخوازە.\n\nئەم ئەپ ڕێسا ئیسلامی ناکات.\nئایارا کاتێ نیتوانێت فیصلە بۆ ڕێسا فقیھی یاخود تاوانی ئیسلامی خودی بکات. هیچ شتێ لێرە نابێت وەک فتوا یاخود ڕێنماییی تاوتوێکی ئیسلامی لێگرێت.\n\nگرینگی ئەھلبەیت.\nلە ئیسلامی شیعە، پێغەمبەر محمد ﷺ و هیوادی پاک - ئەھلبەیت - پێنمایشی تاوتوێک ئیسلامی دواتر قورئاندن. دوازدە ئیمام ئەھلبەیت پێنمایشی تاوتوێک ئیسلامی دیاردار دەکن. ناوەڕۆکی ئەم ئەپ ئەم دراوەیە دەپاریزێت و بە دیماندی پڕ ڕێز بەجێ دەھیناو.\n\nکۆمیاری ئیسلامی.\nئەم ئەپ مەبەستی بوونی بۆ هاندان بە پەیوەسیت بە ئیمان لە ڕێز بۆ رۆلی گرینگی مسجیدت، مەرکەزی ئیسلامی، و کۆمەڵی ئیسلامی. ما بۆتانه داواکاری بمێنن پەیوەست و فێر بکن لە بۆپێن سپاس و علماڕ گەڕستانتان.';

  @override
  String get disclaimerClose => 'تێدەپێژی';

  @override
  String get disclaimerInfoTooltip => 'دەربارەی ڕاھێنانی ئەم ئەپ';

  @override
  String get disclaimerSettingsSubtitle =>
      'بۆ مەبەستی ئاگادهری عامی. سڕتپێی بدە بۆ خوێندنی شمێتی تێدا.';

  @override
  String get disclaimerSectionHeader => 'دیسکلیمری ڕاھێنان';

  @override
  String get navHome => 'ماڵ';

  @override
  String get navReflect => 'فکرکردن';

  @override
  String get navDuas => 'دعا';

  @override
  String get navCalendar => 'سالنامە';

  @override
  String get dashboardToday => 'ئێوار';

  @override
  String get dashboardComingUp => 'دواتر هاتوو';

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
  String get dashboardQuickAccess => 'دەستپێگی خێرا';

  @override
  String get quickActionQibla => 'قیبلە';

  @override
  String get quickActionDhikr => 'ذکر';

  @override
  String get quickActionDailyGrace => 'ڕاھێنان';

  @override
  String get quickActionPrayerTimes => 'کاتی نوێژ';

  @override
  String get askAyaraTitle => 'لێپرسین ئایارا';

  @override
  String get askAyaraSubtitle =>
      'لێپرسین پرسیاری ئیسلامی و وەڵامی سۆچ‌بیل وەرگرە.';

  @override
  String get askAyaraHint => 'مثال: مانای رمضان چیە؟';

  @override
  String get askAyaraSubmit => 'لێپرسین';

  @override
  String get wisdomOfTheDayTitle => 'حیکمەتی ڕۆژی';

  @override
  String get calendarScreenTitle => 'سالنامەی ئیسلامی';

  @override
  String get calendarUpcomingOccasions => 'ڕووداوی دواتر هاتوو';

  @override
  String get calendarOccasionRemindersTitle => 'یادآوریی ڕووداو';

  @override
  String get calendarOccasionRemindersHint =>
      'ئاگادار شاتوو ئێواری بەرەو ھەر ڕووداو';

  @override
  String get calendarNotifPermissionDenied =>
      'داواکاری ئاگاداری ڕەت کرا. بیکێشی لە شێوەپێدانی جیهازت.';

  @override
  String get calendarNoEvents => 'ھیچ ڕووداوی دواتری نەدۆزرایە.';

  @override
  String get calendarAddToPhone => 'زیادکردن بۆ کەڵەندەری مۆبایل';

  @override
  String get calendarAddedToPhone => 'زیادکراوە بۆ کەڵەندەر';

  @override
  String get calendarCountdownToday => 'ئێوار';

  @override
  String get calendarCountdownTomorrow => 'سبێ';

  @override
  String calendarCountdownDays(int days) {
    return 'لە $days ڕۆژی دواتر';
  }

  @override
  String get calendarAH => 'ھ.ق';

  @override
  String get calendarMonthJan => 'کانوونی دوو';

  @override
  String get calendarMonthFeb => 'شباتی';

  @override
  String get calendarMonthMar => 'ئازاری';

  @override
  String get calendarMonthApr => 'نیسانی';

  @override
  String get calendarMonthMay => 'ئایاری';

  @override
  String get calendarMonthJun => 'حزیرانی';

  @override
  String get calendarMonthJul => 'تموزی';

  @override
  String get calendarMonthAug => 'ئابی';

  @override
  String get calendarMonthSep => 'ئێلولی';

  @override
  String get calendarMonthOct => 'تشرینی یەکەم';

  @override
  String get calendarMonthNov => 'تشرینی دووەم';

  @override
  String get calendarMonthDec => 'کانوونی یەکەم';

  @override
  String get calendarSeasonMuharramEarly => 'ڕۆژانی محرم — یادی کربلا';

  @override
  String get calendarSeasonAshura => 'عاشورا — یا حسین (ع)';

  @override
  String get calendarSeasonMuharramLate => 'محرم — ڕۆژانی شیدا و فکرکردن';

  @override
  String get calendarSeasonArbaeen => 'چل ڕۆژی حسین';

  @override
  String get calendarSeasonRoadToArbaeen => 'ڕێی بۆ چل ڕۆژی';

  @override
  String get calendarSeasonMabath => 'مبعث مبارک — سپێدەی کاتی پێغەمبەری';

  @override
  String get calendarSeasonMidShaban => 'نیو شعبان — بری ئیمام مھدی (عج)';

  @override
  String get calendarSeasonRamadan => 'رمضان مبارک — مانگی قورئان';

  @override
  String get calendarSeasonGhadir => 'عید غدیر مبارک!';

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
  String get hijriMonth11 => 'ذالقعدة';

  @override
  String get hijriMonth12 => 'ذالحجة';

  @override
  String get duasScreenTitle => 'دعا و زیارت';

  @override
  String get duasSearchHint => 'گەڕان دعا، زیارت…';

  @override
  String get duasFilterAll => 'هەموو';

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
  String get duasEmpty => 'هیچ دعایێ نەدۆزرایە.';

  @override
  String get duaCategoryDaily => 'ڕۆژانە';

  @override
  String get duaCategoryWeekly => 'ھەفتانە';

  @override
  String get duaCategoryOccasions => 'ڕووداوەکان';

  @override
  String get duaCategoryZiyarat => 'زیارت';

  @override
  String get duaCategoryTasbih => 'تسبیح';

  @override
  String get eventTypeBirth => 'بری';

  @override
  String get eventTypeMartyrdom => 'شھادت';

  @override
  String get eventTypeOccasion => 'ڕووداو';

  @override
  String get duaCopyTooltip => 'کۆپی ترجمە';

  @override
  String get duaToggleTransliteration => 'ترانسلیتریشن';

  @override
  String get duaToggleTranslation => 'ترجمە';

  @override
  String get duaAskAiLabel => 'لێپرسین ئایارا بۆ تێگەیشتن ئەم دعایە';

  @override
  String get duaAskAiLockedLabel => 'لێپرسین ئایارا (ویلایە)';

  @override
  String get duaAiLockedMessage =>
      'تێگەیشتنی ئایارا بۆ ئەندامانی ویلایە. بە ویلایە ئپگریڤ بکە لە شێوەپێدان.';

  @override
  String duaAiComingSoon(String name) {
    return 'لێپرسین ئایارا دەربارەی \"$name\" — بێتاکت!';
  }

  @override
  String get duaCopiedToast => 'دعا کۆپی کرا بۆ تختە.';

  @override
  String get tasbihAllahuAkbarMeaning => 'خودا گەورەترە';

  @override
  String get tasbihAlhamdulillahMeaning => 'هەموو ستایش بۆ خودا';

  @override
  String get tasbihSubhanallahMeaning => 'شکۆ و شەرەفی خودایە';

  @override
  String get tasbihResetTooltip => 'ڕیتسێت';

  @override
  String get tasbihCompleteTitle => 'تسبیح تێدەپەڵێو';

  @override
  String get tasbihCompleteMessage => 'خودا ذکرت قبوول بکات.';

  @override
  String get tasbihTapHint => 'سڕتپێی بدە ھەرکوێ بۆ ژماردن';

  @override
  String get tasbihatScreenTitle => 'ڕاھێنی نوێژ';

  @override
  String get tasbihatScreenSubtitle => 'تسبیحاتی نوێژ';

  @override
  String get tasbihatScreenDescription =>
      'ڕاھێنی کۆمپڵیت بۆ تسبیحاتی دواتر و لە نوێژی ڕۆژانە — بە شیوەی ئەھلبەیت (ع).';

  @override
  String get tasbihatArba3Title => 'تسبیحات الاربع';

  @override
  String get tasbihatArba3Subtitle => 'دواتر لە ركەعەتی سێیەم و چوارەمدا';

  @override
  String get tasbihatArba3Info =>
      'لە فقیھی شیعە، تسبیحات الاربع جێگرەی سورەتی فاتیحە لە ركەعەتی سێیەم و چوارەمی دھور، عسر، مغرب، و عیشاء دەکات. واجب دەکات (واجب) یەک جار و مستحب (مستحب) سێ جار.';

  @override
  String get tasbihatArba3Translation =>
      'شکۆ و شەرەفی خودایە · هەموو ستایش بۆ خودا\nنیە دیتر خودا مەگر خودا · خودا گەورەترە';

  @override
  String get tasbihatArba3CompleteTitle => 'خوێندن تێدەپەڵێو';

  @override
  String get tasbihatArba3CompleteMessage => 'نوێژت قبوول بکار — آمین';

  @override
  String get tasbihatArba3TapHint => 'سڕتپێی بدە دواتر ھەر خوێندن';

  @override
  String get tasbihatZahraSubtitle => 'دواتر ھەر نوێژ · 100 دانە';

  @override
  String get tasbihatZahraOriginLabel => 'سەرچاوە';

  @override
  String get tasbihatZahraHadith =>
      'لیدی فاتیمە الزهرا (س) لێی پێغەمبەر ﷺ: \"بۆی نێیتی گێڕاندنەوەی خاوەنی تر؟ دواتر ھەر نوێژ سوبحان الله 33 جار، الحمد لله 33 جار، و الله أكبر 34 جار. ئەم باشترە بۆت لە خاوەنێک.\"';

  @override
  String get tasbihatZahraHadithSource => '— بیحار الانوار، جلد 85';

  @override
  String get tasbihatZahraOpenCounter => 'کردنەوەی تسبیح ژماردن';

  @override
  String get tasbihatDuasTitle => 'دعاکانی پێشنیار کراو';

  @override
  String get tasbihatDuasSubtitle => 'دواتر لە تێدەپەڵێوی نوێژت';

  @override
  String get tasbihatDuaAyatKursiTitle => 'آیەت الكرسی';

  @override
  String get tasbihatDuaAyatKursiWhen => 'دواتر ھەر نوێژی واجب';

  @override
  String get tasbihatDuaAyatKursiSource => 'سورە البقرە 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ھەرکێ آیەت الكرسی خوێندێت دواتر ھەر نوێژی واجب، ھیچ شتێ نێوات و بەهشتت نیە مەگر مردن. ئیمام الباقر (ع) فەرمێند یاکی تێکی گرنگترین آیات لە قورئان.';

  @override
  String get tasbihatDuaSalawatTitle => 'صلاۃ';

  @override
  String get tasbihatDuaSalawatWhen => 'دواتر ھەر نوێژ · سێلی هەموو دعا';

  @override
  String get tasbihatDuaSalawatSource => 'ئیمام الصادق (ع) — الکافی';

  @override
  String get tasbihatDuaSalawatNote =>
      'بۆدانی صلاۃ بۆ پێغەمبەر ﷺ و خێزانی پاک (ال محمد) پێشنیار دەکار تێپەڵێوی ھەر دعایە. ئیمام الصادق (ع) فەرمێند: \"ھەر دعایە بەپێڕاکی هات تاکو صلاۃ بۆ محمد و خێزانی بیکریت.\"';

  @override
  String get tasbihatDuaFarajTitle => 'دعاء الفرج';

  @override
  String get tasbihatDuaFarajWhen => 'دواتر ھەر نوێژ · بۆ ئیمام کاتمان';

  @override
  String get tasbihatDuaFarajSource => 'فێرکردنی ئیمام الحسن العسكری (ع)';

  @override
  String get tasbihatDuaFarajNote =>
      'دعایی بۆ دووبارە هاتنی ئیمام المہدی (عج)، دوازدەیەم ئیمام، فێرکردنی باوی. ھەمیشە ڕۆژانە دعا دەکار شیعە مندان دواتر ھەر نوێژ وەک عمل بەندیی بۆ ئیمام زیندوو.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'تسبیح لیدی فاتیمە';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'دواتر مغرب و عیشاء · تایبەت پێشنیار کراو';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ئیمام الباقر (ع) — بیحار الانوار';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ئیمام الباقر (ع) فەرمێند تسبیح الزهرا دواتر عیشاء بەرەو خەو باشتر 1000 ركەعت نوێژی بژاردەیی. ڕووناکی بۆ ئاسمان سەربازوو.';

  @override
  String get tasbihFatimaGiftPre => 'بەخشیشی پێغەمبەر';

  @override
  String get tasbihFatimaGiftPost => 'دواتر ھەر نوێژ';

  @override
  String get prayerTrackerTitle => 'پتی نوێژ';

  @override
  String get prayerTrackerPrayed => 'نوێژ کردیت';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ڕۆژی جۆخ';
  }

  @override
  String get prayerTrackerAllComplete =>
      'هەموو نوێژ ئێوار تێدەپەڵێو. خودا قبوول بکات.';

  @override
  String get dhikrTrackerTitle => 'تسبیح الزهرا';

  @override
  String get dhikrTrackerCompletedToday => 'ئێوار تێدەپەڵێو';

  @override
  String get dhikrTrackerNotDoneToday => 'ئێوار نەکرا';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ڕۆژی جۆخ';
  }

  @override
  String get dhikrReminderTitle => 'یادآوری تسبیح';

  @override
  String get dhikrReminderDescription =>
      'یادآوری ناڵێتەیەکی ڕۆژانە بۆ خوێندنی تسبیح الزهرا (س).';

  @override
  String get dhikrReminderEnable => 'چالاک کردنی یادآوری تسبیح';

  @override
  String get dhikrReminderTimeLabel => 'کاتی یادآوری';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'حدیثی ڕۆژی';

  @override
  String get hadithLabelArabic => 'عەرەبی';

  @override
  String get hadithLabelTranslation => 'ترجمە';

  @override
  String get hadithBadge => 'حدیث';

  @override
  String get hadithShare => 'بەشیکردنی ئەم حدیثە';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'پێشتر';

  @override
  String get hadithNavNext => 'دواتر';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 معصوم';

  @override
  String get imamsScreenSubtitle =>
      'پێغەمبەر، لیدی فاتیمە، و دوازدە ئیمام — ڕاھێنی معصوم ئیسلام';

  @override
  String get imamLabelBorn => 'بری';

  @override
  String get imamLabelMartyrdom => 'شھادت';

  @override
  String get imamLabelStatus => 'دۆخ';

  @override
  String get imamSectionBiography => 'ژیناڤۆ';

  @override
  String get imamSectionFamousSaying => 'گۆتار ناسراو';

  @override
  String get imamRoleProphet => 'پێغەمبەری دواتری';

  @override
  String get imamRoleInfallible => 'معصوم';

  @override
  String get imamOrdinal1 => 'ئیمامی یەکەم';

  @override
  String get imamOrdinal2 => 'ئیمامی دووەم';

  @override
  String get imamOrdinal3 => 'ئیمامی سێیەم';

  @override
  String get imamOrdinal4 => 'ئیمامی چوارەم';

  @override
  String get imamOrdinal5 => 'ئیمامی پێنجەم';

  @override
  String get imamOrdinal6 => 'ئیمامی شەشەم';

  @override
  String get imamOrdinal7 => 'ئیمامی حەوتەم';

  @override
  String get imamOrdinal8 => 'ئیمامی هەشتەم';

  @override
  String get imamOrdinal9 => 'ئیمامی نۆیەم';

  @override
  String get imamOrdinal10 => 'ئیمامی دەیەم';

  @override
  String get imamOrdinal11 => 'ئیمامی یازدەیەم';

  @override
  String get imamOrdinal12 => 'ئیمامی دوازدەیەم';

  @override
  String get duaAudioScreenTitle => 'بیستنی دعا';

  @override
  String get duaAudioScreenSubtitle =>
      'هەڵبژێرە دعایەک بۆ بیستن. سڕتپێی بدە تایل بۆ چالاکی یان پاوزکردن.';

  @override
  String get duaAudioComingSoonMessage =>
      'دەنگی ئەم دعایە لە نوێکردنی دواتریدا دابین دەبێت.';

  @override
  String get duaAudioClose => 'داخستن';

  @override
  String get duaAudioError => 'نەتوانی دەنگی بارکرێت. تکایە پێوەندیت بپشکنە.';

  @override
  String get duaAudioMetaTransmittedBy => 'رێنمایی کراوە لەلایەن';

  @override
  String get duaAudioMetaOccasion => 'ڕووداو';

  @override
  String get duaAudioMetaDuration => 'درێژی';

  @override
  String get quickActionDailyHadith => 'حدیثی ڕۆژی';

  @override
  String get quickAction14Masumeen => '14 معصوم';

  @override
  String get quickActionListenDuas => 'بیستن';

  @override
  String get quickActionTasbihat => 'ڕاھێنی نوێژ';

  @override
  String get pilgrimageSectionTitle => 'سفری مقدس';

  @override
  String get pilgrimageSectionSubtitle =>
      'ڕاھێنی کۆمپڵیت بۆ حج و عمرە — حج بۆ بیتی پاک خودا لە مەکە';

  @override
  String get hajjCardTitle => 'حج';

  @override
  String get hajjCardSubtitle => 'پشتی پنجەمی ئیسلام';

  @override
  String get hajjCardDescription =>
      'حجی سالانەی گرانبار — واجب یەک جار لە تێدا ھەر مسلمی توانای لہ';

  @override
  String get hajjScreenTitle => 'ڕاھێنی حج';

  @override
  String get hajjScreenSubtitle => 'ڕاھێنی گاوتووگاوتی بۆ حجی گرانبار';

  @override
  String get umrahCardTitle => 'عمرە';

  @override
  String get umrahCardSubtitle => 'حجی کچک';

  @override
  String get umrahCardDescription =>
      'سفرێکی رووحانی بە ھیوا کە دەتوانرێت ھەرکاتێ ئەنجام درێت';

  @override
  String get umrahScreenTitle => 'ڕاھێنی عمرە';

  @override
  String get umrahScreenSubtitle => 'ڕاھێنی گاوتووگاوتی بۆ حجی کچک';

  @override
  String get pilgrimageStepsTitle => 'جۆبنەمال و گاوتوو';

  @override
  String get pilgrimageImportantNotesTitle => 'یادداریی گرینگ';

  @override
  String get pilgrimageDuaTitle => 'دعا بۆ ئەم پەیامە';

  @override
  String get pilgrimageJafariNoteTitle => 'تێبینی فقهی جافەری';

  @override
  String get pilgrimageComplete => '✓ تەواو';

  @override
  String get pilgrimageMarkDone => 'بە شێوەیەکی تەواو نیشانی بکە';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done لە $total پەیامەکان';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes خولەک';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'حاجیانی شیعە';

  @override
  String get pilgrimageShiaNoteBody =>
      'حاجیانی شیعە یادی ھەتاو مدینە بزان بۆ دیدنی قبری پێغەمبەر محمد (ﷺ) لە مسجدی نبوی، و قبری ئیمامان لە جنە البقیع. ئەم دیدارانە نیفەتە رووحانی بە ھیوا و دانراو گرینگی لە سفری ھیندی شیعیان.';

  @override
  String get hajjIntro =>
      'حج پشتی پنجەمی ئیسلام، واجب یەک جار لە تێدا ھەر مسلمی توانای جسمانی و دارایی. انجام دات لە مانگی ذالحجە، جۆیت رێی ئیبراھیم (ع)، کوری ھاجاری (ع)، و لیدی هاجار. بۆ مسلمانی شیعە، حج هەروەسا تێکەڵ دیدنی جێی دیدنی پێغەمبەر (ﷺ) و ئەھلبەیت لە مدینە.';

  @override
  String get umrahIntro =>
      'عمرە حجی کچک بۆ مەکە و، جیاوازت حج، دەتوانرێت ھەرکاتێ سالدا انجام درێت. گرچی واجب نیە، بەڵام پاداشتی رووحانی بە ھیوا و دانراو عمل پیروەزت. شاتوە ھیندی جۆبنەمالی حج دەشاریتە لە هیندی سادە، تێکەڵ چوار جۆبنەمالی سەرەکی.';
}
