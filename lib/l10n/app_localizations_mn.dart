// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Хэлээ сонгоно уу';

  @override
  String get languageSelectSub =>
      'Та үүнийг дараа нь Тохиргооны хэсгээс өөрчилж болно';

  @override
  String get actionContinue => 'Үргэлжлүүлэх';

  @override
  String get languageSuggestedHeader => 'Санал болгосон';

  @override
  String get languageAllHeader => 'Бүх хэлүүд';

  @override
  String get languageSuggestedBadge => 'Санал болгосон';

  @override
  String get languageSearchHint => 'Хайх…';

  @override
  String get planBasic => 'Стандарт';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Өдөр тутмын чиглэл';

  @override
  String get categorySlot02 => 'Итгэл ба Итгэм';

  @override
  String get categorySlot03 => 'Залбирлын Сэтгэлгээ';

  @override
  String get categorySlot04 => 'Тамир Найдвар';

  @override
  String get categorySlot05 => 'Уучлалт Эрэх';

  @override
  String get categorySlot06 => 'Нойрмоль Сайнаа';

  @override
  String get categorySlot07 => 'Итгэл Хүч';

  @override
  String get categorySlot08 => 'Талархлын Сэтгэл';

  @override
  String get categorySlot09 => 'Амьдралын Зорилго';

  @override
  String get categorySlot10 => 'Гэр Бүлийн Холбоо';

  @override
  String get categorySlot11 => 'Дотоод Амар';

  @override
  String get categorySlot12 => 'Пророф Ухаан';

  @override
  String get categorySlot13 => 'Сайн Зан';

  @override
  String get categorySlot14 => 'Сатаасаас Урьдчилах';

  @override
  String get categorySlot15 => 'Орлоо Зикр';

  @override
  String get categoryCustom => 'Хувийн Сэтгэлгээ';

  @override
  String get dhikrMeaningSubhanallah => 'Аллахын нэр цэцэглэ';

  @override
  String get dhikrMeaningAlhamdulillah => 'Алла бүхэлд нь мэдэгдэл бичих';

  @override
  String get dhikrMeaningAllahuAkbar => 'Алла хамгийн том';

  @override
  String get quranVerseHeartAtRest =>
      'Үнэхээр Аллахын дурсамжид сэтгэл нь амран авдаг.';

  @override
  String get promptHint => 'Исламын чиглэл ба сэтгэлгээний хувьд ангийг дар';

  @override
  String get currentLanguage => 'Одоогийн хэл';

  @override
  String get settingsLanguage => 'Хэлний тохиргоо';

  @override
  String get settingsTitle => 'Тохиргоо';

  @override
  String get chooseLanguage => 'Хэлээ сонгоно уу';

  @override
  String get continueCta => 'Үргэлжлүүлэх';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count үг',
      one: '$count үг',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Сонголт';

  @override
  String get newCta => 'Шинэ';

  @override
  String get actionsTitle => 'Та юу хийхийг хүсэж байна вэ?';

  @override
  String get copy => 'Хуулах';

  @override
  String get share => 'Хуваалцах';

  @override
  String get close => 'Хаах';

  @override
  String get copiedToast => 'Сошиал дээр хуулсан';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Шинэ хариу үүсгэж чадсангүй';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nДахин оролдмоор байна уу?';
  }

  @override
  String get cancelCta => 'Цуцлах';

  @override
  String get retryCta => 'Дахин оролдох';

  @override
  String get authTitle => 'Өөрийн дансыг үүсгэнэ';

  @override
  String get continueAsGuest => 'Зочны байдлаар үргэлжлүүлэх';

  @override
  String get signInGoogle => 'Google-ээр нэвтрэх';

  @override
  String get signInApple => 'Apple-ээр нэвтрэх';

  @override
  String get signInEmail => 'Имэйлээр нэвтрэх';

  @override
  String get upgradeWithApple => 'Apple-ээр үргэлжлүүлэх';

  @override
  String get mustAccept =>
      'Та Үйлчилгээний нөхцлийг хүлээн зөвшөөрч, Нууцлалын бодлогын талаар мэдлэгтэй байх ёстой.';

  @override
  String get termsLabel => 'Би үйлчилгээний нөхцлийг хүлээн зөвшөөрөм';

  @override
  String get privacyLabel => 'Би нууцлалын бодлогыг уншсан';

  @override
  String get marketingOptIn => 'Мэдээ, санал нь хүлээж авахаар зөвшөөрөм';

  @override
  String get openTerms => 'Үйлчилгээний нөхцэл';

  @override
  String get openPrivacy => 'Нууцлалын бодлого';

  @override
  String get accountSection => 'Дансны хэсэг';

  @override
  String get guestMode => 'Зочны режим';

  @override
  String get signedIn => 'Нэвтэрсэн';

  @override
  String get upgradeHint =>
      'Мөн эргүүлэхэд сэтгэлгээг хадгалахын тулд дан үүсгээрэй.';

  @override
  String get upgradeWithGoogle => 'Google-ээр үргэлжлүүлэх';

  @override
  String get signOut => 'Гарах';

  @override
  String get snackUpgraded => 'Дансыг Google-ээр өмнө сайжруулсан ✅';

  @override
  String get snackSignedIn => 'Google-ээр нэвтэрсэн ✅';

  @override
  String get snackSignedOut => 'Гарсан';

  @override
  String get snackSignedInApple => 'Apple-ээр нэвтэрсэн ✅';

  @override
  String get snackSignedInGoogle => 'Google-ээр нэвтэрсэн ✅';

  @override
  String get snackUpgradedApple => 'Дансыг Apple-ээр сайжруулсан ✅';

  @override
  String get snackUpgradedGoogle => 'Дансыг Google-ээр сайжруулсан ✅';

  @override
  String get historyTitle => 'Өмнөх сэтгэлгээ';

  @override
  String get historyOpenCta => 'Өмнөх сэтгэлгээ';

  @override
  String get historyEmpty => 'Бүртгэгдсэн сэтгэлгээ байхгүй байна.';

  @override
  String get historyDeleteTitle => 'Сэтгэлгээ устгах уу?';

  @override
  String get historyDeleteBody =>
      'Энэ нь сонгосон зүйлийг бүрмөсөн хасах болно.';

  @override
  String get deleteCta => 'Устгах';

  @override
  String get historyButton => 'Өмнөх сэтгэлгээ';

  @override
  String get historyEmptyTitle => 'Сэтгэлгээ байхгүй';

  @override
  String get historyEmptyBody =>
      'Эхлээд юу нэг үүсгээрэй — таны хадгалсан зүйлс энд гарч ирэх болно.';

  @override
  String get historyDelete => 'Устгах';

  @override
  String get footerTitle => 'Wilaya, Iman ба Sabr-ээр';

  @override
  String get footerSubtitle => 'Нэг залбиралт орох';

  @override
  String get genericErrorSnack =>
      'Ямар нэг зүйл буруу болсон — дарь нэг цаглаа дараа оролдоно уу.';

  @override
  String get upgradeAccountCta =>
      'Мөн эргүүлэхэд сэтгэлгээ хадгалах – дан үүсгээрэй';

  @override
  String get deleteAccount => 'Дансыг устгах';

  @override
  String get exportData => 'Миний мэдээлэл экспортлох';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Хялбар нар 🐯\nAyara дараагийнхаас өмнө мөч хэрэгтэй…';

  @override
  String get rateDailyLimit =>
      'Энэ үед сэтгэлгээ хүрээд гүйцсэн байна.\nОр сэтгэлгээ авах, эсвэл Wilaya-гийн асар сайжруулах.';

  @override
  String get rateCreditsExhausted =>
      'Та бүх сэтгэлгээг ашигласан байна.\nДөхөм авах эсвэл Wilaya-гийн асар сайжруулах эхлүүлэх.';

  @override
  String get rateGraceCreditsExhausted =>
      'Энэ үед сэтгэлгээ хүрээд гүйцсэн байна.\nОр сэтгэлгээ авах, эсвэл Wilaya-гийн асар сайжруулах.';

  @override
  String get premiumDescription =>
      'Wilaya нь үндсэн онцлог шинж, ирээдүйн ангилал, сонголтын значка нээнэ.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Таны сэтгэлгээ одоогоор хоосон байна. Төлөвлөгөө: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Таны сэтгэлгээг шалгаж чадсангүй: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Таны сэтгэлгээг шалгахад ямар нэг зүйл буруу болсон.';

  @override
  String get aiFallbackGeneric =>
      'Ямар нэг зүйл буруу болсон — дарь нэг цаглаа дараа оролдоно уу.';

  @override
  String get limitSectionTitle => 'Сэтгэлгээ';

  @override
  String get limitTodayLabel => 'Ашигла';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Үлдсэн сэтгэлгээ: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Төлөвлөгөө: $plan';
  }

  @override
  String get limitLoadingLabel => 'Ачаалж байна…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Сэтгэлгээ';

  @override
  String get aiLimitSubtitle =>
      'Нэг хариу нь 1 сэтгэлгээг хэрэглэнэ. Стандарт нь эхлүүлэх сэтгэлгээ багтаах. Wilaya нь үндсэн ангилал нээнэ ба дөхөм авч болно.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total сэтгэлгээ ашиглагдсан';
  }

  @override
  String get creditsSectionTitle => 'Сэтгэлгээ';

  @override
  String get creditsUsageLabel => 'Ашигла';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Үлдсэн сэтгэлгээ: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Төлөвлөгөө: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Ачаалж байна…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Сэтгэлгээ';

  @override
  String get creditsSubtitle =>
      'Нэг хариу нь 1 сэтгэлгээг хэрэглэнэ. Стандарт нь эхлүүлэх сэтгэлгээ багтаах. Wilaya нь үндсэн ангилал нээнэ ба дөхөм авч болно.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total сэтгэлгээ ашиглагдсан';
  }

  @override
  String get settingsDeleteTitle => 'Дансыг устгах';

  @override
  String get settingsDeleteDescription =>
      'Өөрийн дансыг ба бүх холбоотой мэдээлэлийг бүрмөсөн устгах.';

  @override
  String get settingsDeleteButtonLabel => 'Миний дансыг устгах';

  @override
  String get settingsDeleteDialogTitle => 'Дансыг устгах уу?';

  @override
  String get settingsDeleteDialogBody =>
      'Энэ үйлдэл нь байнгын бөгөөд буцаах боломжгүй.\n\nТаны бүх яриа, түүх ба дансны мэдээлэл устгагдах болно.';

  @override
  String get settingsDeleteDialogCancel => 'Цуцлах';

  @override
  String get settingsDeleteDialogConfirm => 'Устгах';

  @override
  String get settingsFreeLimitUsedTitle => 'Эхлүүлэх сэтгэлгээ ашиглагдсан';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Энэ төхөөрөмжийн эхлүүлэх сэтгэлгээ ашиглагдсан. Wilaya-гийн асар сайжруулах, эсвэл өр сэтгэлгээ авах үргэлжлүүлэхийн тулд.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Эхлүүлэх сэтгэлгээ ашиглагдсан';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Энэ төхөөрөмжийн эхлүүлэх сэтгэлгээ ашиглагдсан. Wilaya-гийн асар сайжруулах, эсвэл өр сэтгэлгээ авах үргэлжлүүлэхийн тулд.';

  @override
  String get deviceBoundError =>
      'Энэ төхөөрөмж аль хэдийнэ өөр дансанд холбогдсон. Анхны дансанаар нэвтэрнэ үү.';

  @override
  String get premiumTitle => 'Wilaya горим';

  @override
  String get premiumSubtitleBasic => 'Бүтэн Ayara туршилтыг нээнэ.';

  @override
  String get premiumSubtitlePremium =>
      'Та Wilaya-д суусан. Илүү сэтгэлгээ хэрэгтэй вэ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Одоогийн төлөвлөгөө: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Сэтгэлгээ: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Худалдан авалт одоогоор боломжгүй.';

  @override
  String get premiumSignInToPurchase =>
      'Сэтгэлгээ авах эсвэл Wilaya-г нээхийн тулд нэвтэрнэ үү.';

  @override
  String get premiumRestorePurchases => 'Худалдан авалтыг сэргээх';

  @override
  String get premiumProcessing => 'Боловсруулж байна…';

  @override
  String get premiumRestoreHintTitle =>
      'Энэ төхөөрөмж эсвэл өөр торхойд Wilaya эсвэл сэтгэлгээг худалдан авсан уу?';

  @override
  String get premiumRestoreHintBody =>
      'Худалдан авалтыг сэргээх хэрэв тэдгээр гарч ирэхгүй бол.';

  @override
  String get premiumBuyCredits200 => '200 сэтгэлгээ авах';

  @override
  String get premiumBuyCredits400 => '400 сэтгэлгээ авах';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya-д асар сайжруулах';

  @override
  String get premiumTopupHint =>
      'Wilaya-д та хэрэгцээн бүрдэл үед илүү сэтгэлгээ дөхөм авч болно.';

  @override
  String get premiumUpgradeCta => 'Асар сайжруулах';

  @override
  String get premiumRequiredForCategory =>
      'Энэ ангилал нь зөвхөн Wilaya хэрэглэгчдэд байдаг. Бүх үндсэн агуулгаг нээхийн тулд Тохиргооны хэсгээр асар сайжруулах.';

  @override
  String get premiumBenefitsBasic =>
      'Wilaya нээхийн тулд илүү сэтгэлгээ авах, үндсэн ангилалд нэвтрэх, ба хэрэгцээн бүрдэл үед үргэлжлүүлэхийг авна.';

  @override
  String get premiumBenefitsPremium =>
      'Та Wilaya горимд сусан байна. Бага үлдсэн байвал илүү сэтгэлгээ нэмж, завсралгүй үргэлжлүүлнэ.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya-г нээх';

  @override
  String get premiumButtonTopup1000 => '1000 сэтгэлгээ нэмэх';

  @override
  String get premiumBadge => 'Wilaya идэвхтэй';

  @override
  String get premiumLoadingStore => 'Дэлгүүр ачаалж байна…';

  @override
  String get premiumProductNotAvailable =>
      'Энэ бүтээгдэхүүн дэлгүүрт одоогоор байхгүй. Дараа нь дахин оролдоно уу.';

  @override
  String get premiumPurchaseError =>
      'Худалдан авалт руу ямар нэг зүйл буруу болсон. Дахин оролдоно уу.';

  @override
  String get premiumBuyCredits100 => '100 сэтгэлгээ нэмэх';

  @override
  String get premiumFeatureLocked =>
      'Энэ шинж ашиглахын тулд Wilaya-г нээнэ үү.';

  @override
  String get lockedCategoriesHint =>
      'Зарим ангилал нь Wilaya гишүүдийн хувьд хадгалагдсан. Та таны сэтгэлгээ замдаа туулахын хувьд нээ.';

  @override
  String get freePlanBlockedTitle => 'Та эхлүүлэх сэтгэлгээ ашугла';

  @override
  String get freePlanBlockedBody =>
      'Та стандарт төлөвлөгөө эхлүүлэх сэтгэлгээний сонголттой хэрэглэгчидүүд, ба та хязгаарт хүрсэн байна. Үргэлжлүүлэхийн тулд — ба үндсэн ангилал нээхийн тулд — Wilaya-гийн асар сайжруулах.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Доор Wilaya сонголт харах';

  @override
  String get graceBlockedTitle => 'Та эхлүүлэх сэтгэлгээ ашугла';

  @override
  String get graceBlockedBody =>
      'Та стандарт төлөвлөгөө эхлүүлэх сэтгэлгээний сонголттой хэрэглэгчидүүд, ба та хязгаарт хүрсэн байна. Үргэлжлүүлэхийн тулд — ба үндсэн ангилал нээхийн тулд — Wilaya-гийн асар сайжруулах.';

  @override
  String get graceBlockedCtaGoPremium => 'Доор Wilaya сонголт харах';

  @override
  String get rateGuestMustSignIn =>
      'Ayara ба таны сэтгэлгээ ашиглахын тулд нэвтэрнэ үү.';

  @override
  String get guestNoCreditsTitle => 'Зочны режим';

  @override
  String get guestNoCreditsBody =>
      'Зочны байдлаар та аппыг сургалт авч болно, гэхдээ та сэтгэлгээ ашигла болохгүй. Дараа нь Тохиргооны хэсгээр нэвтрэх сэтгэлгээ ашиглахын тулд ба худалдан авалт нээ.';

  @override
  String get guestDialogContinue => 'Үргэлжлүүлэх';

  @override
  String get guestDialogLoginInstead => 'Оро оролдох';

  @override
  String get optionalLabel => 'сонголт';

  @override
  String get accountDeleteSuccessTitle => 'Дансыг устгасан';

  @override
  String get accountDeleteSuccessBody =>
      'Таны дансыг ба холбоотой мэдээлэлийг амжилттай устгасан.';

  @override
  String get accountDeleteSuccessClose => 'Хаах';

  @override
  String get accountDeleteErrorTitle => 'Дансыг устгаж чадсангүй';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Дахин баталгаажуулалт цуцлагдсан. Дахин нэвтрэх ба устгалт дахин оролд.';

  @override
  String get accountDeleteReauthRequired =>
      'Дансыг устгах нь сүүлийн үед нэвтрэх шаардлагатай. Гарах, дахин нэвтрэх ба устгалт дахин оролд.';

  @override
  String get settingsDeletePermanentWarning =>
      'Энэ үйлдэл нь байнгын бөгөөд буцаах боломжгүй. Таны дансанд холбоотой бүх мэдээлэл устгагдах болно.';

  @override
  String get dailyGraceTitle => 'Өдөр тутмын чиглэл';

  @override
  String get dailyGraceScriptureLabel => 'ӨДРИЙН АЯЛЛАГАА';

  @override
  String get dailyGraceSaintLabel => 'ДОЛООНЫ ЗУРАГ';

  @override
  String get dailyGraceReflectionLabel => 'ОРЛОО СЭТГЭЛГЭЭ';

  @override
  String get dailyGraceCopiedToast => 'Аяллагаа сошиал дээр хуулсан';

  @override
  String get locationConsentLabel =>
      'Ayara-г миний байршлыг Qibla чиглэл ба залбирлын цагт ашиглахаар зөвшөөрөх';

  @override
  String get locationConsentHint =>
      'Зөвхөн эдгээр шинж. Таны байршлын ямар ч хэдээгүй эсвэл хадгалагдахгүй.';

  @override
  String get askPageTitle => 'Ayara-гийн асуу';

  @override
  String get askPageDescription =>
      'Итгэл, залбиралт, амьдрал, эсвэл исламын туршлагын талаар ямар ч зүйл асуу ба Коран ба Ahl al-Bayt сургамж дээр үндэслэсэн чиглэл хүлээ.';

  @override
  String get askPageInputHint => 'Энд асуултаа бичнэ үү…';

  @override
  String get askPageSubmitCta => 'Асуу';

  @override
  String get askPageInputEmptyError => 'Эхлээд асуултаа бичнэ үү.';

  @override
  String get askResultYourQuestion => 'Таны асуулт';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Меккаг сүүлж байна';

  @override
  String get qiblaCompassInstruction =>
      'Та таны утасыг эргүүлнэ аль хэдийнэ шатар авсны дээр хүрэх хүртэл.\nЭнэ чиглэл Qibla (Мэкка) руу сүүлнэ.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS дохио сул байна. Гарай явж шаардлага оруулаа.';

  @override
  String get qiblaRetry => 'Дахин оролдох';

  @override
  String get qiblaTitle => 'Qibla Чиглэл';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km км Меккад';
  }

  @override
  String get qiblaLocationNeededTitle => 'Байршлыг шаардлагатай';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara та Меккаас Kaaba чиглэлийг заж сгалтын буцадаг байршлаас авахын тулд байршлын нэвтрэх зөвшөөр.';

  @override
  String get qiblaOpenSettings => 'Тохиргоог нээх';

  @override
  String get qiblaCompassLoading => 'Таны байршлыг олж байна…';

  @override
  String get qiblaTowardMecca => 'Мэккаг сүүлж байна';

  @override
  String get prayerTimesTitle => 'Залбирлын цаг';

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
  String get prayerTimesLocationNeededTitle => 'Байршлыг шаардлагатай';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara та таны хотын нарийвчилсан залбирлын цагийг заж сгалтын буцадаг байршлаас авахын тулд байршлын нэвтрэх зөвшөөр.';

  @override
  String get prayerTimesNextLabel => 'Дараагийн';

  @override
  String get prayerTimesDoneLabel => 'Хийгдсэн';

  @override
  String get monthlyPrayerTimesTitle => 'Сарын залбирлын цаг';

  @override
  String get monthlyPrayerTimesViewButton => 'Сарын хүнээ харах';

  @override
  String get monthlyPrayerTimesNextMonth => 'Дараагийн сар';

  @override
  String get monthlyPrayerTimesDayHeader => 'Өдөр';

  @override
  String get sharePrayerTimes => 'Залбирлын цагыг хуваалцах';

  @override
  String get notificationsSectionTitle => 'Сэргэлтүүд';

  @override
  String get notificationsSectionSubtitle =>
      'Залбирлын сэргэлтүүд, хуанли үйл явдал ба сүүлүүд';

  @override
  String get dailyReflectionReminderTitle => 'Өдөр тутмын сэтгэлгээ';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara нээх ба итгэмтэй холбоо болохын тулд нежүүлэнгүй өдөр тутмын сэргэлт.';

  @override
  String get dailyReflectionReminderEnable =>
      'Өдөр тутмын сэргэлтийг идэвхжүүлэх';

  @override
  String get dailyReflectionReminderTimeLabel => 'Сэргэлтийн цаг';

  @override
  String get prayerNotificationsTitle => 'Залбирлын сэргэлтүүд';

  @override
  String get prayerNotificationsDescription =>
      'Залбирлын цаг өмнө нежүүлэнгүй сэргэлт хүлээх өдөр цэцэглэн холбоо байлаа.';

  @override
  String get prayerNotificationsEnable => 'Залбирлын сэргэлтийг идэвхжүүлэх';

  @override
  String get prayerNotificationsOpenSettings => 'Сэргэлтийн тохиргоог нээх';

  @override
  String get prayerNotificationsDenied => 'Сэргэлтүүд нь идэвхгүй';

  @override
  String get prayerNotificationsDeniedHint =>
      'Тохиргоо явж Ayara-ийн залбирлын цагийн сэргэлтүүдийг авахын тулд сэргэлтүүдийг зөвшөөрнө.';

  @override
  String get notificationsConsentLabel =>
      'Залбирлын цагийн сэргэлтүүдийг зөвшөөрөх';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Өглөө залбиралт';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr нь Ahl al-Bayt-ийн өглөөний залбиралт. Imam Ali (AS) хэлэв: Өглөөний залбиралтыг хэн түүнийг хамгийн үнэтэй итгэм байдаг. Эргэж, гадаал болсон, Аллахын өмнө байрлал.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Өдрийн дорд залбиралт';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayt-ийн Imam-уд дурсамжийн сэр секунд үл дурьдав. Өдөрийн дээр нялигаах, Dhuhr ба Asr эргүүлэх хэрэгцээ, ба Аллахын сэтгэл буцаалт.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Үд болсны залбиралт';

  @override
  String get prayerNotifBodyAsr =>
      'Залбиралт хэмжүүлнэ, энэ нь та Алла хоорондын санал. Asr цаг ирсэн — түүнийг дурсамжгүй өнгөрүүлээрэй.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Өмнөө залбиралт';

  @override
  String get prayerNotifBodyMaghrib =>
      'Нар очид — мөч Ahl al-Bayt эргүүлэх дуугуулал. Maghrib нээлтэнүүлнэ ба гар нээлтүүлнэ дуа дээр орлоо эхлэх өмнө.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Шөнийн залбиралт';

  @override
  String get prayerNotifBodyIsha =>
      'Аллахын компаний сонгосон өдөрөө төгөлнө. Imam сонгосон Salat al-Layl дараа Isha — гэхдээ эхлээд Isha бүрэн, дурсамжаар өдрөө хаа.';

  @override
  String get outOfReflectionsBannerText => 'Та бүх сэтгэлгээ ашугла';

  @override
  String get outOfReflectionsBannerCta => 'Өр авах';

  @override
  String get dhikrPageTitle => 'Зикр';

  @override
  String get dhikrTapToCount => 'Тоолохын тулд дугуйг дар';

  @override
  String get dhikrResetButton => 'Сэргээх';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Та Аллахын 100 дурсамжыг бүрэн бүтэн сугала. Та сэтгэлний гэрэл байдаг.';

  @override
  String get disclaimerTitle => 'Энэ аппын чиглэл тухай';

  @override
  String get disclaimerBody =>
      'Ayara исламын сэтгэлгээ, сэргэлтүүд, сүнс агуулга өгдөг та эмэгтэйг бүслүүлэх байдлаас дүрслэх, Коран ба Ahl al-Bayt сургамж үндэслэнэ. Энэ агуулга ерөнхий мэдээлэлийг ба сэнгийг санхүүлэл зорилгоор сүүлүүлэнэ.\n\nAyara нь сургасан ухаан сүүлүүлдөг.\nЭнэ аппын чиглэл нь сургасан исламын сургаач, marja\', эсвэл ухаалаг суралцуулагчийн сургаа биш. Islaaming исламын дүр мэгчүүл, сэргэлтүүд эсвэл хүн эрхэм өрлөгөө, сэргэлтүүд хүлээх хэрэгцээ, та квалфини marja\' эсвэл та бүүрийн сургаачаас туслахыг хүсэхийг сэргэлээрэй.\n\nЭнэ апп шашны сургамж сүүлүүлдөг.\nAyara фикх эсвэл эмэгтэйн шашны ёрлүүлэгт баталгаажуулсан сүүлүүлдөг. Энд юу ч фатва буюу баримтлах шашны сургамж гэж үзэх хэрэгцээ.\n\nAhl al-Bayt-ийн голлох.\nЭзэлсэн исламын хэлбэрт, Пророф Мухаммад ﷺ ба таны цэцэглэсэн гэрээлэл — Ahl al-Bayt — исламын ухлахын эрх сургаач дараа Коран. Ahl al-Bayt-ийн арван хоёр Imam нь исламын ухаанийн баримтлах тайлбарлагач. Энэ аппын агуулга энэ орхидыг ардахуулж, ба найхай үнэнээр хүндэлнэ.\n\nУхал сүлж.\nЭнэ апп таны итгэмээр сургалт ба нэг энэ үе хурам төр мөч сүнс ба дараа сургалтүүдийн мөч болох та эмэгтэй сургуулах хүлээнэ. Та байрлах мөч, исламын төв ба шашны дараа юм ба суралцуулагчаас хаана ойр удаж байхүүлдүүлнэ.';

  @override
  String get disclaimerClose => 'Би ойлго';

  @override
  String get disclaimerInfoTooltip => 'Энэ аппын чиглэл тухай';

  @override
  String get disclaimerSettingsSubtitle =>
      'Ерөнхий мэдээлэлийн хувьд. Бүтэн эргэлтэнэ уншихын тулд даррай.';

  @override
  String get disclaimerSectionHeader => 'Чиглэл сэргэлт';

  @override
  String get navHome => 'Байр';

  @override
  String get navReflect => 'Сэтгэлгээ';

  @override
  String get navDuas => 'Дуа';

  @override
  String get navCalendar => 'Хуанли';

  @override
  String get dashboardToday => 'ӨНӨӨДӨР';

  @override
  String get dashboardComingUp => 'Ирээдүйн';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'өдөр',
      one: 'өдөр',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Хурдан нэвтрэх';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Зикр';

  @override
  String get quickActionDailyGrace => 'Чиглэл';

  @override
  String get quickActionPrayerTimes => 'Залбирлын цаг';

  @override
  String get askAyaraTitle => 'Ayara-гийн асуу';

  @override
  String get askAyaraSubtitle =>
      'Ямар ч исламын асуулт асуу ба үйл ухаалаг, эргүүлсэн хариу хүлээ.';

  @override
  String get askAyaraHint => 'жмж Рамадан-ийн утга юу вэ?';

  @override
  String get askAyaraSubmit => 'Асуу';

  @override
  String get wisdomOfTheDayTitle => 'Өдрийн ухаан';

  @override
  String get calendarScreenTitle => 'Исламын хуанли';

  @override
  String get calendarUpcomingOccasions => 'Ирээдүйн үйл явдал';

  @override
  String get calendarOccasionRemindersTitle => 'Үйл явдлын сэргэлтүүд';

  @override
  String get calendarOccasionRemindersHint => 'Үйл явдал өмнө орлоо анхаарав';

  @override
  String get calendarNotifPermissionDenied =>
      'Сэргэлтийн эрх цуцлагдсан. Та төхөөрөмжийн тохиргоос сэргэлтүүдийг идэвхжүүлнэ.';

  @override
  String get calendarNoEvents => 'Ирээдүйн үйл явдал олдоогүй.';

  @override
  String get calendarAddToPhone => 'Утасны календарь руу нэмэх';

  @override
  String get calendarAddedToPhone => 'Календарь руу нэмэгдсэн';

  @override
  String get calendarCountdownToday => 'ӨНӨӨДӨР';

  @override
  String get calendarCountdownTomorrow => 'МАРГААШДАМАА';

  @override
  String calendarCountdownDays(int days) {
    return '$days өдрийн дараа';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => '1-р сар';

  @override
  String get calendarMonthFeb => '2-р сар';

  @override
  String get calendarMonthMar => '3-р сар';

  @override
  String get calendarMonthApr => '4-р сар';

  @override
  String get calendarMonthMay => '5-р сар';

  @override
  String get calendarMonthJun => '6-р сар';

  @override
  String get calendarMonthJul => '7-р сар';

  @override
  String get calendarMonthAug => '8-р сар';

  @override
  String get calendarMonthSep => '9-р сар';

  @override
  String get calendarMonthOct => '10-р сар';

  @override
  String get calendarMonthNov => '11-р сар';

  @override
  String get calendarMonthDec => '12-р сар';

  @override
  String get calendarSeasonMuharramEarly =>
      'Muharram өдрүүд — Karbala эргүүлнэ';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — гунигнаа ба сэтгэлгээний өдрүүд';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — Husayn-ын дөчин өдөр';

  @override
  String get calendarSeasonRoadToArbaeen => 'Arbaeen-ийн замд';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — сантан булаагийн орхидел';

  @override
  String get calendarSeasonMidShaban =>
      'Sha\'ban дунд — Imam al-Mahdi (AJ)-ийн төрөлтүүний өдөр';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — Коран-ийн сар';

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
  String get duasScreenTitle => 'Дуа & Ziyarat';

  @override
  String get duasSearchHint => 'Дуа, ziyarat хайх…';

  @override
  String get duasFilterAll => 'Бүгд';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дуа & зийарат',
      one: '$count дуа',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Дуа олдоогүй.';

  @override
  String get duaCategoryDaily => 'Өдөр тутмын';

  @override
  String get duaCategoryWeekly => 'Долоо хоног';

  @override
  String get duaCategoryOccasions => 'Үйл явдал';

  @override
  String get duaCategoryZiyarat => 'Зийарат';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get eventTypeBirth => 'Төрөлтүүн';

  @override
  String get eventTypeMartyrdom => 'Эшлэлийн өдөр';

  @override
  String get eventTypeOccasion => 'Үйл явдал';

  @override
  String get duaCopyTooltip => 'Орчуулга хуулах';

  @override
  String get duaToggleTransliteration => 'Шулуун ясъв';

  @override
  String get duaToggleTranslation => 'Орчуулга';

  @override
  String get duaAskAiLabel => 'Ayara энэ дуаг тайлбарлахаар асуу';

  @override
  String get duaAskAiLockedLabel => 'Ayara асуу (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara сургамжийн сэргэлтүүдийг Wilaya гишүүдийн хувьд байдаг. Тохиргооны хэсгээр асар сайжруулах.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" тухай Ayara асуу — удахгүй!';
  }

  @override
  String get duaCopiedToast => 'Дуаг сошиал дээр хуулсан.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Алла хамгийн том';

  @override
  String get tasbihAlhamdulillahMeaning => 'Бүх мэдэгдэл Алла-гийн';

  @override
  String get tasbihSubhanallahMeaning => 'Аллахын нэр цэцэглэ';

  @override
  String get tasbihResetTooltip => 'Сэргээх';

  @override
  String get tasbihCompleteTitle => 'Тасбих бүрэн';

  @override
  String get tasbihCompleteMessage => 'Алла таны зикр хүлээнэ.';

  @override
  String get tasbihTapHint => 'Хаана ч даррай тоолохын тулд';

  @override
  String get tasbihatScreenTitle => 'Залбирлын гайд';

  @override
  String get tasbihatScreenSubtitle => 'ЗАЛБИРЛЫН MAGNIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'Өдөр тутмын залбиралтын үед ба дараа дуулагдсан magnifications-ийн бүрэн гайд — Ahl al-Bayt (a)-ийн уламжлыг дагалдана.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => '3 ба 4-ийн rakʿah-د дуулагдсан';

  @override
  String get tasbihatArba3Info =>
      'Shia jurisprudence-д, Tasbiḥāt al-Arbaʿa Surah al-Fatiha-г Dhuhr, Asr, Maghrib, Isha-ийн 3 ба 4-ийн rakʿah-д байрлуулнэ. Энэ нь задуур (wājib) нэг удаа дуулах, ба рекомендатив (mustaḥabb) гурав удаа дуулах байдаг.';

  @override
  String get tasbihatArba3Translation =>
      'Аллахын нэр цэцэглэ · Алла-гийн бүх мэдэгдэл\nАллахаас өөр бог байхгүй · Алла хамгийн том';

  @override
  String get tasbihatArba3CompleteTitle => 'Дуулалтыг бүрэн';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Та залбирлав хүлээлтүүлэнэ — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Нэг дуулалтаа дараа даррай';

  @override
  String get tasbihatZahraSubtitle => 'Бүх залбирлаа дараа · 100 бүсүүд';

  @override
  String get tasbihatZahraOriginLabel => 'Үүсэл';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) Пророф ﷺ-гийн үйлчлэгчээ асуусан. Тэр хэлэв: \"Та сайн зүйлсийг сонгосон уу? Залбирлаа дараа Subḥānallāh 33 удаа, Alḥamdulillāh 33 удаа, Allāhu Akbar 34 удаа дуулна. Энэ та үйлчлэгч рүүгээс амжилт гэж та дээр сайн байна.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Tasbīḥ тоолуур нээх';

  @override
  String get tasbihatDuasTitle => 'РЕКОМЕНДАТИВ DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'Та залбирлав бүрэнгүйл дараа';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Бүх задуур залбирлаа дараа';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Бүх задуур залбирлаа дараа Āyat al-Kursī дуулагч, юу ч та ба Рай хоорондын биш сахив үхүүл. Imam al-Bāqir (a) энэ нь Коран хамгийн их үгүүл хэлэв.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Бүх залбирлаа дараа · бүх suuplications сараагадах';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Пророф ﷺ ба таны цэцэглэсэн гэрээлэл (Āl Muḥammad)-г илгээх нь бүх дуаа сарааж сүүлүүлнэ. Imam al-Ṣādiq (a) хэлэв: \"Ямар ч дуаа та Мухаммад ба таны гэрээлэл-д ṣalawāt илгээх хүртэл зүүлнэ.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Бүх залбирлаа дараа · Imam та та';

  @override
  String get tasbihatDuaFarajSource =>
      'Imam al-Ḥasan al-ʿAskarī (a)-н сургасан';

  @override
  String get tasbihatDuaFarajNote =>
      'Имам ал-Махдийг (аф) дахин гарч ирэхийн тулд хийдэг дуудлага, аав нь зааж өгсөн. Энэ нь олон Шиа мусульмануудын залбиралд, амьд Имамд зориулан залбирах үйлдэл болгон залбирдаг.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Lady Fāṭima-ийн Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Maghrib & Isha дараа · ялангуяа рекомендатив';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) хэлэв чөөн дуулалтыг Tasbīḥ al-Zahrā дараа Isha сэтгэлэй сүгийн үед 1000 rakʿahs сонголт гэж сайн байна. Түүний гэрэл небэнст өндрүүлнэ.';

  @override
  String get tasbihFatimaGiftPre => 'Пророф-ийн бэлгэ';

  @override
  String get tasbihFatimaGiftPost => 'бүх залбирлаа дараа дуулагдсан';

  @override
  String get prayerTrackerTitle => 'ЗАЛБИРЛЫН TRACKER';

  @override
  String get prayerTrackerPrayed => 'Залбирсан';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count өдөр цуваа';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Бүх залбиралт өнөөдөр бүрэн. Алла хүлээнэ.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Өнөөдөр бүрэн';

  @override
  String get dhikrTrackerNotDoneToday => 'Өнөөдөр хийгдээгүй';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count өдөр цуваа';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ сэргэлт';

  @override
  String get dhikrReminderDescription =>
      'Та таны Tasbīḥ al-Zahrā (SA) дуулахын нежүүлэнгүй өдөр тутмын сэргэлт.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ сэргэлтийг идэвхжүүлэх';

  @override
  String get dhikrReminderTimeLabel => 'Сэргэлтийн цаг';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Өдөр тутмын Hadith';

  @override
  String get hadithLabelArabic => 'АРАБ';

  @override
  String get hadithLabelTranslation => 'ОРЧУУЛГА';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Энэ Hadith хуваалцах';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Өмнөхийн';

  @override
  String get hadithNavNext => 'Дараагийн';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Нарийн 14 Имам';

  @override
  String get imamsScreenSubtitle =>
      'Пайгамбар, Лэйди Фатима, болон 12 Имам — 12-р Шиа Исламд ариун, алдаагүй удирдагчид';

  @override
  String get imamLabelBorn => 'Төрөлтүүнд';

  @override
  String get imamLabelMartyrdom => 'Эшлэлийн өдөр';

  @override
  String get imamLabelStatus => 'Байдал';

  @override
  String get imamSectionBiography => 'АМЬДРАЛЛАГА';

  @override
  String get imamSectionFamousSaying => 'АЛДАРШИЛ ҮГҮҮЛ';

  @override
  String get imamRoleProphet => 'Эцсийн Пророф';

  @override
  String get imamRoleInfallible => 'Баимтлах';

  @override
  String get imamOrdinal1 => '1-р Imam';

  @override
  String get imamOrdinal2 => '2-р Imam';

  @override
  String get imamOrdinal3 => '3-р Imam';

  @override
  String get imamOrdinal4 => '4-р Imam';

  @override
  String get imamOrdinal5 => '5-р Imam';

  @override
  String get imamOrdinal6 => '6-р Imam';

  @override
  String get imamOrdinal7 => '7-р Imam';

  @override
  String get imamOrdinal8 => '8-р Imam';

  @override
  String get imamOrdinal9 => '9-р Imam';

  @override
  String get imamOrdinal10 => '10-р Imam';

  @override
  String get imamOrdinal11 => '11-р Imam';

  @override
  String get imamOrdinal12 => '12-р Imam';

  @override
  String get duaAudioScreenTitle => 'Дуаа сонсох';

  @override
  String get duaAudioScreenSubtitle =>
      'Дуаа сонгоноо даррай. Даррай эсвэл түгжээ сонсох плей эсвэл түгжээ.';

  @override
  String get duaAudioComingSoonMessage =>
      'Энэ дуаг аудио ирээдүйн өнөөлөлд боломжтой байх болно.';

  @override
  String get duaAudioClose => 'Хаах';

  @override
  String get duaAudioError =>
      'Аудиог ачаалж чадсангүй. Та чөлөө сүлжээг шалгана уу.';

  @override
  String get duaAudioMetaTransmittedBy => 'Дамжуулсан';

  @override
  String get duaAudioMetaOccasion => 'Үйл явдал';

  @override
  String get duaAudioMetaDuration => 'Үргэлжлэл';

  @override
  String get quickActionDailyHadith => 'Өдөр тутмын Hadith';

  @override
  String get quickAction14Masumeen => 'Нарийн 14 Имам';

  @override
  String get quickActionListenDuas => 'Сонсох';

  @override
  String get quickActionTasbihat => 'Залбирлын гайд';

  @override
  String get pilgrimageSectionTitle => 'Сүнс сэтгэл';

  @override
  String get pilgrimageSectionSubtitle =>
      'Бүтэн гайд Hajj & Umrah — Меккаас Аллахын Сүнс байрлалд паломничество';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Исламын тав дүүгийн тос';

  @override
  String get hajjCardDescription =>
      'Агуу жилийн паломничество — амжилт эв нэгдлийн сагаа амьдар идэвхтэй Мусульмана';

  @override
  String get hajjScreenTitle => 'Hajj гайд';

  @override
  String get hajjScreenSubtitle => 'Алхам эхлүүлэх гайд агуу паломничество';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Цөмийн паломничество';

  @override
  String get umrahCardDescription =>
      'Гүнзгийрэнгүйлэх сүнс сэтгэл чадал бүхэл жилд гүйцэтгэж болно';

  @override
  String get umrahScreenTitle => 'Umrah гайд';

  @override
  String get umrahScreenSubtitle => 'Алхам эхлүүлэх гайд цөмийн паломничество';

  @override
  String get pilgrimageStepsTitle => 'Обрядууд & алхам';

  @override
  String get pilgrimageImportantNotesTitle => 'Чухал тэмдэглэл';

  @override
  String get pilgrimageDuaTitle => 'Энэ алхамд зориулсан дуа';

  @override
  String get pilgrimageJafariNoteTitle => 'Жафарийн фиқхийн тэмдэглэл';

  @override
  String get pilgrimageComplete => '✓ Дууссан';

  @override
  String get pilgrimageMarkDone => 'Бүрэн гэж тэмдэглэх';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total алхамд';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes минут';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia паломник';

  @override
  String get pilgrimageShiaNoteBody =>
      'Олон Шиа зочид Мадина руу Пайгамбар Мухаммед (SAW)-ийн зиарат хийхийн тулд Масжид ал-Набави болон Жаннат ал-Бакид оршдог булшнууд руу явдаг. Эдгээр зочлолууд гүн гүнзгий сүнслэг ач холбогдолтой боловч Хажжийн ёс заншил биш юм.';

  @override
  String get hajjIntro =>
      'Хажж бол Исламын тав дахь тулгуур, бие махбодийн болон санхүүгийн хувьд чадавхитай бүх мусульмануудад амьдралынхаа туршид нэг удаа заавал хийх ёстой. Олон 12-р Шиа зочид өнөөдөр Хажж ал-Тамату\' хийдэг, энэ нь Дул Хижжа сард Пайгамбар Ибрахим (АС), түүний хүү Исмаил (АС), болон Лэйди Хажарын мөрөөр явдаг. Энэ гарын авлага нь Жа\'фари ёс заншлын дагуу ёслолуудыг дагаж, Мадина дахь зиарат нь Хажжийн өмнө эсвэл дараа гүн гүнзгий хайртай аялал хэвээр байна.';

  @override
  String get umrahIntro =>
      'Umrah нь цөмийн паломничество Меккаас ба, Hajj-аас ялгаатай, жилийн ямар цаг гүйцэтгэж болно. Гэхдээ задуур биш, энэ нь асар их сүнс инжид ба рекомендатив сүнс байдаг. Энэ нь Hajj-ийн хэдэн обрядыг хуваалцах гэхдээ богино, дөрөв гол обрядууд төүндүүлэх.';

  @override
  String get voiceInputTitle => 'Дууны оруулга';

  @override
  String get voiceInputMicTitle => 'Микрофон';

  @override
  String get voiceInputMicSubtitle =>
      'Тайлангаа бичихийн оронд Ask Ayara-д ярь.';

  @override
  String get voiceInputMicDenied => 'Микрофоны нэвтрэлт татгалзсан.';

  @override
  String get voiceInputSpeak => 'Ярих';

  @override
  String get voiceInputListening => 'Сонсож байна…';

  @override
  String get voiceInputPermissionDenied =>
      'Дууны оруулгад микрофоны нэвтрэлт шаардлагатай.';
}
