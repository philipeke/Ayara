// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appTitle => 'අයාරා';

  @override
  String get languageSelectTitle => 'ඔබගේ භාෂාව තෝරන්න';

  @override
  String get languageSelectSub => 'මෙය පසුව සැකසුම් තුළදී වෙනස් කළ හැක';

  @override
  String get actionContinue => 'ඉදිරියට යන්න';

  @override
  String get languageSuggestedHeader => 'යෝජිත';

  @override
  String get languageAllHeader => 'සියලු භාෂා';

  @override
  String get languageSuggestedBadge => 'යෝජිත';

  @override
  String get languageSearchHint => 'සොයන්න…';

  @override
  String get planBasic => 'සම්මත';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'දෛනික මගපෙන්වීම';

  @override
  String get categorySlot02 => 'ඉමාන් සහ විශ්වාසය';

  @override
  String get categorySlot03 => 'සලාතය පිළිබඳ මෙනෙහි කිරීම';

  @override
  String get categorySlot04 => 'ඉවසීම සහ බලාපොරොත්තුව';

  @override
  String get categorySlot05 => 'සමාව ඉල්ලා සිටින්න';

  @override
  String get categorySlot06 => 'කරුණාව සහ දයාබරත්වය';

  @override
  String get categorySlot07 => 'ඇදහිල්ලේ ශක්තිය';

  @override
  String get categorySlot08 => 'කෘතඥ හදවත';

  @override
  String get categorySlot09 => 'ජීවිතයේ අරමුණ';

  @override
  String get categorySlot10 => 'පවුල් බැඳීම්';

  @override
  String get categorySlot11 => 'අභ්‍යන්තර සන්සුන්කම';

  @override
  String get categorySlot12 => 'නබිතුමාගේ ප්‍රඥාව';

  @override
  String get categorySlot13 => 'යහපත් චරිතය';

  @override
  String get categorySlot14 => 'ආකර්ෂණයන්ට එරෙහි වන්න';

  @override
  String get categorySlot15 => 'සන්ධ්‍යා ධික්ර්';

  @override
  String get categoryCustom => 'පෞද්ගලික මෙනෙහි කිරීම';

  @override
  String get dhikrMeaningSubhanallah => 'අල්ලාහ්ට මහීමය වේවා';

  @override
  String get dhikrMeaningAlhamdulillah => 'සියලු ප්‍රශංසා අල්ලාහ්ටය';

  @override
  String get dhikrMeaningAllahuAkbar => 'අල්ලාහ් ඉතාමත් ශ්‍රේෂ්ඨය';

  @override
  String get quranVerseHeartAtRest =>
      'නියතයෙන්ම, අල්ලාහ්ව සිහි කිරීම තුළ හදවත් සැනසීම ලබයි.';

  @override
  String get promptHint =>
      'ඉස්ලාමීය මගපෙන්වීම සහ මෙනෙහි කිරීම සඳහා කාණ්ඩයක් තට්ටු කරන්න';

  @override
  String get currentLanguage => 'වත්මන් භාෂාව';

  @override
  String get settingsLanguage => 'භාෂා සැකසුම්';

  @override
  String get settingsTitle => 'සැකසුම්';

  @override
  String get chooseLanguage => 'ඔබගේ භාෂාව තෝරන්න';

  @override
  String get continueCta => 'ඉදිරියට යන්න';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count වචන',
      one: '$count වචනය',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'විකල්ප';

  @override
  String get newCta => 'නව';

  @override
  String get actionsTitle => 'ඔබට කුමක් කිරීමට අවශ්‍යද?';

  @override
  String get copy => 'පිටපත් කරන්න';

  @override
  String get share => 'බෙදාගන්න';

  @override
  String get close => 'වසන්න';

  @override
  String get copiedToast => 'ක්ලිප්බෝඩ් වෙත පිටපත් කරන ලදී';

  @override
  String shareSubject(String category) {
    return 'අයාරා — $category';
  }

  @override
  String get regenerateErrorTitle => 'නව පිළිතුරක් ජනනය කළ නොහැකි විය';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nනැවත උත්සාහ කිරීමට ඔබට අවශ්‍යද?';
  }

  @override
  String get cancelCta => 'අවලංගු කරන්න';

  @override
  String get retryCta => 'නැවත උත්සාහ කරන්න';

  @override
  String get authTitle => 'ඔබගේ ගිණුම සාදන්න';

  @override
  String get continueAsGuest => 'අමුත්තෙකු ලෙස ඉදිරියට යන්න';

  @override
  String get signInGoogle => 'Google සමඟ පිවිසෙන්න';

  @override
  String get signInApple => 'Apple සමඟ පිවිසෙන්න';

  @override
  String get signInEmail => 'ඊමේල් සමඟ පිවිසෙන්න';

  @override
  String get upgradeWithApple => 'Apple සමඟ ඉදිරියට යන්න';

  @override
  String get mustAccept =>
      'ඔබ සේවා කොන්දේසි පිළිගෙන, රහස්‍යතා ප්‍රතිපත්තිය පිළිබඳ දැනුවත් විය යුතුය.';

  @override
  String get termsLabel => 'මම සේවා කොන්දේසි පිළිගනිමි';

  @override
  String get privacyLabel => 'මම රහස්‍යතා ප්‍රතිපත්තිය කියවා ඇත';

  @override
  String get marketingOptIn => 'පුවත් සහ දීමනා ලැබීමට මම එකඟ වෙමි';

  @override
  String get openTerms => 'සේවා කොන්දේසි';

  @override
  String get openPrivacy => 'රහස්‍යතා ප්‍රතිපත්තිය';

  @override
  String get accountSection => 'ගිණුම';

  @override
  String get guestMode => 'අමුත්තන්ගේ ආකාරය';

  @override
  String get signedIn => 'පිවිසී ඇත';

  @override
  String get upgradeHint =>
      'ගිණුමක් සාදා ඔබගේ මෙනෙහි කිරීම් උපාංග අතර සුරකින්න.';

  @override
  String get upgradeWithGoogle => 'Google සමඟ ඉදිරියට යන්න';

  @override
  String get signOut => 'ඉවත්වන්න';

  @override
  String get snackUpgraded => 'Google සමඟ ගිණුම උසස් කර ඇත ✅';

  @override
  String get snackSignedIn => 'Google සමඟ පිවිසී ඇත ✅';

  @override
  String get snackSignedOut => 'ඉවත් වී ඇත';

  @override
  String get snackSignedInApple => 'Apple සමඟ පිවිසී ඇත ✅';

  @override
  String get snackSignedInGoogle => 'Google සමඟ පිවිසී ඇත ✅';

  @override
  String get snackUpgradedApple => 'Apple සමඟ ගිණුම උසස් කර ඇත ✅';

  @override
  String get snackUpgradedGoogle => 'Google සමඟ ගිණුම උසස් කර ඇත ✅';

  @override
  String get historyTitle => 'පෙර මෙනෙහි කිරීම්';

  @override
  String get historyOpenCta => 'පෙර මෙනෙහි කිරීම්';

  @override
  String get historyEmpty => 'තවම සුරකින ලද මෙනෙහි කිරීම් නැත.';

  @override
  String get historyDeleteTitle => 'මෙනෙහි කිරීම මකා දමන්නද?';

  @override
  String get historyDeleteBody => 'මෙය තෝරාගත් අයිතමය ස්ථිරවම ඉවත් කරයි.';

  @override
  String get deleteCta => 'මකන්න';

  @override
  String get historyButton => 'පෙර මෙනෙහි කිරීම්';

  @override
  String get historyEmptyTitle => 'තවම මෙනෙහි කිරීම් නැත';

  @override
  String get historyEmptyBody =>
      'මුලින්ම යමක් සාදන්න — ඔබ සුරකින අයිතම මෙහි දිස්වනු ඇත.';

  @override
  String get historyDelete => 'මකන්න';

  @override
  String get footerTitle => 'Wilaya, Iman සහ Sabr සමඟ';

  @override
  String get footerSubtitle => 'වරකට එක් ප්‍රාර්ථනාවක්';

  @override
  String get genericErrorSnack =>
      'යමක් වැරදුණි — කරුණාකර මඳ වේලාවකින් නැවත උත්සාහ කරන්න.';

  @override
  String get upgradeAccountCta =>
      'ඔබගේ මෙනෙහි කිරීම් උපාංග අතර සුරකින්න – ගිණුමක් සාදන්න';

  @override
  String get deleteAccount => 'ගිණුම මකා දමන්න';

  @override
  String get exportData => 'මගේ දත්ත අපනයනය කරන්න';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'පොඩ්ඩක් ඉවසන්න 🐯\nඅයාරාට ඊළඟ එකට පෙර ටික වේලාවක් අවශ්‍යයි…';

  @override
  String get rateDailyLimit =>
      'දැනට ඔබගේ මෙනෙහි කිරීම් අවසන් වී ඇත.\nතවත් මෙනෙහි කිරීම් ලබාගන්න හෝ Wilaya වෙත උසස් වන්න.';

  @override
  String get rateCreditsExhausted =>
      'ඔබගේ සියලුම මෙනෙහි කිරීම් භාවිතා කර ඇත.\nඉදිරියට යාමට නැවත පුරවන්න හෝ Wilaya වෙත උසස් වන්න.';

  @override
  String get rateGraceCreditsExhausted =>
      'දැනට ඔබගේ මෙනෙහි කිරීම් අවසන් වී ඇත.\nතවත් මෙනෙහි කිරීම් ලබාගන්න හෝ Wilaya වෙත උසස් වන්න.';

  @override
  String get premiumDescription =>
      'Wilaya ප්‍රිමියම් විශේෂාංග, ඉදිරියේදී එන කාණ්ඩ සහ විශේෂ ලාංඡනයක් විවෘත කරයි.';

  @override
  String ratePlanExhausted(String plan) {
    return 'දැනට ඔබගේ මෙනෙහි කිරීම් අවසන් වී ඇත. සැලැස්ම: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ඔබගේ මෙනෙහි කිරීම් පරීක්ෂා කළ නොහැකි විය: $message';
  }

  @override
  String get rateCheckGenericError =>
      'ඔබගේ මෙනෙහි කිරීම් පරීක්ෂා කිරීමේදී යමක් වැරදුණි.';

  @override
  String get aiFallbackGeneric =>
      'යමක් වැරදුණි — කරුණාකර මඳ වේලාවකින් නැවත උත්සාහ කරන්න.';

  @override
  String get limitSectionTitle => 'මෙනෙහි කිරීම්';

  @override
  String get limitTodayLabel => 'භාවිතය';

  @override
  String limitCreditsLabel(Object credits) {
    return 'ඉතිරි මෙනෙහි කිරීම්: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'සැලැස්ම: $plan';
  }

  @override
  String get limitLoadingLabel => 'පූරණය වෙමින්…';

  @override
  String get limitLoadingLabelDescription =>
      'භාවිත සංඛ්‍යාලේඛන ලබාගන්නා අතරතුර මෙනෙහි කිරීමේ කාඩ්පතේ පෙන්වයි.';

  @override
  String get aiLimitTitle => 'මෙනෙහි කිරීම්';

  @override
  String get aiLimitSubtitle =>
      'සෑම පිළිතුරක්ම මෙනෙහි කිරීම 1ක් භාවිතා කරයි. Standard තුළ ආරම්භක මෙනෙහි කිරීම් ඇත. Wilaya ප්‍රිමියම් කාණ්ඩ විවෘත කරයි සහ top-up කිරීමට ඉඩ දෙයි.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total මෙනෙහි කිරීම් භාවිතා කර ඇත';
  }

  @override
  String get creditsSectionTitle => 'මෙනෙහි කිරීම්';

  @override
  String get creditsUsageLabel => 'භාවිතය';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'ඉතිරි මෙනෙහි කිරීම්: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'සැලැස්ම: $plan';
  }

  @override
  String get creditsLoadingLabel => 'පූරණය වෙමින්…';

  @override
  String get creditsLoadingLabelDescription =>
      'මෙනෙහි කිරීමේ සංඛ්‍යාලේඛන ලබාගන්නා අතරතුර පෙන්වයි.';

  @override
  String get creditsTitle => 'මෙනෙහි කිරීම්';

  @override
  String get creditsSubtitle =>
      'සෑම පිළිතුරක්ම මෙනෙහි කිරීම 1ක් භාවිතා කරයි. Standard තුළ ආරම්භක මෙනෙහි කිරීම් ඇත. Wilaya ප්‍රිමියම් කාණ්ඩ විවෘත කරයි සහ top-up කිරීමට ඉඩ දෙයි.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total මෙනෙහි කිරීම් භාවිතා කර ඇත';
  }

  @override
  String get settingsDeleteTitle => 'ගිණුම මකා දමන්න';

  @override
  String get settingsDeleteDescription =>
      'ඔබගේ ගිණුම සහ සම්බන්ධ සියලු දත්ත ස්ථිරවම මකා දමන්න.';

  @override
  String get settingsDeleteButtonLabel => 'මගේ ගිණුම මකා දමන්න';

  @override
  String get settingsDeleteDialogTitle => 'ගිණුම මකා දමන්නද?';

  @override
  String get settingsDeleteDialogBody =>
      'මෙම ක්‍රියාව ස්ථිර වන අතර ආපසු හැරවිය නොහැක.\n\nඔබගේ සියලුම සංවාද, ඉතිහාසය සහ ගිණුම් තොරතුරු මකා දමනු ඇත.';

  @override
  String get settingsDeleteDialogCancel => 'අවලංගු කරන්න';

  @override
  String get settingsDeleteDialogConfirm => 'මකන්න';

  @override
  String get settingsFreeLimitUsedTitle => 'ආරම්භක මෙනෙහි කිරීම් භාවිතා කර ඇත';

  @override
  String get settingsFreeLimitUsedDescription =>
      'මෙම උපාංගය සඳහා ආරම්භක මෙනෙහි කිරීම් භාවිතා කර ඇත. ඉදිරියට යාමට Wilaya වෙත උසස් වන්න හෝ තවත් මෙනෙහි කිරීම් මිලදී ගන්න.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'ආරම්භක මෙනෙහි කිරීම් භාවිතා කර ඇත';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'මෙම උපාංගය සඳහා ආරම්භක මෙනෙහි කිරීම් භාවිතා කර ඇත. ඉදිරියට යාමට Wilaya වෙත උසස් වන්න හෝ තවත් මෙනෙහි කිරීම් මිලදී ගන්න.';

  @override
  String get deviceBoundError =>
      'මෙම උපාංගය දැනටමත් වෙනත් ගිණුමකට සම්බන්ධ කර ඇත. කරුණාකර මුල් ගිණුමෙන් පිවිසෙන්න.';

  @override
  String get premiumTitle => 'Wilaya ආකාරය';

  @override
  String get premiumSubtitleBasic => 'අයාරාගේ සම්පූර්ණ අත්දැකීම විවෘත කරන්න.';

  @override
  String get premiumSubtitlePremium =>
      'ඔබ Wilaya මත සිටී. තවත් මෙනෙහි කිරීම් අවශ්‍යද?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'වත්මන් සැලැස්ම: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'මෙනෙහි කිරීම්: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'දැනට මිලදී ගැනීම් ලබා ගත නොහැක.';

  @override
  String get premiumSignInToPurchase =>
      'මෙනෙහි කිරීම් මිලදී ගැනීමට හෝ Wilaya විවෘත කිරීමට පිවිසෙන්න.';

  @override
  String get premiumRestorePurchases => 'මිලදී ගැනීම් ප්‍රතිෂ්ඨාපනය කරන්න';

  @override
  String get premiumProcessing => 'සැකසෙමින්…';

  @override
  String get premiumRestoreHintTitle =>
      'මෙම උපාංගයේ හෝ වෙනත් එකක දැනටමත් Wilaya හෝ මෙනෙහි කිරීම් මිලදී ගෙන තිබේද?';

  @override
  String get premiumRestoreHintBody =>
      'ඒවා නොපෙනේ නම් ඔබගේ මිලදී ගැනීම් ප්‍රතිෂ්ඨාපනය කරන්න.';

  @override
  String get premiumBuyCredits200 => 'මෙනෙහි කිරීම් 200ක් මිලදී ගන්න';

  @override
  String get premiumBuyCredits400 => 'මෙනෙහි කිරීම් 400ක් මිලදී ගන්න';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya ආකාරයට උසස් වන්න';

  @override
  String get premiumTopupHint =>
      'Wilaya සමඟ, ඔබට අවශ්‍ය විට අමතර මෙනෙහි කිරීම් top-up කළ හැක.';

  @override
  String get premiumUpgradeCta => 'උසස් කරන්න';

  @override
  String get premiumRequiredForCategory =>
      'මෙම කාණ්ඩය ලබා ගත හැක්කේ Wilaya භාවිතා කරන්නන්ට පමණි. සියලු ප්‍රිමියම් අන්තර්ගතය විවෘත කිරීමට සැකසුම් තුළදී උසස් වන්න.';

  @override
  String get premiumBenefitsBasic =>
      'අමතර මෙනෙහි කිරීම්, ප්‍රිමියම් කාණ්ඩ සහ ඔබට මගපෙන්වීම අවශ්‍ය විට නතර නොවී ඉදිරියට යාම සඳහා Wilaya විවෘත කරන්න.';

  @override
  String get premiumBenefitsPremium =>
      'ඔබ Wilaya ආකාරයේ සිටී. අඩුවෙමින් පවතී නම්, තවත් මෙනෙහි කිරීම් එකතු කර විරාමයකින් තොරව ඉදිරියට යන්න.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya විවෘත කරන්න';

  @override
  String get premiumButtonTopup1000 => 'මෙනෙහි කිරීම් 1000ක් එක් කරන්න';

  @override
  String get premiumBadge => 'Wilaya සක්‍රීයයි';

  @override
  String get premiumLoadingStore => 'ගබඩාව පූරණය වෙමින්…';

  @override
  String get premiumProductNotAvailable =>
      'මෙම නිෂ්පාදනය තවම ගබඩාවේ නොමැත. කරුණාකර පසුව නැවත උත්සාහ කරන්න.';

  @override
  String get premiumPurchaseError =>
      'මිලදී ගැනීමේදී යමක් වැරදුණි. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get premiumBuyCredits100 => 'මෙනෙහි කිරීම් 100ක් එක් කරන්න';

  @override
  String get premiumFeatureLocked =>
      'මෙම විශේෂාංගය භාවිතා කිරීමට Wilaya විවෘත කරන්න.';

  @override
  String get lockedCategoriesHint =>
      'සමහර කාණ්ඩ Wilaya සාමාජිකයින් සඳහා පමණක් සුරක්ෂිතයි. ඔබගේ ගමනේ සෑම මෙනෙහි කිරීමක්ම සොයා බැලීමට ඒවා විවෘත කරන්න.';

  @override
  String get freePlanBlockedTitle =>
      'ඔබ ඔබගේ ආරම්භක මෙනෙහි කිරීම් භාවිතා කර ඇත';

  @override
  String get freePlanBlockedBody =>
      'ඔබ ආරම්භක මෙනෙහි කිරීම් සමඟ Standard සැලැස්මේ සිටී, සහ සීමාවට පැමිණ ඇත. ඉදිරියට යාමට — සහ ප්‍රිමියම් කාණ්ඩ විවෘත කිරීමට — Wilaya වෙත උසස් වන්න.';

  @override
  String get freePlanBlockedCtaGoPremium => 'පහත ඇති Wilaya විකල්ප බලන්න';

  @override
  String get graceBlockedTitle => 'ඔබ ඔබගේ ආරම්භක මෙනෙහි කිරීම් භාවිතා කර ඇත';

  @override
  String get graceBlockedBody =>
      'ඔබ ආරම්භක මෙනෙහි කිරීම් සමඟ Standard සැලැස්මේ සිටී, සහ සීමාවට පැමිණ ඇත. ඉදිරියට යාමට — සහ ප්‍රිමියම් කාණ්ඩ විවෘත කිරීමට — Wilaya වෙත උසස් වන්න.';

  @override
  String get graceBlockedCtaGoPremium => 'පහත ඇති Wilaya විකල්ප බලන්න';

  @override
  String get rateGuestMustSignIn =>
      'අයාරා සහ ඔබගේ මෙනෙහි කිරීම් භාවිතා කිරීමට පිවිසෙන්න.';

  @override
  String get guestNoCreditsTitle => 'අමුත්තන්ගේ ආකාරය';

  @override
  String get guestNoCreditsBody =>
      'අමුත්තෙකු ලෙස ඔබට යෙදුම විමසිලිමත් විය හැකි නමුත් මෙනෙහි කිරීම් භාවිතා කළ නොහැක. පසුව සැකසුම් තුළදී පිවිසී මෙනෙහි කිරීම් සහ මිලදී ගැනීම් විවෘත කරන්න.';

  @override
  String get guestDialogContinue => 'ඉදිරියට යන්න';

  @override
  String get guestDialogLoginInstead => 'ඒ වෙනුවට පිවිසෙන්න';

  @override
  String get optionalLabel => 'විකල්ප';

  @override
  String get accountDeleteSuccessTitle => 'ගිණුම මකා ඇත';

  @override
  String get accountDeleteSuccessBody =>
      'ඔබගේ ගිණුම සහ සම්බන්ධ දත්ත සාර්ථකව මකා දමා ඇත.';

  @override
  String get accountDeleteSuccessClose => 'වසන්න';

  @override
  String get accountDeleteErrorTitle => 'ගිණුම මකා දැමිය නොහැකි විය';

  @override
  String get accountDeleteErrorClose => 'හරි';

  @override
  String get accountDeleteReauthCancelled =>
      'නැවත සත්‍යාපනය අවලංගු විය. කරුණාකර නැවත පිවිසී නැවත උත්සාහ කරන්න.';

  @override
  String get accountDeleteReauthRequired =>
      'ගිණුම මකා දැමීමට මෑතකාලීන පිවිසුමක් අවශ්‍ය වේ. කරුණාකර ඉවත්වී නැවත පිවිසෙන්න, පසුව නැවත උත්සාහ කරන්න.';

  @override
  String get settingsDeletePermanentWarning =>
      'මෙම ක්‍රියාව ස්ථිර වන අතර ආපසු හැරවිය නොහැක. ඔබගේ ගිණුමට සම්බන්ධ සියලු දත්ත මකා දමනු ඇත.';

  @override
  String get dailyGraceTitle => 'දෛනික මගපෙන්වීම';

  @override
  String get dailyGraceScriptureLabel => 'අද දවසේ ආයතය';

  @override
  String get dailyGraceSaintLabel => 'සතියේ චරිතය';

  @override
  String get dailyGraceReflectionLabel => 'සන්ධ්‍යා මෙනෙහි කිරීම';

  @override
  String get dailyGraceCopiedToast => 'ආයතය ක්ලිප්බෝඩ් වෙත පිටපත් කරන ලදී';

  @override
  String get locationConsentLabel =>
      'Qibla දිශාව සහ සලාත් වේලාවන් සඳහා අයාරාට මගේ ස්ථානය භාවිතා කිරීමට ඉඩ දෙන්න';

  @override
  String get locationConsentHint =>
      'මෙම විශේෂාංග සඳහා පමණක් භාවිතා කරයි. ඔබගේ ස්ථානය කිසිවිටෙක බෙදා නොගනී හෝ සුරැකෙන්නේ නැත.';

  @override
  String get permissionsSectionTitle => 'Permissions';

  @override
  String get permissionsSectionSubtitle =>
      'Microphone, location, calendar and other device access used by Ayara';

  @override
  String get permissionsNotificationsTitle => 'Notifications';

  @override
  String get permissionsNotificationsSubtitle =>
      'Needed if you want prayer reminders, dhikr reminders, daily reflections and calendar reminders.';

  @override
  String get permissionsLocationTitle => 'Location';

  @override
  String get permissionsLocationSubtitle =>
      'Used for the Qibla compass and accurate prayer times based on where you are. Your location is never shared or stored.';

  @override
  String get permissionsLocationDenied => 'Location access is disabled.';

  @override
  String get permissionsCalendarTitle => 'Phone Calendar';

  @override
  String get permissionsCalendarSubtitle =>
      'Used when you choose to add an Islamic occasion to your phone calendar. Your device may ask for access then.';

  @override
  String get permissionsStatusWhenNeeded => 'When needed';

  @override
  String get askPageTitle => 'අයාරාවෙන් අසන්න';

  @override
  String get askPageDescription =>
      'ඇදහිල්ල, සලාතය, ජීවිතය, හෝ ඉස්ලාමීය ආචාර පිළිබඳ ඕනෑම දෙයක් අසන්න, සහ Qur\'an සහ Ahl al-Bayt උපදේශ මූලික කරගත් මගපෙන්වීම ලබා ගන්න.';

  @override
  String get askPageInputHint => 'ඔබගේ ප්‍රශ්නය මෙහි ටයිප් කරන්න…';

  @override
  String get askPageSubmitCta => 'අසන්න';

  @override
  String get askPageInputEmptyError => 'කරුණාකර මුලින් ප්‍රශ්නයක් ලියන්න.';

  @override
  String get askResultYourQuestion => 'ඔබගේ ප්‍රශ්නය';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'මක්කා දෙසට මුහුණ දී ඇත';

  @override
  String get qiblaCompassInstruction =>
      'රන් පාට ඉඟිය ඉහළට පෙන්වන තුරු ඔබගේ දුරකථනය හැරවන්න.\nඒ දිශාව Qibla (මක්කා) දෙස පෙන්වයි.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS සංඥාව දුර්වලයි. පිටතට ගොස් නැවත උත්සාහ කරන්න යන්න තට්ටු කරන්න.';

  @override
  String get qiblaRetry => 'නැවත උත්සාහ කරන්න';

  @override
  String get qiblaTitle => 'Qibla දිශාව';

  @override
  String qiblaDistanceLabel(String km) {
    return 'මක්කාට $km km';
  }

  @override
  String get qiblaLocationNeededTitle => 'ස්ථානය අවශ්‍යයි';

  @override
  String get qiblaLocationNeededBody =>
      'ඔබ සිටින ඕනෑම තැනකින් මක්කාහි කාබාව දෙසට දිශාව ගණනය කිරීමට අයාරාට ඔබගේ ස්ථානයට ප්‍රවේශය ලබා දෙන්න.';

  @override
  String get qiblaOpenSettings => 'සැකසුම් විවෘත කරන්න';

  @override
  String get qiblaCompassLoading => 'ඔබගේ ස්ථානය සොයමින්…';

  @override
  String get qiblaTowardMecca => 'මක්කා දෙසට';

  @override
  String get prayerTimesTitle => 'සලාත් වේලාවන්';

  @override
  String get prayerTimesFajr => 'ෆජ්ර්';

  @override
  String get prayerTimesDhuhr => 'දුහ්ර්';

  @override
  String get prayerTimesAsr => 'අස්ර්';

  @override
  String get prayerTimesMaghrib => 'මග්රිබ්';

  @override
  String get prayerTimesIsha => 'ඉෂා';

  @override
  String get prayerTimesLocationNeededTitle => 'ස්ථානය අවශ්‍යයි';

  @override
  String get prayerTimesLocationNeededBody =>
      'ඔබගේ නගරය සඳහා නිවැරදි සලාත් වේලාවන් ගණනය කිරීමට අයාරාට ඔබගේ ස්ථානයට ප්‍රවේශය ලබා දෙන්න.';

  @override
  String get prayerTimesNextLabel => 'ඊළඟ';

  @override
  String get prayerTimesDoneLabel => 'අවසන්';

  @override
  String get monthlyPrayerTimesTitle => 'මාසික සලාත් වේලාවන්';

  @override
  String get monthlyPrayerTimesViewButton => 'සම්පූර්ණ මාසය බලන්න';

  @override
  String get monthlyPrayerTimesNextMonth => 'ඊළඟ මාසය';

  @override
  String get monthlyPrayerTimesDayHeader => 'දිනය';

  @override
  String get sharePrayerTimes => 'සලාත් වේලාවන් බෙදාගන්න';

  @override
  String get notificationsSectionTitle => 'දැනුම්දීම්';

  @override
  String get notificationsSectionSubtitle =>
      'සලාත් මතක් කිරීම්, කැලැන්ඩර් සිදුවීම් සහ තවත් දේ';

  @override
  String get dailyReflectionReminderTitle => 'දෛනික මෙනෙහි කිරීම';

  @override
  String get dailyReflectionReminderDescription =>
      'අයාරා විවෘත කර ඔබගේ ඇදහිල්ල සමඟ සම්බන්ධ වීමට මෘදු දෛනික මතක් කිරීමක්.';

  @override
  String get dailyReflectionReminderEnable => 'දෛනික මතක් කිරීම සක්‍රීය කරන්න';

  @override
  String get dailyReflectionReminderTimeLabel => 'මතක් කිරීමේ වේලාව';

  @override
  String get prayerNotificationsTitle => 'සලාත් මතක් කිරීම්';

  @override
  String get prayerNotificationsDescription =>
      'ඔබ දවස පුරා සම්බන්ධව සිටීමට සෑම සලාත් වේලාවකටම පෙර මෘදු මතක් කිරීමක් ලබා ගන්න.';

  @override
  String get prayerNotificationsEnable => 'සලාත් මතක් කිරීම් සක්‍රීය කරන්න';

  @override
  String get prayerNotificationsOpenSettings =>
      'දැනුම්දීම් සැකසුම් විවෘත කරන්න';

  @override
  String get prayerNotificationsDenied => 'දැනුම්දීම් අක්‍රියයි';

  @override
  String get prayerNotificationsDeniedHint =>
      'සලාත් වේලාවන් සඳහා මතක් කිරීම් ලබා ගැනීමට සැකසුම් වෙත ගොස් Ayara සඳහා දැනුම්දීම් සක්‍රීය කරන්න.';

  @override
  String get notificationsConsentLabel =>
      'සලාත් වේලාවන් සඳහා දැනුම්දීම් ලබා දීමට ඉඩ දෙන්න';

  @override
  String get prayerNotifTitleFajr => '🌅 ෆජ්ර් — උදෑසන සලාතය';

  @override
  String get prayerNotifBodyFajr =>
      'ෆජ්ර් යනු Ahl al-Bayt හි උදෑසන සලාතයයි. ඉමාම් අලි (AS) පැවසුවේ: ඔබගේ අතිශයින් වටිනා භාරය රකින්නාක් මෙන් ෆජ්ර් සලාතය රකින්න. නැගිට, ඔබව පවිත්‍ර කර, අල්ලාහ් ඉදිරියෙහි සිටින්න.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ දුහ්ර් — දහවල් සලාතය';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayt හි ඉමාම්වරු සෑම සිහිකිරීමේ මොහොතක්ම අගය කළහ. ඔබගේ දවස මඳක් නවත්තන්න, අවශ්‍ය නම් දුහ්ර් සහ අස්ර් එක්කරන්න, සහ ඔබගේ හදවත නැවත අල්ලාහ් වෙත හැරවන්න.';

  @override
  String get prayerNotifTitleAsr => '🌤️ අස්ර් — සවස සලාතය';

  @override
  String get prayerNotifBodyAsr =>
      'සලාතය රකින්න, මන්ද එය ඔබ සහ අල්ලාහ් අතර ඇති ගිවිසුමයි. අස්ර් වේලාව පැමිණ ඇත — සිහිකිරීමකින් තොරව එය ඉක්මවා යාමට ඉඩ නොදෙන්න.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 මග්රිබ් — සන්ධ්‍යා සලාතය';

  @override
  String get prayerNotifBodyMaghrib =>
      'හිරු බැස ගොස් ඇත — Ahl al-Bayt විසින් දුආ සඳහා ශුද්ධ මොහොතක් ලෙස සලකන ලද්දකි. මග්රිබ් ඉටු කර, රාත්‍රිය ආරම්භ වීමට පෙර දුආවෙන් අල්ලාහ් වෙත ඔබගේ අත් ඔසවන්න.';

  @override
  String get prayerNotifTitleIsha => '🌙 ඉෂා — රාත්‍රී සලාතය';

  @override
  String get prayerNotifBodyIsha =>
      'ඔබගේ දවස අල්ලාහ් සමඟ අවසන් කරන්න. ඉමාම්වරු ඉෂා පසුව සලාත් අල්-ලයිල් දිරිමත් කළහ — නමුත් පළමුව ඔබගේ ඉෂාව සම්පූර්ණ කර, දවස ඔහුගේ සිහිකිරීමෙන් අවසන් කරන්න.';

  @override
  String get outOfReflectionsBannerText =>
      'ඔබ ඔබගේ සියලුම මෙනෙහි කිරීම් භාවිතා කර ඇත';

  @override
  String get outOfReflectionsBannerCta => 'තවත් ලබාගන්න';

  @override
  String get dhikrPageTitle => 'ධික්ර්';

  @override
  String get dhikrTapToCount => 'ගණන් කිරීමට වටය තට්ටු කරන්න';

  @override
  String get dhikrResetButton => 'නැවත සකසන්න';

  @override
  String get dhikrComplete => 'මාෂා\'අල්ලාහ්';

  @override
  String get dhikrCompleteMessage =>
      'ඔබ අල්ලාහ්ව 100 වතාවක් සිහි කිරීම සම්පූර්ණ කර ඇත. ඒවා ඔබගේ හදවතට ආලෝකයක් වේවා.';

  @override
  String get disclaimerTitle => 'මෙම යෙදුමේ මගපෙන්වීම ගැන';

  @override
  String get disclaimerBody =>
      'Ayara, Qur\'an සහ Ahl al-Bayt උපදේශ මූලික කරගත් ඉස්ලාමීය මෙනෙහි කිරීම්, මතක් කිරීම්, සහ ආධ්‍යාත්මික අන්තර්ගතයක් ඔබගේ පෞද්ගලික ඇදහිල්ලේ ගමනට සහය වීම සඳහා ලබා දෙයි. මෙම අන්තර්ගතය සාමාන්‍ය තොරතුරු සහ ආභාසමය අරමුණු සඳහා පමණක් සපයනු ලැබේ.\n\nAyara, සුදුසු අධ්‍යයන පිරිසට ප්‍රතිස්ථානයක් නොවේ.\nමෙම යෙදුමේ ඇති මගපෙන්වීම, සුදුසු ඉස්ලාමීය විද්වතුන්, marja\', හෝ ධර්මවේදය පිළිබඳ පුහුණුව ලැබූ ගුරුවරයෙකුට ආදේශයක් නොවේ. ශියා ඉස්ලාමය තුළ, ආගමික මගපෙන්වීම Ja\'fari fiqh පාසල සහ ජීවමාන Marja\' (අනුකරණයේ ප්‍රභවය) අනුගමනය කිරීමේ සම්ප්‍රදාය මත පදනම් වේ — ආගමික අනුශ්‍රවණය තුළ විශ්වාසීන්ට මගපෙන්වන සුදුසු නීතිවේදියෙකි. ආගමික තීන්දු, halal හා haram, හෝ පෞද්ගලික ආගමික වගකීම් පිළිබඳ ප්‍රශ්න ඔබට තිබේ නම්, සුදුසු Marja\' කෙනෙකු හෝ ඔබගේ ප්‍රජාවේ විද්වතෙකුගෙන් උපදෙස් ගන්න.\n\nමෙම යෙදුම ආගමික තීන්දු නිකුත් නොකරයි.\nAyara, fiqh හෝ පෞද්ගලික ආගමික වගකීම් පිළිබඳ බලධාරී තීරණ නොගනී. මෙහි කිසිවක් fatwa එකක් හෝ බැඳී පවතින ආගමික උපදෙස් ලෙස නොසැලකිය යුතුය.\n\nAhl al-Bayt හි කේන්ද්‍රීයත්වය.\nශියා ඉස්ලාමය තුළ, නබි මුහම්මද් ﷺ සහ ඔහුගේ පවිත්‍ර පවුල — Ahl al-Bayt — Qur\'an පසු ඉස්ලාමීය සමාජයේ බලධාරී මගපෙන්වන්නන් වේ. Ahl al-Bayt හි දොළොස් ඉමාම්වරු, ඉස්ලාමීය ඉගැන්වීම් විග්‍රහ කිරීමට දේවත්වයෙන් පත් කළ අයයි. මෙම යෙදුමේ අන්තර්ගතය එම සම්ප්‍රදාය ප්‍රතිබිම්බනය කරයි සහ එය විශ්වාසවන්තව ගෞරව කිරීමට උත්සාහ කරයි.\n\nප්‍රජාමය කරුණු.\nමෙම යෙදුම, ඔබගේ දේශීය මස්ජිද්, ඉස්ලාමීය මධ්‍යස්ථානය, සහ ආගමික ප්‍රජාවේ වැදගත් භූමිකාව ගැඹුරින් ගෞරව කරමින්, ඔබගේ ඇදහිල්ල සමඟ සම්බන්ධතාව දිරිමත් කිරීමට අරමුණු කරයි. ඔබට ආසන්න සුදුසු ගුරුවරුන් සමඟ සම්බන්ධ වී ඔවුන්ගෙන් ඉගෙන ගැනීමට අපි උනන්දු කරමු.';

  @override
  String get disclaimerClose => 'මට තේරුණා';

  @override
  String get disclaimerInfoTooltip => 'මෙම යෙදුමේ මගපෙන්වීම ගැන';

  @override
  String get disclaimerSettingsSubtitle =>
      'සාමාන්‍ය තොරතුරු අරමුණු සඳහා පමණි. සම්පූර්ණ ප්‍රකාශය කියවීමට තට්ටු කරන්න.';

  @override
  String get disclaimerSectionHeader => 'මගපෙන්වීම පිළිබඳ ප්‍රකාශය';

  @override
  String get navHome => 'මුල් පිටුව';

  @override
  String get navReflect => 'මෙනෙහි කරන්න';

  @override
  String get navDuas => 'දුආ';

  @override
  String get navCalendar => 'දින දර්ශනය';

  @override
  String get dashboardToday => 'අද';

  @override
  String get dashboardComingUp => 'ඉදිරියට එන දේ';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'දින',
      one: 'දිනය',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'ඉක්මන් ප්‍රවේශය';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'ධික්ර්';

  @override
  String get quickActionDailyGrace => 'මගපෙන්වීම';

  @override
  String get quickActionPrayerTimes => 'සලාත් වේලාවන්';

  @override
  String get askAyaraTitle => 'අයාරාවෙන් අසන්න';

  @override
  String get askAyaraSubtitle =>
      'ඕනෑම ඉස්ලාමීය ප්‍රශ්නයක් අසන්න, සහ සලකා බලා, මගපෙන්වන පිළිතුරක් ලබාගන්න.';

  @override
  String get askAyaraHint => 'උදා. රමදානයේ වැදගත්කම කුමක්ද?';

  @override
  String get askAyaraSubmit => 'අසන්න';

  @override
  String get wisdomOfTheDayTitle => 'අද දවසේ ප්‍රඥාව';

  @override
  String get calendarScreenTitle => 'ඉස්ලාමීය දින දර්ශනය';

  @override
  String get calendarUpcomingOccasions => 'ඉදිරියට එන අවස්ථා';

  @override
  String get calendarOccasionRemindersTitle => 'අවස්ථා මතක් කිරීම්';

  @override
  String get calendarOccasionRemindersHint =>
      'සෑම අවස්ථාවකටම පෙර සවස දැනුම්දෙයි';

  @override
  String get calendarNotifPermissionDenied =>
      'දැනුම්දීම් සඳහා අවසර ප්‍රතික්ෂේප කර ඇත. එය ඔබගේ උපාංග සැකසුම් තුළ සක්‍රීය කරන්න.';

  @override
  String get calendarNoEvents => 'ඉදිරියට එන සිදුවීම් කිසිවක් හමු නොවීය.';

  @override
  String get calendarAddToPhone => 'දුරකථන දිනපතට එක් කරන්න';

  @override
  String get calendarAddedToPhone => 'දිනපතට එක් කර ඇත';

  @override
  String get calendarCountdownToday => 'අද';

  @override
  String get calendarCountdownTomorrow => 'හෙට';

  @override
  String calendarCountdownDays(int days) {
    return 'දින $days කින්';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'ජන';

  @override
  String get calendarMonthFeb => 'පෙබ';

  @override
  String get calendarMonthMar => 'මාර්';

  @override
  String get calendarMonthApr => 'අප්‍රේල්';

  @override
  String get calendarMonthMay => 'මැයි';

  @override
  String get calendarMonthJun => 'ජුනි';

  @override
  String get calendarMonthJul => 'ජූලි';

  @override
  String get calendarMonthAug => 'අගෝ';

  @override
  String get calendarMonthSep => 'සැප්';

  @override
  String get calendarMonthOct => 'ඔක්';

  @override
  String get calendarMonthNov => 'නොවැ';

  @override
  String get calendarMonthDec => 'දෙසැ';

  @override
  String get calendarSeasonMuharramEarly => 'මුහර්රම් දින — කර්බලා සිහි කරන්න';

  @override
  String get calendarSeasonAshura => 'අශුරා — යා හුසේන් (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'මුහර්රම් — ශෝක සහ මෙනෙහි කිරීමේ දින';

  @override
  String get calendarSeasonArbaeen => 'අර්බයින් — හුසේන්ගේ දින හතළිහ';

  @override
  String get calendarSeasonRoadToArbaeen => 'අර්බයින් වෙත මාර්ගය';

  @override
  String get calendarSeasonMabath => 'මබ්අත් මුබාරක් — වහී පැමිණීමේ උදය';

  @override
  String get calendarSeasonMidShaban =>
      'ෂාබාන් මැද — ඉමාම් අල්-මහ්දි (AJ) උපන් දිනය';

  @override
  String get calendarSeasonRamadan => 'රමදාන් මුබාරක් — Qur\'an මාසය';

  @override
  String get calendarSeasonGhadir => 'ඊද් අල්-ගදීර් මුබාරක්!';

  @override
  String get hijriMonth1 => 'මුහර්රම්';

  @override
  String get hijriMonth2 => 'සෆර්';

  @override
  String get hijriMonth3 => 'රබී අල්-අව්වල්';

  @override
  String get hijriMonth4 => 'රබී අල්-ථානි';

  @override
  String get hijriMonth5 => 'ජුමාදා අල්-අව්වල්';

  @override
  String get hijriMonth6 => 'ජුමාදා අල්-ථානි';

  @override
  String get hijriMonth7 => 'රජබ්';

  @override
  String get hijriMonth8 => 'ෂාබාන්';

  @override
  String get hijriMonth9 => 'රමදාන්';

  @override
  String get hijriMonth10 => 'ෂව්වාල්';

  @override
  String get hijriMonth11 => 'දු අල්-කිදා';

  @override
  String get hijriMonth12 => 'දු අල්-හිජ්ජා';

  @override
  String get duasScreenTitle => 'දුආ සහ Ziyarat';

  @override
  String get duasSearchHint => 'දුආ, ziyarat සොයන්න…';

  @override
  String get duasFilterAll => 'සියල්ල';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua සහ ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'දුආ කිසිවක් හමු නොවීය.';

  @override
  String get duaCategoryDaily => 'දෛනික';

  @override
  String get duaCategoryWeekly => 'සතිපතා';

  @override
  String get duaCategoryOccasions => 'අවස්ථා';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'උපත';

  @override
  String get eventTypeMartyrdom => 'ශහීද් බව';

  @override
  String get eventTypeOccasion => 'අවස්ථාව';

  @override
  String get duaCopyTooltip => 'පරිවර්තනය පිටපත් කරන්න';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'පරිවර්තනය';

  @override
  String get duaAskAiLabel => 'මෙම dua විස්තර කිරීමට අයාරාවෙන් අසන්න';

  @override
  String get duaAskAiLockedLabel => 'අයාරාවෙන් අසන්න (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara විස්තර කිරීම් Wilaya සාමාජිකයින්ට ලබා ගත හැක. සැකසුම් තුළදී උසස් වන්න.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" ගැන අයාරාවෙන් අසන්න — ඉක්මනින්!';
  }

  @override
  String get duaCopiedToast => 'Dua එක ක්ලිප්බෝඩ් වෙත පිටපත් කරන ලදී.';

  @override
  String get tasbihAllahuAkbarMeaning => 'අල්ලාහ් ඉතාමත් ශ්‍රේෂ්ඨය';

  @override
  String get tasbihAlhamdulillahMeaning => 'සියලු ප්‍රශංසා අල්ලාහ්ටය';

  @override
  String get tasbihSubhanallahMeaning => 'අල්ලාහ්ට මහීමය වේවා';

  @override
  String get tasbihResetTooltip => 'නැවත සකසන්න';

  @override
  String get tasbihCompleteTitle => 'Tasbih සම්පූර්ණයි';

  @override
  String get tasbihCompleteMessage => 'අල්ලාහ් ඔබගේ dhikr පිළිගන්නාවා.';

  @override
  String get tasbihTapHint => 'ගණන් කිරීමට ඕනෑම තැනක තට්ටු කරන්න';

  @override
  String get tasbihatScreenTitle => 'සලාත් මාර්ගෝපදේශය';

  @override
  String get tasbihatScreenSubtitle => 'සලාතයේ මහිමපැවසීම්';

  @override
  String get tasbihatScreenDescription =>
      'දෛනික සලාත් අතරතුර සහ පසුව කියවෙන මහිමපැවසීම් පිළිබඳ සම්පූර්ණ මාර්ගෝපදේශයක් — Ahl al-Bayt (a) සම්ප්‍රදාය අනුව.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => '3වන හා 4වන රකාආහ්හි කියවනු ලැබේ';

  @override
  String get tasbihatArba3Info =>
      'ශියා fiqh අනුව, Tasbiḥāt al-Arbaʿa, Dhuhr, Asr, Maghrib සහ Isha සලාත්හි 3වන හා 4වන රකාආහ්වල Surah al-Fatiha වෙනුවට කියවනු ලැබේ. එය එක් වරක් කියවීම wājib වන අතර, තුන් වරක් කියවීම mustaḥabb වේ.';

  @override
  String get tasbihatArba3Translation =>
      'අල්ලාහ්ට මහීමය වේවා · සියලු ප්‍රශංසා අල්ලාහ්ටය\nඅල්ලාහ් හැර වෙනත් දෙවියෙකු නැත · අල්ලාහ් ඉතාමත් ශ්‍රේෂ්ඨය';

  @override
  String get tasbihatArba3CompleteTitle => 'කියවීම සම්පූර්ණයි';

  @override
  String get tasbihatArba3CompleteMessage => 'ඔබගේ සලාතය පිළිගැනේවා — ආමීන්';

  @override
  String get tasbihatArba3TapHint => 'සෑම කියවීමකටම පසු තට්ටු කරන්න';

  @override
  String get tasbihatZahraSubtitle => 'සෑම සලාතයකටම පසු · මණි 100';

  @override
  String get tasbihatZahraOriginLabel => 'මූලය';

  @override
  String get tasbihatZahraHadith =>
      'ලේඩි ෆාතිමා අල්-සහ්රා (sa) නබිතුමා ﷺ අයදුම් කළේ සේවකයෙකු සඳහාය. එවිට එතුමා පැවසුවේ: \"එයට වඩා හොඳ දෙයක් මම ඔබට මග පෙන්වන්නම්ද? සෑම සලාතයකටම පසු Subḥānallāh 33 වරක්, Alḥamdulillāh 33 වරක්, සහ Allāhu Akbar 34 වරක් කියවන්න. එය ඔබට සේවකයෙකුට වඩා හොඳය.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, 85 වන කාණ්ඩය';

  @override
  String get tasbihatZahraOpenCounter => 'Tasbīḥ ගණකය විවෘත කරන්න';

  @override
  String get tasbihatDuasTitle => 'නිර්දේශිත දුආ';

  @override
  String get tasbihatDuasSubtitle => 'ඔබගේ සලාතය සම්පූර්ණ වූ පසු';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'සෑම අනිවාර්ය සලාතයකටම පසු';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'සෑම අනිවාර්ය සලාතයකටම පසු Āyat al-Kursī කියවන්නා, ඔහු සහ ජන්නතය අතර ඇත්තේ මරණය පමණි. ඉමාම් අල්-බාකීර් (a) එය Qur\'an හි වඩාත්ම ශ්‍රේෂ්ඨ ආයතවලින් එකක් බව පැවසුවේය.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'සෑම සලාතයකටම පසු · සියලු දුආවන් මුද්‍රා කරයි';

  @override
  String get tasbihatDuaSalawatSource => 'ඉමාම් අල්-සාදික් (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'නබිතුමා ﷺ සහ ඔහුගේ පවිත්‍ර පවුල (Āl Muḥammad) මත salawāt යැවීම සෑම dua එකක්ම මුද්‍රා කිරීමට නිර්දේශිතය. ඉමාම් අල්-සාදික් (a) පැවසුවේ: \"මුහම්මද් සහ ඔහුගේ පවුල මත ṣalawāt යවන තුරු dua එකක් අත්හිටුවී පවතින බවය.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'සෑම සලාතයකටම පසු · අපේ කාලයේ ඉමාම් වෙනුවෙන්';

  @override
  String get tasbihatDuaFarajSource =>
      'ඉමාම් අල්-හසන් අල්-අස්කරි (a) විසින් ඉගැන්වූ';

  @override
  String get tasbihatDuaFarajNote =>
      'ඉමාම් අල්-මහ්දී (අෆ්) යන අටවෙනි ඉමාමගේ නැවත පැමිණීම සඳහා වූ දුආක්, ඔහුගේ පියා විසින් ඉගැන්වූය. එය බොහෝ ශියා මුස්ලිම්න්ගේ පූජාකාරී ක්‍රියාවක් ලෙස ප්‍රාර්ථනා කිරීමෙන් පසු බොහෝ විට කියවෙයි.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'ලේඩි ෆාතිමාගේ Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'මග්රිබ් සහ ඉෂා පසු · විශේෂයෙන් නිර්දේශිතයි';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ඉමාම් අල්-බාකීර් (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ඉමාම් අල්-බාකීර් (a) පැවසුවේ, නින්දට පෙර ඉෂා පසු Tasbīḥ al-Zahrā කියවීම, නෆ්ල් සලාත් 1000 රකාආහ් වලට වඩා හොඳ බවය. එහි ආලෝකය අහසට නැඟේ.';

  @override
  String get tasbihFatimaGiftPre => 'නබිතුමාගෙන් ලැබුණු තෑග්ගක්';

  @override
  String get tasbihFatimaGiftPost => 'සෑම සලාතයකටම පසු කියවනු ලැබේ';

  @override
  String get prayerTrackerTitle => 'සලාත් අනුගමනය';

  @override
  String get prayerTrackerPrayed => 'සලාත් කළා';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'දින $count අඛණ්ඩව';
  }

  @override
  String get prayerTrackerAllComplete =>
      'අද දවසේ සියලුම සලාත් සම්පූර්ණයි. අල්ලාහ් ඒවා පිළිගන්නාවා.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'අද සම්පූර්ණ කර ඇත';

  @override
  String get dhikrTrackerNotDoneToday => 'අද කර නැත';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'දින $count අඛණ්ඩව';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ මතක් කිරීම';

  @override
  String get dhikrReminderDescription =>
      'ඔබගේ Tasbīḥ al-Zahrā (SA) කියවීමට මෘදු දෛනික මතක් කිරීමක්.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ මතක් කිරීම සක්‍රීය කරන්න';

  @override
  String get dhikrReminderTimeLabel => 'මතක් කිරීමේ වේලාව';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'දෛනික හදීස්';

  @override
  String get hadithLabelArabic => 'අරාබි';

  @override
  String get hadithLabelTranslation => 'පරිවර්තනය';

  @override
  String get hadithBadge => 'හදීස්';

  @override
  String get hadithShare => 'මෙම හදීස් බෙදාගන්න';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara හරහා';
  }

  @override
  String get hadithNavPrevious => 'පෙර';

  @override
  String get hadithNavNext => 'ඊළඟ';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'අසීමිත පන්දම් 14';

  @override
  String get imamsScreenSubtitle =>
      'නබි (සල්), ගැහැණු ෆාතිමා සහ අටවෙනි ඉමාම් — දුර්වල හා අසීමිත මාර්ගෝපදේශකයන් වන ශියා ඉස්ලාමයේ පිරිසිදු මාර්ගෝපදේශකයන්';

  @override
  String get imamLabelBorn => 'උපත';

  @override
  String get imamLabelMartyrdom => 'ශහීද් බව';

  @override
  String get imamLabelStatus => 'තත්ත්වය';

  @override
  String get imamSectionBiography => 'ජීවചരිතය';

  @override
  String get imamSectionFamousSaying => 'ප්‍රසිද්ධ ප්‍රකාශය';

  @override
  String get imamRoleProphet => 'අවසාන නබිතුමා';

  @override
  String get imamRoleInfallible => 'දෝෂ රහිතයා';

  @override
  String get imamOrdinal1 => '1වන ඉමාම්';

  @override
  String get imamOrdinal2 => '2වන ඉමාම්';

  @override
  String get imamOrdinal3 => '3වන ඉමාම්';

  @override
  String get imamOrdinal4 => '4වන ඉමාම්';

  @override
  String get imamOrdinal5 => '5වන ඉමාම්';

  @override
  String get imamOrdinal6 => '6වන ඉමාම්';

  @override
  String get imamOrdinal7 => '7වන ඉමාම්';

  @override
  String get imamOrdinal8 => '8වන ඉමාම්';

  @override
  String get imamOrdinal9 => '9වන ඉමාම්';

  @override
  String get imamOrdinal10 => '10වන ඉමාම්';

  @override
  String get imamOrdinal11 => '11වන ඉමාම්';

  @override
  String get imamOrdinal12 => '12වන ඉමාම්';

  @override
  String get duaAudioScreenTitle => 'Dua අසා බලන්න';

  @override
  String get duaAudioScreenSubtitle =>
      'අසන්න dua එකක් තෝරන්න. Play හෝ pause කිරීමට tile එක තට්ටු කරන්න.';

  @override
  String get duaAudioComingSoonMessage =>
      'මෙම dua සඳහා audio එක ඉදිරියේදී එන update එකකින් ලබා ගත හැකි වේ.';

  @override
  String get duaAudioClose => 'වසන්න';

  @override
  String get duaAudioError =>
      'Audio එක පූරණය කළ නොහැකි විය. කරුණාකර ඔබගේ සම්බන්ධතාව පරීක්ෂා කරන්න.';

  @override
  String get duaAudioMetaTransmittedBy => 'ප්‍රචාරකයා';

  @override
  String get duaAudioMetaOccasion => 'අවස්ථාව';

  @override
  String get duaAudioMetaDuration => 'කාලය';

  @override
  String get quickActionDailyHadith => 'දෛනික හදීස්';

  @override
  String get quickAction14Masumeen => 'අසීමිත පන්දම් 14';

  @override
  String get quickActionListenDuas => 'අසන්න';

  @override
  String get quickActionTasbihat => 'සලාත් මාර්ගෝපදේශය';

  @override
  String get pilgrimageSectionTitle => 'ශුද්ධ ගමන';

  @override
  String get pilgrimageSectionSubtitle =>
      'හජ් සහ උම්රා සඳහා සම්පූර්ණ මාර්ගෝපදේශ — මක්කාහි අල්ලාහ්ගේ ශුද්ධ ගෘහය වෙත ගමන';

  @override
  String get hajjCardTitle => 'හජ්';

  @override
  String get hajjCardSubtitle => 'ඉස්ලාමයේ පස්වැනි කුළුණ';

  @override
  String get hajjCardDescription =>
      'වාර්ෂික මහා හජ් — හැකියාව ඇති සෑම මුස්ලිම්වරයෙකුටම ජීවිතයේ එක් වරක් අනිවාර්යය';

  @override
  String get hajjScreenTitle => 'හජ් මාර්ගෝපදේශය';

  @override
  String get hajjScreenSubtitle => 'මහා හජ් සඳහා පියවරෙන් පියවර මාර්ගෝපදේශය';

  @override
  String get umrahCardTitle => 'උම්රා';

  @override
  String get umrahCardSubtitle => 'කුඩා හජ්';

  @override
  String get umrahCardDescription =>
      'වසරේ ඕනෑම වේලාවක සිදු කළ හැකි ගැඹුරු ආධ්‍යාත්මික ත්‍යාග ලැබෙන ගමනක්';

  @override
  String get umrahScreenTitle => 'උම්රා මාර්ගෝපදේශය';

  @override
  String get umrahScreenSubtitle => 'කුඩා හජ් සඳහා පියවරෙන් පියවර මාර්ගෝපදේශය';

  @override
  String get pilgrimageStepsTitle => 'අනුෂ්ඨාන සහ පියවර';

  @override
  String get pilgrimageImportantNotesTitle => 'වැදගත් සටහන්';

  @override
  String get pilgrimageDuaTitle => 'මෙම පියවර සඳහා දුආ';

  @override
  String get pilgrimageJafariNoteTitle => 'ජා\'ෆරි ෆික්හ් සටහන';

  @override
  String get pilgrimageComplete => '✓ සම්පූර්ණයි';

  @override
  String get pilgrimageMarkDone => 'සම්පූර්ණ ලෙස සලකන්න';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total පියවර';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes මිනිත්තු';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ශියා හජ්කරුවන්';

  @override
  String get pilgrimageShiaNoteBody =>
      'බොහෝ ශියා යාත්‍රිකයන් නබි මුහම්මද් (සල්)ගේ මස්ජිද් අල්-නබාවිහි සහ ජන්නත් අල්-බාකිහි කාළගතයන්ගේ ziyarat සඳහා මඩිනාට ගමන් කරයි. මෙම සංචාරයන් ගැඹුරු ආත්මික වැදගත්කමක් රැගෙන එයි, නමුත් එය හජ්ජ්ගේ ආචාර නොවේ.';

  @override
  String get hajjIntro =>
      'හජ්ජ් යනු ඉස්ලාමේ පස්වන කුලකයයි, ශාරීරික හා මූල්‍යමය හැකියාවක් ඇති සෑම මුස්ලිම්යකුටම ජීවිතයේ එක් වතාවක් අනිවාර්ය වේ. අද දිනයේ බොහෝ අටවෙනි ශියා යාත්‍රිකයන්ට, මෙය ඉබ්රාහීම් (අස)ගේ පියවරවලින්, ඔහුගේ පුතු ඉස්මායිල් (අස) සහ ගැහැණු හජර්ගේ අසමත්තා හජ්ජ් අල්-තමත්තු\' ලෙස සිදුකෙරේ. මෙම මාර්ගෝපදේශය ජා\'ෆරි ආකෘතියේ ආචාරයන් අනුගමනය කරයි, එසේම මඩිනාහි ziyarat හජ්ජ්ට පෙර හෝ පසුව ගැඹුරු ආදරයකින් යුක්ත සංචාරයක් ලෙස රැගෙන එයි.';

  @override
  String get umrahIntro =>
      'උම්රා යනු මක්කා වෙත සිදු කරන කුඩා හජ් වන අතර, හජ්ට වඩා වෙනස්ව, වසරේ ඕනෑම වේලාවක සිදු කළ හැක. එය අනිවාර්ය නොවුවත්, විශාල ආධ්‍යාත්මික ත්‍යාග ලබා දෙන අතර ඉතාමත් නිර්දේශිත ඉබාදතක් ලෙස සැලකේ. එය හජ් සමඟ සමහර අනුෂ්ඨාන බෙදා ගන්නා නමුත්, කෙටි වන අතර ප්‍රධාන කාර්යයන් හතරකින් සමන්විතය.';

  @override
  String get voiceInputTitle => 'ශබ්ද ඇතුළත් කිරීම';

  @override
  String get voiceInputMicTitle => 'මයික්‍රොෆෝනය';

  @override
  String get voiceInputMicSubtitle => 'ලියනවාට වෙනුවට Ayara අසන්න.';

  @override
  String get voiceInputMicDenied =>
      'මයික්‍රොෆෝනයට ප්‍රවේශය ප්‍රතික්ෂේප කරන ලදී.';

  @override
  String get voiceInputSpeak => 'ඇසෙන්න';

  @override
  String get voiceInputListening => 'ඇසෙනවා…';

  @override
  String get voiceInputPermissionDenied =>
      'ශබ්ද ඇතුළත් කිරීමට මයික්‍රොෆෝනයට ප්‍රවේශය අවශ්‍යයි.';
}
