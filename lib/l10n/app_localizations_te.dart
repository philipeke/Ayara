// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'అయారా';

  @override
  String get languageSelectTitle => 'మీ భాషను ఎంచుకోండి';

  @override
  String get languageSelectSub => 'మీరు దీన్ని సెట్టింగ్‌లలో తరువాత మార్చవచ్చు';

  @override
  String get actionContinue => 'కొనసాగించండి';

  @override
  String get languageSuggestedHeader => 'సూచించబడిన';

  @override
  String get languageAllHeader => 'అన్ని భాషలు';

  @override
  String get languageSuggestedBadge => 'సూచించబడిన';

  @override
  String get languageSearchHint => 'శోధించండి…';

  @override
  String get planBasic => 'ప్రామాణిక';

  @override
  String get planPremium => 'విలాయ';

  @override
  String get categorySlot01 => 'దైనిక మార్గదర్శకత్వం';

  @override
  String get categorySlot02 => 'ఇమాన్ & విశ్వాసం';

  @override
  String get categorySlot03 => 'ప్రార్థన ప్రతిబింబన';

  @override
  String get categorySlot04 => 'సహనం & ఆశ';

  @override
  String get categorySlot05 => 'క్షమాపణ చేయండి';

  @override
  String get categorySlot06 => 'దయ & సానుభూతి';

  @override
  String get categorySlot07 => 'విశ్వాసం & శక్తి';

  @override
  String get categorySlot08 => 'కృతజ్ఞుల హృదయం';

  @override
  String get categorySlot09 => 'జీవన ఉద్దేశ్యం';

  @override
  String get categorySlot10 => 'కుటుంబ సంబంధాలు';

  @override
  String get categorySlot11 => 'అంతర్గత శాంతి';

  @override
  String get categorySlot12 => 'ప్రవక్త జ్ఞానం';

  @override
  String get categorySlot13 => 'మంచి గుణాలు';

  @override
  String get categorySlot14 => 'ప్రలోభనను నిరోధించండి';

  @override
  String get categorySlot15 => 'సాయంకాల ధిక్‌ర్';

  @override
  String get categoryCustom => 'వ్యక్తిగత ప్రతిబింబన';

  @override
  String get dhikrMeaningSubhanallah => 'అల్లాహ్ గొప్ప';

  @override
  String get dhikrMeaningAlhamdulillah => 'అన్ని ప్రशంసలు అల్లాహ్కు చెందినవి';

  @override
  String get dhikrMeaningAllahuAkbar => 'అల్లాహ్ గొప్ప';

  @override
  String get quranVerseHeartAtRest =>
      'ఖచ్చితంగా, అల్లాహ్ స్మరణలో ఆత్మలు విశ్రాంతి పొందుతాయి.';

  @override
  String get promptHint =>
      'ఇస్లామిక మార్గదర్శకత్వం మరియు ప్రతిబింబనకు ఒక వర్గానికి నొక్కండి';

  @override
  String get currentLanguage => 'ప్రస్తుత భాష';

  @override
  String get settingsLanguage => 'భాష సెట్టింగ్‌లు';

  @override
  String get settingsTitle => 'సెట్టింగ్‌లు';

  @override
  String get chooseLanguage => 'మీ భాషను ఎంచుకోండి';

  @override
  String get continueCta => 'కొనసాగించండి';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count పదాలు',
      one: '$count పదం',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ఎంపికలు';

  @override
  String get newCta => 'కొత్త';

  @override
  String get actionsTitle => 'మీరు ఏమి చేయాలనుకుంటున్నారు?';

  @override
  String get copy => 'కాపీ చేయండి';

  @override
  String get share => 'భాగస్వామ్యం చేయండి';

  @override
  String get close => 'మూసివేయండి';

  @override
  String get copiedToast => 'క్లిప్‌బోర్డ్‌కు కాపీ చేయబడింది';

  @override
  String shareSubject(String category) {
    return 'అయారా — $category';
  }

  @override
  String get regenerateErrorTitle => 'కొత్త ప్రతిస్పందన ఉత్పన్నం చేయలేము';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nమీరు మళ్లీ ప్రయత్నించాలనుకుంటున్నారా?';
  }

  @override
  String get cancelCta => 'రద్దు చేయండి';

  @override
  String get retryCta => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get authTitle => 'మీ ఖాతాను సృష్టించండి';

  @override
  String get continueAsGuest => 'అతిథిగా కొనసాగండి';

  @override
  String get signInGoogle => 'Google ఉపయోగించి సైన్ ఇన్ చేయండి';

  @override
  String get signInApple => 'Apple ఉపయోగించి సైన్ ఇన్ చేయండి';

  @override
  String get signInEmail => 'ఇమెయిల్ ఉపయోగించి సైన్ ఇన్ చేయండి';

  @override
  String get upgradeWithApple => 'Apple తో కొనసాగండి';

  @override
  String get mustAccept =>
      'మీరు నిబంధనలను అంగీకరించాలి మరియు గోప్యతా విధానాన్ని అంగీకరించాలి.';

  @override
  String get termsLabel => 'నేను సేవా నిబంధనలను అంగీకరిస్తున్నాను';

  @override
  String get privacyLabel => 'నేను గోప్యతా విధానాన్ని చదివాను';

  @override
  String get marketingOptIn =>
      'నేను వార్తలు మరియు ఆఫర్‌లను స్వీకరించడానికి సంమతిస్తున్నాను';

  @override
  String get openTerms => 'సేవా నిబంధనలు';

  @override
  String get openPrivacy => 'గోప్యతా విధానం';

  @override
  String get accountSection => 'ఖాతా';

  @override
  String get guestMode => 'అతిథి విధానం';

  @override
  String get signedIn => 'సైన్ ఇన్ చేసారు';

  @override
  String get upgradeHint =>
      'ఒక ఖాతాను సృష్టించడం ద్వారా పరికరాల్లో మీ ప్రతిబింబనలను సేవ్ చేయండి.';

  @override
  String get upgradeWithGoogle => 'Google తో కొనసాగండి';

  @override
  String get signOut => 'సైన్ అవుట్ చేయండి';

  @override
  String get snackUpgraded => 'Google ఉపయోగించి ఖాతా అప్‌గ్రేడ్ చేయబడింది ✅';

  @override
  String get snackSignedIn => 'Google ఉపయోగించి సైన్ ఇన్ చేయబడింది ✅';

  @override
  String get snackSignedOut => 'సైన్ అవుట్ చేయబడింది';

  @override
  String get snackSignedInApple => 'Apple ఉపయోగించి సైన్ ఇన్ చేయబడింది ✅';

  @override
  String get snackSignedInGoogle => 'Google ఉపయోగించి సైన్ ఇన్ చేయబడింది ✅';

  @override
  String get snackUpgradedApple =>
      'Apple ఉపయోగించి ఖాతా అప్‌గ్రేడ్ చేయబడింది ✅';

  @override
  String get snackUpgradedGoogle =>
      'Google ఉపయోగించి ఖాతా అప్‌గ్రేడ్ చేయబడింది ✅';

  @override
  String get historyTitle => 'మునుపటి ప్రతిబింబనలు';

  @override
  String get historyOpenCta => 'మునుపటి ప్రతిబింబనలు';

  @override
  String get historyEmpty => 'ఇంకా సేవ్ చేయబడిన ప్రతిబింబనలు లేవు.';

  @override
  String get historyDeleteTitle => 'ప్రతిబింబనను తొలగించాలా?';

  @override
  String get historyDeleteBody =>
      'ఇది ఎంచుకున్న అంశాన్ని శాశ్వతంగా తీసివేస్తుంది.';

  @override
  String get deleteCta => 'తొలగించండి';

  @override
  String get historyButton => 'మునుపటి ప్రతిబింబనలు';

  @override
  String get historyEmptyTitle => 'ఇంకా ప్రతిబింబనలు లేవు';

  @override
  String get historyEmptyBody =>
      'మొదట ఏదైనా ఉత్పత్తి చేయండి — మీ సేవ్ చేయబడిన అంశాలు ఇక్కడ కనిపిస్తాయి.';

  @override
  String get historyDelete => 'తొలగించండి';

  @override
  String get footerTitle => 'విలాయ, ఇమాన్ మరియు సబర్‌తో';

  @override
  String get footerSubtitle => 'ఒక ప్రార్థన సమయంలో';

  @override
  String get genericErrorSnack =>
      'ఏదో సరికాలేదు — క్షణం తర్వాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get upgradeAccountCta =>
      'పరికరాల్లో మీ ప్రతిబింబనలను సేవ్ చేయండి – ఖాతాను సృష్టించండి';

  @override
  String get deleteAccount => 'ఖాతాను తొలగించండి';

  @override
  String get exportData => 'నా డేటాను ఎగుమతి చేయండి';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'సులభంగా టైగర్ 🐯\nఅయారాకు తదుపరి వాటికి ముందు ఒక క్షణం అవసరం…';

  @override
  String get rateDailyLimit =>
      'ఇప్పుడు మీరు ప్రతిబింబనలను తీసుకోలేరు.\nమరిన్ని ప్రతిబింబనలను పొందండి లేదా విలాయకు అప్‌గ్రేడ్ చేయండి.';

  @override
  String get rateCreditsExhausted =>
      'మీరు అన్ని ప్రతిబింబనలను ఉపయోగించారు.\nకొనసాగడానికి టాప్ అప్ చేయండి లేదా విలాయకు అప్‌గ్రేడ్ చేయండి.';

  @override
  String get rateGraceCreditsExhausted =>
      'ఇప్పుడు మీరు ప్రతిబింబనలను తీసుకోలేరు.\nమరిన్ని ప్రతిబింబనలను పొందండి లేదా విలాయకు అప్‌గ్రేడ్ చేయండి.';

  @override
  String get premiumDescription =>
      'విలాయ ప్రీమియం ఫీచర్‌లు, భవిష్యత్ వర్గాలు మరియు ప్రత్యేక బ్యాడ్జ్‌ను అన్‌లాక్ చేస్తుంది.';

  @override
  String ratePlanExhausted(String plan) {
    return 'మీ ప్రతిబింబనలు ఇప్పుడు ఖాళీగా ఉన్నాయి. ప్రణాళిక: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'మీ ప్రతిబింబనలను తనిఖీ చేయలేము: $message';
  }

  @override
  String get rateCheckGenericError =>
      'మీ ప్రతిబింబనలను తనిఖీ చేయడంలో ఏదో సరికాలేదు.';

  @override
  String get aiFallbackGeneric =>
      'ఏదో సరికాలేదు — క్షణం తర్వాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get limitSectionTitle => 'ప్రతిబింబనలు';

  @override
  String get limitTodayLabel => 'ఉపయోగం';

  @override
  String limitCreditsLabel(Object credits) {
    return 'మిగిలిన ప్రతిబింబనలు: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'ప్రణాళిక: $plan';
  }

  @override
  String get limitLoadingLabel => 'లోడ్ చేస్తున్నారు…';

  @override
  String get limitLoadingLabelDescription =>
      'ఉపయోగం గణాంకాలను సేకరించేటప్పుడు ప్రతిబింబన కార్డ్‌లో చూపబడుతుంది.';

  @override
  String get aiLimitTitle => 'ప్రతిబింబనలు';

  @override
  String get aiLimitSubtitle =>
      'ప్రతిটి ప్రతిస్పందన 1 ప్రతిబింబనను ఉపయోగిస్తుంది. ప్రామాణిక ప్రారంభ ప్రతిబింబనలను కలిగి ఉంది. విలాయ ప్రీమియం వర్గాలను అన్‌లాక్ చేస్తుంది మరియు టాప్-అప్‌లను చేతనం చేస్తుంది.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ప్రతిబింబనలను ఉపయోగించారు';
  }

  @override
  String get creditsSectionTitle => 'ప్రతిబింబనలు';

  @override
  String get creditsUsageLabel => 'ఉపయోగం';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'మిగిలిన ప్రతిబింబనలు: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'ప్రణాళిక: $plan';
  }

  @override
  String get creditsLoadingLabel => 'లోడ్ చేస్తున్నారు…';

  @override
  String get creditsLoadingLabelDescription =>
      'ప్రతిబింబన గణాంకాలను సేకరించేటప్పుడు చూపబడుతుంది.';

  @override
  String get creditsTitle => 'ప్రతిబింబనలు';

  @override
  String get creditsSubtitle =>
      'ప్రతిటి ప్రతిస్పందన 1 ప్రతిబింబనను ఉపయోగిస్తుంది. ప్రామాణిక ప్రారంభ ప్రతిబింబనలను కలిగి ఉంది. విలాయ ప్రీమియం వర్గాలను అన్‌లాక్ చేస్తుంది మరియు టాప్-అప్‌లను చేతనం చేస్తుంది.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ప్రతిబింబనలను ఉపయోగించారు';
  }

  @override
  String get settingsDeleteTitle => 'ఖాతాను తొలగించండి';

  @override
  String get settingsDeleteDescription =>
      'మీ ఖాతా మరియు అన్ని సంబంధిత డేటాను శాశ్వతంగా తొలగించండి.';

  @override
  String get settingsDeleteButtonLabel => 'నా ఖాతాను తొలగించండి';

  @override
  String get settingsDeleteDialogTitle => 'ఖాతాను తొలగించాలా?';

  @override
  String get settingsDeleteDialogBody =>
      'ఈ చర్య శాశ్వతమైనది మరియు రద్దు చేయలేనిది.\n\nమీ అన్ని చ్యాట్‌లు, చరిత్ర మరియు ఖాతా సమాచారం తొలగించబడుతుంది.';

  @override
  String get settingsDeleteDialogCancel => 'రద్దు చేయండి';

  @override
  String get settingsDeleteDialogConfirm => 'తొలగించండి';

  @override
  String get settingsFreeLimitUsedTitle => 'ప్రారంభ ప్రతిబింబనలను ఉపయోగించారు';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ఈ పరికరం కోసం ప్రారంభ ప్రతిబింబనలను ఉపయోగించారు. కొనసాగడానికి విలాయకు అప్‌గ్రేడ్ చేయండి లేదా మరిన్ని ప్రతిబింబనలను కొనండి.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'ప్రారంభ ప్రతిబింబనలను ఉపయోగించారు';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ఈ పరికరం కోసం ప్రారంభ ప్రతిబింబనలను ఉపయోగించారు. కొనసాగడానికి విలాయకు అప్‌గ్రేడ్ చేయండి లేదా మరిన్ని ప్రతిబింబనలను కొనండి.';

  @override
  String get deviceBoundError =>
      'ఈ పరికరం ఇప్పటికే మరొక ఖాతాకు లింక్ చేయబడింది. దయచేసి అసలు ఖాతా ఉపయోగించి సైన్ ఇన్ చేయండి.';

  @override
  String get premiumTitle => 'విలాయ విధానం';

  @override
  String get premiumSubtitleBasic => 'పూర్తి అయారా అనుభవాన్ని అన్‌లాక్ చేయండి.';

  @override
  String get premiumSubtitlePremium =>
      'మీరు విలాయలో ఉన్నారు. మరిన్ని ప్రతిబింబనలు కావాలా?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'ప్రస్తుత ప్రణాళిక: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'ప్రతిబింబనలు: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'ఈ సమయంలో కొనుగోళ్లు అందుబాటులో లేవు.';

  @override
  String get premiumSignInToPurchase =>
      'ప్రతిబింబనలను కొనడానికి లేదా విలాయను అన్‌లాక్ చేయడానికి సైన్ ఇన్ చేయండి.';

  @override
  String get premiumRestorePurchases => 'కొనుగోళ్లను పునరుద్ధరించండి';

  @override
  String get premiumProcessing => 'ప్రక్రియ చేస్తున్నారు…';

  @override
  String get premiumRestoreHintTitle =>
      'ఈ పరికరం లేదా వేరొక దానిపై ఇప్పటికే విలాయ లేదా ప్రతిబింబనలను కొనుగోలు చేసారా?';

  @override
  String get premiumRestoreHintBody =>
      'మీ కొనుగోళ్లు చూపవడం లేనిచో వాటిని పునరుద్ధరించండి.';

  @override
  String get premiumBuyCredits200 => '200 ప్రతిబింబనలను కొనండి';

  @override
  String get premiumBuyCredits400 => '400 ప్రతిబింబనలను కొనండి';

  @override
  String get premiumBecomePremiumOneTime =>
      'విలాయ విధానానికి అప్‌గ్రేడ్ చేయండి';

  @override
  String get premiumTopupHint =>
      'విలాయతో, మీకు అవసరమైనప్పుడు అতিరిక్త ప్రతిబింబనలను టాప్ అప్ చేయవచ్చు.';

  @override
  String get premiumUpgradeCta => 'అప్‌గ్రేడ్ చేయండి';

  @override
  String get premiumRequiredForCategory =>
      'ఈ వర్గం విలాయ ఉపయోగకర్తలకు మాత్రమే అందుబాటులో ఉంది. అన్ని ప్రీమియం కంటెంట్‌ను అన్‌లాక్ చేయడానికి సెట్టింగ్‌లలో అప్‌గ్రేడ్ చేయండి.';

  @override
  String get premiumBenefitsBasic =>
      'విలాయను అన్‌లాక్ చేసి అతిరిక్త ప్రతిబింబనలను పొందండి, ప్రీమియం వర్గాలను ప్రాప్యత చేయండి, మరియు మీకు మార్గదర్శకత్వం అవసరమైనప్పుడు కొనసాగండి.';

  @override
  String get premiumBenefitsPremium =>
      'మీరు విలాయ విధానంలో ఉన్నారు. మీరు తక్కువగా ఉంటే, కొన్ని అతిరిక్త ప్రతిబింబనలను జోడించండి మరియు అంతరాయం లేకుండా కొనసాగండి.';

  @override
  String get premiumButtonBecomePremium => 'విలాయను అన్‌లాక్ చేయండి';

  @override
  String get premiumButtonTopup1000 => '1000 ప్రతిబింబనలను జోడించండి';

  @override
  String get premiumBadge => 'విలాయ సక్రియం';

  @override
  String get premiumLoadingStore => 'దోకান లోడ్ చేస్తున్నారు…';

  @override
  String get premiumProductNotAvailable =>
      'ఈ ఉత్పత్తి ఇంకా దోకానలో అందుబాటులో లేదు. దయచేసి తరువాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get premiumPurchaseError =>
      'కొనుగోలులో ఏదో సరికాలేదు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get premiumBuyCredits100 => '100 ప్రతిబింబనలను జోడించండి';

  @override
  String get premiumFeatureLocked =>
      'ఈ ఫీచర్‌ను ప్రాప్యత చేయడానికి విలాయను అన్‌లాక్ చేయండి.';

  @override
  String get lockedCategoriesHint =>
      'కొన్ని వర్గాలు విలాయ సభ్యుల కోసం నిరాపద్ధతం చేయబడ్డాయి. మీ ప్రయాణంలో ప్రతిটి ప్రతిబింబనను అన్వేషించడానికి వాటిని అన్‌లాక్ చేయండి.';

  @override
  String get freePlanBlockedTitle => 'మీరు ప్రారంభ ప్రతిబింబనలను ఉపయోగించారు';

  @override
  String get freePlanBlockedBody =>
      'మీరు ప్రారంభ ప్రతిబింబనలతో ప్రామాణిక ప్రణాళికపై ఉన్నారు మరియు మీరు పరిమితిని చేరుకున్నారు. కొనసాగడానికి — మరియు ప్రీమియం వర్గాలను అన్‌లాక్ చేయడానికి — విలాయకు అప్‌గ్రేడ్ చేయండి.';

  @override
  String get freePlanBlockedCtaGoPremium => 'క్రింద విలాయ ఎంపికలను చూడండి';

  @override
  String get graceBlockedTitle => 'మీరు ప్రారంభ ప్రతిబింబనలను ఉపయోగించారు';

  @override
  String get graceBlockedBody =>
      'మీరు ప్రారంభ ప్రతిబింబనలతో ప్రామాణిక ప్రణాళికపై ఉన్నారు మరియు మీరు పరిమితిని చేరుకున్నారు. కొనసాగడానికి — మరియు ప్రీమియం వర్గాలను అన్‌లాక్ చేయడానికి — విలాయకు అప్‌గ్రేడ్ చేయండి.';

  @override
  String get graceBlockedCtaGoPremium => 'క్రింద విలాయ ఎంపికలను చూడండి';

  @override
  String get rateGuestMustSignIn =>
      'అయారాను ఉపయోగించడానికి మరియు మీ ప్రతిబింబనలను సైన్ ఇన్ చేయండి.';

  @override
  String get guestNoCreditsTitle => 'అతిథి విధానం';

  @override
  String get guestNoCreditsBody =>
      'అతిథిగా మీరు యాప్‌ను విహారించవచ్చు, కానీ మీరు ప్రతిబింబనలను ఉపయోగించలేరు. సెట్టింగ్‌లలో ప్రతిబింబనలను ఉపయోగించడానికి మరియు కొనుగోళ్లను అన్‌లాక్ చేయడానికి తరువాత లాగిన్ చేయండి.';

  @override
  String get guestDialogContinue => 'కొనసాగండి';

  @override
  String get guestDialogLoginInstead => 'బదులుగా లాగిన్ చేయండి';

  @override
  String get optionalLabel => 'ఐచ్ఛికం';

  @override
  String get accountDeleteSuccessTitle => 'ఖాతా తొలగించబడింది';

  @override
  String get accountDeleteSuccessBody =>
      'మీ ఖాతా మరియు సంబంధిత డేటా విజయవంతంగా తొలగించబడ్డాయి.';

  @override
  String get accountDeleteSuccessClose => 'మూసివేయండి';

  @override
  String get accountDeleteErrorTitle => 'ఖాతాను తొలగించలేము';

  @override
  String get accountDeleteErrorClose => 'సరే';

  @override
  String get accountDeleteReauthCancelled =>
      'పునరుద్ధరణ రద్దు చేయబడింది. దయచేసి సైన్ ఇన్ చేసి మరలా ప్రయత్నించండి.';

  @override
  String get accountDeleteReauthRequired =>
      'ఖాతా తొలగింపుకు ఇటీవలి లాగిన్ అవసరం. దయచేసి సైన్ అవుట్ చేసి, సైన్ ఇన్ చేసి, మరలా ప్రయత్నించండి.';

  @override
  String get settingsDeletePermanentWarning =>
      'ఈ చర్య శాశ్వతమైనది మరియు రద్దు చేయలేనిది. మీ ఖాతాకు సంబంధించిన సమస్త డేటా తొలగించబడుతుంది.';

  @override
  String get dailyGraceTitle => 'దైనిక మార్గదర్శకత్వం';

  @override
  String get dailyGraceScriptureLabel => 'రోజుకు సంబంధిత శ్లోకం';

  @override
  String get dailyGraceSaintLabel => 'FIGURE OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'సాయంకాల ప్రతిబింబన';

  @override
  String get dailyGraceCopiedToast => 'శ్లోకం క్లిప్‌బోర్డ్‌కు కాపీ చేయబడింది';

  @override
  String get locationConsentLabel =>
      'కిబ్ల దిశ మరియు ప్రార్థన సమయం కోసం నా స్థానాన్ని ఉపయోగించడానికి అయారాను అనుమతించండి';

  @override
  String get locationConsentHint =>
      'ఈ ఫీచర్‌ల కోసం మాత్రమే ఉపయోగించబడుతుంది. మీ స్థానం ఎప్పుడూ భాగస్వామ్యం చేయబడదు లేదా నిల్వ చేయబడదు.';

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
  String get askPageTitle => 'అయారాను అడగండి';

  @override
  String get askPageDescription =>
      'విశ్వాస, ప్రార్థన, జీవితం లేదా ఇస్లామిక అభ్యాసం గురించి ఏదైనా అడగండి మరియు ఖుర్ఆన్ మరియు అహ్ల్ అల్-బైట్ యొక్క బోధల నుండి రూట్ చేయబడిన మార్గదర్శకత్వాన్ని పొందండి.';

  @override
  String get askPageInputHint => 'ఇక్కడ మీ ప్రశ్నను టైప్ చేయండి…';

  @override
  String get askPageSubmitCta => 'అడగండి';

  @override
  String get askPageInputEmptyError => 'దయచేసి మొదట ప్రశ్నను రాయండి.';

  @override
  String get askResultYourQuestion => 'మీ ప్రశ్న';

  @override
  String get guidancePageTitle => 'కిబ్ల';

  @override
  String get qiblaFacingMecca => 'మక్కా వైపు ఎదురుగా';

  @override
  String get qiblaCompassInstruction =>
      'బంగారు సూది పైకి చూపిసేవరకు మీ ఫోన్‌ను తిప్పండి.\nఆ దిశ కిబ్లను (మక్కా) సూచిస్తుంది.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS సిగ్నల్ బలహీనంగా ఉంది. బయటకు వెళ్లండి మరియు పునరుద్ధరించడానికి నొక్కండి.';

  @override
  String get qiblaRetry => 'పునరుద్ధరించండి';

  @override
  String get qiblaTitle => 'కిబ్ల దిశ';

  @override
  String qiblaDistanceLabel(String km) {
    return 'మక్కాకు $km కిమీ';
  }

  @override
  String get qiblaLocationNeededTitle => 'స్థానం అవసరం';

  @override
  String get qiblaLocationNeededBody =>
      'అయారా నుండి కాబా యొక్క దిశను లెక్కించడానికి స్థానం ప్రాప్యత చేయనికి అనుమతించండి.';

  @override
  String get qiblaOpenSettings => 'సెట్టింగ్‌లను తెరవండి';

  @override
  String get qiblaCompassLoading => 'మీ స్థానం కనుగొంటున్నారు…';

  @override
  String get qiblaTowardMecca => 'మక్కా దిశకు';

  @override
  String get prayerTimesTitle => 'ప్రార్థన సమయాలు';

  @override
  String get prayerTimesFajr => 'ఫజర్';

  @override
  String get prayerTimesDhuhr => 'ధుహర్';

  @override
  String get prayerTimesAsr => 'ఆసర్';

  @override
  String get prayerTimesMaghrib => 'మాఘ్రిబ్';

  @override
  String get prayerTimesIsha => 'ఇషా';

  @override
  String get prayerTimesLocationNeededTitle => 'స్థానం అవసరం';

  @override
  String get prayerTimesLocationNeededBody =>
      'మీ నగరం కోసం ఖచ్చితమైన ప్రార్థన సమయాలను లెక్కించడానికి స్థానం ప్రాప్యత చేయనికి అనుమతించండి.';

  @override
  String get prayerTimesNextLabel => 'తదుపరి';

  @override
  String get prayerTimesDoneLabel => 'పూర్తయ్యారు';

  @override
  String get monthlyPrayerTimesTitle => 'నెలసరి ప్రార్థన సమయాలు';

  @override
  String get monthlyPrayerTimesViewButton => 'పూర్తి నెలను వీక్షించండి';

  @override
  String get monthlyPrayerTimesNextMonth => 'తదుపరి నెల';

  @override
  String get monthlyPrayerTimesDayHeader => 'రోజు';

  @override
  String get sharePrayerTimes => 'ప్రార్థన సమయాలను భాగస్వామ్యం చేయండి';

  @override
  String get notificationsSectionTitle => 'నోటిఫికేషన్‌లు';

  @override
  String get notificationsSectionSubtitle =>
      'ప్రార్థన రిమైండర్‌లు, క్యాలెండర్ ఈవెంట్‌లు మరియు మరిన్ని';

  @override
  String get dailyReflectionReminderTitle => 'దైనిక ప్రతిబింబన';

  @override
  String get dailyReflectionReminderDescription =>
      'అయారాను తెరవడానికి మరియు మీ విశ్వాసంతో సংযుక్త చేయడానికి సున్నితమైన దైనిక రిమైండర్.';

  @override
  String get dailyReflectionReminderEnable => 'దైనిక రిమైండర్‌ను చేతనం చేయండి';

  @override
  String get dailyReflectionReminderTimeLabel => 'రిమైండర్ సమయం';

  @override
  String get prayerNotificationsTitle => 'ప్రార్థన రిమైండర్‌లు';

  @override
  String get prayerNotificationsDescription =>
      'ప్రతిটి ప్రార్థన సమయానికి ముందు సున్నితమైన రిమైండర్ పొందండి మీ సమస్త దినాలలో సంయుక్త ఉండటానికి సహాయపడటానికి.';

  @override
  String get prayerNotificationsEnable => 'ప్రార్థన రిమైండర్‌లను చేతనం చేయండి';

  @override
  String get prayerNotificationsOpenSettings =>
      'నోటిఫికేషన్ సెట్టింగ్‌లను తెరవండి';

  @override
  String get prayerNotificationsDenied =>
      'నోటిఫికేషన్‌లు నిస్సంబంధం చేయబడ్డాయి';

  @override
  String get prayerNotificationsDeniedHint =>
      'సెట్టింగ్‌లకు వెళ్లండి మరియు ప్రార్థన సమయ రిమైండర్‌లను పొందడానికి అయారా కోసం నోటిఫికేషన్‌లను అనుమతించండి.';

  @override
  String get notificationsConsentLabel =>
      'ప్రార్థన సమయాల కోసం నోటిఫికేషన్‌లను అనుమతించండి';

  @override
  String get prayerNotifTitleFajr => '🌅 ఫజర్ — ప్రభాత ప్రార్థన';

  @override
  String get prayerNotifBodyFajr =>
      'ఫజర్ అహ్ల్ అల్-బైట్ యొక్క ప్రభాతం యొక్క ప్రార్థన. ఇమామ్ అలీ (AS) చెప్పారు: ఫజర్ ప్రార్థనను మీ అత్యంత విలువైన విశ్వాసంగా రక్షించండి. లేచి, మీ సరిదిద్దుకోండి, మరియు అల్లాహ్ ఎదుట నిలబడండి.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ధుహర్ — మధ్యాహ్న ప్రార్థన';

  @override
  String get prayerNotifBodyDhuhr =>
      'అహ్ల్ అల్-బైట్ యొక్క ఇమామ్‌లు ప్రతిటి జ్ఞాపన క్షణాన్ని విలువైనవిగా భావించారు. మీ రోజుని పలకండి, అవసరమైతే ధుహర్‌ను ఆసర్‌తో మిళితం చేయండి, మరియు మీ హృదయాన్ని అల్లాహ్‌కు తిరిగి ఇవ్వండి.';

  @override
  String get prayerNotifTitleAsr => '🌤️ ఆసర్ — సాయంత్రం ప్రార్థన';

  @override
  String get prayerNotifBodyAsr =>
      'ప్రార్థనను రక్షించండి, ఇది మీకు మరియు అల్లాహ్‌కు మధ్య ఒక సంధి. ఆసర్ సమయం వచ్చింది — జ్ఞాపన లేకుండా దానిని పాస్ చేయవద్దు.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 మాఘ్రిబ్ — సూర్యాస్తమయ ప్రార్థన';

  @override
  String get prayerNotifBodyMaghrib =>
      'సూర్యుడు అస్తమిస్తున్నారు — అహ్ల్ అల్-బైట్ సాక్ష్యం ఇచ్చిన క్షణం. మాఘ్రిబ్ అందించండి మరియు రాత్రి ప్రారంభమవడానికి ముందు దుఆ లో అల్లాహ్‌కు మీ చేతులను తెరవండి.';

  @override
  String get prayerNotifTitleIsha => '🌙 ఇషా — రాత్రి ప్రార్థన';

  @override
  String get prayerNotifBodyIsha =>
      'మీ రోజును అల్లాహ్ సంసర్గంలో ముగించండి. ఇమామ్‌లు ఇషా తరువాత సలాత్ అల్-లైల్‌ను ప్రోత్సహించారు — కానీ ముందుగా, మీ ఇషా ఆచరించండి మరియు రోజును అతని జ్ఞాపనతో ముగించండి.';

  @override
  String get outOfReflectionsBannerText =>
      'మీరు అన్ని ప్రతిబింబనలను ఉపయోగించారు';

  @override
  String get outOfReflectionsBannerCta => 'మరిన్ని పొందండి';

  @override
  String get dhikrPageTitle => 'ధిక్‌ర్';

  @override
  String get dhikrTapToCount => 'లెక్కించడానికి వృత్తాన్ని నొక్కండి';

  @override
  String get dhikrResetButton => 'రీసెట్ చేయండి';

  @override
  String get dhikrComplete => 'మాషా అల్లాహ్';

  @override
  String get dhikrCompleteMessage =>
      'మీరు అల్లాహ్ యొక్క 100 జ్ఞాపనలను పూర్తి చేసారు. అవి మీ హృదయానికి కాంతి సరిచేశాయని ఆశిస్తున్నారు.';

  @override
  String get disclaimerTitle => 'ఈ యాప్ యొక్క మార్గదర్శకత్వం గురించి';

  @override
  String get disclaimerBody =>
      'అయారా ఇస్లామిక ప్రతిబింబనలు, రిమైండర్‌లు మరియు ఆధ్యాత్మిక కంటెంట్‌ను అందిస్తుంది మీ విశ్వాసం యొక్క ఉపశీర్ష యాత్ర సపోర్ట్ చేయడానికి, ఖుర్ఆన్ మరియు అహ్ల్ అల్-బైట్ యొక్క బోధల నుండి రూట్ చేయబడిన. ఈ కంటెంట్ సాధారణ సమాచారపూర్వక మరియు ప్రేరణాత్మక ప్రయోజనాల కోసం మాత్రమే అందించబడుతుంది.\n\nఅయారా అర్హమైన విద్వాంసులను భర్తీ చేయదు.\nఈ యాప్‌లోని మార్గదర్శకత్వం తెలిసిన ఇస్లామిక విద్వాంసుడు, మర్జా, లేదా దేవోపాసన శిక్షక యొక్క ప్రత్యామ్నాయం కాదు. శియా ఇస్లాములో, ధార్మిక మార్గదర్శకత్వం జాఫరీ సంస్థ యొక్క న్యాయశాస్త్రం (ఫిక్ह్) మరియు జీవంత మర్జాను అనుసరించే ఐతిహ్య (ఎములేషన్ యొక్క మూలం) — ఒక యోగ్య న్యాయవేత్త వారు బిందువులు నియంత్రించే రూట్ చేయబడుతుంది. మీకు ధార్మిక విధులు, హలాల్ మరియు హారమ్ విషయాలు, లేదా వ్యక్తిగత ధార్మిక బాధ్యతల గురించి ప్రశ్నలు ఉంటే, దయచేసి యోగ్య మర్జా లేదా మీ సమాజంలో ఒక విద్వాంసుడి సలహా తీసుకోండి.\n\nఈ యాప్ ధార్మిక విధులను జారీ చేయదు.\nఅయారా ఫిక్ హ్ నిర్ణయాలలో లేదా వ్యక్తిగత ధార్మిక బాధ్యతలపై ఆధికారిక నిర్ణయాలు చేయదు. ఇక్కడ ఏమీ ఫత్వాలు లేదా బిందువు ధార్మిక సూచనగా చికిత్సించరాదు.\n\nఅహ్ల్ అల్-బైట్ యొక్క కేంద్రీయత.\nశియా ఇస్లాములో, ప్రవక్త ముహమ్మద్ ﷺ మరియు అతని శుద్ధ పరివారం — అహ్ల్ అల్-బైట్ — ఖుర్ఆన్ తర్వాత ఇస్లామిక సమాజం యొక్క ఆధికారిక గైడ్లు. అహ్ల్ అల్-బైట్ యొక్క పన్నెండు ఇమామ్‌లు ఇస్లామిక బోధ యొక్క దివ్యంగా నియమించిన వివరణకారులు. ఈ యాప్‌లోని కంటెంట్ ఈ ఐతిహ్యను ప్రతిబింబిస్తుంది మరియు దానిని విశ్వస్తంగా గౌరవించటానికి చేస్తుంది.\n\nసమాజ విషయాలు.\nఈ యాప్ మీ విశ్వాసంతో సంయుక్తమైన నిమ్న భాగాలను వీక్షించటానికి చేస్తుంది, వీటిలో మీ స్థానిక మసీదు, ఇస్లామిక కేంద్రం, మరియు ధార్మిక సమాజం యొక్క కీలక పాత్ర గౌరవంగా ఉంటుంది. మీకు దగ్గరలో ఉన్న యోగ్య ఉపాధ్యాయులతో సంబంధం ఉంచుకోవడానికి మరియు నుండి నేర్చుకోవడానికి మేము ప్రోత్సహించాము.';

  @override
  String get disclaimerClose => 'నేను అర్థం చేసుకున్నాను';

  @override
  String get disclaimerInfoTooltip => 'ఈ యాప్ యొక్క మార్గదర్శకత్వం గురించి';

  @override
  String get disclaimerSettingsSubtitle =>
      'సాధారణ సమాచారపూర్వక ప్రయోజనాల కోసం. పూర్తి నిర్ణయన చదవడానికి నొక్కండి.';

  @override
  String get disclaimerSectionHeader => 'మార్గదర్శకత్వ నిర్ణయన';

  @override
  String get navHome => 'హోమ్';

  @override
  String get navReflect => 'ప్రతిబింబన';

  @override
  String get navDuas => 'దుఆలు';

  @override
  String get navCalendar => 'క్యాలెండర్';

  @override
  String get dashboardToday => 'ఈ రోజు';

  @override
  String get dashboardComingUp => 'రానివారం';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'రోజులు',
      one: 'రోజు',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'త్వరిత ప్రాప్యత';

  @override
  String get quickActionQibla => 'కిబ్ల';

  @override
  String get quickActionDhikr => 'ధిక్‌ర్';

  @override
  String get quickActionDailyGrace => 'మార్గదర్శకత్వం';

  @override
  String get quickActionPrayerTimes => 'ప్రార్థన సమయాలు';

  @override
  String get askAyaraTitle => 'అయారాను అడగండి';

  @override
  String get askAyaraSubtitle =>
      'ఎటువంటి ఇస్లామిక ప్రశ్న అడగండి మరియు సుగమమైన, గైడ్ చేయబడిన సమాధానం పొందండి.';

  @override
  String get askAyaraHint => 'ఉదా రమజానం యొక్క ప్రాధాన్యత ఏమిటి?';

  @override
  String get askAyaraSubmit => 'అడగండి';

  @override
  String get wisdomOfTheDayTitle => 'రోజుకు సంబంధిత జ్ఞానం';

  @override
  String get calendarScreenTitle => 'ఇస్లామిక క్యాలెండర్';

  @override
  String get calendarUpcomingOccasions => 'రానివారం సందర్భాలు';

  @override
  String get calendarOccasionRemindersTitle => 'సందర్భం రిమైండర్‌లు';

  @override
  String get calendarOccasionRemindersHint =>
      'ప్రతిటి సందర్భం నుండి సాయంకాలకు నోటిఫై చేయబడింది';

  @override
  String get calendarNotifPermissionDenied =>
      'నోటిఫికేషన్ అనుమతి నిరాకరించబడింది. మీ పరికరం సెట్టింగ్‌లలో దానిని చేతనం చేయండి.';

  @override
  String get calendarNoEvents => 'సంఘటనలు లేవు కనుగొనబడలేదు.';

  @override
  String get calendarAddToPhone => 'ఫోన్ క్యాలెండర్‌లో చేర్చండి';

  @override
  String get calendarAddedToPhone => 'క్యాలెండర్‌లో చేర్చబడింది';

  @override
  String get calendarCountdownToday => 'ఈ రోజు';

  @override
  String get calendarCountdownTomorrow => 'రేపు';

  @override
  String calendarCountdownDays(int days) {
    return '$days రోజుల్లో';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'జన';

  @override
  String get calendarMonthFeb => 'ఫిబ్';

  @override
  String get calendarMonthMar => 'మార్';

  @override
  String get calendarMonthApr => 'ఏప్ర';

  @override
  String get calendarMonthMay => 'మే';

  @override
  String get calendarMonthJun => 'జూన్';

  @override
  String get calendarMonthJul => 'జూల్';

  @override
  String get calendarMonthAug => 'ఆగ';

  @override
  String get calendarMonthSep => 'సెప్';

  @override
  String get calendarMonthOct => 'అక్టో';

  @override
  String get calendarMonthNov => 'నవ';

  @override
  String get calendarMonthDec => 'డిసెం';

  @override
  String get calendarSeasonMuharramEarly =>
      'ముహర్రమ్ రోజులు — కర్బలాను గుర్తుకు తెచ్చుకోండి';

  @override
  String get calendarSeasonAshura => 'ఆషూరా — యా హుసైన్ (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'ముహర్రమ్ — విలాపం మరియు ప్రతిబింబన యొక్క రోజులు';

  @override
  String get calendarSeasonArbaeen => 'అర్బాఈన్ — హుసైన్ యొక్క నలభై రోజులు';

  @override
  String get calendarSeasonRoadToArbaeen => 'అర్బాఈన్ కు రహదారి';

  @override
  String get calendarSeasonMabath => 'మబ్ఆత్ ముబారక్ — ప్రకటన నుండి ప్రారంభం';

  @override
  String get calendarSeasonMidShaban =>
      'మిద్-ష\'బాన్ — ఇమామ్ అల్-మహదీ (AJ) యొక్క పుట్టిన రోజు';

  @override
  String get calendarSeasonRamadan => 'రమజాన్ ముబారక్ — ఖుర్ఆన్ యొక్క నెల';

  @override
  String get calendarSeasonGhadir => 'ఈద్ అల్-ఘదీర్ ముబారక్!';

  @override
  String get hijriMonth1 => 'ముహర్రమ్';

  @override
  String get hijriMonth2 => 'సఫర్';

  @override
  String get hijriMonth3 => 'రబీ అల్-అవ్వాల్';

  @override
  String get hijriMonth4 => 'రబీ అల్-థానీ';

  @override
  String get hijriMonth5 => 'జుమాదా అల్-అవ్వాల్';

  @override
  String get hijriMonth6 => 'జుమాదా అల్-థానీ';

  @override
  String get hijriMonth7 => 'రజబ్';

  @override
  String get hijriMonth8 => 'శ\'బాన్';

  @override
  String get hijriMonth9 => 'రమజాన్';

  @override
  String get hijriMonth10 => 'శవ్వాల్';

  @override
  String get hijriMonth11 => 'ధూ అల్-కిదా';

  @override
  String get hijriMonth12 => 'ధూ అల్-హిజ్జా';

  @override
  String get duasScreenTitle => 'దుఆలు & జియారత్';

  @override
  String get duasSearchHint => 'దుఆలు, జియారత్ కోసం శోధించండి…';

  @override
  String get duasFilterAll => 'సమస్తం';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count దుఆలు & జియారత్',
      one: '$count దుఆ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'కూడా లేదు కనుగొనబడలేదు.';

  @override
  String get duaCategoryDaily => 'దైనిక';

  @override
  String get duaCategoryWeekly => 'వారానికి';

  @override
  String get duaCategoryOccasions => 'సందర్భాలు';

  @override
  String get duaCategoryZiyarat => 'జియారత్';

  @override
  String get duaCategoryTasbih => 'తస్బీహ్';

  @override
  String get eventTypeBirth => 'జన్మ';

  @override
  String get eventTypeMartyrdom => 'శహాదత్';

  @override
  String get eventTypeOccasion => 'సందర్భం';

  @override
  String get duaCopyTooltip => 'అనువాదం కాపీ చేయండి';

  @override
  String get duaToggleTransliteration => 'అక్షర రూపంతరం';

  @override
  String get duaToggleTranslation => 'అనువాదం';

  @override
  String get duaAskAiLabel => 'ఈ దుఆ గురించి అయారాను అడగండి';

  @override
  String get duaAskAiLockedLabel => 'అయారాను అడగండి (విలాయ)';

  @override
  String get duaAiLockedMessage =>
      'అయారా వివరణలు విలాయ సభ్యుల కోసం అందుబాటులో ఉన్నాయి. సెట్టింగ్‌లలో అప్‌గ్రేడ్ చేయండి.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" గురించి అయారాను అడగండి — త్వరలో రానుంది!';
  }

  @override
  String get duaCopiedToast => 'దుఆ క్లిప్‌బోర్డ్‌కు కాపీ చేయబడింది.';

  @override
  String get tasbihAllahuAkbarMeaning => 'అల్లాహ్ గొప్ప';

  @override
  String get tasbihAlhamdulillahMeaning => 'అన్ని ప్రశంసలు అల్లాహ్‌కు చెందినవి';

  @override
  String get tasbihSubhanallahMeaning => 'అల్లాహ్ గొప్ప';

  @override
  String get tasbihResetTooltip => 'రీసెట్ చేయండి';

  @override
  String get tasbihCompleteTitle => 'తస్బీహ్ పూర్తయ్యారు';

  @override
  String get tasbihCompleteMessage => 'మీ ధిక్‌ర్‌ను అల్లాహ్ అంగీకరించండి.';

  @override
  String get tasbihTapHint => 'లెక్కించడానికి ఏ చోటైనా నొక్కండి';

  @override
  String get tasbihatScreenTitle => 'ప్రార్థన గైడ్';

  @override
  String get tasbihatScreenSubtitle => 'ప్రార్థన ప్రశంసలు';

  @override
  String get tasbihatScreenDescription =>
      'దైనిక ప్రార్థనల సమయంలో మరియు తరువాత పుస్తకం చేయబడిన ప్రశంసల సంపూర్ణ గైడ్ — అహ్ల్ అల్-బైట్ (a) యొక్క ఐతిహ్య అనుసరిస్తూ.';

  @override
  String get tasbihatArba3Title => 'తస్బీహాత్ అల్-అర్బా\'';

  @override
  String get tasbihatArba3Subtitle => '3 మరియు 4 రకాతుల సమయంలో పుస్తకం చేయబడిన';

  @override
  String get tasbihatArba3Info =>
      'శియా న్యాయశాస్త్రంలో, తస్బీహాత్ అల్-అర్బా\' ధుహర్, ఆసర్, మాఘ్రిబ్, మరియు ఇషా యొక్క 3 మరియు 4 రకాతులలో సూరా అల్-ఫాతిహా భర్తీ చేస్తుంది. దానిని ఒక్క సారి పుస్తకం చేయడం అవసరమైనది (వాజిబ్) మరియు ఇది మూడు సార్లు (ముస్తహబ్) సూచించబడింది.';

  @override
  String get tasbihatArba3Translation =>
      'అల్లాహ్ గొప్ప · అన్ని ప్రశంసలు అల్లాహ్\nఅల్లాహ్ కాకుండా ఎటువంటి దేవుడు లేదు · అల్లాహ్ గొప్ప';

  @override
  String get tasbihatArba3CompleteTitle => 'పుస్తకం పూర్తయ్యారు';

  @override
  String get tasbihatArba3CompleteMessage =>
      'మీ ప్రార్థన అంగీకరించబడుతుందని ఆశిస్తున్నారు — ఆమీన్';

  @override
  String get tasbihatArba3TapHint => 'ప్రతిటి పుస్తకం తరువాత నొక్కండి';

  @override
  String get tasbihatZahraSubtitle => 'ప్రతిటి ప్రార్థన తరువాత · 100 కోరలు';

  @override
  String get tasbihatZahraOriginLabel => 'మూల';

  @override
  String get tasbihatZahraHadith =>
      'లేడీ ఫాటిమా అల్-జహ్రా (sa) ప్రవక్త ﷺ చేతిలో ఒక సేవకుడి కోసం అడిగారు. ఆయన చెప్పారు: \"నేను మీకు ఏదైనా మంచిది ఇవ్వకూడదా? ప్రతిటి ప్రార్థన తరువాత సుబ్‌హానల్లాహ్ 33 సార్లు, అల్‌హాందుల్‌లిలాహ్ 33 సార్లు, మరియు అల్లాహు అక్‌బర్ 34 సార్లు పుస్తకం చేయండి. ఇది సేవకుడి కంటే మీకు మంచిది.\"';

  @override
  String get tasbihatZahraHadithSource => '— బిహార్ అల్-అనవర్, వాల్యూమ్ 85';

  @override
  String get tasbihatZahraOpenCounter => 'తస్బీహ్ కౌంటర్‌ను తెరవండి';

  @override
  String get tasbihatDuasTitle => 'సూచించిన దుఆలు';

  @override
  String get tasbihatDuasSubtitle => 'ప్రార్థన పూర్తి చేసిన తరువాత';

  @override
  String get tasbihatDuaAyatKursiTitle => 'ఆయత్ అల్-కుర్సీ';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ప్రతిటి అవసరమైన ప్రార్థన తరువాత';

  @override
  String get tasbihatDuaAyatKursiSource => 'సూరా అల్-బకారా 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ప్రతిటి అవసరమైన ప్రార్థన తరువాత ఆయత్ అల్-కుర్సీని పుస్తకం చేసే ఎవరైనా, స్వర్గం మరియు దానిని మధ్య ఏమీ నిలకడ చేయదు. ఇమామ్ అల్-బాకిర్ (a) ఖుర్ఆన్‌లో ఇది గొప్ప శ్లోకాల్లో ఒకటి.కొటిన చెప్పారు.';

  @override
  String get tasbihatDuaSalawatTitle => 'సలావత్';

  @override
  String get tasbihatDuaSalawatWhen =>
      'ప్రతిటి ప్రార్థన తరువాత · అన్ని వేధనలను సీల్ చేస్తుంది';

  @override
  String get tasbihatDuaSalawatSource => 'ఇమామ్ అల్-సాదిక్ (a) — అల్-కాఫీ';

  @override
  String get tasbihatDuaSalawatNote =>
      'ప్రవక్త ﷺ మరియు అతని శుద్ధ కుటుంబ (ఆల్ ముహమ్మద్) కు అభిషేకాలను పంపడం ప్రతిటి దుఆను సీల్ చేయడానికి సూచించబడుతుంది. ఇమామ్ అల్-సాదిక్ (a) చెప్పారు: \"ఎటువంటి దుఆ సంబంధం నిలిపివేయబడుతుంది మీరు ముహమ్మద్ మరియు అతని కుటుంబానికి సలావత్ పంపే వరకు.\"';

  @override
  String get tasbihatDuaFarajTitle => 'దుఆ అల్-ఫరాజ్';

  @override
  String get tasbihatDuaFarajWhen =>
      'ప్రతిటి ప్రార్థన తరువాత · మా సమయ ఇమామ్ కోసం';

  @override
  String get tasbihatDuaFarajSource =>
      'ఇమామ్ అల్-హసన్ అల్-\'అస్కరీ (a) ఆచారం చేసారు';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. It is often recited by many Shia Muslims after prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'లేడీ ఫాటిమా యొక్క తస్బీహ్';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'మాఘ్రిబ్ మరియు ఇషా తరువాత · ముఖ్యంగా సూచించబడిన';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ఇమామ్ అల్-బాకిర్ (a) — బిహార్ అల్-అనవర్';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ఇమామ్ అల్-బాకిర్ (a) చెప్పారు ఇషా తరువాత నిద్రానికి ముందు తస్బీహ్ అల్-జహ్రా\'ను పుస్తకం చేయడం 1000 రకాతుల ఐచ్ఛిక ప్రార్థన కంటే మంచిది. దాని కాంతి స్వర్గానికి ఎక్కుతుంది.';

  @override
  String get tasbihFatimaGiftPre => 'ప్రవక్త నుండి ఎటు';

  @override
  String get tasbihFatimaGiftPost => 'ప్రతిటి ప్రార్థన తరువాత పుస్తకం చేయబడిన';

  @override
  String get prayerTrackerTitle => 'ప్రార్థన ట్రాకర్';

  @override
  String get prayerTrackerPrayed => 'ప్రార్థన చేసారు';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count రోజు స్ట్రీక్';
  }

  @override
  String get prayerTrackerAllComplete =>
      'ఈ రోజు అన్ని ప్రార్థనలు పూర్తయ్యాయి. అల్లాహ్ అంగీకరించండి.';

  @override
  String get dhikrTrackerTitle => 'తస్బీహ్ అల్-జహ్రా';

  @override
  String get dhikrTrackerCompletedToday => 'ఈ రోజు పూర్తయ్యారు';

  @override
  String get dhikrTrackerNotDoneToday => 'ఈ రోజు చేయనిచోటూ';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count రోజు స్ట్రీక్';
  }

  @override
  String get dhikrReminderTitle => 'తస్బీహ్ రిమైండర్';

  @override
  String get dhikrReminderDescription =>
      'మీ తస్బీహ్ అల్-జహ్రా (SA) పుస్తకం చేయడానికి సున్నితమైన దైనిక రిమైండర్.';

  @override
  String get dhikrReminderEnable => 'తస్బీహ్ రిమైండర్‌ను చేతనం చేయండి';

  @override
  String get dhikrReminderTimeLabel => 'రిమైండర్ సమయం';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'రోజుకు సంబంధిత హదీథ్';

  @override
  String get hadithLabelArabic => 'అరబిక్';

  @override
  String get hadithLabelTranslation => 'అనువాదం';

  @override
  String get hadithBadge => 'హదీథ్';

  @override
  String get hadithShare => 'ఈ హదీథ్‌ను భాగస్వామ్యం చేయండి';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nअయారా ద్వారా';
  }

  @override
  String get hadithNavPrevious => 'మునుపటి';

  @override
  String get hadithNavNext => 'తదుపరి';

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
  String get imamLabelBorn => 'జన్మ';

  @override
  String get imamLabelMartyrdom => 'శహాదత్';

  @override
  String get imamLabelStatus => 'స్థితి';

  @override
  String get imamSectionBiography => 'జీవ చరిత్ర';

  @override
  String get imamSectionFamousSaying => 'ప్రసిద్ధ చెప్పిన';

  @override
  String get imamRoleProphet => 'చివరి ప్రవక్త';

  @override
  String get imamRoleInfallible => 'నిర్దోష';

  @override
  String get imamOrdinal1 => '1 ఇమామ్';

  @override
  String get imamOrdinal2 => '2 ఇమామ్';

  @override
  String get imamOrdinal3 => '3 ఇమామ్';

  @override
  String get imamOrdinal4 => '4 ఇమామ్';

  @override
  String get imamOrdinal5 => '5 ఇమామ్';

  @override
  String get imamOrdinal6 => '6 ఇమామ్';

  @override
  String get imamOrdinal7 => '7 ఇమామ్';

  @override
  String get imamOrdinal8 => '8 ఇమామ్';

  @override
  String get imamOrdinal9 => '9 ఇమామ్';

  @override
  String get imamOrdinal10 => '10 ఇమామ్';

  @override
  String get imamOrdinal11 => '11 ఇమామ్';

  @override
  String get imamOrdinal12 => '12 ఇమామ్';

  @override
  String get duaAudioScreenTitle => 'దుఆలను వినండి';

  @override
  String get duaAudioScreenSubtitle =>
      'ఒక దుఆను వినడానికి ఎంచుకోండి. ప్లే లేదా పాజ్ చేయడానికి టైల్‌ను నొక్కండి.';

  @override
  String get duaAudioComingSoonMessage =>
      'ఈ దుఆ కోసం ఆడియో ఒక వచ్చే నవీకరణలో అందుబాటులో ఉంటుంది.';

  @override
  String get duaAudioClose => 'మూసివేయండి';

  @override
  String get duaAudioError =>
      'ఆడియోను లోడ్ చేయలేము. దయచేసి మీ సంయోగం తనిఖీ చేయండి.';

  @override
  String get duaAudioMetaTransmittedBy => 'ద్వారా సంక్రమణ';

  @override
  String get duaAudioMetaOccasion => 'సందర్భం';

  @override
  String get duaAudioMetaDuration => 'కాలం';

  @override
  String get quickActionDailyHadith => 'రోజుకు సంబంధిత హదీథ్';

  @override
  String get quickAction14Masumeen => 'Fourteen Infallibles';

  @override
  String get quickActionListenDuas => 'వినండి';

  @override
  String get quickActionTasbihat => 'ప్రార్థన గైడ్';

  @override
  String get pilgrimageSectionTitle => 'పవిత్ర ప్రయాణం';

  @override
  String get pilgrimageSectionSubtitle =>
      'హజ్ & ఉమరా కు సంపూర్ణ గైడ్‌లు — మక్కలో అల్లాహ్ యొక్క పవిత్ర ఇంటికి తీర్థయాత్ర';

  @override
  String get hajjCardTitle => 'హజ్';

  @override
  String get hajjCardSubtitle => 'ఇస్లాము యొక్క ఐదవ స్తంభం';

  @override
  String get hajjCardDescription =>
      'గ్రాండ్ వార్షిక తీర్థయాత్ర — ప్రతిటి సక్షమ ముస్లిమ్ కోసం జీవితకాలంలో ఒక్కసారి అవసరమైనది';

  @override
  String get hajjScreenTitle => 'హజ్ గైడ్';

  @override
  String get hajjScreenSubtitle => 'గ్రాండ్ తీర్థయాత్రకు దశకు దశ గైడ్';

  @override
  String get umrahCardTitle => 'ఉమరా';

  @override
  String get umrahCardSubtitle => 'చిన్న తీర్థయాత్ర';

  @override
  String get umrahCardDescription =>
      'ఒక లోతైన ఆధ్యాత్మిక ప్రయాణం ఏ సమయానికైనా సంవత్సరం ఆచరించవచ్చు';

  @override
  String get umrahScreenTitle => 'ఉమరా గైడ్';

  @override
  String get umrahScreenSubtitle => 'చిన్న తీర్థయాత్రకు దశకు దశ గైడ్';

  @override
  String get pilgrimageStepsTitle => 'కర్మకాండాలు & దశలు';

  @override
  String get pilgrimageImportantNotesTitle => 'ముఖ్యమైన నోట్‌లు';

  @override
  String get pilgrimageDuaTitle => 'ఈ దశకు దువా';

  @override
  String get pilgrimageJafariNoteTitle => 'జాఫరి ఫిక్హ్ గమనిక';

  @override
  String get pilgrimageComplete => '✓ పూర్తయింది';

  @override
  String get pilgrimageMarkDone => 'పూర్తిగా గుర్తించు';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done లో $total దశలు';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes నిమిషాలు';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'శియా తీర్థయాత్రులు';

  @override
  String get pilgrimageShiaNoteBody =>
      'చాలా మంది షియా యాత్రికులు మదీనాకు కూడా ప్రయాణించి Masjid al-Nabawi లో ప్రవక్త ముహమ్మద్ (SAW) వారికి జియారత్ చేస్తారు మరియు Jannat al-Baqi లోని సమాధులను సందర్శిస్తారు. ఈ సందర్శనలకు లోతైన ఆధ్యాత్మిక ప్రాధాన్యం ఉంది, అయితే అవి స్వతహాగా హజ్ కర్మల్లో భాగం కావు.';

  @override
  String get hajjIntro =>
      'హజ్ ఇస్లాం యొక్క ఐదవ స్తంభం. శారీరకంగా మరియు ఆర్థికంగా సామర్థ్యం ఉన్న ప్రతి ముస్లింకు జీవితంలో ఒక్కసారి ఇది తప్పనిసరి. ఈ రోజుల్లో ఎక్కువమంది ట్వెల్వర్ షియా యాత్రికులకు ఇది Hajj al-Tamattu\' ను సూచిస్తుంది; ఇది Dhul Hijjah నెలలో ప్రవక్త Ibrahim (AS), ఆయన కుమారుడు Ismail (AS), మరియు Lady Hajar అడుగుజాడల్లో నిర్వహించబడుతుంది. ఈ మార్గదర్శిని కర్మల Ja\'fari రూపరేఖను అనుసరిస్తుంది; మదీనాలో జియారత్ మాత్రం హజ్‌కు ముందు లేదా తరువాత ఎంతో ప్రీతిపాత్రమైన ఆధ్యాత్మిక యాత్రగానే ఉంటుంది.';

  @override
  String get umrahIntro =>
      'ఉమరా చిన్న తీర్థయాత్ర మక్కాకు మరియు, హజ్ కాకుండా, సంవత్సరం యొక్క ఏ సమయానికైనా ఆచరించవచ్చు. తప్పనిసరి లేనప్పటికీ, ఇది విస్తారమైన ఆధ్యాత్మిక ఇష్టపూర్వకమైన మరియు పూజక చర్య యొక్క ఉચ్చ సూచించిన చర్య. ఇది హజ్‌తో అనేక కర్మకాండాలను భాగస్వామ్యం చేస్తుంది కానీ తక్కువ, నాలుగు ముఖ్య కర్మకాండాలను కలిగి ఉంటుంది.';

  @override
  String get voiceInputTitle => 'శబ్ద ఇన్‌పుట్';

  @override
  String get voiceInputMicTitle => 'మైక్రోఫోన్';

  @override
  String get voiceInputMicSubtitle =>
      'టైప్ చేయడం కంటే Ask Ayara కు మీ ఇన్‌పుట్‌ను మాట్లాడండి.';

  @override
  String get voiceInputMicDenied => 'మైక్రోఫోన్ యాక్సెస్ నిరాకరించబడింది.';

  @override
  String get voiceInputSpeak => 'మాట్లాడండి';

  @override
  String get voiceInputListening => 'వింటున్నాం…';

  @override
  String get voiceInputPermissionDenied =>
      'శబ్ద ఇన్‌పుట్ కోసం మైక్రోఫోన్ యాక్సెస్ అవసరం.';
}
