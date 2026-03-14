// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'ເລືອກພາສາຂອງທ່ານ';

  @override
  String get languageSelectSub => 'ທ່ານສາມາດປ່ຽນແປງໄດ້ພາຍຫຼັງໃນການຕັ້ງຄ່າ';

  @override
  String get actionContinue => 'ດໍາເນີນຕໍ່';

  @override
  String get languageSuggestedHeader => 'ແນະນໍາ';

  @override
  String get languageAllHeader => 'ພາສາທັງໝົດ';

  @override
  String get languageSuggestedBadge => 'ແນະນໍາ';

  @override
  String get languageSearchHint => 'ຄົ້ນຫາ…';

  @override
  String get planBasic => 'ມາດຕະຖານ';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'ແນະນໍາປະຈໍາວັນ';

  @override
  String get categorySlot02 => 'ອີມານ ແລະ ຄວາມໄວ້ວາງໃຈ';

  @override
  String get categorySlot03 => 'ການໄຕ່ຕອງເລື່ອງການລະໝາດ';

  @override
  String get categorySlot04 => 'ຄວາມອົດທົນ ແລະ ຄວາມຫວັງ';

  @override
  String get categorySlot05 => 'ຂໍອະໄພ';

  @override
  String get categorySlot06 => 'ຄວາມເມດຕາ ແລະ ຄວາມສົງສານ';

  @override
  String get categorySlot07 => 'ພະລັງຂອງສັດທາ';

  @override
  String get categorySlot08 => 'ຫົວໃຈທີ່ກະຕັນຍູ';

  @override
  String get categorySlot09 => 'ຈຸດປະສົງຂອງຊີວິດ';

  @override
  String get categorySlot10 => 'ຄວາມຜູກພັນໃນຄອບຄົວ';

  @override
  String get categorySlot11 => 'ຄວາມສະຫງົບພາຍໃນ';

  @override
  String get categorySlot12 => 'ປັນຍາຂອງສາດສະດາ';

  @override
  String get categorySlot13 => 'ອຸປນິໄສທີ່ດີ';

  @override
  String get categorySlot14 => 'ຕ້ານທານສິ່ງຢົວະຍວນ';

  @override
  String get categorySlot15 => 'ຊິກຣ໌ຕອນແລງ';

  @override
  String get categoryCustom => 'ການໄຕ່ຕອງສ່ວນຕົວ';

  @override
  String get dhikrMeaningSubhanallah => 'ສະຫຼະເກຍດແດ່ອັລລາຫ໌';

  @override
  String get dhikrMeaningAlhamdulillah => 'ການສັນລະເສີນທັງໝົດເປັນຂອງອັລລາຫ໌';

  @override
  String get dhikrMeaningAllahuAkbar => 'ອັລລາຫ໌ຍິ່ງໃຫຍ່ທີ່ສຸດ';

  @override
  String get quranVerseHeartAtRest =>
      'ແທ້ຈິງແລ້ວ ຫົວໃຈຈະພົບຄວາມສະຫງົບດ້ວຍການລະນຶກເຖິງອັລລາຫ໌.';

  @override
  String get promptHint =>
      'ແຕະເລືອກຫົວຂໍ້ເພື່ອຮັບແນະນໍາ ແລະ ການໄຕ່ຕອງທາງອິສລາມ';

  @override
  String get currentLanguage => 'ພາສາປັດຈຸບັນ';

  @override
  String get settingsLanguage => 'ການຕັ້ງຄ່າພາສາ';

  @override
  String get settingsTitle => 'ການຕັ້ງຄ່າ';

  @override
  String get chooseLanguage => 'ເລືອກພາສາຂອງທ່ານ';

  @override
  String get continueCta => 'ດໍາເນີນຕໍ່';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ຄໍາ',
      one: '$count ຄໍາ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ຕົວເລືອກ';

  @override
  String get newCta => 'ໃໝ່';

  @override
  String get actionsTitle => 'ທ່ານຢາກເຮັດຫຍັງ?';

  @override
  String get copy => 'ຄັດລອກ';

  @override
  String get share => 'ແບ່ງປັນ';

  @override
  String get close => 'ປິດ';

  @override
  String get copiedToast => 'ຄັດລອກໄປຍັງຄລິບບອດແລ້ວ';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'ບໍ່ສາມາດສ້າງຄໍາຕອບໃໝ່ໄດ້';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nທ່ານຕ້ອງການລອງອີກຄັ້ງບໍ?';
  }

  @override
  String get cancelCta => 'ຍົກເລີກ';

  @override
  String get retryCta => 'ລອງອີກຄັ້ງ';

  @override
  String get authTitle => 'ສ້າງບັນຊີຂອງທ່ານ';

  @override
  String get continueAsGuest => 'ດໍາເນີນຕໍ່ໃນຖານະແຂກ';

  @override
  String get signInGoogle => 'ເຂົ້າລະບົບດ້ວຍ Google';

  @override
  String get signInApple => 'ເຂົ້າລະບົບດ້ວຍ Apple';

  @override
  String get signInEmail => 'ເຂົ້າລະບົບດ້ວຍອີເມວ';

  @override
  String get upgradeWithApple => 'ດໍາເນີນຕໍ່ດ້ວຍ Apple';

  @override
  String get mustAccept =>
      'ທ່ານຕ້ອງຍອມຮັບເງື່ອນໄຂການໃຊ້ບໍລິການ ແລະ ຮັບຮູ້ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ.';

  @override
  String get termsLabel => 'ຂ້ອຍຍອມຮັບເງື່ອນໄຂການໃຊ້ບໍລິການ';

  @override
  String get privacyLabel => 'ຂ້ອຍໄດ້ອ່ານນະໂຍບາຍຄວາມເປັນສ່ວນຕົວແລ້ວ';

  @override
  String get marketingOptIn => 'ຂ້ອຍຍິນຍອມຮັບຂ່າວ ແລະ ຂໍ້ສະເໜີ';

  @override
  String get openTerms => 'ເງື່ອນໄຂການໃຊ້ບໍລິການ';

  @override
  String get openPrivacy => 'ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ';

  @override
  String get accountSection => 'ບັນຊີ';

  @override
  String get guestMode => 'ໂໝດແຂກ';

  @override
  String get signedIn => 'ເຂົ້າລະບົບແລ້ວ';

  @override
  String get upgradeHint =>
      'ບັນທຶກການໄຕ່ຕອງຂອງທ່ານໃນຫຼາຍອຸປະກອນດ້ວຍການສ້າງບັນຊີ.';

  @override
  String get upgradeWithGoogle => 'ດໍາເນີນຕໍ່ດ້ວຍ Google';

  @override
  String get signOut => 'ອອກຈາກລະບົບ';

  @override
  String get snackUpgraded => 'ອັບເກຣດບັນຊີດ້ວຍ Google ✅';

  @override
  String get snackSignedIn => 'ເຂົ້າລະບົບດ້ວຍ Google ✅';

  @override
  String get snackSignedOut => 'ອອກຈາກລະບົບແລ້ວ';

  @override
  String get snackSignedInApple => 'ເຂົ້າລະບົບດ້ວຍ Apple ✅';

  @override
  String get snackSignedInGoogle => 'ເຂົ້າລະບົບດ້ວຍ Google ✅';

  @override
  String get snackUpgradedApple => 'ອັບເກຣດບັນຊີດ້ວຍ Apple ✅';

  @override
  String get snackUpgradedGoogle => 'ອັບເກຣດບັນຊີດ້ວຍ Google ✅';

  @override
  String get historyTitle => 'ການໄຕ່ຕອງກ່ອນໜ້າ';

  @override
  String get historyOpenCta => 'ການໄຕ່ຕອງກ່ອນໜ້າ';

  @override
  String get historyEmpty => 'ຍັງບໍ່ມີການໄຕ່ຕອງທີ່ບັນທຶກໄວ້.';

  @override
  String get historyDeleteTitle => 'ລົບການໄຕ່ຕອງນີ້ບໍ?';

  @override
  String get historyDeleteBody => 'ການກະທໍານີ້ຈະລຶບລາຍການທີ່ເລືອກໄວ້ຢ່າງຖາວອນ.';

  @override
  String get deleteCta => 'ລົບ';

  @override
  String get historyButton => 'ການໄຕ່ຕອງກ່ອນໜ້າ';

  @override
  String get historyEmptyTitle => 'ຍັງບໍ່ມີການໄຕ່ຕອງ';

  @override
  String get historyEmptyBody =>
      'ສ້າງບາງຢ່າງກ່ອນ — ລາຍການທີ່ທ່ານບັນທຶກຈະປາກົດຢູ່ນີ້.';

  @override
  String get historyDelete => 'ລົບ';

  @override
  String get footerTitle => 'ກັບ Wilaya, Iman ແລະ Sabr';

  @override
  String get footerSubtitle => 'ຄໍາອະທິຖານທີລະຄັ້ງ';

  @override
  String get genericErrorSnack =>
      'ມີບາງຢ່າງຜິດພາດ — ກະລຸນາລອງອີກຄັ້ງໃນອີກສັກພັກ.';

  @override
  String get upgradeAccountCta =>
      'ບັນທຶກການໄຕ່ຕອງຂອງທ່ານໃນຫຼາຍອຸປະກອນ – ສ້າງບັນຊີ';

  @override
  String get deleteAccount => 'ລົບບັນຊີ';

  @override
  String get exportData => 'ສົ່ງອອກຂໍ້ມູນຂອງຂ້ອຍ';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ຄ່ອຍໆ ນິດໜຶ່ງ 🐯\nAyara ຕ້ອງການເວລາເລັກນ້ອຍກ່ອນຄັ້ງຕໍ່ໄປ…';

  @override
  String get rateDailyLimit =>
      'ຕອນນີ້ການໄຕ່ຕອງຂອງທ່ານໝົດແລ້ວ.\nຮັບການໄຕ່ຕອງເພີ່ມ ຫຼື ອັບເກຣດເປັນ Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'ທ່ານໄດ້ໃຊ້ການໄຕ່ຕອງທັງໝົດແລ້ວ.\nເພີ່ມເຄຣດິດ ຫຼື ອັບເກຣດເປັນ Wilaya ເພື່ອດໍາເນີນຕໍ່.';

  @override
  String get rateGraceCreditsExhausted =>
      'ຕອນນີ້ການໄຕ່ຕອງຂອງທ່ານໝົດແລ້ວ.\nຮັບການໄຕ່ຕອງເພີ່ມ ຫຼື ອັບເກຣດເປັນ Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya ເປີດໃຊ້ຄຸນສົມບັດພຣີມຽມ, ຫົວຂໍ້ໃນອະນາຄົດ, ແລະ ປ້າຍພິເສດ.';

  @override
  String ratePlanExhausted(String plan) {
    return 'ການໄຕ່ຕອງຂອງທ່ານໝົດແລ້ວໃນຕອນນີ້. ແຜນ: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ບໍ່ສາມາດກວດສອບການໄຕ່ຕອງຂອງທ່ານໄດ້: $message';
  }

  @override
  String get rateCheckGenericError =>
      'ມີບາງຢ່າງຜິດພາດໃນຂະນະກວດສອບການໄຕ່ຕອງຂອງທ່ານ.';

  @override
  String get aiFallbackGeneric =>
      'ມີບາງຢ່າງຜິດພາດ — ກະລຸນາລອງອີກຄັ້ງໃນອີກສັກພັກ.';

  @override
  String get limitSectionTitle => 'ການໄຕ່ຕອງ';

  @override
  String get limitTodayLabel => 'ການໃຊ້ງານ';

  @override
  String limitCreditsLabel(Object credits) {
    return 'ການໄຕ່ຕອງທີ່ເຫຼືອ: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'ແຜນ: $plan';
  }

  @override
  String get limitLoadingLabel => 'ກໍາລັງໂຫຼດ…';

  @override
  String get limitLoadingLabelDescription =>
      'ສະແດງໃນກາດການໄຕ່ຕອງ ໃນຂະນະທີ່ກໍາລັງດຶງສະຖິຕິການໃຊ້ງານ.';

  @override
  String get aiLimitTitle => 'ການໄຕ່ຕອງ';

  @override
  String get aiLimitSubtitle =>
      'ຄໍາຕອບແຕ່ລະອັນໃຊ້ 1 ການໄຕ່ຕອງ. Standard ລວມເອົາການໄຕ່ຕອງເລີ່ມຕົ້ນ. Wilaya ເປີດໃຊ້ໝວດພຣີມຽມ ແລະ ອະນຸຍາດໃຫ້ເພີ່ມຄະແນນ.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return 'ໃຊ້ໄປແລ້ວ $used / $total ການໄຕ່ຕອງ';
  }

  @override
  String get creditsSectionTitle => 'ການໄຕ່ຕອງ';

  @override
  String get creditsUsageLabel => 'ການໃຊ້ງານ';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'ການໄຕ່ຕອງທີ່ເຫຼືອ: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'ແຜນ: $plan';
  }

  @override
  String get creditsLoadingLabel => 'ກໍາລັງໂຫຼດ…';

  @override
  String get creditsLoadingLabelDescription =>
      'ສະແດງໃນຂະນະທີ່ກໍາລັງດຶງສະຖິຕິການໄຕ່ຕອງ.';

  @override
  String get creditsTitle => 'ການໄຕ່ຕອງ';

  @override
  String get creditsSubtitle =>
      'ຄໍາຕອບແຕ່ລະອັນໃຊ້ 1 ການໄຕ່ຕອງ. Standard ລວມເອົາການໄຕ່ຕອງເລີ່ມຕົ້ນ. Wilaya ເປີດໃຊ້ໝວດພຣີມຽມ ແລະ ອະນຸຍາດໃຫ້ເພີ່ມຄະແນນ.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return 'ໃຊ້ໄປແລ້ວ $used / $total ການໄຕ່ຕອງ';
  }

  @override
  String get settingsDeleteTitle => 'ລົບບັນຊີ';

  @override
  String get settingsDeleteDescription =>
      'ລົບບັນຊີຂອງທ່ານ ແລະ ຂໍ້ມູນທັງໝົດທີ່ກ່ຽວຂ້ອງຢ່າງຖາວອນ.';

  @override
  String get settingsDeleteButtonLabel => 'ລົບບັນຊີຂອງຂ້ອຍ';

  @override
  String get settingsDeleteDialogTitle => 'ລົບບັນຊີບໍ?';

  @override
  String get settingsDeleteDialogBody =>
      'ການກະທໍານີ້ເປັນການຖາວອນ ແລະ ບໍ່ສາມາດຍົກເລີກໄດ້.\n\nການສົນທະນາ, ປະຫວັດ ແລະ ຂໍ້ມູນບັນຊີຂອງທ່ານຈະຖືກລົບທັງໝົດ.';

  @override
  String get settingsDeleteDialogCancel => 'ຍົກເລີກ';

  @override
  String get settingsDeleteDialogConfirm => 'ລົບ';

  @override
  String get settingsFreeLimitUsedTitle => 'ໄດ້ໃຊ້ການໄຕ່ຕອງເລີ່ມຕົ້ນແລ້ວ';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ການໄຕ່ຕອງເລີ່ມຕົ້ນສໍາລັບອຸປະກອນນີ້ໄດ້ຖືກໃຊ້ໄປແລ້ວ. ອັບເກຣດເປັນ Wilaya ຫຼື ຊື້ການໄຕ່ຕອງເພີ່ມເພື່ອດໍາເນີນຕໍ່.';

  @override
  String get settingsStarterCreditsUsedTitle => 'ໄດ້ໃຊ້ການໄຕ່ຕອງເລີ່ມຕົ້ນແລ້ວ';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ການໄຕ່ຕອງເລີ່ມຕົ້ນສໍາລັບອຸປະກອນນີ້ໄດ້ຖືກໃຊ້ໄປແລ້ວ. ອັບເກຣດເປັນ Wilaya ຫຼື ຊື້ການໄຕ່ຕອງເພີ່ມເພື່ອດໍາເນີນຕໍ່.';

  @override
  String get deviceBoundError =>
      'ອຸປະກອນນີ້ໄດ້ເຊື່ອມກັບບັນຊີອື່ນແລ້ວ. ກະລຸນາເຂົ້າລະບົບດ້ວຍບັນຊີຕົ້ນສະບັບ.';

  @override
  String get premiumTitle => 'ໂໝດ Wilaya';

  @override
  String get premiumSubtitleBasic => 'ເປີດໃຊ້ປະສົບການ Ayara ແບບເຕັມຮູບແບບ.';

  @override
  String get premiumSubtitlePremium =>
      'ທ່ານຢູ່ໃນ Wilaya ແລ້ວ. ຕ້ອງການການໄຕ່ຕອງເພີ່ມບໍ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'ແຜນປັດຈຸບັນ: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'ການໄຕ່ຕອງ: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'ການຊື້ບໍ່ພ້ອມໃຊ້ໃນຂະນະນີ້.';

  @override
  String get premiumSignInToPurchase =>
      'ເຂົ້າລະບົບເພື່ອຊື້ການໄຕ່ຕອງ ຫຼື ເປີດໃຊ້ Wilaya.';

  @override
  String get premiumRestorePurchases => 'ກູ້ຄືນການຊື້';

  @override
  String get premiumProcessing => 'ກໍາລັງປະມວນຜົນ…';

  @override
  String get premiumRestoreHintTitle =>
      'ເຄີຍຊື້ Wilaya ຫຼື ການໄຕ່ຕອງໃນອຸປະກອນນີ້ ຫຼື ອຸປະກອນອື່ນແລ້ວບໍ?';

  @override
  String get premiumRestoreHintBody => 'ກູ້ຄືນການຊື້ຂອງທ່ານ ຖ້າພວກມັນບໍ່ປາກົດ.';

  @override
  String get premiumBuyCredits200 => 'ຊື້ການໄຕ່ຕອງ 200 ຄັ້ງ';

  @override
  String get premiumBuyCredits400 => 'ຊື້ການໄຕ່ຕອງ 400 ຄັ້ງ';

  @override
  String get premiumBecomePremiumOneTime => 'ອັບເກຣດເປັນໂໝດ Wilaya';

  @override
  String get premiumTopupHint =>
      'ດ້ວຍ Wilaya, ທ່ານສາມາດເພີ່ມການໄຕ່ຕອງເພີ່ມເມື່ອໃດກໍໄດ້ທີ່ທ່ານຕ້ອງການ.';

  @override
  String get premiumUpgradeCta => 'ອັບເກຣດ';

  @override
  String get premiumRequiredForCategory =>
      'ໝວດນີ້ມີໃຫ້ສະເພາະຜູ້ໃຊ້ Wilaya ເທົ່ານັ້ນ. ອັບເກຣດໃນການຕັ້ງຄ່າເພື່ອເປີດໃຊ້ເນື້ອຫາພຣີມຽມທັງໝົດ.';

  @override
  String get premiumBenefitsBasic =>
      'ເປີດໃຊ້ Wilaya ເພື່ອຮັບການໄຕ່ຕອງເພີ່ມ, ເຂົ້າເຖິງໝວດພຣີມຽມ, ແລະ ດໍາເນີນຕໍ່ໄດ້ເມື່ອໃດກໍຕາມທີ່ທ່ານຕ້ອງການການແນະນໍາ.';

  @override
  String get premiumBenefitsPremium =>
      'ທ່ານຢູ່ໃນໂໝດ Wilaya ແລ້ວ. ຖ້າການໄຕ່ຕອງໃກ້ໝົດ, ເພີ່ມອີກ ແລະ ດໍາເນີນຕໍ່ໂດຍບໍ່ມີການຂັດຈັງຫວະ.';

  @override
  String get premiumButtonBecomePremium => 'ເປີດໃຊ້ Wilaya';

  @override
  String get premiumButtonTopup1000 => 'ເພີ່ມການໄຕ່ຕອງ 1000 ຄັ້ງ';

  @override
  String get premiumBadge => 'Wilaya ກໍາລັງໃຊ້ງານ';

  @override
  String get premiumLoadingStore => 'ກໍາລັງໂຫຼດຮ້ານ…';

  @override
  String get premiumProductNotAvailable =>
      'ສິນຄ້ານີ້ຍັງບໍ່ພ້ອມໃຊ້ໃນຮ້ານ. ກະລຸນາລອງອີກຄັ້ງພາຍຫຼັງ.';

  @override
  String get premiumPurchaseError =>
      'ມີບາງຢ່າງຜິດພາດໃນການຊື້. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get premiumBuyCredits100 => 'ເພີ່ມການໄຕ່ຕອງ 100 ຄັ້ງ';

  @override
  String get premiumFeatureLocked =>
      'ເປີດໃຊ້ Wilaya ເພື່ອເຂົ້າເຖິງຄຸນສົມບັດນີ້.';

  @override
  String get lockedCategoriesHint =>
      'ບາງໝວດສະຫງວນໄວ້ສໍາລັບສະມາຊິກ Wilaya. ເປີດໃຊ້ພວກມັນເພື່ອສໍາຫຼວດການໄຕ່ຕອງທຸກຢ່າງໃນການເດີນທາງຂອງທ່ານ.';

  @override
  String get freePlanBlockedTitle => 'ທ່ານໄດ້ໃຊ້ການໄຕ່ຕອງເລີ່ມຕົ້ນໝົດແລ້ວ';

  @override
  String get freePlanBlockedBody =>
      'ທ່ານຢູ່ໃນແຜນ Standard ທີ່ມີການໄຕ່ຕອງເລີ່ມຕົ້ນ ແລະ ທ່ານໄດ້ຮອດຂີດຈໍາກັດແລ້ວ. ເພື່ອດໍາເນີນຕໍ່ — ແລະ ເປີດໃຊ້ໝວດພຣີມຽມ — ກະລຸນາອັບເກຣດເປັນ Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'ເບິ່ງຕົວເລືອກ Wilaya ຂ້າງລຸ່ມ';

  @override
  String get graceBlockedTitle => 'ທ່ານໄດ້ໃຊ້ການໄຕ່ຕອງເລີ່ມຕົ້ນໝົດແລ້ວ';

  @override
  String get graceBlockedBody =>
      'ທ່ານຢູ່ໃນແຜນ Standard ທີ່ມີການໄຕ່ຕອງເລີ່ມຕົ້ນ ແລະ ທ່ານໄດ້ຮອດຂີດຈໍາກັດແລ້ວ. ເພື່ອດໍາເນີນຕໍ່ — ແລະ ເປີດໃຊ້ໝວດພຣີມຽມ — ກະລຸນາອັບເກຣດເປັນ Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'ເບິ່ງຕົວເລືອກ Wilaya ຂ້າງລຸ່ມ';

  @override
  String get rateGuestMustSignIn =>
      'ເຂົ້າລະບົບເພື່ອໃຊ້ Ayara ແລະ ການໄຕ່ຕອງຂອງທ່ານ.';

  @override
  String get guestNoCreditsTitle => 'ໂໝດແຂກ';

  @override
  String get guestNoCreditsBody =>
      'ໃນຖານະແຂກ ທ່ານສາມາດເບິ່ງແອັບໄດ້ ແຕ່ບໍ່ສາມາດໃຊ້ການໄຕ່ຕອງໄດ້. ເຂົ້າລະບົບໃນພາຍຫຼັງຜ່ານການຕັ້ງຄ່າເພື່ອໃຊ້ການໄຕ່ຕອງ ແລະ ເປີດໃຊ້ການຊື້.';

  @override
  String get guestDialogContinue => 'ດໍາເນີນຕໍ່';

  @override
  String get guestDialogLoginInstead => 'ເຂົ້າລະບົບແທນ';

  @override
  String get optionalLabel => 'ທາງເລືອກ';

  @override
  String get accountDeleteSuccessTitle => 'ລົບບັນຊີແລ້ວ';

  @override
  String get accountDeleteSuccessBody =>
      'ບັນຊີຂອງທ່ານ ແລະ ຂໍ້ມູນທີ່ກ່ຽວຂ້ອງຖືກລົບສໍາເລັດແລ້ວ.';

  @override
  String get accountDeleteSuccessClose => 'ປິດ';

  @override
  String get accountDeleteErrorTitle => 'ບໍ່ສາມາດລົບບັນຊີໄດ້';

  @override
  String get accountDeleteErrorClose => 'ຕົກລົງ';

  @override
  String get accountDeleteReauthCancelled =>
      'ການຢືນຢັນຕົນຕົນໃໝ່ຖືກຍົກເລີກ. ກະລຸນາເຂົ້າລະບົບອີກຄັ້ງແລ້ວລອງລົບໃໝ່.';

  @override
  String get accountDeleteReauthRequired =>
      'ການລົບບັນຊີຕ້ອງການການເຂົ້າລະບົບຫຼ້າສຸດ. ກະລຸນາອອກຈາກລະບົບ, ເຂົ້າລະບົບໃໝ່ ແລະ ລອງອີກຄັ້ງ.';

  @override
  String get settingsDeletePermanentWarning =>
      'ການກະທໍານີ້ເປັນການຖາວອນ ແລະ ບໍ່ສາມາດຖອນຄືນໄດ້. ຂໍ້ມູນທັງໝົດທີ່ກ່ຽວຂ້ອງກັບບັນຊີຂອງທ່ານຈະຖືກລົບ.';

  @override
  String get dailyGraceTitle => 'ແນະນໍາປະຈໍາວັນ';

  @override
  String get dailyGraceScriptureLabel => 'ອາຍະຮ໌ປະຈໍາວັນ';

  @override
  String get dailyGraceSaintLabel => 'ນັກວິຊາການປະຈໍາອາທິດ';

  @override
  String get dailyGraceReflectionLabel => 'ການໄຕ່ຕອງຕອນແລງ';

  @override
  String get dailyGraceCopiedToast => 'ຄັດລອກອາຍະຮ໌ໄປຍັງຄລິບບອດແລ້ວ';

  @override
  String get locationConsentLabel =>
      'ອະນຸຍາດໃຫ້ Ayara ໃຊ້ຕໍາແໜ່ງຂອງຂ້ອຍສໍາລັບທິດ Qibla ແລະ ເວລາລະໝາດ';

  @override
  String get locationConsentHint =>
      'ໃຊ້ສໍາລັບຄຸນສົມບັດເຫຼົ່ານີ້ເທົ່ານັ້ນ. ຕໍາແໜ່ງຂອງທ່ານຈະບໍ່ຖືກແບ່ງປັນຫຼືຈັດເກັບ.';

  @override
  String get askPageTitle => 'ຖາມ Ayara';

  @override
  String get askPageDescription =>
      'ຖາມຫຍັງກໍໄດ້ກ່ຽວກັບສັດທາ, ການລະໝາດ, ຊີວິດ, ຫຼື ການປະຕິບັດທາງອິສລາມ ແລະ ຮັບແນະນໍາທີ່ອີງໃສ່ Qur\'an ແລະ ຄໍາສອນຂອງ Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'ພິມຄໍາຖາມຂອງທ່ານທີ່ນີ້…';

  @override
  String get askPageSubmitCta => 'ຖາມ';

  @override
  String get askPageInputEmptyError => 'ກະລຸນາຂຽນຄໍາຖາມກ່ອນ.';

  @override
  String get askResultYourQuestion => 'ຄໍາຖາມຂອງທ່ານ';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'ຫັນໄປຫາ Makkah';

  @override
  String get qiblaCompassInstruction =>
      'ໝຸນໂທລະສັບຂອງທ່ານຈົນກວ່າເຂັມສີຄໍາຈະຊີ້ຂຶ້ນເທິງ.\nທິດນັ້ນຄື Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'ສັນຍານ GPS ອ່ອນ. ອອກໄປຂ້າງນອກ ແລະ ແຕະ ລອງອີກຄັ້ງ.';

  @override
  String get qiblaRetry => 'ລອງອີກຄັ້ງ';

  @override
  String get qiblaTitle => 'ທິດທາງ Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km ຫາ Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'ຕ້ອງການຕໍາແໜ່ງ';

  @override
  String get qiblaLocationNeededBody =>
      'ອະນຸຍາດເຂົ້າເຖິງຕໍາແໜ່ງເພື່ອໃຫ້ Ayara ຄໍານວນທິດທາງໄປຫາ Kaaba ໃນ Makkah ຈາກບ່ອນທີ່ທ່ານຢູ່.';

  @override
  String get qiblaOpenSettings => 'ເປີດການຕັ້ງຄ່າ';

  @override
  String get qiblaCompassLoading => 'ກໍາລັງຊອກຫາຕໍາແໜ່ງຂອງທ່ານ…';

  @override
  String get qiblaTowardMecca => 'ໄປທາງ Makkah';

  @override
  String get prayerTimesTitle => 'ເວລາລະໝາດ';

  @override
  String get prayerTimesFajr => 'Fajr';

  @override
  String get prayerTimesDhuhr => 'Dhuhr';

  @override
  String get prayerTimesAsr => 'Asr';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Isha';

  @override
  String get prayerTimesLocationNeededTitle => 'ຕ້ອງການຕໍາແໜ່ງ';

  @override
  String get prayerTimesLocationNeededBody =>
      'ອະນຸຍາດເຂົ້າເຖິງຕໍາແໜ່ງເພື່ອໃຫ້ Ayara ຄໍານວນເວລາລະໝາດທີ່ແມ່ນຍໍາສໍາລັບເມືອງຂອງທ່ານ.';

  @override
  String get prayerTimesNextLabel => 'ຕໍ່ໄປ';

  @override
  String get prayerTimesDoneLabel => 'ສໍາເລັດ';

  @override
  String get monthlyPrayerTimesTitle => 'ເວລາລະໝາດລາຍເດືອນ';

  @override
  String get monthlyPrayerTimesViewButton => 'ເບິ່ງທັງເດືອນ';

  @override
  String get monthlyPrayerTimesNextMonth => 'ເດືອນໜ້າ';

  @override
  String get monthlyPrayerTimesDayHeader => 'ວັນ';

  @override
  String get sharePrayerTimes => 'ແບ່ງປັນເວລາລະໝາດ';

  @override
  String get notificationsSectionTitle => 'ການແຈ້ງເຕືອນ';

  @override
  String get notificationsSectionSubtitle =>
      'ເຕືອນການລະໝາດ, ເຫດການໃນປະຕິທິນ ແລະ ອື່ນໆ';

  @override
  String get dailyReflectionReminderTitle => 'ການໄຕ່ຕອງປະຈໍາວັນ';

  @override
  String get dailyReflectionReminderDescription =>
      'ການເຕືອນທີ່ອ່ອນໂຍນໃນແຕ່ລະວັນເພື່ອເປີດ Ayara ແລະ ເຊື່ອມຕໍ່ກັບສັດທາຂອງທ່ານ.';

  @override
  String get dailyReflectionReminderEnable => 'ເປີດໃຊ້ການເຕືອນປະຈໍາວັນ';

  @override
  String get dailyReflectionReminderTimeLabel => 'ເວລາເຕືອນ';

  @override
  String get prayerNotificationsTitle => 'ເຕືອນການລະໝາດ';

  @override
  String get prayerNotificationsDescription =>
      'ຮັບການເຕືອນຢ່າງອ່ອນໂຍນກ່ອນເວລາລະໝາດແຕ່ລະຄັ້ງ ເພື່ອຊ່ວຍໃຫ້ທ່ານຄົງຄວາມເຊື່ອມໂຍງຕະຫຼອດມື້.';

  @override
  String get prayerNotificationsEnable => 'ເປີດໃຊ້ການເຕືອນການລະໝາດ';

  @override
  String get prayerNotificationsOpenSettings => 'ເປີດການຕັ້ງຄ່າການແຈ້ງເຕືອນ';

  @override
  String get prayerNotificationsDenied => 'ການແຈ້ງເຕືອນຖືກປິດ';

  @override
  String get prayerNotificationsDeniedHint =>
      'ໄປທີ່ການຕັ້ງຄ່າ ແລະ ອະນຸຍາດການແຈ້ງເຕືອນສໍາລັບ Ayara ເພື່ອຮັບການເຕືອນເວລາລະໝາດ.';

  @override
  String get notificationsConsentLabel => 'ອະນຸຍາດການແຈ້ງເຕືອນສໍາລັບເວລາລະໝາດ';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — ການລະໝາດຕອນເຊົ້າ';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ແມ່ນການລະໝາດຂອງຕອນເຊົ້າຕາມວິຖີຂອງ Ahl al-Bayt. Imam Ali (AS) ໄດ້ກ່າວວ່າ: ຈົ່ງຮັກສາການລະໝາດຕອນເຊົ້າເໝືອນກັບທີ່ທ່ານຮັກສາສິ່ງທີ່ມີຄ່າທີ່ສຸດຂອງທ່ານ. ຕື່ນຂຶ້ນ, ຊໍາລະຕົນເອງ ແລະ ຢືນຕໍ່ໜ້າອັລລາຫ໌.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — ການລະໝາດຕອນທ່ຽງ';

  @override
  String get prayerNotifBodyDhuhr =>
      'ອິມາມຂອງ Ahl al-Bayt ໃຫ້ຄຸນຄ່າກັບທຸກຊ່ວງເວລາຂອງການລະນຶກເຖິງອັລລາຫ໌. ຢຸດພັກຈາກວັນຂອງທ່ານສັກຄູ່, ລວມ Dhuhr ກັບ Asr ຖ້າຈໍາເປັນ, ແລະ ຫັນຫົວໃຈກັບໄປຫາອັລລາຫ໌.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — ການລະໝາດຕອນບ່າຍ';

  @override
  String get prayerNotifBodyAsr =>
      'ຈົ່ງຮັກສາການລະໝາດ ເພາະມັນເປັນຂໍ້ຕົກລົງລະຫວ່າງທ່ານກັບອັລລາຫ໌. ເວລາ Asr ມາຮອດແລ້ວ — ຢ່າປ່ອຍໃຫ້ມັນຜ່ານໄປໂດຍບໍ່ມີການລະນຶກ.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — ການລະໝາດຍາມຕາເວັນຕົກ';

  @override
  String get prayerNotifBodyMaghrib =>
      'ຕາເວັນຕົກແລ້ວ — ຊ່ວງເວລາທີ່ Ahl al-Bayt ຖືວ່າສັກສິດສໍາລັບການດູອາ. ຈົ່ງປະຕິບັດ Maghrib ແລະ ຍົກມືຂອງທ່ານຂຶ້ນຫາອັລລາຫ໌ດ້ວຍການຂໍພອນກ່ອນທີ່ກາງຄືນຈະເລີ່ມຕົ້ນ.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — ການລະໝາດຕອນຄ່ໍາ';

  @override
  String get prayerNotifBodyIsha =>
      'ຈົ່ງຈົບວັນຂອງທ່ານພ້ອມກັບອັລລາຫ໌. ອິມາມໄດ້ສົ່ງເສີມ Salat al-Layl ຫຼັງຈາກ Isha — ແຕ່ກ່ອນອື່ນ ໃຫ້ສໍາເລັດ Isha ຂອງທ່ານ ແລະ ປິດວັນດ້ວຍການລະນຶກເຖິງພຣະອົງ.';

  @override
  String get outOfReflectionsBannerText => 'ທ່ານໄດ້ໃຊ້ການໄຕ່ຕອງທັງໝົດແລ້ວ';

  @override
  String get outOfReflectionsBannerCta => 'ຮັບເພີ່ມ';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'ແຕະວົງມົນເພື່ອນັບ';

  @override
  String get dhikrResetButton => 'ຣີເຊັດ';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'ທ່ານໄດ້ສໍາເລັດການລະນຶກເຖິງອັລລາຫ໌ 100 ຄັ້ງແລ້ວ. ຂໍໃຫ້ສິ່ງນີ້ເປັນແສງສະຫວ່າງໃຫ້ແກ່ຫົວໃຈຂອງທ່ານ.';

  @override
  String get disclaimerTitle => 'ກ່ຽວກັບແນະນໍາໃນແອັບນີ້';

  @override
  String get disclaimerBody =>
      'Ayara ມອບການໄຕ່ຕອງທາງອິສລາມ, ການເຕືອນ, ແລະ ເນື້ອຫາທາງຈິດວິນຍານ ເພື່ອສະໜັບສະໜູນການເດີນທາງທາງສັດທາຂອງທ່ານ ໂດຍຢຶດໂຍງກັບ Qur\'an ແລະ ຄໍາສອນຂອງ Ahl al-Bayt. ເນື້ອຫານີ້ຖືກສະເໜີເພື່ອຈຸດປະສົງທົ່ວໄປດ້ານຂໍ້ມູນ ແລະ ການດົນໃຈເທົ່ານັ້ນ.\n\nAyara ບໍ່ແທນທີ່ນັກວິຊາການທີ່ມີຄຸນວຸດທິ.\nແນະນໍາໃນແອັບນີ້ບໍ່ແມ່ນສິ່ງທີ່ຈະທົດແທນນັກວິຊາການອິສລາມ, marja\', ຫຼື ຄູສອນທາງເທວະວິທະຍາທີ່ຜ່ານການຝຶກອົບຮົມ. ໃນອິສລາມນິກາຍຊີອະ, ການແນະນໍາທາງສາສະໜາມີຮາກຖານຢູ່ໃນໂຮງຮຽນນິຕິສາດ Ja\'fari (fiqh) ແລະ ປະເພນີການຕິດຕາມ Marja\' ທີ່ຍັງມີຊີວິດຢູ່ (ແຫຼ່ງການລອກຕາມ) — ນັກນິຕິສາດທີ່ມີຄຸນວຸດທິ ຜູ້ທີ່ຄໍາຕັດສິນຊ່ວຍນໍາພາຜູ້ສັດທາໃນການປະຕິບັດທາງສາສະໜາ. ຖ້າທ່ານມີຄໍາຖາມກ່ຽວກັບຄໍາຕັດສິນທາງສາສະໜາ, halal ແລະ haram, ຫຼື ພັນທະທາງສາສະໜາສ່ວນບຸກຄົນ, ກະລຸນາຂໍຄໍາແນະນໍາຈາກ Marja\' ທີ່ມີຄຸນວຸດທິ ຫຼື ນັກວິຊາການໃນຊຸມຊົນຂອງທ່ານ.\n\nແອັບນີ້ບໍ່ອອກຄໍາຕັດສິນທາງສາສະໜາ.\nAyara ບໍ່ຕັດສິນຢ່າງມີອໍານາດໃນເລື່ອງ fiqh ຫຼື ພັນທະທາງສາສະໜາສ່ວນບຸກຄົນ. ບໍ່ຄວນມອງສິ່ງໃດໆທີ່ຢູ່ນີ້ເປັນ fatwa ຫຼື ຄໍາແນະນໍາທາງສາສະໜາທີ່ຜູກມັດ.\n\nຄວາມສໍາຄັນກາງຂອງ Ahl al-Bayt.\nໃນອິສລາມນິກາຍຊີອະ, ທ່ານນະບີ Muhammad ﷺ ແລະ ຄອບຄົວຜູ້ບໍລິສຸດຂອງພຣະອົງ — Ahl al-Bayt — ແມ່ນຜູ້ນໍາທີ່ມີອໍານາດຂອງຊຸມຊົນອິສລາມພາຍຫຼັງ Qur\'an. ອິມາມທັງສິບສອງແຫ່ງ Ahl al-Bayt ແມ່ນຜູ້ຕີຄວາມຄໍາສອນຂອງອິສລາມທີ່ຖືກແຕ່ງຕັ້ງໂດຍພຣະເຈົ້າ. ເນື້ອຫາໃນແອັບນີ້ສະທ້ອນປະເພນີນັ້ນ ແລະ ພະຍາຍາມເຄົາລົບມັນຢ່າງຊື່ສັດ.\n\nບົດບາດຂອງຊຸມຊົນ.\nແອັບນີ້ມີເປົ້າໝາຍສົ່ງເສີມການມີສ່ວນຮ່ວມຂອງທ່ານກັບສັດທາ ໃນຂະນະທີ່ໃຫ້ຄວາມເຄົາລົບຢ່າງເລິກເຊິ່ງຕໍ່ບົດບາດທີ່ສໍາຄັນຂອງມັດສະຍິດທ້ອງຖິ່ນ, ສູນອິສລາມ ແລະ ຊຸມຊົນສາສະໜາຂອງທ່ານ. ພວກເຮົາສົ່ງເສີມໃຫ້ທ່ານຮັກສາຄວາມເຊື່ອມໂຍງ ແລະ ຮຽນຮູ້ຈາກຄູຜູ້ສອນທີ່ມີຄຸນວຸດທິຢູ່ໃກ້ທ່ານ.';

  @override
  String get disclaimerClose => 'ຂ້ອຍເຂົ້າໃຈແລ້ວ';

  @override
  String get disclaimerInfoTooltip => 'ກ່ຽວກັບແນະນໍາໃນແອັບນີ້';

  @override
  String get disclaimerSettingsSubtitle =>
      'ສໍາລັບຈຸດປະສົງດ້ານຂໍ້ມູນທົ່ວໄປເທົ່ານັ້ນ. ແຕະເພື່ອອ່ານຄໍາຊີ້ແຈງເຕັມ.';

  @override
  String get disclaimerSectionHeader => 'ຄໍາຊີ້ແຈງກ່ຽວກັບແນະນໍາ';

  @override
  String get navHome => 'ໜ້າຫຼັກ';

  @override
  String get navReflect => 'ໄຕ່ຕອງ';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'ປະຕິທິນ';

  @override
  String get dashboardToday => 'ມື້ນີ້';

  @override
  String get dashboardComingUp => 'ກໍາລັງຈະມາເຖິງ';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ມື້',
      one: 'ມື້',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'ເຂົ້າເຖິງໄດ້ໄວ';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'ແນະນໍາ';

  @override
  String get quickActionPrayerTimes => 'ເວລາລະໝາດ';

  @override
  String get askAyaraTitle => 'ຖາມ Ayara';

  @override
  String get askAyaraSubtitle =>
      'ຖາມຄໍາຖາມທາງອິສລາມອັນໃດກໍໄດ້ ແລະ ຮັບຄໍາຕອບທີ່ເຕັມໄປດ້ວຍການໄຕ່ຕອງ ແລະ ການຊີ້ນໍາ.';

  @override
  String get askAyaraHint => 'ຕົວຢ່າງ: ຄວາມສໍາຄັນຂອງ Ramadan ແມ່ນຫຍັງ?';

  @override
  String get askAyaraSubmit => 'ຖາມ';

  @override
  String get wisdomOfTheDayTitle => 'ປັນຍາປະຈໍາວັນ';

  @override
  String get calendarScreenTitle => 'ປະຕິທິນອິສລາມ';

  @override
  String get calendarUpcomingOccasions => 'ໂອກາດທີ່ກໍາລັງຈະມາ';

  @override
  String get calendarOccasionRemindersTitle => 'ການເຕືອນໂອກາດພິເສດ';

  @override
  String get calendarOccasionRemindersHint => 'ແຈ້ງເຕືອນໃນຕອນແລງກ່ອນແຕ່ລະໂອກາດ';

  @override
  String get calendarNotifPermissionDenied =>
      'ບໍ່ໄດ້ຮັບອະນຸຍາດໃຫ້ແຈ້ງເຕືອນ. ເປີດໃຊ້ມັນໃນການຕັ້ງຄ່າຂອງອຸປະກອນ.';

  @override
  String get calendarNoEvents => 'ບໍ່ພົບເຫດການທີ່ກໍາລັງຈະມາເຖິງ.';

  @override
  String get calendarAddToPhone => 'ເພີ່ມເຂົ້າໃນປະຕິທິນໂທລະສັບ';

  @override
  String get calendarAddedToPhone => 'ເພີ່ມເຂົ້າໃນປະຕິທິນ';

  @override
  String get calendarCountdownToday => 'ມື້ນີ້';

  @override
  String get calendarCountdownTomorrow => 'ມື້ອື່ນ';

  @override
  String calendarCountdownDays(int days) {
    return 'ໃນອີກ $days ມື້';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'ມ.ກ.';

  @override
  String get calendarMonthFeb => 'ກ.ພ.';

  @override
  String get calendarMonthMar => 'ມີ.ນ.';

  @override
  String get calendarMonthApr => 'ເມ.ສ.';

  @override
  String get calendarMonthMay => 'ພ.ພ.';

  @override
  String get calendarMonthJun => 'ມິ.ຖ.';

  @override
  String get calendarMonthJul => 'ກ.ລ.';

  @override
  String get calendarMonthAug => 'ສ.ຫ.';

  @override
  String get calendarMonthSep => 'ກ.ຍ.';

  @override
  String get calendarMonthOct => 'ຕ.ລ.';

  @override
  String get calendarMonthNov => 'ພ.ຈ.';

  @override
  String get calendarMonthDec => 'ທ.ວ.';

  @override
  String get calendarSeasonMuharramEarly =>
      'ວັນຕົ້ນຂອງ Muharram — ຈົ່ງລະນຶກເຖິງ Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — ວັນແຫ່ງຄວາມໂສກເສົ້າ ແລະ ການໄຕ່ຕອງ';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — 40 ມື້ຂອງ Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'ເສັ້ນທາງສູ່ Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — ອະລຸນແຫ່ງການປະທານວະຫີ';

  @override
  String get calendarSeasonMidShaban =>
      'ກາງ Sha\'ban — ວັນເກີດຂອງ Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ເດືອນແຫ່ງ Qur\'an';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak!';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi\' al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi\' al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Awwal';

  @override
  String get hijriMonth6 => 'Jumada al-Thani';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Sha\'ban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Dua ແລະ Ziyarat';

  @override
  String get duasSearchHint => 'ຄົ້ນຫາ dua, ziyarat…';

  @override
  String get duasFilterAll => 'ທັງໝົດ';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua ແລະ ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'ບໍ່ພົບ dua ໃດໆ.';

  @override
  String get duaCategoryDaily => 'ປະຈໍາວັນ';

  @override
  String get duaCategoryWeekly => 'ປະຈໍາອາທິດ';

  @override
  String get duaCategoryOccasions => 'ໂອກາດພິເສດ';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'ການເກີດ';

  @override
  String get eventTypeMartyrdom => 'ການເປັນຊະຮີດ';

  @override
  String get eventTypeOccasion => 'ໂອກາດ';

  @override
  String get duaCopyTooltip => 'ຄັດລອກຄໍາແປ';

  @override
  String get duaToggleTransliteration => 'ການຖອດສຽງ';

  @override
  String get duaToggleTranslation => 'ຄໍາແປ';

  @override
  String get duaAskAiLabel => 'ຂໍໃຫ້ Ayara ອະທິບາຍ dua ນີ້';

  @override
  String get duaAskAiLockedLabel => 'ຖາມ Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'ຄໍາອະທິບາຍຈາກ Ayara ມີໃຫ້ສໍາລັບສະມາຊິກ Wilaya. ອັບເກຣດໃນການຕັ້ງຄ່າ.';

  @override
  String duaAiComingSoon(String name) {
    return 'ຖາມ Ayara ກ່ຽວກັບ \"$name\" — ກໍາລັງຈະມາເຖິງ!';
  }

  @override
  String get duaCopiedToast => 'ຄັດລອກ dua ໄປຍັງຄລິບບອດແລ້ວ.';

  @override
  String get tasbihAllahuAkbarMeaning => 'ອັລລາຫ໌ຍິ່ງໃຫຍ່ທີ່ສຸດ';

  @override
  String get tasbihAlhamdulillahMeaning => 'ການສັນລະເສີນທັງໝົດເປັນຂອງອັລລາຫ໌';

  @override
  String get tasbihSubhanallahMeaning => 'ສະຫຼະເກຍດແດ່ອັລລາຫ໌';

  @override
  String get tasbihResetTooltip => 'ຣີເຊັດ';

  @override
  String get tasbihCompleteTitle => 'Tasbih ສໍາເລັດແລ້ວ';

  @override
  String get tasbihCompleteMessage => 'ຂໍໃຫ້ອັລລາຫ໌ຮັບ dhikr ຂອງທ່ານ.';

  @override
  String get tasbihTapHint => 'ແຕະບ່ອນໃດກໍໄດ້ເພື່ອນັບ';

  @override
  String get tasbihatScreenTitle => 'ຄູ່ມືການລະໝາດ';

  @override
  String get tasbihatScreenSubtitle => 'ຄໍາສັນລະເສີນໃນການລະໝາດ';

  @override
  String get tasbihatScreenDescription =>
      'ຄູ່ມືສົມບູນກ່ຽວກັບຄໍາສັນລະເສີນທີ່ຖືກອ່ານໃນລະຫວ່າງ ແລະ ຫຼັງການລະໝາດປະຈໍາວັນ — ຕາມຂົນທຳນຽມຂອງ Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'ອ່ານໃນ rakʿah ທີ 3 ແລະ 4';

  @override
  String get tasbihatArba3Info =>
      'ໃນນິຕິສາດ Shia, Tasbiḥāt al-Arbaʿa ໃຊ້ແທນ Surah al-Fatiha ໃນ rakʿah ທີ 3 ແລະ 4 ຂອງ Dhuhr, Asr, Maghrib, ແລະ Isha. ການອ່ານ 1 ຄັ້ງແມ່ນຂໍ້ບັງຄັບ (wājib), ແລະ ການອ່ານ 3 ຄັ້ງແມ່ນແນະນໍາ (mustaḥabb).';

  @override
  String get tasbihatArba3Translation =>
      'ສະຫຼະເກຍດແດ່ອັລລາຫ໌ · ການສັນລະເສີນທັງໝົດເປັນຂອງອັລລາຫ໌\nບໍ່ມີພຣະເຈົ້າອື່ນໃດນອກຈາກອັລລາຫ໌ · ອັລລາຫ໌ຍິ່ງໃຫຍ່ທີ່ສຸດ';

  @override
  String get tasbihatArba3CompleteTitle => 'ການອ່ານສໍາເລັດແລ້ວ';

  @override
  String get tasbihatArba3CompleteMessage =>
      'ຂໍໃຫ້ການລະໝາດຂອງທ່ານໄດ້ຮັບການຕອບຮັບ — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'ແຕະຫຼັງຈາກການອ່ານແຕ່ລະຄັ້ງ';

  @override
  String get tasbihatZahraSubtitle => 'ຫຼັງຈາກການລະໝາດແຕ່ລະຄັ້ງ · 100 ເມັດ';

  @override
  String get tasbihatZahraOriginLabel => 'ຕົ້ນກໍາເນີດ';

  @override
  String get tasbihatZahraHadith =>
      'ທ່ານນາງ Fatima al-Zahra (sa) ເຄີຍຂໍຜູ້ຮັບໃຊ້ຈາກທ່ານນະບີ ﷺ. ທ່ານກ່າວວ່າ: \"ຂ້ອຍຈະບອກສິ່ງທີ່ດີກວ່ານັ້ນໃຫ້ທ່ານໄດ້ບໍ? ກ່າວ Subḥānallāh 33 ຄັ້ງ, Alḥamdulillāh 33 ຄັ້ງ, ແລະ Allāhu Akbar 34 ຄັ້ງ ຫຼັງຈາກການລະໝາດແຕ່ລະຄັ້ງ. ສິ່ງນັ້ນດີກວ່າຜູ້ຮັບໃຊ້ສໍາລັບທ່ານ.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, ພາກທີ 85';

  @override
  String get tasbihatZahraOpenCounter => 'ເປີດຕົວນັບ Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS ທີ່ແນະນໍາ';

  @override
  String get tasbihatDuasSubtitle => 'ຫຼັງຈາກທ່ານສໍາເລັດການລະໝາດ';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ຫຼັງຈາກການລະໝາດບັງຄັບແຕ່ລະຄັ້ງ';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ຜູ້ໃດອ່ານ Āyat al-Kursī ຫຼັງຈາກການລະໝາດບັງຄັບແຕ່ລະຄັ້ງ, ບໍ່ມີສິ່ງໃດກັ້ນລາວອອກຈາກສະຫວັນນອກຈາກຄວາມຕາຍ. Imam al-Bāqir (a) ກ່າວວ່າມັນເປັນໜຶ່ງໃນອາຍະຮ໌ທີ່ຍິ່ງໃຫຍ່ທີ່ສຸດໃນ Qur\'an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'ຫຼັງຈາກການລະໝາດແຕ່ລະຄັ້ງ · ປິດທ້າຍ dua ທັງໝົດ';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'ການສົ່ງພອນແດ່ທ່ານນະບີ ﷺ ແລະ ຄອບຄົວຜູ້ບໍລິສຸດຂອງທ່ານ (Āl Muḥammad) ແມ່ນສິ່ງທີ່ແນະນໍາເພື່ອປິດທ້າຍ dua ແຕ່ລະອັນ. Imam al-Ṣādiq (a) ກ່າວວ່າ: \"Dua ທຸກອັນຈະຖືກລໍຖ້າຈົນກວ່າທ່ານຈະສົ່ງ ṣalawāt ແກ່ Muhammad ແລະ ຄອບຄົວຂອງທ່ານ.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'ຫຼັງຈາກການລະໝາດແຕ່ລະຄັ້ງ · ເພື່ອ Imam ແຫ່ງເວລາຂອງພວກເຮົາ';

  @override
  String get tasbihatDuaFarajSource => 'ສອນໂດຍ Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'dua ເພື່ອຂໍໃຫ້ Imam al-Mahdī (af), Imam ອົງທີ 12, ປາກົດຕົວອີກຄັ້ງ, ຊຶ່ງຖືກສອນໂດຍບິດາຂອງທ່ານ. ຖືກອ່ານທຸກມື້ໂດຍຜູ້ສັດທາຊີອະຫຼັງຈາກການລະໝາດແຕ່ລະຄັ້ງ ເພື່ອເປັນການອຸທິດຕົນແກ່ Imam ຜູ້ມີຊີວິດຢູ່.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ຂອງທ່ານນາງ Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'ຫຼັງຈາກ Maghrib ແລະ Isha · ແນະນໍາເປັນພິເສດ';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) ກ່າວວ່າ ການອ່ານ Tasbīḥ al-Zahrā ຫຼັງຈາກ Isha ກ່ອນນອນ ດີກວ່າການລະໝາດ sunna 1000 rakʿahs. ແສງສະຫວ່າງຂອງມັນຈະລອຍຂຶ້ນໄປສູ່ຟ້າ.';

  @override
  String get tasbihFatimaGiftPre => 'ຂອງຂວັນຈາກທ່ານນະບີ';

  @override
  String get tasbihFatimaGiftPost => 'ອ່ານຫຼັງຈາກການລະໝາດແຕ່ລະຄັ້ງ';

  @override
  String get prayerTrackerTitle => 'ຕົວຕິດຕາມການລະໝາດ';

  @override
  String get prayerTrackerPrayed => 'ລະໝາດແລ້ວ';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'ຕໍ່ເນື່ອງ $count ມື້';
  }

  @override
  String get prayerTrackerAllComplete =>
      'ການລະໝາດທັງໝົດຂອງມື້ນີ້ສໍາເລັດແລ້ວ. ຂໍໃຫ້ອັລລາຫ໌ຕອບຮັບ.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'ສໍາເລັດແລ້ວມື້ນີ້';

  @override
  String get dhikrTrackerNotDoneToday => 'ຍັງບໍ່ໄດ້ເຮັດມື້ນີ້';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'ຕໍ່ເນື່ອງ $count ມື້';
  }

  @override
  String get dhikrReminderTitle => 'ເຕືອນ Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'ການເຕືອນຢ່າງອ່ອນໂຍນໃນທຸກມື້ເພື່ອໃຫ້ອ່ານ Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'ເປີດໃຊ້ການເຕືອນ Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'ເວລາເຕືອນ';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith ປະຈໍາວັນ';

  @override
  String get hadithLabelArabic => 'ອາຣາບິກ';

  @override
  String get hadithLabelTranslation => 'ຄໍາແປ';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'ແບ່ງປັນ Hadith ນີ້';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nຜ່ານ Ayara';
  }

  @override
  String get hadithNavPrevious => 'ກ່ອນໜ້າ';

  @override
  String get hadithNavNext => 'ຖັດໄປ';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'ນະບີ, ທ່ານນາງ Fatima, ແລະ 12 ອິມາມ — ຜູ້ນໍາທີ່ບໍ່ຜິດພາດແຫ່ງອິສລາມ';

  @override
  String get imamLabelBorn => 'ເກີດ';

  @override
  String get imamLabelMartyrdom => 'ການເປັນຊະຮີດ';

  @override
  String get imamLabelStatus => 'ສະຖານະ';

  @override
  String get imamSectionBiography => 'ຊີວະປະຫວັດ';

  @override
  String get imamSectionFamousSaying => 'ຄໍາກ່າວທີ່ມີຊື່ສຽງ';

  @override
  String get imamRoleProphet => 'ນະບີອົງສຸດທ້າຍ';

  @override
  String get imamRoleInfallible => 'ຜູ້ບໍ່ຜິດພາດ';

  @override
  String get imamOrdinal1 => 'ອິມາມອົງທີ 1';

  @override
  String get imamOrdinal2 => 'ອິມາມອົງທີ 2';

  @override
  String get imamOrdinal3 => 'ອິມາມອົງທີ 3';

  @override
  String get imamOrdinal4 => 'ອິມາມອົງທີ 4';

  @override
  String get imamOrdinal5 => 'ອິມາມອົງທີ 5';

  @override
  String get imamOrdinal6 => 'ອິມາມອົງທີ 6';

  @override
  String get imamOrdinal7 => 'ອິມາມອົງທີ 7';

  @override
  String get imamOrdinal8 => 'ອິມາມອົງທີ 8';

  @override
  String get imamOrdinal9 => 'ອິມາມອົງທີ 9';

  @override
  String get imamOrdinal10 => 'ອິມາມອົງທີ 10';

  @override
  String get imamOrdinal11 => 'ອິມາມອົງທີ 11';

  @override
  String get imamOrdinal12 => 'ອິມາມອົງທີ 12';

  @override
  String get duaAudioScreenTitle => 'ຟັງ Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'ເລືອກ dua ເພື່ອຟັງ. ແຕະ tile ເພື່ອຫຼິ້ນ ຫຼື ຢຸດຊົ່ວຄາວ.';

  @override
  String get duaAudioComingSoonMessage =>
      'ສຽງອ່ານສໍາລັບ dua ນີ້ຈະມີໃຫ້ໃນການອັບເດດຕໍ່ໄປ.';

  @override
  String get duaAudioClose => 'ປິດ';

  @override
  String get duaAudioError =>
      'ບໍ່ສາມາດໂຫຼດສຽງໄດ້. ກະລຸນາກວດເຊັກການເຊື່ອມຕໍ່ຂອງທ່ານ.';

  @override
  String get duaAudioMetaTransmittedBy => 'ຖ່າຍທອດໂດຍ';

  @override
  String get duaAudioMetaOccasion => 'ໂອກາດ';

  @override
  String get duaAudioMetaDuration => 'ໄລຍະເວລາ';

  @override
  String get quickActionDailyHadith => 'Hadith ປະຈໍາວັນ';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'ຟັງ';

  @override
  String get quickActionTasbihat => 'ຄູ່ມືການລະໝາດ';

  @override
  String get pilgrimageSectionTitle => 'ການເດີນທາງອັນສັກສິດ';

  @override
  String get pilgrimageSectionSubtitle =>
      'ຄູ່ມືຄົບຖ້ວນກ່ຽວກັບ Hajj ແລະ Umrah — ການຈາລິກໄປສູ່ເຮືອນອັນສັກສິດຂອງອັລລາຫ໌ທີ່ Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'ເສົາຫຼັກຂໍ້ທີ 5 ຂອງອິສລາມ';

  @override
  String get hajjCardDescription =>
      'ການຈາລິກໃຫຍ່ປະຈໍາປີ — ບັງຄັບໜຶ່ງຄັ້ງໃນຊີວິດສໍາລັບຊາວມຸດສະລິມທຸກຄົນທີ່ມີຄວາມສາມາດ';

  @override
  String get hajjScreenTitle => 'ຄູ່ມື Hajj';

  @override
  String get hajjScreenSubtitle => 'ຄູ່ມືແບບຂັ້ນຕອນສໍາລັບການຈາລິກໃຫຍ່';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'ການຈາລິກນ້ອຍ';

  @override
  String get umrahCardDescription =>
      'ການເດີນທາງດ້ານຈິດວິນຍານທີ່ມີຄຸນຄ່າຢ່າງລຶກເຊິ່ງ ແລະ ສາມາດເຮັດໄດ້ໃນເວລາໃດກໍໄດ້ຂອງປີ';

  @override
  String get umrahScreenTitle => 'ຄູ່ມື Umrah';

  @override
  String get umrahScreenSubtitle => 'ຄູ່ມືແບບຂັ້ນຕອນສໍາລັບການຈາລິກນ້ອຍ';

  @override
  String get pilgrimageStepsTitle => 'ພິທີ ແລະ ຂັ້ນຕອນ';

  @override
  String get pilgrimageImportantNotesTitle => 'ບັນທຶກສໍາຄັນ';

  @override
  String get pilgrimageDuaTitle => 'ດູອາສໍາລັບຂະບວນນີ້';

  @override
  String get pilgrimageJafariNoteTitle => 'ເລື່ອງບັນທຶກຟິກຮີຈາຟາລີ';

  @override
  String get pilgrimageComplete => '✓ ສຳເລັດ';

  @override
  String get pilgrimageMarkDone => 'ປ່ອນໃຫ້ເປັນສິ້ນສຸດ';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ຈາກ $total ຂະບວນ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes ນາທີ';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ຜູ້ຈາລິກຊີອະ';

  @override
  String get pilgrimageShiaNoteBody =>
      'ຜູ້ຈາລິກ Shia ຕາມປະເພນີຈະເດີນທາງໄປ Medina ເພື່ອຢ້ຽມຢາມຫຼຸມຝັງສົບຂອງທ່ານນະບີ Muhammad ﷺ ທີ່ Masjid al-Nabawi ແລະ ຫຼຸມຝັງສົບຂອງອິມາມທີ່ Jannat al-Baqi ອີກດ້ວຍ. ການເຂົ້າຢ້ຽມຢາມເຫຼົ່ານີ້ມີຄວາມສໍາຄັນດ້ານຈິດວິນຍານຢ່າງສູງ ແລະ ຖືກມອງວ່າເປັນສ່ວນສໍາຄັນຂອງການເດີນທາງສໍາລັບຊາວມຸດສະລິມ Shia ສ່ວນໃຫຍ່.';

  @override
  String get hajjIntro =>
      'Hajj ແມ່ນເສົາຫຼັກຂໍ້ທີ 5 ຂອງອິສລາມ ເຊິ່ງບັງຄັບຫນຶ່ງຄັ້ງໃນຊີວິດສໍາລັບຊາວມຸດສະລິມທຸກຄົນທີ່ມີຄວາມສາມາດທາງກາຍ ແລະ ການເງິນ. ມັນຖືກປະຕິບັດໃນເດືອນ Dhul Hijjah ແລະ ຍ້ອນຕາມຮອຍທ່ານນະບີ Ibrahim (AS), ບຸດຂອງທ່ານ Ismail (AS), ແລະ ທ່ານນາງ Hajar. ສໍາລັບຊາວມຸດສະລິມ Shia, Hajj ຍັງລວມເຖິງພອນອັນເລິກເຊິ່ງໃນການເຂົ້າຢ້ຽມຢາມສະຖານທີ່ພັກສຸດທ້າຍຂອງທ່ານນະບີ ﷺ ແລະ Ahlul Bayt ທີ່ Medina.';

  @override
  String get umrahIntro =>
      'Umrah ແມ່ນການຈາລິກນ້ອຍໄປຫາ Mecca ແລະ ບໍ່ເໝືອນກັບ Hajj, ມັນສາມາດປະຕິບັດໄດ້ໃນຊ່ວງເວລາໃດກໍໄດ້ຂອງປີ. ເຖິງແມ່ນວ່າບໍ່ບັງຄັບ, ມັນມີຜົນຕອບແທນທາງຈິດວິນຍານຢ່າງຫຼວງຫຼາຍ ແລະ ຖືກມອງວ່າເປັນການເຄົາລົບທີ່ແນະນໍາຢ່າງສູງ. ມັນແບ່ງປັນບາງພິທີກໍາກັບ Hajj ແຕ່ສັ້ນກວ່າ ແລະ ປະກອບດ້ວຍ 4 ພິທີກໍາຫຼັກ.';
}
