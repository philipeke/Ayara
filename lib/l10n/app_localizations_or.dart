// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'ଆପଣଙ୍କର ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get languageSelectSub => 'ପରେ ସେଟିଂସ୍‌ରେ ଏହାକୁ ପରିବର୍ତ୍ତନ କରିପାରିବେ';

  @override
  String get actionContinue => 'ଆଗକୁ ବଢନ୍ତୁ';

  @override
  String get languageSuggestedHeader => 'ସୁପାରିଶିତ';

  @override
  String get languageAllHeader => 'ସମସ୍ତ ଭାଷା';

  @override
  String get languageSuggestedBadge => 'ସୁପାରିଶିତ';

  @override
  String get languageSearchHint => 'ସନ୍ଧାନ…';

  @override
  String get planBasic => 'ଷ୍ଟାଣ୍ଡାର୍ଡ';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'ଦୈନିକ ମାର୍ଗଦର୍ଶନ';

  @override
  String get categorySlot02 => 'ଇମାନ ଓ ଭରସା';

  @override
  String get categorySlot03 => 'ନମାଜ ଚିନ୍ତନ';

  @override
  String get categorySlot04 => 'ସବର ଓ ଆଶା';

  @override
  String get categorySlot05 => 'କ୍ଷମା ପ୍ରାର୍ଥନା କରନ୍ତୁ';

  @override
  String get categorySlot06 => 'ଦୟା ଓ କରୁଣା';

  @override
  String get categorySlot07 => 'ବିଶ୍ୱାସର ଶକ୍ତି';

  @override
  String get categorySlot08 => 'କୃତଜ୍ଞ ହୃଦୟ';

  @override
  String get categorySlot09 => 'ଜୀବନର ଉଦ୍ଦେଶ୍ୟ';

  @override
  String get categorySlot10 => 'ପରିବାରିକ ବନ୍ଧନ';

  @override
  String get categorySlot11 => 'ଆନ୍ତରିକ ଶାନ୍ତି';

  @override
  String get categorySlot12 => 'ପୟଗମ୍ବରଙ୍କ ଜ୍ଞାନ';

  @override
  String get categorySlot13 => 'ଭଲ ଚରିତ୍ର';

  @override
  String get categorySlot14 => 'ପ୍ରଲୋଭନକୁ ପ୍ରତିରୋଧ';

  @override
  String get categorySlot15 => 'ସନ୍ଧ୍ୟା ଜିକ୍ର';

  @override
  String get categoryCustom => 'ବ୍ୟକ୍ତିଗତ ଚିନ୍ତନ';

  @override
  String get dhikrMeaningSubhanallah => 'ଅଲ୍ଲାହ ପବିତ୍ର';

  @override
  String get dhikrMeaningAlhamdulillah => 'ସମସ୍ତ ପ୍ରଶଂସା ଅଲ୍ଲାହଙ୍କ ପାଇଁ';

  @override
  String get dhikrMeaningAllahuAkbar => 'ଅଲ୍ଲାହ ସର୍ବଶ୍ରେଷ୍ଠ';

  @override
  String get quranVerseHeartAtRest =>
      'ନିଶ୍ଚୟ, ଅଲ୍ଲାହଙ୍କ ସ୍ମରଣରେ ହୃଦୟ ଶାନ୍ତି ପାଏ।';

  @override
  String get promptHint =>
      'ଇସଲାମିକ ମାର୍ଗଦର୍ଶନ ଓ ଚିନ୍ତନ ପାଇଁ ଗୋଟିଏ ଶ୍ରେଣୀକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get currentLanguage => 'ବର୍ତ୍ତମାନର ଭାଷା';

  @override
  String get settingsLanguage => 'ଭାଷା ସେଟିଂସ୍';

  @override
  String get settingsTitle => 'ସେଟିଂସ୍';

  @override
  String get chooseLanguage => 'ଆପଣଙ୍କର ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get continueCta => 'ଆଗକୁ ବଢନ୍ତୁ';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଶବ୍ଦ',
      one: '$count ଶବ୍ଦ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ବିକଳ୍ପ';

  @override
  String get newCta => 'ନୂତନ';

  @override
  String get actionsTitle => 'ଆପଣ କ’ଣ କରିବାକୁ ଚାହୁଁଛନ୍ତି?';

  @override
  String get copy => 'କପି କରନ୍ତୁ';

  @override
  String get share => 'ସେୟାର କରନ୍ତୁ';

  @override
  String get close => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get copiedToast => 'କ୍ଲିପବୋର୍ଡକୁ କପି କରାଗଲା';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'ନୂତନ ଉତ୍ତର ସୃଷ୍ଟି କରିହେଲା ନାହିଁ';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nଆପଣ ପୁନର୍ବାର ଚେଷ୍ଟା କରିବାକୁ ଚାହୁଁଛନ୍ତି କି?';
  }

  @override
  String get cancelCta => 'ବାତିଲ୍';

  @override
  String get retryCta => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get authTitle => 'ଆପଣଙ୍କର ଖାତା ସୃଷ୍ଟି କରନ୍ତୁ';

  @override
  String get continueAsGuest => 'ଅତିଥି ଭାବେ ଆଗକୁ ବଢନ୍ତୁ';

  @override
  String get signInGoogle => 'Google ସହିତ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get signInApple => 'Apple ସହିତ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get signInEmail => 'ଇମେଲ୍ ସହିତ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get upgradeWithApple => 'Apple ସହିତ ଆଗକୁ ବଢନ୍ତୁ';

  @override
  String get mustAccept =>
      'ଆପଣଙ୍କୁ ସେବା ସର୍ତ୍ତଗୁଡ଼ିକ ମାନିବା ସହ ଗୋପନୀୟତା ନୀତିକୁ ସ୍ୱୀକାର କରିବାକୁ ପଡିବ।';

  @override
  String get termsLabel => 'ମୁଁ ସେବା ସର୍ତ୍ତଗୁଡ଼ିକୁ ମାନୁଛି';

  @override
  String get privacyLabel => 'ମୁଁ ଗୋପନୀୟତା ନୀତି ପଢ଼ିଛି';

  @override
  String get marketingOptIn => 'ମୁଁ ସମାଚାର ଓ ପ୍ରସ୍ତାବ ପାଇବାକୁ ସହମତ';

  @override
  String get openTerms => 'ସେବା ସର୍ତ୍ତ';

  @override
  String get openPrivacy => 'ଗୋପନୀୟତା ନୀତି';

  @override
  String get accountSection => 'ଖାତା';

  @override
  String get guestMode => 'ଅତିଥି ମୋଡ୍';

  @override
  String get signedIn => 'ସାଇନ୍ ଇନ୍ ହୋଇଛି';

  @override
  String get upgradeHint =>
      'ଖାତା ସୃଷ୍ଟି କରି ଆପଣଙ୍କର ଚିନ୍ତନଗୁଡ଼ିକୁ ସମସ୍ତ ଡିଭାଇସରେ ସଂରକ୍ଷଣ କରନ୍ତୁ।';

  @override
  String get upgradeWithGoogle => 'Google ସହିତ ଆଗକୁ ବଢନ୍ତୁ';

  @override
  String get signOut => 'ସାଇନ୍ ଆଉଟ୍';

  @override
  String get snackUpgraded => 'ଖାତା Google ସହିତ ଅପଗ୍ରେଡ୍ ହେଲା ✅';

  @override
  String get snackSignedIn => 'Google ସହିତ ସାଇନ୍ ଇନ୍ ହେଲା ✅';

  @override
  String get snackSignedOut => 'ସାଇନ୍ ଆଉଟ୍ ହେଲା';

  @override
  String get snackSignedInApple => 'Apple ସହିତ ସାଇନ୍ ଇନ୍ ହେଲା ✅';

  @override
  String get snackSignedInGoogle => 'Google ସହିତ ସାଇନ୍ ଇନ୍ ହେଲା ✅';

  @override
  String get snackUpgradedApple => 'ଖାତା Apple ସହିତ ଅପଗ୍ରେଡ୍ ହେଲା ✅';

  @override
  String get snackUpgradedGoogle => 'ଖାତା Google ସହିତ ଅପଗ୍ରେଡ୍ ହେଲା ✅';

  @override
  String get historyTitle => 'ପୂର୍ବବର୍ତ୍ତୀ ଚିନ୍ତନଗୁଡ଼ିକ';

  @override
  String get historyOpenCta => 'ପୂର୍ବବର୍ତ୍ତୀ ଚିନ୍ତନଗୁଡ଼ିକ';

  @override
  String get historyEmpty => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ସଂରକ୍ଷିତ ଚିନ୍ତନ ନାହିଁ।';

  @override
  String get historyDeleteTitle => 'ଚିନ୍ତନକୁ ଡିଲିଟ୍ କରିବେ?';

  @override
  String get historyDeleteBody => 'ଏହା ଚୟନିତ ଆଇଟମ୍‌କୁ ସ୍ଥାୟୀଭାବେ କାଢ଼ିଦେବ।';

  @override
  String get deleteCta => 'ଡିଲିଟ୍';

  @override
  String get historyButton => 'ପୂର୍ବବର୍ତ୍ତୀ ଚିନ୍ତନଗୁଡ଼ିକ';

  @override
  String get historyEmptyTitle => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଚିନ୍ତନ ନାହିଁ';

  @override
  String get historyEmptyBody =>
      'ପ୍ରଥମେ କିଛି ସୃଷ୍ଟି କରନ୍ତୁ — ଆପଣଙ୍କର ସଂରକ୍ଷିତ ଆଇଟମ୍‌ଗୁଡ଼ିକ ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String get historyDelete => 'ଡିଲିଟ୍';

  @override
  String get footerTitle => 'Wilaya, ଇମାନ ଓ ସବର ସହିତ';

  @override
  String get footerSubtitle => 'ଗୋଟିଏ ପ୍ରାର୍ଥନା, ଗୋଟିଏ ସମୟରେ';

  @override
  String get genericErrorSnack =>
      'କିଛି ଭୁଲ୍ ହୋଇଗଲା — ଦୟାକରି ଥୋଡ଼େ ବେଳ ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get upgradeAccountCta =>
      'ଆପଣଙ୍କର ଚିନ୍ତନଗୁଡ଼ିକୁ ସମସ୍ତ ଡିଭାଇସରେ ସଂରକ୍ଷଣ କରନ୍ତୁ – ଗୋଟିଏ ଖାତା ସୃଷ୍ଟି କରନ୍ତୁ';

  @override
  String get deleteAccount => 'ଖାତା ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get exportData => 'ମୋ ଡାଟା ଏକ୍ସପୋର୍ଟ କରନ୍ତୁ';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ଧୀରେ ଚଲନ୍ତୁ 🐯\nପରବର୍ତ୍ତୀ ଉତ୍ତର ପୂର୍ବରୁ Ayara କୁ ଥୋଡ଼ା ସମୟ ଦରକାର…';

  @override
  String get rateDailyLimit =>
      'ଏବେ ପାଇଁ ଆପଣଙ୍କର ଚିନ୍ତନଗୁଡ଼ିକ ଶେଷ ହୋଇଯାଇଛି।\nଅଧିକ ଚିନ୍ତନ ନିଅନ୍ତୁ କିମ୍ବା Wilaya କୁ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ।';

  @override
  String get rateCreditsExhausted =>
      'ଆପଣ ଆପଣଙ୍କର ସମସ୍ତ ଚିନ୍ତନ ବ୍ୟବହାର କରିସାରିଛନ୍ତି।\nଜାରି ରଖିବା ପାଇଁ ଟପ୍-ଅପ୍ କରନ୍ତୁ କିମ୍ବା Wilaya କୁ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ।';

  @override
  String get rateGraceCreditsExhausted =>
      'ଏବେ ପାଇଁ ଆପଣଙ୍କର ଚିନ୍ତନଗୁଡ଼ିକ ଶେଷ ହୋଇଯାଇଛି।\nଅଧିକ ଚିନ୍ତନ ନିଅନ୍ତୁ କିମ୍ବା Wilaya କୁ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ।';

  @override
  String get premiumDescription =>
      'Wilaya ପ୍ରିମିୟମ ବିଶେଷତା, ଭବିଷ୍ୟତର ଶ୍ରେଣୀଗୁଡ଼ିକ ଓ ଗୋଟିଏ ବିଶେଷ ବ୍ୟାଜ୍ ଖୋଲିଦିଏ।';

  @override
  String ratePlanExhausted(String plan) {
    return 'ଆପଣଙ୍କର ଚିନ୍ତନଗୁଡ଼ିକ ଏବେ ଖାଲି ଅଛି। ଯୋଜନା: $plan।';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ଆପଣଙ୍କର ଚିନ୍ତନଗୁଡ଼ିକୁ ଯାଞ୍ଚ କରାଯାଇପାରିଲା ନାହିଁ: $message';
  }

  @override
  String get rateCheckGenericError =>
      'ଆପଣଙ୍କର ଚିନ୍ତନଗୁଡ଼ିକୁ ଯାଞ୍ଚ କରିବା ବେଳେ କିଛି ଭୁଲ୍ ହୋଇଗଲା।';

  @override
  String get aiFallbackGeneric =>
      'କିଛି ଭୁଲ୍ ହୋଇଗଲା — ଦୟାକରି ଥୋଡ଼େ ବେଳ ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get limitSectionTitle => 'ଚିନ୍ତନଗୁଡ଼ିକ';

  @override
  String get limitTodayLabel => 'ବ୍ୟବହାର';

  @override
  String limitCreditsLabel(Object credits) {
    return 'ଅବଶିଷ୍ଟ ଚିନ୍ତନ: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'ଯୋଜନା: $plan';
  }

  @override
  String get limitLoadingLabel => 'ଲୋଡ୍ ହେଉଛି…';

  @override
  String get limitLoadingLabelDescription =>
      'ବ୍ୟବହାର ସଂଖ୍ୟାନ ଆଣାଯାଉଥିବା ବେଳେ reflection card ରେ ଦେଖାଯାଏ।';

  @override
  String get aiLimitTitle => 'ଚିନ୍ତନଗୁଡ଼ିକ';

  @override
  String get aiLimitSubtitle =>
      'ପ୍ରତ୍ୟେକ ଉତ୍ତର 1 ଚିନ୍ତନ ବ୍ୟବହାର କରେ। ଷ୍ଟାଣ୍ଡାର୍ଡରେ ଆରମ୍ଭିକ ଚିନ୍ତନ ଅନ୍ତର୍ଭୁକ୍ତ। Wilaya ପ୍ରିମିୟମ ଶ୍ରେଣୀଗୁଡ଼ିକୁ ଖୋଲେ ଓ ଟପ୍-ଅପ୍ ସକ୍ଷମ କରେ।';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total ଚିନ୍ତନ ବ୍ୟବହାର ହେଲା';
  }

  @override
  String get creditsSectionTitle => 'ଚିନ୍ତନଗୁଡ଼ିକ';

  @override
  String get creditsUsageLabel => 'ବ୍ୟବହାର';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'ଅବଶିଷ୍ଟ ଚିନ୍ତନ: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'ଯୋଜନା: $plan';
  }

  @override
  String get creditsLoadingLabel => 'ଲୋଡ୍ ହେଉଛି…';

  @override
  String get creditsLoadingLabelDescription =>
      'ଚିନ୍ତନ ସଂଖ୍ୟାନ ଆଣାଯାଉଥିବା ବେଳେ ଦେଖାଯାଏ।';

  @override
  String get creditsTitle => 'ଚିନ୍ତନଗୁଡ଼ିକ';

  @override
  String get creditsSubtitle =>
      'ପ୍ରତ୍ୟେକ ଉତ୍ତର 1 ଚିନ୍ତନ ବ୍ୟବହାର କରେ। ଷ୍ଟାଣ୍ଡାର୍ଡରେ ଆରମ୍ଭିକ ଚିନ୍ତନ ଅନ୍ତର୍ଭୁକ୍ତ। Wilaya ପ୍ରିମିୟମ ଶ୍ରେଣୀଗୁଡ଼ିକୁ ଖୋଲେ ଓ ଟପ୍-ଅପ୍ ସକ୍ଷମ କରେ।';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total ଚିନ୍ତନ ବ୍ୟବହାର ହେଲା';
  }

  @override
  String get settingsDeleteTitle => 'ଖାତା ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get settingsDeleteDescription =>
      'ଆପଣଙ୍କର ଖାତା ଓ ସମ୍ବନ୍ଧିତ ସମସ୍ତ ତଥ୍ୟକୁ ସ୍ଥାୟୀଭାବେ ଡିଲିଟ୍ କରନ୍ତୁ।';

  @override
  String get settingsDeleteButtonLabel => 'ମୋ ଖାତା ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get settingsDeleteDialogTitle => 'ଖାତା ଡିଲିଟ୍ କରିବେ?';

  @override
  String get settingsDeleteDialogBody =>
      'ଏହି କାର୍ଯ୍ୟ ସ୍ଥାୟୀ ଓ ପୁନଃ ପୂର୍ବବତ୍ କରାଯାଇପାରିବ ନାହିଁ।\n\nଆପଣଙ୍କର ସମସ୍ତ ଚାଟ୍, ଇତିହାସ ଓ ଖାତା ସମ୍ବନ୍ଧିତ ତଥ୍ୟ ଡିଲିଟ୍ ହୋଇଯିବ।';

  @override
  String get settingsDeleteDialogCancel => 'ବାତିଲ୍';

  @override
  String get settingsDeleteDialogConfirm => 'ଡିଲିଟ୍';

  @override
  String get settingsFreeLimitUsedTitle => 'ଆରମ୍ଭିକ ଚିନ୍ତନ ବ୍ୟବହାର ହୋଇସାରିଛି';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ଏହି ଡିଭାଇସ ପାଇଁ ଆରମ୍ଭିକ ଚିନ୍ତନ ବ୍ୟବହାର ହୋଇସାରିଛି। ଜାରି ରଖିବାକୁ Wilaya କୁ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ କିମ୍ବା ଅଧିକ ଚିନ୍ତନ କିଣନ୍ତୁ।';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'ଆରମ୍ଭିକ ଚିନ୍ତନ ବ୍ୟବହାର ହୋଇସାରିଛି';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ଏହି ଡିଭାଇସ ପାଇଁ ଆରମ୍ଭିକ ଚିନ୍ତନ ବ୍ୟବହାର ହୋଇସାରିଛି। ଜାରି ରଖିବାକୁ Wilaya କୁ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ କିମ୍ବା ଅଧିକ ଚିନ୍ତନ କିଣନ୍ତୁ।';

  @override
  String get deviceBoundError =>
      'ଏହି ଡିଭାଇସ ଆଗରୁ ଅନ୍ୟ ଗୋଟିଏ ଖାତା ସହିତ ଯୋଡ଼ାଯାଇଛି। ଦୟାକରି ମୂଳ ଖାତାରେ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ।';

  @override
  String get premiumTitle => 'Wilaya ମୋଡ୍';

  @override
  String get premiumSubtitleBasic => 'Ayara ର ପୂର୍ଣ୍ଣ ଅନୁଭବକୁ ଖୋଲନ୍ତୁ।';

  @override
  String get premiumSubtitlePremium =>
      'ଆପଣ Wilaya ରେ ଅଛନ୍ତି। ଅଧିକ ଚିନ୍ତନ ଦରକାର କି?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'ବର୍ତ୍ତମାନର ଯୋଜନା: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'ଚିନ୍ତନ: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'କ୍ରୟ ବର୍ତ୍ତମାନ ଉପଲବ୍ଧ ନାହିଁ।';

  @override
  String get premiumSignInToPurchase =>
      'ଚିନ୍ତନ କିଣିବା କିମ୍ବା Wilaya ଖୋଲିବା ପାଇଁ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ।';

  @override
  String get premiumRestorePurchases => 'କ୍ରୟ ପୁନରୁଦ୍ଧାର କରନ୍ତୁ';

  @override
  String get premiumProcessing => 'ପ୍ରକ୍ରିୟା ଚାଲିଛି…';

  @override
  String get premiumRestoreHintTitle =>
      'ଏହି ଡିଭାଇସ କିମ୍ବା ଅନ୍ୟ ଡିଭାଇସରେ ଆଗରୁ Wilaya କିମ୍ବା ଚିନ୍ତନ କିଣିଛନ୍ତି କି?';

  @override
  String get premiumRestoreHintBody =>
      'ଯଦି ସେଗୁଡ଼ିକ ଦେଖାଯାଉନାହିଁ, ତେବେ ଆପଣଙ୍କର କ୍ରୟଗୁଡ଼ିକୁ ପୁନରୁଦ୍ଧାର କରନ୍ତୁ।';

  @override
  String get premiumBuyCredits200 => '200 ଚିନ୍ତନ କିଣନ୍ତୁ';

  @override
  String get premiumBuyCredits400 => '400 ଚିନ୍ତନ କିଣନ୍ତୁ';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya ମୋଡ୍ କୁ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ';

  @override
  String get premiumTopupHint =>
      'Wilaya ସହିତ, ଯେତେବେଳେ ଆବଶ୍ୟକ ହେବ ଆପଣ ଅତିରିକ୍ତ ଚିନ୍ତନ ସହିତ ଟପ୍-ଅପ୍ କରିପାରିବେ।';

  @override
  String get premiumUpgradeCta => 'ଅପଗ୍ରେଡ୍ କରନ୍ତୁ';

  @override
  String get premiumRequiredForCategory =>
      'ଏହି ଶ୍ରେଣୀ କେବଳ Wilaya ବ୍ୟବହାରକାରୀମାନଙ୍କ ପାଇଁ ଉପଲବ୍ଧ। ସମସ୍ତ ପ୍ରିମିୟମ ସାମଗ୍ରୀ ଖୋଲିବା ପାଇଁ ସେଟିଂସ୍‌ରେ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ।';

  @override
  String get premiumBenefitsBasic =>
      'ଅତିରିକ୍ତ ଚିନ୍ତନ, ପ୍ରିମିୟମ ଶ୍ରେଣୀଗୁଡ଼ିକର ଅଭିଗମ୍ୟତା ଓ ଯେତେବେଳେ ଆପଣଙ୍କୁ ମାର୍ଗଦର୍ଶନ ଦରକାର ହେବ ସେତେବେଳେ ଜାରି ରଖିବା ପାଇଁ Wilaya ଖୋଲନ୍ତୁ।';

  @override
  String get premiumBenefitsPremium =>
      'ଆପଣ Wilaya ମୋଡ୍‌ରେ ଅଛନ୍ତି। ଯଦି ଆପଣଙ୍କର ଚିନ୍ତନ କମିଯାଉଛି, ତେବେ କିଛି ଅତିରିକ୍ତ ଚିନ୍ତନ ଯୋଡ଼ନ୍ତୁ ଓ ବିନା ବିଘ୍ନରେ ଜାରି ରଖନ୍ତୁ।';

  @override
  String get premiumButtonBecomePremium => 'Wilaya ଖୋଲନ୍ତୁ';

  @override
  String get premiumButtonTopup1000 => '1000 ଚିନ୍ତନ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get premiumBadge => 'Wilaya ସକ୍ରିୟ';

  @override
  String get premiumLoadingStore => 'ଷ୍ଟୋର୍ ଲୋଡ୍ ହେଉଛି…';

  @override
  String get premiumProductNotAvailable =>
      'ଏହି ପ୍ରୋଡକ୍ଟ ଏପର୍ଯ୍ୟନ୍ତ ଷ୍ଟୋର୍‌ରେ ଉପଲବ୍ଧ ନାହିଁ। ଦୟାକରି ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get premiumPurchaseError =>
      'କ୍ରୟ ସମୟରେ କିଛି ଭୁଲ୍ ହୋଇଗଲା। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get premiumBuyCredits100 => '100 ଚିନ୍ତନ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get premiumFeatureLocked =>
      'ଏହି ବିଶେଷତା ଅଭିଗମ୍ୟ କରିବାକୁ Wilaya ଖୋଲନ୍ତୁ।';

  @override
  String get lockedCategoriesHint =>
      'କିଛି ଶ୍ରେଣୀ କେବଳ Wilaya ସଦସ୍ୟମାନଙ୍କ ପାଇଁ ରଖାଯାଇଛି। ଆପଣଙ୍କର ଯାତ୍ରାର ପ୍ରତ୍ୟେକ ଚିନ୍ତନକୁ ଅନୁସନ୍ଧାନ କରିବା ପାଇଁ ସେଗୁଡ଼ିକୁ ଖୋଲନ୍ତୁ।';

  @override
  String get freePlanBlockedTitle => 'ଆପଣଙ୍କର ଆରମ୍ଭିକ ଚିନ୍ତନ ଶେଷ ହୋଇଯାଇଛି';

  @override
  String get freePlanBlockedBody =>
      'ଆପଣ ଷ୍ଟାଣ୍ଡାର୍ଡ ଯୋଜନାରେ ଅଛନ୍ତି ଓ ଆରମ୍ଭିକ ଚିନ୍ତନର ସୀମାକୁ ପହଞ୍ଚିଯାଇଛନ୍ତି। ଜାରି ରଖିବା ପାଇଁ — ଏବଂ ପ୍ରିମିୟମ ଶ୍ରେଣୀ ଖୋଲିବା ପାଇଁ — Wilaya କୁ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ।';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'ନିମ୍ନରେ ଥିବା Wilaya ବିକଳ୍ପଗୁଡ଼ିକୁ ଦେଖନ୍ତୁ';

  @override
  String get graceBlockedTitle => 'ଆପଣଙ୍କର ଆରମ୍ଭିକ ଚିନ୍ତନ ଶେଷ ହୋଇଯାଇଛି';

  @override
  String get graceBlockedBody =>
      'ଆପଣ ଷ୍ଟାଣ୍ଡାର୍ଡ ଯୋଜନାରେ ଅଛନ୍ତି ଓ ଆରମ୍ଭିକ ଚିନ୍ତନର ସୀମାକୁ ପହଞ୍ଚିଯାଇଛନ୍ତି। ଜାରି ରଖିବା ପାଇଁ — ଏବଂ ପ୍ରିମିୟମ ଶ୍ରେଣୀ ଖୋଲିବା ପାଇଁ — Wilaya କୁ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ।';

  @override
  String get graceBlockedCtaGoPremium =>
      'ନିମ୍ନରେ ଥିବା Wilaya ବିକଳ୍ପଗୁଡ଼ିକୁ ଦେଖନ୍ତୁ';

  @override
  String get rateGuestMustSignIn =>
      'Ayara ଓ ଆପଣଙ୍କର ଚିନ୍ତନ ବ୍ୟବହାର କରିବା ପାଇଁ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ।';

  @override
  String get guestNoCreditsTitle => 'ଅତିଥି ମୋଡ୍';

  @override
  String get guestNoCreditsBody =>
      'ଅତିଥି ଭାବେ ଆପଣ ଆପ୍‌ଟିକୁ ବ୍ରାଉଜ୍ କରିପାରିବେ, କିନ୍ତୁ ଚିନ୍ତନ ବ୍ୟବହାର କରିପାରିବେ ନାହିଁ। ପରେ ସେଟିଂସ୍‌ରେ ଲଗ୍ ଇନ୍ କରି ଚିନ୍ତନ ବ୍ୟବହାର କରନ୍ତୁ ଓ କ୍ରୟ ବିକଳ୍ପଗୁଡ଼ିକୁ ଖୋଲନ୍ତୁ।';

  @override
  String get guestDialogContinue => 'ଆଗକୁ ବଢନ୍ତୁ';

  @override
  String get guestDialogLoginInstead => 'ତାହାର ବଦଳରେ ଲଗ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get optionalLabel => 'ଇଚ୍ଛାଧୀନ';

  @override
  String get accountDeleteSuccessTitle => 'ଖାତା ଡିଲିଟ୍ ହୋଇଗଲା';

  @override
  String get accountDeleteSuccessBody =>
      'ଆପଣଙ୍କର ଖାତା ଓ ସମ୍ବନ୍ଧିତ ତଥ୍ୟ ସଫଳତାର ସହିତ ଡିଲିଟ୍ ହୋଇଯାଇଛି।';

  @override
  String get accountDeleteSuccessClose => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get accountDeleteErrorTitle => 'ଖାତା ଡିଲିଟ୍ କରିହେଲା ନାହିଁ';

  @override
  String get accountDeleteErrorClose => 'ଠିକ୍ ଅଛି';

  @override
  String get accountDeleteReauthCancelled =>
      'ପୁନଃ-ପ୍ରମାଣୀକରଣ ବାତିଲ୍ ହୋଇଗଲା। ଦୟାକରି ପୁଣି ସାଇନ୍ ଇନ୍ କରି ପୁନଃ ଡିଲିଟ୍ କରିବାକୁ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get accountDeleteReauthRequired =>
      'ଖାତା ଡିଲିଟ୍ କରିବା ପାଇଁ ନିକଟରେ ଲଗଇନ୍ କରିଥିବା ଆବଶ୍ୟକ। ଦୟାକରି ସାଇନ୍ ଆଉଟ୍ କରନ୍ତୁ, ପୁଣି ସାଇନ୍ ଇନ୍ କରନ୍ତୁ, ଏବଂ ପୁନଃ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get settingsDeletePermanentWarning =>
      'ଏହି କାର୍ଯ୍ୟ ସ୍ଥାୟୀ ଓ ପୁନଃ ପୂର୍ବବତ୍ କରାଯାଇପାରିବ ନାହିଁ। ଆପଣଙ୍କର ଖାତା ସହ ସମ୍ବନ୍ଧିତ ସମସ୍ତ ତଥ୍ୟ ଡିଲିଟ୍ ହେବ।';

  @override
  String get dailyGraceTitle => 'ଦୈନିକ ମାର୍ଗଦର୍ଶନ';

  @override
  String get dailyGraceScriptureLabel => 'ଆଜିର ଆୟାତ୍';

  @override
  String get dailyGraceSaintLabel => 'FIGURE OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'ସନ୍ଧ୍ୟା ଚିନ୍ତନ';

  @override
  String get dailyGraceCopiedToast => 'ଆୟାତ୍ କ୍ଲିପବୋର୍ଡକୁ କପି ହୋଇଗଲା';

  @override
  String get locationConsentLabel =>
      'Qibla ଦିଗ ଓ ନମାଜ ସମୟ ପାଇଁ Ayara କୁ ମୋ ଅବସ୍ଥାନ ବ୍ୟବହାର କରିବାକୁ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get locationConsentHint =>
      'ଏହା କେବଳ ଏହି ବିଶେଷତାମାନଙ୍କ ପାଇଁ ବ୍ୟବହୃତ ହୁଏ। ଆପଣଙ୍କର ଅବସ୍ଥାନ କେବେବି ସେୟାର କିମ୍ବା ସଂରକ୍ଷଣ କରାଯାଏ ନାହିଁ।';

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
  String get askPageTitle => 'Ayara କୁ ପଚାରନ୍ତୁ';

  @override
  String get askPageDescription =>
      'ଇମାନ, ନମାଜ, ଜୀବନ କିମ୍ବା ଇସଲାମିକ ଅଭ୍ୟାସ ବିଷୟରେ ଯେକୌଣସି ପ୍ରଶ୍ନ ପଚାରନ୍ତୁ ଏବଂ କୁରଆନ ଓ Ahl al-Bayt ଙ୍କ ଶିକ୍ଷା ଉପରେ ଆଧାରିତ ମାର୍ଗଦର୍ଶନ ପାଆନ୍ତୁ।';

  @override
  String get askPageInputHint => 'ଆପଣଙ୍କର ପ୍ରଶ୍ନ ଏଠାରେ ଟାଇପ୍ କରନ୍ତୁ…';

  @override
  String get askPageSubmitCta => 'ପଚାରନ୍ତୁ';

  @override
  String get askPageInputEmptyError => 'ଦୟାକରି ପ୍ରଥମେ ଗୋଟିଏ ପ୍ରଶ୍ନ ଲେଖନ୍ତୁ।';

  @override
  String get askResultYourQuestion => 'ଆପଣଙ୍କର ପ୍ରଶ୍ନ';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'ମକ୍କା ଦିଗକୁ ମୁହଁ କରି';

  @override
  String get qiblaCompassInstruction =>
      'ସୁନାର ରଙ୍ଗର ସୁଇ ଉପରକୁ ଦେଖାଉ ପର୍ଯ୍ୟନ୍ତ ଆପଣଙ୍କର ଫୋନକୁ ଘୁରାନ୍ତୁ।\nସେହି ଦିଗ Qibla (ମକ୍କା) କୁ ସୂଚିତ କରେ।';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS ସିଗ୍ନାଲ୍ ଦୁର୍ବଳ। ବାହାରକୁ ଯାଆନ୍ତୁ ଏବଂ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ ଟ୍ୟାପ୍ କରନ୍ତୁ।';

  @override
  String get qiblaRetry => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get qiblaTitle => 'Qibla ଦିଗ';

  @override
  String qiblaDistanceLabel(String km) {
    return 'ମକ୍କା ପର୍ଯ୍ୟନ୍ତ $km କିମି';
  }

  @override
  String get qiblaLocationNeededTitle => 'ଅବସ୍ଥାନ ଆବଶ୍ୟକ';

  @override
  String get qiblaLocationNeededBody =>
      'ଆପଣ ଯେଉଁଠାରେ ଥାଆନ୍ତୁନା କାହିଁକି, ସେଠାରୁ ମକ୍କାରେ ଥିବା କାବାର ଦିଗ ଗଣନା କରିବା ପାଇଁ Ayara କୁ ଅବସ୍ଥାନ ଅନୁମତି ଦିଅନ୍ତୁ।';

  @override
  String get qiblaOpenSettings => 'ସେଟିଂସ୍ ଖୋଲନ୍ତୁ';

  @override
  String get qiblaCompassLoading => 'ଆପଣଙ୍କର ଅବସ୍ଥାନ ଖୋଜାଯାଉଛି…';

  @override
  String get qiblaTowardMecca => 'ମକ୍କା ଦିଗକୁ';

  @override
  String get prayerTimesTitle => 'ନମାଜ ସମୟ';

  @override
  String get prayerTimesFajr => 'ଫଜର୍';

  @override
  String get prayerTimesDhuhr => 'ଝୁହର୍';

  @override
  String get prayerTimesAsr => 'ଆସର୍';

  @override
  String get prayerTimesMaghrib => 'ମଗରିବ୍';

  @override
  String get prayerTimesIsha => 'ଇଶା';

  @override
  String get prayerTimesLocationNeededTitle => 'ଅବସ୍ଥାନ ଆବଶ୍ୟକ';

  @override
  String get prayerTimesLocationNeededBody =>
      'ଆପଣଙ୍କ ସହର ପାଇଁ ନିଖୁଟ ନମାଜ ସମୟ ଗଣନା କରିବାକୁ Ayara କୁ ଅବସ୍ଥାନ ଅନୁମତି ଦିଅନ୍ତୁ।';

  @override
  String get prayerTimesNextLabel => 'ପରବର୍ତ୍ତୀ';

  @override
  String get prayerTimesDoneLabel => 'ସମାପ୍ତ';

  @override
  String get monthlyPrayerTimesTitle => 'ମାସିକ ନମାଜ ସମୟ';

  @override
  String get monthlyPrayerTimesViewButton => 'ସମ୍ପୂର୍ଣ୍ଣ ମାସ ଦେଖନ୍ତୁ';

  @override
  String get monthlyPrayerTimesNextMonth => 'ପରବର୍ତ୍ତୀ ମାସ';

  @override
  String get monthlyPrayerTimesDayHeader => 'ଦିନ';

  @override
  String get sharePrayerTimes => 'ନମାଜ ସମୟ ସେୟାର କରନ୍ତୁ';

  @override
  String get notificationsSectionTitle => 'ନୋଟିଫିକେସନ୍‌ଗୁଡ଼ିକ';

  @override
  String get notificationsSectionSubtitle =>
      'ନମାଜ ସ୍ମରଣିକା, କ୍ୟାଲେଣ୍ଡର ଇଭେଣ୍ଟ୍ ଓ ଅନ୍ୟାନ୍ୟ';

  @override
  String get dailyReflectionReminderTitle => 'ଦୈନିକ ଚିନ୍ତନ';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara ଖୋଲିବା ଏବଂ ଆପଣଙ୍କ ଇମାନ ସହ ଯୋଡ଼ିତ ରହିବା ପାଇଁ ଏକ ସ୍ନିଗ୍ଧ ଦୈନିକ ସ୍ମରଣିକା।';

  @override
  String get dailyReflectionReminderEnable => 'ଦୈନିକ ସ୍ମରଣିକା ସକ୍ରିୟ କରନ୍ତୁ';

  @override
  String get dailyReflectionReminderTimeLabel => 'ସ୍ମରଣିକା ସମୟ';

  @override
  String get prayerNotificationsTitle => 'ନମାଜ ସ୍ମରଣିକା';

  @override
  String get prayerNotificationsDescription =>
      'ଦିନଭରି ଯୋଡ଼ାଯାଇ ରହିବା ପାଇଁ ପ୍ରତ୍ୟେକ ନମାଜ ସମୟ ପୂର୍ବରୁ ଏକ ସ୍ନିଗ୍ଧ ସ୍ମରଣିକା ପାଆନ୍ତୁ।';

  @override
  String get prayerNotificationsEnable => 'ନମାଜ ସ୍ମରଣିକା ସକ୍ରିୟ କରନ୍ତୁ';

  @override
  String get prayerNotificationsOpenSettings => 'ନୋଟିଫିକେସନ୍ ସେଟିଂସ୍ ଖୋଲନ୍ତୁ';

  @override
  String get prayerNotificationsDenied => 'ନୋଟିଫିକେସନ୍‌ଗୁଡ଼ିକ ବନ୍ଦ ଅଛି';

  @override
  String get prayerNotificationsDeniedHint =>
      'ନମାଜ ସମୟ ସ୍ମରଣିକା ପାଇବା ପାଇଁ ସେଟିଂସ୍‌କୁ ଯାଇ Ayara ପାଇଁ ନୋଟିଫିକେସନ୍‌କୁ ଅନୁମତି ଦିଅନ୍ତୁ।';

  @override
  String get notificationsConsentLabel =>
      'ନମାଜ ସମୟ ପାଇଁ ନୋଟିଫିକେସନ୍‌କୁ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get prayerNotifTitleFajr => '🌅 ଫଜର୍ — ପ୍ରଭାତ ନମାଜ';

  @override
  String get prayerNotifBodyFajr =>
      'ଫଜର୍ ହେଉଛି Ahl al-Bayt ଙ୍କ ସକାଳର ନମାଜ। ଇମାମ ଅଲି (AS) କହିଥିଲେ: ଯେପରି ଆପଣ ନିଜର ସବୁଠାରୁ ମୂଲ୍ୟବାନ ଆମାନତକୁ ରକ୍ଷା କରନ୍ତି, ସେପରି ପ୍ରଭାତର ନମାଜକୁ ରକ୍ଷା କରନ୍ତୁ। ଉଠନ୍ତୁ, ନିଜକୁ ପବିତ୍ର କରନ୍ତୁ ଏବଂ ଅଲ୍ଲାହଙ୍କ ସମ୍ମୁଖରେ ଦଣ୍ଡାୟମାନ ହୁଅନ୍ତୁ।';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ଝୁହର୍ — ମଧ୍ୟାହ୍ନ ନମାଜ';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayt ଙ୍କ ଇମାମମାନେ ସ୍ମରଣର ପ୍ରତ୍ୟେକ ମୁହୂର୍ତ୍ତକୁ ମୂଲ୍ୟ ଦେଇଥିଲେ। ଆପଣଙ୍କର ଦିନକୁ କିଛିକ୍ଷଣ ଥାମନ୍ତୁ, ଆବଶ୍ୟକ ହେଲେ ଝୁହର୍ ସହ ଆସର୍‌କୁ ଏକତ୍ର କରନ୍ତୁ, ଏବଂ ଆପଣଙ୍କର ହୃଦୟକୁ ପୁଣି ଅଲ୍ଲାହଙ୍କ ଦିଗକୁ ଫେରାନ୍ତୁ।';

  @override
  String get prayerNotifTitleAsr => '🌤️ ଆସର୍ — ଅପରାହ୍ନ ନମାଜ';

  @override
  String get prayerNotifBodyAsr =>
      'ନମାଜକୁ ସୁରକ୍ଷା କରନ୍ତୁ, କାରଣ ଏହା ଆପଣ ଓ ଅଲ୍ଲାହଙ୍କ ମଧ୍ୟରେ ଥିବା ଚୁକ୍ତି। ଆସର୍‌ର ସମୟ ଆସିଗଲା — ସ୍ମରଣ ବିନା ଏହାକୁ ଅତିକ୍ରମ କରିବାକୁ ଦିଅନ୍ତୁ ନାହିଁ।';

  @override
  String get prayerNotifTitleMaghrib => '🌇 ମଗରିବ୍ — ସୂର୍ଯ୍ୟାସ୍ତ ନମାଜ';

  @override
  String get prayerNotifBodyMaghrib =>
      'ସୂର୍ଯ୍ୟ ଅସ୍ତ ହୋଇଗଲା — ଏହା ଏକ ଏମିତି ମୁହୂର୍ତ୍ତ ଯାହାକୁ Ahl al-Bayt ଦୁଆ ପାଇଁ ପବିତ୍ର ଭାବରେ ଧରିଥିଲେ। ମଗରିବ୍ ଆଦାୟ କରନ୍ତୁ ଓ ରାତି ଆରମ୍ଭ ହେବା ପୂର୍ବରୁ ଅଲ୍ଲାହଙ୍କ ନିକଟରେ ଦୁଆ ପାଇଁ ଆପଣଙ୍କର ହାତ ଉଠାନ୍ତୁ।';

  @override
  String get prayerNotifTitleIsha => '🌙 ଇଶା — ରାତ୍ରି ନମାଜ';

  @override
  String get prayerNotifBodyIsha =>
      'ଆପଣଙ୍କର ଦିନକୁ ଅଲ୍ଲାହଙ୍କ ସଙ୍ଗରେ ସମାପ୍ତ କରନ୍ତୁ। ଇମାମମାନେ ଇଶା ପରେ Salat al-Layl କୁ ଉତ୍ସାହିତ କରିଥିଲେ — କିନ୍ତୁ ପ୍ରଥମେ, ଆପଣଙ୍କର ଇଶା ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ ଓ ଦିନକୁ ତାଙ୍କ ସ୍ମରଣରେ ବନ୍ଦ କରନ୍ତୁ।';

  @override
  String get outOfReflectionsBannerText =>
      'ଆପଣ ଆପଣଙ୍କର ସମସ୍ତ ଚିନ୍ତନ ବ୍ୟବହାର କରିସାରିଛନ୍ତି';

  @override
  String get outOfReflectionsBannerCta => 'ଅଧିକ ପାଆନ୍ତୁ';

  @override
  String get dhikrPageTitle => 'ଜିକ୍ର';

  @override
  String get dhikrTapToCount => 'ଗଣନା କରିବାକୁ ବୃତ୍ତକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get dhikrResetButton => 'ରିସେଟ୍';

  @override
  String get dhikrComplete => 'ମାଶାଅଲ୍ଲାହ';

  @override
  String get dhikrCompleteMessage =>
      'ଆପଣ ଅଲ୍ଲାହଙ୍କ 100 ଥର ସ୍ମରଣ ସମ୍ପୂର୍ଣ୍ଣ କରିଛନ୍ତି। ଏହା ଆପଣଙ୍କର ହୃଦୟ ପାଇଁ ଆଲୋକ ହେଉ।';

  @override
  String get disclaimerTitle => 'ଏହି ଆପ୍‌ର ମାର୍ଗଦର୍ଶନ ବିଷୟରେ';

  @override
  String get disclaimerBody =>
      'Ayara କୁରଆନ ଓ Ahl al-Bayt ଙ୍କ ଶିକ୍ଷା ଉପରେ ଆଧାରିତ ଇସଲାମିକ ଚିନ୍ତନ, ସ୍ମରଣିକା ଓ ଆଧ୍ୟାତ୍ମିକ ବିଷୟବସ୍ତୁ ପ୍ରଦାନ କରେ, ଯାହା ଆପଣଙ୍କର ବ୍ୟକ୍ତିଗତ ଇମାନର ଯାତ୍ରାକୁ ସମର୍ଥନ କରେ। ଏହି ବିଷୟବସ୍ତୁ କେବଳ ସାଧାରଣ ସୂଚନା ଓ ପ୍ରେରଣାଦାୟକ ଉଦ୍ଦେଶ୍ୟ ପାଇଁ ଦିଆଯାଇଛି।\n\nAyara ଯୋଗ୍ୟ ଆଲିମମାନଙ୍କ ପରିବର୍ତ୍ତ ନୁହେଁ।\nଏହି ଆପ୍‌ରେ ଥିବା ମାର୍ଗଦର୍ଶନ, ଜ୍ଞାନୀ ଇସଲାମିକ ଆଲିମ, ମର୍ଜା\', କିମ୍ବା ଧର୍ମତତ୍ତ୍ୱରେ ପ୍ରଶିକ୍ଷିତ ଶିକ୍ଷକଙ୍କ ପରିବର୍ତ୍ତ ନୁହେଁ। ଶିଆ ଇସଲାମରେ ଧାର୍ମିକ ମାର୍ଗଦର୍ଶନ ଜାଫାରି ଫିକ୍‌ହ ଓ ଜୀବିତ ମର୍ଜା\'ଙ୍କ ଅନୁସରଣର ପରମ୍ପରାରେ ଭିତ୍ତିକୃତ — ଯେଉଁଠାରେ ଜଣେ ଯୋଗ୍ୟ ଫକିହ୍‌ଙ୍କ ନିଷ୍ପତ୍ତି ଧାର୍ମିକ ଅଭ୍ୟାସରେ ବିଶ୍ୱାସୀମାନଙ୍କୁ ମାର୍ଗଦର୍ଶନ କରେ। ଯଦି ଆପଣଙ୍କର ଧାର୍ମିକ ନିୟମ, ହାଲାଲ-ହରାମ୍ କିମ୍ବା ବ୍ୟକ୍ତିଗତ ଧାର୍ମିକ ଦାୟିତ୍ୱ ବିଷୟରେ ପ୍ରଶ୍ନ ଅଛି, ଦୟାକରି ଯୋଗ୍ୟ ମର୍ଜା\' କିମ୍ବା ଆପଣଙ୍କର ସମୁଦାୟର ଆଲିମଙ୍କୁ ପଚାରନ୍ତୁ।\n\nଏହି ଆପ୍ ଧାର୍ମିକ ଫତୱା ଜାରି କରେ ନାହିଁ।\nAyara ଫିକ୍‌ହ କିମ୍ବା ବ୍ୟକ୍ତିଗତ ଧାର୍ମିକ ଦାୟିତ୍ୱ ସମ୍ବନ୍ଧୀୟ ମାମଲାରେ ଅଧିକୃତ ନିଷ୍ପତ୍ତି ନିଏ ନାହିଁ। ଏଠାରେ କିଛିବି ଫତୱା କିମ୍ବା ବାଧ୍ୟତାମୂଳକ ଧାର୍ମିକ ନିର୍ଦ୍ଦେଶ ଭାବେ ଗ୍ରହଣ କରାଯିବା ଉଚିତ୍ ନୁହେଁ।\n\nAhl al-Bayt ଙ୍କ କେନ୍ଦ୍ରୀୟତା।\nଶିଆ ଇସଲାମରେ, ପୟଗମ୍ବର ମୁହମ୍ମଦ ﷺ ଓ ତାଙ୍କର ପବିତ୍ର ପରିବାର — Ahl al-Bayt — କୁରଆନ ପରେ ଇସଲାମିକ ସମୁଦାୟର ଅଧିକୃତ ମାର୍ଗଦର୍ଶକ। Ahl al-Bayt ଙ୍କ ବାରୋଜଣ ଇମାମ ଇସଲାମିକ ଶିକ୍ଷାର ଦୈବୀଭାବେ ନିଯୁକ୍ତ ବ୍ୟାଖ୍ୟାକାର। ଏହି ଆପ୍‌ର ବିଷୟବସ୍ତୁ ଏହି ପରମ୍ପରାକୁ ସମ୍ମାନପୂର୍ବକ ଓ ନିଷ୍ଠାର ସହିତ ପ୍ରତିଫଳିତ କରିବାକୁ ଚେଷ୍ଟା କରେ।\n\nସମୁଦାୟର ଗୁରୁତ୍ୱ।\nଏହି ଆପ୍‌ର ଉଦ୍ଦେଶ୍ୟ ହେଉଛି ଆପଣଙ୍କୁ ଇମାନ ସହିତ ଆହୁରି ଯୋଡ଼ିତ କରିବା, ସହିତେ ଆପଣଙ୍କର ସ୍ଥାନୀୟ ମସଜିଦ୍, ଇସଲାମିକ କେନ୍ଦ୍ର ଓ ଧାର୍ମିକ ସମୁଦାୟର ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ ଭୂମିକାକୁ ଗଭୀର ସମ୍ମାନ କରିବା। ଆମେ ଆପଣଙ୍କୁ ନିକଟସ୍ଥ ଯୋଗ୍ୟ ଶିକ୍ଷକମାନଙ୍କ ସହ ଯୋଡ଼ିତ ରହିବା ଏବଂ ସେମାନଙ୍କଠାରୁ ଶିଖିବାକୁ ଉତ୍ସାହିତ କରୁଛୁ।';

  @override
  String get disclaimerClose => 'ମୁଁ ବୁଝିଲି';

  @override
  String get disclaimerInfoTooltip => 'ଏହି ଆପ୍‌ର ମାର୍ଗଦର୍ଶନ ବିଷୟରେ';

  @override
  String get disclaimerSettingsSubtitle =>
      'କେବଳ ସାଧାରଣ ସୂଚନାର ଉଦ୍ଦେଶ୍ୟରେ। ପୂର୍ଣ୍ଣ disclaimer ପଢିବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ।';

  @override
  String get disclaimerSectionHeader => 'ମାର୍ଗଦର୍ଶନ disclaimer';

  @override
  String get navHome => 'ମୁଖ୍ୟପୃଷ୍ଠା';

  @override
  String get navReflect => 'ଚିନ୍ତନ';

  @override
  String get navDuas => 'ଦୁଆ';

  @override
  String get navCalendar => 'କ୍ୟାଲେଣ୍ଡର';

  @override
  String get dashboardToday => 'ଆଜି';

  @override
  String get dashboardComingUp => 'ଆଗକୁ ଆସୁଛି';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଦିନ',
      one: 'ଦିନ',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'ତୁରନ୍ତ ପ୍ରବେଶ';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'ଜିକ୍ର';

  @override
  String get quickActionDailyGrace => 'ମାର୍ଗଦର୍ଶନ';

  @override
  String get quickActionPrayerTimes => 'ନମାଜ ସମୟ';

  @override
  String get askAyaraTitle => 'Ayara କୁ ପଚାରନ୍ତୁ';

  @override
  String get askAyaraSubtitle =>
      'ଯେକୌଣସି ଇସଲାମିକ ପ୍ରଶ୍ନ ପଚାରନ୍ତୁ ଓ ଏକ ଚିନ୍ତାଶୀଳ, ମାର୍ଗଦର୍ଶିତ ଉତ୍ତର ପାଆନ୍ତୁ।';

  @override
  String get askAyaraHint => 'ଉଦା. ରମଜାନର ଗୁରୁତ୍ୱ କ’ଣ?';

  @override
  String get askAyaraSubmit => 'ପଚାରନ୍ତୁ';

  @override
  String get wisdomOfTheDayTitle => 'ଆଜିର ଜ୍ଞାନ';

  @override
  String get calendarScreenTitle => 'ଇସଲାମିକ କ୍ୟାଲେଣ୍ଡର';

  @override
  String get calendarUpcomingOccasions => 'ଆଗାମୀ ଅବସରଗୁଡ଼ିକ';

  @override
  String get calendarOccasionRemindersTitle => 'ଅବସର ସ୍ମରଣିକା';

  @override
  String get calendarOccasionRemindersHint =>
      'ପ୍ରତ୍ୟେକ ଅବସରର ପୂର୍ବଦିନ ସନ୍ଧ୍ୟାରେ ସୂଚନା ଦିଆଯିବ';

  @override
  String get calendarNotifPermissionDenied =>
      'ନୋଟିଫିକେସନ୍ ଅନୁମତି ଅସ୍ୱୀକୃତ। ଏହାକୁ ଆପଣଙ୍କର ଡିଭାଇସ ସେଟିଂସ୍‌ରେ ସକ୍ରିୟ କରନ୍ତୁ।';

  @override
  String get calendarNoEvents => 'କୌଣସି ଆଗାମୀ ଇଭେଣ୍ଟ୍ ମିଳିଲା ନାହିଁ।';

  @override
  String get calendarAddToPhone => 'ଫୋନ୍ କ୍ୟାଲେଣ୍ଡରକୁ ଯୋଡନ୍ତୁ';

  @override
  String get calendarAddedToPhone => 'କ୍ୟାଲେଣ୍ଡରକୁ ଯୋଡାଗଲା';

  @override
  String get calendarCountdownToday => 'ଆଜି';

  @override
  String get calendarCountdownTomorrow => 'ଆସନ୍ତାକାଲି';

  @override
  String calendarCountdownDays(int days) {
    return '$days ଦିନ ପରେ';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'ଜାନୁ';

  @override
  String get calendarMonthFeb => 'ଫେବ୍ରୁ';

  @override
  String get calendarMonthMar => 'ମାର୍ଚ୍ଚ';

  @override
  String get calendarMonthApr => 'ଅପ୍ରେଲ୍';

  @override
  String get calendarMonthMay => 'ମେ';

  @override
  String get calendarMonthJun => 'ଜୁନ୍';

  @override
  String get calendarMonthJul => 'ଜୁଲାଇ';

  @override
  String get calendarMonthAug => 'ଅଗଷ୍ଟ';

  @override
  String get calendarMonthSep => 'ସେପ୍ଟେ';

  @override
  String get calendarMonthOct => 'ଅକ୍ଟୋ';

  @override
  String get calendarMonthNov => 'ନଭେ';

  @override
  String get calendarMonthDec => 'ଡିସେ';

  @override
  String get calendarSeasonMuharramEarly =>
      'ମୁହର୍ରମର ଦିନଗୁଡ଼ିକ — କର୍ବଲାକୁ ସ୍ମରଣ କରନ୍ତୁ';

  @override
  String get calendarSeasonAshura => 'ଆଶୁରା — ୟା ହୁସାଇନ୍ (AS)';

  @override
  String get calendarSeasonMuharramLate => 'ମୁହର୍ରମ — ଶୋକ ଓ ଚିନ୍ତନର ଦିନଗୁଡ଼ିକ';

  @override
  String get calendarSeasonArbaeen => 'ଆରବାଇନ୍ — ହୁସାଇନଙ୍କ ଚାଳିଶି ଦିନ';

  @override
  String get calendarSeasonRoadToArbaeen => 'ଆରବାଇନ୍‌ର ପଥ';

  @override
  String get calendarSeasonMabath => 'ମାବଅଥ୍ ମୁବାରକ — ଓହୀର ପ୍ରଭାତ';

  @override
  String get calendarSeasonMidShaban =>
      'ମଧ୍ୟ ଶାବାନ — ଇମାମ ଅଲ୍-ମାହଦି (AJ) ଙ୍କ ଜନ୍ମଦିନ';

  @override
  String get calendarSeasonRamadan => 'ରମଜାନ୍ ମୁବାରକ — କୁରଆନର ମାସ';

  @override
  String get calendarSeasonGhadir => 'ଇଦ୍ ଅଲ୍-ଘାଦିର୍ ମୁବାରକ!';

  @override
  String get hijriMonth1 => 'ମୁହର୍ରମ';

  @override
  String get hijriMonth2 => 'ସଫର୍';

  @override
  String get hijriMonth3 => 'ରବିଉଲ୍-ଆଉୱାଲ୍';

  @override
  String get hijriMonth4 => 'ରବିଉଲ୍-ଥାନି';

  @override
  String get hijriMonth5 => 'ଜୁମାଦା ଅଲ୍-ଆଉୱାଲ୍';

  @override
  String get hijriMonth6 => 'ଜୁମାଦା ଅଲ୍-ଥାନି';

  @override
  String get hijriMonth7 => 'ରଜବ୍';

  @override
  String get hijriMonth8 => 'ଶାବାନ୍';

  @override
  String get hijriMonth9 => 'ରମଜାନ୍';

  @override
  String get hijriMonth10 => 'ଶାୱ୍ୱାଲ୍';

  @override
  String get hijriMonth11 => 'ଜିଲ୍କାଦ୍';

  @override
  String get hijriMonth12 => 'ଜିଲ୍ହଜ୍ଜ';

  @override
  String get duasScreenTitle => 'ଦୁଆ ଓ ଜିୟାରତ୍';

  @override
  String get duasSearchHint => 'ଦୁଆ, ଜିୟାରତ୍ ସନ୍ଧାନ କରନ୍ତୁ…';

  @override
  String get duasFilterAll => 'ସମସ୍ତ';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଦୁଆ ଓ ଜିୟାରତ୍',
      one: '$count ଦୁଆ',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'କୌଣସି ଦୁଆ ମିଳିଲା ନାହିଁ।';

  @override
  String get duaCategoryDaily => 'ଦୈନିକ';

  @override
  String get duaCategoryWeekly => 'ସାପ୍ତାହିକ';

  @override
  String get duaCategoryOccasions => 'ଅବସରଗୁଡ଼ିକ';

  @override
  String get duaCategoryZiyarat => 'ଜିୟାରତ୍';

  @override
  String get duaCategoryTasbih => 'ତସବିହ୍';

  @override
  String get eventTypeBirth => 'ଜନ୍ମ';

  @override
  String get eventTypeMartyrdom => 'ଶହାଦତ';

  @override
  String get eventTypeOccasion => 'ଅବସର';

  @override
  String get duaCopyTooltip => 'ଅନୁବାଦ କପି କରନ୍ତୁ';

  @override
  String get duaToggleTransliteration => 'ଟ୍ରାନ୍ସଲିଟରେସନ୍';

  @override
  String get duaToggleTranslation => 'ଅନୁବାଦ';

  @override
  String get duaAskAiLabel => 'ଏହି ଦୁଆକୁ ବୁଝେଇବା ପାଇଁ Ayara କୁ ପଚାରନ୍ତୁ';

  @override
  String get duaAskAiLockedLabel => 'Ayara କୁ ପଚାରନ୍ତୁ (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara ବ୍ୟାଖ୍ୟାଗୁଡ଼ିକ କେବଳ Wilaya ସଦସ୍ୟମାନଙ୍କ ପାଇଁ ଉପଲବ୍ଧ। ସେଟିଂସ୍‌ରେ ଅପଗ୍ରେଡ୍ କରନ୍ତୁ।';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" ବିଷୟରେ Ayara କୁ ପଚାରନ୍ତୁ — ଶୀଘ୍ର ଆସୁଛି!';
  }

  @override
  String get duaCopiedToast => 'ଦୁଆ କ୍ଲିପବୋର୍ଡକୁ କପି ହେଲା।';

  @override
  String get tasbihAllahuAkbarMeaning => 'ଅଲ୍ଲାହ ସର୍ବଶ୍ରେଷ୍ଠ';

  @override
  String get tasbihAlhamdulillahMeaning => 'ସମସ୍ତ ପ୍ରଶଂସା ଅଲ୍ଲାହଙ୍କ ପାଇଁ';

  @override
  String get tasbihSubhanallahMeaning => 'ଅଲ୍ଲାହ ପବିତ୍ର';

  @override
  String get tasbihResetTooltip => 'ରିସେଟ୍';

  @override
  String get tasbihCompleteTitle => 'ତସବିହ୍ ସମ୍ପୂର୍ଣ୍ଣ';

  @override
  String get tasbihCompleteMessage => 'ଅଲ୍ଲାହ ଆପଣଙ୍କର ଜିକ୍ରକୁ ସ୍ୱୀକାର କରୁନ୍।';

  @override
  String get tasbihTapHint => 'ଗଣନା କରିବାକୁ ଯେକୌଣସି ସ୍ଥାନରେ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get tasbihatScreenTitle => 'ନମାଜ ଗାଇଡ୍';

  @override
  String get tasbihatScreenSubtitle => 'ନମାଜର ତସବିହ୍‌ଗୁଡ଼ିକ';

  @override
  String get tasbihatScreenDescription =>
      'ଦୈନିକ ନମାଜ ସମୟରେ ଓ ପରେ ପଢ଼ାଯାଉଥିବା ତସବିହ୍‌ଗୁଡ଼ିକର ଗୋଟିଏ ସମ୍ପୂର୍ଣ୍ଣ ଗାଇଡ୍ — Ahl al-Bayt (a) ଙ୍କ ପରମ୍ପରା ଅନୁସାରେ।';

  @override
  String get tasbihatArba3Title => 'ତସବିହାତ୍ ଅଲ୍-ଅର୍ବାଆ';

  @override
  String get tasbihatArba3Subtitle => 'ତୃତୀୟ ଓ ଚତୁର୍ଥ ରକଆତ୍‌ରେ ପଢାଯାଏ';

  @override
  String get tasbihatArba3Info =>
      'ଶିଆ ଫିକ୍‌ହ ଅନୁସାରେ, ଝୁହର୍, ଆସର୍, ମଗରିବ୍ ଓ ଇଶାର ତୃତୀୟ ଓ ଚତୁର୍ଥ ରକଆତ୍‌ରେ Tasbihat al-Arbaʿa, ସୁରାହ୍ ଅଲ୍-ଫାତିହାର ସ୍ଥାନ ନେଇଥାଏ। ଏହାକୁ ଗୋଟେଥର ପଢ଼ିବା ୱାଜିବ୍, ଏବଂ ତିନିଥର ପଢ଼ିବା ମୁସ୍ତାହାବ୍।';

  @override
  String get tasbihatArba3Translation =>
      'ଅଲ୍ଲାହ ପବିତ୍ର · ସମସ୍ତ ପ୍ରଶଂସା ଅଲ୍ଲାହଙ୍କ ପାଇଁ\nଅଲ୍ଲାହ ଛଡ଼ା କୌଣସି ଉପାସ୍ୟ ନାହିଁ · ଅଲ୍ଲାହ ସର୍ବଶ୍ରେଷ୍ଠ';

  @override
  String get tasbihatArba3CompleteTitle => 'ପାଠ ସମ୍ପୂର୍ଣ୍ଣ';

  @override
  String get tasbihatArba3CompleteMessage => 'ଆପଣଙ୍କର ନମାଜ କବୁଲ୍ ହେଉ — ଆମୀନ୍';

  @override
  String get tasbihatArba3TapHint => 'ପ୍ରତ୍ୟେକ ପାଠ ପରେ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get tasbihatZahraSubtitle => 'ପ୍ରତ୍ୟେକ ନମାଜ ପରେ · 100 ଦାନା';

  @override
  String get tasbihatZahraOriginLabel => 'ଉତ୍ପତ୍ତି';

  @override
  String get tasbihatZahraHadith =>
      'ବିବି ଫାତିମା ଅଲ୍-ଜାହ୍ରା (sa) ପୟଗମ୍ବର ﷺ ଙ୍କୁ ଜଣେ ସେବକ ପାଇଁ ଅନୁରୋଧ କରିଥିଲେ। ସେ କହିଥିଲେ: \"ମୁଁ କଣ ତୁମକୁ ତାହାଠୁ ଭଲ କିଛି କହିବି ନାହିଁ? ପ୍ରତ୍ୟେକ ନମାଜ ପରେ 33 ଥର ସୁଭାନଲ୍ଲାହ୍, 33 ଥର ଅଲହାମ୍ଦୁଲିଲ୍ଲାହ୍ ଓ 34 ଥର ଅଲ୍ଲାହୁ ଅକବର୍ ପଢ଼। ଏହା ତୁମ ପାଇଁ ଜଣେ ସେବକଠାରୁ ଭଲ।\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'ତସବିହ୍ କାଉଣ୍ଟର୍ ଖୋଲନ୍ତୁ';

  @override
  String get tasbihatDuasTitle => 'ସୁପାରିଶିତ ଦୁଆଗୁଡ଼ିକ';

  @override
  String get tasbihatDuasSubtitle => 'ଆପଣଙ୍କର ନମାଜ ସମ୍ପୂର୍ଣ୍ଣ କରିବା ପରେ';

  @override
  String get tasbihatDuaAyatKursiTitle => 'ଆୟାତୁଲ୍ କୁର୍ସୀ';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ପ୍ରତ୍ୟେକ ଫର୍ଜ ନମାଜ ପରେ';

  @override
  String get tasbihatDuaAyatKursiSource => 'ସୁରାହ୍ ଅଲ୍-ବାକାରା 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ଯେଉଁ ବ୍ୟକ୍ତି ପ୍ରତ୍ୟେକ ଫର୍ଜ ନମାଜ ପରେ ଆୟାତୁଲ୍ କୁର୍ସୀ ପଢ଼େ, ତାଙ୍କ ଓ ଜନ୍ନତ୍‌ର ମଧ୍ୟରେ କେବଳ ମୃତ୍ୟୁ ଛଡ଼ା ଆଉ କିଛି ବାକି ରହେନାହିଁ। ଇମାମ ଅଲ୍-ବାକିର୍ (a) କହିଥିଲେ, ଏହା କୁରଆନର ସବୁଠାରୁ ମହାନ ଆୟାତମାନଙ୍କ ମଧ୍ୟରୁ ଗୋଟିଏ।';

  @override
  String get tasbihatDuaSalawatTitle => 'ସଲାୱାତ୍';

  @override
  String get tasbihatDuaSalawatWhen =>
      'ପ୍ରତ୍ୟେକ ନମାଜ ପରେ · ସମସ୍ତ ଦୁଆକୁ ସମ୍ପୂର୍ଣ୍ଣ କରେ';

  @override
  String get tasbihatDuaSalawatSource => 'ଇମାମ ଅଲ୍-ସାଦିକ୍ (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'ପୟଗମ୍ବର ﷺ ଓ ତାଙ୍କର ପବିତ୍ର ପରିବାର (Āl Muḥammad) ଉପରେ ସଲାମ୍ ପଠାଇବା ପ୍ରତ୍ୟେକ ଦୁଆକୁ ସମ୍ପୂର୍ଣ୍ଣ କରିବା ପାଇଁ ସୁପାରିଶିତ। ଇମାମ ଅଲ୍-ସାଦିକ୍ (a) କହିଥିଲେ: \"ମୁହମ୍ମଦ ଓ ତାଙ୍କର ପରିବାର ଉପରେ ସଲାୱାତ୍ ନ ପଠାଇ ପର୍ଯ୍ୟନ୍ତ ପ୍ରତ୍ୟେକ ଦୁଆ ଅଟକି ରହିଥାଏ।\"';

  @override
  String get tasbihatDuaFarajTitle => 'ଦୁଆ ଅଲ୍-ଫରଜ୍';

  @override
  String get tasbihatDuaFarajWhen => 'ପ୍ରତ୍ୟେକ ନମାଜ ପରେ · ଆମ ସମୟର ଇମାମଙ୍କ ପାଇଁ';

  @override
  String get tasbihatDuaFarajSource =>
      'ଇମାମ ଅଲ୍-ହସନ୍ ଅଲ୍-ଆସ୍କରୀ (a) ଦ୍ୱାରା ଶିଖାଯାଇଥିବା';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. It is often recited by many Shia Muslims after prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'ବିବି ଫାତିମାଙ୍କ ତସବିହ୍';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'ମଗରିବ୍ ଓ ଇଶା ପରେ · ବିଶେଷ ଭାବେ ସୁପାରିଶିତ';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'ଇମାମ ଅଲ୍-ବାକିର୍ (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'ଇମାମ ଅଲ୍-ବାକିର୍ (a) କହିଥିଲେ, ଶୋଇବା ପୂର୍ବରୁ ଇଶା ପରେ Tasbīḥ al-Zahrā ପଢ଼ିବା 1000 ରକଆତ୍ ନଫଲ୍ ନମାଜଠାରୁ ଉତ୍ତମ। ତାହାର ଆଲୋକ ଆକାଶକୁ ଉଠିଯାଏ।';

  @override
  String get tasbihFatimaGiftPre => 'ପୟଗମ୍ବରଙ୍କ ଉପହାର';

  @override
  String get tasbihFatimaGiftPost => 'ପ୍ରତ୍ୟେକ ନମାଜ ପରେ ପଢ଼ାଯାଏ';

  @override
  String get prayerTrackerTitle => 'ନମାଜ ଟ୍ରାକର୍';

  @override
  String get prayerTrackerPrayed => 'ନମାଜ ପଢାଗଲା';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ଦିନର ସ୍ଟ୍ରିକ୍';
  }

  @override
  String get prayerTrackerAllComplete =>
      'ଆଜିର ସମସ୍ତ ନମାଜ ସମ୍ପୂର୍ଣ୍ଣ ହୋଇଗଲା। ଅଲ୍ଲାହ କବୁଲ୍ କରୁନ୍।';

  @override
  String get dhikrTrackerTitle => 'ତସବିହ୍ ଅଲ୍-ଜାହ୍ରା';

  @override
  String get dhikrTrackerCompletedToday => 'ଆଜି ସମ୍ପୂର୍ଣ୍ଣ ହେଲା';

  @override
  String get dhikrTrackerNotDoneToday => 'ଆଜି କରାଯାଇନାହିଁ';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ଦିନର ସ୍ଟ୍ରିକ୍';
  }

  @override
  String get dhikrReminderTitle => 'ତସବିହ୍ ସ୍ମରଣିକା';

  @override
  String get dhikrReminderDescription =>
      'ଆପଣଙ୍କର ତସବିହ୍ ଅଲ୍-ଜାହ୍ରା (SA) ପଢିବା ପାଇଁ ଏକ କୋମଳ ଦୈନିକ ସ୍ମରଣିକା।';

  @override
  String get dhikrReminderEnable => 'ତସବିହ୍ ସ୍ମରଣିକା ସକ୍ରିୟ କରନ୍ତୁ';

  @override
  String get dhikrReminderTimeLabel => 'ସ୍ମରଣିକା ସମୟ';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'ଦୈନିକ ହାଦିସ୍';

  @override
  String get hadithLabelArabic => 'ଆରବୀ';

  @override
  String get hadithLabelTranslation => 'ଅନୁବାଦ';

  @override
  String get hadithBadge => 'ହାଦିସ୍';

  @override
  String get hadithShare => 'ଏହି ହାଦିସ୍‌କୁ ସେୟାର କରନ୍ତୁ';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara ମାଧ୍ୟମରେ';
  }

  @override
  String get hadithNavPrevious => 'ପୂର୍ବବର୍ତ୍ତୀ';

  @override
  String get hadithNavNext => 'ପରବର୍ତ୍ତୀ';

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
  String get imamLabelBorn => 'ଜନ୍ମ';

  @override
  String get imamLabelMartyrdom => 'ଶହାଦତ';

  @override
  String get imamLabelStatus => 'ସ୍ଥିତି';

  @override
  String get imamSectionBiography => 'ଜୀବନୀ';

  @override
  String get imamSectionFamousSaying => 'ପ୍ରସିଦ୍ଧ ଉକ୍ତି';

  @override
  String get imamRoleProphet => 'ଶେଷ ପୟଗମ୍ବର';

  @override
  String get imamRoleInfallible => 'ନିଷ୍ପାପ';

  @override
  String get imamOrdinal1 => 'ପ୍ରଥମ ଇମାମ';

  @override
  String get imamOrdinal2 => 'ଦ୍ୱିତୀୟ ଇମାମ';

  @override
  String get imamOrdinal3 => 'ତୃତୀୟ ଇମାମ';

  @override
  String get imamOrdinal4 => 'ଚତୁର୍ଥ ଇମାମ';

  @override
  String get imamOrdinal5 => 'ପଞ୍ଚମ ଇମାମ';

  @override
  String get imamOrdinal6 => 'ଷଷ୍ଠ ଇମାମ';

  @override
  String get imamOrdinal7 => 'ସପ୍ତମ ଇମାମ';

  @override
  String get imamOrdinal8 => 'ଅଷ୍ଟମ ଇମାମ';

  @override
  String get imamOrdinal9 => 'ନବମ ଇମାମ';

  @override
  String get imamOrdinal10 => 'ଦଶମ ଇମାମ';

  @override
  String get imamOrdinal11 => 'ଏକାଦଶ ଇମାମ';

  @override
  String get imamOrdinal12 => 'ଦ୍ୱାଦଶ ଇମାମ';

  @override
  String get duaAudioScreenTitle => 'ଦୁଆ ଶୁଣନ୍ତୁ';

  @override
  String get duaAudioScreenSubtitle =>
      'ଶୁଣିବାକୁ ଗୋଟିଏ ଦୁଆ ବାଛନ୍ତୁ। Play କିମ୍ବା pause କରିବା ପାଇଁ tile ଉପରେ ଟ୍ୟାପ୍ କରନ୍ତୁ।';

  @override
  String get duaAudioComingSoonMessage =>
      'ଏହି ଦୁଆ ପାଇଁ ଅଡିଓ ଆସନ୍ତା ଅପଡେଟ୍‌ରେ ଉପଲବ୍ଧ ହେବ।';

  @override
  String get duaAudioClose => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get duaAudioError =>
      'ଅଡିଓ ଲୋଡ୍ କରାଯାଇପାରିଲା ନାହିଁ। ଦୟାକରି ଆପଣଙ୍କର ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get duaAudioMetaTransmittedBy => 'ବର୍ଣ୍ଣନାକାରୀ';

  @override
  String get duaAudioMetaOccasion => 'ଅବସର';

  @override
  String get duaAudioMetaDuration => 'ଅବଧି';

  @override
  String get quickActionDailyHadith => 'ଦୈନିକ ହାଦିସ୍';

  @override
  String get quickAction14Masumeen => 'Fourteen Infallibles';

  @override
  String get quickActionListenDuas => 'ଶୁଣନ୍ତୁ';

  @override
  String get quickActionTasbihat => 'ନମାଜ ଗାଇଡ୍';

  @override
  String get pilgrimageSectionTitle => 'ପବିତ୍ର ଯାତ୍ରା';

  @override
  String get pilgrimageSectionSubtitle =>
      'ହଜ୍ ଓ ଉମରାହ୍ ପାଇଁ ସମ୍ପୂର୍ଣ୍ଣ ଗାଇଡ୍ — ମକ୍କାରେ ଥିବା ଅଲ୍ଲାହଙ୍କ ପବିତ୍ର ଘରକୁ ତୀର୍ଥଯାତ୍ରା';

  @override
  String get hajjCardTitle => 'ହଜ୍';

  @override
  String get hajjCardSubtitle => 'ଇସଲାମର ପଞ୍ଚମ ସ୍ତମ୍ଭ';

  @override
  String get hajjCardDescription =>
      'ବାର୍ଷିକ ମହାନ ତୀର୍ଥଯାତ୍ରା — ପ୍ରତ୍ୟେକ ସକ୍ଷମ ମୁସଲିମ୍ ପାଇଁ ଜୀବନରେ ଗୋଟେଥର ଫର୍ଜ';

  @override
  String get hajjScreenTitle => 'ହଜ୍ ଗାଇଡ୍';

  @override
  String get hajjScreenSubtitle => 'ମହାନ ତୀର୍ଥଯାତ୍ରା ପାଇଁ ପଦକ୍ରମିକ ଗାଇଡ୍';

  @override
  String get umrahCardTitle => 'ଉମରାହ୍';

  @override
  String get umrahCardSubtitle => 'ଛୋଟ ତୀର୍ଥଯାତ୍ରା';

  @override
  String get umrahCardDescription =>
      'ଏକ ଗଭୀର ଆଧ୍ୟାତ୍ମିକ ଯାତ୍ରା ଯାହା ବର୍ଷର ଯେକୌଣସି ସମୟରେ କରାଯାଇପାରେ';

  @override
  String get umrahScreenTitle => 'ଉମରାହ୍ ଗାଇଡ୍';

  @override
  String get umrahScreenSubtitle => 'ଛୋଟ ତୀର୍ଥଯାତ୍ରା ପାଇଁ ପଦକ୍ରମିକ ଗାଇଡ୍';

  @override
  String get pilgrimageStepsTitle => 'ରୀତିନୀତି ଓ ପଦକ୍ଷେପ';

  @override
  String get pilgrimageImportantNotesTitle => 'ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ ଟୀକା';

  @override
  String get pilgrimageDuaTitle => 'ଏହି ପଦକ୍ଷେପ ପାଇଁ ଦୁଆ';

  @override
  String get pilgrimageJafariNoteTitle => 'ଜାଫାରୀ ଫିକ୍ହ ଟୀକା';

  @override
  String get pilgrimageComplete => '✓ ସମ୍ପୂର୍ଣ୍ଣ';

  @override
  String get pilgrimageMarkDone => 'ପୂର୍ଣ୍ଣ ଭାବରେ ଚିହ୍ନଟ କରନ୍ତ���';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ମଧ୍ୟରୁ $total ପଦକ୍ଷେପ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes ମି���ିଟ';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ଶିଆ ତୀର୍ଥଯାତ୍ରୀମାନେ';

  @override
  String get pilgrimageShiaNoteBody =>
      'ଅନେକ ଶିଆ ଯାତ୍ରୀ ମେଦିନାକୁ ମଧ୍ୟ ଯାଆନ୍ତି, ଯାହାଦ୍ୱାରା Masjid al-Nabawi ରେ ପୟଗମ୍ବର ମୁହମ୍ମଦ (SAW)ଙ୍କ ଜିଆରତ କରିପାରନ୍ତି ଏବଂ Jannat al-Baqi ରେ ଥିବା ସମାଧିଗୁଡ଼ିକୁ ଦର୍ଶନ କରନ୍ତି। ଏହି ଭ୍ରମଣଗୁଡ଼ିକର ଗଭୀର ଆଧ୍ୟାତ୍ମିକ ମହତ୍ତ୍ୱ ଅଛି, ଯଦିଓ ସେଗୁଡ଼ିକ ସ୍ୱୟଂ ହଜ୍ଜର କୌଣସି ରୀତି ନୁହେଁ।';

  @override
  String get hajjIntro =>
      'ହଜ୍ଜ ଇସ୍ଲାମର ପଞ୍ଚମ ସ୍ତମ୍ଭ, ଏବଂ ଯେଉଁ ପ୍ରତ୍ୟେକ ମୁସଲିମ ଶାରୀରିକ ଓ ଆର୍ଥିକ ଭାବେ ସକ୍ଷମ, ସେହିଁଠାରେ ଜୀବନରେ ଗୋଟେଥର କରିବା ଆବଶ୍ୟକ। ଆଜିର ଅଧିକାଂଶ ଦ୍ୱାଦଶୀ ଶିଆ ଯାତ୍ରୀଙ୍କ ପାଇଁ ଏହାର ଅର୍ଥ ହେଉଛି Hajj al-Tamattu\', ଯାହା Dhul Hijjah ମାସରେ ପୟଗମ୍ବର Ibrahim (AS), ତାଙ୍କ ପୁତ୍ର Ismail (AS) ଏବଂ Lady Hajarଙ୍କ ପଦଚିହ୍ନ ଅନୁସରଣ କରି କରାଯାଏ। ଏହି ଗାଇଡ୍ ରୀତିଗୁଡ଼ିକର Ja\'fari ରୂପରେଖାକୁ ଅନୁସରଣ କରେ, ଯେଉଁବେଳେ ମେଦିନାରେ ଜିଆରତ ହଜ୍ଜର ପୂର୍ବରୁ କିମ୍ବା ପରେ ଗଭୀର ଭାବେ ପ୍ରିୟ ଆଧ୍ୟାତ୍ମିକ ଯାତ୍ରା ଭାବେ ରହିଥାଏ।';

  @override
  String get umrahIntro =>
      'ଉମରାହ୍ ହେଉଛି ମକ୍କାକୁ ଛୋଟ ତୀର୍ଥଯାତ୍ରା, ଏବଂ ହଜ୍‌ଠାରୁ ଭିନ୍ନ ଭାବେ, ଏହା ବର୍ଷର ଯେକୌଣସି ସମୟରେ କରାଯାଇପାରେ। ଯଦିଓ ଏହା ଫର୍ଜ ନୁହେଁ, ତଥାପି ଏହାର ଆଧ୍ୟାତ୍ମିକ ପ୍ରତିଫଳ ଅପରିମିତ ଏବଂ ଏହାକୁ ଅତ୍ୟନ୍ତ ସୁପାରିଶିତ ଇବାଦତ୍ ଭାବେ ଗଣାଯାଏ। ଏହାର କିଛି ରୀତିନୀତି ହଜ୍ ସହିତ ମିଳେ, କିନ୍ତୁ ଏହା ଛୋଟ ଏବଂ ଚାରୋଟି ମୁଖ୍ୟ ରୀତିରେ ଗଠିତ।';

  @override
  String get voiceInputTitle => 'ଶବ୍ଦ ଇନପୁଟ';

  @override
  String get voiceInputMicTitle => 'ମାଇକ୍';

  @override
  String get voiceInputMicSubtitle =>
      'ଲେଖିବାର ବଦଳରେ Ask Ayara କୁ ଆପଣଙ୍କର ଇନପୁଟ୍ କୁ କହନ୍ତୁ।';

  @override
  String get voiceInputMicDenied => 'ମାଇକ୍ ପ୍ରବେଶ ଅସ୍ୱୀକୃତ ହେଲା।';

  @override
  String get voiceInputSpeak => 'ବୋଲନ୍ତୁ';

  @override
  String get voiceInputListening => 'ଶୁଣୁଛି…';

  @override
  String get voiceInputPermissionDenied =>
      'ଶବ୍ଦ ଇନପୁଟ୍ ପାଇଁ ମାଇକ୍ ପ୍ରବେଶ ଆବଶ୍ୟକ।';
}
