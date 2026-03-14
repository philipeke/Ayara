// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'เลือกภาษาของคุณ';

  @override
  String get languageSelectSub =>
      'คุณสามารถเปลี่ยนภาษาได้ในภายหลังได้จากการตั้งค่า';

  @override
  String get actionContinue => 'ดำเนินการต่อ';

  @override
  String get languageSuggestedHeader => 'ที่แนะนำ';

  @override
  String get languageAllHeader => 'ภาษาทั้งหมด';

  @override
  String get languageSuggestedBadge => 'ที่แนะนำ';

  @override
  String get languageSearchHint => 'ค้นหา…';

  @override
  String get planBasic => 'มาตรฐาน';

  @override
  String get planPremium => 'วิลายะห์';

  @override
  String get categorySlot01 => 'คำแนะนำรายวัน';

  @override
  String get categorySlot02 => 'ความเชื่อและความไว้วางใจ';

  @override
  String get categorySlot03 => 'การทำสมาธิในการสวดมนต์';

  @override
  String get categorySlot04 => 'ความอดทนและความหวัง';

  @override
  String get categorySlot05 => 'ขอการให้อภัย';

  @override
  String get categorySlot06 => 'ความเมตตาและเห็นใจ';

  @override
  String get categorySlot07 => 'ศรัทธาและความแข็งแกร่ง';

  @override
  String get categorySlot08 => 'หัวใจที่ขอบคุณ';

  @override
  String get categorySlot09 => 'จุดมุ่งหมายของชีวิต';

  @override
  String get categorySlot10 => 'สายสัมพันธ์ในครอบครัว';

  @override
  String get categorySlot11 => 'สันติภาพภายใน';

  @override
  String get categorySlot12 => 'ปัญญาของศาสดา';

  @override
  String get categorySlot13 => 'บุคลิกภาพที่ดี';

  @override
  String get categorySlot14 => 'ต้านทานการล่อลวง';

  @override
  String get categorySlot15 => 'ไซร์ของค่ำคืน';

  @override
  String get categoryCustom => 'การทำสมาธิส่วนบุคคล';

  @override
  String get dhikrMeaningSubhanallah => 'ทุกสิ่งของอัลลอฮ์นั้นบริสุทธิ์';

  @override
  String get dhikrMeaningAlhamdulillah => 'การสรรเสริญทั้งหมดเป็นของอัลลอฮ์';

  @override
  String get dhikrMeaningAllahuAkbar => 'อัลลอฮ์นั้นยิ่งใหญ่ที่สุด';

  @override
  String get quranVerseHeartAtRest =>
      'แท้จริงแล้ว ในการระลึกถึงอัลลอฮ์นั้นหัวใจจึงได้สมานสุข';

  @override
  String get promptHint =>
      'แตะหมวดหมู่เพื่อรับคำแนะนำและการทำสมาธิในศาสนาอิสลาม';

  @override
  String get currentLanguage => 'ภาษาปัจจุบัน';

  @override
  String get settingsLanguage => 'การตั้งค่าภาษา';

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get chooseLanguage => 'เลือกภาษาของคุณ';

  @override
  String get continueCta => 'ดำเนินการต่อ';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count คำ',
      one: '$count คำ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ตัวเลือก';

  @override
  String get newCta => 'ใหม่';

  @override
  String get actionsTitle => 'คุณต้องการทำอะไร';

  @override
  String get copy => 'คัดลอก';

  @override
  String get share => 'แบ่งปัน';

  @override
  String get close => 'ปิด';

  @override
  String get copiedToast => 'คัดลอกไปยังคลิปบอร์ด';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'ไม่สามารถสร้างคำตอบใหม่ได้';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nคุณต้องการลองอีกครั้งหรือไม่';
  }

  @override
  String get cancelCta => 'ยกเลิก';

  @override
  String get retryCta => 'ลองอีกครั้ง';

  @override
  String get authTitle => 'สร้างบัญชีของคุณ';

  @override
  String get continueAsGuest => 'ดำเนินการต่อในฐานะแขก';

  @override
  String get signInGoogle => 'ลงชื่อเข้าใช้ด้วย Google';

  @override
  String get signInApple => 'ลงชื่อเข้าใช้ด้วย Apple';

  @override
  String get signInEmail => 'ลงชื่อเข้าใช้ด้วยอีเมล';

  @override
  String get upgradeWithApple => 'ดำเนินการต่อด้วย Apple';

  @override
  String get mustAccept =>
      'คุณต้องยอมรับเงื่อนไขและยืนยันนโยบายความเป็นส่วนตัว';

  @override
  String get termsLabel => 'ฉันยอมรับข้อกำหนดการให้บริการ';

  @override
  String get privacyLabel => 'ฉันได้อ่านนโยบายความเป็นส่วนตัว';

  @override
  String get marketingOptIn => 'ฉันตกลงที่จะรับข่าวสารและข้อเสนอ';

  @override
  String get openTerms => 'ข้อกำหนดการให้บริการ';

  @override
  String get openPrivacy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get accountSection => 'บัญชี';

  @override
  String get guestMode => 'โหมดแขก';

  @override
  String get signedIn => 'เข้าสู่ระบบแล้ว';

  @override
  String get upgradeHint =>
      'บันทึกการทำสมาธิของคุณในทั่วอุปกรณ์โดยการสร้างบัญชี';

  @override
  String get upgradeWithGoogle => 'ดำเนินการต่อด้วย Google';

  @override
  String get signOut => 'ออกจากระบบ';

  @override
  String get snackUpgraded => 'บัญชีได้อัปเกรดด้วย Google ✅';

  @override
  String get snackSignedIn => 'เข้าสู่ระบบด้วย Google ✅';

  @override
  String get snackSignedOut => 'ออกจากระบบแล้ว';

  @override
  String get snackSignedInApple => 'เข้าสู่ระบบด้วย Apple ✅';

  @override
  String get snackSignedInGoogle => 'เข้าสู่ระบบด้วย Google ✅';

  @override
  String get snackUpgradedApple => 'บัญชีได้อัปเกรดด้วย Apple ✅';

  @override
  String get snackUpgradedGoogle => 'บัญชีได้อัปเกรดด้วย Google ✅';

  @override
  String get historyTitle => 'การทำสมาธิในอดีต';

  @override
  String get historyOpenCta => 'การทำสมาธิในอดีต';

  @override
  String get historyEmpty => 'ยังไม่มีการทำสมาธิที่บันทึกไว้';

  @override
  String get historyDeleteTitle => 'ลบการทำสมาธิหรือ';

  @override
  String get historyDeleteBody => 'สิ่งนี้จะลบรายการที่เลือกไว้อย่างถาวร';

  @override
  String get deleteCta => 'ลบ';

  @override
  String get historyButton => 'การทำสมาธิในอดีต';

  @override
  String get historyEmptyTitle => 'ยังไม่มีการทำสมาธิ';

  @override
  String get historyEmptyBody =>
      'สร้างบางสิ่งก่อน — รายการที่บันทึกไว้ของคุณจะปรากฏตรงนี้';

  @override
  String get historyDelete => 'ลบ';

  @override
  String get footerTitle => 'ด้วยวิลายะห์ อิมานและสะบร์';

  @override
  String get footerSubtitle => 'ทีละการสวดมนต์';

  @override
  String get genericErrorSnack =>
      'มีบางอย่างผิดพลาด — โปรดลองอีกครั้งในอีกสักครู่';

  @override
  String get upgradeAccountCta =>
      'บันทึกการทำสมาธิของคุณในทั่วอุปกรณ์ – สร้างบัญชี';

  @override
  String get deleteAccount => 'ลบบัญชี';

  @override
  String get exportData => 'ส่งออกข้อมูลของฉัน';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ค่อยๆ 🐯\nAyara ต้องการเวลาสักครู่ก่อนจะทำสิ่งต่อไป…';

  @override
  String get rateDailyLimit =>
      'คุณหมดการทำสมาธิไปแล้ว\nได้รับการทำสมาธิเพิ่มเติมหรืออัปเกรดเป็นวิลายะห์';

  @override
  String get rateCreditsExhausted =>
      'คุณได้ใช้การทำสมาธิทั้งหมด\nเติมเงินหรืออัปเกรดเป็นวิลายะห์เพื่อดำเนินการต่อ';

  @override
  String get rateGraceCreditsExhausted =>
      'คุณหมดการทำสมาธิไปแล้ว\nได้รับการทำสมาธิเพิ่มเติมหรืออัปเกรดเป็นวิลายะห์';

  @override
  String get premiumDescription =>
      'วิลายะห์ปลดล็อคฟีเจอร์พรีเมียม หมวดหมู่ในอนาคต และเสื่อมทรามพิเศษ';

  @override
  String ratePlanExhausted(String plan) {
    return 'การทำสมาธิของคุณเป็นที่ว่างเปล่าตอนนี้ แผน: $plan';
  }

  @override
  String rateCheckFailed(String message) {
    return 'ไม่สามารถตรวจสอบการทำสมาธิของคุณได้: $message';
  }

  @override
  String get rateCheckGenericError =>
      'มีบางอย่างผิดพลาดขณะตรวจสอบการทำสมาธิของคุณ';

  @override
  String get aiFallbackGeneric =>
      'มีบางอย่างผิดพลาด — โปรดลองอีกครั้งในอีกสักครู่';

  @override
  String get limitSectionTitle => 'การทำสมาธิ';

  @override
  String get limitTodayLabel => 'การใช้งาน';

  @override
  String limitCreditsLabel(Object credits) {
    return 'การทำสมาธิที่เหลือ: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'แผน: $plan';
  }

  @override
  String get limitLoadingLabel => 'กำลังโหลด…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'การทำสมาธิ';

  @override
  String get aiLimitSubtitle =>
      'แต่ละการตอบสนองใช้การทำสมาธิ 1 รายการ มาตรฐานประกอบด้วยการทำสมาธิเริ่มต้น วิลายะห์ปลดล็อคหมวดหมู่พรีเมียมและเปิดใช้งานการเติมเงิน';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return 'ใช้การทำสมาธิ $used / $total';
  }

  @override
  String get creditsSectionTitle => 'การทำสมาธิ';

  @override
  String get creditsUsageLabel => 'การใช้งาน';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'การทำสมาธิที่เหลือ: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'แผน: $plan';
  }

  @override
  String get creditsLoadingLabel => 'กำลังโหลด…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'การทำสมาธิ';

  @override
  String get creditsSubtitle =>
      'แต่ละการตอบสนองใช้การทำสมาธิ 1 รายการ มาตรฐานประกอบด้วยการทำสมาธิเริ่มต้น วิลายะห์ปลดล็อคหมวดหมู่พรีเมียมและเปิดใช้งานการเติมเงิน';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return 'ใช้การทำสมาธิ $used / $total';
  }

  @override
  String get settingsDeleteTitle => 'ลบบัญชี';

  @override
  String get settingsDeleteDescription =>
      'ลบบัญชีและข้อมูลที่เกี่ยวข้องทั้งหมดอย่างถาวร';

  @override
  String get settingsDeleteButtonLabel => 'ลบบัญชีของฉัน';

  @override
  String get settingsDeleteDialogTitle => 'ลบบัญชี';

  @override
  String get settingsDeleteDialogBody =>
      'การกระทำนี้ถาวรและไม่สามารถเลิกทำได้\n\nแชท ประวัติ และข้อมูลบัญชีทั้งหมดของคุณจะถูกลบ';

  @override
  String get settingsDeleteDialogCancel => 'ยกเลิก';

  @override
  String get settingsDeleteDialogConfirm => 'ลบ';

  @override
  String get settingsFreeLimitUsedTitle => 'ใช้การทำสมาธิเริ่มต้น';

  @override
  String get settingsFreeLimitUsedDescription =>
      'การทำสมาธิเริ่มต้นสำหรับอุปกรณ์นี้ถูกใช้แล้ว อัปเกรดเป็นวิลายะห์หรือซื้อการทำสมาธิเพิ่มเติมเพื่อดำเนินการต่อ';

  @override
  String get settingsStarterCreditsUsedTitle => 'ใช้การทำสมาธิเริ่มต้น';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'การทำสมาธิเริ่มต้นสำหรับอุปกรณ์นี้ถูกใช้แล้ว อัปเกรดเป็นวิลายะห์หรือซื้อการทำสมาธิเพิ่มเติมเพื่อดำเนินการต่อ';

  @override
  String get deviceBoundError =>
      'อุปกรณ์นี้เชื่อมโยงกับบัญชีอื่นแล้ว โปรดลงชื่อเข้าใช้ด้วยบัญชีเดิม';

  @override
  String get premiumTitle => 'โหมดวิลายะห์';

  @override
  String get premiumSubtitleBasic => 'ปลดล็อคประสบการณ์ Ayara เต็มรูปแบบ';

  @override
  String get premiumSubtitlePremium =>
      'คุณใช้วิลายะห์ต้องการการทำสมาธิเพิ่มเติมหรือไม่';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'แผนปัจจุบัน: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'การทำสมาธิ: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'ไม่มีการซื้อให้ใช้งานขณะนี้';

  @override
  String get premiumSignInToPurchase =>
      'ลงชื่อเข้าใช้เพื่อซื้อการทำสมาธิหรือปลดล็อควิลายะห์';

  @override
  String get premiumRestorePurchases => 'คืนการซื้อ';

  @override
  String get premiumProcessing => 'กำลังประมวลผล…';

  @override
  String get premiumRestoreHintTitle =>
      'ซื้อวิลายะห์หรือการทำสมาธิบนอุปกรณ์นี้หรืออุปกรณ์อื่นแล้ว';

  @override
  String get premiumRestoreHintBody => 'คืนการซื้อของคุณหากไม่ปรากฏขึ้น';

  @override
  String get premiumBuyCredits200 => 'ซื้อการทำสมาธิ 200 รายการ';

  @override
  String get premiumBuyCredits400 => 'ซื้อการทำสมาธิ 400 รายการ';

  @override
  String get premiumBecomePremiumOneTime => 'อัปเกรดเป็นโหมดวิลายะห์';

  @override
  String get premiumTopupHint =>
      'ด้วยวิลายะห์ คุณสามารถเติมเงินด้วยการทำสมาธิเพิ่มเติมเมื่อจำเป็น';

  @override
  String get premiumUpgradeCta => 'อัปเกรด';

  @override
  String get premiumRequiredForCategory =>
      'หมวดหมู่นี้มีให้เฉพาะผู้ใช้วิลายะห์เท่านั้น อัปเกรดในการตั้งค่าเพื่อปลดล็อคเนื้อหาพรีเมียมทั้งหมด';

  @override
  String get premiumBenefitsBasic =>
      'ปลดล็อควิลายะห์เพื่อรับการทำสมาธิเพิ่มเติม เข้าถึงหมวดหมู่พรีเมียม และดำเนินการต่อเมื่อคุณต้องการคำแนะนำ';

  @override
  String get premiumBenefitsPremium =>
      'คุณอยู่ในโหมดวิลายะห์ หากต่ำลง ให้เพิ่มการทำสมาธิพิเศษและดำเนินการต่อโดยไม่ขัดจังหวะ';

  @override
  String get premiumButtonBecomePremium => 'ปลดล็อควิลายะห์';

  @override
  String get premiumButtonTopup1000 => 'เพิ่มการทำสมาธิ 1000 รายการ';

  @override
  String get premiumBadge => 'วิลายะห์ใช้งานอยู่';

  @override
  String get premiumLoadingStore => 'กำลังโหลดร้านค้า…';

  @override
  String get premiumProductNotAvailable =>
      'ผลิตภัณฑ์นี้ยังไม่มีในร้านค้า โปรดลองอีกครั้งในภายหลัง';

  @override
  String get premiumPurchaseError =>
      'มีบางอย่างผิดพลาดกับการซื้อ โปรดลองอีกครั้ง';

  @override
  String get premiumBuyCredits100 => 'เพิ่มการทำสมาธิ 100 รายการ';

  @override
  String get premiumFeatureLocked => 'ปลดล็อควิลายะห์เพื่อเข้าถึงฟีเจอร์นี้';

  @override
  String get lockedCategoriesHint =>
      'บางหมวดหมู่เป็นการจองสำหรับสมาชิกวิลายะห์ ปลดล็อคเพื่อสำรวจการทำสมาธิทุกรายการในการเดินทางของคุณ';

  @override
  String get freePlanBlockedTitle => 'คุณได้ใช้การทำสมาธิเริ่มต้นของคุณแล้ว';

  @override
  String get freePlanBlockedBody =>
      'คุณอยู่ในแผนมาตรฐานที่มีการทำสมาธิเริ่มต้น และคุณถึงขีดจำกัด เพื่อดำเนินการต่อ — และปลดล็อคหมวดหมู่พรีเมียม — อัปเกรดเป็นวิลายะห์';

  @override
  String get freePlanBlockedCtaGoPremium => 'ดูตัวเลือกวิลายะห์ด้านล่าง';

  @override
  String get graceBlockedTitle => 'คุณได้ใช้การทำสมาธิเริ่มต้นของคุณแล้ว';

  @override
  String get graceBlockedBody =>
      'คุณอยู่ในแผนมาตรฐานที่มีการทำสมาธิเริ่มต้น และคุณถึงขีดจำกัด เพื่อดำเนินการต่อ — และปลดล็อคหมวดหมู่พรีเมียม — อัปเกรดเป็นวิลายะห์';

  @override
  String get graceBlockedCtaGoPremium => 'ดูตัวเลือกวิลายะห์ด้านล่าง';

  @override
  String get rateGuestMustSignIn =>
      'ลงชื่อเข้าใช้เพื่อใช้ Ayara และการทำสมาธิของคุณ';

  @override
  String get guestNoCreditsTitle => 'โหมดแขก';

  @override
  String get guestNoCreditsBody =>
      'ในฐานะแขก คุณสามารถเรียกดูแอปได้ แต่คุณไม่สามารถใช้การทำสมาธิได้ เข้าสู่ระบบในภายหลังในการตั้งค่าเพื่อใช้การทำสมาธิและปลดล็อคการซื้อ';

  @override
  String get guestDialogContinue => 'ดำเนินการต่อ';

  @override
  String get guestDialogLoginInstead => 'ลงชื่อเข้าใช้แทน';

  @override
  String get optionalLabel => 'ไม่บังคับ';

  @override
  String get accountDeleteSuccessTitle => 'ลบบัญชีแล้ว';

  @override
  String get accountDeleteSuccessBody =>
      'บัญชีและข้อมูลที่เกี่ยวข้องของคุณถูกลบเรียบร้อยแล้ว';

  @override
  String get accountDeleteSuccessClose => 'ปิด';

  @override
  String get accountDeleteErrorTitle => 'ไม่สามารถลบบัญชี';

  @override
  String get accountDeleteErrorClose => 'ตกลง';

  @override
  String get accountDeleteReauthCancelled =>
      'การยืนยันตัวตนอีกครั้งถูกยกเลิก โปรดลงชื่อเข้าใช้อีกครั้งและลองลบอีกครั้ง';

  @override
  String get accountDeleteReauthRequired =>
      'การลบบัญชีต้องใช้การเข้าสู่ระบบล่าสุด โปรดออกจากระบบ เข้าสู่ระบบอีกครั้ง และลองลบอีกครั้ง';

  @override
  String get settingsDeletePermanentWarning =>
      'การกระทำนี้ถาวรและไม่สามารถเลิกทำได้ ข้อมูลทั้งหมดที่เกี่ยวข้องกับบัญชีของคุณจะถูกลบ';

  @override
  String get dailyGraceTitle => 'คำแนะนำรายวัน';

  @override
  String get dailyGraceScriptureLabel => 'ข้อคัมภีร์ของวัน';

  @override
  String get dailyGraceSaintLabel => 'นักวิชาการของสัปดาห์';

  @override
  String get dailyGraceReflectionLabel => 'การทำสมาธิเย็น';

  @override
  String get dailyGraceCopiedToast => 'คัดลอกข้อคัมภีร์ไปยังคลิปบอร์ด';

  @override
  String get locationConsentLabel =>
      'อนุญาต Ayara ให้ใช้ตำแหน่งของฉันสำหรับทิศทางกิบลาและเวลาการสวด';

  @override
  String get locationConsentHint =>
      'ใช้สำหรับฟีเจอร์เหล่านี้เท่านั้น ตำแหน่งของคุณไม่เคยถูกแบ่งปันหรือเก็บไว้';

  @override
  String get askPageTitle => 'ถามคำถาม Ayara';

  @override
  String get askPageDescription =>
      'ถามคำถามเกี่ยวกับศรัทธา การสวด ชีวิต หรือการปฏิบัติศาสนาอิสลาม และรับคำแนะนำที่มีรากฐานมาจากอัลกุรอานและการสอนของอห์ลุลบัยต์';

  @override
  String get askPageInputHint => 'พิมพ์คำถามของคุณที่นี่…';

  @override
  String get askPageSubmitCta => 'ถาม';

  @override
  String get askPageInputEmptyError => 'โปรดเขียนคำถามก่อน';

  @override
  String get askResultYourQuestion => 'คำถามของคุณ';

  @override
  String get guidancePageTitle => 'กิบลา';

  @override
  String get qiblaFacingMecca => 'หันหน้าไปยังมักกะห์';

  @override
  String get qiblaCompassInstruction =>
      'หมุนโทรศัพท์ของคุณจนกว่าเข็มทองจะชี้ขึ้น\nทิศทางนั้นชี้ไปยังกิบลา (มักกะห์)';

  @override
  String get qiblaGpsUnavailableBody =>
      'สัญญาณ GPS อ่อน ออกไปข้างนอกและแตะลองอีกครั้ง';

  @override
  String get qiblaRetry => 'ลองอีกครั้ง';

  @override
  String get qiblaTitle => 'ทิศทางกิบลา';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km กม. ถึงมักกะห์';
  }

  @override
  String get qiblaLocationNeededTitle => 'ต้องการตำแหน่ง';

  @override
  String get qiblaLocationNeededBody =>
      'อนุญาตการเข้าถึงตำแหน่งเพื่อให้ Ayara สามารถคำนวณทิศทางของ Kaaba ในมักกะห์จากที่ที่คุณอยู่ได้';

  @override
  String get qiblaOpenSettings => 'เปิดการตั้งค่า';

  @override
  String get qiblaCompassLoading => 'ค้นหาตำแหน่งของคุณ…';

  @override
  String get qiblaTowardMecca => 'ไปยังมักกะห์';

  @override
  String get prayerTimesTitle => 'เวลาสวด';

  @override
  String get prayerTimesFajr => 'ฟัจร์';

  @override
  String get prayerTimesDhuhr => 'ดูฮูร์';

  @override
  String get prayerTimesAsr => 'อัศร์';

  @override
  String get prayerTimesMaghrib => 'มักห์ริบ';

  @override
  String get prayerTimesIsha => 'อิสไฮะ';

  @override
  String get prayerTimesLocationNeededTitle => 'ต้องการตำแหน่ง';

  @override
  String get prayerTimesLocationNeededBody =>
      'อนุญาตการเข้าถึงตำแหน่งเพื่อให้ Ayara สามารถคำนวณเวลาสวดที่แม่นยำสำหรับเมืองของคุณได้';

  @override
  String get prayerTimesNextLabel => 'ถัดไป';

  @override
  String get prayerTimesDoneLabel => 'เสร็จสิ้น';

  @override
  String get monthlyPrayerTimesTitle => 'เวลาสวดรายเดือน';

  @override
  String get monthlyPrayerTimesViewButton => 'ดูเต็มเดือน';

  @override
  String get monthlyPrayerTimesNextMonth => 'เดือนถัดไป';

  @override
  String get monthlyPrayerTimesDayHeader => 'วัน';

  @override
  String get sharePrayerTimes => 'แบ่งปันเวลาสวด';

  @override
  String get notificationsSectionTitle => 'การแจ้งเตือน';

  @override
  String get notificationsSectionSubtitle =>
      'เตือนการสวด เหตุการณ์ปฏิทิน และอื่นๆ';

  @override
  String get dailyReflectionReminderTitle => 'การทำสมาธิรายวัน';

  @override
  String get dailyReflectionReminderDescription =>
      'การเตือนรายวันที่ละเมียดอ่อนเพื่อเปิด Ayara และเชื่อมต่อกับศรัทธาของคุณ';

  @override
  String get dailyReflectionReminderEnable => 'เปิดใช้งานการเตือนรายวัน';

  @override
  String get dailyReflectionReminderTimeLabel => 'เวลาเตือน';

  @override
  String get prayerNotificationsTitle => 'เตือนการสวด';

  @override
  String get prayerNotificationsDescription =>
      'รับการเตือนที่ละเมียดอ่อนก่อนแต่ละเวลาสวดเพื่อช่วยให้คุณเชื่อมต่อตลอดวัน';

  @override
  String get prayerNotificationsEnable => 'เปิดใช้งานการเตือนการสวด';

  @override
  String get prayerNotificationsOpenSettings => 'เปิดการตั้งค่าการแจ้งเตือน';

  @override
  String get prayerNotificationsDenied => 'ปิดใช้งานการแจ้งเตือน';

  @override
  String get prayerNotificationsDeniedHint =>
      'ไปที่การตั้งค่าและอนุญาตการแจ้งเตือนสำหรับ Ayara เพื่อรับการเตือนเวลาสวด';

  @override
  String get notificationsConsentLabel => 'อนุญาตการแจ้งเตือนสำหรับเวลาสวด';

  @override
  String get prayerNotifTitleFajr => '🌅 ฟัจร์ — สวดเช้า';

  @override
  String get prayerNotifBodyFajr =>
      'ฟัจร์คือการสวดของเช้าของอห์ลุลบัยต์ อิมาม อาลี (AS) กล่าว: ปกป้องการสวดเช้าเช่นเดียวกับการปกป้องสิ่งมีค่าที่สุดของคุณ ลุกขึ้น ทำความบริสุทธิ์ เข้าสู่ระบบ และยืนอยู่ต่อหน้าอัลลอฮ์';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ดูฮูร์ — สวดกลางวัน';

  @override
  String get prayerNotifBodyDhuhr =>
      'อิมามของอห์ลุลบัยต์ให้คุณค่ากับทุกช่วงเวลาของการระลึก หยุดวันของคุณ รวม Dhuhr กับ Asr หากจำเป็น และส่งหัวใจกลับคืนสู่อัลลอฮ์';

  @override
  String get prayerNotifTitleAsr => '🌤️ อัศร์ — สวดบ่าย';

  @override
  String get prayerNotifBodyAsr =>
      'ปกป้องการสวด เพราะมันคือพันธมิตรระหว่างคุณและอัลลอฮ์ ถึงเวลา Asr แล้ว — อย่าปล่อยให้มันผ่านไปโดยไม่ระลึกถึง';

  @override
  String get prayerNotifTitleMaghrib => '🌇 มักห์ริบ — สวดพลบค่ำ';

  @override
  String get prayerNotifBodyMaghrib =>
      'ดวงอาทิตย์ได้ลับเหว — ช่วงเวลาที่อห์ลุลบัยต์ถือว่าศักดิ์สิทธิ์สำหรับการวิงวอน นำเสนอ Maghrib และเปิดมือของคุณไปยังอัลลอฮ์ใน dua ก่อนค่ำวันเริ่มต้น';

  @override
  String get prayerNotifTitleIsha => '🌙 อิสไฮะ — สวดกลางคืน';

  @override
  String get prayerNotifBodyIsha =>
      'สิ้นสุดวันของคุณในบริษัทของอัลลอฮ์ อิมามส่งเสริม Salat al-Layl หลัง Isha — แต่ก่อนอื่น ให้สวด Isha และปิดวันด้วยการระลึกถึงของเขา';

  @override
  String get outOfReflectionsBannerText => 'คุณได้ใช้การทำสมาธิทั้งหมด';

  @override
  String get outOfReflectionsBannerCta => 'รับเพิ่มเติม';

  @override
  String get dhikrPageTitle => 'ธิกร์';

  @override
  String get dhikrTapToCount => 'แตะวงกลมเพื่อนับ';

  @override
  String get dhikrResetButton => 'รีเซ็ต';

  @override
  String get dhikrComplete => 'มาชา อัลลอฮ์';

  @override
  String get dhikrCompleteMessage =>
      'คุณได้ปิดการระลึก 100 ครั้งแล้ว ขอให้พวกเขาเป็นแสงสำหรับหัวใจของคุณ';

  @override
  String get disclaimerTitle => 'เกี่ยวกับคำแนะนำของแอปนี้';

  @override
  String get disclaimerBody =>
      'Ayara จัดเตรียมการทำสมาธิศาสนาอิสลาม การเตือน และเนื้อหาจิตวิญญาณเพื่อสนับสนุนการเดินทางศรัทธาส่วนบุคคลของคุณ โดยมีรากฐานมาจากอัลกุรอานและการสอนของอห์ลุลบัยต์ เนื้อหานี้นำเสนอเพื่อวัตถุประสงค์ข้อมูลทั่วไปและแรงบันดาลใจเท่านั้น\n\nAyara ไม่แทนที่วิทยาศาสตร์ที่มีคุณวุฒิ\nคำแนะนำในแอปนี้ไม่ได้แทนที่นักวิชาการศาสนาอิสลามที่ได้รับการฝึกอบรม มาร์จา่ หรือครูที่ได้รับการฝึกฝนทางศาสนา ในศาสนาอิสลามชีอะห์ การแนะนำทางศาสนามีรากฐานมาจากโรงเรียน Ja\'fari ของนิติศาสตร์ (fiqh) และประเพณีของการติดตามมาร์จา่ที่มีชีวิต (แหล่งของการเลียนแบบ) — นักกฎหมายที่มีคุณวุฒิซึ่งมีคำตัดสินใจแนะนำผู้เชื่อในการปฏิบัติศาสนา หากคุณมีคำถามเกี่ยวกับการปกครองศาสนา เรื่องฮาลาลและหารัม หรือข้อมูลทางศาสนาส่วนบุคคล โปรดขอคำแนะนำจากมาร์จา่ที่มีคุณวุฒิหรือนักวิชาการในชุมชนของคุณ\n\nแอปนี้ไม่ออกคำตัดสินใจศาสนา\nAyara ไม่ทำให้เกิดการกำหนดอย่างมีอำนาจเกี่ยวกับเรื่องของ fiqh หรือข้อมูลทางศาสนาส่วนบุคคล ไม่มีสิ่งใดที่นี่ควรได้รับการปฏิบัติเป็น fatwa หรือการสอนศาสนาที่ผูกพัน\n\nความสำคัญของอห์ลุลบัยต์\nในศาสนาอิสลามชีอะห์ ศาสดา มูฮัมมัด ﷺ และครัวเรือนที่บริสุทธิ์ของเขา — อห์ลุลบัยต์ — คือผู้นำที่มีอำนาจของชุมชนอิสลามหลังจากอัลกุรอาน อิมามสิบสองคนของอห์ลุลบัยต์เป็นผู้ตีความที่แต่งตั้งโดยพระเจ้าของการสอนศาสนาอิสลาม เนื้อหาในแอปนี้สะท้อนประเพณีนี้และพยายามให้เกียรติแก่มันด้วยความซื่อสัตย์\n\nเรื่องชุมชน\nแอปนี้มีวัตถุประสงค์เพื่อส่งเสริมการมีส่วนร่วมในศรัทธาของคุณในขณะที่เคารพบทบาทสำคัญของมัสยิดในท้องถิ่น ศูนย์อิสลาม และชุมชนศาสนาของคุณ เราขอให้คุณอยู่เชื่อมต่อกับและเรียนรู้จากครูที่มีคุณวุฒิอยู่ใกล้คุณ';

  @override
  String get disclaimerClose => 'ฉันเข้าใจแล้ว';

  @override
  String get disclaimerInfoTooltip => 'เกี่ยวกับคำแนะนำของแอปนี้';

  @override
  String get disclaimerSettingsSubtitle =>
      'สำหรับวัตถุประสงค์ข้อมูลทั่วไปเท่านั้น แตะเพื่ออ่านข้อปฏิเสธความรับผิดชอบเต็มรูปแบบ';

  @override
  String get disclaimerSectionHeader => 'ข้อปฏิเสธความรับผิดชอบคำแนะนำ';

  @override
  String get navHome => 'หน้าแรก';

  @override
  String get navReflect => 'สมาธิ';

  @override
  String get navDuas => 'ดุอาสห์';

  @override
  String get navCalendar => 'ปฏิทิน';

  @override
  String get dashboardToday => 'วันนี้';

  @override
  String get dashboardComingUp => 'กำลังมาถึง';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'วัน',
      one: 'วัน',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'การเข้าถึงด่วน';

  @override
  String get quickActionQibla => 'กิบลา';

  @override
  String get quickActionDhikr => 'ธิกร์';

  @override
  String get quickActionDailyGrace => 'คำแนะนำ';

  @override
  String get quickActionPrayerTimes => 'เวลาสวด';

  @override
  String get askAyaraTitle => 'ถาม Ayara';

  @override
  String get askAyaraSubtitle =>
      'ถามคำถามศาสนาอิสลามใด ๆ และรับคำตอบที่ชาญฉลาดและเป็นคำแนะนำ';

  @override
  String get askAyaraHint => 'เช่น ความสำคัญของเดือนรมดะนคืออะไร';

  @override
  String get askAyaraSubmit => 'ถาม';

  @override
  String get wisdomOfTheDayTitle => 'ปัญญาของวัน';

  @override
  String get calendarScreenTitle => 'ปฏิทินอิสลาม';

  @override
  String get calendarUpcomingOccasions => 'อีกเหตุการณ์ที่จะมาถึง';

  @override
  String get calendarOccasionRemindersTitle => 'เตือนเหตุการณ์';

  @override
  String get calendarOccasionRemindersHint =>
      'แจ้งให้ทราบในตอนเย็นก่อนแต่ละเหตุการณ์';

  @override
  String get calendarNotifPermissionDenied =>
      'ปฏิเสธการอนุญาตการแจ้งเตือน เปิดใช้งานในการตั้งค่าอุปกรณ์ของคุณ';

  @override
  String get calendarNoEvents => 'ไม่พบเหตุการณ์ที่จะมาถึง';

  @override
  String get calendarAddToPhone => 'เพิ่มลงในปฏิทินโทรศัพท์';

  @override
  String get calendarAddedToPhone => 'เพิ่มลงในปฏิทินแล้ว';

  @override
  String get calendarCountdownToday => 'วันนี้';

  @override
  String get calendarCountdownTomorrow => 'พรุ่งนี้';

  @override
  String calendarCountdownDays(int days) {
    return 'ใน $days วัน';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'ม.ค.';

  @override
  String get calendarMonthFeb => 'ก.พ.';

  @override
  String get calendarMonthMar => 'มี.ค.';

  @override
  String get calendarMonthApr => 'เม.ย.';

  @override
  String get calendarMonthMay => 'พ.ค.';

  @override
  String get calendarMonthJun => 'มิ.ย.';

  @override
  String get calendarMonthJul => 'ก.ค.';

  @override
  String get calendarMonthAug => 'ส.ค.';

  @override
  String get calendarMonthSep => 'ก.ย.';

  @override
  String get calendarMonthOct => 'ต.ค.';

  @override
  String get calendarMonthNov => 'พ.ย.';

  @override
  String get calendarMonthDec => 'ธ.ค.';

  @override
  String get calendarSeasonMuharramEarly =>
      'วันของ Muharram — จำเคราะห์ Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — วันของการไว้ทุกข์และการทำสมาธิ';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — สี่สิบวันของ Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'ถนนสู่ Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — รุ่งอรุณของ启示';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — วันเกิดของ Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — เดือนของอัลกุรอาน';

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
  String get duasScreenTitle => 'ดุอาสห์และซิยารัต';

  @override
  String get duasSearchHint => 'ค้นหา duas, ziyarat…';

  @override
  String get duasFilterAll => 'ทั้งหมด';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'ไม่พบ duas';

  @override
  String get duaCategoryDaily => 'รายวัน';

  @override
  String get duaCategoryWeekly => 'รายสัปดาห์';

  @override
  String get duaCategoryOccasions => 'เหตุการณ์';

  @override
  String get duaCategoryZiyarat => 'ซิยารัต';

  @override
  String get duaCategoryTasbih => 'ตัสบีห์';

  @override
  String get eventTypeBirth => 'เกิด';

  @override
  String get eventTypeMartyrdom => 'การถูกศึกษาธิการ';

  @override
  String get eventTypeOccasion => 'อีก เหตุการณ์';

  @override
  String get duaCopyTooltip => 'คัดลอกคำแปล';

  @override
  String get duaToggleTransliteration => 'การถอดเสียง';

  @override
  String get duaToggleTranslation => 'การแปล';

  @override
  String get duaAskAiLabel => 'ขอ Ayara อธิบาย dua นี้';

  @override
  String get duaAskAiLockedLabel => 'ขอ Ayara (วิลายะห์)';

  @override
  String get duaAiLockedMessage =>
      'คำอธิบาย Ayara มีให้สำหรับสมาชิก Wilaya อัปเกรดในการตั้งค่า';

  @override
  String duaAiComingSoon(String name) {
    return 'ถาม Ayara เกี่ยวกับ \"$name\" — เร็ว ๆ นี้!';
  }

  @override
  String get duaCopiedToast => 'Dua คัดลอกไปยังคลิปบอร์ด';

  @override
  String get tasbihAllahuAkbarMeaning => 'อัลลอฮ์นั้นยิ่งใหญ่ที่สุด';

  @override
  String get tasbihAlhamdulillahMeaning => 'การสรรเสริญทั้งหมดเป็นของอัลลอฮ์';

  @override
  String get tasbihSubhanallahMeaning => 'ทุกสิ่งของอัลลอฮ์นั้นบริสุทธิ์';

  @override
  String get tasbihResetTooltip => 'รีเซ็ต';

  @override
  String get tasbihCompleteTitle => 'ตัสบีห์เสร็จสิ้น';

  @override
  String get tasbihCompleteMessage => 'ขอให้อัลลอฮ์ยอมรับ dhikr ของคุณ';

  @override
  String get tasbihTapHint => 'แตะที่ใดก็ได้เพื่อนับ';

  @override
  String get tasbihatScreenTitle => 'คู่มือการสวด';

  @override
  String get tasbihatScreenSubtitle => 'การสรรเสริญการสวด';

  @override
  String get tasbihatScreenDescription =>
      'คู่มือที่สมบูรณ์ของการสรรเสริญการสวดสวดระหว่างและหลังการสวดรายวัน — ตามประเพณีของอห์ลุลบัยต์ (a)';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'ส่วนประกอบขึ้นในครั้งที่ 3 และ 4 ว่าน';

  @override
  String get tasbihatArba3Info =>
      'ในนิติศาสตร์ Shia Tasbiḥāt al-Arbaʿa แทนที่ Surah al-Fatiha ใน 3rd และ 4th rakʿah ของ Dhuhr Asr Maghrib และ Isha เป็นส่วนบังคับ (wājib) ที่จะทำซ้ำได้ครั้งเดียว และขอแนะนำให้ (mustaḥabb) ทำซ้ำสามครั้ง';

  @override
  String get tasbihatArba3Translation =>
      'ทุกสิ่งของอัลลอฮ์นั้นบริสุทธิ์ · การสรรเสริญทั้งหมดเป็นของอัลลอฮ์\nไม่มีพระเจ้าเว้นแต่อัลลอฮ์ · อัลลอฮ์นั้นยิ่งใหญ่ที่สุด';

  @override
  String get tasbihatArba3CompleteTitle => 'การอ่านเสร็จสิ้น';

  @override
  String get tasbihatArba3CompleteMessage =>
      'ขอให้การสวดของคุณได้รับการยอมรับ — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'แตะหลังการอ่านแต่ละครั้ง';

  @override
  String get tasbihatZahraSubtitle => 'หลังสวดทุกครั้ง · 100 เม็ด';

  @override
  String get tasbihatZahraOriginLabel => 'ต้นกำเนิด';

  @override
  String get tasbihatZahraHadith =>
      'สตรี Fatima al-Zahra (sa) ขอให้ศาสดา ﷺ มีบริการ เขากล่าว: \"ฉันจะไม่แนะนำคุณถึงบางสิ่งที่ดีกว่าหรือ ร้องเรียนจดหมาย Subḥānallāh 33 ครั้ง Alḥamdulillāh 33 ครั้ง และ Allāhu Akbar 34 ครั้งหลังสวดทุกครั้ง นั่นดีกว่าคนรับใช้สำหรับคุณ\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'เปิด Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'DUĀS ที่แนะนำ';

  @override
  String get tasbihatDuasSubtitle => 'หลังจากเสร็จสิ้นการสวดของคุณ';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'หลังสวดทุกครั้ง';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ผู้ที่อ่าน Āyat al-Kursī หลังสวดทุกครั้ง ไม่มีสิ่งใดอยู่ระหว่างเขาและสวรรค์นอกจากความตาย อิมาม al-Bāqir (a) กล่าว ว่ามันเป็นหนึ่งในข้อคำสั่งที่ยิ่งใหญ่ที่สุดในอัลกุรอาน';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'หลังสวดทุกครั้ง · 封印ทั้งหมด supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'การส่งสวดมนต์ต่อศาสดา ﷺ และครอบครัวที่บริสุทธิ์ของเขา (Āl Muḥammad) ขอแนะนำให้封印ทุก dua Imam al-Ṣādiq (a) กล่าว: \"dua ใด ๆ ถูกระงับจนกว่าคุณจะส่ง ṣalawāt ต่อ Muḥammad และครอบครัวของเขา\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'หลังสวดทุกครั้ง · สำหรับอิมามแห่งเวลาของเรา';

  @override
  String get tasbihatDuaFarajSource => 'สอนโดย Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'dua สำหรับการปรากฏตัวของ Imam al-Mahdī (af) อิมามคนที่สิบสอง สอนโดยพ่อของเขา ทำซ้ำทุกวันโดยผู้ติดตาม Shia หลังสวดทุกครั้งเป็นการกระทำของศรัทธาต่ออิมามที่มีชีวิต';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ของ Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'หลัง Maghrib & Isha · ขอแนะนำโดยเฉพาะ';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) กล่าว ว่าการอ่าน Tasbīḥ al-Zahrā หลัง Isha ก่อนนอนดีกว่า 1000 rakʿahs ของการสวดที่เป็นตัวเลือก แสงของมันขึ้นไปยังสวรรค์';

  @override
  String get tasbihFatimaGiftPre => 'ของขวัญจากศาสดา';

  @override
  String get tasbihFatimaGiftPost => 'อ่านหลังสวดทุกครั้ง';

  @override
  String get prayerTrackerTitle => 'ตัวติดตามการสวด';

  @override
  String get prayerTrackerPrayed => 'สวด';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count วันติดต่อกัน';
  }

  @override
  String get prayerTrackerAllComplete =>
      'ทำการสวดทั้งหมดในวันนี้ ขอให้อัลลอฮ์ยอมรับ';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'เสร็จสิ้นในวันนี้';

  @override
  String get dhikrTrackerNotDoneToday => 'ไม่ได้ทำในวันนี้';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count วันติดต่อกัน';
  }

  @override
  String get dhikrReminderTitle => 'เตือน Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'การเตือนรายวันที่ละเมียดอ่อนเพื่ออ่าน Tasbīḥ al-Zahrā (SA)';

  @override
  String get dhikrReminderEnable => 'เปิดใช้งาน Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'เวลาเตือน';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith รายวัน';

  @override
  String get hadithLabelArabic => 'ภาษาอาหรับ';

  @override
  String get hadithLabelTranslation => 'การแปล';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'แบ่งปัน Hadith นี้';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'ก่อนหน้า';

  @override
  String get hadithNavNext => 'ต่อไป';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'ศาสดา สตรี Fatima และ อิมามสิบสอง — ผู้นำที่บริสุทธิ์ของศาสนาอิสลาม';

  @override
  String get imamLabelBorn => 'เกิด';

  @override
  String get imamLabelMartyrdom => 'การถูกศึกษาธิการ';

  @override
  String get imamLabelStatus => 'สถานะ';

  @override
  String get imamSectionBiography => 'ชีวประวัติ';

  @override
  String get imamSectionFamousSaying => 'คำพูดที่มีชื่อเสียง';

  @override
  String get imamRoleProphet => 'ศาสดาคนสุดท้าย';

  @override
  String get imamRoleInfallible => 'ที่บริสุทธิ์';

  @override
  String get imamOrdinal1 => 'อิมามคนที่ 1';

  @override
  String get imamOrdinal2 => 'อิมามคนที่ 2';

  @override
  String get imamOrdinal3 => 'อิมามคนที่ 3';

  @override
  String get imamOrdinal4 => 'อิมามคนที่ 4';

  @override
  String get imamOrdinal5 => 'อิมามคนที่ 5';

  @override
  String get imamOrdinal6 => 'อิมามคนที่ 6';

  @override
  String get imamOrdinal7 => 'อิมามคนที่ 7';

  @override
  String get imamOrdinal8 => 'อิมามคนที่ 8';

  @override
  String get imamOrdinal9 => 'อิมามคนที่ 9';

  @override
  String get imamOrdinal10 => 'อิมามคนที่ 10';

  @override
  String get imamOrdinal11 => 'อิมามคนที่ 11';

  @override
  String get imamOrdinal12 => 'อิมามคนที่ 12';

  @override
  String get duaAudioScreenTitle => 'ฟังดุอาสห์';

  @override
  String get duaAudioScreenSubtitle =>
      'เลือก dua เพื่อฟัง แตะไทล์เพื่อเล่นหรือหยุด';

  @override
  String get duaAudioComingSoonMessage =>
      'เสียงของ dua นี้จะมีให้ในการอัปเดตในเร็ว ๆ นี้';

  @override
  String get duaAudioClose => 'ปิด';

  @override
  String get duaAudioError =>
      'ไม่สามารถโหลดเสียง โปรดตรวจสอบการเชื่อมต่อของคุณ';

  @override
  String get duaAudioMetaTransmittedBy => 'ส่งโดย';

  @override
  String get duaAudioMetaOccasion => 'อีก เหตุการณ์';

  @override
  String get duaAudioMetaDuration => 'ระยะเวลา';

  @override
  String get quickActionDailyHadith => 'Hadith รายวัน';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'ฟัง';

  @override
  String get quickActionTasbihat => 'คู่มือการสวด';

  @override
  String get pilgrimageSectionTitle => 'การเดินทางศักดิ์สิทธิ์';

  @override
  String get pilgrimageSectionSubtitle =>
      'คู่มือที่สมบูรณ์เพื่อหัจญ์และอุมราห์ — การแสดงการหลงใจไปยังบ้านศักดิ์สิทธิ์ของอัลลอฮ์ในเมกกะ';

  @override
  String get hajjCardTitle => 'หัจญ์';

  @override
  String get hajjCardSubtitle => 'เสาที่ห้าของศาสนาอิสลาม';

  @override
  String get hajjCardDescription =>
      'การแสดงการหลงใจประจำปีครั้งใหญ่ — บังคับใจเมื่อครั้งหนึ่งในชีวิตสำหรับมุสลิมที่สามารถ';

  @override
  String get hajjScreenTitle => 'คู่มือหัจญ์';

  @override
  String get hajjScreenSubtitle =>
      'คำแนะนำขั้นตอนต่อขั้นตอนเพื่อการแสดงการหลงใจครั้งใหญ่';

  @override
  String get umrahCardTitle => 'อุมราห์';

  @override
  String get umrahCardSubtitle => 'การแสดงการหลงใจที่เล็กน้อย';

  @override
  String get umrahCardDescription =>
      'การเดินทางจิตวิญญาณที่มีผลประโยชน์อย่างมากซึ่งสามารถทำได้ตลอดปี';

  @override
  String get umrahScreenTitle => 'คู่มือ Umrah';

  @override
  String get umrahScreenSubtitle =>
      'คำแนะนำขั้นตอนต่อขั้นตอนเพื่อการแสดงการหลงใจที่เล็กน้อย';

  @override
  String get pilgrimageStepsTitle => 'พิธีกรรมและขั้นตอน';

  @override
  String get pilgrimageImportantNotesTitle => 'บันทึกที่สำคัญ';

  @override
  String get pilgrimageDuaTitle => 'ดุอาสำหรับขั้นตอนนี้';

  @override
  String get pilgrimageJafariNoteTitle => 'หมายเหตุฟิกห์ญา\'ฟารี';

  @override
  String get pilgrimageComplete => '✓ เสร็จสิ้น';

  @override
  String get pilgrimageMarkDone => 'ทำเครื่องหมายว่าเสร็จสิ้น';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done จาก $total ขั้นตอน';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes นาที';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'ผู้บุกเบิก Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'ผู้บุกเบิก Shia โดยทั่วไปยังเดินทางไปยัง Medina เพื่อไปเยี่ยม Masjid al-Nabawi ของศาสดา Muhammad (SAW) และอสรพิสัยของอิมามที่ Jannat al-Baqi การเยี่ยมเหล่านี้มีความสำคัญจิตวิญญาณมหาศาล และถือว่าเป็นส่วนสำคัญของการเดินทางสำหรับ Shia Muslims ส่วนใหญ่';

  @override
  String get hajjIntro =>
      'หัจญ์เป็นเสาที่ห้าของศาสนาอิสลาม บังคับใจเมื่อครั้งหนึ่งในชีวิตสำหรับมุสลิมทุกคนที่สามารถทางกายภาพและการเงิน ทำในเดือนฎุลฮิจจะห์ มันติดตามรอยเท้าของศาสดา Ibrahim (AS) ลูกชายของเขา Ismail (AS) และสตรี Hajar สำหรับมุสลิม Shia หัจญ์ยังรวมถึงพรของการไปเยี่ยมสถานที่พักผ่อนของศาสดา (SAW) และ Ahlul Bayt ใน Medina';

  @override
  String get umrahIntro =>
      'Umrah คือการแสดงการหลงใจที่เล็กน้อยไปยัง Mecca และเมื่อไม่เหมือน Hajj สามารถทำได้ตลอดปี แม้ว่าจะไม่บังคับใจแต่มันมีรางวัลจิตวิญญาณมหาศาล และถือว่าเป็นการกระทำการสนับสนุนที่มีประสิทธิผล มันแบ่งปันพิธีกรรมหลายอย่างกับหัจญ์ แต่สั้นลง ประกอบด้วยสี่พิธีกรรมหลัก';
}
