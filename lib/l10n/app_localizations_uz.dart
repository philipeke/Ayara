// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Tilni tanlang';

  @override
  String get languageSelectSub =>
      'Buni keyinroq Sozlamalar orqali o\'zgartirishingiz mumkin';

  @override
  String get actionContinue => 'Davom etish';

  @override
  String get languageSuggestedHeader => 'Tavsiya etilgan';

  @override
  String get languageAllHeader => 'Barcha tillar';

  @override
  String get languageSuggestedBadge => 'Tavsiya etilgan';

  @override
  String get languageSearchHint => 'Qidiruv…';

  @override
  String get planBasic => 'Standart';

  @override
  String get planPremium => 'Viloya';

  @override
  String get categorySlot01 => 'Kunlik Rahbarlik';

  @override
  String get categorySlot02 => 'Iman va Ishonch';

  @override
  String get categorySlot03 => 'Namaz Refleksiyasi';

  @override
  String get categorySlot04 => 'Sabr va Umid';

  @override
  String get categorySlot05 => 'Maghfiratsini Izlang';

  @override
  String get categorySlot06 => 'Rahm va Shafqat';

  @override
  String get categorySlot07 => 'Iman va Kuch';

  @override
  String get categorySlot08 => 'Shukur Qalb';

  @override
  String get categorySlot09 => 'Hayot Maqsadi';

  @override
  String get categorySlot10 => 'Oila Aloqalari';

  @override
  String get categorySlot11 => 'Ichki Tinchlik';

  @override
  String get categorySlot12 => 'Payg\'ambar Hikmati';

  @override
  String get categorySlot13 => 'Yaxshi Xislatlar';

  @override
  String get categorySlot14 => 'Shahvatga Qarshi';

  @override
  String get categorySlot15 => 'Kechki Dhikr';

  @override
  String get categoryCustom => 'Shaxsiy Tafakkur';

  @override
  String get dhikrMeaningSubhanallah => 'Allah muqaddas';

  @override
  String get dhikrMeaningAlhamdulillah => 'Barcha hamd Allohga tegishli';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah eng katta';

  @override
  String get quranVerseHeartAtRest =>
      'Albatta, Allohning zikrida qalblar tinchlik topadi.';

  @override
  String get promptHint =>
      'Islomiy rahbarlik va tafakkur uchun kategoriyani bosing';

  @override
  String get currentLanguage => 'Joriy til';

  @override
  String get settingsLanguage => 'Til sozlamalari';

  @override
  String get settingsTitle => 'Sozlamalar';

  @override
  String get chooseLanguage => 'Tilni tanlang';

  @override
  String get continueCta => 'Davom etish';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count so\'z',
      one: '$count so\'z',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Variantlar';

  @override
  String get newCta => 'Yangi';

  @override
  String get actionsTitle => 'Nima qilmoqchisiz?';

  @override
  String get copy => 'Nusxalash';

  @override
  String get share => 'Ulashish';

  @override
  String get close => 'Yopish';

  @override
  String get copiedToast => 'Buferga nusxalandi';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Yangi javob yaratib bo\'lmadi';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nBoshqatdan urinib ko\'rmoqchisiz?';
  }

  @override
  String get cancelCta => 'Bekor qilish';

  @override
  String get retryCta => 'Qayta urinish';

  @override
  String get authTitle => 'Hisobingizni yarating';

  @override
  String get continueAsGuest => 'Mehmon sifatida davom etish';

  @override
  String get signInGoogle => 'Google orqali kirish';

  @override
  String get signInApple => 'Apple orqali kirish';

  @override
  String get signInEmail => 'Email orqali kirish';

  @override
  String get upgradeWithApple => 'Apple orqali davom etish';

  @override
  String get mustAccept =>
      'Siz Shartlar va Maxfiylik siyosatiga rozi bo\'lishingiz kerak.';

  @override
  String get termsLabel => 'Men Xizmat ko\'rsatish shartlarini qabul qilaman';

  @override
  String get privacyLabel => 'Men Maxfiylik siyosatini o\'qidim';

  @override
  String get marketingOptIn => 'Men yangiliklar va takliflarni olishga rozi';

  @override
  String get openTerms => 'Xizmat ko\'rsatish shartlari';

  @override
  String get openPrivacy => 'Maxfiylik siyosati';

  @override
  String get accountSection => 'Hisob';

  @override
  String get guestMode => 'Mehmon rejimi';

  @override
  String get signedIn => 'Kirilgan';

  @override
  String get upgradeHint =>
      'Hisobingizni yaratish orqali o\'z refleksiyalarini turli qurilmalarda saqlang.';

  @override
  String get upgradeWithGoogle => 'Google orqali davom etish';

  @override
  String get signOut => 'Chiqish';

  @override
  String get snackUpgraded => 'Hisob Google orqali yangilandi ✅';

  @override
  String get snackSignedIn => 'Google orqali kirildi ✅';

  @override
  String get snackSignedOut => 'Chiqildi';

  @override
  String get snackSignedInApple => 'Apple orqali kirildi ✅';

  @override
  String get snackSignedInGoogle => 'Google orqali kirildi ✅';

  @override
  String get snackUpgradedApple => 'Hisob Apple orqali yangilandi ✅';

  @override
  String get snackUpgradedGoogle => 'Hisob Google orqali yangilandi ✅';

  @override
  String get historyTitle => 'Oldingi refleksiyalar';

  @override
  String get historyOpenCta => 'Oldingi refleksiyalar';

  @override
  String get historyEmpty => 'Hali saqlangan refleksiyalar yo\'q.';

  @override
  String get historyDeleteTitle => 'Refleksiyani o\'chirish?';

  @override
  String get historyDeleteBody =>
      'Bu tanlangan elementni butunlay olib tashlab yuboradi.';

  @override
  String get deleteCta => 'O\'chirish';

  @override
  String get historyButton => 'Oldingi Refleksiyalar';

  @override
  String get historyEmptyTitle => 'Hali refleksiyalar yo\'q';

  @override
  String get historyEmptyBody =>
      'Avval biror narsa yarating — saqlangan elementlaringiz shu yerda ko\'rinadi.';

  @override
  String get historyDelete => 'O\'chirish';

  @override
  String get footerTitle => 'Viloya, Iman va Sabr bilan';

  @override
  String get footerSubtitle => 'Bir namaz bittada';

  @override
  String get genericErrorSnack =>
      'Nimadir noto\'g\'ri ketdi — bir zum keyin qayta urinib ko\'ring.';

  @override
  String get upgradeAccountCta =>
      'O\'z refleksiyalarini turli qurilmalarda saqlang – hisobingizni yarating';

  @override
  String get deleteAccount => 'Hisobni o\'chirish';

  @override
  String get exportData => 'Mening ma\'lumotlarini eksport qilish';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Oson, yer 🐯\nAyara keyingi narsadan oldin bir zum kutish kerak…';

  @override
  String get rateDailyLimit =>
      'Hozircha refleksiyalar tugadi.\nKo\'proq refleksiyalar oling yoki Viloyaga yangilang.';

  @override
  String get rateCreditsExhausted =>
      'Barcha refleksiyalarni ishlatdingiz.\nEslatmani to\'ldiring yoki Viloyaga yangilang.';

  @override
  String get rateGraceCreditsExhausted =>
      'Hozircha refleksiyalar tugadi.\nKo\'proq refleksiyalar oling yoki Viloyaga yangilang.';

  @override
  String get premiumDescription =>
      'Viloya premium xususiyatlarni, kelajakdagi kategoriyalarni va maxsus badge ni ochadiy.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Hozircha refleksiyalaringiz tugadi. Reja: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Refleksiyalarini tekshirib bo\'lmadi: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Refleksiyalarini tekshirishda nimadir noto\'g\'ri ketdi.';

  @override
  String get aiFallbackGeneric =>
      'Nimadir noto\'g\'ri ketdi — bir zum keyin qayta urinib ko\'ring.';

  @override
  String get limitSectionTitle => 'Refleksiyalar';

  @override
  String get limitTodayLabel => 'Foydalanish';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Qolgan refleksiyalar: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Reja: $plan';
  }

  @override
  String get limitLoadingLabel => 'Yuklanmoqda…';

  @override
  String get limitLoadingLabelDescription =>
      'Foydalanish statistikasi olinayotganda refleksiyalar kartasida ko\'rsatiladi.';

  @override
  String get aiLimitTitle => 'Refleksiyalar';

  @override
  String get aiLimitSubtitle =>
      'Har bir javob 1 refleksiyasini ishlatadi. Standart boshlang\'ich refleksiyalarni o\'z ichiga oladi. Viloya premium kategoriyalarni ochadiy va to\'plamlarni yoqadiy.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total refleksiyalar ishlatildi';
  }

  @override
  String get creditsSectionTitle => 'Refleksiyalar';

  @override
  String get creditsUsageLabel => 'Foydalanish';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Qolgan refleksiyalar: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Reja: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Yuklanmoqda…';

  @override
  String get creditsLoadingLabelDescription =>
      'Refleksiya statistikasi olinayotganda ko\'rsatiladi.';

  @override
  String get creditsTitle => 'Refleksiyalar';

  @override
  String get creditsSubtitle =>
      'Har bir javob 1 refleksiyasini ishlatadi. Standart boshlang\'ich refleksiyalarni o\'z ichiga oladi. Viloya premium kategoriyalarni ochadiy va to\'plamlarni yoqadiy.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total refleksiyalar ishlatildi';
  }

  @override
  String get settingsDeleteTitle => 'Hisobni o\'chirish';

  @override
  String get settingsDeleteDescription =>
      'Hisobingizni va barcha bog\'liq ma\'lumotlarni butunlay o\'chirish.';

  @override
  String get settingsDeleteButtonLabel => 'Hisobimni o\'chirish';

  @override
  String get settingsDeleteDialogTitle => 'Hisobni o\'chirish?';

  @override
  String get settingsDeleteDialogBody =>
      'Bu harakat doimiy va bekor qilib bo\'lmaydi.\n\nBarcha chatlar, tarix va hisob ma\'lumotlari o\'chiriladi.';

  @override
  String get settingsDeleteDialogCancel => 'Bekor qilish';

  @override
  String get settingsDeleteDialogConfirm => 'O\'chirish';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Boshlang\'ich refleksiyalar ishlatildi';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Ushbu qurilma uchun boshlang\'ich refleksiyalar ishlatildi. Viloyaga yangilang yoki ko\'proq refleksiyalar sotib oling.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Boshlang\'ich refleksiyalar ishlatildi';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Ushbu qurilma uchun boshlang\'ich refleksiyalar ishlatildi. Viloyaga yangilang yoki ko\'proq refleksiyalar sotib oling.';

  @override
  String get deviceBoundError =>
      'Bu qurilma boshqa hisobga bog\'langan. Asl hisobingiz bilan kirish uchun harakat qiling.';

  @override
  String get premiumTitle => 'Viloya rejimi';

  @override
  String get premiumSubtitleBasic => 'To\'liq Ayara tajribasini ochadiy.';

  @override
  String get premiumSubtitlePremium =>
      'Siz Viloyada. Ko\'proq refleksiyalar kerakmi?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Joriy reja: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Refleksiyalar: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Xaridlar hozircha mavjud emas.';

  @override
  String get premiumSignInToPurchase =>
      'Refleksiyalar sotib olish yoki Viloyani ochish uchun kirish.';

  @override
  String get premiumRestorePurchases => 'Xaridlarni qaytarish';

  @override
  String get premiumProcessing => 'Ishlanmoqda…';

  @override
  String get premiumRestoreHintTitle =>
      'Allaqachon Viloya yoki refleksiyalar sotib oldingizmi bu qurilmada yoki boshqasida?';

  @override
  String get premiumRestoreHintBody =>
      'Agar ular ko\'rinmayotgan bo\'lsa, xaridlarni qaytaring.';

  @override
  String get premiumBuyCredits200 => '200 refleksiya sotib olish';

  @override
  String get premiumBuyCredits400 => '400 refleksiya sotib olish';

  @override
  String get premiumBecomePremiumOneTime => 'Viloya rejimiga yangilash';

  @override
  String get premiumTopupHint =>
      'Viloya bilan siz zarur bo\'lganda qo\'shimcha refleksiyalar bilan to\'plab olishingiz mumkin.';

  @override
  String get premiumUpgradeCta => 'Yangilash';

  @override
  String get premiumRequiredForCategory =>
      'Bu kategoriya faqat Viloya foydalanuvchilari uchun mavjud. Barcha premium tarkibni ochish uchun Sozlamalardan yangilang.';

  @override
  String get premiumBenefitsBasic =>
      'Viloyani ochish uchun qo\'shimcha refleksiyalar oling, premium kategoriyalarga kirish oling va zarur bo\'lganda davom etish.';

  @override
  String get premiumBenefitsPremium =>
      'Siz Viloya rejimida bo\'lyapsiz. Agar kam bo\'lsa, qo\'shimcha refleksiyalar qo\'shing va to\'xtovlarsiz davom etish.';

  @override
  String get premiumButtonBecomePremium => 'Viloyani ochish';

  @override
  String get premiumButtonTopup1000 => '1000 refleksiya qo\'shish';

  @override
  String get premiumBadge => 'Viloya faol';

  @override
  String get premiumLoadingStore => 'Magistr yuklanmoqda…';

  @override
  String get premiumProductNotAvailable =>
      'Bu mahsulot hali do\'konda mavjud emas. Keyinroq qayta urinib ko\'ring.';

  @override
  String get premiumPurchaseError =>
      'Xaridda nimadir noto\'g\'ri ketdi. Qayta urinib ko\'ring.';

  @override
  String get premiumBuyCredits100 => '100 refleksiya qo\'shish';

  @override
  String get premiumFeatureLocked =>
      'Ushbu xususiyatni ishlatish uchun Viloyani ochadiy.';

  @override
  String get lockedCategoriesHint =>
      'Ba\'zi kategoriyalar Viloya a\'zolari uchun ajratilgan. Yo\'lingizda har bir refleksiyasini o\'rganish uchun ularni ochadiy.';

  @override
  String get freePlanBlockedTitle =>
      'Boshlang\'ich refleksiyalarni ishlatdingiz';

  @override
  String get freePlanBlockedBody =>
      'Siz boshlang\'ich refleksiyalar bilan Standart rejimda bo\'lyapsiz va chegaraga yetdingiz. Davom etish va premium kategoriyalarni ochish uchun Viloyaga yangilang.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Pastda Viloya variantlarini ko\'ring';

  @override
  String get graceBlockedTitle => 'Boshlang\'ich refleksiyalarni ishlatdingiz';

  @override
  String get graceBlockedBody =>
      'Siz boshlang\'ich refleksiyalar bilan Standart rejimda bo\'lyapsiz va chegaraga yetdingiz. Davom etish va premium kategoriyalarni ochish uchun Viloyaga yangilang.';

  @override
  String get graceBlockedCtaGoPremium => 'Pastda Viloya variantlarini ko\'ring';

  @override
  String get rateGuestMustSignIn =>
      'Ayarani ishlatish va refleksiyalarni ishlatish uchun kirish.';

  @override
  String get guestNoCreditsTitle => 'Mehmon rejimi';

  @override
  String get guestNoCreditsBody =>
      'Mehmon sifatida siz ilovani ko\'rib chiqishingiz mumkin, lekin refleksiyalarni ishlatish mumkin emas. Refleksiyalarni ishlatish va xaridlarni ochish uchun keyinroq Sozlamalardan kirish.';

  @override
  String get guestDialogContinue => 'Davom etish';

  @override
  String get guestDialogLoginInstead => 'Buning o\'rniga kirish';

  @override
  String get optionalLabel => 'ixtiyoriy';

  @override
  String get accountDeleteSuccessTitle => 'Hisob o\'chirildi';

  @override
  String get accountDeleteSuccessBody =>
      'Hisobingiz va bog\'liq ma\'lumotlar muvaffaqiyatli o\'chirildi.';

  @override
  String get accountDeleteSuccessClose => 'Yopish';

  @override
  String get accountDeleteErrorTitle => 'Hisobni o\'chira olmadi';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Qayta autentifikatsiya bekor qilindi. Iltimos, qayta kirish va o\'chirish uchun qayta urinish.';

  @override
  String get accountDeleteReauthRequired =>
      'Hisob o\'chirish so\'nggi kirishshini talab qiladi. Iltimos, chiqish, qayta kirish va o\'chirish uchun qayta urinish.';

  @override
  String get settingsDeletePermanentWarning =>
      'Bu harakat doimiy va bekor qilib bo\'lmaydi. Hisobingiz bilan bog\'langan barcha ma\'lumotlar o\'chiriladi.';

  @override
  String get dailyGraceTitle => 'Kunlik Rahbarlik';

  @override
  String get dailyGraceScriptureLabel => 'KUNNING OYATI';

  @override
  String get dailyGraceSaintLabel => 'HAFTANING FIGURI';

  @override
  String get dailyGraceReflectionLabel => 'KECHKI TAFAKKUR';

  @override
  String get dailyGraceCopiedToast => 'Oyat buferga nusxalandi';

  @override
  String get locationConsentLabel =>
      'Ayaraning Qibla yo\'nalishini va namaz vaqtlarini bilish uchun mening joylashuvimdan foydalanishiga ruxsat berish';

  @override
  String get locationConsentHint =>
      'Faqat ushbu xususiyatlar uchun ishlatiladi. Sizning joylashuvingiz hech qachon ulashilmaydi yoki saqlanmaydi.';

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
  String get askPageTitle => 'Ayaraning So\'ring';

  @override
  String get askPageDescription =>
      'Iman, namaz, hayot yoki Islom amaliyoti haqida nima haqida so\'ring va Qur\'on va Ahl al-Bayt o\'g\'retmalariga asoslangan rahbarlik oling.';

  @override
  String get askPageInputHint => 'So\'rovingizni shu yerga yozing…';

  @override
  String get askPageSubmitCta => 'So\'rash';

  @override
  String get askPageInputEmptyError => 'Avval so\'rov yozing.';

  @override
  String get askResultYourQuestion => 'Sizning so\'rovingiz';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Makka tomon qarab';

  @override
  String get qiblaCompassInstruction =>
      'Telifoningizni burungu igna yuqoriga ko\'rsatguncha aylantiring.\nU yo\'nalish Qiblaga (Makkaga) ko\'rsatadi.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signali zaif. Ochiqda harakatlaning va Qayta urinish bosing.';

  @override
  String get qiblaRetry => 'Qayta urinish';

  @override
  String get qiblaTitle => 'Qibla Yo\'nalishi';

  @override
  String qiblaDistanceLabel(String km) {
    return 'Makkagacha $km km';
  }

  @override
  String get qiblaLocationNeededTitle => 'Joylashuv talab qilinadi';

  @override
  String get qiblaLocationNeededBody =>
      'Siz qayerda bo\'lishingizdan qat\'i nazar, Ayara Makkayadagi Kaabaning yo\'nalishini hisoblash uchun joylashuvga ruxsat bering.';

  @override
  String get qiblaOpenSettings => 'Sozlamalarni Oching';

  @override
  String get qiblaCompassLoading => 'Pozitsiyangiz topilmoqda…';

  @override
  String get qiblaTowardMecca => 'Makkaga tomon';

  @override
  String get prayerTimesTitle => 'Namaz Vaqtlari';

  @override
  String get prayerTimesFajr => 'Fajr';

  @override
  String get prayerTimesDhuhr => 'Zuhr';

  @override
  String get prayerTimesAsr => 'Asr';

  @override
  String get prayerTimesMaghrib => 'Magrib';

  @override
  String get prayerTimesIsha => 'Isha';

  @override
  String get prayerTimesLocationNeededTitle => 'Joylashuv talab qilinadi';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara sizning shaxar uchun aniq namaz vaqtlarini hisoblash uchun joylashuvga ruxsat bering.';

  @override
  String get prayerTimesNextLabel => 'Keyingi';

  @override
  String get prayerTimesDoneLabel => 'Tayyor';

  @override
  String get monthlyPrayerTimesTitle => 'Oylik Namaz Vaqtlari';

  @override
  String get monthlyPrayerTimesViewButton => 'To\'liq Oyni Ko\'rish';

  @override
  String get monthlyPrayerTimesNextMonth => 'Keyingi oy';

  @override
  String get monthlyPrayerTimesDayHeader => 'Kun';

  @override
  String get sharePrayerTimes => 'Namaz vaqtlarini ulashish';

  @override
  String get notificationsSectionTitle => 'Bildirishnomalar';

  @override
  String get notificationsSectionSubtitle =>
      'Namaz eslatmalari, taqvim hodisalari va boshqalar';

  @override
  String get dailyReflectionReminderTitle => 'Kunlik Refleksiya';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayarani ochish va imonga bog\'lanish uchun kunlik yumshoq eslatma.';

  @override
  String get dailyReflectionReminderEnable => 'Kunlik eslatmani yoqish';

  @override
  String get dailyReflectionReminderTimeLabel => 'Eslatma vaqti';

  @override
  String get prayerNotificationsTitle => 'Namaz Eslatmalari';

  @override
  String get prayerNotificationsDescription =>
      'Kun bo\'ylab bog\'langan qolish uchun har bir namaz vaqtidan oldin yumshoq eslatma oling.';

  @override
  String get prayerNotificationsEnable => 'Namaz eslatmalarini yoqish';

  @override
  String get prayerNotificationsOpenSettings =>
      'Bildirishnoma sozlamalarini ochish';

  @override
  String get prayerNotificationsDenied => 'Bildirishnomalar o\'chirildi';

  @override
  String get prayerNotificationsDeniedHint =>
      'Namaz vaqti eslatmalarini olish uchun Sozlamalarni oching va Ayara uchun bildirishnomalarni yoqing.';

  @override
  String get notificationsConsentLabel =>
      'Namaz vaqtlari uchun bildirishnomalarni yoqish';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Subhotki Namazi';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr Ahl al-Bayt ning tongalarning namazidir. Imam Ali (AS) aytdi: Subhotki namazni o\'z eng qimmatli xamaniga saqlab qol. Turib, o\'zingni tozala va Alloh oldida to\'xtab qol.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Zuhr — Kunduzi Namazi';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayt imamlar har bir zikrning har bir daqiqasini qadrladilar. Kunningizni pauza qiling, zarur bo\'lsa Zuhr bilan Asrni birlashtiring va qalbingizni Allohga qaytaring.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Tushkunligi Namazi';

  @override
  String get prayerNotifBodyAsr =>
      'Namazni saqlang, chunki u siz va Alloh o\'rtasidagi shartnoma. Asr vaqti keldi — uni zikrsiz o\'tkazib yubormasin.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Magrib — Quyosh Botish Namazı';

  @override
  String get prayerNotifBodyMaghrib =>
      'Quyosh botdi — Ahl al-Bayt dua uchun muqaddas moment saqlagan. Magrib adaydan oldin va tunning boshlanishidan oldin Allohga omonalarni oching.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Kechki Namazi';

  @override
  String get prayerNotifBodyIsha =>
      'Kunni Alloh bilan qayta bitkazing. Imamlar Isha dan keyin Qiyam al-Layl namazini (kunduzi namazini) talab qildilar — lekin avval Ishangizni tugating va kunni Uning zikri bilan yopish.';

  @override
  String get outOfReflectionsBannerText =>
      'Barcha refleksiyalarni ishlatdingiz';

  @override
  String get outOfReflectionsBannerCta => 'Ko\'proq oling';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Hisoblash uchun doiraga bosing';

  @override
  String get dhikrResetButton => 'Qayta o\'rnatish';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Siz Allohning 100 zikrini tugatdingiz. Ular qalbingizga nur bo\'lsin.';

  @override
  String get disclaimerTitle => 'Ushbu ilova rahbarligini haqida';

  @override
  String get disclaimerBody =>
      'Ayara Islomiy refleksiyalar, eslatmalar va ruhiy tarkibni taqdim etadi, bu Qur\'on va Ahl al-Bayt o\'g\'retmalariga asoslangan sizning iman yo\'lingizni qo\'llab-quvvatlash uchun. Ushbu tarkib umumiy ma\'lumat olish va ilhomlantirish maqsadlari uchun taqdim etiladi.\n\nAyara malaka olgan olimlik o\'rnini almashtiramaydi.\nBu ilovadagi rahbarlik o\'qitilgan Islomiy alimi, marja\' yoki teologik tasbiylangan o\'qituvchining o\'rnini almashtiramaydi. Shia Islomda dini rahbarlik Ja\'fari fiqh maktabi va jadvallashtirilgan Marja\' (emulatsiya manba\'i) — dini amaliyot bo\'yicha mumincilarga hukmlarni beruvchi malaka olgan fakih ruhiyatiga asoslangan. Agar religioziy hukumlar, halol va haram masalalar yoki shaxsiy dini majburiyatlar bo\'yicha savol bo\'lsa, iltimos, o\'z jamoyangizda malaka olgan Marja\' yoki alimdan maslahat oling.\n\nBu ilova dini hukmlarni chiqarmaydi.\nAyara fiqh yoki shaxsiy dini majburiyatlarga nisbatan hokimiyatli aniqlashlarni o\'tkazmaydi. Bu yerda hech narsa fatva yoki majburiy dini ko\'rsatma sifatida qaralmasligi kerak.\n\nAhl al-Baytning markaziyasıyla.\nShia Islomda Payg\'ambar Muhammad (ﷺ) va uning pak oilasi — Ahl al-Bayt — Qur\'ondan keyin Islomiy jamiyatning avtoriteli rahbarlaridir. Ahl al-Baytning o\'n ikki Imami Islomiy o\'g\'retmaning ilohiy tayinlangan talqincilaridir. Bu ilovadagi tarkib bu an\'anani aks ettiradi va uni sadoqat bilan hurmat qilishga intiladi.\n\nJamoat masalalarim.\nBu ilova imonga bo\'lgan jalb-u qo\'ng\'iroqingizni rag\'batlantirish va o\'z mahalliy masjid, Islomiy markazi va dini jamoyangiz muhim roli uchun chuqur hurmat qilish maqsadida. Biz sizni yaqin joyda malaka olgan o\'qituvchilardan ulan qol va o\'rganishni davom ettirishni tavsiya qilish.';

  @override
  String get disclaimerClose => 'Tushundim';

  @override
  String get disclaimerInfoTooltip => 'Ushbu ilova rahbarligini haqida';

  @override
  String get disclaimerSettingsSubtitle =>
      'Umumiy ma\'lumat maqsadlari uchun. To\'liq viqoyani o\'qish uchun bosing.';

  @override
  String get disclaimerSectionHeader => 'Rahbarlik viqoyasi';

  @override
  String get navHome => 'Uyga';

  @override
  String get navReflect => 'Tafakkur';

  @override
  String get navDuas => 'Dualar';

  @override
  String get navCalendar => 'Taqvim';

  @override
  String get dashboardToday => 'BUGUN';

  @override
  String get dashboardComingUp => 'Kelayotgan';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kun',
      one: 'kun',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Tez Kirish';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Rahbarlik';

  @override
  String get quickActionPrayerTimes => 'Namaz Vaqtlari';

  @override
  String get askAyaraTitle => 'Ayaraning So\'ring';

  @override
  String get askAyaraSubtitle =>
      'Har qanday Islomiy so\'rovni so\'ring va o\'ylang beruvchi, boshqaruvchi javob oling.';

  @override
  String get askAyaraHint => 'masalan Ramazon nimaning ahamiyati?';

  @override
  String get askAyaraSubmit => 'So\'rash';

  @override
  String get wisdomOfTheDayTitle => 'Kunning Hikmati';

  @override
  String get calendarScreenTitle => 'Islomiy Taqvim';

  @override
  String get calendarUpcomingOccasions => 'Kelayotgan Tadbirlar';

  @override
  String get calendarOccasionRemindersTitle => 'Tadbir Eslatmalari';

  @override
  String get calendarOccasionRemindersHint =>
      'Har bir tadbir oldida kechasi xabardor qilindi';

  @override
  String get calendarNotifPermissionDenied =>
      'Bildirishnoma ruxsati bekor qilindi. Qurilma sozlamalarida yoqing.';

  @override
  String get calendarNoEvents => 'Kelayotgan tadbirlar topilmadi.';

  @override
  String get calendarAddToPhone => 'Telefon Kalendariga Qo\'shish';

  @override
  String get calendarAddedToPhone => 'Kalendariga Qo\'shildi';

  @override
  String get calendarCountdownToday => 'BUGUN';

  @override
  String get calendarCountdownTomorrow => 'ERTAGA';

  @override
  String calendarCountdownDays(int days) {
    return '$days kundan so\'ng';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Yan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Iyn';

  @override
  String get calendarMonthJul => 'Iyl';

  @override
  String get calendarMonthAug => 'Avg';

  @override
  String get calendarMonthSep => 'Sen';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Noy';

  @override
  String get calendarMonthDec => 'Dek';

  @override
  String get calendarSeasonMuharramEarly =>
      'Muharram kunlari — Karbala\'ni eslang';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — yas va tafakkur kunlari';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — Husayn to\'qlamuvi';

  @override
  String get calendarSeasonRoadToArbaeen => 'Arbaeenga yo\'l';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — vohyning shofu';

  @override
  String get calendarSeasonMidShaban =>
      'Sha\'ban o\'rtasi — Imam al-Mahdi (AJ) tug\'ilishi';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — Qur\'on oyi';

  @override
  String get calendarSeasonGhadir => 'Iyd al-Ghadir Mubarak!';

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
  String get duasScreenTitle => 'Dualar va Ziyarat';

  @override
  String get duasSearchHint => 'Dualarni, ziyaratni izlash…';

  @override
  String get duasFilterAll => 'Hammasini';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dualar va ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Dualar topilmadi.';

  @override
  String get duaCategoryDaily => 'Kunlik';

  @override
  String get duaCategoryWeekly => 'Haftalik';

  @override
  String get duaCategoryOccasions => 'Tadbirlar';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Tug\'ilish';

  @override
  String get eventTypeMartyrdom => 'Shahadan';

  @override
  String get eventTypeOccasion => 'Tadbir';

  @override
  String get duaCopyTooltip => 'Tarjimani nusxalash';

  @override
  String get duaToggleTransliteration => 'Transliterasya';

  @override
  String get duaToggleTranslation => 'Tarjima';

  @override
  String get duaAskAiLabel => 'Ayara ushbu duani tushuntirsin';

  @override
  String get duaAskAiLockedLabel => 'Ayara (Viloya) so\'ring';

  @override
  String get duaAiLockedMessage =>
      'Ayara tushuntirishlari Viloya a\'zolari uchun mavjud. Sozlamalardan yangilang.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ayara \"$name\" haqida so\'rash — tez orada!';
  }

  @override
  String get duaCopiedToast => 'Dua buferga nusxalandi.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah eng katta';

  @override
  String get tasbihAlhamdulillahMeaning => 'Barcha hamd Allohga tegishli';

  @override
  String get tasbihSubhanallahMeaning => 'Allah muqaddas';

  @override
  String get tasbihResetTooltip => 'Qayta o\'rnatish';

  @override
  String get tasbihCompleteTitle => 'Tasbih Tugadi';

  @override
  String get tasbihCompleteMessage => 'Allah zikringizni qabul qilsin.';

  @override
  String get tasbihTapHint => 'Hisoblash uchun istalgan yerga bosing';

  @override
  String get tasbihatScreenTitle => 'Namaz Qo\'llanmasi';

  @override
  String get tasbihatScreenSubtitle => 'NAMAZ YULLASHLARI';

  @override
  String get tasbihatScreenDescription =>
      'Kundalik namazlar davomida va keyin o\'qilgan tasbihlarning to\'liq qo\'llanmasi — Ahl al-Bayt (a) an\'anasiga amal qilish.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => '3-chi va 4-chi raka\'atda o\'qiladi';

  @override
  String get tasbihatArba3Info =>
      'Shia fiqhida Tasbiḥāt al-Arbaʿa Zuhr, Asr, Magrib va Isha\'ning 3-chi va 4-chi raka\'atlarida Surah al-Fatiha o\'rniga o\'qiladi. Uni bir marta o\'qish majburiy (wājib) va uch marta o\'qish tavsiya etiladi (mustaḥabb).';

  @override
  String get tasbihatArba3Translation =>
      'Allah muqaddas · Barcha hamd Allohga\nAllohdan boshqa iloh yo\'q · Allah eng katta';

  @override
  String get tasbihatArba3CompleteTitle => 'O\'qish Tugadi';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Sizning namazingiz qabul bo\'lsin — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Her o\'qiyotdan keyin bosing';

  @override
  String get tasbihatZahraSubtitle => 'Har bir namazdan keyin · 100 munchuq';

  @override
  String get tasbihatZahraOriginLabel => 'Kelib Chiqishi';

  @override
  String get tasbihatZahraHadith =>
      'Fatima az-Zahra (sa) Payg\'ambardan (ﷺ) xizmatchi so\'radi. U aytdi: \"Men sizga biron narsa yaxshisini ko\'rsatmayman? Har bir namazdan keyin Subḥānallāh 33 marta, Alḥamdulillāh 33 marta va Allāhu Akbar 34 marta o\'qiydi. Bu sizning uchun xizmatchi bo\'lsa yaxshi.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Tom 85';

  @override
  String get tasbihatZahraOpenCounter => 'Tasbīḥ Hisoblagichini Oching';

  @override
  String get tasbihatDuasTitle => 'TAVSIYA ETILGAN DUALAR';

  @override
  String get tasbihatDuasSubtitle => 'Namazingizni tugatgandan keyin';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Har bir majburiy namazdan keyin';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Har bir majburiy namazdan keyin Āyat al-Kursī o\'qiydigun olam va Jannat o\'rtasidagi yagona narsa o\'lum. Imam al-Bāqir (a) aytdi bu Qur\'oning eng buyuk oyatlaridan biridir.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Har bir namazdan keyin · barcha dualarni muhrlash';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Payg\'ambar (ﷺ) va uning pak oilasiga (Āl Muḥammad) salawat jo\'natish har bir duani muhrlash uchun tavsiya etiladi. Imam al-Ṣādiq (a) aytdi: \"Siz Muḥammad va uning oilasiga salawat jo\'natmasdan oldin har qanday dua to\'xtatiladi.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Har bir namazdan keyin · vaqtimizning Imami uchun';

  @override
  String get tasbihatDuaFarajSource =>
      'Imam al-Ḥasan al-ʿAskarī (a) tomonidan o\'rgatilgan';

  @override
  String get tasbihatDuaFarajNote =>
      'Imom al-Mahdī (af) ning qaytishi uchun dua, o\'z otasi tomonidan o\'rgatilgan. Bu dua ko\'plab shia musulmonlari tomonidan ibodat sifatida namozdan keyin o\'qiladi.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Xonumning Tasbīḥi Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Magrib va Isha\'dan keyin · ayniqsa tavsiya etilgan';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) aytdi Isha\'dan keyin uyqudan oldin Tasbīḥ al-Zahrā o\'qiysh 1000 raka\'at ixtiyoriy namazdan yaxshi. Uning nuri samovotga ko\'tariladi.';

  @override
  String get tasbihFatimaGiftPre => 'Payg\'ambar Mubarokning sovg\'asi';

  @override
  String get tasbihFatimaGiftPost => 'har bir namazdan keyin o\'qiladi';

  @override
  String get prayerTrackerTitle => 'NAMAZ KUZATUVI';

  @override
  String get prayerTrackerPrayed => 'Namoз';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count kunlik ketma-ketlik';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Bugun barcha namazlar tugatildi. Allah qabul qilsin.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Bugun tugatildi';

  @override
  String get dhikrTrackerNotDoneToday => 'Bugun qilinmadi';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count kunlik ketma-ketlik';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Eslatmasi';

  @override
  String get dhikrReminderDescription =>
      'Tasbīḥ al-Zahrā\'ni (SA) o\'qish uchun kunlik yumshoq eslatma.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ eslatmasini yoqish';

  @override
  String get dhikrReminderTimeLabel => 'Eslatma vaqti';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Kunlik Hadith';

  @override
  String get hadithLabelArabic => 'ARABCHA';

  @override
  String get hadithLabelTranslation => 'TARJIMA';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Ushbu Hadithni Ulash';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara orqali';
  }

  @override
  String get hadithNavPrevious => 'Oldingi';

  @override
  String get hadithNavNext => 'Keyingi';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'O\'n to\'rt Ma\'sum';

  @override
  String get imamsScreenSubtitle =>
      'Payg\'ambar, Sayyida Fatima va O\'n ikki Imom — tozalangan va xato qilmasdan yo\'l ko\'rsatuvchilar Twelver Shia Islomida';

  @override
  String get imamLabelBorn => 'Tug\'ilgan';

  @override
  String get imamLabelMartyrdom => 'Shahadan';

  @override
  String get imamLabelStatus => 'Holati';

  @override
  String get imamSectionBiography => 'BIOGRAFIYA';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'Yakuniy Payg\'ambar';

  @override
  String get imamRoleInfallible => 'Ishikdor';

  @override
  String get imamOrdinal1 => '1-namaza';

  @override
  String get imamOrdinal2 => '2-namaza';

  @override
  String get imamOrdinal3 => '3-namaza';

  @override
  String get imamOrdinal4 => '4-namaza';

  @override
  String get imamOrdinal5 => '5-namaza';

  @override
  String get imamOrdinal6 => '6-namaza';

  @override
  String get imamOrdinal7 => '7-namaza';

  @override
  String get imamOrdinal8 => '8-namaza';

  @override
  String get imamOrdinal9 => '9-namaza';

  @override
  String get imamOrdinal10 => '10-namaza';

  @override
  String get imamOrdinal11 => '11-namaza';

  @override
  String get imamOrdinal12 => '12-namaza';

  @override
  String get duaAudioScreenTitle => 'Dualarni Tingla';

  @override
  String get duaAudioScreenSubtitle =>
      'Tinglash uchun duani tanlang. Pulemyot yoki pauza qilish uchun plitka bosing.';

  @override
  String get duaAudioComingSoonMessage =>
      'Bu duaning audio-versiyasi keyingi yangilashda mavjud bo\'ladi.';

  @override
  String get duaAudioClose => 'Yopish';

  @override
  String get duaAudioError =>
      'Audio yuklanmadi. Iltimos, ulanishni tekshiring.';

  @override
  String get duaAudioMetaTransmittedBy => 'Raqamli';

  @override
  String get duaAudioMetaOccasion => 'Tadbir';

  @override
  String get duaAudioMetaDuration => 'Davomiyligi';

  @override
  String get quickActionDailyHadith => 'Kunlik Hadith';

  @override
  String get quickAction14Masumeen => 'O\'n to\'rt Ma\'sum';

  @override
  String get quickActionListenDuas => 'Tingla';

  @override
  String get quickActionTasbihat => 'Namaz Qo\'llanmasi';

  @override
  String get pilgrimageSectionTitle => 'Muqaddas Yo\'l';

  @override
  String get pilgrimageSectionSubtitle =>
      'Makkada Alloh muqaddas uyiga boradigan koin — Hajj va Umrah to\'liq qo\'llanmalari';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Islomning Beshinchi Ustuni';

  @override
  String get hajjCardDescription =>
      'Katta yillik koin — har bir qabiliy musulmon uchun umri davomida majburiy bir marta';

  @override
  String get hajjScreenTitle => 'Hajj Qo\'llanmasi';

  @override
  String get hajjScreenSubtitle => 'Katta koinning qadam-qadam qo\'llanmasi';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Kichik Koin';

  @override
  String get umrahCardDescription =>
      'Yil davomida istalgan vaqtda qilinishi mumkin bo\'lgan chuqur ruhiy yo\'l';

  @override
  String get umrahScreenTitle => 'Umrah Qo\'llanmasi';

  @override
  String get umrahScreenSubtitle => 'Kichik koinning qadam-qadam qo\'llanmasi';

  @override
  String get pilgrimageStepsTitle => 'Ritual va Qadam';

  @override
  String get pilgrimageImportantNotesTitle => 'Muhim Qaydlar';

  @override
  String get pilgrimageDuaTitle => 'Bu qadam uchun Dua';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Izoh';

  @override
  String get pilgrimageComplete => '✓ To\'liq';

  @override
  String get pilgrimageMarkDone => 'To\'liq deb belgilash';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done dan $total qadam';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes daqiqa';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Koinchilar';

  @override
  String get pilgrimageShiaNoteBody =>
      'Ko\'plab shia ziyoratchilari ham Payg\'ambar Muhammad (SAW) ning Masjid al-Nabawi da ziyorat qilish uchun Madinaga sayohat qilishadi va Jannat al-Baqida qabrlarni ziyorat qilishadi. Bu tashriflar chuqur ruhiy ahamiyatga ega, garchi ular Hajjning o\'zlari bo\'lmasa ham.';

  @override
  String get hajjIntro =>
      'Hajj Islomning beshinchi ustuni bo\'lib, har bir musulmon uchun jismonan va moliyaviy jihatdan qodir bo\'lsa, bir marta bajarilishi shart. Bugungi kunda ko\'plab Twelver shia ziyoratchilari uchun bu Hajj al-Tamattu\' demakdir, bu esa Dhul Hijjah oyida Payg\'ambar Ibrohim (AS), uning o\'g\'li Ismoil (AS) va Sayyida Hojar izidan bajariladi. Ushbu qo\'llanma Ja\'fari marosimlari asosida tuzilgan, Madinada ziyorat esa Hajjdan oldin yoki keyin chuqur qadrlanadigan safar bo\'lib qoladi.';

  @override
  String get umrahIntro =>
      'Umrah Makkaga kichik ko\'rgan bo\'lib, Hajjdan farqli o\'laroq yil davomida istalgan vaqtda qilinishi mumkin. U majburiy bo\'lmasligi bilan, u katta ruhiy mukofot o\'z ichiga oladi va yoqtiring ibadat harakati hisoblanadi. U Hajj bilan bir nechta rituallari baham ko\'radiy lekin qisqaroq bo\'lib, to\'rtta asosiy riyaddan iborat.';

  @override
  String get voiceInputTitle => 'Ovozli Kirish';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Yozish o\'rniga Ayara\'ga so\'zlab murojaat qiling.';

  @override
  String get voiceInputMicDenied => 'Mikrofon kirishiga ruxsat berilmadi.';

  @override
  String get voiceInputSpeak => 'So\'zlab aytish';

  @override
  String get voiceInputListening => 'Eshtayotgan…';

  @override
  String get voiceInputPermissionDenied =>
      'Ovozli kirish uchun mikrofon kirishiga ehtiyoj bor.';
}
