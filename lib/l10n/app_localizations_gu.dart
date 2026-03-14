// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'તમારી ભાષા પસંદ કરો';

  @override
  String get languageSelectSub => 'આને પછીથી સેટિંગ્સમાં બદલી શકશો';

  @override
  String get actionContinue => 'આગળ વધો';

  @override
  String get languageSuggestedHeader => 'સૂચવેલ';

  @override
  String get languageAllHeader => 'બધી ભાષાઓ';

  @override
  String get languageSuggestedBadge => 'સૂચવેલ';

  @override
  String get languageSearchHint => 'શોધો…';

  @override
  String get planBasic => 'સ્ટાન્ડર્ડ';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'દૈનિક માર્ગદર્શન';

  @override
  String get categorySlot02 => 'ઈમાન અને વિશ્વાસ';

  @override
  String get categorySlot03 => 'નમાઝ પર મનન';

  @override
  String get categorySlot04 => 'સબર અને આશા';

  @override
  String get categorySlot05 => 'માફી માગો';

  @override
  String get categorySlot06 => 'રહેમ અને કરુણા';

  @override
  String get categorySlot07 => 'ઈમાનની શક્તિ';

  @override
  String get categorySlot08 => 'કૃતજ્ઞ હૃદય';

  @override
  String get categorySlot09 => 'જીવનનો હેતુ';

  @override
  String get categorySlot10 => 'કુટુંબના બંધન';

  @override
  String get categorySlot11 => 'આંતરિક શાંતિ';

  @override
  String get categorySlot12 => 'પયગંબરની હિકમત';

  @override
  String get categorySlot13 => 'સારો સ્વભાવ';

  @override
  String get categorySlot14 => 'લાલચનો વિરોધ કરો';

  @override
  String get categorySlot15 => 'સાંજનો ઝિક્ર';

  @override
  String get categoryCustom => 'વ્યક્તિગત મનન';

  @override
  String get dhikrMeaningSubhanallah => 'અલ્લાહ પવિત્ર છે';

  @override
  String get dhikrMeaningAlhamdulillah => 'બધી પ્રશંસા અલ્લાહ માટે છે';

  @override
  String get dhikrMeaningAllahuAkbar => 'અલ્લાહ સર્વાથી મહાન છે';

  @override
  String get quranVerseHeartAtRest =>
      'નિશ્ચયે, અલ્લાહના સ્મરણમાં દિલોને શાંતિ મળે છે.';

  @override
  String get promptHint =>
      'ઇસ્લામી માર્ગદર્શન અને મનન માટે કોઈ કેટેગરી પર ટૅપ કરો';

  @override
  String get currentLanguage => 'વર્તમાન ભાષા';

  @override
  String get settingsLanguage => 'ભાષા સેટિંગ્સ';

  @override
  String get settingsTitle => 'સેટિંગ્સ';

  @override
  String get chooseLanguage => 'તમારી ભાષા પસંદ કરો';

  @override
  String get continueCta => 'આગળ વધો';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count શબ્દો',
      one: '$count શબ્દ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'વિકલ્પો';

  @override
  String get newCta => 'નવું';

  @override
  String get actionsTitle => 'તમે શું કરવું ઇચ્છો છો?';

  @override
  String get copy => 'કોપી કરો';

  @override
  String get share => 'શેર કરો';

  @override
  String get close => 'બંધ કરો';

  @override
  String get copiedToast => 'ક્લિપબોર્ડમાં કોપી થયું';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'નવો જવાબ તૈયાર કરી શકાયો નથી';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nશું તમે ફરી પ્રયાસ કરવા માંગો છો?';
  }

  @override
  String get cancelCta => 'રદ કરો';

  @override
  String get retryCta => 'ફરી પ્રયાસ કરો';

  @override
  String get authTitle => 'તમારું અકાઉન્ટ બનાવો';

  @override
  String get continueAsGuest => 'મેહમાન તરીકે આગળ વધો';

  @override
  String get signInGoogle => 'Google સાથે સાઇન ઇન કરો';

  @override
  String get signInApple => 'Apple સાથે સાઇન ઇન કરો';

  @override
  String get signInEmail => 'ઇમેલથી સાઇન ઇન કરો';

  @override
  String get upgradeWithApple => 'Apple સાથે આગળ વધો';

  @override
  String get mustAccept =>
      'તમારે નિયમો સ્વીકારવા અને ગોપનીયતા નીતિની જાણકારી માન્ય કરવી જરૂરી છે.';

  @override
  String get termsLabel => 'હું સેવા શરતો સ્વીકારું છું';

  @override
  String get privacyLabel => 'મેં ગોપનીયતા નીતિ વાંચી છે';

  @override
  String get marketingOptIn => 'હું સમાચાર અને ઑફરો મેળવવા સંમત છું';

  @override
  String get openTerms => 'સેવા શરતો';

  @override
  String get openPrivacy => 'ગોપનીયતા નીતિ';

  @override
  String get accountSection => 'અકાઉન્ટ';

  @override
  String get guestMode => 'મેહમાન સ્થિતિ';

  @override
  String get signedIn => 'સાઇન ઇન થયેલ';

  @override
  String get upgradeHint =>
      'અકાઉન્ટ બનાવીને તમારી મનનોવિચાર તમામ ઉપકરણોમાં સાચવો.';

  @override
  String get upgradeWithGoogle => 'Google સાથે આગળ વધો';

  @override
  String get signOut => 'સાઇન આઉટ કરો';

  @override
  String get snackUpgraded => 'Google સાથે અકાઉન્ટ અપગ્રેડ થયું ✅';

  @override
  String get snackSignedIn => 'Google સાથે સાઇન ઇન થયું ✅';

  @override
  String get snackSignedOut => 'સાઇન આઉટ થયું';

  @override
  String get snackSignedInApple => 'Apple સાથે સાઇન ઇન થયું ✅';

  @override
  String get snackSignedInGoogle => 'Google સાથે સાઇન ઇન થયું ✅';

  @override
  String get snackUpgradedApple => 'Apple સાથે અકાઉન્ટ અપગ્રેડ થયું ✅';

  @override
  String get snackUpgradedGoogle => 'Google સાથે અકાઉન્ટ અપગ્રેડ થયું ✅';

  @override
  String get historyTitle => 'પાછલા મનનોવિચાર';

  @override
  String get historyOpenCta => 'પાછલા મનનોવિચાર';

  @override
  String get historyEmpty => 'હજુ સુધી કોઈ સાચવેલ મનનોવિચાર નથી.';

  @override
  String get historyDeleteTitle => 'મનનોવિચાર કાઢી નાખવો?';

  @override
  String get historyDeleteBody => 'આ પસંદ કરેલી વસ્તુને કાયમ માટે દૂર કરશે.';

  @override
  String get deleteCta => 'કાઢી નાખો';

  @override
  String get historyButton => 'પાછલા મનનોવિચાર';

  @override
  String get historyEmptyTitle => 'હજુ સુધી કોઈ મનનોવિચાર નથી';

  @override
  String get historyEmptyBody =>
      'પહેલા કંઈક બનાવો — તમારી સાચવેલી વસ્તુઓ અહીં દેખાશે.';

  @override
  String get historyDelete => 'કાઢી નાખો';

  @override
  String get footerTitle => 'Wilaya, ઈમાન અને સબર સાથે';

  @override
  String get footerSubtitle => 'એક સમયે એક દુઆ';

  @override
  String get genericErrorSnack =>
      'કંઈક ખોટું થયું — કૃપા કરીને થોડા સમય પછી ફરી પ્રયાસ કરો.';

  @override
  String get upgradeAccountCta =>
      'તમારા મનનોવિચાર તમામ ઉપકરણોમાં સાચવો – અકાઉન્ટ બનાવો';

  @override
  String get deleteAccount => 'અકાઉન્ટ કાઢી નાખો';

  @override
  String get exportData => 'મારો ડેટા નિકાસ કરો';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ધીમે ધીમે 🐯\nઆગામી જવાબ પહેલાં Ayara ને થોડો સમય જોઈએ…';

  @override
  String get rateDailyLimit =>
      'હાલ માટે તમારા મનનોવિચાર ખૂટી ગયા છે.\nવધુ મનનોવિચાર મેળવો અથવા Wilaya માં અપગ્રેડ કરો.';

  @override
  String get rateCreditsExhausted =>
      'તમે તમારા બધા મનનોવિચાર ઉપયોગ કરી લીધા છે.\nઆગળ વધવા માટે વધુ ઉમેરો અથવા Wilaya માં અપગ્રેડ કરો.';

  @override
  String get rateGraceCreditsExhausted =>
      'હાલ માટે તમારા મનનોવિચાર ખૂટી ગયા છે.\nવધુ મનનોવિચાર મેળવો અથવા Wilaya માં અપગ્રેડ કરો.';

  @override
  String get premiumDescription =>
      'Wilaya પ્રીમિયમ સુવિધાઓ, ભવિષ્યની કેટેગરીઓ અને ખાસ બેજ અનલોક કરે છે.';

  @override
  String ratePlanExhausted(String plan) {
    return 'હાલમાં તમારા મનનોવિચાર સમાપ્ત છે. પ્લાન: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'તમારા મનનોવિચાર ચકાસી શકાયા નથી: $message';
  }

  @override
  String get rateCheckGenericError =>
      'તમારા મનનોવિચાર ચકાસતી વખતે કંઈક ખોટું થયું.';

  @override
  String get aiFallbackGeneric =>
      'કંઈક ખોટું થયું — કૃપા કરીને થોડા સમય પછી ફરી પ્રયાસ કરો.';

  @override
  String get limitSectionTitle => 'મનનોવિચાર';

  @override
  String get limitTodayLabel => 'વપરાશ';

  @override
  String limitCreditsLabel(Object credits) {
    return 'બાકી મનનોવિચાર: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'પ્લાન: $plan';
  }

  @override
  String get limitLoadingLabel => 'લોડ થઈ રહ્યું છે…';

  @override
  String get limitLoadingLabelDescription =>
      'વપરાશના આંકડા મેળવતી વખતે મનનોવિચાર કાર્ડમાં બતાવવામાં આવે છે.';

  @override
  String get aiLimitTitle => 'મનનોવિચાર';

  @override
  String get aiLimitSubtitle =>
      'દરેક જવાબ 1 મનનોવિચાર વાપરે છે. સ્ટાન્ડર્ડમાં પ્રારંભિક મનનોવિચાર સામેલ છે. Wilaya પ્રીમિયમ કેટેગરીઓ અનલોક કરે છે અને ટોપ-અપ સક્રિય કરે છે.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total મનનોવિચાર ઉપયોગમાં લેવાયા';
  }

  @override
  String get creditsSectionTitle => 'મનનોવિચાર';

  @override
  String get creditsUsageLabel => 'વપરાશ';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'બાકી મનનોવિચાર: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'પ્લાન: $plan';
  }

  @override
  String get creditsLoadingLabel => 'લોડ થઈ રહ્યું છે…';

  @override
  String get creditsLoadingLabelDescription =>
      'મનનોવિચારના આંકડા મેળવતી વખતે બતાવવામાં આવે છે.';

  @override
  String get creditsTitle => 'મનનોવિચાર';

  @override
  String get creditsSubtitle =>
      'દરેક જવાબ 1 મનનોવિચાર વાપરે છે. સ્ટાન્ડર્ડમાં પ્રારંભિક મનનોવિચાર સામેલ છે. Wilaya પ્રીમિયમ કેટેગરીઓ અનલોક કરે છે અને ટોપ-અપ સક્રિય કરે છે.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total મનનોવિચાર ઉપયોગમાં લેવાયા';
  }

  @override
  String get settingsDeleteTitle => 'અકાઉન્ટ કાઢી નાખો';

  @override
  String get settingsDeleteDescription =>
      'તમારું અકાઉન્ટ અને સંબંધિત તમામ ડેટા કાયમ માટે કાઢી નાખો.';

  @override
  String get settingsDeleteButtonLabel => 'મારું અકાઉન્ટ કાઢી નાખો';

  @override
  String get settingsDeleteDialogTitle => 'અકાઉન્ટ કાઢી નાખવું?';

  @override
  String get settingsDeleteDialogBody =>
      'આ ક્રિયા કાયમી છે અને પાછી ફેરવી શકાતી નથી.\n\nતમારી બધી ચેટ્સ, ઇતિહાસ અને અકાઉન્ટ માહિતી કાઢી નાખવામાં આવશે.';

  @override
  String get settingsDeleteDialogCancel => 'રદ કરો';

  @override
  String get settingsDeleteDialogConfirm => 'કાઢી નાખો';

  @override
  String get settingsFreeLimitUsedTitle =>
      'પ્રારંભિક મનનોવિચાર ઉપયોગમાં લેવાયા';

  @override
  String get settingsFreeLimitUsedDescription =>
      'આ ઉપકરણ માટેના પ્રારંભિક મનનોવિચાર વપરાઈ ગયા છે. આગળ વધવા માટે Wilaya માં અપગ્રેડ કરો અથવા વધુ મનનોવિચાર ખરીદો.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'પ્રારંભિક મનનોવિચાર ઉપયોગમાં લેવાયા';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'આ ઉપકરણ માટેના પ્રારંભિક મનનોવિચાર વપરાઈ ગયા છે. આગળ વધવા માટે Wilaya માં અપગ્રેડ કરો અથવા વધુ મનનોવિચાર ખરીદો.';

  @override
  String get deviceBoundError =>
      'આ ઉપકરણ પહેલેથી જ બીજા અકાઉન્ટ સાથે જોડાયેલું છે. કૃપા કરીને મૂળ અકાઉન્ટથી સાઇન ઇન કરો.';

  @override
  String get premiumTitle => 'Wilaya સ્થિતિ';

  @override
  String get premiumSubtitleBasic => 'Ayara નો સંપૂર્ણ અનુભવ અનલોક કરો.';

  @override
  String get premiumSubtitlePremium =>
      'તમે હવે Wilaya પર છો. વધુ મનનોવિચાર જોઈએ છે?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'વર્તમાન પ્લાન: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'મનનોવિચાર: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'ખરીદી હાલમાં ઉપલબ્ધ નથી.';

  @override
  String get premiumSignInToPurchase =>
      'મનનોવિચાર ખરીદવા અથવા Wilaya અનલોક કરવા માટે સાઇન ઇન કરો.';

  @override
  String get premiumRestorePurchases => 'ખરીદીઓ પુનઃસ્થાપિત કરો';

  @override
  String get premiumProcessing => 'પ્રક્રિયા થઈ રહી છે…';

  @override
  String get premiumRestoreHintTitle =>
      'આ ઉપકરણ પર અથવા બીજા ઉપકરણ પર તમે પહેલેથી જ Wilaya અથવા મનનોવિચાર ખરીદ્યા છે?';

  @override
  String get premiumRestoreHintBody =>
      'જો દેખાતા ન હોય તો તમારી ખરીદીઓ પુનઃસ્થાપિત કરો.';

  @override
  String get premiumBuyCredits200 => '200 મનનોવિચાર ખરીદો';

  @override
  String get premiumBuyCredits400 => '400 મનનોવિચાર ખરીદો';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya સ્થિતિમાં અપગ્રેડ કરો';

  @override
  String get premiumTopupHint =>
      'Wilaya સાથે, જ્યારે જરૂર પડે ત્યારે વધારાના મનનોવિચાર ઉમેરી શકો છો.';

  @override
  String get premiumUpgradeCta => 'અપગ્રેડ કરો';

  @override
  String get premiumRequiredForCategory =>
      'આ કેટેગરી માત્ર Wilaya વપરાશકર્તાઓ માટે ઉપલબ્ધ છે. બધી પ્રીમિયમ સામગ્રી અનલોક કરવા સેટિંગ્સમાં અપગ્રેડ કરો.';

  @override
  String get premiumBenefitsBasic =>
      'વધારાના મનનોવિચાર, પ્રીમિયમ કેટેગરીઓમાં પ્રવેશ અને જ્યારે માર્ગદર્શન જોઈએ ત્યારે આગળ વધવા માટે Wilaya અનલોક કરો.';

  @override
  String get premiumBenefitsPremium =>
      'તમે Wilaya સ્થિતિમાં છો. જો મનનોવિચાર ઓછા પડી રહ્યા હોય, તો વધુ ઉમેરો અને અવરોધ વગર આગળ વધો.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya અનલોક કરો';

  @override
  String get premiumButtonTopup1000 => '1000 મનનોવિચાર ઉમેરો';

  @override
  String get premiumBadge => 'Wilaya સક્રિય';

  @override
  String get premiumLoadingStore => 'સ્ટોર લોડ થઈ રહ્યું છે…';

  @override
  String get premiumProductNotAvailable =>
      'આ ઉત્પાદન હજી સ્ટોરમાં ઉપલબ્ધ નથી. કૃપા કરીને પછી ફરી પ્રયાસ કરો.';

  @override
  String get premiumPurchaseError =>
      'ખરીદી દરમિયાન કંઈક ખોટું થયું. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get premiumBuyCredits100 => '100 મનનોવિચાર ઉમેરો';

  @override
  String get premiumFeatureLocked => 'આ સુવિધા મેળવવા માટે Wilaya અનલોક કરો.';

  @override
  String get lockedCategoriesHint =>
      'કેટલીક કેટેગરીઓ માત્ર Wilaya સભ્યો માટે અનામત છે. તમારી યાત્રામાં દરેક મનનોવિચાર શોધવા માટે તેમને અનલોક કરો.';

  @override
  String get freePlanBlockedTitle =>
      'તમારા પ્રારંભિક મનનોવિચાર પૂર્ણ થઈ ગયા છે';

  @override
  String get freePlanBlockedBody =>
      'તમે સ્ટાન્ડર્ડ પ્લાન પર પ્રારંભિક મનનોવિચાર સાથે છો અને મર્યાદા સુધી પહોંચી ગયા છો. આગળ વધવા અને પ્રીમિયમ કેટેગરીઓ અનલોક કરવા માટે — Wilaya માં અપગ્રેડ કરો.';

  @override
  String get freePlanBlockedCtaGoPremium => 'નીચેના Wilaya વિકલ્પો જુઓ';

  @override
  String get graceBlockedTitle => 'તમારા પ્રારંભિક મનનોવિચાર પૂર્ણ થઈ ગયા છે';

  @override
  String get graceBlockedBody =>
      'તમે સ્ટાન્ડર્ડ પ્લાન પર પ્રારંભિક મનનોવિચાર સાથે છો અને મર્યાદા સુધી પહોંચી ગયા છો. આગળ વધવા અને પ્રીમિયમ કેટેગરીઓ અનલોક કરવા માટે — Wilaya માં અપગ્રેડ કરો.';

  @override
  String get graceBlockedCtaGoPremium => 'નીચેના Wilaya વિકલ્પો જુઓ';

  @override
  String get rateGuestMustSignIn =>
      'Ayara અને તમારા મનનોવિચારનો ઉપયોગ કરવા સાઇન ઇન કરો.';

  @override
  String get guestNoCreditsTitle => 'મેહમાન સ્થિતિ';

  @override
  String get guestNoCreditsBody =>
      'મેહમાન તરીકે તમે એપ જોઈ શકો છો, પરંતુ મનનોવિચારનો ઉપયોગ કરી શકતા નથી. મનનોવિચાર અને ખરીદી અનલોક કરવા માટે પછીથી સેટિંગ્સમાં લોગ ઇન કરો.';

  @override
  String get guestDialogContinue => 'આગળ વધો';

  @override
  String get guestDialogLoginInstead => 'તેના બદલે લોગ ઇન કરો';

  @override
  String get optionalLabel => 'વૈકલ્પિક';

  @override
  String get accountDeleteSuccessTitle => 'અકાઉન્ટ કાઢી નાખ્યું';

  @override
  String get accountDeleteSuccessBody =>
      'તમારું અકાઉન્ટ અને સંબંધિત ડેટા સફળતાપૂર્વક કાઢી નાખવામાં આવ્યા છે.';

  @override
  String get accountDeleteSuccessClose => 'બંધ કરો';

  @override
  String get accountDeleteErrorTitle => 'અકાઉન્ટ કાઢી શકાઈ નથી';

  @override
  String get accountDeleteErrorClose => 'ઠીક છે';

  @override
  String get accountDeleteReauthCancelled =>
      'ફરીથી પ્રમાણીકરણ રદ થયું. કૃપા કરીને ફરી સાઇન ઇન કરો અને ડિલીટ ફરી પ્રયાસ કરો.';

  @override
  String get accountDeleteReauthRequired =>
      'અકાઉન્ટ ડિલીટ કરવા માટે તાજેતરની લૉગિન જરૂરી છે. કૃપા કરીને સાઇન આઉટ કરો, ફરી સાઇન ઇન કરો અને ફરી પ્રયાસ કરો.';

  @override
  String get settingsDeletePermanentWarning =>
      'આ ક્રિયા કાયમી છે અને પાછી ફેરવી શકાતી નથી. તમારા અકાઉન્ટ સાથે જોડાયેલ તમામ ડેટા કાઢી નાખવામાં આવશે.';

  @override
  String get dailyGraceTitle => 'દૈનિક માર્ગદર્શન';

  @override
  String get dailyGraceScriptureLabel => 'આજની આયત';

  @override
  String get dailyGraceSaintLabel => 'આઠવાડિયાનો પાત્ર';

  @override
  String get dailyGraceReflectionLabel => 'સાંજનો મનનોવિચાર';

  @override
  String get dailyGraceCopiedToast => 'આયત ક્લિપબોર્ડમાં કોપી થઈ';

  @override
  String get locationConsentLabel =>
      'Qibla દિશા અને નમાઝ સમય માટે Ayara ને મારું સ્થાન વાપરવાની મંજૂરી આપો';

  @override
  String get locationConsentHint =>
      'માત્ર આ સુવિધાઓ માટે જ વપરાય છે. તમારું સ્થાન ક્યારેય શેર કે સંગ્રહિત કરવામાં આવતું નથી.';

  @override
  String get askPageTitle => 'Ayara ને પૂછો';

  @override
  String get askPageDescription =>
      'ઈમાન, નમાઝ, જીવન અથવા ઈસ્લામી અમલ વિશે કંઈ પણ પૂછો અને કુરઆન તથા અહલ અલ-બૈતની શિક્ષાઓ પર આધારિત માર્ગદર્શન મેળવો.';

  @override
  String get askPageInputHint => 'તમારો પ્રશ્ન અહીં લખો…';

  @override
  String get askPageSubmitCta => 'પૂછો';

  @override
  String get askPageInputEmptyError => 'કૃપા કરીને પહેલાં પ્રશ્ન લખો.';

  @override
  String get askResultYourQuestion => 'તમારો પ્રશ્ન';

  @override
  String get guidancePageTitle => 'કિબલા';

  @override
  String get qiblaFacingMecca => 'મક્કા તરફ';

  @override
  String get qiblaCompassInstruction =>
      'સોનેરી સૂઈ ઉપર દિશામાં આવે ત્યાં સુધી તમારો ફોન ફેરવો.\nએ દિશા કિબલા (મક્કા) તરફ સૂચવે છે.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS સિગ્નલ નબળું છે. બહાર જાઓ અને ફરી પ્રયાસ કરો પર ટૅપ કરો.';

  @override
  String get qiblaRetry => 'ફરી પ્રયાસ કરો';

  @override
  String get qiblaTitle => 'કિબલાની દિશા';

  @override
  String qiblaDistanceLabel(String km) {
    return 'મક્કા સુધી $km કિ.મી.';
  }

  @override
  String get qiblaLocationNeededTitle => 'સ્થાન જરૂરી છે';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara તમે જ્યાં હો ત્યાંથી મક્કામાં કાબાની દિશા ગણતરી કરી શકે તે માટે સ્થાનની મંજૂરી આપો.';

  @override
  String get qiblaOpenSettings => 'સેટિંગ્સ ખોલો';

  @override
  String get qiblaCompassLoading => 'તમારી સ્થિતિ શોધાઈ રહી છે…';

  @override
  String get qiblaTowardMecca => 'મક્કા તરફ';

  @override
  String get prayerTimesTitle => 'નમાઝના સમય';

  @override
  String get prayerTimesFajr => 'ફજર';

  @override
  String get prayerTimesDhuhr => 'ઝુહ્ર';

  @override
  String get prayerTimesAsr => 'અસર';

  @override
  String get prayerTimesMaghrib => 'મગરિબ';

  @override
  String get prayerTimesIsha => 'ઈશા';

  @override
  String get prayerTimesLocationNeededTitle => 'સ્થાન જરૂરી છે';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara તમારા શહેર માટે ચોક્કસ નમાઝ સમય ગણવી શકે તે માટે સ્થાનની મંજૂરી આપો.';

  @override
  String get prayerTimesNextLabel => 'આગામી';

  @override
  String get prayerTimesDoneLabel => 'પૂર્ણ';

  @override
  String get monthlyPrayerTimesTitle => 'માસિક નમાઝ સમય';

  @override
  String get monthlyPrayerTimesViewButton => 'આખો મહિનો જુઓ';

  @override
  String get monthlyPrayerTimesNextMonth => 'આગળનો મહિનો';

  @override
  String get monthlyPrayerTimesDayHeader => 'દિવસ';

  @override
  String get sharePrayerTimes => 'નમાઝ સમય શેર કરો';

  @override
  String get notificationsSectionTitle => 'સૂચનાઓ';

  @override
  String get notificationsSectionSubtitle =>
      'નમાઝ રીમાઇન્ડર, કેલેન્ડર ઇવેન્ટ્સ અને વધુ';

  @override
  String get dailyReflectionReminderTitle => 'દૈનિક મનનોવિચાર';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara ખોલવા અને તમારા ઈમાન સાથે જોડાવા માટે નમ્ર દૈનિક રીમાઇન્ડર.';

  @override
  String get dailyReflectionReminderEnable => 'દૈનિક રીમાઇન્ડર સક્રિય કરો';

  @override
  String get dailyReflectionReminderTimeLabel => 'રીમાઇન્ડરનો સમય';

  @override
  String get prayerNotificationsTitle => 'નમાઝ રીમાઇન્ડર';

  @override
  String get prayerNotificationsDescription =>
      'દરેક નમાઝ પહેલાં નમ્ર રીમાઇન્ડર મેળવો જેથી તમે આખો દિવસ જોડાયેલા રહો.';

  @override
  String get prayerNotificationsEnable => 'નમાઝ રીમાઇન્ડર સક્રિય કરો';

  @override
  String get prayerNotificationsOpenSettings => 'સૂચના સેટિંગ્સ ખોલો';

  @override
  String get prayerNotificationsDenied => 'સૂચનાઓ બંધ છે';

  @override
  String get prayerNotificationsDeniedHint =>
      'નમાઝ સમયની સૂચનાઓ મેળવવા માટે સેટિંગ્સમાં જઈ Ayara માટે સૂચનાઓ મંજૂર કરો.';

  @override
  String get notificationsConsentLabel => 'નમાઝ સમય માટે સૂચનાઓ મંજૂર કરો';

  @override
  String get prayerNotifTitleFajr => '🌅 ફજર — વહેલી સવારની નમાઝ';

  @override
  String get prayerNotifBodyFajr =>
      'ફજર અહલ અલ-બૈતની સવારની નમાઝ છે. ઈમામ અલી (અ) એ કહ્યું: સવારની નમાઝનું રક્ષણ તું પોતાની સૌથી કિંમતી અમાનત જેવું કર. ઊઠ, પોતાને પવિત્ર કર અને અલ્લાહ સમક્ષ ઉભો રહેજે.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ઝુહ્ર — બપોરની નમાઝ';

  @override
  String get prayerNotifBodyDhuhr =>
      'અહલ અલ-બૈતના ઈમામો ઝિક્રના દરેક ક્ષણને મૂલ્યવાન માનતા. તમારો દિવસ થોડીવાર રોકો, જરૂર હોય તો ઝુહ્ર અને અસરને એક કરો અને તમારું દિલ ફરી અલ્લાહ તરફ વાળો.';

  @override
  String get prayerNotifTitleAsr => '🌤️ અસર — બપોર પછીની નમાઝ';

  @override
  String get prayerNotifBodyAsr =>
      'નમાઝનું રક્ષણ કર, કેમ કે તે તારા અને અલ્લાહ વચ્ચેનો અહદ છે. અસરનો સમય આવી ગયો છે — તેને સ્મરણ વિના પસાર થવા ન દે.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 મગરિબ — સૂર્યાસ્તની નમાઝ';

  @override
  String get prayerNotifBodyMaghrib =>
      'સૂર્ય અસ્ત થયો — આ એક એવો ક્ષણ છે જેને અહલ અલ-બૈત દુઆ માટે પવિત્ર માનતા. મગરિબની નમાઝ અદા કર અને રાત શરૂ થાય તે પહેલાં અલ્લાહ સમક્ષ દુઆ માટે હાથ ઉઠાવ.';

  @override
  String get prayerNotifTitleIsha => '🌙 ઈશા — રાત્રિની નમાઝ';

  @override
  String get prayerNotifBodyIsha =>
      'તમારો દિવસ અલ્લાહની નજીકતા સાથે પૂર્ણ કરો. ઈમામોએ ઈશા પછી સલાત અલ-લૈલ માટે પ્રોત્સાહિત કર્યું — પણ પહેલાં તમારી ઈશા પૂર્ણ કરો અને દિવસને તેના સ્મરણથી સમાપ્ત કરો.';

  @override
  String get outOfReflectionsBannerText =>
      'તમે તમારા બધા મનનોવિચાર વાપરી લીધા છે';

  @override
  String get outOfReflectionsBannerCta => 'વધુ મેળવો';

  @override
  String get dhikrPageTitle => 'ઝિક્ર';

  @override
  String get dhikrTapToCount => 'ગણવા માટે વર્તુળ પર ટૅપ કરો';

  @override
  String get dhikrResetButton => 'રીસેટ કરો';

  @override
  String get dhikrComplete => 'માશા\'અલ્લાહ';

  @override
  String get dhikrCompleteMessage =>
      'તમે અલ્લાહના 100 સ્મરણ પૂર્ણ કર્યા. તે તમારા દિલ માટે નૂર બને.';

  @override
  String get disclaimerTitle => 'આ એપના માર્ગદર્શન વિશે';

  @override
  String get disclaimerBody =>
      'Ayara કુરઆન અને અહલ અલ-બૈતની શિક્ષાઓમાં મૂળ ધરાવતું ઇસ્લામી મનન, યાદ અપાવો અને આધ્યાત્મિક સામગ્રી પ્રદાન કરે છે, જેથી તમારી વ્યક્તિગત ઈમાનની યાત્રામાં સહાય મળે. આ સામગ્રી માત્ર સામાન્ય માહિતી અને પ્રેરણાત્મક હેતુઓ માટે આપવામાં આવે છે.\n\nAyara લાયક ઇસ્લામી વિદ્વત્તાનો વિકલ્પ નથી.\nઆ એપમાં આપવામાં આવતું માર્ગદર્શન લાયક ઇસ્લામી વિદ્વાન, મરજા\' અથવા ધર્મશાસ્ત્રીય રીતે પ્રશિક્ષિત શિક્ષકનો વિકલ્પ નથી. શિયા ઇસ્લામમાં, ધાર્મિક માર્ગદર્શન જાફરી ફિક્હ પરંપરા અને જીવંત મરજા\' (અનુકરણનો સ્ત્રોત)નું અનુસરણ કરવાની પરંપરામાં આધારિત છે — એક લાયક ફકીહ, જેના નિર્ણયો વિશ્વાસીઓને ધાર્મિક જીવનમાં માર્ગદર્શન આપે છે. જો તમને ધાર્મિક હુકમો, હલાલ-હરામના મુદ્દાઓ અથવા વ્યક્તિગત ધાર્મિક ફરજો અંગે પ્રશ્નો હોય, તો કૃપા કરીને કોઈ લાયક મરજા\' અથવા તમારા સમાજના વિદ્વાનનો સંપર્ક કરો.\n\nઆ એપ ધાર્મિક હુકમો જારી કરતી નથી.\nAyara ફિક્હ અથવા વ્યક્તિગત ધાર્મિક ફરજો સંબંધિત બાબતોમાં અધિકૃત નિર્ણય આપતું નથી. અહીંની કોઈ વસ્તુને ફતવો અથવા બાધ્ય ધાર્મિક માર્ગદર્શન તરીકે ન માનવી જોઈએ.\n\nઅહલ અલ-બૈતનું કેન્દ્રસ્થાન.\nશિયા ઇસ્લામમાં, પયગંબર મુહંમદ ﷺ અને તેમનું પવિત્ર કુટુંબ — અહલ અલ-બૈત — કુરઆન પછી ઇસ્લામી સમુદાયના અધિકૃત માર્ગદર્શક છે. અહલ અલ-બૈતના બાર ઈમામો ઇસ્લામી શિક્ષણના દિવ્ય નિયુક્ત વ્યાખ્યાકાર છે. આ એપનું સામગ્રી આ પરંપરાને પ્રતિબિંબિત કરે છે અને તેને નિષ્ઠાપૂર્વક સન્માન આપવા પ્રયત્ન કરે છે.\n\nસમુદાય સંબંધિત બાબતો.\nઆ એપ તમારા ઈમાન સાથેના જોડાણને પ્રોત્સાહિત કરવાનો પ્રયત્ન કરે છે, સાથે સાથે તમારી સ્થાનિક મસ્જિદ, ઇસ્લામી કેન્દ્ર અને ધાર્મિક સમુદાયની અગત્યની ભૂમિકાનો ઊંડો સન્માન પણ રાખે છે. અમે તમને નજીકના લાયક શિક્ષકો સાથે જોડાયેલા રહેવા અને તેમની પાસેથી શીખવા પ્રોત્સાહિત કરીએ છીએ.';

  @override
  String get disclaimerClose => 'હું સમજું છું';

  @override
  String get disclaimerInfoTooltip => 'આ એપના માર્ગદર્શન વિશે';

  @override
  String get disclaimerSettingsSubtitle =>
      'માત્ર સામાન્ય માહિતી માટે. સંપૂર્ણ અસ્પષ્ટીકરણ વાંચવા માટે ટૅપ કરો.';

  @override
  String get disclaimerSectionHeader => 'માર્ગદર્શન સંબંધિત અસ્પષ્ટીકરણ';

  @override
  String get navHome => 'હોમ';

  @override
  String get navReflect => 'મનન';

  @override
  String get navDuas => 'દુઆઓ';

  @override
  String get navCalendar => 'કેલેન્ડર';

  @override
  String get dashboardToday => 'આજે';

  @override
  String get dashboardComingUp => 'આગળ આવનાર';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'દિવસો',
      one: 'દિવસ',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'ઝડપી પ્રવેશ';

  @override
  String get quickActionQibla => 'કિબલા';

  @override
  String get quickActionDhikr => 'ઝિક્ર';

  @override
  String get quickActionDailyGrace => 'માર્ગદર્શન';

  @override
  String get quickActionPrayerTimes => 'નમાઝના સમય';

  @override
  String get askAyaraTitle => 'Ayara ને પૂછો';

  @override
  String get askAyaraSubtitle =>
      'કોઈ પણ ઇસ્લામી પ્રશ્ન પૂછો અને વિચારસભર, માર્ગદર્શિત જવાબ મેળવો.';

  @override
  String get askAyaraHint => 'દા.ત. રમઝાનનું મહત્વ શું છે?';

  @override
  String get askAyaraSubmit => 'પૂછો';

  @override
  String get wisdomOfTheDayTitle => 'આજની હિકમત';

  @override
  String get calendarScreenTitle => 'ઇસ્લામી કેલેન્ડર';

  @override
  String get calendarUpcomingOccasions => 'આવનારી પ્રસંગો';

  @override
  String get calendarOccasionRemindersTitle => 'પ્રસંગ રીમાઇન્ડર્સ';

  @override
  String get calendarOccasionRemindersHint =>
      'દરેક પ્રસંગના પહેલાના સાંજે સૂચના મોકલાશે';

  @override
  String get calendarNotifPermissionDenied =>
      'સૂચના પરવાનગી નકારવામાં આવી. કૃપા કરીને તેને તમારા ઉપકરણની સેટિંગ્સમાં સક્રિય કરો.';

  @override
  String get calendarNoEvents => 'કોઈ આવનારા પ્રસંગો મળ્યા નથી.';

  @override
  String get calendarAddToPhone => 'ફોન કેલેન્ડરમાં ઉમેરો';

  @override
  String get calendarAddedToPhone => 'કેલેન્ડરમાં ઉમેરાયું';

  @override
  String get calendarCountdownToday => 'આજે';

  @override
  String get calendarCountdownTomorrow => 'કાલે';

  @override
  String calendarCountdownDays(int days) {
    return '$days દિવસમાં';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'જાન્યુ.';

  @override
  String get calendarMonthFeb => 'ફેબ્રુ.';

  @override
  String get calendarMonthMar => 'માર્ચ';

  @override
  String get calendarMonthApr => 'એપ્રિલ';

  @override
  String get calendarMonthMay => 'મે';

  @override
  String get calendarMonthJun => 'જૂન';

  @override
  String get calendarMonthJul => 'જુલાઈ';

  @override
  String get calendarMonthAug => 'ઓગસ્ટ';

  @override
  String get calendarMonthSep => 'સપ્ટે.';

  @override
  String get calendarMonthOct => 'ઓક્ટો.';

  @override
  String get calendarMonthNov => 'નવે.';

  @override
  String get calendarMonthDec => 'ડિસે.';

  @override
  String get calendarSeasonMuharramEarly => 'મુહર્રમના દિવસો — કરબલાને યાદ કરો';

  @override
  String get calendarSeasonAshura => 'આશૂરા — યા હુસૈન (અ)';

  @override
  String get calendarSeasonMuharramLate => 'મુહર્રમ — શોક અને મનનના દિવસો';

  @override
  String get calendarSeasonArbaeen => 'અરબઈન — હુસૈનના ચાલીસ દિવસ';

  @override
  String get calendarSeasonRoadToArbaeen => 'અરબઈન તરફનો રસ્તો';

  @override
  String get calendarSeasonMabath => 'માબઅથ મુબારક — વહીની ભોર';

  @override
  String get calendarSeasonMidShaban =>
      'શાબાનની મધ્ય રાત — ઈમામ અલ-મહદી (અજ) નો જન્મદિવસ';

  @override
  String get calendarSeasonRamadan => 'રમઝાન મુબારક — કુરઆનનો મહિનો';

  @override
  String get calendarSeasonGhadir => 'ઇદ અલ-ગદીર મુબારક!';

  @override
  String get hijriMonth1 => 'મુહર્રમ';

  @override
  String get hijriMonth2 => 'સફર';

  @override
  String get hijriMonth3 => 'રબી અલ-અવ્વલ';

  @override
  String get hijriMonth4 => 'રબી અલ-થાની';

  @override
  String get hijriMonth5 => 'જુમાદા અલ-અવ્વલ';

  @override
  String get hijriMonth6 => 'જુમાદા અલ-થાની';

  @override
  String get hijriMonth7 => 'રજબ';

  @override
  String get hijriMonth8 => 'શાબાન';

  @override
  String get hijriMonth9 => 'રમઝાન';

  @override
  String get hijriMonth10 => 'શવ્વાલ';

  @override
  String get hijriMonth11 => 'ઝુલ કિ\'દા';

  @override
  String get hijriMonth12 => 'ઝુલ હિજ્જા';

  @override
  String get duasScreenTitle => 'દુઆઓ અને ઝિયારત';

  @override
  String get duasSearchHint => 'દુઆ, ઝિયારત શોધો…';

  @override
  String get duasFilterAll => 'બધું';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count દુઆઓ અને ઝિયારત',
      one: '$count દુઆ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'કોઈ દુઆ મળી નથી.';

  @override
  String get duaCategoryDaily => 'દૈનિક';

  @override
  String get duaCategoryWeekly => 'સાપ્તાહિક';

  @override
  String get duaCategoryOccasions => 'પ્રસંગો';

  @override
  String get duaCategoryZiyarat => 'ઝિયારત';

  @override
  String get duaCategoryTasbih => 'તસ્બીહ';

  @override
  String get eventTypeBirth => 'જન્મ';

  @override
  String get eventTypeMartyrdom => 'શહાદત';

  @override
  String get eventTypeOccasion => 'પ્રસંગ';

  @override
  String get duaCopyTooltip => 'અનુવાદ કૉપી કરો';

  @override
  String get duaToggleTransliteration => 'ઉચ્ચારરૂપ';

  @override
  String get duaToggleTranslation => 'અનુવાદ';

  @override
  String get duaAskAiLabel => 'આ દુઆ સમજાવવા Ayara ને પૂછો';

  @override
  String get duaAskAiLockedLabel => 'Ayara ને પૂછો (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara ની સમજણીઓ માત્ર Wilaya સભ્યો માટે ઉપલબ્ધ છે. સેટિંગ્સમાં અપગ્રેડ કરો.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" વિશે Ayara ને પૂછો — જલ્દી આવી રહ્યું છે!';
  }

  @override
  String get duaCopiedToast => 'દુઆ ક્લિપબોર્ડમાં કોપી થઈ.';

  @override
  String get tasbihAllahuAkbarMeaning => 'અલ્લાહ સર્વાથી મહાન છે';

  @override
  String get tasbihAlhamdulillahMeaning => 'બધી પ્રશંસા અલ્લાહ માટે છે';

  @override
  String get tasbihSubhanallahMeaning => 'અલ્લાહ પવિત્ર છે';

  @override
  String get tasbihResetTooltip => 'રીસેટ કરો';

  @override
  String get tasbihCompleteTitle => 'તસ્બીહ પૂર્ણ થયું';

  @override
  String get tasbihCompleteMessage => 'અલ્લાહ તમારો ઝિક્ર સ્વીકારી લે.';

  @override
  String get tasbihTapHint => 'ગણવા માટે ક્યાંય પણ ટૅપ કરો';

  @override
  String get tasbihatScreenTitle => 'નમાઝ માર્ગદર્શિકા';

  @override
  String get tasbihatScreenSubtitle => 'નમાઝના તસ્બીહાત';

  @override
  String get tasbihatScreenDescription =>
      'દૈનિક નમાઝ દરમિયાન અને પછી વાંચાતા તસ્બીહોના સંપૂર્ણ માર્ગદર્શન — અહલ અલ-બૈત (અ) ની પરંપરા અનુસાર.';

  @override
  String get tasbihatArba3Title => 'તસ્બીહાત અલ-અર્બઆ';

  @override
  String get tasbihatArba3Subtitle => 'ત્રીજી અને ચોથી રકઅતમાં વાંચાય છે';

  @override
  String get tasbihatArba3Info =>
      'શિયા ફિક્હમાં, તસ્બીહાત અલ-અર્બઆ ઝુહ્ર, અસર, મગરિબ અને ઈશાની ત્રીજી અને ચોથી રકઅતમાં સુરહ ફાતિહાની જગ્યાએ વાંચાય છે. તેને એક વખત વાંચવું વાજિબ છે અને ત્રણ વખત વાંચવું મુસ્તહબ છે.';

  @override
  String get tasbihatArba3Translation =>
      'અલ્લાહ પવિત્ર છે · બધી પ્રશંસા અલ્લાહ માટે છે\nઅલ્લાહ સિવાય કોઈ ઈલાહ નથી · અલ્લાહ સર્વાથી મહાન છે';

  @override
  String get tasbihatArba3CompleteTitle => 'પાઠ પૂર્ણ થયો';

  @override
  String get tasbihatArba3CompleteMessage =>
      'અલ્લાહ તમારી નમાઝ સ્વીકાર કરે — આમીન';

  @override
  String get tasbihatArba3TapHint => 'દરેક પાઠ પછી ટૅપ કરો';

  @override
  String get tasbihatZahraSubtitle => 'દરેક નમાઝ પછી · 100 દાણા';

  @override
  String get tasbihatZahraOriginLabel => 'ઉદ્ભવ';

  @override
  String get tasbihatZahraHadith =>
      'હઝરત ફાતિમા અલ-ઝહરા (સ.અ.) એ નબી ﷺ પાસે એક સેવક માગ્યો. તેમણે કહ્યું: \"શું હું તને એથી સારું ન કહું? દરેક નમાઝ પછી 33 વખત સુભાનલ્લાહ, 33 વખત અલહમ્દુલિલ્લાહ અને 34 વખત અલ્લાહુ અકબર કહેજે. આ તારા માટે સેવક કરતાં વધુ સારું છે.\"';

  @override
  String get tasbihatZahraHadithSource => '— બિહાર અલ-અનવાર, જિલ્દ 85';

  @override
  String get tasbihatZahraOpenCounter => 'તસ્બીહ કાઉન્ટર ખોલો';

  @override
  String get tasbihatDuasTitle => 'ભલામણ કરેલી દુઆઓ';

  @override
  String get tasbihatDuasSubtitle => 'નમાઝ પૂર્ણ કર્યા પછી';

  @override
  String get tasbihatDuaAyatKursiTitle => 'આયતુલ કુરસી';

  @override
  String get tasbihatDuaAyatKursiWhen => 'દરેક ફરજીયાત નમાઝ પછી';

  @override
  String get tasbihatDuaAyatKursiSource => 'સૂરા અલ-બકરા 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'જે કોઈ દરેક ફરજીયાત નમાઝ પછી આયતુલ કુરસી વાંચે, તેના અને જન્નત વચ્ચે મૃત્યુ સિવાય કંઈ જ રહેતું નથી. ઈમામ બાકિર (અ) એ કહ્યું કે આ કુરઆનની સૌથી મહાન આયતોમાંથી એક છે.';

  @override
  String get tasbihatDuaSalawatTitle => 'સલાવાત';

  @override
  String get tasbihatDuaSalawatWhen =>
      'દરેક નમાઝ પછી · દરેક દુઆને પૂર્ણતા આપે છે';

  @override
  String get tasbihatDuaSalawatSource => 'ઈમામ અલ-સાદિક (અ) — અલ-કાફી';

  @override
  String get tasbihatDuaSalawatNote =>
      'પયગંબર ﷺ અને તેમના પવિત્ર કુટુંબ (આલે મુહંમદ) પર સલાવાત મોકલવી દરેક દુઆને પૂર્ણ કરવા માટે ભલામણ કરાયેલી છે. ઈમામ અલ-સાદિક (અ) એ કહ્યું: \"મુહંમદ અને તેમના કુટુંબ પર સલાવાત મોકલ્યા વગર કોઈ દુઆ સ્વીકાર માટે ઊંચી નથી ઉઠતી.\"';

  @override
  String get tasbihatDuaFarajTitle => 'દુઆ અલ-ફરજ';

  @override
  String get tasbihatDuaFarajWhen => 'દરેક નમાઝ પછી · આપણા સમયના ઈમામ માટે';

  @override
  String get tasbihatDuaFarajSource =>
      'ઈમામ હસન અલ-અસ્કરી (અ) દ્વારા શીખવાયેલી';

  @override
  String get tasbihatDuaFarajNote =>
      'ઇમામ અલ-મહદી (અફ) ના પુનરાગમન માટેની એક દુઆ, જે તેમના પિતા દ્વારા શીખવવામાં આવી છે. આ દુઆ ઘણી શિયા મુસ્લિમો દ્વારા પ્રાર્થના પછી જીવંત ઇમામ પ્રત્યેની ભક્તિ તરીકે વારંવાર વાંચવામાં આવે છે.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'હઝરત ફાતિમાની તસ્બીહ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'મગરિબ અને ઈશા પછી · ખાસ ભલામણ કરાયેલી';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ઈમામ અલ-બાકિર (અ) — બિહાર અલ-અનવાર';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ઈમામ અલ-બાકિર (અ) એ કહ્યું કે ઈશા પછી ઊંઘતા પહેલાં તસ્બીહ અલ-ઝહરા વાંચવી 1000 નફલ રકઅતોથી પણ શ્રેષ્ઠ છે. તેનું નૂર આકાશ સુધી પહોંચે છે.';

  @override
  String get tasbihFatimaGiftPre => 'નબી તરફથી ભેટ';

  @override
  String get tasbihFatimaGiftPost => 'દરેક નમાઝ પછી વાંચાય છે';

  @override
  String get prayerTrackerTitle => 'નમાઝ ટ્રૅકર';

  @override
  String get prayerTrackerPrayed => 'અદા થઈ';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count દિવસની સતત શ્રેણી';
  }

  @override
  String get prayerTrackerAllComplete =>
      'આજની બધી નમાઝો પૂર્ણ થઈ. અલ્લાહ સ્વીકાર કરે.';

  @override
  String get dhikrTrackerTitle => 'તસ્બીહ અલ-ઝહરા';

  @override
  String get dhikrTrackerCompletedToday => 'આજે પૂર્ણ થયું';

  @override
  String get dhikrTrackerNotDoneToday => 'આજે થયું નથી';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count દિવસની સતત શ્રેણી';
  }

  @override
  String get dhikrReminderTitle => 'તસ્બીહ રીમાઇન્ડર';

  @override
  String get dhikrReminderDescription =>
      'તમારી તસ્બીહ અલ-ઝહરા (સ.અ.) વાંચવા માટે નમ્ર દૈનિક યાદ અપાવવું.';

  @override
  String get dhikrReminderEnable => 'તસ્બીહ રીમાઇન્ડર સક્રિય કરો';

  @override
  String get dhikrReminderTimeLabel => 'રીમાઇન્ડરનો સમય';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'દૈનિક હદીસ';

  @override
  String get hadithLabelArabic => 'અરબી';

  @override
  String get hadithLabelTranslation => 'અનુવાદ';

  @override
  String get hadithBadge => 'હદીસ';

  @override
  String get hadithShare => 'આ હદીસ શેર કરો';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara દ્વારા';
  }

  @override
  String get hadithNavPrevious => 'પહેલાની';

  @override
  String get hadithNavNext => 'આગામી';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'ચૌદ અસ્મા';

  @override
  String get imamsScreenSubtitle =>
      'નબી, લેડી ફાતિમા, અને બાર ઇમામો — બાર શિયા ઇસ્લામમાં શુદ્ધ અને અખલાકી માર્ગદર્શકો';

  @override
  String get imamLabelBorn => 'જન્મ';

  @override
  String get imamLabelMartyrdom => 'શહાદત';

  @override
  String get imamLabelStatus => 'સ્થાન';

  @override
  String get imamSectionBiography => 'જીવનચરિત્ર';

  @override
  String get imamSectionFamousSaying => 'પ્રખ્યાત વાક્ય';

  @override
  String get imamRoleProphet => 'છેલ્લા પયગંબર';

  @override
  String get imamRoleInfallible => 'માસૂમ';

  @override
  String get imamOrdinal1 => '1લા ઈમામ';

  @override
  String get imamOrdinal2 => '2રા ઈમામ';

  @override
  String get imamOrdinal3 => '3રા ઈમામ';

  @override
  String get imamOrdinal4 => '4થા ઈમામ';

  @override
  String get imamOrdinal5 => '5મા ઈમામ';

  @override
  String get imamOrdinal6 => '6ઠ્ઠા ઈમામ';

  @override
  String get imamOrdinal7 => '7મા ઈમામ';

  @override
  String get imamOrdinal8 => '8મા ઈમામ';

  @override
  String get imamOrdinal9 => '9મા ઈમામ';

  @override
  String get imamOrdinal10 => '10મા ઈમામ';

  @override
  String get imamOrdinal11 => '11મા ઈમામ';

  @override
  String get imamOrdinal12 => '12મા ઈમામ';

  @override
  String get duaAudioScreenTitle => 'દુઆઓ સાંભળો';

  @override
  String get duaAudioScreenSubtitle =>
      'સાંભળવા માટે એક દુઆ પસંદ કરો. વગાડવા અથવા રોકવા માટે ટાઇલ પર ટૅપ કરો.';

  @override
  String get duaAudioComingSoonMessage =>
      'આ દુઆ માટેનું ઓડિયો આગામી અપડેટમાં ઉપલબ્ધ થશે.';

  @override
  String get duaAudioClose => 'બંધ કરો';

  @override
  String get duaAudioError =>
      'ઓડિયો લોડ થઈ શક્યું નથી. કૃપા કરીને તમારું કનેક્શન તપાસો.';

  @override
  String get duaAudioMetaTransmittedBy => 'વર્ણન કરનાર';

  @override
  String get duaAudioMetaOccasion => 'પ્રસંગ';

  @override
  String get duaAudioMetaDuration => 'સમયગાળો';

  @override
  String get quickActionDailyHadith => 'દૈનિક હદીસ';

  @override
  String get quickAction14Masumeen => 'ચૌદ અસ્મા';

  @override
  String get quickActionListenDuas => 'સાંભળો';

  @override
  String get quickActionTasbihat => 'નમાઝ માર્ગદર્શિકા';

  @override
  String get pilgrimageSectionTitle => 'પવિત્ર યાત્રા';

  @override
  String get pilgrimageSectionSubtitle =>
      'હજ અને ઉમરાહ માટે સંપૂર્ણ માર્ગદર્શિકા — મક્કામાં અલ્લાહના પવિત્ર ઘર તરફની યાત્રા';

  @override
  String get hajjCardTitle => 'હજ';

  @override
  String get hajjCardSubtitle => 'ઇસ્લામનો પાંચમો સ્તંભ';

  @override
  String get hajjCardDescription =>
      'મહાન વાર્ષિક યાત્રા — દરેક સક્ષમ મુસ્લિમ માટે જીવનમાં એક વાર ફરજિયાત';

  @override
  String get hajjScreenTitle => 'હજ માર્ગદર્શિકા';

  @override
  String get hajjScreenSubtitle => 'મહાન યાત્રા માટે પગલું-દર-પગલું માર્ગદર્શન';

  @override
  String get umrahCardTitle => 'ઉમરાહ';

  @override
  String get umrahCardSubtitle => 'નાની યાત્રા';

  @override
  String get umrahCardDescription =>
      'વર્ષના કોઈપણ સમયે કરી શકાય તેવી ઊંડો આધ્યાત્મિક પુરસ્કાર આપતી યાત્રા';

  @override
  String get umrahScreenTitle => 'ઉમરાહ માર્ગદર્શિકા';

  @override
  String get umrahScreenSubtitle =>
      'નાની યાત્રા માટે પગલું-દર-પગલું માર્ગદર્શન';

  @override
  String get pilgrimageStepsTitle => 'વિધિઓ અને પગલાં';

  @override
  String get pilgrimageImportantNotesTitle => 'મહત્વપૂર્ણ નોંધો';

  @override
  String get pilgrimageDuaTitle => 'આ પગલાં માટે દુઆ';

  @override
  String get pilgrimageJafariNoteTitle => 'જાફરી ફિક્હ નોંધ';

  @override
  String get pilgrimageComplete => '✓ પૂર્ણ';

  @override
  String get pilgrimageMarkDone => 'પૂર્ણ તરીકે માર્ક કરો';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done માંથી $total પગલાં';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes મિનિટ';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'શિયા યાત્રાળુઓ';

  @override
  String get pilgrimageShiaNoteBody =>
      'ઘણાં શિયા યાત્રિકો નબી મુહમ્મદ (સઆવ) ના મસ્જિદ અલ-નબawi અને જન્નત અલ-બાકી ખાતેના સમાધિઓ માટે ziyarat કરવા મેડિનામાં પણ મુસાફરી કરે છે. આ મુલાકાતો ઊંડા આધ્યાત્મિક મહત્વ ધરાવે છે, જો કે તે હજ્જના વિધિઓ નથી.';

  @override
  String get hajjIntro =>
      'હજ્જ ઇસ્લામનો પાંચમો સ્તંભ છે, જે દરેક મુસ્લિમ માટે જીવનમાં એકવાર ફરજિયાત છે, જે શારીરિક અને આર્થિક રીતે સક્ષમ છે. આજના મોટા ભાગના બાર શિયા યાત્રિકો માટે, આનો અર્થ છે હજ્જ અલ-તામત્તુ\', જે ધુલ હિજ્જાહના મહિને નબી ઇબ્રાહિમ (એએસ), તેમના પુત્ર ઇસ્માઇલ (એએસ), અને લેડી હાજરના પગલાંઓમાં કરવામાં આવે છે. આ માર્ગદર્શિકા વિધિઓના જાફરી આઉટલાઇનને અનુસરે છે, જ્યારે મેડિનામાં ziyarat હજ્જ પહેલા અથવા પછીની એક ખૂબ જ cherished યાત્રા રહે છે.';

  @override
  String get umrahIntro =>
      'ઉમરાહ મક્કાની નાની યાત્રા છે અને હજથી વિપરીત વર્ષના કોઈપણ સમયે કરી શકાય છે. ભલે તે ફરજિયાત નથી, પરંતુ તેમાં બહુ મોટું આધ્યાત્મિક પુરસ્કાર છે અને ખૂબ ભલામણ કરાયેલ ઈબાદત માનવામાં આવે છે. તેમાં હજ જેવી કેટલીક રીતો છે, પરંતુ તે વધુ ટૂંકી છે અને ચાર મુખ્ય વિધિઓથી બનેલી છે.';

  @override
  String get voiceInputTitle => 'વોઇસ ઇનપુટ';

  @override
  String get voiceInputMicTitle => 'માઇક્રોફોન';

  @override
  String get voiceInputMicSubtitle =>
      'ટાઇપ કરવા બદલે Ask Ayara ને તમારા ઇનપુટ માટે બોલો.';

  @override
  String get voiceInputMicDenied =>
      'માઇક્રોફોનની ઍક્સેસ નકારી દેવામાં આવી હતી.';

  @override
  String get voiceInputSpeak => 'બોલો બદલે';

  @override
  String get voiceInputListening => 'સુણવું…';

  @override
  String get voiceInputPermissionDenied =>
      'વોઇસ ઇનપુટ માટે માઇક્રોફોનની ઍક્સેસ જરૂરી છે.';
}
