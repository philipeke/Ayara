// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'আপোনাৰ ভাষা বাছক';

  @override
  String get languageSelectSub => 'আপুনি পিছত Settings-ত এইটো সলনি কৰিব পাৰিব';

  @override
  String get actionContinue => 'অগ্ৰসর হওক';

  @override
  String get languageSuggestedHeader => 'পৰামৰ্শিত';

  @override
  String get languageAllHeader => 'সকলো ভাষা';

  @override
  String get languageSuggestedBadge => 'পৰামৰ্শিত';

  @override
  String get languageSearchHint => 'সন্ধান…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'দৈনিক পথনিৰ্দেশনা';

  @override
  String get categorySlot02 => 'ঈমান আৰু ভৰসা';

  @override
  String get categorySlot03 => 'নামাজৰ চিন্তন';

  @override
  String get categorySlot04 => 'ধৈৰ্য্য আৰু আশা';

  @override
  String get categorySlot05 => 'ক্ষমা বিচাৰক';

  @override
  String get categorySlot06 => 'দয়া আৰু সহানুভূতি';

  @override
  String get categorySlot07 => 'ঈমানৰ শক্তি';

  @override
  String get categorySlot08 => 'কৃতজ্ঞ হৃদয়';

  @override
  String get categorySlot09 => 'জীৱনৰ উদ্দেশ্য';

  @override
  String get categorySlot10 => 'পৰিয়ালৰ বন্ধন';

  @override
  String get categorySlot11 => 'অন্তৰিক শান্তি';

  @override
  String get categorySlot12 => 'নবীৰ জ্ঞান';

  @override
  String get categorySlot13 => 'সৎ চৰিত্ৰ';

  @override
  String get categorySlot14 => 'প্ৰলোভন প্ৰতিৰোধ কৰক';

  @override
  String get categorySlot15 => 'সন্ধিয়াৰ জিকিৰ';

  @override
  String get categoryCustom => 'ব্যক্তিগত চিন্তন';

  @override
  String get dhikrMeaningSubhanallah => 'আল্লাহ পৱিত্ৰ';

  @override
  String get dhikrMeaningAlhamdulillah => 'সকলো প্ৰশংসা আল্লাহৰ বাবে';

  @override
  String get dhikrMeaningAllahuAkbar => 'আল্লাহ সৰ্বশ্ৰেষ্ঠ';

  @override
  String get quranVerseHeartAtRest =>
      'নিশ্চয়, আল্লাহৰ স্মৰণতেই হৃদয়ে শান্তি পায়।';

  @override
  String get promptHint =>
      'ইছলামিক পথনিৰ্দেশনা আৰু চিন্তনৰ বাবে এটা শ্ৰেণী টেপ কৰক';

  @override
  String get currentLanguage => 'বৰ্তমান ভাষা';

  @override
  String get settingsLanguage => 'ভাষা ছেটিংছ';

  @override
  String get settingsTitle => 'ছেটিংছ';

  @override
  String get chooseLanguage => 'আপোনাৰ ভাষা বাছক';

  @override
  String get continueCta => 'অগ্ৰসর হওক';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count টা শব্দ',
      one: '$count টা শব্দ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'বিকল্পসমূহ';

  @override
  String get newCta => 'নতুন';

  @override
  String get actionsTitle => 'আপুনি কি কৰিব বিচাৰে?';

  @override
  String get copy => 'কপি';

  @override
  String get share => 'শ্বেয়াৰ';

  @override
  String get close => 'বন্ধ কৰক';

  @override
  String get copiedToast => 'ক্লিপব’ৰ্ডলৈ কপি কৰা হ’ল';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'নতুন উত্তৰ সৃষ্টি কৰিব পৰা নগ’ল';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nআপুনি আকৌ চেষ্টা কৰিব বিচাৰে নেকি?';
  }

  @override
  String get cancelCta => 'বাতিল';

  @override
  String get retryCta => 'আকৌ চেষ্টা কৰক';

  @override
  String get authTitle => 'আপোনাৰ একাউণ্ট সৃষ্টি কৰক';

  @override
  String get continueAsGuest => 'অতিথি হিচাপে অগ্ৰসর হওক';

  @override
  String get signInGoogle => 'Google-ৰ সৈতে ছাইন ইন কৰক';

  @override
  String get signInApple => 'Apple-ৰ সৈতে ছাইন ইন কৰক';

  @override
  String get signInEmail => 'ইমেইলৰ সৈতে ছাইন ইন কৰক';

  @override
  String get upgradeWithApple => 'Apple-ৰ সৈতে অগ্ৰসর হওক';

  @override
  String get mustAccept =>
      'আপুনি Terms-ত সন্মতি দিব লাগিব আৰু Privacy Policy স্বীকাৰ কৰিব লাগিব।';

  @override
  String get termsLabel => 'মই Terms of Service-ত সন্মতি দিছোঁ';

  @override
  String get privacyLabel => 'মই Privacy Policy পঢ়িছোঁ';

  @override
  String get marketingOptIn => 'মই খবৰ আৰু অফাৰ লাভ কৰাত সন্মতি দিছোঁ';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'একাউণ্ট';

  @override
  String get guestMode => 'অতিথি মোড';

  @override
  String get signedIn => 'ছাইন ইন কৰা হৈছে';

  @override
  String get upgradeHint =>
      'একাউণ্ট সৃষ্টি কৰিলে বিভিন্ন ডিভাইচত আপোনাৰ চিন্তন সংৰক্ষণ কৰিব পাৰিব।';

  @override
  String get upgradeWithGoogle => 'Google-ৰ সৈতে অগ্ৰসর হওক';

  @override
  String get signOut => 'ছাইন আউট';

  @override
  String get snackUpgraded => 'Google-ৰ সৈতে একাউণ্ট আপগ্ৰেড কৰা হ’ল ✅';

  @override
  String get snackSignedIn => 'Google-ৰ সৈতে ছাইন ইন কৰা হ’ল ✅';

  @override
  String get snackSignedOut => 'ছাইন আউট কৰা হ’ল';

  @override
  String get snackSignedInApple => 'Apple-ৰ সৈতে ছাইন ইন কৰা হ’ল ✅';

  @override
  String get snackSignedInGoogle => 'Google-ৰ সৈতে ছাইন ইন কৰা হ’ল ✅';

  @override
  String get snackUpgradedApple => 'Apple-ৰ সৈতে একাউণ্ট আপগ্ৰেড কৰা হ’ল ✅';

  @override
  String get snackUpgradedGoogle => 'Google-ৰ সৈতে একাউণ্ট আপগ্ৰেড কৰা হ’ল ✅';

  @override
  String get historyTitle => 'পূৰ্বৰ চিন্তনসমূহ';

  @override
  String get historyOpenCta => 'পূৰ্বৰ চিন্তনসমূহ';

  @override
  String get historyEmpty => 'এতিয়ালৈকে কোনো সংৰক্ষিত চিন্তন নাই।';

  @override
  String get historyDeleteTitle => 'চিন্তনটো মচি পেলাবনে?';

  @override
  String get historyDeleteBody =>
      'ইয়াৰে নিৰ্বাচিত বস্তুটো স্থায়ীভাৱে আঁতৰোৱা হ’ব।';

  @override
  String get deleteCta => 'মচি পেলাওক';

  @override
  String get historyButton => 'পূৰ্বৰ চিন্তনসমূহ';

  @override
  String get historyEmptyTitle => 'এতিয়াও কোনো চিন্তন নাই';

  @override
  String get historyEmptyBody =>
      'আগতে কিবা সৃষ্টি কৰক — আপোনাৰ সংৰক্ষিত বস্তুসমূহ ইয়াত দেখা যাব।';

  @override
  String get historyDelete => 'মচি পেলাওক';

  @override
  String get footerTitle => 'Wilaya, Iman আৰু Sabr-ৰ সৈতে';

  @override
  String get footerSubtitle => 'এবাৰতে এটা দোৱা';

  @override
  String get genericErrorSnack =>
      'কিবা ভুল হ’ল — অনুগ্ৰহ কৰি অলপ পিছত আকৌ চেষ্টা কৰক।';

  @override
  String get upgradeAccountCta =>
      'বিভিন্ন ডিভাইচত আপোনাৰ চিন্তন সংৰক্ষণ কৰক – এটা একাউণ্ট সৃষ্টি কৰক';

  @override
  String get deleteAccount => 'একাউণ্ট মচি পেলাওক';

  @override
  String get exportData => 'মোৰ ডেটা এক্সপ’ৰ্ট কৰক';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ধীৰে ধীৰে 🐯\nAyara-ক পৰৱৰ্তীটোৰ আগতে অলপ সময় লাগে…';

  @override
  String get rateDailyLimit =>
      'এতিয়াৰ বাবে আপোনাৰ চিন্তন শেষ।\nঅধিক চিন্তন লওক বা Wilaya-লৈ আপগ্ৰেড কৰক।';

  @override
  String get rateCreditsExhausted =>
      'আপুনি সকলো চিন্তন ব্যৱহাৰ কৰি পেলাইছে।\nঅধিক লওক বা Wilaya-লৈ আপগ্ৰেড কৰক।';

  @override
  String get rateGraceCreditsExhausted =>
      'এতিয়াৰ বাবে আপোনাৰ চিন্তন শেষ।\nঅধিক চিন্তন লওক বা Wilaya-লৈ আপগ্ৰেড কৰক।';

  @override
  String get premiumDescription =>
      'Wilaya-এ premium বৈশিষ্ট্য, ভৱিষ্যতৰ শ্ৰেণীসমূহ আৰু এটা বিশেষ badge উন্মুক্ত কৰে।';

  @override
  String ratePlanExhausted(String plan) {
    return 'এতিয়া আপোনাৰ চিন্তন খালী। প্লেন: $plan।';
  }

  @override
  String rateCheckFailed(String message) {
    return 'আপোনাৰ চিন্তন পৰীক্ষা কৰিব পৰা নগ’ল: $message';
  }

  @override
  String get rateCheckGenericError =>
      'আপোনাৰ চিন্তন পৰীক্ষা কৰাৰ সময়ত কিবা ভুল হ’ল।';

  @override
  String get aiFallbackGeneric =>
      'কিবা ভুল হ’ল — অনুগ্ৰহ কৰি অলপ পিছত আকৌ চেষ্টা কৰক।';

  @override
  String get limitSectionTitle => 'চিন্তনসমূহ';

  @override
  String get limitTodayLabel => 'ব্যৱহাৰ';

  @override
  String limitCreditsLabel(Object credits) {
    return 'অৱশিষ্ট চিন্তন: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'প্লেন: $plan';
  }

  @override
  String get limitLoadingLabel => 'লোড হৈ আছে…';

  @override
  String get limitLoadingLabelDescription =>
      'ব্যৱহাৰৰ পৰিসংখ্যা আনোঁতে চিন্তন card-ত দেখুওৱা হয়।';

  @override
  String get aiLimitTitle => 'চিন্তনসমূহ';

  @override
  String get aiLimitSubtitle =>
      'প্ৰতিটো response-এ ১টা চিন্তন ব্যৱহাৰ কৰে। Standard-ত starter reflections অন্তৰ্ভুক্ত থাকে। Wilaya-এ premium শ্ৰেণীসমূহ উন্মুক্ত কৰে আৰু top-up সক্ষম কৰে।';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total চিন্তন ব্যৱহাৰ কৰা হৈছে';
  }

  @override
  String get creditsSectionTitle => 'চিন্তনসমূহ';

  @override
  String get creditsUsageLabel => 'ব্যৱহাৰ';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'অৱশিষ্ট চিন্তন: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'প্লেন: $plan';
  }

  @override
  String get creditsLoadingLabel => 'লোড হৈ আছে…';

  @override
  String get creditsLoadingLabelDescription =>
      'চিন্তনৰ পৰিসংখ্যা আনোঁতে দেখুওৱা হয়।';

  @override
  String get creditsTitle => 'চিন্তনসমূহ';

  @override
  String get creditsSubtitle =>
      'প্ৰতিটো response-এ ১টা চিন্তন ব্যৱহাৰ কৰে। Standard-ত starter reflections অন্তৰ্ভুক্ত থাকে। Wilaya-এ premium শ্ৰেণীসমূহ উন্মুক্ত কৰে আৰু top-up সক্ষম কৰে।';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total চিন্তন ব্যৱহাৰ কৰা হৈছে';
  }

  @override
  String get settingsDeleteTitle => 'একাউণ্ট মচি পেলাওক';

  @override
  String get settingsDeleteDescription =>
      'আপোনাৰ একাউণ্ট আৰু সংশ্লিষ্ট সকলো ডেটা স্থায়ীভাৱে মচি পেলাওক।';

  @override
  String get settingsDeleteButtonLabel => 'মোৰ একাউণ্ট মচি পেলাওক';

  @override
  String get settingsDeleteDialogTitle => 'একাউণ্ট মচি পেলাবনে?';

  @override
  String get settingsDeleteDialogBody =>
      'এই কাৰ্য স্থায়ী আৰু ইয়াক আগলৈ ঘূৰাই আনিব নোৱাৰি।\n\nআপোনাৰ সকলো chats, history আৰু account information মচি পেলোৱা হ’ব।';

  @override
  String get settingsDeleteDialogCancel => 'বাতিল';

  @override
  String get settingsDeleteDialogConfirm => 'মচি পেলাওক';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Starter reflections ব্যৱহাৰ কৰা হৈছে';

  @override
  String get settingsFreeLimitUsedDescription =>
      'এই ডিভাইচৰ starter reflections ব্যৱহাৰ হৈ গৈছে। অগ্ৰসর হ’বলৈ Wilaya-লৈ আপগ্ৰেড কৰক বা অধিক চিন্তন কিনক।';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Starter reflections ব্যৱহাৰ কৰা হৈছে';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'এই ডিভাইচৰ starter reflections ব্যৱহাৰ হৈ গৈছে। অগ্ৰসর হ’বলৈ Wilaya-লৈ আপগ্ৰেড কৰক বা অধিক চিন্তন কিনক।';

  @override
  String get deviceBoundError =>
      'এই ডিভাইচটো আগতেই আন এটা একাউণ্টৰ সৈতে সংযুক্ত। অনুগ্ৰহ কৰি মূল একাউণ্টেৰে ছাইন ইন কৰক।';

  @override
  String get premiumTitle => 'Wilaya মোড';

  @override
  String get premiumSubtitleBasic => 'Ayara-ৰ সম্পূৰ্ণ অভিজ্ঞতা উন্মুক্ত কৰক।';

  @override
  String get premiumSubtitlePremium =>
      'আপুনি Wilaya-ত আছে। অধিক চিন্তন লাগে নেকি?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'বৰ্তমান প্লেন: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'চিন্তন: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'এতিয়া purchase উপলব্ধ নহয়।';

  @override
  String get premiumSignInToPurchase =>
      'চিন্তন কিনিবলৈ বা Wilaya উন্মুক্ত কৰিবলৈ ছাইন ইন কৰক।';

  @override
  String get premiumRestorePurchases => 'Purchases পুনৰুদ্ধাৰ কৰক';

  @override
  String get premiumProcessing => 'প্ৰক্ৰিয়াকৰণ হৈ আছে…';

  @override
  String get premiumRestoreHintTitle =>
      'এই বা আন ডিভাইচত আগতে Wilaya বা চিন্তন কিনিছিল নেকি?';

  @override
  String get premiumRestoreHintBody =>
      'যদি দেখা নাযায়, আপোনাৰ purchases পুনৰুদ্ধাৰ কৰক।';

  @override
  String get premiumBuyCredits200 => '২০০টা চিন্তন কিনক';

  @override
  String get premiumBuyCredits400 => '৪০০টা চিন্তন কিনক';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya মোডলৈ আপগ্ৰেড কৰক';

  @override
  String get premiumTopupHint =>
      'Wilaya-ৰ সৈতে, আপুনি যেতিয়া লাগে তেতিয়া অতিৰিক্ত চিন্তন top up কৰিব পাৰিব।';

  @override
  String get premiumUpgradeCta => 'আপগ্ৰেড';

  @override
  String get premiumRequiredForCategory =>
      'এই শ্ৰেণীটো কেৱল Wilaya ব্যৱহাৰকাৰীৰ বাবে উপলব্ধ। সকলো premium content উন্মুক্ত কৰিবলৈ Settings-ত আপগ্ৰেড কৰক।';

  @override
  String get premiumBenefitsBasic =>
      'অতিৰিক্ত চিন্তন, premium শ্ৰেণীসমূহত প্ৰৱেশ, আৰু যেতিয়া প্ৰয়োজন তেতিয়া অব্যাহত ৰাখিবলৈ Wilaya উন্মুক্ত কৰক।';

  @override
  String get premiumBenefitsPremium =>
      'আপুনি Wilaya মোডত আছে। যদি কমি আহিছে, অতিৰিক্ত চিন্তন যোগ কৰক আৰু বাধাহীনভাৱে অব্যাহত ৰাখক।';

  @override
  String get premiumButtonBecomePremium => 'Wilaya উন্মুক্ত কৰক';

  @override
  String get premiumButtonTopup1000 => '১০০০টা চিন্তন যোগ কৰক';

  @override
  String get premiumBadge => 'Wilaya সক্ৰিয়';

  @override
  String get premiumLoadingStore => 'ষ্ট’ৰ লোড হৈ আছে…';

  @override
  String get premiumProductNotAvailable =>
      'এই পণ্যটো এতিয়াও store-ত উপলব্ধ নহয়। অনুগ্ৰহ কৰি পিছত আকৌ চেষ্টা কৰক।';

  @override
  String get premiumPurchaseError =>
      'Purchase-ত কিবা ভুল হ’ল। অনুগ্ৰহ কৰি আকৌ চেষ্টা কৰক।';

  @override
  String get premiumBuyCredits100 => '১০০টা চিন্তন যোগ কৰক';

  @override
  String get premiumFeatureLocked =>
      'এই বৈশিষ্ট্য ব্যৱহাৰ কৰিবলৈ Wilaya উন্মুক্ত কৰক।';

  @override
  String get lockedCategoriesHint =>
      'কিছু শ্ৰেণী Wilaya সদস্যসকলৰ বাবে সংৰক্ষিত। আপোনাৰ যাত্ৰাৰ সকলো চিন্তন অন্বেষণ কৰিবলৈ সিহঁত উন্মুক্ত কৰক।';

  @override
  String get freePlanBlockedTitle =>
      'আপুনি আপোনাৰ starter reflections ব্যৱহাৰ কৰি শেষ কৰিছে';

  @override
  String get freePlanBlockedBody =>
      'আপুনি Standard plan-ত starter reflections-সহ আছে, আৰু সীমাত উপনীত হৈছে। আগবাঢ়িবলৈ — আৰু premium categories উন্মুক্ত কৰিবলৈ — Wilaya-লৈ আপগ্ৰেড কৰক।';

  @override
  String get freePlanBlockedCtaGoPremium => 'তলত থকা Wilaya বিকল্পসমূহ চাওক';

  @override
  String get graceBlockedTitle =>
      'আপুনি আপোনাৰ starter reflections ব্যৱহাৰ কৰি শেষ কৰিছে';

  @override
  String get graceBlockedBody =>
      'আপুনি Standard plan-ত starter reflections-সহ আছে, আৰু সীমাত উপনীত হৈছে। আগবাঢ়িবলৈ — আৰু premium categories উন্মুক্ত কৰিবলৈ — Wilaya-লৈ আপগ্ৰেড কৰক।';

  @override
  String get graceBlockedCtaGoPremium => 'তলত থকা Wilaya বিকল্পসমূহ চাওক';

  @override
  String get rateGuestMustSignIn =>
      'Ayara আৰু আপোনাৰ চিন্তন ব্যৱহাৰ কৰিবলৈ ছাইন ইন কৰক।';

  @override
  String get guestNoCreditsTitle => 'অতিথি মোড';

  @override
  String get guestNoCreditsBody =>
      'অতিথি হিচাপে আপুনি app browse কৰিব পাৰিব, কিন্তু চিন্তন ব্যৱহাৰ কৰিব নোৱাৰিব। পিছত Settings-ত লগ ইন কৰি চিন্তন ব্যৱহাৰ কৰক আৰু purchases উন্মুক্ত কৰক।';

  @override
  String get guestDialogContinue => 'অগ্ৰসর হওক';

  @override
  String get guestDialogLoginInstead => 'তাৰ পৰিৱৰ্তে লগ ইন কৰক';

  @override
  String get optionalLabel => 'ঐচ্ছিক';

  @override
  String get accountDeleteSuccessTitle => 'একাউণ্ট মচি পেলোৱা হ’ল';

  @override
  String get accountDeleteSuccessBody =>
      'আপোনাৰ একাউণ্ট আৰু সংশ্লিষ্ট ডেটা সফলতাৰে মচি পেলোৱা হ’ল।';

  @override
  String get accountDeleteSuccessClose => 'বন্ধ কৰক';

  @override
  String get accountDeleteErrorTitle => 'একাউণ্ট মচি পেলাব পৰা নগ’ল';

  @override
  String get accountDeleteErrorClose => 'ঠিক আছে';

  @override
  String get accountDeleteReauthCancelled =>
      'পুনৰ-প্ৰমাণীকৰণ বাতিল কৰা হ’ল। অনুগ্ৰহ কৰি পুনৰ ছাইন ইন কৰি আকৌ চেষ্টা কৰক।';

  @override
  String get accountDeleteReauthRequired =>
      'একাউণ্ট মচিবলৈ সাম্প্ৰতিক login লাগে। অনুগ্ৰহ কৰি sign out কৰক, পুনৰ sign in কৰক, আৰু আকৌ চেষ্টা কৰক।';

  @override
  String get settingsDeletePermanentWarning =>
      'এই কাৰ্য স্থায়ী আৰু ইয়াক আগলৈ ঘূৰাই আনিব নোৱাৰি। আপোনাৰ একাউণ্টৰ সৈতে সম্পৰ্কিত সকলো ডেটা মচি পেলোৱা হ’ব।';

  @override
  String get dailyGraceTitle => 'দৈনিক পথনিৰ্দেশনা';

  @override
  String get dailyGraceScriptureLabel => 'আজিৰ আয়াত';

  @override
  String get dailyGraceSaintLabel => 'FIGURE OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'সন্ধিয়াৰ চিন্তন';

  @override
  String get dailyGraceCopiedToast => 'আয়াত ক্লিপব’ৰ্ডলৈ কপি কৰা হ’ল';

  @override
  String get locationConsentLabel =>
      'Qibla direction আৰু prayer times-ৰ বাবে Ayara-ক মোৰ অৱস্থান ব্যৱহাৰ কৰিবলৈ অনুমতি দিয়ক';

  @override
  String get locationConsentHint =>
      'কেৱল এই বৈশিষ্ট্যসমূহৰ বাবে ব্যৱহাৰ কৰা হয়। আপোনাৰ অৱস্থান কেতিয়াও share বা store কৰা নহয়।';

  @override
  String get askPageTitle => 'Ayara-ক সোধক';

  @override
  String get askPageDescription =>
      'ঈমান, নামাজ, জীৱন, বা ইছলামিক আমলৰ বিষয়ে যিকোনো কথা সোধক আৰু কোৰআন আৰু আহলুল বায়তৰ শিক্ষাৰ ওপৰত ভিত্তি কৰা পথনিৰ্দেশনা লাভ কৰক।';

  @override
  String get askPageInputHint => 'ইয়াত আপোনাৰ প্ৰশ্ন লিখক…';

  @override
  String get askPageSubmitCta => 'সোধক';

  @override
  String get askPageInputEmptyError => 'অনুগ্ৰহ কৰি আগতে এটা প্ৰশ্ন লিখক।';

  @override
  String get askResultYourQuestion => 'আপোনাৰ প্ৰশ্ন';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'মক্কাৰ ফালে মুখ কৰি আছে';

  @override
  String get qiblaCompassInstruction =>
      'সোনালী সূঁচটো ওপৰলৈ নির্দেশ নকৰা পৰ্যন্ত আপোনাৰ ফোনটো ঘূৰাওক।\nসেই দিশটোৱেই Qibla (মক্কা)-ৰ ফালে।';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal দুৰ্বল। বাহিৰলৈ যাওক আৰু Retry টেপ কৰক।';

  @override
  String get qiblaRetry => 'আকৌ চেষ্টা কৰক';

  @override
  String get qiblaTitle => 'Qibla দিশ';

  @override
  String qiblaDistanceLabel(String km) {
    return 'মক্কালৈ $km কিমি';
  }

  @override
  String get qiblaLocationNeededTitle => 'অৱস্থানৰ প্ৰয়োজন';

  @override
  String get qiblaLocationNeededBody =>
      'আপুনি য’তেই নাথাকক কিয়, তাতৰ পৰা মক্কাৰ কাবাৰ দিশ গণনা কৰিবলৈ Ayara-ক location access দিয়ক।';

  @override
  String get qiblaOpenSettings => 'Settings খোলক';

  @override
  String get qiblaCompassLoading => 'আপোনাৰ অৱস্থান বিচাৰি উলিওৱা হৈছে…';

  @override
  String get qiblaTowardMecca => 'মক্কাৰ ফালে';

  @override
  String get prayerTimesTitle => 'নামাজৰ সময়সমূহ';

  @override
  String get prayerTimesFajr => 'ফজৰ';

  @override
  String get prayerTimesDhuhr => 'যোহৰ';

  @override
  String get prayerTimesAsr => 'আছৰ';

  @override
  String get prayerTimesMaghrib => 'মাগৰিব';

  @override
  String get prayerTimesIsha => 'ইশা';

  @override
  String get prayerTimesLocationNeededTitle => 'অৱস্থানৰ প্ৰয়োজন';

  @override
  String get prayerTimesLocationNeededBody =>
      'আপোনাৰ চহৰৰ বাবে সঠিক নামাজৰ সময় গণনা কৰিবলৈ Ayara-ক location access দিয়ক।';

  @override
  String get prayerTimesNextLabel => 'পৰৱৰ্তী';

  @override
  String get prayerTimesDoneLabel => 'সম্পন্ন';

  @override
  String get monthlyPrayerTimesTitle => 'মাসিক নামাজৰ সময়সমূহ';

  @override
  String get monthlyPrayerTimesViewButton => 'সম্পূৰ্ণ মাহটো চাওক';

  @override
  String get monthlyPrayerTimesNextMonth => 'পৰৱৰ্তী মাহ';

  @override
  String get monthlyPrayerTimesDayHeader => 'দিন';

  @override
  String get sharePrayerTimes => 'নামাজৰ সময়সমূহ শ্বেয়াৰ কৰক';

  @override
  String get notificationsSectionTitle => 'বিজ্ঞপ্তিসমূহ';

  @override
  String get notificationsSectionSubtitle =>
      'নামাজৰ সোঁৱৰণী, calendar events আৰু অধিক';

  @override
  String get dailyReflectionReminderTitle => 'দৈনিক চিন্তন';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara খুলিবলৈ আৰু আপোনাৰ ঈমানৰ সৈতে সংযোগ স্থাপন কৰিবলৈ এটা কোমল দৈনিক সোঁৱৰণী।';

  @override
  String get dailyReflectionReminderEnable => 'দৈনিক সোঁৱৰণী সক্ৰিয় কৰক';

  @override
  String get dailyReflectionReminderTimeLabel => 'সোঁৱৰণীৰ সময়';

  @override
  String get prayerNotificationsTitle => 'নামাজৰ সোঁৱৰণীসমূহ';

  @override
  String get prayerNotificationsDescription =>
      'দিনজুৰি সংযুক্ত হৈ থাকিবলৈ প্ৰতিটো নামাজৰ আগতে এটা কোমল সোঁৱৰণী লাভ কৰক।';

  @override
  String get prayerNotificationsEnable => 'নামাজৰ সোঁৱৰণীসমূহ সক্ৰিয় কৰক';

  @override
  String get prayerNotificationsOpenSettings => 'Notification settings খোলক';

  @override
  String get prayerNotificationsDenied => 'Notifications নিষ্ক্ৰিয়';

  @override
  String get prayerNotificationsDeniedHint =>
      'নামাজৰ সময়ৰ সোঁৱৰণী লাভ কৰিবলৈ Settings-লৈ গৈ Ayara-ৰ বাবে notifications অনুমতি দিয়ক।';

  @override
  String get notificationsConsentLabel =>
      'নামাজৰ সময়ৰ বাবে notifications অনুমতি দিয়ক';

  @override
  String get prayerNotifTitleFajr => '🌅 ফজৰ — পুৱা নামাজ';

  @override
  String get prayerNotifBodyFajr =>
      'ফজৰ আহলুল বায়তৰ পুৱাৰ নামাজ। ইমাম আলী (আ.)-এ কৈছিল: ফজৰৰ নামাজক সেইদৰে ৰক্ষা কৰক, যিদৰে আপোনাৰ অতি মূল্যবান আমানত ৰক্ষা কৰে। উঠক, নিজকে পৱিত্ৰ কৰক, আৰু আল্লাহৰ সন্মুখত থিয় হওক।';

  @override
  String get prayerNotifTitleDhuhr => '☀️ যোহৰ — দুপৰীয়া নামাজ';

  @override
  String get prayerNotifBodyDhuhr =>
      'আহলুল বায়তৰ ইমামসকলে স্মৰণৰ প্ৰতিটো মুহূৰ্তক মূল্য দিছিল। আপোনাৰ দিনটো থমকাওক, প্ৰয়োজন হ’লে যোহৰক আছৰৰ সৈতে মিলাই লওক, আৰু আপোনাৰ হৃদয় আল্লাহৰ ওচৰলৈ ঘূৰাই নিন।';

  @override
  String get prayerNotifTitleAsr => '🌤️ আছৰ — আবেলিৰ নামাজ';

  @override
  String get prayerNotifBodyAsr =>
      'নামাজক সংৰক্ষণ কৰক, কাৰণ এইটো আপোনাৰ আৰু আল্লাহৰ মাজৰ অঙ্গীকাৰ। আছৰৰ সময় আহিল — স্মৰণ নোহোৱাকৈ এইটো পাৰ হ’ব নিদিব।';

  @override
  String get prayerNotifTitleMaghrib => '🌇 মাগৰিব — সূৰ্যাস্তৰ নামাজ';

  @override
  String get prayerNotifBodyMaghrib =>
      'সূৰ্য অস্ত গ’ল — আহলুল বায়তে যাক দুআৰ বাবে পৱিত্ৰ বুলি গণ্য কৰিছিল। ৰাতি আৰম্ভ হোৱাৰ আগতেই মাগৰিব আদায় কৰক আৰু আল্লাহৰ ওচৰত আপোনাৰ হাত দুটা দুআৰ বাবে মেলি দিয়ক।';

  @override
  String get prayerNotifTitleIsha => '🌙 ইশা — ৰাতিৰ নামাজ';

  @override
  String get prayerNotifBodyIsha =>
      'আল্লাহৰ সান্নিধ্যত আপোনাৰ দিনটো শেষ কৰক। ইমামসকলে ইশাৰ পিছত ছালাতুল লাইল উৎসাহিত কৰিছিল — কিন্তু তাৰ আগতে, আপোনাৰ ইশা সম্পূৰ্ণ কৰক আৰু তেওঁৰ স্মৰণেৰে দিনটো শেষ কৰক।';

  @override
  String get outOfReflectionsBannerText =>
      'আপুনি আপোনাৰ সকলো চিন্তন ব্যৱহাৰ কৰি পেলাইছে';

  @override
  String get outOfReflectionsBannerCta => 'অধিক লওক';

  @override
  String get dhikrPageTitle => 'জিকিৰ';

  @override
  String get dhikrTapToCount => 'গণনা কৰিবলৈ বৃত্তটো টেপ কৰক';

  @override
  String get dhikrResetButton => 'ৰিছেট';

  @override
  String get dhikrComplete => 'মাশাআল্লাহ';

  @override
  String get dhikrCompleteMessage =>
      'আপুনি আল্লাহৰ ১০০ বাৰ স্মৰণ সম্পূৰ্ণ কৰিছে। এইবোৰে আপোনাৰ হৃদয়ৰ বাবে নূৰ হওক।';

  @override
  String get disclaimerTitle => 'এই app-ৰ পথনিৰ্দেশনা সম্পর্কে';

  @override
  String get disclaimerBody =>
      'Ayara-এ আপোনাৰ ব্যক্তিগত ঈমানৰ যাত্ৰাক সমৰ্থন কৰিবলৈ কোৰআন আৰু আহলুল বায়তৰ শিক্ষাৰ ওপৰত ভিত্তি কৰি ইছলামিক চিন্তন, সোঁৱৰণী আৰু আধ্যাত্মিক বিষয়বস্তু প্ৰদান কৰে। এই বিষয়বস্তু কেৱল সাধাৰণ তথ্যগত আৰু প্ৰেৰণামূলক উদ্দেশ্যৰ বাবে আগবঢ়োৱা হৈছে।\n\nAyara যোগ্য আলিম-উলামাৰ বিকল্প নহয়।\nএই app-ত থকা পথনিৰ্দেশনা কোনো জ্ঞানী ইছলামিক scholar, marja\', বা theological teacher-ৰ বিকল্প নহয়। শিয়া ইছলামে, ধৰ্মীয় পথনিৰ্দেশনা জাফৰি মাজহাবৰ ফিকহ আৰু জীৱিত Marja\' (অনুসৰণৰ উৎস) অনুসৰণৰ ঐতিহ্যৰ ওপৰত ভিত্তি কৰে — এজন যোগ্য ফকীহ যাৰ ফয়ছলাসমূহে মুমিনসকলক ধৰ্মীয় আমলত পথ দেখুৱায়। যদি আপোনাৰ ধৰ্মীয় বিধান, হালাল-হাৰাম বিষয়, বা ব্যক্তিগত ধৰ্মীয় কৰ্তব্য সম্পৰ্কে প্ৰশ্ন আছে, অনুগ্ৰহ কৰি এজন যোগ্য Marja\' বা আপোনাৰ সমাজৰ scholar-ৰ পৰামৰ্শ লওক।\n\nএই app ধৰ্মীয় বিধান জাৰি নকৰে।\nAyara-এ ফিকহ বা ব্যক্তিগত ধৰ্মীয় কৰ্তব্যৰ বিষয়ে কর্তৃত্বমূলক সিদ্ধান্ত নিদিয়ে। ইয়াত থকা একোৱেই fatwa বা বাধ্যতামূলক ধৰ্মীয় নিৰ্দেশনা হিচাপে গণ্য কৰা উচিত নহয়।\n\nআহলুল বায়তৰ কেন্দ্ৰীয়তা।\nশিয়া ইছলামে, নবী মুহাম্মদ ﷺ আৰু তেওঁৰ পৱিত্ৰ পৰিয়াল — আহলুল বায়ত — কোৰআনৰ পিছত ইছলামিক সমাজৰ কর্তৃত্বশীল পথপ্রদৰ্শক। আহলুল বায়তৰ বাৰোজন ইমাম ইছলামিক শিক্ষাৰ দিৱ্য নিযুক্ত ব্যাখ্যাতা। এই app-ৰ বিষয়বস্তু এই ঐতিহ্য প্ৰতিফলিত কৰে আৰু বিশ্বস্ততাৰে ইয়াক সন্মান জনাব বিচাৰে।\n\nসমাজৰ গুৰুত্ব।\nএই app-এ আপোনাৰ ঈমানৰ সৈতে সম্পৃক্ততাক উৎসাহিত কৰিব বিচাৰে, লগতে আপোনাৰ স্থানীয় মছজিদ, ইছলামিক কেন্দ্ৰ আৰু ধৰ্মীয় সমাজৰ গুৰুত্বপূৰ্ণ ভূমিকাক গভীৰ সন্মান কৰে। আমি আপোনাক আপোনাৰ ওচৰৰ যোগ্য শিক্ষকৰ সৈতে সংযুক্ত থাকিবলৈ আৰু শিকিবলৈ উৎসাহিত কৰোঁ।';

  @override
  String get disclaimerClose => 'মই বুজিলোঁ';

  @override
  String get disclaimerInfoTooltip => 'এই app-ৰ পথনিৰ্দেশনা সম্পর্কে';

  @override
  String get disclaimerSettingsSubtitle =>
      'কেৱল সাধাৰণ তথ্যগত উদ্দেশ্যৰ বাবে। সম্পূৰ্ণ disclaimer পঢ়িবলৈ টেপ কৰক।';

  @override
  String get disclaimerSectionHeader => 'পথনিৰ্দেশনা disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'চিন্তন';

  @override
  String get navDuas => 'দোৱাসমূহ';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'আজিৰ দিন';

  @override
  String get dashboardComingUp => 'আগলৈ আহি আছে';

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
  String get dashboardQuickAccess => 'দ্ৰুত প্ৰৱেশ';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'জিকিৰ';

  @override
  String get quickActionDailyGrace => 'পথনিৰ্দেশনা';

  @override
  String get quickActionPrayerTimes => 'নামাজৰ সময়';

  @override
  String get askAyaraTitle => 'Ayara-ক সোধক';

  @override
  String get askAyaraSubtitle =>
      'যিকোনো ইছলামিক প্ৰশ্ন সোধক আৰু চিন্তাশীল, পথপ্ৰদৰ্শক উত্তৰ লাভ কৰক।';

  @override
  String get askAyaraHint => 'যেনে: ৰমজানৰ তাৎপৰ্য্য কি?';

  @override
  String get askAyaraSubmit => 'সোধক';

  @override
  String get wisdomOfTheDayTitle => 'আজিৰ জ্ঞান';

  @override
  String get calendarScreenTitle => 'ইছলামিক Calendar';

  @override
  String get calendarUpcomingOccasions => 'আসন্ন উপলক্ষসমূহ';

  @override
  String get calendarOccasionRemindersTitle => 'উপলক্ষ সোঁৱৰণীসমূহ';

  @override
  String get calendarOccasionRemindersHint =>
      'প্ৰতিটো উপলক্ষৰ আগদিনা সন্ধিয়া জাননী পোৱা যাব';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification অনুমতি নাকচ কৰা হৈছে। আপোনাৰ ডিভাইচ settings-ত ইয়াক সক্ৰিয় কৰক।';

  @override
  String get calendarNoEvents => 'কোনো আসন্ন ইভেণ্ট পোৱা নগ’ল।';

  @override
  String get calendarAddToPhone => 'ফোন কেলেণ্ডাৰত যোগ কৰক';

  @override
  String get calendarAddedToPhone => 'কেলেণ্ডাৰত যোগ কৰা হৈছে';

  @override
  String get calendarCountdownToday => 'আজিই';

  @override
  String get calendarCountdownTomorrow => 'কাইলৈ';

  @override
  String calendarCountdownDays(int days) {
    return '$days দিন পিছত';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'জানু';

  @override
  String get calendarMonthFeb => 'ফেব্ৰু';

  @override
  String get calendarMonthMar => 'মাৰ্চ';

  @override
  String get calendarMonthApr => 'এপ্ৰি';

  @override
  String get calendarMonthMay => 'মে';

  @override
  String get calendarMonthJun => 'জুন';

  @override
  String get calendarMonthJul => 'জুলাই';

  @override
  String get calendarMonthAug => 'আগ';

  @override
  String get calendarMonthSep => 'ছেপ্টে';

  @override
  String get calendarMonthOct => 'অক্টো';

  @override
  String get calendarMonthNov => 'নভে';

  @override
  String get calendarMonthDec => 'ডিচে';

  @override
  String get calendarSeasonMuharramEarly =>
      'মুহৰ্ৰমৰ দিনসমূহ — কাৰবালা স্মৰণ কৰক';

  @override
  String get calendarSeasonAshura => 'আশুৰা — ইয়া হুছেইন (আ.)';

  @override
  String get calendarSeasonMuharramLate => 'মুহৰ্ৰম — শোক আৰু চিন্তনৰ দিনসমূহ';

  @override
  String get calendarSeasonArbaeen => 'আৰবাঈন — হুছেইনৰ চল্লিশ দিন';

  @override
  String get calendarSeasonRoadToArbaeen => 'আৰবাঈনৰ পথ';

  @override
  String get calendarSeasonMabath => 'মাবআথ মোবাৰক — অহীৰ পুৱালি';

  @override
  String get calendarSeasonMidShaban =>
      'মধ্য শাবান — ইমাম আল-মাহদী (আ.জ.)-ৰ জন্মদিন';

  @override
  String get calendarSeasonRamadan => 'ৰমজান মোবাৰক — কোৰআনৰ মাহ';

  @override
  String get calendarSeasonGhadir => 'ঈদুল গদীৰ মোবাৰক!';

  @override
  String get hijriMonth1 => 'মুহৰ্ৰম';

  @override
  String get hijriMonth2 => 'ছফৰ';

  @override
  String get hijriMonth3 => 'ৰবিউল আৱৱাল';

  @override
  String get hijriMonth4 => 'ৰবিউছ ছানী';

  @override
  String get hijriMonth5 => 'জুমাদাল উলা';

  @override
  String get hijriMonth6 => 'জুমাদাছ ছানিয়া';

  @override
  String get hijriMonth7 => 'ৰজব';

  @override
  String get hijriMonth8 => 'শাবান';

  @override
  String get hijriMonth9 => 'ৰমজান';

  @override
  String get hijriMonth10 => 'শ্বাওৱাল';

  @override
  String get hijriMonth11 => 'জিলকদ';

  @override
  String get hijriMonth12 => 'জিলহজ্জ';

  @override
  String get duasScreenTitle => 'দোৱা আৰু জিয়াৰত';

  @override
  String get duasSearchHint => 'দোৱা, জিয়াৰত সন্ধান কৰক…';

  @override
  String get duasFilterAll => 'সকলো';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count টা দোৱা আৰু জিয়াৰত',
      one: '$count টা দোৱা',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'কোনো দোৱা পোৱা নগ’ল।';

  @override
  String get duaCategoryDaily => 'দৈনিক';

  @override
  String get duaCategoryWeekly => 'সাপ্তাহিক';

  @override
  String get duaCategoryOccasions => 'উপলক্ষসমূহ';

  @override
  String get duaCategoryZiyarat => 'জিয়াৰত';

  @override
  String get duaCategoryTasbih => 'তাছবীহ';

  @override
  String get eventTypeBirth => 'জন্ম';

  @override
  String get eventTypeMartyrdom => 'শাহাদাত';

  @override
  String get eventTypeOccasion => 'উপলক্ষ';

  @override
  String get duaCopyTooltip => 'অনুবাদ কপি কৰক';

  @override
  String get duaToggleTransliteration => 'উচ্চাৰণলিপি';

  @override
  String get duaToggleTranslation => 'অনুবাদ';

  @override
  String get duaAskAiLabel => 'এই দোৱাখন ব্যাখ্যা কৰিবলৈ Ayara-ক সোধক';

  @override
  String get duaAskAiLockedLabel => 'Ayara-ক সোধক (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-ৰ ব্যাখ্যাসমূহ Wilaya সদস্যৰ বাবে উপলব্ধ। Settings-ত আপগ্ৰেড কৰক।';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" বিষয়ে Ayara-ক সোধক — শীঘ্ৰেই আহিছে!';
  }

  @override
  String get duaCopiedToast => 'দোৱা ক্লিপব’ৰ্ডলৈ কপি কৰা হ’ল।';

  @override
  String get tasbihAllahuAkbarMeaning => 'আল্লাহ সৰ্বশ্ৰেষ্ঠ';

  @override
  String get tasbihAlhamdulillahMeaning => 'সকলো প্ৰশংসা আল্লাহৰ';

  @override
  String get tasbihSubhanallahMeaning => 'আল্লাহ পৱিত্ৰ';

  @override
  String get tasbihResetTooltip => 'ৰিছেট';

  @override
  String get tasbihCompleteTitle => 'তাছবীহ সম্পূৰ্ণ';

  @override
  String get tasbihCompleteMessage => 'আল্লাহে আপোনাৰ জিকিৰ কবুল কৰক।';

  @override
  String get tasbihTapHint => 'গণনা কৰিবলৈ যিকোনো ঠাইত টেপ কৰক';

  @override
  String get tasbihatScreenTitle => 'নামাজ পথপ্ৰদৰ্শক';

  @override
  String get tasbihatScreenSubtitle => 'নামাজৰ তাছবীহসমূহ';

  @override
  String get tasbihatScreenDescription =>
      'দৈনিক নামাজৰ সময়ত আৰু পিছত পঢ়া তাছবীহসমূহৰ সম্পূৰ্ণ পথপ্ৰদৰ্শক — আহলুল বায়তৰ (আ.) পৰম্পৰা অনুসৰি।';

  @override
  String get tasbihatArba3Title => 'তাছবীহাতুল আৰবাআ';

  @override
  String get tasbihatArba3Subtitle => '৩য় আৰু ৪র্থ ৰাকআতত পঢ়া হয়';

  @override
  String get tasbihatArba3Info =>
      'শিয়া ফিকহত, যোহৰ, আছৰ, মাগৰিব আৰু ইশাৰ ৩য় আৰু ৪র্থ ৰাকআতত তাছবীহাতুল আৰবাআ ছুৰা ফাতিহাৰ পৰিবৰ্তে পঢ়া হয়। ইয়াক এবাৰ পঢ়া ওয়াজিব, আৰু তিনিবাৰ পঢ়া মুস্তাহাব।';

  @override
  String get tasbihatArba3Translation =>
      'আল্লাহ পৱিত্ৰ · সকলো প্ৰশংসা আল্লাহৰ\nআল্লাহৰ বাহিৰে কোনো ইলাহ নাই · আল্লাহ সৰ্বশ্ৰেষ্ঠ';

  @override
  String get tasbihatArba3CompleteTitle => 'তিলাৱাত সম্পূৰ্ণ';

  @override
  String get tasbihatArba3CompleteMessage => 'আপোনাৰ নামাজ কবুল হওক — আমীন';

  @override
  String get tasbihatArba3TapHint => 'প্ৰতিটো তিলাৱাতৰ পিছত টেপ কৰক';

  @override
  String get tasbihatZahraSubtitle => 'প্ৰতিটো নামাজৰ পিছত · ১০০টা দানা';

  @override
  String get tasbihatZahraOriginLabel => 'উৎপত্তি';

  @override
  String get tasbihatZahraHadith =>
      'বিবি ফাতিমা আয-যাহৰা (ছা.)-এ নবী ﷺ-ৰ ওচৰত এজন খিদমতগাৰ বিচাৰিছিল। তেওঁ ক’লে: \"মই তোমাক এনে কিবা শিকাওঁ নেকি যি এজন খিদমতগাৰৰ চেয়েও উত্তম? প্ৰতিটো নামাজৰ পিছত ৩৩ বাৰ সুবহানাল্লাহ, ৩৩ বাৰ আলহামদুলিল্লাহ, আৰু ৩৪ বাৰ আল্লাহু আকবৰ পঢ়িবা। এইটো তোমাৰ বাবে এজন খিদমতগাৰৰ চেয়েও উত্তম।\"';

  @override
  String get tasbihatZahraHadithSource => '— বিহাৰুল আনৱাৰ, খণ্ড ৮৫';

  @override
  String get tasbihatZahraOpenCounter => 'তাছবীহ কাউণ্টাৰ খোলক';

  @override
  String get tasbihatDuasTitle => 'পৰামৰ্শিত দোৱাসমূহ';

  @override
  String get tasbihatDuasSubtitle => 'নামাজ সম্পূৰ্ণ কৰাৰ পিছত';

  @override
  String get tasbihatDuaAyatKursiTitle => 'আয়াতুল কুৰ্ছী';

  @override
  String get tasbihatDuaAyatKursiWhen => 'প্ৰতিটো ফৰজ নামাজৰ পিছত';

  @override
  String get tasbihatDuaAyatKursiSource => 'ছুৰা আল-বাকাৰা ২:২৫৫';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'যিয়ে প্ৰতিটো ফৰজ নামাজৰ পিছত আয়াতুল কুৰ্ছী পঢ়ে, তাৰ আৰু জান্নাতৰ মাজত কেৱল মৃত্যুৱেই থাকে। ইমাম আল-বাকিৰ (আ.)-এ কৈছিল ই কোৰআনৰ সৰ্বশ্ৰেষ্ঠ আয়াতসমূহৰ অন্যতম।';

  @override
  String get tasbihatDuaSalawatTitle => 'ছালাৱাত';

  @override
  String get tasbihatDuaSalawatWhen =>
      'প্ৰতিটো নামাজৰ পিছত · সকলো দোৱা সমাপ্ত কৰে';

  @override
  String get tasbihatDuaSalawatSource => 'ইমাম আস-ছাদিক (আ.) — আল-কাফি';

  @override
  String get tasbihatDuaSalawatNote =>
      'নবী ﷺ আৰু তেওঁৰ পৱিত্ৰ পৰিয়াল (আলে মুহাম্মদ)-ৰ ওপৰত ছালাৱাত পঠিওৱা প্ৰতিটো দোৱা সমাপ্ত কৰিবলৈ মুস্তাহাব। ইমাম আস-ছাদিক (আ.)-এ কৈছিল: \"মুহাম্মদ আৰু তেওঁৰ পৰিয়ালৰ ওপৰত ছালাৱাত নপঠিওৱা পৰ্যন্ত যিকোনো দোৱা স্থগিত হৈ থাকে।\"';

  @override
  String get tasbihatDuaFarajTitle => 'দুআ আল-ফাৰজ';

  @override
  String get tasbihatDuaFarajWhen =>
      'প্ৰতিটো নামাজৰ পিছত · আমাৰ যুগৰ ইমামৰ বাবে';

  @override
  String get tasbihatDuaFarajSource =>
      'ইমাম আল-হাছান আল-আছকাৰী (আ.)-এ শিকাইছিল';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. It is often recited by many Shia Muslims after prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'বিবি ফাতিমাৰ তাছবীহ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'মাগৰিব আৰু ইশাৰ পিছত · বিশেষভাৱে পৰামৰ্শিত';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ইমাম আল-বাকিৰ (আ.) — বিহাৰুল আনৱাৰ';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ইমাম আল-বাকিৰ (আ.)-এ কৈছিল যে, টোপনি যোৱাৰ আগতে ইশাৰ পিছত তাছবীহ আয-যাহৰা পঢ়া ১০০০ ৰাকআত নফল নামাজতকৈ উত্তম। ইয়াৰ নূৰ আকাশলৈ উঠে।';

  @override
  String get tasbihFatimaGiftPre => 'নবীৰ পৰা এটা উপহাৰ';

  @override
  String get tasbihFatimaGiftPost => 'প্ৰতিটো নামাজৰ পিছত পঢ়া হয়';

  @override
  String get prayerTrackerTitle => 'নামাজ ট্ৰেকাৰ';

  @override
  String get prayerTrackerPrayed => 'আদায় কৰা হৈছে';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count দিনৰ ধাৰাবাহিকতা';
  }

  @override
  String get prayerTrackerAllComplete =>
      'আজিৰ সকলো নামাজ সম্পূৰ্ণ হৈছে। আল্লাহে কবুল কৰক।';

  @override
  String get dhikrTrackerTitle => 'তাছবীহ আল-যাহৰা';

  @override
  String get dhikrTrackerCompletedToday => 'আজিৰ দিনত সম্পূৰ্ণ';

  @override
  String get dhikrTrackerNotDoneToday => 'আজিৰ দিনত কৰা হোৱা নাই';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count দিনৰ ধাৰাবাহিকতা';
  }

  @override
  String get dhikrReminderTitle => 'তাছবীহ সোঁৱৰণী';

  @override
  String get dhikrReminderDescription =>
      'আপোনাৰ তাছবীহ আল-যাহৰা (ছা.) পঢ়িবলৈ এটা কোমল দৈনিক সোঁৱৰণী।';

  @override
  String get dhikrReminderEnable => 'তাছবীহ সোঁৱৰণী সক্ৰিয় কৰক';

  @override
  String get dhikrReminderTimeLabel => 'সোঁৱৰণীৰ সময়';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'দৈনিক হাদীছ';

  @override
  String get hadithLabelArabic => 'আৰবী';

  @override
  String get hadithLabelTranslation => 'অনুবাদ';

  @override
  String get hadithBadge => 'হাদীছ';

  @override
  String get hadithShare => 'এই হাদীছ শ্বেয়াৰ কৰক';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara-ৰ জৰিয়তে';
  }

  @override
  String get hadithNavPrevious => 'পূৰ্বৰ';

  @override
  String get hadithNavNext => 'পৰৱৰ্তী';

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
  String get imamLabelBorn => 'জন্ম';

  @override
  String get imamLabelMartyrdom => 'শাহাদাত';

  @override
  String get imamLabelStatus => 'অৱস্থা';

  @override
  String get imamSectionBiography => 'জীৱনী';

  @override
  String get imamSectionFamousSaying => 'প্ৰসিদ্ধ উক্তি';

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
  String get imamOrdinal11 => '১১শ ইমাম';

  @override
  String get imamOrdinal12 => '১২শ ইমাম';

  @override
  String get duaAudioScreenTitle => 'দোৱাসমূহ শুনক';

  @override
  String get duaAudioScreenSubtitle =>
      'শুনিবলৈ এটা দোৱা বাছক। play বা pause কৰিবলৈ tile-টো টেপ কৰক।';

  @override
  String get duaAudioComingSoonMessage =>
      'এই দোৱাৰ audio আগন্তুক update-ত উপলব্ধ হ’ব।';

  @override
  String get duaAudioClose => 'বন্ধ কৰক';

  @override
  String get duaAudioError =>
      'Audio লোড কৰিব পৰা নগ’ল। অনুগ্ৰহ কৰি আপোনাৰ সংযোগ পৰীক্ষা কৰক।';

  @override
  String get duaAudioMetaTransmittedBy => 'বৰ্ণনা কৰিছে';

  @override
  String get duaAudioMetaOccasion => 'উপলক্ষ';

  @override
  String get duaAudioMetaDuration => 'অৱধি';

  @override
  String get quickActionDailyHadith => 'দৈনিক হাদীছ';

  @override
  String get quickAction14Masumeen => 'Fourteen Infallibles';

  @override
  String get quickActionListenDuas => 'শুনক';

  @override
  String get quickActionTasbihat => 'নামাজ পথপ্ৰদৰ্শক';

  @override
  String get pilgrimageSectionTitle => 'পবিত্ৰ যাত্ৰা';

  @override
  String get pilgrimageSectionSubtitle =>
      'হজ্জ আৰু উমৰাহৰ সম্পূৰ্ণ পথপ্ৰদৰ্শক — মক্কাৰ আল্লাহৰ পবিত্ৰ গৃহলৈ তীৰ্থযাত্ৰা';

  @override
  String get hajjCardTitle => 'হজ্জ';

  @override
  String get hajjCardSubtitle => 'ইছলামৰ পঞ্চম স্তম্ভ';

  @override
  String get hajjCardDescription =>
      'বছৰেকীয়া মহান তীৰ্থযাত্ৰা — সামৰ্থ্য থকা প্ৰতিজন মুছলিমৰ বাবে জীৱনত এবাৰ ফৰজ';

  @override
  String get hajjScreenTitle => 'হজ্জ পথপ্ৰদৰ্শক';

  @override
  String get hajjScreenSubtitle => 'মহান তীৰ্থযাত্ৰাৰ ধাপে ধাপে পথপ্ৰদৰ্শক';

  @override
  String get umrahCardTitle => 'উমৰাহ';

  @override
  String get umrahCardSubtitle => 'সৰু তীৰ্থযাত্ৰা';

  @override
  String get umrahCardDescription =>
      'অত্যন্ত ফলপ্ৰসূ আধ্যাত্মিক যাত্ৰা যি বছৰৰ যিকোনো সময়ত কৰা যায়';

  @override
  String get umrahScreenTitle => 'উমৰাহ পথপ্ৰদৰ্শক';

  @override
  String get umrahScreenSubtitle => 'সৰু তীৰ্থযাত্ৰাৰ ধাপে ধাপে পথপ্ৰদৰ্শক';

  @override
  String get pilgrimageStepsTitle => 'ৰীতি-নীতি আৰু ধাপসমূহ';

  @override
  String get pilgrimageImportantNotesTitle => 'গুৰুত্বপূৰ্ণ টোকা';

  @override
  String get pilgrimageDuaTitle => 'এই পদৰ বাবে দোআ';

  @override
  String get pilgrimageJafariNoteTitle => 'জাফাৰী ফিক্ব নোট';

  @override
  String get pilgrimageComplete => '✓ সম্পূৰ্ণ';

  @override
  String get pilgrimageMarkDone => 'সম্পন্ন হিচাপে চিহ্নিত কৰক';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$doneৰ পৰা $total পদ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes মিনিট';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'শিয়া হজ্জযাত্ৰীসকল';

  @override
  String get pilgrimageShiaNoteBody =>
      'বহুতো শিয়া হাজীয়ে মদিনালৈ গৈ Masjid al-Nabawi ত নবী মুহাম্মদ (SAW)-ৰ জিয়াৰত কৰে আৰু Jannat al-Baqi ত থকা কবরসমূহ দৰ্শন কৰে। এই ভ্ৰমণসমূহৰ গভীৰ আধ্যাত্মিক তাৎপৰ্য আছে, যদিও এইবোৰ নিজে হজ্জৰ আনুষ্ঠানিক কৰ্ম নহয়।';

  @override
  String get hajjIntro =>
      'হজ্জ ইছলামৰ পঞ্চম স্তম্ভ, আৰু শাৰীৰিক আৰু আৰ্থিকভাৱে সক্ষম প্ৰতিজন মুসলিমৰ ওপৰত জীৱনত এবাৰ ফৰজ। আজি অধিকাংশ দ্বাদশী শিয়া হাজীৰ ক্ষেত্ৰত ইয়াৰ অৰ্থ হৈছে Hajj al-Tamattu\', যি Dhul Hijjah মাহত নবী Ibrahim (AS), তেওঁৰ পুত্র Ismail (AS) আৰু Lady Hajar ৰ পদচিহ্ন অনুসৰি পালন কৰা হয়। এই গাইডত আমলসমূহৰ Ja\'fari ৰূপৰেখা অনুসৰণ কৰা হৈছে, আৰু মদিনাৰ জিয়াৰত হজ্জৰ আগতে বা পিছতে অত্যন্ত স্নেহভৰা আধ্যাত্মিক যাত্ৰা হিচাপে থাকি যায়।';

  @override
  String get umrahIntro =>
      'উমৰাহ হৈছে মক্কালৈ সৰু তীৰ্থযাত্ৰা আৰু হজ্জৰ দৰে নহয়, বছৰৰ যিকোনো সময়ত ইয়াক আদায় কৰিব পাৰি। যদিও ফৰজ নহয়, ইয়াৰ আধ্যাত্মিক ছৱাব অপাৰ, আৰু ইয়াক অতি পৰামৰ্শিত ইবাদত হিচাপে গণ্য কৰা হয়। ইয়াত হজ্জৰ সৈতে কেইবাটাও ৰীতি-নীতি একে, কিন্তু এইটো সৰু আৰু চাৰিটা মুখ্য আমলৰে গঠিত।';

  @override
  String get voiceInputTitle => 'ভয়েস ইনপুট';

  @override
  String get voiceInputMicTitle => 'মাইক';

  @override
  String get voiceInputMicSubtitle =>
      'লিখাৰ পৰিৱৰ্তে Ask Ayara লৈ আপোনাৰ ইনপুট কোৱা।';

  @override
  String get voiceInputMicDenied => 'মাইক ব্যৱহাৰৰ অনুমতি প্ৰদান কৰা হোৱা নাই।';

  @override
  String get voiceInputSpeak => 'পৰিসৰে কোৱা';

  @override
  String get voiceInputListening => 'শুনি আছে…';

  @override
  String get voiceInputPermissionDenied =>
      'ভয়েস ইনপুটৰ বাবে মাইক ব্যৱহাৰৰ অনুমতি প্ৰয়োজন।';
}
