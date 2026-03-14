// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'അയാര';

  @override
  String get languageSelectTitle => 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get languageSelectSub =>
      'നിങ്ങൾക്ക് ഇത് പിന്നീട് ക്രമീകരണങ്ങളിൽ മാറ്റാൻ കഴിയും';

  @override
  String get actionContinue => 'തുടരുക';

  @override
  String get languageSuggestedHeader => 'നിർദ്ദേശിത';

  @override
  String get languageAllHeader => 'എല്ലാ ഭാഷകൾ';

  @override
  String get languageSuggestedBadge => 'നിർദ്ദേശിത';

  @override
  String get languageSearchHint => 'തിരയുക…';

  @override
  String get planBasic => 'സ്റ്റാൻഡേർഡ്';

  @override
  String get planPremium => 'വിലായ';

  @override
  String get categorySlot01 => 'ദൈനിക നിർദ്ദേശനം';

  @override
  String get categorySlot02 => 'ഈമാൻ ও വിശ്വാസം';

  @override
  String get categorySlot03 => 'നമാസ് ധ്യാനം';

  @override
  String get categorySlot04 => 'ക്ഷമ ആശ്വാസം';

  @override
  String get categorySlot05 => 'ക്ഷമാപണ പ്രാർത്ഥന';

  @override
  String get categorySlot06 => 'കരുണ സഹതാപം';

  @override
  String get categorySlot07 => 'വിശ്വാസ ശക്തി';

  @override
  String get categorySlot08 => 'കൃതജ്ഞ ഹൃദയം';

  @override
  String get categorySlot09 => 'ജീവിത ലക്ഷ്യം';

  @override
  String get categorySlot10 => 'കുടുംബ ബന്ധങ്ങൾ';

  @override
  String get categorySlot11 => 'ആന്തരിക ശാന്തി';

  @override
  String get categorySlot12 => 'പ്രവാചക ജ്ഞാനം';

  @override
  String get categorySlot13 => 'നല്ല സ്വഭാവം';

  @override
  String get categorySlot14 => 'പരീക്ഷയെ പ്രതിരോധിക്കുക';

  @override
  String get categorySlot15 => 'സന്ധ്യ ധിക്കർ';

  @override
  String get categoryCustom => 'വ്യക്തിഗത ധ്യാനം';

  @override
  String get dhikrMeaningSubhanallah => 'അല്ലാഹുവിനു മഹിമ';

  @override
  String get dhikrMeaningAlhamdulillah => 'സകല പ്രശംസ അല്ലാഹുവിനു';

  @override
  String get dhikrMeaningAllahuAkbar => 'അല്ലാഹു മഹത്തരാണ്';

  @override
  String get quranVerseHeartAtRest =>
      'നിശ്ചയമായും, അല്ലാഹുവിന്റെ സ്മരണയിൽ ഹൃദയങ്ങൾ ശാന്തി കണ്ടെത്തുന്നു.';

  @override
  String get promptHint =>
      'ഇസ്ലാമിക നിർദ്ദേശനത്തിനും ധ്യാനത്തിനും ഒരു വിഭാഗം ടാപ്പ് ചെയ്യുക';

  @override
  String get currentLanguage => 'നിലവിലെ ഭാഷ';

  @override
  String get settingsLanguage => 'ഭാഷ ക്രമീകരണങ്ങൾ';

  @override
  String get settingsTitle => 'ക്രമീകരണങ്ങൾ';

  @override
  String get chooseLanguage => 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get continueCta => 'തുടരുക';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വാക്കുകൾ',
      one: '$count വാക്ക്',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ഓപ്ഷനുകൾ';

  @override
  String get newCta => 'പുതിയത്';

  @override
  String get actionsTitle => 'നിങ്ങൾ എന്തു ചെയ്യാൻ ആഗ്രഹിക്കുന്നു?';

  @override
  String get copy => 'പകർത്തുക';

  @override
  String get share => 'പങ്കിടുക';

  @override
  String get close => 'അടയ്ക്കുക';

  @override
  String get copiedToast => 'ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്തി';

  @override
  String shareSubject(String category) {
    return 'അയാര — $category';
  }

  @override
  String get regenerateErrorTitle => 'പുതിയ സമ്മതി സൃഷ്ടിക്കാൻ കഴിഞ്ഞില്ല';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nവീണ്ടും ശ്രമിക്കാൻ ആഗ്രഹിക്കുന്നുണ്ടോ?';
  }

  @override
  String get cancelCta => 'റദ്ദാക്കുക';

  @override
  String get retryCta => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get authTitle => 'നിങ്ങളുടെ കണക്ക് സൃഷ്ടിക്കുക';

  @override
  String get continueAsGuest => 'അതിഥി ആയി തുടരുക';

  @override
  String get signInGoogle => 'Google ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get signInApple => 'Apple ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get signInEmail => 'ഇമെയിൽ ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get upgradeWithApple => 'Apple ഉപയോഗിച്ച് തുടരുക';

  @override
  String get mustAccept =>
      'നിങ്ങൾ വ്യവസ്ഥകൾ അംഗീകരിക്കുകയും സ്വകാര്യത നയം അംഗീകരിക്കുകയും വേണ്ടതുണ്ട്.';

  @override
  String get termsLabel => 'ഞാൻ സേവന വ്യവസ്ഥകൾ അംഗീകരിക്കുന്നു';

  @override
  String get privacyLabel => 'ഞാൻ സ്വകാര്യത നയം വായിച്ചിട്ടുണ്ട്';

  @override
  String get marketingOptIn =>
      'വാർത്തകൾ പ്രസ്താവനകൾ ലഭിക്കാൻ ഞാൻ സമ്മതിക്കുന്നു';

  @override
  String get openTerms => 'സേവന വ്യവസ്ഥകൾ';

  @override
  String get openPrivacy => 'സ്വകാര്യത നയം';

  @override
  String get accountSection => 'കണക്ക്';

  @override
  String get guestMode => 'അതിഥി മോഡ്';

  @override
  String get signedIn => 'സൈൻ ഇൻ ചെയ്തു';

  @override
  String get upgradeHint =>
      'നിങ്ങളുടെ പ്രതിബിംബങ്ങൾ ഉപകരണങ്ങളിൽ സംരക്ഷിക്കുക ഒരു കണക്ക് സൃഷ്ടിച്ച്.';

  @override
  String get upgradeWithGoogle => 'Google ഉപയോഗിച്ച് തുടരുക';

  @override
  String get signOut => 'സൈൻ ഔട്ട് ചെയ്യുക';

  @override
  String get snackUpgraded => 'Google ഉപയോഗിച്ച് കണക്ക് അപ്ഗ്രേഡ് ചെയ്തു ✅';

  @override
  String get snackSignedIn => 'Google ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്തു ✅';

  @override
  String get snackSignedOut => 'സൈൻ ഔട്ട് ചെയ്തു';

  @override
  String get snackSignedInApple => 'Apple ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്തു ✅';

  @override
  String get snackSignedInGoogle => 'Google ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്തു ✅';

  @override
  String get snackUpgradedApple => 'Apple ഉപയോഗിച്ച് കണക്ക് അപ്ഗ്രേഡ് ചെയ്തു ✅';

  @override
  String get snackUpgradedGoogle =>
      'Google ഉപയോഗിച്ച് കണക്ക് അപ്ഗ്രേഡ് ചെയ്തു ✅';

  @override
  String get historyTitle => 'മുമ്പത്തെ പ്രതിബിംബങ്ങൾ';

  @override
  String get historyOpenCta => 'മുമ്പത്തെ പ്രതിബിംബങ്ങൾ';

  @override
  String get historyEmpty => 'ഇതുവരെ സംരക്ഷിത പ്രതിബിംബങ്ങൾ ഇല്ല.';

  @override
  String get historyDeleteTitle => 'പ്രതിബിംബം ഉരുവാക്കുക?';

  @override
  String get historyDeleteBody =>
      'ഇത് തിരഞ്ഞെടുത്ത ഇനം സ്ഥാപിതമായി നീക്കം ചെയ്യും.';

  @override
  String get deleteCta => 'ഉരുവാക്കുക';

  @override
  String get historyButton => 'മുമ്പത്തെ പ്രതിബിംബങ്ങൾ';

  @override
  String get historyEmptyTitle => 'ഇതുവരെ പ്രതിബിംബങ്ങൾ ഇല്ല';

  @override
  String get historyEmptyBody =>
      'ആദ്യം എന്തെങ്കിലും സൃഷ്ടിക്കുക — നിങ്ങളുടെ സംരക്ഷിത ഇനങ്ങൾ ഇവിടെ പ്രത്യക്ഷപ്പെടും.';

  @override
  String get historyDelete => 'ഉരുവാക്കുക';

  @override
  String get footerTitle => 'വിലായ, ഈമാൻ ഏബ് സാബ്റ് ഉപയോഗിച്ച്';

  @override
  String get footerSubtitle => 'ഒരു പ്രാർത്ഥന സമയം';

  @override
  String get genericErrorSnack =>
      'എന്തോ കുഴപ്പം സംഭവിച്ചു — കുറച്ച് നിമിഷം കഴിഞ്ഞ് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get upgradeAccountCta =>
      'നിങ്ങളുടെ പ്രതിബിംബങ്ങൾ ഉപകരണങ്ങളിൽ സംരക്ഷിക്കുക – ഒരു കണക്ക് സൃഷ്ടിക്കുക';

  @override
  String get deleteAccount => 'കണക്ക് ഉരുവാക്കുക';

  @override
  String get exportData => 'എന്റെ ഡാറ്റ ലഭ്യമാക്കുക';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'എളുപ്പമായ കാളെ 🐯\nഅയാരയ്ക്ക് അടുത്തത് മുമ്പ് ഒരു നിമിഷം ആവശ്യം…';

  @override
  String get rateDailyLimit =>
      'നിങ്ങൾ ഇപ്പോൾ പ്രതിബിംബങ്ങൾ കാലികമായി തീര്ന്നു.\nമയ്യ പ്രതിബിംബങ്ങൾ നേടുക അല്ലെങ്കിൽ വിലായയ്ക്ക് അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get rateCreditsExhausted =>
      'നിങ്ങൾ നിങ്ങളുടെ എല്ലാ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു.\nതുടരാൻ മയ്യയ്ക്ക് മയ്യ നേടുക അല്ലെങ്കിൽ വിലായയ്ക്ക് അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get rateGraceCreditsExhausted =>
      'നിങ്ങൾ ഇപ്പോൾ പ്രതിബിംബങ്ങൾ കാലികമായി തീര്ന്നു.\nമയ്യ പ്രതിബിംബങ്ങൾ നേടുക അല്ലെങ്കിൽ വിലായയ്ക്ക് അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get premiumDescription =>
      'വിലായ പ്രിമിയം ഫീച്ചറുകൾ, ഭാവിഷ്യത് വിഭാഗങ്ങൾ, ഈ ഖാസ് ബാഡ്ജ് അൺലോക്ക് ചെയ്യുന്നു.';

  @override
  String ratePlanExhausted(String plan) {
    return 'നിങ്ങളുടെ പ്രതിബിംബങ്ങൾ ഇപ്പോൾ പട്ടികയിൽ ഇല്ല. പദ്ധതി: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'നിങ്ങളുടെ പ്രതിബിംബങ്ങൾ പരിശോധിക്കാൻ കഴിഞ്ഞില്ല: $message';
  }

  @override
  String get rateCheckGenericError =>
      'നിങ്ങളുടെ പ്രതിബിംബങ്ങൾ പരിശോധിക്കുമ്പോൾ എന്തോ കുഴപ്പം സംഭവിച്ചു.';

  @override
  String get aiFallbackGeneric =>
      'എന്തോ കുഴപ്പം സംഭവിച്ചു — കുറച്ച് നിമിഷം കഴിഞ്ഞ് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get limitSectionTitle => 'പ്രതിബിംബങ്ങൾ';

  @override
  String get limitTodayLabel => 'ഉപയോഗം';

  @override
  String limitCreditsLabel(Object credits) {
    return 'ശേഷിച്ച പ്രതിബിംബങ്ങൾ: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'പദ്ധതി: $plan';
  }

  @override
  String get limitLoadingLabel => 'ലോഡ് ചെയ്യുന്നു…';

  @override
  String get limitLoadingLabelDescription =>
      'ഉപയോഗ സ്ഥിതിവിവരങ്ങൾ ഫെച്ച് ചെയ്യപ്പെടുമ്പോൾ പ്രതിബിംബങ്ങൾ കാർഡിൽ കാണിക്കുന്നു.';

  @override
  String get aiLimitTitle => 'പ്രതിബിംബങ്ങൾ';

  @override
  String get aiLimitSubtitle =>
      'ഓരോ പ്രതികരണം 1 പ്രതിബിംബം ഉപയോഗിക്കുന്നു. സ്റ്റാൻഡേർഡ് സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉൾപ്പെടുത്തുന്നു. വിലായ പ്രിമിയം വിഭാഗങ്ങൾ അൺലോക്ക് ചെയ്യുന്നു ഏബ് സാപ്സ് സജ്ജം.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു';
  }

  @override
  String get creditsSectionTitle => 'പ്രതിബിംബങ്ങൾ';

  @override
  String get creditsUsageLabel => 'ഉപയോഗം';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'ശേഷിച്ച പ്രതിബിംബങ്ങൾ: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'പദ്ധതി: $plan';
  }

  @override
  String get creditsLoadingLabel => 'ലോഡ് ചെയ്യുന്നു…';

  @override
  String get creditsLoadingLabelDescription =>
      'പ്രതിബിംബ സ്ഥിതിവിവരങ്ങൾ ഫെച്ച് ചെയ്യപ്പെടുമ്പോൾ കാണിക്കുന്നു.';

  @override
  String get creditsTitle => 'പ്രതിബിംബങ്ങൾ';

  @override
  String get creditsSubtitle =>
      'ഓരോ പ്രതികരണം 1 പ്രതിബിംബം ഉപയോഗിക്കുന്നു. സ്റ്റാൻഡേർഡ് സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉൾപ്പെടുത്തുന്നു. വിലായ പ്രിമിയം വിഭാഗങ്ങൾ അൺലോക്ക് ചെയ്യുന്നു ഏബ് സാപ്സ് സജ്ജം.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു';
  }

  @override
  String get settingsDeleteTitle => 'കണക്ക് ഉരുവാക്കുക';

  @override
  String get settingsDeleteDescription =>
      'നിങ്ങളുടെ കണക്ക് ഏബ് അതുമായി ബന്ധപ്പെട്ട എല്ലാ ഡാറ്റ സ്ഥാപിതമായി ഉരുവാക്കുക.';

  @override
  String get settingsDeleteButtonLabel => 'എന്റെ കണക്ക് ഉരുവാക്കുക';

  @override
  String get settingsDeleteDialogTitle => 'കണക്ക് ഉരുവാക്കുക?';

  @override
  String get settingsDeleteDialogBody =>
      'ഈ നടപ്പാടുണ്ട് സ്ഥാപിത ഏബ് കഴിയില്ല പൂർവ്വവസ്ഥ ചെയ്യുന്നത്.\n\nനിങ്ങളുടെ എല്ലാ സംഭാഷണങ്ങൾ, ചരിത്രം ഏബ് കണക്ക് വിവരങ്ങൾ ഉരുവാക്കപ്പെടും.';

  @override
  String get settingsDeleteDialogCancel => 'റദ്ദാക്കുക';

  @override
  String get settingsDeleteDialogConfirm => 'ഉരുവാക്കുക';

  @override
  String get settingsFreeLimitUsedTitle =>
      'സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ഈ ഉപകരണത്തിന്റെ സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു. വിലായയ്ക്ക് അപ്ഗ്രേഡ് ചെയ്യുക അല്ലെങ്കിൽ പ്രതിബിംബങ്ങൾ കീനു തുടരാൻ.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ഈ ഉപകരണത്തിന്റെ സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു. വിലായയ്ക്ക് അപ്ഗ്രേഡ് ചെയ്യുക അല്ലെങ്കിൽ പ്രതിബിംബങ്ങൾ കീനു തുടരാൻ.';

  @override
  String get deviceBoundError =>
      'ഈ ഉപകരണം ഇതിനകം മറ്റ് കണക്കിലേക്ക് ബന്ധിത ചെയ്തിരിക്കുന്നു. യഥാർത്ഥ കണക്കിൽ സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get premiumTitle => 'വിലായ മോഡ്';

  @override
  String get premiumSubtitleBasic => 'സമ്പൂർണ്ണ അയാര അനുഭവം അൺലോക്ക് ചെയ്യുക.';

  @override
  String get premiumSubtitlePremium =>
      'നിങ്ങൾ വിലായയിലുണ്ട്. കൂടുതൽ പ്രതിബിംബങ്ങൾ വേണോ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'നിലവിലെ പദ്ധതി: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'പ്രതിബിംബങ്ങൾ: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'വാങ്ങലുകൾ ഇപ്പോൾ ലഭ്യമല്ല.';

  @override
  String get premiumSignInToPurchase =>
      'പ്രതിബിംബങ്ങൾ വാങ്ങാൻ അല്ലെങ്കിൽ വിലായ അൺലോക്ക് ചെയ്യാൻ സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get premiumRestorePurchases => 'വാങ്ങലുകൾ പുനരുദ്ധാരണം';

  @override
  String get premiumProcessing => 'പ്രോസെസ് ചെയ്യുന്നു…';

  @override
  String get premiumRestoreHintTitle =>
      'ഇതിനകം ഈ ഉപകരണത്തിൽ അല്ലെങ്കിൽ മറ്റ് വിലായ അല്ലെങ്കിൽ പ്രതിബിംബങ്ങൾ വാങ്ങിയിരിക്കുന്നോ?';

  @override
  String get premiumRestoreHintBody =>
      'നിങ്ങളുടെ വാങ്ങലുകൾ കാണിക്കാൻ പുനരുദ്ധാരണം ചെയ്യുക.';

  @override
  String get premiumBuyCredits200 => '200 പ്രതിബിംബങ്ങൾ വാങ്ങുക';

  @override
  String get premiumBuyCredits400 => '400 പ്രതിബിംബങ്ങൾ വാങ്ങുക';

  @override
  String get premiumBecomePremiumOneTime =>
      'വിലായ മോഡിലേക്ക് അപ്ഗ്രേഡ് ചെയ്യുക';

  @override
  String get premiumTopupHint =>
      'വിലായ ഉപയോഗിച്ച്, നിങ്ങൾ ആവശ്യമുള്ളപ്പോൾ അധിക പ്രതിബിംബങ്ങൾ കൂടി ചേർക്കാൻ കഴിയും.';

  @override
  String get premiumUpgradeCta => 'അപ്ഗ്രേഡ് ചെയ്യുക';

  @override
  String get premiumRequiredForCategory =>
      'ഈ വിഭാഗം വിലായ ഉപയോക്താക്കൾക്കായി മാത്രമാണ്. എല്ലാ പ്രിമിയം ഉള്ളടക്കം അൺലോക്ക് ചെയ്യാൻ ക്രമീകരണങ്ങളിൽ അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get premiumBenefitsBasic =>
      'വിലായ അൺലോക്ക് ചെയ്യുക അധിക പ്രതിബിംബങ്ങൾ നേടാൻ, പ്രിമിയം വിഭാഗങ്ങൾ സ്ലഷ് ചെയ്യാൻ ഏബ് നിരന്തരം നിർദ്ദേശനത്തിന് തുടരാൻ.';

  @override
  String get premiumBenefitsPremium =>
      'നിങ്ങൾ വിലായ മോഡിലുണ്ട്. നിങ്ങൾ കുറയ്ക്കാൻ ആണെങ്കിൽ, കുറച്ച് അധിക പ്രതിബിംബങ്ങൾ ചേർക്കുക ഏബ് വിക്ഷേപണ ഇതര തുടരുക.';

  @override
  String get premiumButtonBecomePremium => 'വിലായ അൺലോക്ക് ചെയ്യുക';

  @override
  String get premiumButtonTopup1000 => '1000 പ്രതിബിംബങ്ങൾ കൂട്ടിച്ചേർക്കുക';

  @override
  String get premiumBadge => 'വിലായ സജ്ജമായിരിക്കുന്നു';

  @override
  String get premiumLoadingStore => 'സ്റ്റോർ ലോഡ് ചെയ്യുന്നു…';

  @override
  String get premiumProductNotAvailable =>
      'ഈ പ്രോഡക്ട് സ്റ്റോറിൽ ഇതുവരെ ലഭ്യമല്ല. പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get premiumPurchaseError =>
      'വാങ്ങലിൽ എന്തോ കുഴപ്പം സംഭവിച്ചു. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get premiumBuyCredits100 => '100 പ്രതിബിംബങ്ങൾ കൂട്ടിച്ചേർക്കുക';

  @override
  String get premiumFeatureLocked =>
      'ഈ ഫീച്ചർ സ്ലഷ് ചെയ്യാൻ വിലായ അൺലോക്ക് ചെയ്യുക.';

  @override
  String get lockedCategoriesHint =>
      'ചില വിഭാഗങ്ങൾ വിലായ അംഗങ്ങൾക്കായി സംരക്ഷിത ചെയ്തിരിക്കുന്നു. നിങ്ങളുടെ യാത്രയിലെ ഓരോ പ്രതിബിംബം പര്യവേക്ഷണം ചെയ്യാൻ അവയ് അൺലോക്ക് ചെയ്യുക.';

  @override
  String get freePlanBlockedTitle =>
      'നിങ്ങൾ നിങ്ങളുടെ സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു';

  @override
  String get freePlanBlockedBody =>
      'നിങ്ങൾ സ്റ്റാൻഡേർഡ് പദ്ധതിയിലുണ്ട് സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ച് ഏബ് നിങ്ങൾ പരിധി എത്തിയിരിക്കുന്നു. തുടരാൻ — ഏബ് പ്രിമിയം വിഭാഗങ്ങൾ അൺലോക്ക് ചെയ്യാൻ — വിലായയ്ക്ക് അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get freePlanBlockedCtaGoPremium => 'താഴെ വിലായ ഓപ്ഷനുകൾ കാണുക';

  @override
  String get graceBlockedTitle =>
      'നിങ്ങൾ നിങ്ങളുടെ സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു';

  @override
  String get graceBlockedBody =>
      'നിങ്ങൾ സ്റ്റാൻഡേർഡ് പദ്ധതിയിലുണ്ട് സ്ടാർട്ടർ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ച് ഏബ് നിങ്ങൾ പരിധി എത്തിയിരിക്കുന്നു. തുടരാൻ — ഏബ് പ്രിമിയം വിഭാഗങ്ങൾ അൺലോക്ക് ചെയ്യാൻ — വിലായയ്ക്ക് അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get graceBlockedCtaGoPremium => 'താഴെ വിലായ ഓപ്ഷനുകൾ കാണുക';

  @override
  String get rateGuestMustSignIn =>
      'അയാര ഉപയോഗ ചെയ്യാൻ ഏബ് നിങ്ങളുടെ പ്രതിബിംബങ്ങൾ സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get guestNoCreditsTitle => 'അതിഥി മോഡ്';

  @override
  String get guestNoCreditsBody =>
      'അതിഥി ആയി നിങ്ങൾ അപ്ലിക്കേഷൻ ബ്രൌസ് ചെയ്യാൻ കഴിയും, എന്നാൽ നിങ്ങൾ പ്രതിബിംബങ്ങൾ ഉപയോഗ ചെയ്യാൻ കഴിയില്ല. പ്രതിബിംബങ്ങൾ ഉപയോഗ ചെയ്യാൻ ഏബ് വാങ്ങലുകൾ അൺലോക്ക് ചെയ്യാൻ പിന്നീട് ക്രമീകരണങ്ങളിൽ ലോഗ് ഇൻ ചെയ്യുക.';

  @override
  String get guestDialogContinue => 'തുടരുക';

  @override
  String get guestDialogLoginInstead => 'പകരം ലോഗ് ഇൻ ചെയ്യുക';

  @override
  String get optionalLabel => 'ഓപ്ഷണൽ';

  @override
  String get accountDeleteSuccessTitle => 'കണക്ക് ഉരുവാക്കിയിരിക്കുന്നു';

  @override
  String get accountDeleteSuccessBody =>
      'നിങ്ങളുടെ കണക്ക് ഏബ് അതുമായി ബന്ധപ്പെട്ട ഡാറ്റ വിജയകരമായി ഉരുവാക്കിയിരിക്കുന്നു.';

  @override
  String get accountDeleteSuccessClose => 'അടയ്ക്കുക';

  @override
  String get accountDeleteErrorTitle => 'കണക്ക് ഉരുവാക്കാൻ കഴിഞ്ഞില്ല';

  @override
  String get accountDeleteErrorClose => 'ശരി';

  @override
  String get accountDeleteReauthCancelled =>
      'പുനർ-സാക്ഷ്യപ്പെടുത്തൽ റദ്ദാക്കിയിരിക്കുന്നു. വീണ്ടും സൈൻ ഇൻ ചെയ്ത് ഉരുവാക്കൽ വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get accountDeleteReauthRequired =>
      'കണക്ക് ഉരുവാക്കൽ സമീപകാലിന ലോഗിൻ ആവശ്യം. സൈൻ ഔട്ട് ചെയ്ത് വീണ്ടും സൈൻ ഇൻ ചെയ്ത് ഉരുവാക്കൽ വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get settingsDeletePermanentWarning =>
      'ഈ നടപ്പാടുണ്ട് സ്ഥാപിത ഏബ് കഴിയില്ല പൂർവ്വവസ്ഥ ചെയ്യുന്നത്. നിങ്ങളുടെ കണക്കിനുമായി ബന്ധപ്പെട്ട എല്ലാ ഡാറ്റ ഉരുവാക്കപ്പെടും.';

  @override
  String get dailyGraceTitle => 'ദൈനിക നിർദ്ദേശനം';

  @override
  String get dailyGraceScriptureLabel => 'ദിനത്തെ വേദാഗമം';

  @override
  String get dailyGraceSaintLabel => 'ആഴ്ചയുടെ പണ്ഡിതൻ';

  @override
  String get dailyGraceReflectionLabel => 'സന്ധ്യാ പ്രതിബിംബം';

  @override
  String get dailyGraceCopiedToast => 'വേദാഗമം ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്തി';

  @override
  String get locationConsentLabel =>
      'അയാരയ്ക്ക് കിബ്ലാ ദിശ ഏബ് പ്രാർത്ഥന സമയത്തിനായി എന്റെ സ്ഥാനം ഉപയോഗ ചെയ്യാൻ അനുമതി കൊടുക്കുക';

  @override
  String get locationConsentHint =>
      'ഈ ഫീച്ചറുകൾക്കായി ഉപയോഗിച്ച്. നിങ്ങളുടെ സ്ഥാനം ഒരിക്കലും പങ്കിടോ അല്ലെങ്കിൽ സംരക്ഷിത ചെയ്യോ.';

  @override
  String get askPageTitle => 'അയാരയ്ക്ക് ചോദിക്കുക';

  @override
  String get askPageDescription =>
      'വിശ്വാസം, പ്രാർത്ഥന, ജീവിതം അല്ലെങ്കിൽ ഇസ്ലാമിക ആചരണത്തെക്കുറിച്ച് എന്തെങ്കിലും ചോദിക്കുക ഏബ് ഖുർআൻ ഏബ് അহ്ലു അൽ-ബെയ്തിന്റെ കൃത്യത്വത്തിൽ വേരൂന്നിയ നിർദ്ദേശനം നേടുക.';

  @override
  String get askPageInputHint => 'നിങ്ങളുടെ ചോദ്യം ഇവിടെ നൊമ്പരിക്കുക…';

  @override
  String get askPageSubmitCta => 'ചോദിക്കുക';

  @override
  String get askPageInputEmptyError => 'ആദ്യം ഒരു ചോദ്യം എഴുതുക.';

  @override
  String get askResultYourQuestion => 'നിങ്ങളുടെ ചോദ്യം';

  @override
  String get guidancePageTitle => 'കിബ്ലാ';

  @override
  String get qiblaFacingMecca => 'മക്കാ മുഖം ചെയ്ത്';

  @override
  String get qiblaCompassInstruction =>
      'സ്വർണ്ണ സൂചി മുകളിലേക്ക് കാണിക്കുന്നതുവരെ നിങ്ങളുടെ ഫോൻ കറക്കുക.\nആ ദിശ കിബ്ലയിലേക്ക് (മക്കാ) കാണിക്കുന്നു.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS സിഗ്നൽ ദുർബലമാണ്. പുറത്ത് നീങ്ങുക ഏബ് പുനരായ്പ് ടാപ്പ് ചെയ്യുക.';

  @override
  String get qiblaRetry => 'പുനരായ്പ്';

  @override
  String get qiblaTitle => 'കിബ്ലാ ദിശ';

  @override
  String qiblaDistanceLabel(String km) {
    return 'മക്കായ്ക്കുതായി $km കി.മി.';
  }

  @override
  String get qiblaLocationNeededTitle => 'സ്ഥാനം ആവശ്യം';

  @override
  String get qiblaLocationNeededBody =>
      'നിങ്ങൾ എവിടെയുണ്ടെന്ന് കാബ നെ കാബാ കിബ്ലാ ദിശ കണക്കാക്കാൻ സ്ഥാനം സ്ലഷ് അയാരയ്ക്ക് അനുമതി കൊടുക്കുക.';

  @override
  String get qiblaOpenSettings => 'ക്രമീകരണങ്ങൾ തുറക്കുക';

  @override
  String get qiblaCompassLoading => 'നിങ്ങളുടെ സ്ഥാനം കണ്ടെത്തുന്നു…';

  @override
  String get qiblaTowardMecca => 'മക്കാ കാഴ്ച്ച';

  @override
  String get prayerTimesTitle => 'പ്രാർത്ഥന സമയങ്ങൾ';

  @override
  String get prayerTimesFajr => 'ഫജ്റ്';

  @override
  String get prayerTimesDhuhr => 'ദുഹ്റ്';

  @override
  String get prayerTimesAsr => 'അസ്റ്';

  @override
  String get prayerTimesMaghrib => 'മാഗ്രിബ്';

  @override
  String get prayerTimesIsha => 'ഇശാ';

  @override
  String get prayerTimesLocationNeededTitle => 'സ്ഥാനം ആവശ്യം';

  @override
  String get prayerTimesLocationNeededBody =>
      'നിങ്ങളുടെ നഗരത്തിനായി കൃത്യ പ്രാർത്ഥന സമയങ്ങൾ കണക്കാക്കാൻ സ്ഥാനം സ്ലഷ് അയാരയ്ക്ക് അനുമതി കൊടുക്കുക.';

  @override
  String get prayerTimesNextLabel => 'അടുത്ത';

  @override
  String get prayerTimesDoneLabel => 'ചെയ്ത';

  @override
  String get monthlyPrayerTimesTitle => 'മാസിക പ്രാർത്ഥന സമയങ്ങൾ';

  @override
  String get monthlyPrayerTimesViewButton => 'മാസ് മുഴുവൻ കാണുക';

  @override
  String get monthlyPrayerTimesNextMonth => 'അടുത്ത മാസം';

  @override
  String get monthlyPrayerTimesDayHeader => 'ദിനം';

  @override
  String get sharePrayerTimes => 'പ്രാർത്ഥന സമയങ്ങൾ പങ്കിടുക';

  @override
  String get notificationsSectionTitle => 'വിജ്ഞാപനങ്ങൾ';

  @override
  String get notificationsSectionSubtitle =>
      'പ്രാർത്ഥന സ്മരണകൾ, കലണ്ടർ ഇവന്റുകൾ ഏബ് കൂടുതൽ';

  @override
  String get dailyReflectionReminderTitle => 'ദൈനിക പ്രതിബിംബം';

  @override
  String get dailyReflectionReminderDescription =>
      'അയാര തുറക്കാൻ ഏബ് നിങ്ങളുടെ വിശ്വാസവുമായി ബന്ധം സ്ഥാപിക്കാൻ സൌമ്യ ദൈനിക സ്മരണ.';

  @override
  String get dailyReflectionReminderEnable => 'ദൈനിക സ്മരണ സജ്ജം ചെയ്യുക';

  @override
  String get dailyReflectionReminderTimeLabel => 'സ്മരണ സമയം';

  @override
  String get prayerNotificationsTitle => 'പ്രാർത്ഥന സ്മരണകൾ';

  @override
  String get prayerNotificationsDescription =>
      'ദിനത്തിലുടനുള്ള ബന്ധം സ്ഥിരം സഹായിക്കാൻ പ്രതിയെക്കാണ് സമയത്തിന് മുമ്പ് സൌമ്യ സ്മരണ നേടുക.';

  @override
  String get prayerNotificationsEnable => 'പ്രാർത്ഥന സ്മരണകൾ സജ്ജം ചെയ്യുക';

  @override
  String get prayerNotificationsOpenSettings =>
      'വിജ്ഞാപന ക്രമീകരണങ്ങൾ തുറക്കുക';

  @override
  String get prayerNotificationsDenied => 'വിജ്ഞാപനങ്ങൾ അപ്രവർത്തനം';

  @override
  String get prayerNotificationsDeniedHint =>
      'ക്രമീകരണങ്ങളിലേക്ക് പോയ് അയാരയ്ക്കായി വിജ്ഞാപനങ്ങൾ അനുമതി കൊടുക്കുക പ്രാർത്ഥന സമയ സ്മരണകൾ നേടാൻ.';

  @override
  String get notificationsConsentLabel =>
      'പ്രാർത്ഥന സമയത്തിനായി വിജ്ഞാപനങ്ങൾ അനുമതി കൊടുക്കുക';

  @override
  String get prayerNotifTitleFajr => '🌅 ഫജ്റ് — പ്രഭാത പ്രാർത്ഥന';

  @override
  String get prayerNotifBodyFajr =>
      'ഫജ്റ് അഹ്ലു അൽ-ബെയ്തിന്റെ പ്രഭാത പ്രാർത്ഥനയാണ്. ഇമാം അലി (AS) പറഞ്ഞിരിക്കുന്നു: ഉച്ചാരണ പ്രാർത്ഥന നിങ്ങളുടെ ഏറ്റവും വിലയുള്ള വിശ്വാസ ഉയരുന്നു പരിഷ്കരിക്കുക ഏബ് അല്ലാഹുവിന്റെ മുമ്പിൽ നില്കുക.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ദുഹ്റ് — മധ്യഭാഗ പ്രാർത്ഥന';

  @override
  String get prayerNotifBodyDhuhr =>
      'അഹ്ലു അൽ-ബെയ്തിന്റെ ഇമാമുമാർ സ്മരണയുടെ ഓരോ നിമിഷം വിലമതിച്ചിരുന്നു. നിങ്ങളുടെ ദിനം താമസം ചെയ്യുക, ദുഹ്റ് കൂടി അസ്റ് ഇതി വേണ്ടിയാൻ ഏബ് നിങ്ങളുടെ ഹൃദയം അല്ലാഹുവിലേക്ക് മടിക്കുക.';

  @override
  String get prayerNotifTitleAsr => '🌤️ അസ്റ് — ഉച്ചതരപ്പ് പ്രാർത്ഥന';

  @override
  String get prayerNotifBodyAsr =>
      'പ്രാർത്ഥന രക്ഷയ്ക്കുക, അത് നിങ്ങളുടെയും അല്ലാഹുവിന്റെയും തമ്മിൽ നിയമനമാണ്. അസ്റ് സമയം വന്നിരിക്കുന്നു — സ്മരണയില്ലാതെ ഇത് അതികടക്കുവിക്കുക.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 മാഗ്രിബ് — സൂര്യാസ്ത പ്രാർത്ഥന';

  @override
  String get prayerNotifBodyMaghrib =>
      'സൂര്യൻ അസ്തമയിച്ചിരിക്കുന്നു — നിമിഷം അഹ്ലു അൽ-ബെയ്തു പരിപവിത്ര കണ്ടിരുന്നു വിനയേച്ച. മാഗ്രിബ് അർപ്പണ ചെയ്ത് രാത്രി ആരംഭിക്കുന്നതിന് മുമ്പ് ദുവായിനായി അല്ലാഹുവിലേക്ക് നിങ്ങളുടെ കൈ തുറക്കുക.';

  @override
  String get prayerNotifTitleIsha => '🌙 ഇശാ — രാത്രി പ്രാർത്ഥന';

  @override
  String get prayerNotifBodyIsha =>
      'അല്ലാഹുവിന്റെ സാഹചര്യത്തിൽ നിങ്ങളുടെ ദിനം അവസാനിപ്പിക്കുക. ഇമാമുമാർ ഇശായ്ക്കതുപിന്നീട് സലാത് അൽ-ലയ്ൽ പ്രോത്സാഹിപ്പിച്ചിരുന്നു — എന്നാൽ ആദ്യം, നിങ്ങളുടെ ഇശാ പൂർത്തിയാക്കുക ഏബ് അവന്റെ സ്മരണയിൽ ദിനം അടയ്ക്കുക.';

  @override
  String get outOfReflectionsBannerText =>
      'നിങ്ങൾ നിങ്ങളുടെ എല്ലാ പ്രതിബിംബങ്ങൾ ഉപയോഗിച്ചിരിക്കുന്നു';

  @override
  String get outOfReflectionsBannerCta => 'കൂടുതൽ നേടുക';

  @override
  String get dhikrPageTitle => 'ധിക്കർ';

  @override
  String get dhikrTapToCount => 'എണ്ണാൻ വൃത്ത ടാപ്പ് ചെയ്യുക';

  @override
  String get dhikrResetButton => 'പുനർനിർണ്ണയം ചെയ്യുക';

  @override
  String get dhikrComplete => 'മാഷാ അല്ലാഹ്';

  @override
  String get dhikrCompleteMessage =>
      'നിങ്ങൾ അല്ലാഹുവിന്റെ 100 സ്മരണകൾ പൂർത്തിയാക്കിയിരിക്കുന്നു. അവ നിങ്ങളുടെ ഹൃദയത്തിനായി ഒരു വെളിച്ച ആയിരിക്കട്ടെ.';

  @override
  String get disclaimerTitle => 'ഈ അപ്ലിക്കേഷന്റെ നിർദ്ദേശനത്തെക്കുറിച്ച്';

  @override
  String get disclaimerBody =>
      'അയാര ഇസ്ലാമിക പ്രതിബിംബങ്ങൾ, സ്മരണകൾ ഏബ് ആത്മീയ ഉള്ളടക്കം നിങ്ങളുടെ വിശ്വാസ യാത്രയ് പിന്തുണ ചെയ്യാൻ നൽകുന്നു, ഖുർആൻ ഏബ് അഹ്ലു അൽ-ബെയ്തിന്റെ കൃത്യത്വത്തിൽ വേരൂന്നിയത്. ഈ ഉള്ളടക്കം പൊതു വിവരണാത്മക ഏബ് പ്രേരണാത്മക ആവശ്യത്തിനായി മാത്രം നൽകുന്നത്.\n\nഅയാര യോഗ്യ വിദ്യാഭ്യാസ ബദലായി അൽലേ.\nഈ അപ്ലിക്കേഷനിലെ നിർദ്ദേശനം പഠിത ഇസ്ലാമിക പണ്ഡിത, മർജാ\' അല്ലെങ്കിൽ ഭൂതിയായി പരിശീലിത അധ്യാപകരുടെ ബദലായി അൽലേ. നിങ്ങൾക്ക് ചോദ്യങ്ങൾ ഉണ്ടെങ്കിൽ ജാ\'ഫരി വിദ്യാഭ്യാസത്തിലെ മഡ്ഹാബ് ഏബ് ജീവനുള്ള മർജാ\' പിന്തുടരുന്നത്, നിങ്ങളുടെ സമുദായത്തിൽ ഒരു യോഗ്യ മർജാ\' അല്ലെങ്കിൽ പണ്ഡിതരിൽ നിന്ന് ഉപദേശം നേടുക.\n\nഈ അപ്ലിക്കേഷൻ ഇസ്ലാമിക വിധികൾ പ്രദാനം ചെയ്യില്ല.\nഅയാര ഈ അവകാശപത്രം അല്ലെങ്കിൽ വ്യക്തിഗത ഇസ്ലാമിക ബാധ്യതകൾ കാര്യത്തിൽ അധികാരമുള്ള നിർണ്ണയങ്ങൾ ചെയ്യുന്നില്ല. ഇവിടെ കോൻ ഫതാവാ അല്ലെങ്കിൽ ബാധ്യമായ ഇസ്ലാമിക നിർദ്ദേശനം ആയി കണക്കാക്കരുത്.\n\nআহ്ল അൽ-বেয়ার്ত് കেന്ദ്ര.\nഷിയ ഇസ്ലാമിൽ, പ്രവാചക മുഹമ്മദ് ﷺ ഏബ് അവന്റെ വിശുദ്ധ കുടുംബം — അഹ്ലു അൽ-ബെയ്ത് — ഖുർആനുപിന്നീട് ഇസ്ലാമിക സമുദായത്തിന്റെ അധികാരമുള്ള മാർഗ്ഗദർശനമാണ്. അഹ്ലു അൽ-ബെയ്തിന്റെ പന്ത്രണ്ട് ഇമാമുകൾ ഇസ്ലാമിക കൃത്യത്വത്തിന്റെ ദിവ്യനിയുക്ത വ്യാഖ്യാതാരാണ്. ഈ അപ്ലിക്കേഷനിലെ ഉള്ളടക്കം ഈ പരമ്പര പ്രതിബിംബിത ചെയ്യുന്നു ഏബ് അതിനെ വിശ്വാസ്യതായി മാനിക്കാൻ ശ്രമിക്കുന്നു.\n\nസമുദായ കാര്യങ്ങൾ.\nഈ അപ്ലിക്കേഷൻ വിശ്വാസത്തിനുമായി നിങ്ങളുടെ ഏകീകരണ പ്രോത്സാഹിപ്പിക്കാൻ ലക്ഷ്യം ഇരുവരായ് നിങ്ങളുടെ പ്രാദേശിക പള്ളി, ഇസ്ലാമിക കേന്ദ്രം ഏബ് മതപരിഷ്കരണ സമുദായത്തിന്റെ സുപ്രധാന പങ്ക് സാരമായി സബ്ബരിക്കുന്നു. നിങ്ങൾക്കടുത്ത് യോഗ്യ അധ്യാപകരിൽ നിന്ന് സമുദായ പരിപാലനം ഏബ് പഠന സാഹചര്യം സ്ഥിരം തുടരാൻ ഞാൻ പ്രോത്സാഹിപ്പിക്കുന്നു.';

  @override
  String get disclaimerClose => 'ഞാൻ മനസ്സിലാക്കുന്നു';

  @override
  String get disclaimerInfoTooltip =>
      'ഈ അപ്ലിക്കേഷന്റെ നിർദ്ദേശനത്തെക്കുറിച്ച്';

  @override
  String get disclaimerSettingsSubtitle =>
      'പൊതു വിവരണാത്മക ആവശ്യത്തിനായി. സമ്പൂർണ്ണ നിരസന വായിക്കാൻ ടാപ്പ് ചെയ്യുക.';

  @override
  String get disclaimerSectionHeader => 'നിർദ്ദേശനം നിരസന';

  @override
  String get navHome => 'പൃഷ്ഠം';

  @override
  String get navReflect => 'പ്രതിബിംബം';

  @override
  String get navDuas => 'ദുവാകൾ';

  @override
  String get navCalendar => 'കലണ്ടർ';

  @override
  String get dashboardToday => 'ഇന്ന്';

  @override
  String get dashboardComingUp => 'വരികയായിരിക്കുന്നു';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ദിനങ്ങൾ',
      one: 'ദിനം',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'വേഗ ആക്സസ്';

  @override
  String get quickActionQibla => 'കിബ്ലാ';

  @override
  String get quickActionDhikr => 'ധിക്കർ';

  @override
  String get quickActionDailyGrace => 'നിർദ്ദേശനം';

  @override
  String get quickActionPrayerTimes => 'പ്രാർത്ഥന സമയങ്ങൾ';

  @override
  String get askAyaraTitle => 'അയാരയ്ക്ക് ചോദിക്കുക';

  @override
  String get askAyaraSubtitle =>
      'ഏതെങ്കിലും ഇസ്ലാമിക ചോദ്യം ചോദിക്കുക ഏബ് ചിന്താഏവിത്, നിർദ്ദേശിത ഉത്തരം നേടുക.';

  @override
  String get askAyaraHint => 'ഉദാ. മുഹാരമിന്റെ പ്രാധാന്യം എന്താണ്?';

  @override
  String get askAyaraSubmit => 'ചോദിക്കുക';

  @override
  String get wisdomOfTheDayTitle => 'ദിന ജ്ഞാനം';

  @override
  String get calendarScreenTitle => 'ഇസ്ലാമിക കലണ്ടർ';

  @override
  String get calendarUpcomingOccasions => 'വരികയായിരിക്കുന്ന സംഭവങ്ങൾ';

  @override
  String get calendarOccasionRemindersTitle => 'സംഭവ സ്മരണകൾ';

  @override
  String get calendarOccasionRemindersHint =>
      'ഓരോ സംഭവത്തിനും മുമ്പത്തെ സന്ധ്യയിൽ അറിയിച്ചിരിക്കുന്നു';

  @override
  String get calendarNotifPermissionDenied =>
      'വിജ്ഞാപന അനുമതി നിരാകരിച്ചിരിക്കുന്നു. നിങ്ങളുടെ ഉപകരണ ക്രമീകരണങ്ങളിൽ അനുമതി കൊടുക്കുക.';

  @override
  String get calendarNoEvents =>
      'വരികയായിരിക്കുന്ന ഇവന്റുകൾ കണ്ടെത്താൻ കഴിഞ്ഞില്ല.';

  @override
  String get calendarAddToPhone => 'ഫോൺ കലണ്ടറിലേക���ക് ചേർക്കുക';

  @override
  String get calendarAddedToPhone => 'കലണ്ടറിൽ ചേർത്തു';

  @override
  String get calendarCountdownToday => 'ഇന്ന്';

  @override
  String get calendarCountdownTomorrow => 'നാളെ';

  @override
  String calendarCountdownDays(int days) {
    return 'ഇൻ $days ദിനങ്ങൾ';
  }

  @override
  String get calendarAH => 'ആ.ഹി.';

  @override
  String get calendarMonthJan => 'ജനു';

  @override
  String get calendarMonthFeb => 'ഫെബ്രു';

  @override
  String get calendarMonthMar => 'മാർ';

  @override
  String get calendarMonthApr => 'ഏപ്രി';

  @override
  String get calendarMonthMay => 'മേയ്';

  @override
  String get calendarMonthJun => 'ജൂൺ';

  @override
  String get calendarMonthJul => 'ജൂലൈ';

  @override
  String get calendarMonthAug => 'ആഗ';

  @override
  String get calendarMonthSep => 'സെപ്ടം';

  @override
  String get calendarMonthOct => 'ഒക്ടോ';

  @override
  String get calendarMonthNov => 'നവം';

  @override
  String get calendarMonthDec => 'ഡിസെ';

  @override
  String get calendarSeasonMuharramEarly => 'മുഹാരാമ് ദിനങ്ങൾ — കർബലാ സ്മരണ';

  @override
  String get calendarSeasonAshura => 'അാശുറാ — യാ ഹുസൈൻ (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'മുഹാരാമ് — വിലാപം ഏബ് പ്രതിബിംബ ദിനങ്ങൾ';

  @override
  String get calendarSeasonArbaeen => 'അർബാഈൻ — ഹുസൈൻ നാല്പതു ദിനങ്ങൾ';

  @override
  String get calendarSeasonRoadToArbaeen => 'അർബാഈൻ നെ വഴി';

  @override
  String get calendarSeasonMabath =>
      'മാബ\'അത് മുബാരക് — ദിവ്യവെളിപ്പാടിന്റെ പ്രഭാതം';

  @override
  String get calendarSeasonMidShaban =>
      'സാ\'ബാൻ മധ്യം — ഇമാം അൽ-മാഹദി (AJ) ജന്മദിനം';

  @override
  String get calendarSeasonRamadan => 'രമസാൻ മുബാരക് — ഖുർആന് മാസം';

  @override
  String get calendarSeasonGhadir => 'ഈദ് അൾ-ഗാദിർ മുബാരക്!';

  @override
  String get hijriMonth1 => 'മുഹാരാമ്';

  @override
  String get hijriMonth2 => 'സാഫാർ';

  @override
  String get hijriMonth3 => 'റാബി\' അൽ-ആവ്വൽ';

  @override
  String get hijriMonth4 => 'റാബി\' അൽ-താനി';

  @override
  String get hijriMonth5 => 'ജുമാദാ അൽ-ആവ്വൽ';

  @override
  String get hijriMonth6 => 'ജുമാദാ അൽ-താനി';

  @override
  String get hijriMonth7 => 'റാജബ്';

  @override
  String get hijriMonth8 => 'സാ\'ബാൻ';

  @override
  String get hijriMonth9 => 'രമസാൻ';

  @override
  String get hijriMonth10 => 'സവ്വാൽ';

  @override
  String get hijriMonth11 => 'ധു അൽ-കി\'ദാ';

  @override
  String get hijriMonth12 => 'ധു അൽ-ഹിജ്ജാ';

  @override
  String get duasScreenTitle => 'ദുവാകൾ ഏബ് സിയാരത്';

  @override
  String get duasSearchHint => 'ദുവാകൾ തിരയുക, സിയാരത്…';

  @override
  String get duasFilterAll => 'സകലം';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ദുവാകൾ ഏബ് സിയാരത്',
      one: '$count ദുവാ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'ദുവാകൾ കണ്ടെത്താൻ കഴിഞ്ഞില്ല.';

  @override
  String get duaCategoryDaily => 'ദൈനിക';

  @override
  String get duaCategoryWeekly => 'സാപ്താഹിക';

  @override
  String get duaCategoryOccasions => 'സംഭവങ്ങൾ';

  @override
  String get duaCategoryZiyarat => 'സിയാരത്';

  @override
  String get duaCategoryTasbih => 'തസ്ബിഹ്';

  @override
  String get eventTypeBirth => 'ജനനം';

  @override
  String get eventTypeMartyrdom => 'തീരത്';

  @override
  String get eventTypeOccasion => 'സംഭവം';

  @override
  String get duaCopyTooltip => 'പരിഭാഷ പകർത്തുക';

  @override
  String get duaToggleTransliteration => 'സങ്കേതാഭ്യാസം';

  @override
  String get duaToggleTranslation => 'പരിഭാഷ';

  @override
  String get duaAskAiLabel => 'ഈ ദുവാ വിശദീകരിക്കാൻ അയാരയ്ക്ക് ചോദിക്കുക';

  @override
  String get duaAskAiLockedLabel => 'അയാരയ്ക്ക് ചോദിക്കുക (വിലായ)';

  @override
  String get duaAiLockedMessage =>
      'അയാര വിശദീകരണങ്ങൾ വിലായ അംഗങ്ങൾക്കായി ലഭ്യമാണ്. ക്രമീകരണങ്ങളിൽ അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" സ്ലഷ് അയാരയ്ക് ചോദിക്കുക — വരികയായിരിക്കുന്നു!';
  }

  @override
  String get duaCopiedToast => 'ദുവാ ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്തി.';

  @override
  String get tasbihAllahuAkbarMeaning => 'അല്ലാഹു മഹത്തരാണ്';

  @override
  String get tasbihAlhamdulillahMeaning => 'സകല പ്രശംസ അല്ലാഹുവിനു';

  @override
  String get tasbihSubhanallahMeaning => 'അല്ലാഹുവിനു മഹിമ';

  @override
  String get tasbihResetTooltip => 'പുനർനിർണ്ണയം ചെയ്യുക';

  @override
  String get tasbihCompleteTitle => 'തസ്ബിഹ് പൂർത്തി';

  @override
  String get tasbihCompleteMessage =>
      'അല്ലാഹു നിങ്ങളുടെ ധിക്കർ സ്വീകരിക്കട്ടെ.';

  @override
  String get tasbihTapHint => 'എണ്ണാൻ എവിടെയും ടാപ്പ് ചെയ്യുക';

  @override
  String get tasbihatScreenTitle => 'പ്രാർത്ഥന നിർദ്ദേശം';

  @override
  String get tasbihatScreenSubtitle => 'പ്രാർത്ഥന സ്തുതികൾ';

  @override
  String get tasbihatScreenDescription =>
      'പ്രാർത്ഥനയിലെയും നിയിത സ്തുതികൾ പൂർണ്ണ നിർദ്ദേശം — അഹ്ലു അൽ-ബെയ്തിന്റെ (a) പരമ്പര അനുസരിച്ച്.';

  @override
  String get tasbihatArba3Title => 'തസ്ബിഹാത് അൽ-അർബാ\'ആ';

  @override
  String get tasbihatArba3Subtitle => 'നിയിത 3rd ഏബ് 4th রকാ\'ത്';

  @override
  String get tasbihatArba3Info =>
      'ഷിയാ ഫിക്കിയത്ത്, തസ്ബിഹാത് അൽ-അർബാ\'ആ ദുഹ്റ്, അസ്റ്, മാഗ്രിബ് ഏബ് ഇശായ്ക്കുടെ 3rd ഏബ് 4th രകാ\'ത്ത്ത് സൂരത് അൽ-ഫാതിഹാ പകരമാണ്. കുറഞ്ഞതും (വാജിബ്) നിയിത ഒരിക്കൽ ഏബ് വ്യതിരിക്ത നിയിത മൂന്നിരട്ടിയാണ്.';

  @override
  String get tasbihatArba3Translation =>
      'അല്ലാഹുവിനു മഹിമ · സകല പ്രശംസ അല്ലാഹുവിനു\nഅല്ലാഹ് അല്ലാതെ കോൈ നാ\'ഇ നാ\'ഇ · അല്ലാഹു മഹത്തരാണ്';

  @override
  String get tasbihatArba3CompleteTitle => 'നിയിത പൂർത്തി';

  @override
  String get tasbihatArba3CompleteMessage =>
      'നിങ്ങളുടെ പ്രാർത്ഥന സ്വീകരിക്കരുത് — ആമീൻ';

  @override
  String get tasbihatArba3TapHint => 'ഓരോ നിയിത പിന്നീട് ടാപ്പ് ചെയ്യുക';

  @override
  String get tasbihatZahraSubtitle => 'ഓരോ പ്രാർത്ഥന · 100 കമാൻ';

  @override
  String get tasbihatZahraOriginLabel => 'ഉത്പത്തി';

  @override
  String get tasbihatZahraHadith =>
      'ലേഡി ഫാതിമ അൽ-സാഹരാ (sa) പ്രവാചക ﷺ നുസ് ഒരു സേവകനായിത് കേണ്ടിയിരുന്നു. അവൻ പറഞ്ഞു: \"ഞാൻ നിനക് കൂടുതൽ നല്ലത് നിർദ്ദേശിക്കരുത്? ഓരോ പ്രാർത്ഥനയ്ക്കതുപിന്നീട് സുബ്ബാനാല്ലാഹ് 33 പ്രാവശ്യം, അൽ-ഹാംദുലില്ലാഹ് 33 പ്രാവശ്യം ഏബ് അല്ലാഹു അകബർ 34 പ്രാവശ്യം നിയിത ചെയ്യുക. ഇത് നിന്ന് സേവകരിൽ നിന്ന് കൂടുതൽ നല്ലതാണ്.\"';

  @override
  String get tasbihatZahraHadithSource => '— ബിഹാർ അൽ-ആനവാർ, ജ. 85';

  @override
  String get tasbihatZahraOpenCounter => 'തസ്ബിഹ് കൌണ്ടർ തുറക്കുക';

  @override
  String get tasbihatDuasTitle => 'വ്യതിരിക്ത ദുവാകൾ';

  @override
  String get tasbihatDuasSubtitle =>
      'നിങ്ങളുടെ പ്രാർത്ഥന പൂർത്തിയാക്കിയതുപിന്നീട്';

  @override
  String get tasbihatDuaAyatKursiTitle => 'ആയത് അൽ-കുർസി';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ഓരോ നിയുക്ത പ്രാർത്ഥന അതുപിന്നീട്';

  @override
  String get tasbihatDuaAyatKursiSource => 'സൂരത് അൽ-ബാക്കരാ 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ഓരോ നിയുക്ത പ്രാർത്ഥനയ്ക്കതുപിന്നീട് ആയത് അൽ-കുർസി നിയിത ചെയ്യുന്ന എന്ത് അവനെ ജന്നതിൻ ഇടയിൽ സ്ഥാനിതനാണ് പാപം അല്ലാതെ മരണം. ഇമാം അൽ-ബാക്കിർ (a) ഇത് കുർആനിലെ ഏറ്റവും ഉച്ചാരണ വലിയ ആയത് സ്ഥാനത്ത് പറഞ്ഞിരുന്നു.';

  @override
  String get tasbihatDuaSalawatTitle => 'സലാവാത്';

  @override
  String get tasbihatDuaSalawatWhen => 'ഓരോ പ്രാർത്ഥന · സകല ദുവാകൾ സീലിംഗ്';

  @override
  String get tasbihatDuaSalawatSource => 'ഇമാം അൽ-സാദിക് (a) — അൽ-കാഫി';

  @override
  String get tasbihatDuaSalawatNote =>
      'പ്രവാചക ﷺ ഏബ് അവന്റെ വിശുദ്ധ കുടുംബത്ത് (ആൽ മുഹമ്മദ്) ഉപരി സലാവാത് അയയ്ക്കാൻ ഓരോ ദുവായ് സീലിംഗ് ചെയ്യാൻ വ്യതിരിക്ത ചെയ്യുന്നു. ഇമാം അൽ-സാദിക് (a) പറഞ്ഞിരുന്നു: \"ഏതെങ്കിലും ദുവാ സന്താനിത ആണ് നിങ്ങൾ മുഹമ്മദ് ഏബ് അവന്റെ കുടുംബത്ത് ഉപരി സലാവാത് അയയ്ക്കാ വരെ.\"';

  @override
  String get tasbihatDuaFarajTitle => 'ദുവാ അൽ-ഫാരാജ്';

  @override
  String get tasbihatDuaFarajWhen => 'ഓരോ പ്രാർത്ഥന · അതിനെ സമയത്ത് ഇമാമിനായി';

  @override
  String get tasbihatDuaFarajSource =>
      'ഇമാം അൽ-ഹാസാൻ അൽ-\'ആസ്കരി (a) ഉപദേശിച്ച';

  @override
  String get tasbihatDuaFarajNote =>
      'ഇമാം അൽ-മാഹദി (af) വീണ്ടും പ്രത്യക്ഷതയ്ക്കുമായി ദുവാ, ബാരവ്വിഹ, ഇമാം, അവന്റെ അപ്പാ ഉപദേശിച്ച. ഓരോ പ്രാർത്ഥനയ്ക്കതുപിന്നീട് ശിയാ വിശ്വാസികൾ പ്രതിദിനം നിയിത ചെയ്യുന്നത് സമയത്ത് ഇമാമിനെ ഭക്തിപ്രകാശനമായി.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'ലേഡി ഫാതിമിന്റെ തസ്ബിഹ്';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'മാഗ്രിബ് ഏബ് ഇശായ് നിയിത · ത്യാഗ് വ്യതിരിക്ത';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ഇമാം അൽ-ബാക്കിർ (a) — ബിഹാർ അൽ-ആനവാർ';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ഇമാം അൽ-ബാക്കിർ (a) പറഞ്ഞിരുന്നു നിയിത തസ്ബിഹ് അൽ-സാഹരാ ഇശായ് നിയിത പിന്നീട് നിദ്രാ സ്വതः അപ്ഹരണ രാകയുടെ 1000 നിയിത പ്രാർത്ഥന നിയിത നിയിത നിയിത. അതിന്റെ പ്രകാശ ആകാശത്തേക്ക് കരുത് നിയിത.';

  @override
  String get tasbihFatimaGiftPre => 'പ്രവാചകരിൽ നിന്ന് സ്വതനം';

  @override
  String get tasbihFatimaGiftPost => 'ഓരോ പ്രാർത്ഥനയ്ക്കതുപിന്നീട് നിയിത';

  @override
  String get prayerTrackerTitle => 'പ്രാർത്ഥന ട്രാക്കർ';

  @override
  String get prayerTrackerPrayed => 'പ്രാർത്ഥന നിയിത';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ദിനം സ്ട്രീക്';
  }

  @override
  String get prayerTrackerAllComplete =>
      'ഓരോ പ്രാർത്ഥനകൾ ഇന്ന് പൂർത്തിയാക്കിയിരിക്കുന്നു. അല്ലാഹു സ്വീകരിക്കരുത്.';

  @override
  String get dhikrTrackerTitle => 'തസ്ബിഹ് അൽ-സാഹരാ';

  @override
  String get dhikrTrackerCompletedToday => 'ഇന്ന് പൂർത്തിയാക്കിയിരിക്കുന്നു';

  @override
  String get dhikrTrackerNotDoneToday => 'ഇന്ന് പൂർത്തിയാകൃത്';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ദിനം സ്ട്രീക്';
  }

  @override
  String get dhikrReminderTitle => 'തസ്ബിഹ് സ്മരണ';

  @override
  String get dhikrReminderDescription =>
      'നിങ്ങളുടെ തസ്ബിഹ് അൽ-സാഹരാ (SA) നിയിത സൌമ്യ ദൈനിക സ്മരണ.';

  @override
  String get dhikrReminderEnable => 'തസ്ബിഹ് സ്മരണ സജ്ജം ചെയ്യുക';

  @override
  String get dhikrReminderTimeLabel => 'സ്മരണ സമയം';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'ദൈനിക ഹദീത്ത്';

  @override
  String get hadithLabelArabic => 'അറബി';

  @override
  String get hadithLabelTranslation => 'പരിഭാഷ';

  @override
  String get hadithBadge => 'ഹദീത്';

  @override
  String get hadithShare => 'ഈ ഹദീത് പങ്കിടുക';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nവിയ അയാര';
  }

  @override
  String get hadithNavPrevious => 'മുമ്പത്തേത്';

  @override
  String get hadithNavNext => 'അടുത്ത';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 മസുമീൻ';

  @override
  String get imamsScreenSubtitle =>
      'പ്രവാചക, ലേഡി ഫാതിമ ഏബ് പന്ത്രണ്ട് ഇമാമുകൾ — ഇസ്ലാമത്തിന്റെ അതിരുക്ത മാർഗ്ഗദർശകർ';

  @override
  String get imamLabelBorn => 'ജനിച്ച';

  @override
  String get imamLabelMartyrdom => 'തീരത്';

  @override
  String get imamLabelStatus => 'സ്ഥിതി';

  @override
  String get imamSectionBiography => 'ജീവചരിത്രം';

  @override
  String get imamSectionFamousSaying => 'പ്രസിദ്ധ കഥ';

  @override
  String get imamRoleProphet => 'അന്തിമ പ്രവാചക';

  @override
  String get imamRoleInfallible => 'അതിരുക്ത';

  @override
  String get imamOrdinal1 => '1st ഇമാം';

  @override
  String get imamOrdinal2 => '2nd ഇമാം';

  @override
  String get imamOrdinal3 => '3rd ഇമാം';

  @override
  String get imamOrdinal4 => '4th ഇമാം';

  @override
  String get imamOrdinal5 => '5th ഇമാം';

  @override
  String get imamOrdinal6 => '6th ഇമാം';

  @override
  String get imamOrdinal7 => '7th ഇമാം';

  @override
  String get imamOrdinal8 => '8th ഇമാം';

  @override
  String get imamOrdinal9 => '9th ഇമാം';

  @override
  String get imamOrdinal10 => '10th ഇമാം';

  @override
  String get imamOrdinal11 => '11th ഇമാം';

  @override
  String get imamOrdinal12 => '12th ഇമാം';

  @override
  String get duaAudioScreenTitle => 'ദുവാകൾ കേൾക്കുക';

  @override
  String get duaAudioScreenSubtitle =>
      'കേൾക്കാൻ ഒരു ദുവാ തിരഞ്ഞെടുക്കുക. പ്ലേ അല്ലെങ്കിൽ താൽക്കാലികം കാണിക്കാൻ മിനിമം ടാപ്പ് ചെയ്യുക.';

  @override
  String get duaAudioComingSoonMessage =>
      'ഈ ദുവായുടെ ഓഡിയോ വരികയായിരിക്കുന്ന അപ്ഡേറ്റിൽ ലഭ്യമായിരിക്കും.';

  @override
  String get duaAudioClose => 'അടയ്ക്കുക';

  @override
  String get duaAudioError =>
      'ഓഡിയോ ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല. നിങ്ങളുടെ കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String get duaAudioMetaTransmittedBy => 'പ്രസാരിത ചെയ്ത';

  @override
  String get duaAudioMetaOccasion => 'സംഭവം';

  @override
  String get duaAudioMetaDuration => 'കാലാവധി';

  @override
  String get quickActionDailyHadith => 'ദൈനിക ഹദീത്';

  @override
  String get quickAction14Masumeen => '14 മസുമീൻ';

  @override
  String get quickActionListenDuas => 'കേൾക്കുക';

  @override
  String get quickActionTasbihat => 'പ്രാർത്ഥന നിർദ്ദേശം';

  @override
  String get pilgrimageSectionTitle => 'പരിപവിത്ര യാത്ര';

  @override
  String get pilgrimageSectionSubtitle =>
      'ഹജ് ഏബ് ഉമ്റയ്ക്കുതായി പൂർണ്ണ നിർദ്ദേശങ്ങൾ — മക്കായിലെ ഹോലി ഭവനത്തേക്ക് തീർത്ഥാടനം';

  @override
  String get hajjCardTitle => 'ഹജ്';

  @override
  String get hajjCardSubtitle => 'ഇസ്ലാമത്തിന്റെ അഞ്ചാമത് സ്തംഭം';

  @override
  String get hajjCardDescription =>
      'ഗ്രാൻഡ് വാർഷിക പരിപവിത്ര — നിയുക്ത മുസ്ലിമിൽ ജീവതകാലം സ്ഥാപിത വരും';

  @override
  String get hajjScreenTitle => 'ഹജ് നിർദ്ദേശം';

  @override
  String get hajjScreenSubtitle =>
      'ഗ്രാൻഡ് പരിപവിത്രത്തിലേക്കുതായി പരിപാലിത നിർദ്ദേശം';

  @override
  String get umrahCardTitle => 'ഉമ്റ';

  @override
  String get umrahCardSubtitle => 'കുറഞ്ഞ പരിപവിത്ര';

  @override
  String get umrahCardDescription =>
      'ആഴത്തിലായ ആത്മീയ യാത്ര വർഷത്തിലുടനുള്ള ഏതെങ്കിലും സമയത്തിൽ നിയിത കഴിയും';

  @override
  String get umrahScreenTitle => 'ഉമ്റ നിർദ്ദേശം';

  @override
  String get umrahScreenSubtitle =>
      'കുറഞ്ഞ പരിപവിത്രത്തിലേക്കുതായി പരിപാലിത നിർദ്ദേശം';

  @override
  String get pilgrimageStepsTitle => 'ആചാരങ്ങൾ ഏബ് പടികൾ';

  @override
  String get pilgrimageImportantNotesTitle => 'പ്രധാന കുറിപ്പുകൾ';

  @override
  String get pilgrimageDuaTitle => 'ഈ ഘട്ടത്തിനുള്ള ദുആ';

  @override
  String get pilgrimageJafariNoteTitle => 'ജാഫരി ഫിഖ് കുറിപ്പ്';

  @override
  String get pilgrimageComplete => '✓ പൂർത്തിയായി';

  @override
  String get pilgrimageMarkDone => 'പൂർണ്ണമായതായി അടയാളപ്പെടുത്തുക';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total ഘട്ടങ്ങളിൽ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes മിനിറ്റ്';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ഷിയാ തീർത്ഥാടകർ';

  @override
  String get pilgrimageShiaNoteBody =>
      'ഷിയാ തീർത്ഥാടകർ മദീനായിലേക്കും പ്രവാചക മുഹമ്മദ് (SAW) മാസിദ് അൽ-നബാവിയിലെ ശവാധാരത് കാണിക്കാൻ ഏബ് ജന്നത് അൽ-ബാക്കി ഇമാമുകളുടെ ശവാധാരത്ത് നിയിത കഴിയുന്നു. ഈ സന്ദർശനങ്ങൾ അപരമ ആത്മീയ പ്രാധാന്യം വഹിക്കുന്നു ഏബ് ഷിയാ മുസ്ലിമുകളിലെ ഭൂരിഭാഗംമായി ചെയ്തിരിക്കുന്നതിന്റെ ഒരു അവിഭാജ്യ ഭാഗമായി കണക്കാക്കുന്നു.';

  @override
  String get hajjIntro =>
      'ഹജ് ഇസ്ലാമത്തിന്റെ അഞ്ചാമത് സ്തംഭം, നിയുക്ത വിഷയ്ക്കുതായി ജീവതകാലം മുസ്ലിമിൽ ആരോഗ്യ ഏബ് സാമ്പത്തിക കാരണമായി കഴിയുന്ന. ധു അൽ-ഹിജ്ജ മാസത്തിൽ നിയിത, ഇത് പ്രവാചക ഇബ്രാഹിം (AS), അവന്റെ പുത്ര ഇസ്മായ്ൽ (AS) ഏബ് ലേഡി ഹാജര്വിന്റെ പദങ്ങൾ വീണ്ടും ട്രേസ് ചെയ്യുന്നു. ഷിയാ മുസ്ലിമുകൾക്കുതായി, ഹജ് മദീനയിലെ പ്രവാചക (SAW) ഏബ് അഹ്ലുൽ ബെയ്തിന്റെ ശവാധാരത് സന്ദർശന പരമ ആശീർവാദം കൂടി ഉൾപ്പെടുത്തുന്നു.';

  @override
  String get umrahIntro =>
      'ഉമ്റ മക്കായിലേക്കുതായി കുറഞ്ഞ പരിപവിത്ര ഏബ് ഹജ് അല്ലാതെ, ഏതെങ്കിലും സമയത്തിൽ വർഷത്തിൽ നിയിത കഴിയും. നിയുക്ത അല്ലെങ്കിലും, ഇത് അപരമ ആത്മീയ സമ്മാനം വഹിക്കുന്നു ഏബ് അത്യുച്ച വ്യതിരിക്ത ആരാധനയുടെ പ്രവൃത്തി ആയി കണക്കാക്കുന്നു. ഇത് ഹജ് കൂടി നിയിത സ്ഥാപിതങ്ങൾ പങ്കിടുന്നു എന്നാൽ കുറഞ്ഞ, നാല് പ്രധാന ആചാരങ്ങൾ ഉൾപ്പെടുത്തുന്നു.';
}
