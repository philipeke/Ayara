// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'আপনার ভাষা নির্বাচন করুন';

  @override
  String get languageSelectSub =>
      'আপনি পরে Settings থেকে এটি পরিবর্তন করতে পারবেন';

  @override
  String get actionContinue => 'চালিয়ে যান';

  @override
  String get languageSuggestedHeader => 'প্রস্তাবিত';

  @override
  String get languageAllHeader => 'সব ভাষা';

  @override
  String get languageSuggestedBadge => 'প্রস্তাবিত';

  @override
  String get languageSearchHint => 'খুঁজুন…';

  @override
  String get planBasic => 'স্ট্যান্ডার্ড';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'দৈনিক দিকনির্দেশনা';

  @override
  String get categorySlot02 => 'ঈমান ও ভরসা';

  @override
  String get categorySlot03 => 'নামাজের ভাবনা';

  @override
  String get categorySlot04 => 'ধৈর্য ও আশা';

  @override
  String get categorySlot05 => 'ক্ষমা প্রার্থনা';

  @override
  String get categorySlot06 => 'দয়া ও সহমর্মিতা';

  @override
  String get categorySlot07 => 'ঈমানের শক্তি';

  @override
  String get categorySlot08 => 'কৃতজ্ঞ হৃদয়';

  @override
  String get categorySlot09 => 'জীবনের উদ্দেশ্য';

  @override
  String get categorySlot10 => 'পারিবারিক বন্ধন';

  @override
  String get categorySlot11 => 'অন্তরের শান্তি';

  @override
  String get categorySlot12 => 'নবীর প্রজ্ঞা';

  @override
  String get categorySlot13 => 'সুন্দর চরিত্র';

  @override
  String get categorySlot14 => 'প্রলোভন প্রতিরোধ';

  @override
  String get categorySlot15 => 'সন্ধ্যার জিকির';

  @override
  String get categoryCustom => 'ব্যক্তিগত চিন্তন';

  @override
  String get dhikrMeaningSubhanallah => 'আল্লাহ পবিত্র';

  @override
  String get dhikrMeaningAlhamdulillah => 'সব প্রশংসা আল্লাহর';

  @override
  String get dhikrMeaningAllahuAkbar => 'আল্লাহ সর্বশ্রেষ্ঠ';

  @override
  String get quranVerseHeartAtRest =>
      'নিশ্চয়ই, আল্লাহর স্মরণেই অন্তরসমূহ প্রশান্তি পায়।';

  @override
  String get promptHint =>
      'ইসলামি দিকনির্দেশনা ও চিন্তনের জন্য একটি বিভাগে ট্যাপ করুন';

  @override
  String get currentLanguage => 'বর্তমান ভাষা';

  @override
  String get settingsLanguage => 'ভাষার সেটিংস';

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get chooseLanguage => 'আপনার ভাষা নির্বাচন করুন';

  @override
  String get continueCta => 'চালিয়ে যান';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count শব্দ',
      one: '$count শব্দ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'বিকল্প';

  @override
  String get newCta => 'নতুন';

  @override
  String get actionsTitle => 'আপনি কী করতে চান?';

  @override
  String get copy => 'কপি';

  @override
  String get share => 'শেয়ার';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get copiedToast => 'ক্লিপবোর্ডে কপি হয়েছে';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'নতুন উত্তর তৈরি করা যায়নি';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nআপনি কি আবার চেষ্টা করতে চান?';
  }

  @override
  String get cancelCta => 'বাতিল';

  @override
  String get retryCta => 'আবার চেষ্টা করুন';

  @override
  String get authTitle => 'আপনার অ্যাকাউন্ট তৈরি করুন';

  @override
  String get continueAsGuest => 'অতিথি হিসেবে চালিয়ে যান';

  @override
  String get signInGoogle => 'Google দিয়ে সাইন ইন করুন';

  @override
  String get signInApple => 'Apple দিয়ে সাইন ইন করুন';

  @override
  String get signInEmail => 'ইমেইল দিয়ে সাইন ইন করুন';

  @override
  String get upgradeWithApple => 'Apple দিয়ে চালিয়ে যান';

  @override
  String get mustAccept =>
      'আপনাকে Terms মেনে নিতে হবে এবং Privacy Policy স্বীকার করতে হবে।';

  @override
  String get termsLabel => 'আমি Terms of Service মেনে নিচ্ছি';

  @override
  String get privacyLabel => 'আমি Privacy Policy পড়েছি';

  @override
  String get marketingOptIn => 'আমি খবর ও অফার পেতে সম্মত';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'অ্যাকাউন্ট';

  @override
  String get guestMode => 'অতিথি মোড';

  @override
  String get signedIn => 'সাইন ইন করা হয়েছে';

  @override
  String get upgradeHint =>
      'একটি অ্যাকাউন্ট তৈরি করলে আপনার চিন্তনগুলো বিভিন্ন ডিভাইসে সংরক্ষণ করতে পারবেন।';

  @override
  String get upgradeWithGoogle => 'Google দিয়ে চালিয়ে যান';

  @override
  String get signOut => 'সাইন আউট';

  @override
  String get snackUpgraded => 'Google দিয়ে অ্যাকাউন্ট আপগ্রেড হয়েছে ✅';

  @override
  String get snackSignedIn => 'Google দিয়ে সাইন ইন হয়েছে ✅';

  @override
  String get snackSignedOut => 'সাইন আউট হয়েছে';

  @override
  String get snackSignedInApple => 'Apple দিয়ে সাইন ইন হয়েছে ✅';

  @override
  String get snackSignedInGoogle => 'Google দিয়ে সাইন ইন হয়েছে ✅';

  @override
  String get snackUpgradedApple => 'Apple দিয়ে অ্যাকাউন্ট আপগ্রেড হয়েছে ✅';

  @override
  String get snackUpgradedGoogle => 'Google দিয়ে অ্যাকাউন্ট আপগ্রেড হয়েছে ✅';

  @override
  String get historyTitle => 'পূর্বের চিন্তনসমূহ';

  @override
  String get historyOpenCta => 'পূর্বের চিন্তনসমূহ';

  @override
  String get historyEmpty => 'এখনও কোনো সংরক্ষিত চিন্তন নেই।';

  @override
  String get historyDeleteTitle => 'চিন্তনটি মুছে ফেলবেন?';

  @override
  String get historyDeleteBody =>
      'এটি নির্বাচিত আইটেমটি স্থায়ীভাবে সরিয়ে দেবে।';

  @override
  String get deleteCta => 'মুছুন';

  @override
  String get historyButton => 'পূর্বের চিন্তনসমূহ';

  @override
  String get historyEmptyTitle => 'এখনও কোনো চিন্তন নেই';

  @override
  String get historyEmptyBody =>
      'আগে কিছু তৈরি করুন — আপনার সংরক্ষিত আইটেমগুলো এখানে দেখা যাবে।';

  @override
  String get historyDelete => 'মুছুন';

  @override
  String get footerTitle => 'Wilaya, Iman ও Sabr-এর সাথে';

  @override
  String get footerSubtitle => 'এক সময়ে একটি দোয়া';

  @override
  String get genericErrorSnack =>
      'কিছু একটা ভুল হয়েছে — অনুগ্রহ করে একটু পর আবার চেষ্টা করুন।';

  @override
  String get upgradeAccountCta =>
      'বিভিন্ন ডিভাইসে আপনার চিন্তন সংরক্ষণ করুন – একটি অ্যাকাউন্ট তৈরি করুন';

  @override
  String get deleteAccount => 'অ্যাকাউন্ট মুছুন';

  @override
  String get exportData => 'আমার ডেটা এক্সপোর্ট করুন';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'আস্তে 🐯\nAyara-এর পরেরটির আগে একটু সময় দরকার…';

  @override
  String get rateDailyLimit =>
      'এখন আপনার চিন্তন ফুরিয়ে গেছে।\nআরও চিন্তন নিন বা Wilaya-তে আপগ্রেড করুন।';

  @override
  String get rateCreditsExhausted =>
      'আপনি আপনার সব চিন্তন ব্যবহার করে ফেলেছেন।\nআরও নিন বা Wilaya-তে আপগ্রেড করে চালিয়ে যান।';

  @override
  String get rateGraceCreditsExhausted =>
      'এখন আপনার চিন্তন ফুরিয়ে গেছে।\nআরও চিন্তন নিন বা Wilaya-তে আপগ্রেড করুন।';

  @override
  String get premiumDescription =>
      'Wilaya প্রিমিয়াম ফিচার, ভবিষ্যতের বিভাগসমূহ এবং একটি বিশেষ ব্যাজ আনলক করে।';

  @override
  String ratePlanExhausted(String plan) {
    return 'এই মুহূর্তে আপনার চিন্তন ফাঁকা। প্ল্যান: $plan।';
  }

  @override
  String rateCheckFailed(String message) {
    return 'আপনার চিন্তন যাচাই করা যায়নি: $message';
  }

  @override
  String get rateCheckGenericError =>
      'আপনার চিন্তন যাচাই করার সময় কিছু একটা ভুল হয়েছে।';

  @override
  String get aiFallbackGeneric =>
      'কিছু একটা ভুল হয়েছে — অনুগ্রহ করে একটু পর আবার চেষ্টা করুন।';

  @override
  String get limitSectionTitle => 'চিন্তনসমূহ';

  @override
  String get limitTodayLabel => 'ব্যবহার';

  @override
  String limitCreditsLabel(Object credits) {
    return 'অবশিষ্ট চিন্তন: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'প্ল্যান: $plan';
  }

  @override
  String get limitLoadingLabel => 'লোড হচ্ছে…';

  @override
  String get limitLoadingLabelDescription =>
      'ব্যবহারের পরিসংখ্যান আনা হলে reflections card-এ দেখানো হয়।';

  @override
  String get aiLimitTitle => 'চিন্তনসমূহ';

  @override
  String get aiLimitSubtitle =>
      'প্রতিটি উত্তর ১টি চিন্তন ব্যবহার করে। স্ট্যান্ডার্ডে starter reflections অন্তর্ভুক্ত থাকে। Wilaya প্রিমিয়াম বিভাগসমূহ আনলক করে এবং টপ-আপ সুবিধা দেয়।';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total চিন্তন ব্যবহার হয়েছে';
  }

  @override
  String get creditsSectionTitle => 'চিন্তনসমূহ';

  @override
  String get creditsUsageLabel => 'ব্যবহার';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'অবশিষ্ট চিন্তন: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'প্ল্যান: $plan';
  }

  @override
  String get creditsLoadingLabel => 'লোড হচ্ছে…';

  @override
  String get creditsLoadingLabelDescription =>
      'চিন্তনের পরিসংখ্যান আনা হলে দেখানো হয়।';

  @override
  String get creditsTitle => 'চিন্তনসমূহ';

  @override
  String get creditsSubtitle =>
      'প্রতিটি উত্তর ১টি চিন্তন ব্যবহার করে। স্ট্যান্ডার্ডে starter reflections অন্তর্ভুক্ত থাকে। Wilaya প্রিমিয়াম বিভাগসমূহ আনলক করে এবং টপ-আপ সুবিধা দেয়।';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total চিন্তন ব্যবহার হয়েছে';
  }

  @override
  String get settingsDeleteTitle => 'অ্যাকাউন্ট মুছুন';

  @override
  String get settingsDeleteDescription =>
      'আপনার অ্যাকাউন্ট ও সংশ্লিষ্ট সব ডেটা স্থায়ীভাবে মুছে ফেলুন।';

  @override
  String get settingsDeleteButtonLabel => 'আমার অ্যাকাউন্ট মুছুন';

  @override
  String get settingsDeleteDialogTitle => 'অ্যাকাউন্ট মুছবেন?';

  @override
  String get settingsDeleteDialogBody =>
      'এই কাজটি স্থায়ী এবং আর ফিরিয়ে আনা যাবে না।\n\nআপনার সব chats, history এবং account information মুছে ফেলা হবে।';

  @override
  String get settingsDeleteDialogCancel => 'বাতিল';

  @override
  String get settingsDeleteDialogConfirm => 'মুছুন';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Starter reflections ব্যবহার করা হয়েছে';

  @override
  String get settingsFreeLimitUsedDescription =>
      'এই ডিভাইসের starter reflections ব্যবহার করা হয়ে গেছে। চালিয়ে যেতে Wilaya-তে আপগ্রেড করুন বা আরও চিন্তন কিনুন।';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Starter reflections ব্যবহার করা হয়েছে';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'এই ডিভাইসের starter reflections ব্যবহার করা হয়ে গেছে। চালিয়ে যেতে Wilaya-তে আপগ্রেড করুন বা আরও চিন্তন কিনুন।';

  @override
  String get deviceBoundError =>
      'এই ডিভাইসটি ইতিমধ্যে অন্য একটি অ্যাকাউন্টের সাথে যুক্ত। অনুগ্রহ করে মূল অ্যাকাউন্ট দিয়ে সাইন ইন করুন।';

  @override
  String get premiumTitle => 'Wilaya মোড';

  @override
  String get premiumSubtitleBasic => 'Ayara-এর পূর্ণ অভিজ্ঞতা আনলক করুন।';

  @override
  String get premiumSubtitlePremium =>
      'আপনি এখন Wilaya-তে আছেন। আরও চিন্তন দরকার?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'বর্তমান প্ল্যান: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'চিন্তন: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'এই মুহূর্তে কেনাকাটা উপলভ্য নয়।';

  @override
  String get premiumSignInToPurchase =>
      'চিন্তন কিনতে বা Wilaya আনলক করতে সাইন ইন করুন।';

  @override
  String get premiumRestorePurchases => 'কেনাকাটা পুনরুদ্ধার করুন';

  @override
  String get premiumProcessing => 'প্রসেস হচ্ছে…';

  @override
  String get premiumRestoreHintTitle =>
      'এই ডিভাইস বা অন্য কোনো ডিভাইসে আগে Wilaya বা চিন্তন কিনেছেন?';

  @override
  String get premiumRestoreHintBody =>
      'যদি সেগুলো দেখা না যায়, আপনার কেনাকাটা পুনরুদ্ধার করুন।';

  @override
  String get premiumBuyCredits200 => '২০০ চিন্তন কিনুন';

  @override
  String get premiumBuyCredits400 => '৪০০ চিন্তন কিনুন';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya মোডে আপগ্রেড করুন';

  @override
  String get premiumTopupHint =>
      'Wilaya-এর সঙ্গে আপনি যখনই প্রয়োজন অতিরিক্ত চিন্তন টপ-আপ করতে পারবেন।';

  @override
  String get premiumUpgradeCta => 'আপগ্রেড';

  @override
  String get premiumRequiredForCategory =>
      'এই বিভাগটি শুধুমাত্র Wilaya ব্যবহারকারীদের জন্য উপলভ্য। সব প্রিমিয়াম কনটেন্ট আনলক করতে Settings থেকে আপগ্রেড করুন।';

  @override
  String get premiumBenefitsBasic =>
      'অতিরিক্ত চিন্তন, প্রিমিয়াম বিভাগসমূহে প্রবেশাধিকার, এবং যখনই দিকনির্দেশনা দরকার তখন চালিয়ে যাওয়ার জন্য Wilaya আনলক করুন।';

  @override
  String get premiumBenefitsPremium =>
      'আপনি এখন Wilaya মোডে আছেন। যদি কমে আসে, কিছু অতিরিক্ত চিন্তন যোগ করুন এবং বাধাহীনভাবে চালিয়ে যান।';

  @override
  String get premiumButtonBecomePremium => 'Wilaya আনলক করুন';

  @override
  String get premiumButtonTopup1000 => '১০০০ চিন্তন যোগ করুন';

  @override
  String get premiumBadge => 'Wilaya সক্রিয়';

  @override
  String get premiumLoadingStore => 'স্টোর লোড হচ্ছে…';

  @override
  String get premiumProductNotAvailable =>
      'এই পণ্যটি এখনো স্টোরে উপলভ্য নয়। অনুগ্রহ করে পরে আবার চেষ্টা করুন।';

  @override
  String get premiumPurchaseError =>
      'কেনাকাটায় কিছু একটা ভুল হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get premiumBuyCredits100 => '১০০ চিন্তন যোগ করুন';

  @override
  String get premiumFeatureLocked => 'এই ফিচার ব্যবহার করতে Wilaya আনলক করুন।';

  @override
  String get lockedCategoriesHint =>
      'কিছু বিভাগ Wilaya সদস্যদের জন্য সংরক্ষিত। আপনার যাত্রার সব চিন্তন অন্বেষণ করতে সেগুলো আনলক করুন।';

  @override
  String get freePlanBlockedTitle =>
      'আপনি আপনার starter reflections ব্যবহার করে শেষ করেছেন';

  @override
  String get freePlanBlockedBody =>
      'আপনি স্ট্যান্ডার্ড প্ল্যানে starter reflections-সহ আছেন, এবং সীমায় পৌঁছে গেছেন। চালিয়ে যেতে — এবং প্রিমিয়াম বিভাগসমূহ আনলক করতে — Wilaya-তে আপগ্রেড করুন।';

  @override
  String get freePlanBlockedCtaGoPremium => 'নিচের Wilaya অপশনগুলো দেখুন';

  @override
  String get graceBlockedTitle =>
      'আপনি আপনার starter reflections ব্যবহার করে শেষ করেছেন';

  @override
  String get graceBlockedBody =>
      'আপনি স্ট্যান্ডার্ড প্ল্যানে starter reflections-সহ আছেন, এবং সীমায় পৌঁছে গেছেন। চালিয়ে যেতে — এবং প্রিমিয়াম বিভাগসমূহ আনলক করতে — Wilaya-তে আপগ্রেড করুন।';

  @override
  String get graceBlockedCtaGoPremium => 'নিচের Wilaya অপশনগুলো দেখুন';

  @override
  String get rateGuestMustSignIn =>
      'Ayara এবং আপনার চিন্তন ব্যবহার করতে সাইন ইন করুন।';

  @override
  String get guestNoCreditsTitle => 'অতিথি মোড';

  @override
  String get guestNoCreditsBody =>
      'অতিথি হিসেবে আপনি অ্যাপ ব্রাউজ করতে পারবেন, কিন্তু চিন্তন ব্যবহার করতে পারবেন না। পরে Settings থেকে লগ ইন করে চিন্তন ব্যবহার করুন এবং কেনাকাটা আনলক করুন।';

  @override
  String get guestDialogContinue => 'চালিয়ে যান';

  @override
  String get guestDialogLoginInstead => 'তার বদলে লগ ইন করুন';

  @override
  String get optionalLabel => 'ঐচ্ছিক';

  @override
  String get accountDeleteSuccessTitle => 'অ্যাকাউন্ট মুছে ফেলা হয়েছে';

  @override
  String get accountDeleteSuccessBody =>
      'আপনার অ্যাকাউন্ট এবং সংশ্লিষ্ট ডেটা সফলভাবে মুছে ফেলা হয়েছে।';

  @override
  String get accountDeleteSuccessClose => 'বন্ধ করুন';

  @override
  String get accountDeleteErrorTitle => 'অ্যাকাউন্ট মুছে ফেলা যায়নি';

  @override
  String get accountDeleteErrorClose => 'ঠিক আছে';

  @override
  String get accountDeleteReauthCancelled =>
      'পুনরায়-প্রমাণীকরণ বাতিল হয়েছে। অনুগ্রহ করে আবার সাইন ইন করে পুনরায় চেষ্টা করুন।';

  @override
  String get accountDeleteReauthRequired =>
      'অ্যাকাউন্ট মুছতে সাম্প্রতিক লগইন প্রয়োজন। অনুগ্রহ করে সাইন আউট করুন, আবার সাইন ইন করুন, এবং পুনরায় চেষ্টা করুন।';

  @override
  String get settingsDeletePermanentWarning =>
      'এই কাজটি স্থায়ী এবং ফিরিয়ে আনা যাবে না। আপনার অ্যাকাউন্টের সাথে যুক্ত সব ডেটা মুছে ফেলা হবে।';

  @override
  String get dailyGraceTitle => 'দৈনিক দিকনির্দেশনা';

  @override
  String get dailyGraceScriptureLabel => 'আজকের আয়াত';

  @override
  String get dailyGraceSaintLabel => 'সপ্তাহের ব্যক্তিত্ব';

  @override
  String get dailyGraceReflectionLabel => 'সন্ধ্যার চিন্তন';

  @override
  String get dailyGraceCopiedToast => 'আয়াত ক্লিপবোর্ডে কপি হয়েছে';

  @override
  String get locationConsentLabel =>
      'কিবলা দিকনির্দেশনা ও নামাজের সময়ের জন্য Ayara-কে আমার অবস্থান ব্যবহার করতে অনুমতি দিন';

  @override
  String get locationConsentHint =>
      'শুধু এই ফিচারগুলোর জন্য ব্যবহার করা হয়। আপনার অবস্থান কখনো শেয়ার বা সংরক্ষণ করা হয় না।';

  @override
  String get askPageTitle => 'Ayara-কে জিজ্ঞাসা করুন';

  @override
  String get askPageDescription =>
      'ঈমান, নামাজ, জীবন বা ইসলামি অনুশীলন সম্পর্কে যেকোনো কিছু জিজ্ঞাসা করুন এবং কুরআন ও আহলুল বায়তের শিক্ষার ভিত্তিতে দিকনির্দেশনা পান।';

  @override
  String get askPageInputHint => 'এখানে আপনার প্রশ্ন লিখুন…';

  @override
  String get askPageSubmitCta => 'জিজ্ঞাসা করুন';

  @override
  String get askPageInputEmptyError => 'অনুগ্রহ করে আগে একটি প্রশ্ন লিখুন।';

  @override
  String get askResultYourQuestion => 'আপনার প্রশ্ন';

  @override
  String get guidancePageTitle => 'কিবলা';

  @override
  String get qiblaFacingMecca => 'মক্কার দিকে মুখ করে';

  @override
  String get qiblaCompassInstruction =>
      'সোনালি সূঁচটি উপরের দিকে নির্দেশ না করা পর্যন্ত আপনার ফোনটি ঘোরান।\nসেই দিকটাই কিবলার দিক (মক্কা)।';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS সিগন্যাল দুর্বল। বাইরে যান এবং Retry ট্যাপ করুন।';

  @override
  String get qiblaRetry => 'আবার চেষ্টা করুন';

  @override
  String get qiblaTitle => 'কিবলার দিক';

  @override
  String qiblaDistanceLabel(String km) {
    return 'মক্কা পর্যন্ত $km কিমি';
  }

  @override
  String get qiblaLocationNeededTitle => 'অবস্থান প্রয়োজন';

  @override
  String get qiblaLocationNeededBody =>
      'আপনি যেখানেই থাকুন না কেন, সেখান থেকে মক্কার কাবার দিক গণনা করতে Ayara-কে location access দিন।';

  @override
  String get qiblaOpenSettings => 'Settings খুলুন';

  @override
  String get qiblaCompassLoading => 'আপনার অবস্থান খোঁজা হচ্ছে…';

  @override
  String get qiblaTowardMecca => 'মক্কার দিকে';

  @override
  String get prayerTimesTitle => 'নামাজের সময়সমূহ';

  @override
  String get prayerTimesFajr => 'ফজর';

  @override
  String get prayerTimesDhuhr => 'যোহর';

  @override
  String get prayerTimesAsr => 'আসর';

  @override
  String get prayerTimesMaghrib => 'মাগরিব';

  @override
  String get prayerTimesIsha => 'ইশা';

  @override
  String get prayerTimesLocationNeededTitle => 'অবস্থান প্রয়োজন';

  @override
  String get prayerTimesLocationNeededBody =>
      'আপনার শহরের জন্য সঠিক নামাজের সময় গণনা করতে Ayara-কে location access দিন।';

  @override
  String get prayerTimesNextLabel => 'পরবর্তী';

  @override
  String get prayerTimesDoneLabel => 'সম্পন্ন';

  @override
  String get monthlyPrayerTimesTitle => 'মাসিক নামাজের সময়';

  @override
  String get monthlyPrayerTimesViewButton => 'পুরো মাস দেখুন';

  @override
  String get monthlyPrayerTimesNextMonth => 'পরের মাস';

  @override
  String get monthlyPrayerTimesDayHeader => 'দিন';

  @override
  String get sharePrayerTimes => 'নামাজের সময় শেয়ার করুন';

  @override
  String get notificationsSectionTitle => 'নোটিফিকেশনসমূহ';

  @override
  String get notificationsSectionSubtitle =>
      'নামাজের স্মরণ, ক্যালেন্ডার ইভেন্ট ও আরও অনেক কিছু';

  @override
  String get dailyReflectionReminderTitle => 'দৈনিক চিন্তন';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara খুলতে এবং আপনার ঈমানের সাথে সংযুক্ত থাকতে একটি কোমল দৈনিক স্মরণ।';

  @override
  String get dailyReflectionReminderEnable => 'দৈনিক স্মরণ চালু করুন';

  @override
  String get dailyReflectionReminderTimeLabel => 'স্মরণের সময়';

  @override
  String get prayerNotificationsTitle => 'নামাজের স্মরণ';

  @override
  String get prayerNotificationsDescription =>
      'সারা দিন সংযুক্ত থাকতে প্রতিটি নামাজের সময়ের আগে একটি কোমল স্মরণ পান।';

  @override
  String get prayerNotificationsEnable => 'নামাজের স্মরণ চালু করুন';

  @override
  String get prayerNotificationsOpenSettings => 'নোটিফিকেশন সেটিংস খুলুন';

  @override
  String get prayerNotificationsDenied => 'নোটিফিকেশন বন্ধ আছে';

  @override
  String get prayerNotificationsDeniedHint =>
      'নামাজের সময়ের স্মরণ পেতে Settings-এ গিয়ে Ayara-এর জন্য notifications অনুমতি দিন।';

  @override
  String get notificationsConsentLabel =>
      'নামাজের সময়ের জন্য notifications অনুমতি দিন';

  @override
  String get prayerNotifTitleFajr => '🌅 ফজর — ভোরের নামাজ';

  @override
  String get prayerNotifBodyFajr =>
      'ফজর হলো আহলুল বায়তের সকালবেলার নামাজ। ইমাম আলী (আ.) বলেছেন: ফজরের নামাজকে তেমনভাবে রক্ষা করো, যেমন তোমরা তোমাদের অমূল্য আমানত রক্ষা করো। উঠো, পবিত্র হও, এবং আল্লাহর সামনে দাঁড়াও।';

  @override
  String get prayerNotifTitleDhuhr => '☀️ যোহর — মধ্যাহ্নের নামাজ';

  @override
  String get prayerNotifBodyDhuhr =>
      'আহলুল বায়তের ইমামগণ স্মরণের প্রতিটি মুহূর্তকে মূল্য দিয়েছেন। আপনার দিনটাকে একটু থামান, প্রয়োজন হলে যোহর ও আসর একসাথে আদায় করুন, এবং আপনার হৃদয়কে আল্লাহর দিকে ফিরিয়ে আনুন।';

  @override
  String get prayerNotifTitleAsr => '🌤️ আসর — বিকেলের নামাজ';

  @override
  String get prayerNotifBodyAsr =>
      'নামাজকে রক্ষা করো, কারণ এটি তোমার ও আল্লাহর মধ্যে অঙ্গীকার। আসরের সময় এসেছে — স্মরণ ছাড়া এটিকে চলে যেতে দিও না।';

  @override
  String get prayerNotifTitleMaghrib => '🌇 মাগরিব — সূর্যাস্তের নামাজ';

  @override
  String get prayerNotifBodyMaghrib =>
      'সূর্য অস্ত গেছে — আহলুল বায়ত যাকে দোয়ার জন্য পবিত্র মুহূর্ত মনে করতেন। মাগরিব আদায় করুন এবং রাত শুরু হওয়ার আগে আল্লাহর কাছে দোয়ার জন্য আপনার হাত উঠান।';

  @override
  String get prayerNotifTitleIsha => '🌙 ইশা — রাতের নামাজ';

  @override
  String get prayerNotifBodyIsha =>
      'আপনার দিনটি আল্লাহর সঙ্গেই শেষ করুন। ইমামগণ ইশার পর সালাতুল লাইলের প্রতি উৎসাহ দিয়েছেন — তবে আগে আপনার ইশা সম্পন্ন করুন এবং তাঁর স্মরণ দিয়ে দিন শেষ করুন।';

  @override
  String get outOfReflectionsBannerText =>
      'আপনি আপনার সব চিন্তন ব্যবহার করেছেন';

  @override
  String get outOfReflectionsBannerCta => 'আরও নিন';

  @override
  String get dhikrPageTitle => 'জিকির';

  @override
  String get dhikrTapToCount => 'গণনার জন্য বৃত্তটিতে ট্যাপ করুন';

  @override
  String get dhikrResetButton => 'রিসেট';

  @override
  String get dhikrComplete => 'মাশাআল্লাহ';

  @override
  String get dhikrCompleteMessage =>
      'আপনি আল্লাহর ১০০ বার স্মরণ সম্পন্ন করেছেন। এগুলো আপনার হৃদয়ের জন্য নূর হোক।';

  @override
  String get disclaimerTitle => 'এই অ্যাপের দিকনির্দেশনা সম্পর্কে';

  @override
  String get disclaimerBody =>
      'Ayara আপনার ব্যক্তিগত ঈমানের যাত্রাকে সহায়তা করার জন্য কুরআন ও আহলুল বায়তের শিক্ষার ভিত্তিতে ইসলামি চিন্তন, স্মরণ এবং আধ্যাত্মিক বিষয়বস্তু প্রদান করে। এই বিষয়বস্তু শুধুমাত্র সাধারণ তথ্যগত ও অনুপ্রেরণামূলক উদ্দেশ্যে প্রদান করা হয়।\n\nAyara যোগ্য আলেমের বিকল্প নয়।\nএই অ্যাপে থাকা দিকনির্দেশনা কোনো জ্ঞানী ইসলামি scholar, marja\', বা ধর্মতাত্ত্বিকভাবে প্রশিক্ষিত শিক্ষকের বিকল্প নয়। শিয়া ইসলামে, ধর্মীয় দিকনির্দেশনা জাফরী ফিকহের মাযহাব এবং একজন জীবিত Marja\' (অনুসরণের উৎস) অনুসরণের ঐতিহ্যের ওপর ভিত্তি করে — একজন যোগ্য ফকীহ যার বিধান মুমিনদের ধর্মীয় অনুশীলনে পথ দেখায়। আপনার যদি ধর্মীয় বিধান, হালাল-হারাম বিষয়, বা ব্যক্তিগত ধর্মীয় দায়িত্ব সম্পর্কে প্রশ্ন থাকে, অনুগ্রহ করে একজন যোগ্য Marja\' বা আপনার সম্প্রদায়ের একজন scholar-এর পরামর্শ নিন।\n\nএই অ্যাপ ধর্মীয় বিধান জারি করে না।\nAyara ফিকহ বা ব্যক্তিগত ধর্মীয় দায়িত্ব সম্পর্কিত বিষয়ে কর্তৃত্বপূর্ণ সিদ্ধান্ত দেয় না। এখানে কিছুই fatwa বা বাধ্যতামূলক ধর্মীয় নির্দেশনা হিসেবে গণ্য করা উচিত নয়।\n\nআহলুল বায়তের কেন্দ্রীয়তা।\nশিয়া ইসলামে, নবী মুহাম্মদ ﷺ এবং তাঁর পবিত্র পরিবার — আহলুল বায়ত — কুরআনের পর ইসলামী সমাজের কর্তৃত্বশীল পথপ্রদর্শক। আহলুল বায়তের বারোজন ইমাম ইসলামি শিক্ষার দিভ্যভাবে নিযুক্ত ব্যাখ্যাকার। এই অ্যাপের বিষয়বস্তু এই ঐতিহ্যকে প্রতিফলিত করে এবং বিশ্বস্ততার সাথে তা সম্মান করতে চায়।\n\nসম্প্রদায়ের গুরুত্ব।\nএই অ্যাপ আপনার ঈমানের সঙ্গে সম্পৃক্ততাকে উৎসাহিত করতে চায়, পাশাপাশি আপনার স্থানীয় মসজিদ, ইসলামিক সেন্টার এবং ধর্মীয় সম্প্রদায়ের গুরুত্বপূর্ণ ভূমিকাকে গভীরভাবে সম্মান করে। আমরা আপনাকে আপনার নিকটস্থ যোগ্য শিক্ষকদের সঙ্গে সংযুক্ত থাকতে এবং তাদের থেকে শিখতে উৎসাহিত করি।';

  @override
  String get disclaimerClose => 'আমি বুঝেছি';

  @override
  String get disclaimerInfoTooltip => 'এই অ্যাপের দিকনির্দেশনা সম্পর্কে';

  @override
  String get disclaimerSettingsSubtitle =>
      'শুধুমাত্র সাধারণ তথ্যগত উদ্দেশ্যে। সম্পূর্ণ disclaimer পড়তে ট্যাপ করুন।';

  @override
  String get disclaimerSectionHeader => 'দিকনির্দেশনা disclaimer';

  @override
  String get navHome => 'হোম';

  @override
  String get navReflect => 'চিন্তন';

  @override
  String get navDuas => 'দোয়াসমূহ';

  @override
  String get navCalendar => 'ক্যালেন্ডার';

  @override
  String get dashboardToday => 'আজ';

  @override
  String get dashboardComingUp => 'সামনে আসছে';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'দিন',
      one: 'দিন',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'দ্রুত প্রবেশ';

  @override
  String get quickActionQibla => 'কিবলা';

  @override
  String get quickActionDhikr => 'জিকির';

  @override
  String get quickActionDailyGrace => 'দিকনির্দেশনা';

  @override
  String get quickActionPrayerTimes => 'নামাজের সময়';

  @override
  String get askAyaraTitle => 'Ayara-কে জিজ্ঞাসা করুন';

  @override
  String get askAyaraSubtitle =>
      'যেকোনো ইসলামি প্রশ্ন জিজ্ঞাসা করুন এবং একটি চিন্তাশীল, দিকনির্দেশনামূলক উত্তর পান।';

  @override
  String get askAyaraHint => 'যেমন: রমাদানের তাৎপর্য কী?';

  @override
  String get askAyaraSubmit => 'জিজ্ঞাসা করুন';

  @override
  String get wisdomOfTheDayTitle => 'আজকের প্রজ্ঞা';

  @override
  String get calendarScreenTitle => 'ইসলামিক ক্যালেন্ডার';

  @override
  String get calendarUpcomingOccasions => 'আসন্ন উপলক্ষসমূহ';

  @override
  String get calendarOccasionRemindersTitle => 'উপলক্ষ স্মরণ';

  @override
  String get calendarOccasionRemindersHint =>
      'প্রতিটি উপলক্ষের আগের সন্ধ্যায় জানানো হবে';

  @override
  String get calendarNotifPermissionDenied =>
      'নোটিফিকেশন অনুমতি প্রত্যাখ্যান করা হয়েছে। আপনার ডিভাইসের settings-এ এটি চালু করুন।';

  @override
  String get calendarNoEvents => 'কোনো আসন্ন ইভেন্ট পাওয়া যায়নি।';

  @override
  String get calendarAddToPhone => 'ফোন ক্যালেন্ডারে যোগ করুন';

  @override
  String get calendarAddedToPhone => 'ক্যালেন্ডারে যোগ করা হয়েছে';

  @override
  String get calendarCountdownToday => 'আজ';

  @override
  String get calendarCountdownTomorrow => 'আগামীকাল';

  @override
  String calendarCountdownDays(int days) {
    return '$days দিনের মধ্যে';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'জানু';

  @override
  String get calendarMonthFeb => 'ফেব্রু';

  @override
  String get calendarMonthMar => 'মার্চ';

  @override
  String get calendarMonthApr => 'এপ্রিল';

  @override
  String get calendarMonthMay => 'মে';

  @override
  String get calendarMonthJun => 'জুন';

  @override
  String get calendarMonthJul => 'জুলাই';

  @override
  String get calendarMonthAug => 'আগ';

  @override
  String get calendarMonthSep => 'সেপ্টে';

  @override
  String get calendarMonthOct => 'অক্টো';

  @override
  String get calendarMonthNov => 'নভে';

  @override
  String get calendarMonthDec => 'ডিসে';

  @override
  String get calendarSeasonMuharramEarly =>
      'মুহররমের দিনগুলো — কারবালা স্মরণ করুন';

  @override
  String get calendarSeasonAshura => 'আশুরা — ইয়া হুসাইন (আ.)';

  @override
  String get calendarSeasonMuharramLate => 'মুহররম — শোক ও চিন্তনের দিনগুলো';

  @override
  String get calendarSeasonArbaeen => 'আরবাঈন — হুসাইনের চল্লিশ দিন';

  @override
  String get calendarSeasonRoadToArbaeen => 'আরবাঈনের পথ';

  @override
  String get calendarSeasonMabath => 'মাবআস মুবারক — ওহির ভোর';

  @override
  String get calendarSeasonMidShaban =>
      'মধ্য শাবান — ইমাম আল-মাহদী (আ.জ.)-এর জন্মদিন';

  @override
  String get calendarSeasonRamadan => 'রমাদান মুবারক — কুরআনের মাস';

  @override
  String get calendarSeasonGhadir => 'ঈদুল গাদির মুবারক!';

  @override
  String get hijriMonth1 => 'মুহররম';

  @override
  String get hijriMonth2 => 'সফর';

  @override
  String get hijriMonth3 => 'রবিউল আউয়াল';

  @override
  String get hijriMonth4 => 'রবিউস সানি';

  @override
  String get hijriMonth5 => 'জুমাদাল উলা';

  @override
  String get hijriMonth6 => 'জুমাদাস সানিয়া';

  @override
  String get hijriMonth7 => 'রজব';

  @override
  String get hijriMonth8 => 'শাবান';

  @override
  String get hijriMonth9 => 'রমাদান';

  @override
  String get hijriMonth10 => 'শাওয়াল';

  @override
  String get hijriMonth11 => 'জিলকদ';

  @override
  String get hijriMonth12 => 'জিলহজ্জ';

  @override
  String get duasScreenTitle => 'দোয়া ও জিয়ারত';

  @override
  String get duasSearchHint => 'দোয়া, জিয়ারত খুঁজুন…';

  @override
  String get duasFilterAll => 'সব';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দোয়া ও জিয়ারত',
      one: '$count দোয়া',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'কোনো দোয়া পাওয়া যায়নি।';

  @override
  String get duaCategoryDaily => 'দৈনিক';

  @override
  String get duaCategoryWeekly => 'সাপ্তাহিক';

  @override
  String get duaCategoryOccasions => 'উপলক্ষসমূহ';

  @override
  String get duaCategoryZiyarat => 'জিয়ারত';

  @override
  String get duaCategoryTasbih => 'তাসবিহ';

  @override
  String get eventTypeBirth => 'জন্ম';

  @override
  String get eventTypeMartyrdom => 'শাহাদাত';

  @override
  String get eventTypeOccasion => 'উপলক্ষ';

  @override
  String get duaCopyTooltip => 'অনুবাদ কপি করুন';

  @override
  String get duaToggleTransliteration => 'উচ্চারণলিপি';

  @override
  String get duaToggleTranslation => 'অনুবাদ';

  @override
  String get duaAskAiLabel => 'এই দোয়াটি ব্যাখ্যা করতে Ayara-কে জিজ্ঞাসা করুন';

  @override
  String get duaAskAiLockedLabel => 'Ayara-কে জিজ্ঞাসা করুন (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-এর ব্যাখ্যাগুলো Wilaya সদস্যদের জন্য উপলভ্য। Settings-এ আপগ্রেড করুন।';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" সম্পর্কে Ayara-কে জিজ্ঞাসা করুন — শীঘ্রই আসছে!';
  }

  @override
  String get duaCopiedToast => 'দোয়া ক্লিপবোর্ডে কপি হয়েছে।';

  @override
  String get tasbihAllahuAkbarMeaning => 'আল্লাহ সর্বশ্রেষ্ঠ';

  @override
  String get tasbihAlhamdulillahMeaning => 'সব প্রশংসা আল্লাহর';

  @override
  String get tasbihSubhanallahMeaning => 'আল্লাহ পবিত্র';

  @override
  String get tasbihResetTooltip => 'রিসেট';

  @override
  String get tasbihCompleteTitle => 'তাসবিহ সম্পন্ন';

  @override
  String get tasbihCompleteMessage => 'আল্লাহ আপনার জিকির কবুল করুন।';

  @override
  String get tasbihTapHint => 'গণনার জন্য যেকোনো জায়গায় ট্যাপ করুন';

  @override
  String get tasbihatScreenTitle => 'নামাজ নির্দেশিকা';

  @override
  String get tasbihatScreenSubtitle => 'নামাজের তাসবিহসমূহ';

  @override
  String get tasbihatScreenDescription =>
      'দৈনিক নামাজের সময় ও পরে পাঠ করা তাসবিহসমূহের একটি পূর্ণাঙ্গ নির্দেশিকা — আহলুল বায়তের (আ.) ঐতিহ্য অনুযায়ী।';

  @override
  String get tasbihatArba3Title => 'তাসবিহাতুল আরবা‘আ';

  @override
  String get tasbihatArba3Subtitle => '৩য় ও ৪র্থ রাকআতে পাঠ করা হয়';

  @override
  String get tasbihatArba3Info =>
      'শিয়া ফিকহে, যোহর, আসর, মাগরিব ও ইশার ৩য় ও ৪র্থ রাকআতে তাসবিহাতুল আরবা‘আ সূরা ফাতিহার পরিবর্তে পড়া হয়। এটি একবার পড়া ওয়াজিব, আর তিনবার পড়া মুস্তাহাব।';

  @override
  String get tasbihatArba3Translation =>
      'আল্লাহ পবিত্র · সব প্রশংসা আল্লাহর\nআল্লাহ ছাড়া কোনো উপাস্য নেই · আল্লাহ সর্বশ্রেষ্ঠ';

  @override
  String get tasbihatArba3CompleteTitle => 'তিলাওয়াত সম্পন্ন';

  @override
  String get tasbihatArba3CompleteMessage => 'আপনার নামাজ কবুল হোক — আমীন';

  @override
  String get tasbihatArba3TapHint => 'প্রতিটি তিলাওয়াতের পর ট্যাপ করুন';

  @override
  String get tasbihatZahraSubtitle => 'প্রতিটি নামাজের পর · ১০০ দানা';

  @override
  String get tasbihatZahraOriginLabel => 'উৎপত্তি';

  @override
  String get tasbihatZahraHadith =>
      'হযরত ফাতিমা যাহরা (সা.) নবী ﷺ-এর কাছে একজন খাদেম চেয়েছিলেন। তিনি বললেন: \"আমি কি তোমাকে এমন কিছুর পথ না দেখাই যা একজন খাদেমের চেয়েও উত্তম? প্রতিটি নামাজের পর ৩৩ বার সুবহানাল্লাহ, ৩৩ বার আলহামদুলিল্লাহ, এবং ৩৪ বার আল্লাহু আকবার পড়বে। এটি তোমার জন্য একজন খাদেমের চেয়েও উত্তম।\"';

  @override
  String get tasbihatZahraHadithSource => '— বিহারুল আনওয়ার, খণ্ড ৮৫';

  @override
  String get tasbihatZahraOpenCounter => 'তাসবিহ কাউন্টার খুলুন';

  @override
  String get tasbihatDuasTitle => 'প্রস্তাবিত দোয়াসমূহ';

  @override
  String get tasbihatDuasSubtitle => 'নামাজ সম্পন্ন করার পর';

  @override
  String get tasbihatDuaAyatKursiTitle => 'আয়াতুল কুরসি';

  @override
  String get tasbihatDuaAyatKursiWhen => 'প্রতিটি ফরজ নামাজের পর';

  @override
  String get tasbihatDuaAyatKursiSource => 'সূরা আল-বাকারা ২:২৫৫';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'যে ব্যক্তি প্রতিটি ফরজ নামাজের পর আয়াতুল কুরসি পাঠ করে, তার ও জান্নাতের মাঝে মৃত্যু ছাড়া আর কিছু থাকে না। ইমাম আল-বাকির (আ.) বলেছেন, এটি কুরআনের অন্যতম শ্রেষ্ঠ আয়াত।';

  @override
  String get tasbihatDuaSalawatTitle => 'সলাওয়াত';

  @override
  String get tasbihatDuaSalawatWhen =>
      'প্রতিটি নামাজের পর · সব দোয়া সম্পূর্ণ করে';

  @override
  String get tasbihatDuaSalawatSource => 'ইমাম আস-সাদিক (আ.) — আল-কাফি';

  @override
  String get tasbihatDuaSalawatNote =>
      'নবী ﷺ ও তাঁর পবিত্র পরিবার (আলে মুহাম্মদ)-এর ওপর সলাওয়াত পাঠ করা প্রতিটি দোয়ার শেষে মুস্তাহাব। ইমাম আস-সাদিক (আ.) বলেছেন: \"মুহাম্মদ ও তাঁর পরিবারের ওপর সলাওয়াত না পাঠানো পর্যন্ত যেকোনো দোয়া স্থগিত থাকে।\"';

  @override
  String get tasbihatDuaFarajTitle => 'দুআ আল-ফারাজ';

  @override
  String get tasbihatDuaFarajWhen =>
      'প্রতিটি নামাজের পর · আমাদের যুগের ইমামের জন্য';

  @override
  String get tasbihatDuaFarajSource =>
      'ইমাম আল-হাসান আল-আসকারি (আ.) শিখিয়েছেন';

  @override
  String get tasbihatDuaFarajNote =>
      'এটি ইমাম আল-মাহদী (আফ), দ্বাদশ ইমামের পুনরাবির্ভাবের জন্য একটি দোয়া, যা তাঁর পিতার দ্বারা শেখানো হয়েছে। এটি অনেক শিয়া মুসলমানের দ্বারা প্রার্থনার পর জীবিত ইমামের প্রতি ভক্তির কাজ হিসেবে প্রায়ই পাঠ করা হয়।';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'হযরত ফাতিমার তাসবিহ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'মাগরিব ও ইশার পর · বিশেষভাবে প্রস্তাবিত';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ইমাম আল-বাকির (আ.) — বিহারুল আনওয়ার';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ইমাম আল-বাকির (আ.) বলেছেন, ঘুমানোর আগে ইশার পর তাসবিহ আয-যাহরা পড়া ১০০০ রাকআত নফল নামাজের চেয়েও উত্তম। এর নূর আকাশে উঠে যায়।';

  @override
  String get tasbihFatimaGiftPre => 'নবীর পক্ষ থেকে একটি উপহার';

  @override
  String get tasbihFatimaGiftPost => 'প্রতিটি নামাজের পর পাঠ করা হয়';

  @override
  String get prayerTrackerTitle => 'নামাজ ট্র্যাকার';

  @override
  String get prayerTrackerPrayed => 'আদায় করা হয়েছে';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count দিনের ধারাবাহিকতা';
  }

  @override
  String get prayerTrackerAllComplete =>
      'আজকের সব নামাজ সম্পন্ন হয়েছে। আল্লাহ কবুল করুন।';

  @override
  String get dhikrTrackerTitle => 'তাসবিহ আল-যাহরা';

  @override
  String get dhikrTrackerCompletedToday => 'আজ সম্পন্ন হয়েছে';

  @override
  String get dhikrTrackerNotDoneToday => 'আজ করা হয়নি';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count দিনের ধারাবাহিকতা';
  }

  @override
  String get dhikrReminderTitle => 'তাসবিহ স্মরণ';

  @override
  String get dhikrReminderDescription =>
      'আপনার তাসবিহ আল-যাহরা (সা.) পড়ার জন্য একটি কোমল দৈনিক স্মরণ।';

  @override
  String get dhikrReminderEnable => 'তাসবিহ স্মরণ চালু করুন';

  @override
  String get dhikrReminderTimeLabel => 'স্মরণের সময়';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'দৈনিক হাদিস';

  @override
  String get hadithLabelArabic => 'আরবি';

  @override
  String get hadithLabelTranslation => 'অনুবাদ';

  @override
  String get hadithBadge => 'হাদিস';

  @override
  String get hadithShare => 'এই হাদিস শেয়ার করুন';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara-এর মাধ্যমে';
  }

  @override
  String get hadithNavPrevious => 'পূর্ববর্তী';

  @override
  String get hadithNavNext => 'পরবর্তী';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'চৌদ্দ ইনফালিবলস';

  @override
  String get imamsScreenSubtitle =>
      'নবী, লেডি ফাতিমা, এবং বারো ইমাম — দ্বাদশ শিয়া ইসলামে পরিশুদ্ধ এবং ইনফালিবল গাইডস';

  @override
  String get imamLabelBorn => 'জন্ম';

  @override
  String get imamLabelMartyrdom => 'শাহাদাত';

  @override
  String get imamLabelStatus => 'অবস্থা';

  @override
  String get imamSectionBiography => 'জীবনী';

  @override
  String get imamSectionFamousSaying => 'বিখ্যাত উক্তি';

  @override
  String get imamRoleProphet => 'শেষ নবী';

  @override
  String get imamRoleInfallible => 'মাসুম';

  @override
  String get imamOrdinal1 => '১ম ইমাম';

  @override
  String get imamOrdinal2 => '২য় ইমাম';

  @override
  String get imamOrdinal3 => '৩য় ইমাম';

  @override
  String get imamOrdinal4 => '৪র্থ ইমাম';

  @override
  String get imamOrdinal5 => '৫ম ইমাম';

  @override
  String get imamOrdinal6 => '৬ষ্ঠ ইমাম';

  @override
  String get imamOrdinal7 => '৭ম ইমাম';

  @override
  String get imamOrdinal8 => '৮ম ইমাম';

  @override
  String get imamOrdinal9 => '৯ম ইমাম';

  @override
  String get imamOrdinal10 => '১০ম ইমাম';

  @override
  String get imamOrdinal11 => '১১তম ইমাম';

  @override
  String get imamOrdinal12 => '১২তম ইমাম';

  @override
  String get duaAudioScreenTitle => 'দোয়া শুনুন';

  @override
  String get duaAudioScreenSubtitle =>
      'শোনার জন্য একটি দোয়া নির্বাচন করুন। চালু বা বিরতি দিতে টাইলটিতে ট্যাপ করুন।';

  @override
  String get duaAudioComingSoonMessage =>
      'এই দোয়ার অডিও আসন্ন আপডেটে উপলভ্য হবে।';

  @override
  String get duaAudioClose => 'বন্ধ করুন';

  @override
  String get duaAudioError =>
      'অডিও লোড করা যায়নি। অনুগ্রহ করে আপনার সংযোগ পরীক্ষা করুন।';

  @override
  String get duaAudioMetaTransmittedBy => 'বর্ণনা করেছেন';

  @override
  String get duaAudioMetaOccasion => 'উপলক্ষ';

  @override
  String get duaAudioMetaDuration => 'সময়কাল';

  @override
  String get quickActionDailyHadith => 'দৈনিক হাদিস';

  @override
  String get quickAction14Masumeen => 'চৌদ্দ ইনফালিবলস';

  @override
  String get quickActionListenDuas => 'শুনুন';

  @override
  String get quickActionTasbihat => 'নামাজ নির্দেশিকা';

  @override
  String get pilgrimageSectionTitle => 'পবিত্র যাত্রা';

  @override
  String get pilgrimageSectionSubtitle =>
      'হজ ও উমরাহর পূর্ণাঙ্গ নির্দেশিকা — মক্কার আল্লাহর পবিত্র ঘরে তীর্থযাত্রা';

  @override
  String get hajjCardTitle => 'হজ';

  @override
  String get hajjCardSubtitle => 'ইসলামের পঞ্চম স্তম্ভ';

  @override
  String get hajjCardDescription =>
      'বার্ষিক মহান তীর্থযাত্রা — সামর্থ্যবান প্রত্যেক মুসলিমের জন্য জীবনে একবার ফরজ';

  @override
  String get hajjScreenTitle => 'হজ নির্দেশিকা';

  @override
  String get hajjScreenSubtitle => 'মহান তীর্থযাত্রার ধাপে ধাপে নির্দেশিকা';

  @override
  String get umrahCardTitle => 'উমরাহ';

  @override
  String get umrahCardSubtitle => 'ছোট তীর্থযাত্রা';

  @override
  String get umrahCardDescription =>
      'একটি গভীরভাবে ফলপ্রসূ আধ্যাত্মিক যাত্রা, যা বছরের যেকোনো সময় করা যায়';

  @override
  String get umrahScreenTitle => 'উমরাহ নির্দেশিকা';

  @override
  String get umrahScreenSubtitle => 'ছোট তীর্থযাত্রার ধাপে ধাপে নির্দেশিকা';

  @override
  String get pilgrimageStepsTitle => 'আমল ও ধাপসমূহ';

  @override
  String get pilgrimageImportantNotesTitle => 'গুরুত্বপূর্ণ নোট';

  @override
  String get pilgrimageDuaTitle => 'এই পদক্ষেপের জন্য দোয়া';

  @override
  String get pilgrimageJafariNoteTitle => 'জাফারি ফিকহ নোট';

  @override
  String get pilgrimageComplete => '✓ সম্পন্ন';

  @override
  String get pilgrimageMarkDone => 'সম্পন্ন হিসেবে চিহ্নিত করুন';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done এর $total পদক্ষেপ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes মিনিট';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'শিয়া হাজীগণ';

  @override
  String get pilgrimageShiaNoteBody =>
      'অনেক শিয়া তীর্থযাত্রীও নবী মুহাম্মদ (সা) এর জন্য মদিনায় যিয়ারতের উদ্দেশ্যে মসজিদ আল-নববী এবং জান্নাত আল-বাকির কবরগুলোতে ভ্রমণ করেন। এই সফরগুলো গভীর আধ্যাত্মিক গুরুত্ব বহন করে, যদিও এগুলো হজের রীতি নয়।';

  @override
  String get hajjIntro =>
      'হজ ইসলাম ধর্মের পঞ্চম স্তম্ভ, যা শারীরিক এবং আর্থিকভাবে সক্ষম প্রতিটি মুসলমানের জন্য জীবনে একবার বাধ্যতামূলক। আজকের অধিকাংশ দ্বাদশ শিয়া তীর্থযাত্রীর জন্য, এর মানে হলো হজ আল-তামাত্তু\', যা ধুল হিজ্জাহ মাসে নবী ইব্রাহিম (আস), তাঁর পুত্র ইসমাইল (আস), এবং লেডি হাজরের পদাঙ্ক অনুসরণ করে পালন করা হয়। এই গাইডটি রীতির জাফারি রূপরেখা অনুসরণ করে, যখন মদিনায় যিয়ারত হজের আগে বা পরে একটি গভীরভাবে প্রিয় যাত্রা হিসেবে রয়ে যায়।';

  @override
  String get umrahIntro =>
      'উমরাহ হলো মক্কায় ছোট তীর্থযাত্রা এবং হজের মতো নয়, এটি বছরের যেকোনো সময় আদায় করা যায়। যদিও এটি ফরজ নয়, এর আধ্যাত্মিক সওয়াব অপরিসীম, এবং এটি অত্যন্ত সুপারিশকৃত ইবাদত হিসেবে বিবেচিত হয়। এতে হজের সঙ্গে কয়েকটি আমল এক হলেও এটি ছোট, এবং চারটি প্রধান রীতিতে গঠিত।';

  @override
  String get voiceInputTitle => 'ভয়েস ইনপুট';

  @override
  String get voiceInputMicTitle => 'মাইক্রোফোন';

  @override
  String get voiceInputMicSubtitle =>
      'টাইপ করার পরিবর্তে Ask Ayara-কে আপনার ইনপুট বলুন।';

  @override
  String get voiceInputMicDenied =>
      'মাইক্রোফোনের অ্যাক্সেস অস্বীকার করা হয়েছে।';

  @override
  String get voiceInputSpeak => 'বলা শুরু করুন';

  @override
  String get voiceInputListening => 'শুনছি…';

  @override
  String get voiceInputPermissionDenied =>
      'ভয়েস ইনপুটের জন্য মাইক্রোফোনের অ্যাক্সেস প্রয়োজন।';
}
