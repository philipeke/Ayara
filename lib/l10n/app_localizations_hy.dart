// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get appTitle => 'Այարա';

  @override
  String get languageSelectTitle => 'Ընտրեք ձեր լեզուն';

  @override
  String get languageSelectSub =>
      'Սա կարող եք փոխել ավելի ուշ Կարգավորումներում';

  @override
  String get actionContinue => 'Շարունակել';

  @override
  String get languageSuggestedHeader => 'Առաջարկվող';

  @override
  String get languageAllHeader => 'Բոլոր լեզուները';

  @override
  String get languageSuggestedBadge => 'Առաջարկվող';

  @override
  String get languageSearchHint => 'Որոնել…';

  @override
  String get planBasic => 'Ստանդարտ';

  @override
  String get planPremium => 'Վիլայա';

  @override
  String get categorySlot01 => 'Ամենօրյա առաջնորդություն';

  @override
  String get categorySlot02 => 'Իման և վստահություն';

  @override
  String get categorySlot03 => 'Աղոթքի խորհրդածություն';

  @override
  String get categorySlot04 => 'Համբերություն և հույս';

  @override
  String get categorySlot05 => 'Փնտրիր ներման';

  @override
  String get categorySlot06 => 'Գթություն և կարեկցանք';

  @override
  String get categorySlot07 => 'Հավատի ուժ';

  @override
  String get categorySlot08 => 'Երախտապարտ սիրտ';

  @override
  String get categorySlot09 => 'Կյանքի նպատակ';

  @override
  String get categorySlot10 => 'Ընտանեկան կապեր';

  @override
  String get categorySlot11 => 'Ներքին խաղաղություն';

  @override
  String get categorySlot12 => 'Մարգարեական իմաստություն';

  @override
  String get categorySlot13 => 'Բարի բնավորություն';

  @override
  String get categorySlot14 => 'Դիմադրիր գայթակղությանը';

  @override
  String get categorySlot15 => 'Երեկոյան զիքր';

  @override
  String get categoryCustom => 'Անձնական խորհրդածություն';

  @override
  String get dhikrMeaningSubhanallah => 'Փառք Ալլահին';

  @override
  String get dhikrMeaningAlhamdulillah =>
      'Ամբողջ գովասանքը Ալլահին է պատկանում';

  @override
  String get dhikrMeaningAllahuAkbar => 'Ալլահը Մեծագույնն է';

  @override
  String get quranVerseHeartAtRest =>
      'Իրապես, Ալլահի հիշատակության մեջ են սրտերը խաղաղություն գտնում։';

  @override
  String get promptHint =>
      'Հպեք որևէ կատեգորիայի՝ իսլամական առաջնորդություն և խորհրդածություն ստանալու համար';

  @override
  String get currentLanguage => 'Ընթացիկ լեզու';

  @override
  String get settingsLanguage => 'Լեզվի կարգավորումներ';

  @override
  String get settingsTitle => 'Կարգավորումներ';

  @override
  String get chooseLanguage => 'Ընտրեք ձեր լեզուն';

  @override
  String get continueCta => 'Շարունակել';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count բառ',
      one: '$count բառ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Ընտրանքներ';

  @override
  String get newCta => 'Նոր';

  @override
  String get actionsTitle => 'Ի՞նչ կցանկանայիք անել';

  @override
  String get copy => 'Պատճենել';

  @override
  String get share => 'Կիսվել';

  @override
  String get close => 'Փակել';

  @override
  String get copiedToast => 'Պատճենվել է clipboard-ում';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Չհաջողվեց ստեղծել նոր պատասխան';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nՑանկանու՞մ եք կրկին փորձել։';
  }

  @override
  String get cancelCta => 'Չեղարկել';

  @override
  String get retryCta => 'Կրկին փորձել';

  @override
  String get authTitle => 'Ստեղծեք ձեր հաշիվը';

  @override
  String get continueAsGuest => 'Շարունակել որպես հյուր';

  @override
  String get signInGoogle => 'Մուտք Google-ով';

  @override
  String get signInApple => 'Մուտք Apple-ով';

  @override
  String get signInEmail => 'Մուտք էլ. փոստով';

  @override
  String get upgradeWithApple => 'Շարունակել Apple-ով';

  @override
  String get mustAccept =>
      'Դուք պետք է ընդունեք Ծառայության պայմանները և հաստատեք Գաղտնիության քաղաքականությունը։';

  @override
  String get termsLabel => 'Ես ընդունում եմ Ծառայության պայմանները';

  @override
  String get privacyLabel => 'Ես կարդացել եմ Գաղտնիության քաղաքականությունը';

  @override
  String get marketingOptIn => 'Համաձայն եմ ստանալ նորություններ և առաջարկներ';

  @override
  String get openTerms => 'Ծառայության պայմաններ';

  @override
  String get openPrivacy => 'Գաղտնիության քաղաքականություն';

  @override
  String get accountSection => 'Հաշիվ';

  @override
  String get guestMode => 'Հյուրի ռեժիմ';

  @override
  String get signedIn => 'Մուտք գործված է';

  @override
  String get upgradeHint =>
      'Ստեղծելով հաշիվ՝ պահպանեք ձեր խորհրդածությունները բոլոր սարքերում։';

  @override
  String get upgradeWithGoogle => 'Շարունակել Google-ով';

  @override
  String get signOut => 'Դուրս գալ';

  @override
  String get snackUpgraded => 'Հաշիվը բարձրացվել է Google-ով ✅';

  @override
  String get snackSignedIn => 'Մուտք է գործվել Google-ով ✅';

  @override
  String get snackSignedOut => 'Դուրս է եկել';

  @override
  String get snackSignedInApple => 'Մուտք է գործվել Apple-ով ✅';

  @override
  String get snackSignedInGoogle => 'Մուտք է գործվել Google-ով ✅';

  @override
  String get snackUpgradedApple => 'Հաշիվը բարձրացվել է Apple-ով ✅';

  @override
  String get snackUpgradedGoogle => 'Հաշիվը բարձրացվել է Google-ով ✅';

  @override
  String get historyTitle => 'Նախորդ խորհրդածությունները';

  @override
  String get historyOpenCta => 'Նախորդ խորհրդածությունները';

  @override
  String get historyEmpty => 'Դեռ պահպանված խորհրդածություններ չկան։';

  @override
  String get historyDeleteTitle => 'Ջնջե՞լ խորհրդածությունը';

  @override
  String get historyDeleteBody => 'Սա մշտապես կհեռացնի ընտրված տարրը։';

  @override
  String get deleteCta => 'Ջնջել';

  @override
  String get historyButton => 'Նախորդ խորհրդածություններ';

  @override
  String get historyEmptyTitle => 'Դեռ խորհրդածություններ չկան';

  @override
  String get historyEmptyBody =>
      'Սկզբում ինչ-որ բան ստեղծեք — ձեր պահպանված նյութերն այստեղ կհայտնվեն։';

  @override
  String get historyDelete => 'Ջնջել';

  @override
  String get footerTitle => 'Վիլայայի, Իմանի և Սաբրի հետ';

  @override
  String get footerSubtitle => 'Մեկ աղոթք՝ մեկ ժամանակում';

  @override
  String get genericErrorSnack =>
      'Ինչ-որ բան սխալ գնաց — խնդրում ենք մի պահ հետո կրկին փորձել։';

  @override
  String get upgradeAccountCta =>
      'Պահպանեք ձեր խորհրդածությունները բոլոր սարքերում – ստեղծեք հաշիվ';

  @override
  String get deleteAccount => 'Ջնջել հաշիվը';

  @override
  String get exportData => 'Արտահանել իմ տվյալները';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Դանդաղ, վագրիկ 🐯\nAyara-ին մի պահ է պետք մինչև հաջորդը…';

  @override
  String get rateDailyLimit =>
      'Այս պահին ձեր խորհրդածություններն ավարտվել են։\nՍտացեք ավելին կամ թարմացրեք դեպի Վիլայա։';

  @override
  String get rateCreditsExhausted =>
      'Դուք օգտագործել եք ձեր բոլոր խորհրդածությունները։\nԼիցքավորեք կամ թարմացրեք դեպի Վիլայա՝ շարունակելու համար։';

  @override
  String get rateGraceCreditsExhausted =>
      'Այս պահին ձեր խորհրդածություններն ավարտվել են։\nՍտացեք ավելին կամ թարմացրեք դեպի Վիլայա։';

  @override
  String get premiumDescription =>
      'Վիլայան բացում է premium գործառույթներ, ապագա կատեգորիաներ և հատուկ կրծքանշան։';

  @override
  String ratePlanExhausted(String plan) {
    return 'Ձեր խորհրդածություններն այժմ սպառված են։ Պլան՝ $plan։';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Չհաջողվեց ստուգել ձեր խորհրդածությունները՝ $message';
  }

  @override
  String get rateCheckGenericError =>
      'Խորհրդածությունները ստուգելիս ինչ-որ բան սխալ գնաց։';

  @override
  String get aiFallbackGeneric =>
      'Ինչ-որ բան սխալ գնաց — խնդրում ենք մի պահ հետո կրկին փորձել։';

  @override
  String get limitSectionTitle => 'Խորհրդածություններ';

  @override
  String get limitTodayLabel => 'Օգտագործում';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Մնացած խորհրդածություններ՝ $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Պլան՝ $plan';
  }

  @override
  String get limitLoadingLabel => 'Բեռնվում է…';

  @override
  String get limitLoadingLabelDescription =>
      'Ցուցադրվում է խորհրդածությունների քարտում, մինչ բեռնվում են օգտագործման վիճակագրությունները։';

  @override
  String get aiLimitTitle => 'Խորհրդածություններ';

  @override
  String get aiLimitSubtitle =>
      'Յուրաքանչյուր պատասխանն օգտագործում է 1 խորհրդածություն։ Ստանդարտ պլանը ներառում է մեկնարկային խորհրդածություններ։ Վիլայան բացում է premium կատեգորիաներ և հնարավորություն է տալիս լիցքավորել։';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total օգտագործված խորհրդածություններ';
  }

  @override
  String get creditsSectionTitle => 'Խորհրդածություններ';

  @override
  String get creditsUsageLabel => 'Օգտագործում';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Մնացած խորհրդածություններ՝ $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Պլան՝ $plan';
  }

  @override
  String get creditsLoadingLabel => 'Բեռնվում է…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ցուցադրվում է, մինչ բեռնվում են խորհրդածությունների վիճակագրությունները։';

  @override
  String get creditsTitle => 'Խորհրդածություններ';

  @override
  String get creditsSubtitle =>
      'Յուրաքանչյուր պատասխանն օգտագործում է 1 խորհրդածություն։ Ստանդարտ պլանը ներառում է մեկնարկային խորհրդածություններ։ Վիլայան բացում է premium կատեգորիաներ և հնարավորություն է տալիս լիցքավորել։';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total օգտագործված խորհրդածություններ';
  }

  @override
  String get settingsDeleteTitle => 'Ջնջել հաշիվը';

  @override
  String get settingsDeleteDescription =>
      'Մշտապես ջնջել ձեր հաշիվը և դրա հետ կապված բոլոր տվյալները։';

  @override
  String get settingsDeleteButtonLabel => 'Ջնջել իմ հաշիվը';

  @override
  String get settingsDeleteDialogTitle => 'Ջնջե՞լ հաշիվը';

  @override
  String get settingsDeleteDialogBody =>
      'Այս գործողությունը մշտական է և չի կարող հետ շրջվել։\n\nՁեր բոլոր զրույցները, պատմությունը և հաշվի տեղեկությունները կջնջվեն։';

  @override
  String get settingsDeleteDialogCancel => 'Չեղարկել';

  @override
  String get settingsDeleteDialogConfirm => 'Ջնջել';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Մեկնարկային խորհրդածություններն օգտագործվել են';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Այս սարքի համար մեկնարկային խորհրդածություններն արդեն օգտագործվել են։ Շարունակելու համար թարմացրեք դեպի Վիլայա կամ գնեք ավելի շատ խորհրդածություններ։';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Մեկնարկային խորհրդածություններն օգտագործվել են';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Այս սարքի համար մեկնարկային խորհրդածություններն արդեն օգտագործվել են։ Շարունակելու համար թարմացրեք դեպի Վիլայա կամ գնեք ավելի շատ խորհրդածություններ։';

  @override
  String get deviceBoundError =>
      'Այս սարքն արդեն կապված է մեկ այլ հաշվի հետ։ Խնդրում ենք մուտք գործել բնօրինակ հաշիվով։';

  @override
  String get premiumTitle => 'Վիլայա ռեժիմ';

  @override
  String get premiumSubtitleBasic => 'Բացեք Ayara-ի ամբողջական փորձառությունը։';

  @override
  String get premiumSubtitlePremium =>
      'Դուք Վիլայայում եք։ Ավելի շատ խորհրդածությունների կարիք ունե՞ք։';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Ընթացիկ պլան՝ $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Խորհրդածություններ՝ $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Գնումներն այժմ հասանելի չեն։';

  @override
  String get premiumSignInToPurchase =>
      'Մուտք գործեք՝ խորհրդածություններ գնելու կամ Վիլայան բացելու համար։';

  @override
  String get premiumRestorePurchases => 'Վերականգնել գնումները';

  @override
  String get premiumProcessing => 'Մշակվում է…';

  @override
  String get premiumRestoreHintTitle =>
      'Արդյո՞ք արդեն գնել եք Վիլայա կամ խորհրդածություններ այս կամ մեկ այլ սարքում։';

  @override
  String get premiumRestoreHintBody =>
      'Վերականգնեք ձեր գնումները, եթե դրանք չեն ցուցադրվում։';

  @override
  String get premiumBuyCredits200 => 'Գնել 200 խորհրդածություն';

  @override
  String get premiumBuyCredits400 => 'Գնել 400 խորհրդածություն';

  @override
  String get premiumBecomePremiumOneTime => 'Անցնել Վիլայա ռեժիմի';

  @override
  String get premiumTopupHint =>
      'Վիլայայի հետ դուք կարող եք ավելացնել լրացուցիչ խորհրդածություններ, երբ դրանց կարիքը լինի։';

  @override
  String get premiumUpgradeCta => 'Թարմացնել';

  @override
  String get premiumRequiredForCategory =>
      'Այս կատեգորիան հասանելի է միայն Վիլայա օգտատերերին։ Բոլոր premium բովանդակությունը բացելու համար թարմացրեք Կարգավորումներում։';

  @override
  String get premiumBenefitsBasic =>
      'Բացեք Վիլայան՝ ստանալու լրացուցիչ խորհրդածություններ, մուտք գործելու premium կատեգորիաներ և շարունակելու, երբ առաջնորդության կարիք ունեք։';

  @override
  String get premiumBenefitsPremium =>
      'Դուք Վիլայա ռեժիմում եք։ Եթե խորհրդածությունները քիչ են մնում, ավելացրեք մի քանիսը և շարունակեք առանց ընդհատումների։';

  @override
  String get premiumButtonBecomePremium => 'Բացել Վիլայան';

  @override
  String get premiumButtonTopup1000 => 'Ավելացնել 1000 խորհրդածություն';

  @override
  String get premiumBadge => 'Վիլայան ակտիվ է';

  @override
  String get premiumLoadingStore => 'Խանութը բեռնվում է…';

  @override
  String get premiumProductNotAvailable =>
      'Այս ապրանքը դեռ հասանելի չէ խանութում։ Խնդրում ենք ավելի ուշ կրկին փորձել։';

  @override
  String get premiumPurchaseError =>
      'Գնման ընթացքում ինչ-որ բան սխալ գնաց։ Խնդրում ենք կրկին փորձել։';

  @override
  String get premiumBuyCredits100 => 'Ավելացնել 100 խորհրդածություն';

  @override
  String get premiumFeatureLocked =>
      'Այս գործառույթից օգտվելու համար բացեք Վիլայան։';

  @override
  String get lockedCategoriesHint =>
      'Որոշ կատեգորիաներ նախատեսված են միայն Վիլայա անդամների համար։ Բացեք դրանք՝ ձեր ճանապարհորդության բոլոր խորհրդածությունները բացահայտելու համար։';

  @override
  String get freePlanBlockedTitle =>
      'Դուք օգտագործել եք ձեր մեկնարկային խորհրդածությունները';

  @override
  String get freePlanBlockedBody =>
      'Դուք Ստանդարտ պլանում եք՝ մեկնարկային խորհրդածություններով, և հասել եք սահմանաչափին։ Շարունակելու և premium կատեգորիաները բացելու համար թարմացրեք դեպի Վիլայա։';

  @override
  String get freePlanBlockedCtaGoPremium => 'Տեսեք ստորև Վիլայայի տարբերակները';

  @override
  String get graceBlockedTitle =>
      'Դուք օգտագործել եք ձեր մեկնարկային խորհրդածությունները';

  @override
  String get graceBlockedBody =>
      'Դուք Ստանդարտ պլանում եք՝ մեկնարկային խորհրդածություններով, և հասել եք սահմանաչափին։ Շարունակելու և premium կատեգորիաները բացելու համար թարմացրեք դեպի Վիլայա։';

  @override
  String get graceBlockedCtaGoPremium => 'Տեսեք ստորև Վիլայայի տարբերակները';

  @override
  String get rateGuestMustSignIn =>
      'Ayara-ն և ձեր խորհրդածությունները օգտագործելու համար մուտք գործեք։';

  @override
  String get guestNoCreditsTitle => 'Հյուրի ռեժիմ';

  @override
  String get guestNoCreditsBody =>
      'Որպես հյուր դուք կարող եք դիտարկել հավելվածը, բայց չեք կարող օգտագործել խորհրդածությունները։ Ավելի ուշ մուտք գործեք Կարգավորումներում՝ խորհրդածություններ օգտագործելու և գնումները բացելու համար։';

  @override
  String get guestDialogContinue => 'Շարունակել';

  @override
  String get guestDialogLoginInstead => 'Փոխարենը մուտք գործել';

  @override
  String get optionalLabel => 'ըստ ցանկության';

  @override
  String get accountDeleteSuccessTitle => 'Հաշիվը ջնջված է';

  @override
  String get accountDeleteSuccessBody =>
      'Ձեր հաշիվը և դրա հետ կապված տվյալները հաջողությամբ ջնջվել են։';

  @override
  String get accountDeleteSuccessClose => 'Փակել';

  @override
  String get accountDeleteErrorTitle => 'Չհաջողվեց ջնջել հաշիվը';

  @override
  String get accountDeleteErrorClose => 'Լավ';

  @override
  String get accountDeleteReauthCancelled =>
      'Վերահաստատումը չեղարկվել է։ Խնդրում ենք կրկին մուտք գործել և նորից փորձել ջնջել։';

  @override
  String get accountDeleteReauthRequired =>
      'Հաշվի ջնջման համար անհրաժեշտ է վերջերս կատարված մուտք։ Խնդրում ենք դուրս գալ, կրկին մուտք գործել և նորից փորձել։';

  @override
  String get settingsDeletePermanentWarning =>
      'Այս գործողությունը մշտական է և չի կարող հետ շրջվել։ Ձեր հաշվի հետ կապված բոլոր տվյալները կջնջվեն։';

  @override
  String get dailyGraceTitle => 'Ամենօրյա առաջնորդություն';

  @override
  String get dailyGraceScriptureLabel => 'ՕՐՎԱ ԱՅԱԹԸ';

  @override
  String get dailyGraceSaintLabel => 'FIGURE OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'ԵՐԵԿՈՅԱՆ ԽՈՐՀՐԴԱԾՈՒԹՅՈՒՆ';

  @override
  String get dailyGraceCopiedToast => 'Այաթը պատճենվել է clipboard-ում';

  @override
  String get locationConsentLabel =>
      'Թույլ տալ Ayara-ին օգտագործել իմ գտնվելու վայրը՝ Քիբլայի ուղղության և աղոթքի ժամերի համար';

  @override
  String get locationConsentHint =>
      'Օգտագործվում է միայն այս գործառույթների համար։ Ձեր գտնվելու վայրը երբեք չի կիսվում կամ պահվում։';

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
  String get askPageTitle => 'Հարցրեք Ayara-ին';

  @override
  String get askPageDescription =>
      'Հարցրեք ցանկացած բան հավատի, աղոթքի, կյանքի կամ իսլամական պրակտիկայի մասին և ստացեք առաջնորդություն՝ հիմնված Ղուրանի և Ահլ ալ-Բայթի ուսմունքների վրա։';

  @override
  String get askPageInputHint => 'Մուտքագրեք ձեր հարցը այստեղ…';

  @override
  String get askPageSubmitCta => 'Հարցնել';

  @override
  String get askPageInputEmptyError => 'Խնդրում ենք նախ հարց գրել։';

  @override
  String get askResultYourQuestion => 'Ձեր հարցը';

  @override
  String get guidancePageTitle => 'Քիբլա';

  @override
  String get qiblaFacingMecca => 'Դեմքով դեպի Մաքքա';

  @override
  String get qiblaCompassInstruction =>
      'Պտտեք ձեր հեռախոսը, մինչև ոսկեգույն սլաքը վերև ուղղվի։\nԱյդ ուղղությունն է ցույց տալիս Քիբլան (Մաքքան)։';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS ազդանշանը թույլ է։ Դուրս եկեք բաց տարածք և սեղմեք «Կրկին փորձել»։';

  @override
  String get qiblaRetry => 'Կրկին փորձել';

  @override
  String get qiblaTitle => 'Քիբլայի ուղղություն';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km կմ մինչև Մաքքա';
  }

  @override
  String get qiblaLocationNeededTitle => 'Պահանջվում է գտնվելու վայր';

  @override
  String get qiblaLocationNeededBody =>
      'Թույլ տվեք գտնվելու վայրի հասանելիություն, որպեսզի Ayara-ն կարողանա հաշվարկել Քաաբայի ուղղությունը Մաքքայում՝ որտեղ էլ որ լինեք։';

  @override
  String get qiblaOpenSettings => 'Բացել կարգավորումները';

  @override
  String get qiblaCompassLoading => 'Ձեր դիրքը որոշվում է…';

  @override
  String get qiblaTowardMecca => 'Դեպի Մաքքա';

  @override
  String get prayerTimesTitle => 'Աղոթքի ժամեր';

  @override
  String get prayerTimesFajr => 'Ֆաջր';

  @override
  String get prayerTimesDhuhr => 'Զուհր';

  @override
  String get prayerTimesAsr => 'Ասր';

  @override
  String get prayerTimesMaghrib => 'Մաղրիբ';

  @override
  String get prayerTimesIsha => 'Իշա';

  @override
  String get prayerTimesLocationNeededTitle => 'Պահանջվում է գտնվելու վայր';

  @override
  String get prayerTimesLocationNeededBody =>
      'Թույլ տվեք գտնվելու վայրի հասանելիություն, որպեսզի Ayara-ն կարողանա հաշվարկել ձեր քաղաքի ճշգրիտ աղոթքի ժամերը։';

  @override
  String get prayerTimesNextLabel => 'Հաջորդը';

  @override
  String get prayerTimesDoneLabel => 'Ավարտված';

  @override
  String get monthlyPrayerTimesTitle => 'Ամսական աղոթքի ժամեր';

  @override
  String get monthlyPrayerTimesViewButton => 'Դիտել ամբողջ ամիսը';

  @override
  String get monthlyPrayerTimesNextMonth => 'Հաջորդ ամիս';

  @override
  String get monthlyPrayerTimesDayHeader => 'Օր';

  @override
  String get sharePrayerTimes => 'Կիսվել աղոթքի ժամերով';

  @override
  String get notificationsSectionTitle => 'Ծանուցումներ';

  @override
  String get notificationsSectionSubtitle =>
      'Աղոթքի հիշեցումներ, օրացույցի իրադարձություններ և ավելին';

  @override
  String get dailyReflectionReminderTitle => 'Ամենօրյա խորհրդածություն';

  @override
  String get dailyReflectionReminderDescription =>
      'Նուրբ ամենօրյա հիշեցում՝ բացելու Ayara-ն և կապվելու ձեր հավատի հետ։';

  @override
  String get dailyReflectionReminderEnable => 'Միացնել ամենօրյա հիշեցումը';

  @override
  String get dailyReflectionReminderTimeLabel => 'Հիշեցման ժամանակը';

  @override
  String get prayerNotificationsTitle => 'Աղոթքի հիշեցումներ';

  @override
  String get prayerNotificationsDescription =>
      'Ստացեք նուրբ հիշեցում յուրաքանչյուր աղոթքի ժամից առաջ՝ օրվա ընթացքում կապը պահպանելու համար։';

  @override
  String get prayerNotificationsEnable => 'Միացնել աղոթքի հիշեցումները';

  @override
  String get prayerNotificationsOpenSettings =>
      'Բացել ծանուցումների կարգավորումները';

  @override
  String get prayerNotificationsDenied => 'Ծանուցումներն անջատված են';

  @override
  String get prayerNotificationsDeniedHint =>
      'Գնացեք Կարգավորումներ և թույլ տվեք Ayara-ի ծանուցումները՝ աղոթքի ժամերի հիշեցումներ ստանալու համար։';

  @override
  String get notificationsConsentLabel =>
      'Թույլ տալ աղոթքի ժամերի ծանուցումները';

  @override
  String get prayerNotifTitleFajr => '🌅 Ֆաջր — Լուսաբացի աղոթք';

  @override
  String get prayerNotifBodyFajr =>
      'Ֆաջրը Ահլ ալ-Բայթի առավոտների աղոթքն է։ Իմամ Ալին (AS) ասել է․ պահպանիր լուսաբացի աղոթքը, ինչպես կպահպանեիր ամենաթանկ վստահությունը։ Արթնացիր, մաքրվիր և կանգնիր Ալլահի առջև։';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Զուհր — Կեսօրվա աղոթք';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ահլ ալ-Բայթի իմամները մեծ արժեք էին տալիս հիշատակության ամեն մի պահին։ Դադար տուր օրվան, անհրաժեշտության դեպքում միացրու Զուհրն ու Ասրը և վերադարձիր սիրտդ Ալլահին։';

  @override
  String get prayerNotifTitleAsr => '🌤️ Ասր — Կեսօրից հետո աղոթք';

  @override
  String get prayerNotifBodyAsr =>
      'Պահպանիր աղոթքը, որովհետև այն ուխտն է քո և Ալլահի միջև։ Ասրի ժամանակն եկել է — մի թող, որ այն անցնի առանց հիշատակության։';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Մաղրիբ — Մայրամուտի աղոթք';

  @override
  String get prayerNotifBodyMaghrib =>
      'Արևը մայր է մտել — մի պահ, որը Ահլ ալ-Բայթը սուրբ էր համարում աղաչանքի համար։ Կատարիր Մաղրիբը և բացիր ձեռքերդ Ալլահին դուայի մեջ, մինչև գիշերը սկսվի։';

  @override
  String get prayerNotifTitleIsha => '🌙 Իշա — Գիշերային աղոթք';

  @override
  String get prayerNotifBodyIsha =>
      'Ավարտիր քո օրը Ալլահի ընկերակցությամբ։ Իմամները Իշայից հետո խրախուսում էին Սալաթ ալ-Լայլը — բայց նախ ավարտիր Իշան և եզրափակիր օրը Նրա հիշատակությամբ։';

  @override
  String get outOfReflectionsBannerText =>
      'Դուք օգտագործել եք ձեր բոլոր խորհրդածությունները';

  @override
  String get outOfReflectionsBannerCta => 'Ստանալ ավելին';

  @override
  String get dhikrPageTitle => 'Զիքր';

  @override
  String get dhikrTapToCount => 'Հպեք շրջանակին՝ հաշվելու համար';

  @override
  String get dhikrResetButton => 'Վերակայել';

  @override
  String get dhikrComplete => 'Մաշա\'Ալլահ';

  @override
  String get dhikrCompleteMessage =>
      'Դուք ավարտել եք Ալլահի 100 հիշատակություն։ Թող դրանք լույս լինեն ձեր սրտի համար։';

  @override
  String get disclaimerTitle => 'Այս հավելվածի առաջնորդության մասին';

  @override
  String get disclaimerBody =>
      'Ayara-ն տրամադրում է իսլամական խորհրդածություններ, հիշեցումներ և հոգևոր բովանդակություն՝ աջակցելու ձեր անձնական հավատի ճանապարհորդությանը՝ արմատավորված Ղուրանում և Ահլ ալ-Բայթի ուսմունքներում։ Այս բովանդակությունը տրամադրվում է միայն ընդհանուր տեղեկատվական և ոգեշնչող նպատակներով։\n\nAyara-ն չի փոխարինում որակավորված գիտելիքին։\nԱյս հավելվածում տրված առաջնորդությունը չի փոխարինում ուսյալ իսլամական գիտնականին, մարջա\'ին կամ աստվածաբանական պատրաստվածություն ունեցող ուսուցչին։ Շիա իսլամում կրոնական առաջնորդությունը հիմնված է ճաֆարի իրավագիտության (ֆիղհ) դպրոցի և կենդանի Մարջա\'ին (ընդօրինակման աղբյուր) հետևելու ավանդույթի վրա — որակավորված իրավագետ, որի որոշումները առաջնորդում են հավատացյալներին կրոնական պրակտիկայում։ Եթե ունեք հարցեր կրոնական վճիռների, հալալի և հարամի կամ անձնական կրոնական պարտականությունների վերաբերյալ, խնդրում ենք դիմել որակավորված Մարջա\'ի կամ ձեր համայնքի գիտնականի։\n\nԱյս հավելվածը կրոնական վճիռներ չի արձակում։\nAyara-ն հեղինակավոր որոշումներ չի կայացնում ֆիղհի կամ անձնական կրոնական պարտականությունների հարցերում։ Այստեղ ոչինչ չպետք է համարվի ֆեթվա կամ պարտադիր կրոնական հրահանգ։\n\nԱհլ ալ-Բայթի կենտրոնական դերը։\nՇիա իսլամում Մարգարե Մուհամմադը ﷺ և նրա մաքրված ընտանիքը — Ահլ ալ-Բայթը — Ղուրանից հետո իսլամական համայնքի հեղինակավոր առաջնորդներն են։ Ահլ ալ-Բայթի տասներկու իմամները իսլամական ուսմունքի աստվածային նշանակված մեկնաբաններն են։ Այս հավելվածի բովանդակությունը արտացոլում է այս ավանդույթը և ձգտում է հավատարիմ կերպով պատվել այն։\n\nՀամայնքային հարցեր։\nԱյս հավելվածը նպատակ ունի խրախուսել ձեր ներգրավվածությունը հավատի հետ՝ խորապես հարգելով ձեր տեղական մզկիթի, իսլամական կենտրոնի և կրոնական համայնքի կարևոր դերը։ Մենք խրախուսում ենք ձեզ մնալ կապի մեջ և սովորել ձեր շրջապատի որակավորված ուսուցիչներից։';

  @override
  String get disclaimerClose => 'Հասկացա';

  @override
  String get disclaimerInfoTooltip => 'Այս հավելվածի առաջնորդության մասին';

  @override
  String get disclaimerSettingsSubtitle =>
      'Միայն ընդհանուր տեղեկատվական նպատակների համար։ Հպեք՝ ամբողջական հրաժարումը կարդալու համար։';

  @override
  String get disclaimerSectionHeader => 'Առաջնորդության հրաժարում';

  @override
  String get navHome => 'Գլխավոր';

  @override
  String get navReflect => 'Խորհրդածել';

  @override
  String get navDuas => 'Դուաներ';

  @override
  String get navCalendar => 'Օրացույց';

  @override
  String get dashboardToday => 'ԱՅՍՕՐ';

  @override
  String get dashboardComingUp => 'Առջևում';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'օր',
      one: 'օր',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Արագ հասանելիություն';

  @override
  String get quickActionQibla => 'Քիբլա';

  @override
  String get quickActionDhikr => 'Զիքր';

  @override
  String get quickActionDailyGrace => 'Առաջնորդություն';

  @override
  String get quickActionPrayerTimes => 'Աղոթքի ժամեր';

  @override
  String get askAyaraTitle => 'Հարցրեք Ayara-ին';

  @override
  String get askAyaraSubtitle =>
      'Տվեք ցանկացած իսլամական հարց և ստացեք մտածված, առաջնորդող պատասխան։';

  @override
  String get askAyaraHint => 'օր.՝ Ո՞րն է Ռամադանի նշանակությունը։';

  @override
  String get askAyaraSubmit => 'Հարցնել';

  @override
  String get wisdomOfTheDayTitle => 'Օրվա իմաստությունը';

  @override
  String get calendarScreenTitle => 'Իսլամական օրացույց';

  @override
  String get calendarUpcomingOccasions => 'Գալիք առիթներ';

  @override
  String get calendarOccasionRemindersTitle => 'Առիթների հիշեցումներ';

  @override
  String get calendarOccasionRemindersHint =>
      'Ծանուցվում է յուրաքանչյուր առիթից նախորդ երեկոյան';

  @override
  String get calendarNotifPermissionDenied =>
      'Ծանուցման թույլտվությունը մերժվել է։ Միացրեք այն ձեր սարքի կարգավորումներում։';

  @override
  String get calendarNoEvents => 'Գալիք իրադարձություններ չեն գտնվել։';

  @override
  String get calendarAddToPhone => 'Ավելացնել հեռախոսի օրացույցին';

  @override
  String get calendarAddedToPhone => 'Ավելացված է օրացույցին';

  @override
  String get calendarCountdownToday => 'ԱՅՍՕՐ';

  @override
  String get calendarCountdownTomorrow => 'ՎԱՂԸ';

  @override
  String calendarCountdownDays(int days) {
    return '$days օրից';
  }

  @override
  String get calendarAH => 'Հ․Տ․';

  @override
  String get calendarMonthJan => 'Հնվ';

  @override
  String get calendarMonthFeb => 'Փտր';

  @override
  String get calendarMonthMar => 'Մրտ';

  @override
  String get calendarMonthApr => 'Ապր';

  @override
  String get calendarMonthMay => 'Մյս';

  @override
  String get calendarMonthJun => 'Հնս';

  @override
  String get calendarMonthJul => 'Հլս';

  @override
  String get calendarMonthAug => 'Օգս';

  @override
  String get calendarMonthSep => 'Սեպ';

  @override
  String get calendarMonthOct => 'Հոկ';

  @override
  String get calendarMonthNov => 'Նոյ';

  @override
  String get calendarMonthDec => 'Դեկ';

  @override
  String get calendarSeasonMuharramEarly => 'Մուհառամի օրեր — հիշիր Քարբալան';

  @override
  String get calendarSeasonAshura => 'Աշուրա — Յա Հուսայն (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Մուհառամ — սգի և խորհրդածության օրեր';

  @override
  String get calendarSeasonArbaeen => 'Արբաին — Հուսայնի քառասուն օրը';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ճանապարհ դեպի Արբաին';

  @override
  String get calendarSeasonMabath =>
      'Մաբ\'աթ Մուբարաք — հայտնության արշալույսը';

  @override
  String get calendarSeasonMidShaban =>
      'Շա\'բանի կես — Իմամ ալ-Մահդիի (AJ) ծնունդը';

  @override
  String get calendarSeasonRamadan => 'Ռամադան Մուբարաք — Ղուրանի ամիսը';

  @override
  String get calendarSeasonGhadir => 'Էյդ ալ-Ղադիր Մուբարաք!';

  @override
  String get hijriMonth1 => 'Մուհառամ';

  @override
  String get hijriMonth2 => 'Սաֆար';

  @override
  String get hijriMonth3 => 'Ռաբի\' ալ-Ավվալ';

  @override
  String get hijriMonth4 => 'Ռաբի\' ալ-Թանի';

  @override
  String get hijriMonth5 => 'Ջումադա ալ-Ավվալ';

  @override
  String get hijriMonth6 => 'Ջումադա ալ-Թանի';

  @override
  String get hijriMonth7 => 'Ռաջաբ';

  @override
  String get hijriMonth8 => 'Շա\'բան';

  @override
  String get hijriMonth9 => 'Ռամադան';

  @override
  String get hijriMonth10 => 'Շավվալ';

  @override
  String get hijriMonth11 => 'Զուլ-Քի\'դա';

  @override
  String get hijriMonth12 => 'Զուլ-Հիջջա';

  @override
  String get duasScreenTitle => 'Դուաներ և Զիյարաթ';

  @override
  String get duasSearchHint => 'Որոնել դուաներ, զիյարաթ…';

  @override
  String get duasFilterAll => 'Բոլորը';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count դուաներ և զիյարաթ',
      one: '$count դուա',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Դուաներ չեն գտնվել։';

  @override
  String get duaCategoryDaily => 'Ամենօրյա';

  @override
  String get duaCategoryWeekly => 'Շաբաթական';

  @override
  String get duaCategoryOccasions => 'Առիթներ';

  @override
  String get duaCategoryZiyarat => 'Զիյարաթ';

  @override
  String get duaCategoryTasbih => 'Թասբիհ';

  @override
  String get eventTypeBirth => 'Ծնունդ';

  @override
  String get eventTypeMartyrdom => 'Նահատակություն';

  @override
  String get eventTypeOccasion => 'Առիթ';

  @override
  String get duaCopyTooltip => 'Պատճենել թարգմանությունը';

  @override
  String get duaToggleTransliteration => 'Տառադարձում';

  @override
  String get duaToggleTranslation => 'Թարգմանություն';

  @override
  String get duaAskAiLabel => 'Խնդրեք Ayara-ին բացատրել այս դուան';

  @override
  String get duaAskAiLockedLabel => 'Հարցնել Ayara-ին (Վիլայա)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-ի բացատրությունները հասանելի են Վիլայա անդամներին։ Թարմացրեք Կարգավորումներում։';

  @override
  String duaAiComingSoon(String name) {
    return 'Հարցրեք Ayara-ին «$name»-ի մասին — շուտով։';
  }

  @override
  String get duaCopiedToast => 'Դուան պատճենվել է clipboard-ում։';

  @override
  String get tasbihAllahuAkbarMeaning => 'Ալլահը Մեծագույնն է';

  @override
  String get tasbihAlhamdulillahMeaning =>
      'Ամբողջ գովասանքը պատկանում է Ալլահին';

  @override
  String get tasbihSubhanallahMeaning => 'Փառք Ալլահին';

  @override
  String get tasbihResetTooltip => 'Վերակայել';

  @override
  String get tasbihCompleteTitle => 'Թասբիհն ավարտված է';

  @override
  String get tasbihCompleteMessage => 'Թող Ալլահը ընդունի ձեր զիքրը։';

  @override
  String get tasbihTapHint => 'Հպեք ցանկացած տեղ՝ հաշվելու համար';

  @override
  String get tasbihatScreenTitle => 'Աղոթքի ուղեցույց';

  @override
  String get tasbihatScreenSubtitle => 'ԱՂՈԹՔԻ ՓԱՌԱԲԱՆՈՒԹՅՈՒՆՆԵՐԸ';

  @override
  String get tasbihatScreenDescription =>
      'Ամբողջական ուղեցույց ամենօրյա աղոթքների ընթացքում և հետո ասվող փառաբանությունների մասին — ըստ Ահլ ալ-Բայթի (a) ավանդույթի։';

  @override
  String get tasbihatArba3Title => 'ԹԱՍԲԻՀԱԹ ԱԼ-ԱՐԲԱԱ';

  @override
  String get tasbihatArba3Subtitle => 'Ասվում է 3-րդ և 4-րդ ռաքայում';

  @override
  String get tasbihatArba3Info =>
      'Շիա իրավագիտության մեջ Թասբիհաթ ալ-Արբաան փոխարինում է Սուրա ալ-Ֆաթիհային Զուհրի, Ասրի, Մաղրիբի և Իշայի 3-րդ և 4-րդ ռաքաներում։ Պարտադիր է (վաջիբ) այն մեկ անգամ ասել, և խորհուրդ է տրվում (մուսթահաբ) ասել երեք անգամ։';

  @override
  String get tasbihatArba3Translation =>
      'Փառք Ալլահին · Ամբողջ գովասանքը Ալլահին է\nՉկա այլ աստված բացի Ալլահից · Ալլահը Մեծագույնն է';

  @override
  String get tasbihatArba3CompleteTitle => 'Արտասանումն ավարտված է';

  @override
  String get tasbihatArba3CompleteMessage => 'Թող ձեր աղոթքն ընդունվի — Ամին';

  @override
  String get tasbihatArba3TapHint => 'Հպեք յուրաքանչյուր արտասանումից հետո';

  @override
  String get tasbihatZahraSubtitle => 'Յուրաքանչյուր աղոթքից հետո · 100 հատիկ';

  @override
  String get tasbihatZahraOriginLabel => 'Ծագում';

  @override
  String get tasbihatZahraHadith =>
      'Տիկին Ֆաթիմա ալ-Զահրան (sa) Մարգարեից ﷺ ծառա խնդրեց։ Նա ասաց. «Մի՞թե քեզ մի ավելի լավ բան ցույց չտամ։ Յուրաքանչյուր աղոթքից հետո 33 անգամ ասա Սուբհանալլահ, 33 անգամ Ալհամդուլիլլահ, և 34 անգամ Ալլահու Աքբար։ Դա քեզ համար ավելի լավ է, քան ծառան»։';

  @override
  String get tasbihatZahraHadithSource => '— Բիհար ալ-Անվար, հ. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Բացել թասբիհի հաշվիչը';

  @override
  String get tasbihatDuasTitle => 'ԽՈՐՀՈՒՐԴ ՏՐՎՈՂ ԴՈՒԱՆԵՐ';

  @override
  String get tasbihatDuasSubtitle => 'Աղոթքն ավարտելուց հետո';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Այաթ ալ-Քուրսի';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Յուրաքանչյուր պարտադիր աղոթքից հետո';

  @override
  String get tasbihatDuaAyatKursiSource => 'Սուրա ալ-Բաքարա 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Ով Այաթ ալ-Քուրսին կարդա յուրաքանչյուր պարտադիր աղոթքից հետո, դրախտի և նրա միջև ոչինչ չի կանգնի, բացի մահից։ Իմամ ալ-Բաքիրը (a) ասել է, որ սա Ղուրանի մեծագույն այաթներից է։';

  @override
  String get tasbihatDuaSalawatTitle => 'Սալավաթ';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Յուրաքանչյուր աղոթքից հետո · կնքում է բոլոր աղոթքները';

  @override
  String get tasbihatDuaSalawatSource => 'Իմամ ալ-Սադիկ (a) — Ալ-Քաֆի';

  @override
  String get tasbihatDuaSalawatNote =>
      'Մարգարեի ﷺ և նրա մաքրված ընտանիքի (Ալ Մուհամմադ) վրա ողջույններ ուղարկելը խորհուրդ է տրվում յուրաքանչյուր դուան կնքելու համար։ Իմամ ալ-Սադիկը (a) ասել է. «Յուրաքանչյուր դուա կախված է մնում, մինչև դու սալավաթ ուղարկես Մուհամմադի և նրա ընտանիքի վրա»։';

  @override
  String get tasbihatDuaFarajTitle => 'Դուա ալ-Ֆարաջ';

  @override
  String get tasbihatDuaFarajWhen =>
      'Յուրաքանչյուր աղոթքից հետո · մեր ժամանակի Իմամի համար';

  @override
  String get tasbihatDuaFarajSource =>
      'Սովորեցրել է Իմամ ալ-Հասան ալ-Ասքարին (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. It is often recited by many Shia Muslims after prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Տիկին Ֆաթիմայի թասբիհը';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Մաղրիբից և Իշայից հետո · հատկապես խորհուրդ է տրվում';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Իմամ ալ-Բաքիր (a) — Բիհար ալ-Անվար';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Իմամ ալ-Բաքիրը (a) ասել է, որ Իշայից հետո քնելուց առաջ ալ-Զահրայի թասբիհը կարդալը ավելի լավ է, քան 1000 ռաքա հավելյալ աղոթքը։ Դրա լույսը բարձրանում է երկինք։';

  @override
  String get tasbihFatimaGiftPre => 'Նվեր Մարգարեից';

  @override
  String get tasbihFatimaGiftPost => 'ասվում է յուրաքանչյուր աղոթքից հետո';

  @override
  String get prayerTrackerTitle => 'ԱՂՈԹՔԻ ՀԵՏԵՎՈՒՄ';

  @override
  String get prayerTrackerPrayed => 'Աղոթված է';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count օրվա շարունակականություն';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Այսօրվա բոլոր աղոթքները կատարված են։ Թող Ալլահը ընդունի։';

  @override
  String get dhikrTrackerTitle => 'ԹԱՍԲԻՀ ԱԼ-ԶԱՀՐԱ';

  @override
  String get dhikrTrackerCompletedToday => 'Այսօր ավարտված է';

  @override
  String get dhikrTrackerNotDoneToday => 'Այսօր արված չէ';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count օրվա շարունակականություն';
  }

  @override
  String get dhikrReminderTitle => 'Թասբիհի հիշեցում';

  @override
  String get dhikrReminderDescription =>
      'Նուրբ ամենօրյա հիշեցում՝ ձեր Թասբիհ ալ-Զահրան (SA) արտասանելու համար։';

  @override
  String get dhikrReminderEnable => 'Միացնել թասբիհի հիշեցումը';

  @override
  String get dhikrReminderTimeLabel => 'Հիշեցման ժամանակը';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Օրվա հադիս';

  @override
  String get hadithLabelArabic => 'ԱՐԱԲԵՐԵՆ';

  @override
  String get hadithLabelTranslation => 'ԹԱՐԳՄԱՆՈՒԹՅՈՒՆ';

  @override
  String get hadithBadge => 'ՀԱԴԻՍ';

  @override
  String get hadithShare => 'Կիսվել այս հադիսով';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara-ի միջոցով';
  }

  @override
  String get hadithNavPrevious => 'Նախորդ';

  @override
  String get hadithNavNext => 'Հաջորդ';

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
  String get imamLabelBorn => 'Ծնվել է';

  @override
  String get imamLabelMartyrdom => 'Նահատակություն';

  @override
  String get imamLabelStatus => 'Կարգավիճակ';

  @override
  String get imamSectionBiography => 'ԿԵՆՍԱԳՐՈՒԹՅՈՒՆ';

  @override
  String get imamSectionFamousSaying => 'ՀԱՅՏՆԻ ԱՍՈՒՅԹ';

  @override
  String get imamRoleProphet => 'Վերջին Մարգարեն';

  @override
  String get imamRoleInfallible => 'Անսխալականը';

  @override
  String get imamOrdinal1 => '1-ին Իմամ';

  @override
  String get imamOrdinal2 => '2-րդ Իմամ';

  @override
  String get imamOrdinal3 => '3-րդ Իմամ';

  @override
  String get imamOrdinal4 => '4-րդ Իմամ';

  @override
  String get imamOrdinal5 => '5-րդ Իմամ';

  @override
  String get imamOrdinal6 => '6-րդ Իմամ';

  @override
  String get imamOrdinal7 => '7-րդ Իմամ';

  @override
  String get imamOrdinal8 => '8-րդ Իմամ';

  @override
  String get imamOrdinal9 => '9-րդ Իմամ';

  @override
  String get imamOrdinal10 => '10-րդ Իմամ';

  @override
  String get imamOrdinal11 => '11-րդ Իմամ';

  @override
  String get imamOrdinal12 => '12-րդ Իմամ';

  @override
  String get duaAudioScreenTitle => 'Լսել դուաներ';

  @override
  String get duaAudioScreenSubtitle =>
      'Ընտրեք դուա լսելու համար։ Հպեք քարտին՝ նվագարկելու կամ դադարեցնելու համար։';

  @override
  String get duaAudioComingSoonMessage =>
      'Այս դուայի աուդիոն հասանելի կլինի ապագա թարմացման մեջ։';

  @override
  String get duaAudioClose => 'Փակել';

  @override
  String get duaAudioError =>
      'Չհաջողվեց բեռնել աուդիոն։ Խնդրում ենք ստուգել ձեր կապը։';

  @override
  String get duaAudioMetaTransmittedBy => 'Փոխանցել է';

  @override
  String get duaAudioMetaOccasion => 'Առիթ';

  @override
  String get duaAudioMetaDuration => 'Տևողություն';

  @override
  String get quickActionDailyHadith => 'Օրվա հադիս';

  @override
  String get quickAction14Masumeen => 'Fourteen Infallibles';

  @override
  String get quickActionListenDuas => 'Լսել';

  @override
  String get quickActionTasbihat => 'Աղոթքի ուղեցույց';

  @override
  String get pilgrimageSectionTitle => 'Սուրբ ճանապարհորդությունը';

  @override
  String get pilgrimageSectionSubtitle =>
      'Հաջի և Ումրայի ամբողջական ուղեցույցներ — ուխտագնացություն դեպի Ալլահի Սուրբ Տունը Մեքքայում';

  @override
  String get hajjCardTitle => 'Հաջ';

  @override
  String get hajjCardSubtitle => 'Իսլամի հինգերորդ սյունը';

  @override
  String get hajjCardDescription =>
      'Մեծ տարեկան ուխտագնացությունը — կյանքի ընթացքում մեկ անգամ պարտադիր յուրաքանչյուր ունակ մուսուլմանի համար';

  @override
  String get hajjScreenTitle => 'Հաջի ուղեցույց';

  @override
  String get hajjScreenSubtitle =>
      'Քայլ առ քայլ ուղեցույց մեծ ուխտագնացության համար';

  @override
  String get umrahCardTitle => 'Ումրա';

  @override
  String get umrahCardSubtitle => 'Փոքր ուխտագնացություն';

  @override
  String get umrahCardDescription =>
      'Խորապես պարգևատրվող հոգևոր ճանապարհորդություն, որը կարելի է կատարել տարվա ցանկացած ժամանակ';

  @override
  String get umrahScreenTitle => 'Ումրայի ուղեցույց';

  @override
  String get umrahScreenSubtitle =>
      'Քայլ առ քայլ ուղեցույց փոքր ուխտագնացության համար';

  @override
  String get pilgrimageStepsTitle => 'Ծեսեր և քայլեր';

  @override
  String get pilgrimageImportantNotesTitle => 'Կարևոր նշումներ';

  @override
  String get pilgrimageDuaTitle => 'Դուա այս քայլի համար';

  @override
  String get pilgrimageJafariNoteTitle => 'Ջաֆարի ֆիքհի նշում';

  @override
  String get pilgrimageComplete => '✓ Ամբողջացված';

  @override
  String get pilgrimageMarkDone => 'նշել որպես ավարտված';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total քայլերից';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes րոպե';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Շիա ուխտավորներ';

  @override
  String get pilgrimageShiaNoteBody =>
      'Շատ շիա ուխտավորներ նույնպես մեկնում են Մեդինա՝ Masjid al-Nabawi-ում Մարգարե Մուհամմադի (SAW) զիյարաթի և Jannat al-Baqi-ի գերեզմանների այցելության համար։ Այս այցելությունները մեծ հոգևոր նշանակություն ունեն, թեև ինքնին Հաջի ծեսեր չեն։';

  @override
  String get hajjIntro =>
      'Հաջը իսլամի հինգերորդ սյունն է և կյանքում մեկ անգամ պարտադիր է յուրաքանչյուր մուսուլմանի համար, ով ֆիզիկապես և ֆինանսապես կարող է այն կատարել։ Այսօր Տասներկուական շիա ուխտավորների մեծամասնության համար դա նշանակում է Hajj al-Tamattu\', որը կատարվում է Dhul Hijjah ամսին՝ Մարգարե Ibrahim (AS), նրա որդի Ismail (AS) և Lady Hajar-ի հետքերով։ Այս ուղեցույցը հետևում է ծեսերի Ja\'fari ուրվագծին, մինչդեռ Մեդինայում զիյարաթը մնում է խորապես սիրված հոգևոր ճանապարհորդություն Հաջից առաջ կամ հետո։';

  @override
  String get umrahIntro =>
      'Ումրան փոքր ուխտագնացությունն է դեպի Մեքքա և, ի տարբերություն Հաջի, կարող է կատարվել տարվա ցանկացած ժամանակ։ Թեև այն պարտադիր չէ, սակայն ունի մեծ հոգևոր պարգև և համարվում է բարձրորեն խորհուրդ տրվող عبادաթ։ Այն կիսում է մի շարք ծեսեր Հաջի հետ, բայց ավելի կարճ է՝ բաղկացած լինելով չորս հիմնական արարողություններից։';

  @override
  String get voiceInputTitle => 'Ականջակալով մուտք';

  @override
  String get voiceInputMicTitle => 'Միկրոֆոն';

  @override
  String get voiceInputMicSubtitle =>
      'Խոսեք ձեր մուտքը Ask Ayara-ի համար, փոխարենը գրելու:';

  @override
  String get voiceInputMicDenied => 'Միկրոֆոնի մուտքը մերժվել է:';

  @override
  String get voiceInputSpeak => 'Խոսեք փոխարենը';

  @override
  String get voiceInputListening => 'Լսում…';

  @override
  String get voiceInputPermissionDenied =>
      'Միկրոֆոնի մուտքը անհրաժեշտ է ձայնային մուտքի համար:';
}
