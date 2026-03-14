// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'אייארה';

  @override
  String get languageSelectTitle => 'בחר את שפתך';

  @override
  String get languageSelectSub => 'ניתן לשנות זאת מאוחר יותר בהגדרות';

  @override
  String get actionContinue => 'המשך';

  @override
  String get languageSuggestedHeader => 'מוצע';

  @override
  String get languageAllHeader => 'כל השפות';

  @override
  String get languageSuggestedBadge => 'מוצע';

  @override
  String get languageSearchHint => 'חיפוש…';

  @override
  String get planBasic => 'סטנדרטי';

  @override
  String get planPremium => 'וילאיה';

  @override
  String get categorySlot01 => 'הדרכה יומית';

  @override
  String get categorySlot02 => 'אמונה ובטחון';

  @override
  String get categorySlot03 => 'הרהור בתפילה';

  @override
  String get categorySlot04 => 'סבלנות ותקווה';

  @override
  String get categorySlot05 => 'בקשת סליחה';

  @override
  String get categorySlot06 => 'רחמים וחסד';

  @override
  String get categorySlot07 => 'כוח האמונה';

  @override
  String get categorySlot08 => 'לב אסיר תודה';

  @override
  String get categorySlot09 => 'מטרת החיים';

  @override
  String get categorySlot10 => 'קשרי משפחה';

  @override
  String get categorySlot11 => 'שלווה פנימית';

  @override
  String get categorySlot12 => 'חכמת הנביא';

  @override
  String get categorySlot13 => 'אופי טוב';

  @override
  String get categorySlot14 => 'התנגדות לפיתוי';

  @override
  String get categorySlot15 => 'דיכר ערבי';

  @override
  String get categoryCustom => 'הרהור אישי';

  @override
  String get dhikrMeaningSubhanallah => 'תהילה לאללה';

  @override
  String get dhikrMeaningAlhamdulillah => 'כל השבח לאללה';

  @override
  String get dhikrMeaningAllahuAkbar => 'אללה הוא הגדול ביותר';

  @override
  String get quranVerseHeartAtRest => 'אכן, בזכר אללה מוצאות הלבבות מנוחה.';

  @override
  String get promptHint => 'הקש על קטגוריה לקבלת הדרכה והרהור אסלאמי';

  @override
  String get currentLanguage => 'שפה נוכחית';

  @override
  String get settingsLanguage => 'הגדרות שפה';

  @override
  String get settingsTitle => 'הגדרות';

  @override
  String get chooseLanguage => 'בחר את שפתך';

  @override
  String get continueCta => 'המשך';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count מילים',
      one: 'מילה אחת',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'אפשרויות';

  @override
  String get newCta => 'חדש';

  @override
  String get actionsTitle => 'מה תרצה לעשות?';

  @override
  String get copy => 'העתק';

  @override
  String get share => 'שתף';

  @override
  String get close => 'סגור';

  @override
  String get copiedToast => 'הועתק ללוח';

  @override
  String shareSubject(String category) {
    return 'אייארה — $category';
  }

  @override
  String get regenerateErrorTitle => 'לא ניתן היה ליצור תגובה חדשה';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nהאם ברצונך לנסות שוב?';
  }

  @override
  String get cancelCta => 'ביטול';

  @override
  String get retryCta => 'נסה שוב';

  @override
  String get authTitle => 'צור את חשבונך';

  @override
  String get continueAsGuest => 'המשך כאורח';

  @override
  String get signInGoogle => 'התחבר עם Google';

  @override
  String get signInApple => 'התחבר עם Apple';

  @override
  String get signInEmail => 'התחבר עם דוא\"ל';

  @override
  String get upgradeWithApple => 'המשך עם Apple';

  @override
  String get mustAccept => 'עליך לאשר את התנאים ולאשר את מדיניות הפרטיות.';

  @override
  String get termsLabel => 'אני מקבל את תנאי השירות';

  @override
  String get privacyLabel => 'קראתי את מדיניות הפרטיות';

  @override
  String get marketingOptIn => 'אני מסכים לקבל חדשות והצעות';

  @override
  String get openTerms => 'תנאי השירות';

  @override
  String get openPrivacy => 'מדיניות הפרטיות';

  @override
  String get accountSection => 'חשבון';

  @override
  String get guestMode => 'מצב אורח';

  @override
  String get signedIn => 'מחובר';

  @override
  String get upgradeHint =>
      'שמור את ההרהורים שלך בין מכשירים על ידי יצירת חשבון.';

  @override
  String get upgradeWithGoogle => 'המשך עם Google';

  @override
  String get signOut => 'התנתק';

  @override
  String get snackUpgraded => 'החשבון שודרג עם Google ✅';

  @override
  String get snackSignedIn => 'התחברת עם Google ✅';

  @override
  String get snackSignedOut => 'התנתקת';

  @override
  String get snackSignedInApple => 'התחברת עם Apple ✅';

  @override
  String get snackSignedInGoogle => 'התחברת עם Google ✅';

  @override
  String get snackUpgradedApple => 'החשבון שודרג עם Apple ✅';

  @override
  String get snackUpgradedGoogle => 'החשבון שודרג עם Google ✅';

  @override
  String get historyTitle => 'הרהורים קודמים';

  @override
  String get historyOpenCta => 'הרהורים קודמים';

  @override
  String get historyEmpty => 'אין הרהורים שמורים עדיין.';

  @override
  String get historyDeleteTitle => 'למחוק את ההרהור?';

  @override
  String get historyDeleteBody => 'פעולה זו תסיר לצמיתות את הפריט הנבחר.';

  @override
  String get deleteCta => 'מחק';

  @override
  String get historyButton => 'הרהורים קודמים';

  @override
  String get historyEmptyTitle => 'אין הרהורים עדיין';

  @override
  String get historyEmptyBody =>
      'צור משהו תחילה — הפריטים השמורים שלך יופיעו כאן.';

  @override
  String get historyDelete => 'מחק';

  @override
  String get footerTitle => 'עם וילאיה, אמונה וסבר';

  @override
  String get footerSubtitle => 'תפילה אחת בכל פעם';

  @override
  String get genericErrorSnack => 'משהו השתבש — אנא נסה שוב בעוד רגע.';

  @override
  String get upgradeAccountCta =>
      'שמור את ההרהורים שלך בין מכשירים — צור חשבון';

  @override
  String get deleteAccount => 'מחק חשבון';

  @override
  String get exportData => 'ייצא את הנתונים שלי';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => 'לאט לאט 🐯\nאייארה צריכה רגע לפני הבא…';

  @override
  String get rateDailyLimit =>
      'נגמרו לך ההרהורים לעת עתה.\nקבל עוד הרהורים או שדרג לוילאיה.';

  @override
  String get rateCreditsExhausted =>
      'השתמשת בכל ההרהורים שלך.\nהוסף קרדיטים או שדרג לוילאיה כדי להמשיך.';

  @override
  String get rateGraceCreditsExhausted =>
      'נגמרו לך ההרהורים לעת עתה.\nקבל עוד הרהורים או שדרג לוילאיה.';

  @override
  String get premiumDescription =>
      'וילאיה פותחת תכונות פרימיום, קטגוריות עתידיות ותג מיוחד.';

  @override
  String ratePlanExhausted(String plan) {
    return 'ההרהורים שלך ריקים כרגע. תוכנית: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'לא ניתן היה לבדוק את ההרהורים שלך: $message';
  }

  @override
  String get rateCheckGenericError => 'משהו השתבש בעת בדיקת ההרהורים שלך.';

  @override
  String get aiFallbackGeneric => 'משהו השתבש — אנא נסה שוב בעוד רגע.';

  @override
  String get limitSectionTitle => 'הרהורים';

  @override
  String get limitTodayLabel => 'שימוש';

  @override
  String limitCreditsLabel(Object credits) {
    return 'הרהורים שנותרו: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'תוכנית: $plan';
  }

  @override
  String get limitLoadingLabel => 'טוען…';

  @override
  String get limitLoadingLabelDescription =>
      'מוצג בכרטיס ההרהורים בזמן שנתוני השימוש נטענים.';

  @override
  String get aiLimitTitle => 'הרהורים';

  @override
  String get aiLimitSubtitle =>
      'כל תגובה משתמשת בהרהור אחד. סטנדרטי כולל הרהורי התחלה. וילאיה פותחת קטגוריות פרימיום ומאפשרת הוספת קרדיטים.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total הרהורים בשימוש';
  }

  @override
  String get creditsSectionTitle => 'הרהורים';

  @override
  String get creditsUsageLabel => 'שימוש';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'הרהורים שנותרו: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'תוכנית: $plan';
  }

  @override
  String get creditsLoadingLabel => 'טוען…';

  @override
  String get creditsLoadingLabelDescription =>
      'מוצג בזמן שנתוני ההרהורים נטענים.';

  @override
  String get creditsTitle => 'הרהורים';

  @override
  String get creditsSubtitle =>
      'כל תגובה משתמשת בהרהור אחד. סטנדרטי כולל הרהורי התחלה. וילאיה פותחת קטגוריות פרימיום ומאפשרת הוספת קרדיטים.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total הרהורים בשימוש';
  }

  @override
  String get settingsDeleteTitle => 'מחק חשבון';

  @override
  String get settingsDeleteDescription =>
      'מחק לצמיתות את חשבונך וכל הנתונים הקשורים אליו.';

  @override
  String get settingsDeleteButtonLabel => 'מחק את החשבון שלי';

  @override
  String get settingsDeleteDialogTitle => 'למחוק את החשבון?';

  @override
  String get settingsDeleteDialogBody =>
      'פעולה זו היא קבועה ולא ניתן לבטלה.\n\nכל הצ\'אטים, ההיסטוריה ומידע החשבון שלך יימחקו.';

  @override
  String get settingsDeleteDialogCancel => 'ביטול';

  @override
  String get settingsDeleteDialogConfirm => 'מחק';

  @override
  String get settingsFreeLimitUsedTitle => 'הרהורי ההתחלה נוצלו';

  @override
  String get settingsFreeLimitUsedDescription =>
      'הרהורי ההתחלה למכשיר זה נוצלו. שדרג לוילאיה או רכוש עוד הרהורים כדי להמשיך.';

  @override
  String get settingsStarterCreditsUsedTitle => 'הרהורי ההתחלה נוצלו';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'הרהורי ההתחלה למכשיר זה נוצלו. שדרג לוילאיה או רכוש עוד הרהורים כדי להמשיך.';

  @override
  String get deviceBoundError =>
      'מכשיר זה כבר מקושר לחשבון אחר. אנא התחבר עם החשבון המקורי.';

  @override
  String get premiumTitle => 'מצב וילאיה';

  @override
  String get premiumSubtitleBasic => 'פתח את חווית אייארה המלאה.';

  @override
  String get premiumSubtitlePremium => 'אתה במצב וילאיה. צריך עוד הרהורים?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'תוכנית נוכחית: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'הרהורים: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'רכישות אינן זמינות כרגע.';

  @override
  String get premiumSignInToPurchase =>
      'התחבר כדי לרכוש הרהורים או לפתוח את וילאיה.';

  @override
  String get premiumRestorePurchases => 'שחזר רכישות';

  @override
  String get premiumProcessing => 'מעבד…';

  @override
  String get premiumRestoreHintTitle =>
      'כבר רכשת וילאיה או הרהורים במכשיר זה או אחר?';

  @override
  String get premiumRestoreHintBody => 'שחזר את הרכישות שלך אם הן אינן מוצגות.';

  @override
  String get premiumBuyCredits200 => 'רכוש 200 הרהורים';

  @override
  String get premiumBuyCredits400 => 'רכוש 400 הרהורים';

  @override
  String get premiumBecomePremiumOneTime => 'שדרג למצב וילאיה';

  @override
  String get premiumTopupHint =>
      'עם וילאיה, תוכל להוסיף הרהורים נוספים בכל עת שתצטרך.';

  @override
  String get premiumUpgradeCta => 'שדרג';

  @override
  String get premiumRequiredForCategory =>
      'קטגוריה זו זמינה רק למשתמשי וילאיה. שדרג בהגדרות כדי לפתוח את כל התוכן הפרימיום.';

  @override
  String get premiumBenefitsBasic =>
      'פתח את וילאיה לקבלת הרהורים נוספים, גישה לקטגוריות פרימיום, והמשך בכל עת שתזדקק להדרכה.';

  @override
  String get premiumBenefitsPremium =>
      'אתה במצב וילאיה. אם אתה מתקרב לגבול, הוסף הרהורים נוספים והמשך ללא הפרעות.';

  @override
  String get premiumButtonBecomePremium => 'פתח את וילאיה';

  @override
  String get premiumButtonTopup1000 => 'הוסף 1000 הרהורים';

  @override
  String get premiumBadge => 'וילאיה פעיל';

  @override
  String get premiumLoadingStore => 'טוען חנות…';

  @override
  String get premiumProductNotAvailable =>
      'מוצר זה אינו זמין בחנות עדיין. אנא נסה שוב מאוחר יותר.';

  @override
  String get premiumPurchaseError => 'משהו השתבש ברכישה. אנא נסה שוב.';

  @override
  String get premiumBuyCredits100 => 'הוסף 100 הרהורים';

  @override
  String get premiumFeatureLocked => 'פתח את וילאיה כדי לגשת לתכונה זו.';

  @override
  String get lockedCategoriesHint =>
      'חלק מהקטגוריות שמורות לחברי וילאיה. פתח אותן כדי לחקור כל הרהור במסעך.';

  @override
  String get freePlanBlockedTitle => 'השתמשת בכל הרהורי ההתחלה שלך';

  @override
  String get freePlanBlockedBody =>
      'אתה בתוכנית הסטנדרטית עם הרהורי התחלה, והגעת לגבול. כדי להמשיך — ולפתוח קטגוריות פרימיום — שדרג לוילאיה.';

  @override
  String get freePlanBlockedCtaGoPremium => 'ראה את אפשרויות וילאיה למטה';

  @override
  String get graceBlockedTitle => 'השתמשת בכל הרהורי ההתחלה שלך';

  @override
  String get graceBlockedBody =>
      'אתה בתוכנית הסטנדרטית עם הרהורי התחלה, והגעת לגבול. כדי להמשיך — ולפתוח קטגוריות פרימיום — שדרג לוילאיה.';

  @override
  String get graceBlockedCtaGoPremium => 'ראה את אפשרויות וילאיה למטה';

  @override
  String get rateGuestMustSignIn => 'התחבר כדי להשתמש באייארה ובהרהורים שלך.';

  @override
  String get guestNoCreditsTitle => 'מצב אורח';

  @override
  String get guestNoCreditsBody =>
      'כאורח תוכל לדפדף באפליקציה, אך לא תוכל להשתמש בהרהורים. התחבר מאוחר יותר בהגדרות כדי להשתמש בהרהורים ולפתוח רכישות.';

  @override
  String get guestDialogContinue => 'המשך';

  @override
  String get guestDialogLoginInstead => 'התחבר במקום זאת';

  @override
  String get optionalLabel => 'אופציונלי';

  @override
  String get accountDeleteSuccessTitle => 'החשבון נמחק';

  @override
  String get accountDeleteSuccessBody =>
      'חשבונך והנתונים הקשורים אליו נמחקו בהצלחה.';

  @override
  String get accountDeleteSuccessClose => 'סגור';

  @override
  String get accountDeleteErrorTitle => 'לא ניתן היה למחוק את החשבון';

  @override
  String get accountDeleteErrorClose => 'אישור';

  @override
  String get accountDeleteReauthCancelled =>
      'האימות מחדש בוטל. אנא התחבר שוב ונסה שוב את המחיקה.';

  @override
  String get accountDeleteReauthRequired =>
      'מחיקת החשבון מצריכה כניסה אחרונה. אנא התנתק, התחבר שוב ונסה שוב.';

  @override
  String get settingsDeletePermanentWarning =>
      'פעולה זו היא קבועה ולא ניתן לבטלה. כל הנתונים הקשורים לחשבונך יימחקו.';

  @override
  String get dailyGraceTitle => 'הדרכה יומית';

  @override
  String get dailyGraceScriptureLabel => 'פסוק היום';

  @override
  String get dailyGraceSaintLabel => 'דמות השבוע';

  @override
  String get dailyGraceReflectionLabel => 'הרהור ערבי';

  @override
  String get dailyGraceCopiedToast => 'הפסוק הועתק ללוח';

  @override
  String get locationConsentLabel =>
      'אפשר לאייארה להשתמש במיקום שלי לכיוון קיבלה וזמני תפילה';

  @override
  String get locationConsentHint =>
      'משמש רק לתכונות אלו. המיקום שלך לעולם אינו משותף או נשמר.';

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
  String get askPageTitle => 'שאל את אייארה';

  @override
  String get askPageDescription =>
      'שאל כל דבר על אמונה, תפילה, חיים או פרקטיקה אסלאמית וקבל הדרכה המושרשת בקוראן ובתורת אהל אל-בית.';

  @override
  String get askPageInputHint => 'הקלד את שאלתך כאן…';

  @override
  String get askPageSubmitCta => 'שאל';

  @override
  String get askPageInputEmptyError => 'אנא כתוב שאלה תחילה.';

  @override
  String get askResultYourQuestion => 'השאלה שלך';

  @override
  String get guidancePageTitle => 'קיבלה';

  @override
  String get qiblaFacingMecca => 'פונה למכה';

  @override
  String get qiblaCompassInstruction =>
      'סובב את הטלפון שלך עד שהמחט הזהובה תצביע כלפי מעלה.\nכיוון זה מצביע לעבר הקיבלה (מכה).';

  @override
  String get qiblaGpsUnavailableBody => 'אות ה-GPS חלש. צא החוצה והקש נסה שוב.';

  @override
  String get qiblaRetry => 'נסה שוב';

  @override
  String get qiblaTitle => 'כיוון קיבלה';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km ק\"מ למכה';
  }

  @override
  String get qiblaLocationNeededTitle => 'נדרש מיקום';

  @override
  String get qiblaLocationNeededBody =>
      'אפשר גישה למיקום כדי שאייארה תוכל לחשב את כיוון הכעבה במכה ממיקומך.';

  @override
  String get qiblaOpenSettings => 'פתח הגדרות';

  @override
  String get qiblaCompassLoading => 'מאתר את מיקומך…';

  @override
  String get qiblaTowardMecca => 'לכיוון מכה';

  @override
  String get prayerTimesTitle => 'זמני תפילה';

  @override
  String get prayerTimesFajr => 'פג\'ר';

  @override
  String get prayerTimesDhuhr => 'זוהר';

  @override
  String get prayerTimesAsr => 'עסר';

  @override
  String get prayerTimesMaghrib => 'מע\'ריב';

  @override
  String get prayerTimesIsha => 'עישא';

  @override
  String get prayerTimesLocationNeededTitle => 'נדרש מיקום';

  @override
  String get prayerTimesLocationNeededBody =>
      'אפשר גישה למיקום כדי שאייארה תוכל לחשב זמני תפילה מדויקים עבור עירך.';

  @override
  String get prayerTimesNextLabel => 'הבא';

  @override
  String get prayerTimesDoneLabel => 'סיום';

  @override
  String get monthlyPrayerTimesTitle => 'זמני תפילה חודשיים';

  @override
  String get monthlyPrayerTimesViewButton => 'הצג חודש מלא';

  @override
  String get monthlyPrayerTimesNextMonth => 'חודש הבא';

  @override
  String get monthlyPrayerTimesDayHeader => 'יום';

  @override
  String get sharePrayerTimes => 'שתף זמני תפילה';

  @override
  String get notificationsSectionTitle => 'התראות';

  @override
  String get notificationsSectionSubtitle =>
      'תזכורות תפילה, אירועי לוח שנה ועוד';

  @override
  String get dailyReflectionReminderTitle => 'הרהור יומי';

  @override
  String get dailyReflectionReminderDescription =>
      'תזכורת יומית עדינה לפתוח את אייארה ולהתחבר לאמונתך.';

  @override
  String get dailyReflectionReminderEnable => 'אפשר תזכורת יומית';

  @override
  String get dailyReflectionReminderTimeLabel => 'זמן תזכורת';

  @override
  String get prayerNotificationsTitle => 'תזכורות תפילה';

  @override
  String get prayerNotificationsDescription =>
      'קבל תזכורת עדינה לפני כל זמן תפילה כדי לעזור לך להישאר מחובר לאורך היום.';

  @override
  String get prayerNotificationsEnable => 'אפשר תזכורות תפילה';

  @override
  String get prayerNotificationsOpenSettings => 'פתח הגדרות התראות';

  @override
  String get prayerNotificationsDenied => 'התראות מושבתות';

  @override
  String get prayerNotificationsDeniedHint =>
      'עבור להגדרות ואפשר התראות עבור אייארה לקבלת תזכורות זמני תפילה.';

  @override
  String get notificationsConsentLabel => 'אפשר התראות לזמני תפילה';

  @override
  String get prayerNotifTitleFajr => '🌅 פג\'ר — תפילת שחרית';

  @override
  String get prayerNotifBodyFajr =>
      'הפג\'ר היא תפילת בוקרם של אהל אל-בית. האימאם עלי (עליו השלום) אמר: שמור על תפילת השחר כפי שאתה שומר על הנאמנות היקרה ביותר שלך. קום, טהר את עצמך ועמוד לפני אללה.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ זוהר — תפילת צהריים';

  @override
  String get prayerNotifBodyDhuhr =>
      'האימאמים של אהל אל-בית העריכו כל רגע של זכירה. עצור את יומך, שלב זוהר עם עסר במידת הצורך, והחזר את לבך לאללה.';

  @override
  String get prayerNotifTitleAsr => '🌤️ עסר — תפילת אחר הצהריים';

  @override
  String get prayerNotifBodyAsr =>
      'שמור על התפילה, כי היא הברית בינך לבין אללה. הגיע זמן עסר — אל תתן לו לעבור ללא זכירה.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 מע\'ריב — תפילת שקיעה';

  @override
  String get prayerNotifBodyMaghrib =>
      'השמש שקעה — רגע שאהל אל-בית החשיבו לקדוש עבור תחינה. הקרב את מע\'ריב ופרוש את ידיך לאללה בדועא לפני תחילת הלילה.';

  @override
  String get prayerNotifTitleIsha => '🌙 עישא — תפילת לילה';

  @override
  String get prayerNotifBodyIsha =>
      'סיים את יומך בחברת אללה. האימאמים עודדו את צלאת אל-לייל לאחר עישא — אך תחילה, השלם את עישאך וסגור את היום בזכרו.';

  @override
  String get outOfReflectionsBannerText => 'השתמשת בכל ההרהורים שלך';

  @override
  String get outOfReflectionsBannerCta => 'קבל עוד';

  @override
  String get dhikrPageTitle => 'דיכר';

  @override
  String get dhikrTapToCount => 'הקש על המעגל לספירה';

  @override
  String get dhikrResetButton => 'אפס';

  @override
  String get dhikrComplete => 'מאשאאללה';

  @override
  String get dhikrCompleteMessage =>
      'השלמת 100 זכירות של אללה. שיהיו לאור לבך.';

  @override
  String get disclaimerTitle => 'על ההדרכה של אפליקציה זו';

  @override
  String get disclaimerBody =>
      'אייארה מספקת הרהורים אסלאמיים, תזכורות ותוכן רוחני לתמיכה במסע האמונה האישי שלך, המושרש בקוראן ובתורת אהל אל-בית. תוכן זה מוצע למטרות מידע כללי והשראה בלבד.\n\nאייארה אינה מחליפה מלגה מוסמכת.\nההדרכה באפליקציה זו אינה תחליף לחוקר אסלאמי מלומד, מרג\'ע, או מורה מאומן תיאולוגית. באסלאם השיעי, הדרכה דתית מושרשת בבית הספר הג\'עפרי לפסיקה (פיקה) ובמסורת של מעקב אחר מרג\'ע חי (מקור החיקוי) — פוסק מוסמך שפסיקותיו מדריכות את המאמינים בפרקטיקה הדתית. אם יש לך שאלות על פסיקות דתיות, ענייני חלאל וחראם, או חובות דתיות אישיות, אנא פנה לייעוץ ממרג\'ע מוסמך או חוקר בקהילתך.\n\nאפליקציה זו אינה מנפיקה פסיקות דתיות.\nאייארה אינה מקבלת קביעות סמכותיות בענייני פיקה או חובות דתיות אישיות. שום דבר כאן לא יש לראות כפתוואה או הוראה דתית מחייבת.\n\nמרכזיות אהל אל-בית.\nבאסלאם השיעי, הנביא מוחמד ﷺ ובית משפחתו הטהורה — אהל אל-בית — הם המנחים הסמכותיים של הקהילה האסלאמית לאחר הקוראן. שנים עשר האימאמים של אהל אל-בית הם הפרשנים שנבחרו אלוהית של התורה האסלאמית. התוכן באפליקציה זו משקף מסורת זו ומבקש לכבדה בנאמנות.\n\nהקהילה חשובה.\nאפליקציה זו שואפת לעודד את מעורבותך עם האמונה תוך כיבוד עמוק של התפקיד החיוני של בית הכנסת המקומי שלך, המרכז האסלאמי והקהילה הדתית. אנו מעודדים אותך להישאר מחובר וללמוד ממורים מוסמכים בקרבתך.';

  @override
  String get disclaimerClose => 'הבנתי';

  @override
  String get disclaimerInfoTooltip => 'על ההדרכה של אפליקציה זו';

  @override
  String get disclaimerSettingsSubtitle =>
      'למטרות מידע כללי בלבד. הקש לקרוא את כתב הוויתור המלא.';

  @override
  String get disclaimerSectionHeader => 'כתב ויתור הדרכה';

  @override
  String get navHome => 'בית';

  @override
  String get navReflect => 'הרהר';

  @override
  String get navDuas => 'דועאות';

  @override
  String get navCalendar => 'לוח שנה';

  @override
  String get dashboardToday => 'היום';

  @override
  String get dashboardComingUp => 'בקרוב';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ימים',
      one: 'יום',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'גישה מהירה';

  @override
  String get quickActionQibla => 'קיבלה';

  @override
  String get quickActionDhikr => 'דיכר';

  @override
  String get quickActionDailyGrace => 'הדרכה';

  @override
  String get quickActionPrayerTimes => 'זמני תפילה';

  @override
  String get askAyaraTitle => 'שאל את אייארה';

  @override
  String get askAyaraSubtitle =>
      'שאל כל שאלה אסלאמית וקבל תשובה מחושבת ומודרכת.';

  @override
  String get askAyaraHint => 'לדוגמה: מה המשמעות של רמדאן?';

  @override
  String get askAyaraSubmit => 'שאל';

  @override
  String get wisdomOfTheDayTitle => 'חכמת היום';

  @override
  String get calendarScreenTitle => 'לוח שנה אסלאמי';

  @override
  String get calendarUpcomingOccasions => 'אירועים קרובים';

  @override
  String get calendarOccasionRemindersTitle => 'תזכורות אירועים';

  @override
  String get calendarOccasionRemindersHint =>
      'מקבלים התראה בערב שלפני כל אירוע';

  @override
  String get calendarNotifPermissionDenied =>
      'הרשאת התראות נדחתה. הפעל אותה בהגדרות המכשיר שלך.';

  @override
  String get calendarNoEvents => 'לא נמצאו אירועים קרובים.';

  @override
  String get calendarAddToPhone => 'הוסף ללוח שנה של הטלפון';

  @override
  String get calendarAddedToPhone => 'נוסף ללוח שנה';

  @override
  String get calendarCountdownToday => 'היום';

  @override
  String get calendarCountdownTomorrow => 'מחר';

  @override
  String calendarCountdownDays(int days) {
    return 'בעוד $days ימים';
  }

  @override
  String get calendarAH => 'להיג\'רה';

  @override
  String get calendarMonthJan => 'ינו׳';

  @override
  String get calendarMonthFeb => 'פבר׳';

  @override
  String get calendarMonthMar => 'מרץ';

  @override
  String get calendarMonthApr => 'אפר׳';

  @override
  String get calendarMonthMay => 'מאי';

  @override
  String get calendarMonthJun => 'יוני';

  @override
  String get calendarMonthJul => 'יולי';

  @override
  String get calendarMonthAug => 'אוג׳';

  @override
  String get calendarMonthSep => 'ספט׳';

  @override
  String get calendarMonthOct => 'אוק׳';

  @override
  String get calendarMonthNov => 'נוב׳';

  @override
  String get calendarMonthDec => 'דצמ׳';

  @override
  String get calendarSeasonMuharramEarly => 'ימי מוחרם — זכור את כרבלא';

  @override
  String get calendarSeasonAshura => 'עאשורא — יא חוסיין (עליו השלום)';

  @override
  String get calendarSeasonMuharramLate => 'מוחרם — ימי אבל והרהור';

  @override
  String get calendarSeasonArbaeen => 'ארבעין — ארבעים ימי חוסיין';

  @override
  String get calendarSeasonRoadToArbaeen => 'הדרך לארבעין';

  @override
  String get calendarSeasonMabath => 'מבעת\' מובארק — שחר ההתגלות';

  @override
  String get calendarSeasonMidShaban =>
      'אמצע שעבאן — יום הולדת האימאם אל-מהדי (עג\'ל אללה פרג\'ה)';

  @override
  String get calendarSeasonRamadan => 'רמדאן מובארק — חודש הקוראן';

  @override
  String get calendarSeasonGhadir => 'עיד אל-ע\'דיר מובארק!';

  @override
  String get hijriMonth1 => 'מוחרם';

  @override
  String get hijriMonth2 => 'ספר';

  @override
  String get hijriMonth3 => 'רביע אל-אוול';

  @override
  String get hijriMonth4 => 'רביע אל-ת\'אני';

  @override
  String get hijriMonth5 => 'ג\'מאדא אל-אוולא';

  @override
  String get hijriMonth6 => 'ג\'מאדא אל-ת\'אניה';

  @override
  String get hijriMonth7 => 'רג\'ב';

  @override
  String get hijriMonth8 => 'שעבאן';

  @override
  String get hijriMonth9 => 'רמדאן';

  @override
  String get hijriMonth10 => 'שוואל';

  @override
  String get hijriMonth11 => 'ד\'ו אל-קעדה';

  @override
  String get hijriMonth12 => 'ד\'ו אל-חיג\'ה';

  @override
  String get duasScreenTitle => 'דועאות וזיארות';

  @override
  String get duasSearchHint => 'חפש דועאות, זיארות…';

  @override
  String get duasFilterAll => 'הכל';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count דועאות וזיארות',
      one: 'דועא אחת',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'לא נמצאו דועאות.';

  @override
  String get duaCategoryDaily => 'יומי';

  @override
  String get duaCategoryWeekly => 'שבועי';

  @override
  String get duaCategoryOccasions => 'אירועים';

  @override
  String get duaCategoryZiyarat => 'זיארה';

  @override
  String get duaCategoryTasbih => 'תסביח';

  @override
  String get eventTypeBirth => 'לידה';

  @override
  String get eventTypeMartyrdom => 'שהדות';

  @override
  String get eventTypeOccasion => 'אירוע';

  @override
  String get duaCopyTooltip => 'העתק תרגום';

  @override
  String get duaToggleTransliteration => 'תעתיק';

  @override
  String get duaToggleTranslation => 'תרגום';

  @override
  String get duaAskAiLabel => 'בקש מאייארה להסביר דועא זו';

  @override
  String get duaAskAiLockedLabel => 'שאל את אייארה (וילאיה)';

  @override
  String get duaAiLockedMessage =>
      'הסברי אייארה זמינים לחברי וילאיה. שדרג בהגדרות.';

  @override
  String duaAiComingSoon(String name) {
    return 'שאל את אייארה על \"$name\" — בקרוב!';
  }

  @override
  String get duaCopiedToast => 'הדועא הועתקה ללוח.';

  @override
  String get tasbihAllahuAkbarMeaning => 'אללה הוא הגדול ביותר';

  @override
  String get tasbihAlhamdulillahMeaning => 'כל השבח שייך לאללה';

  @override
  String get tasbihSubhanallahMeaning => 'תהילה לאללה';

  @override
  String get tasbihResetTooltip => 'אפס';

  @override
  String get tasbihCompleteTitle => 'תסביח הושלם';

  @override
  String get tasbihCompleteMessage => 'שיקבל אללה את הדיכר שלך.';

  @override
  String get tasbihTapHint => 'הקש בכל מקום לספירה';

  @override
  String get tasbihatScreenTitle => 'מדריך תפילה';

  @override
  String get tasbihatScreenSubtitle => 'תפילות ההלל';

  @override
  String get tasbihatScreenDescription =>
      'מדריך מלא לתפילות ההלל הנאמרות במהלך התפילות היומיות ולאחריהן — בעקבות מסורת אהל אל-בית (עליהם השלום).';

  @override
  String get tasbihatArba3Title => 'תסביחאת אל-ארבע';

  @override
  String get tasbihatArba3Subtitle => 'נאמר ברכעה ה-3 וה-4';

  @override
  String get tasbihatArba3Info =>
      'בפסיקה השיעית, תסביחאת אל-ארבע מחליף את סורת אל-פאתחה ברכעה ה-3 וה-4 של זוהר, עסר, מע\'ריב ועישא. חובה (וואג\'ב) לאומרו פעם אחת, ומומלץ (מוסתחב) לאומרו שלוש פעמים.';

  @override
  String get tasbihatArba3Translation =>
      'תהילה לאללה · כל השבח לאללה\nאין אלוה מלבד אללה · אללה הוא הגדול ביותר';

  @override
  String get tasbihatArba3CompleteTitle => 'הקריאה הושלמה';

  @override
  String get tasbihatArba3CompleteMessage => 'שתתקבל תפילתך — אמין';

  @override
  String get tasbihatArba3TapHint => 'הקש לאחר כל קריאה';

  @override
  String get tasbihatZahraSubtitle => 'לאחר כל תפילה · 100 חרוזים';

  @override
  String get tasbihatZahraOriginLabel => 'מקור';

  @override
  String get tasbihatZahraHadith =>
      'הגברת פאטמה אל-זהרא (עליה השלום) ביקשה מהנביא ﷺ משרת. הוא אמר: \"האם לא אדריך אותך לדבר טוב יותר? אמור סובחאן-אללה 33 פעמים, אל-חמדולילה 33 פעמים ואללהו-אכבר 34 פעמים לאחר כל תפילה. זה טוב לך יותר ממשרת.\"';

  @override
  String get tasbihatZahraHadithSource => '— ביחאר אל-אנואר, כרך 85';

  @override
  String get tasbihatZahraOpenCounter => 'פתח מונה תסביח';

  @override
  String get tasbihatDuasTitle => 'דועאות מומלצות';

  @override
  String get tasbihatDuasSubtitle => 'לאחר השלמת תפילתך';

  @override
  String get tasbihatDuaAyatKursiTitle => 'אית אל-כורסי';

  @override
  String get tasbihatDuaAyatKursiWhen => 'לאחר כל תפילת חובה';

  @override
  String get tasbihatDuaAyatKursiSource => 'סורת אל-בקרה 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'כל מי שאומר אית אל-כורסי לאחר כל תפילת חובה, אין דבר בינו לגן עדן מלבד המוות. האימאם אל-באקר (עליו השלום) אמר שזה מהפסוקים הגדולים ביותר בקוראן.';

  @override
  String get tasbihatDuaSalawatTitle => 'צלוואת';

  @override
  String get tasbihatDuaSalawatWhen => 'לאחר כל תפילה · חותם את כל התחינות';

  @override
  String get tasbihatDuaSalawatSource =>
      'האימאם אל-צאדק (עליו השלום) — אל-כאפי';

  @override
  String get tasbihatDuaSalawatNote =>
      'שליחת ברכות לנביא ﷺ ולמשפחתו הטהורה (אל מוחמד) מומלצת לחתימת כל דועא. האימאם אל-צאדק (עליו השלום) אמר: \"כל דועא תלויה עד שתשלח צלוואת על מוחמד ומשפחתו.\"';

  @override
  String get tasbihatDuaFarajTitle => 'דועא אל-פרג\'';

  @override
  String get tasbihatDuaFarajWhen => 'לאחר כל תפילה · לאימאם זמננו';

  @override
  String get tasbihatDuaFarajSource =>
      'נלמד מהאימאם אל-חסן אל-עסכרי (עליו השלום)';

  @override
  String get tasbihatDuaFarajNote =>
      'דואָא להופעתו של אימאם אל-מהדי (עף), האימאם השנים עשר, שנלמד על ידי אביו. זה נאמר לעיתים קרובות על ידי רבים מהמוסלמים השיעים לאחר תפילה כהבעת מסירות לאימאם החי.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'תסביח הגברת פאטמה';

  @override
  String get tasbihatDuaTasbihFatimaWhen => 'לאחר מע\'ריב ועישא · מומלץ במיוחד';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'האימאם אל-באקר (עליו השלום) — ביחאר אל-אנואר';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'האימאם אל-באקר (עליו השלום) אמר שאמירת תסביח אל-זהרא לאחר עישא לפני השינה טובה יותר מ-1000 רכעות של תפילה רשות. אורה עולה לשמים.';

  @override
  String get tasbihFatimaGiftPre => 'מתנה מהנביא';

  @override
  String get tasbihFatimaGiftPost => 'נאמרת לאחר כל תפילה';

  @override
  String get prayerTrackerTitle => 'מעקב תפילות';

  @override
  String get prayerTrackerPrayed => 'התפלל';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'רצף של $count ימים';
  }

  @override
  String get prayerTrackerAllComplete => 'כל התפילות הושלמו היום. שיקבל אללה.';

  @override
  String get dhikrTrackerTitle => 'תסביח אל-זהרא';

  @override
  String get dhikrTrackerCompletedToday => 'הושלם היום';

  @override
  String get dhikrTrackerNotDoneToday => 'טרם בוצע היום';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'רצף של $count ימים';
  }

  @override
  String get dhikrReminderTitle => 'תזכורת תסביח';

  @override
  String get dhikrReminderDescription =>
      'תזכורת יומית עדינה לאמור את תסביח אל-זהרא (עליה השלום).';

  @override
  String get dhikrReminderEnable => 'אפשר תזכורת תסביח';

  @override
  String get dhikrReminderTimeLabel => 'זמן תזכורת';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'חדית\' יומי';

  @override
  String get hadithLabelArabic => 'ערבית';

  @override
  String get hadithLabelTranslation => 'תרגום';

  @override
  String get hadithBadge => 'חדית\'';

  @override
  String get hadithShare => 'שתף חדית\' זה';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nדרך אייארה';
  }

  @override
  String get hadithNavPrevious => 'הקודם';

  @override
  String get hadithNavNext => 'הבא';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'הארבעה עשר חסינים';

  @override
  String get imamsScreenSubtitle =>
      'הנביא, הגברת פאטימה, ושנים עשר האימאמים — המדריכים המוחלטים והחסינים באסלאם השיעי של השנים עשר';

  @override
  String get imamLabelBorn => 'נולד';

  @override
  String get imamLabelMartyrdom => 'שהדות';

  @override
  String get imamLabelStatus => 'מעמד';

  @override
  String get imamSectionBiography => 'ביוגרפיה';

  @override
  String get imamSectionFamousSaying => 'אמרה מפורסמת';

  @override
  String get imamRoleProphet => 'הנביא האחרון';

  @override
  String get imamRoleInfallible => 'חסר הפגם';

  @override
  String get imamOrdinal1 => 'האימאם הראשון';

  @override
  String get imamOrdinal2 => 'האימאם השני';

  @override
  String get imamOrdinal3 => 'האימאם השלישי';

  @override
  String get imamOrdinal4 => 'האימאם הרביעי';

  @override
  String get imamOrdinal5 => 'האימאם החמישי';

  @override
  String get imamOrdinal6 => 'האימאם השישי';

  @override
  String get imamOrdinal7 => 'האימאם השביעי';

  @override
  String get imamOrdinal8 => 'האימאם השמיני';

  @override
  String get imamOrdinal9 => 'האימאם התשיעי';

  @override
  String get imamOrdinal10 => 'האימאם העשירי';

  @override
  String get imamOrdinal11 => 'האימאם האחד-עשר';

  @override
  String get imamOrdinal12 => 'האימאם השנים-עשר';

  @override
  String get duaAudioScreenTitle => 'האזן לדועאות';

  @override
  String get duaAudioScreenSubtitle =>
      'בחר דועא להאזנה. הקש על הכרטיס להפעלה או השהייה.';

  @override
  String get duaAudioComingSoonMessage =>
      'שמע לדועא זו יהיה זמין בעדכון הקרוב.';

  @override
  String get duaAudioClose => 'סגור';

  @override
  String get duaAudioError => 'לא ניתן היה לטעון שמע. אנא בדוק את החיבור שלך.';

  @override
  String get duaAudioMetaTransmittedBy => 'הועבר על ידי';

  @override
  String get duaAudioMetaOccasion => 'אירוע';

  @override
  String get duaAudioMetaDuration => 'משך';

  @override
  String get quickActionDailyHadith => 'חדית\' יומי';

  @override
  String get quickAction14Masumeen => 'ארבעה עשר חסינים';

  @override
  String get quickActionListenDuas => 'האזן';

  @override
  String get quickActionTasbihat => 'מדריך תפילה';

  @override
  String get pilgrimageSectionTitle => 'המסע הקדוש';

  @override
  String get pilgrimageSectionSubtitle =>
      'מדריכים מלאים לחג\' ועומרה — עלייה לרגל לבית אללה הקדוש במכה';

  @override
  String get hajjCardTitle => 'חג\'';

  @override
  String get hajjCardSubtitle => 'הפיל החמישי של האסלאם';

  @override
  String get hajjCardDescription =>
      'עלייה לרגל השנתית הגדולה — חובה פעם אחת בחיים לכל מוסלמי מסוגל';

  @override
  String get hajjScreenTitle => 'מדריך חג\'';

  @override
  String get hajjScreenSubtitle => 'מדריך שלב-אחר-שלב לעלייה לרגל הגדולה';

  @override
  String get umrahCardTitle => 'עומרה';

  @override
  String get umrahCardSubtitle => 'עלייה לרגל הקטנה';

  @override
  String get umrahCardDescription =>
      'מסע רוחני מעמיק שניתן לבצע בכל עת של השנה';

  @override
  String get umrahScreenTitle => 'מדריך עומרה';

  @override
  String get umrahScreenSubtitle => 'מדריך שלב-אחר-שלב לעלייה לרגל הקטנה';

  @override
  String get pilgrimageStepsTitle => 'פולחנות ושלבים';

  @override
  String get pilgrimageImportantNotesTitle => 'הערות חשובות';

  @override
  String get pilgrimageDuaTitle => 'דואע לשלב זה';

  @override
  String get pilgrimageJafariNoteTitle => 'הערת פיקוח ג\'עפרי';

  @override
  String get pilgrimageComplete => '✓ הושלם';

  @override
  String get pilgrimageMarkDone => 'סמן כהושלם';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done מתוך $total שלבים';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes דקות';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'עולי רגל שיעים';

  @override
  String get pilgrimageShiaNoteBody =>
      'רבים מהעולים השיעים גם נוסעים למדינה כדי לבקר את הנביא מוחמד (סע) במסגד הנביא ואת הקברים בגן אל-בקי. ביקורים אלו נושאים משמעות רוחנית עמוקה, אם כי הם לא עצמם טקסי חאג\'.';

  @override
  String get hajjIntro =>
      'חאג\' הוא העמוד החמישי של האסלאם, חובה פעם אחת בחיים לכל מוסלמי שיכול פיזית וכלכלית. עבור רוב העולים השיעים של השנים עשר היום, זה אומר חאג\' אל-תמאתו\', הנערך בחודש דול חיג\'jah בעקבות הנביא אברהים (עף), בנו ישמעאל (עף), והגברת הג\'ר. מדריך זה עוקב אחרי המתווה הג\'עפרי של הטקסים, בעוד שזיארת במדינה נשארת מסע יקר ערך לפני או אחרי חאג\'.';

  @override
  String get umrahIntro =>
      'העומרה היא עלייה לרגל הקטנה למכה, ובניגוד לחג\', ניתן לבצעה בכל עת של השנה. אמנם אינה חובה, אך היא נושאת שכר רוחני עצום ונחשבת למעשה עבודת אל מומלץ מאוד. היא חולקת מספר פולחנות עם החג\' אך קצרה יותר, ומורכבת מארבעה פולחנות עיקריים.';

  @override
  String get voiceInputTitle => 'קלט קולי';

  @override
  String get voiceInputMicTitle => 'מיקרופון';

  @override
  String get voiceInputMicSubtitle =>
      'דבר את הקלט שלך כדי לשאול את Ayara במקום להקליד.';

  @override
  String get voiceInputMicDenied => 'גישה למיקרופון נדחתה.';

  @override
  String get voiceInputSpeak => 'דבר במקום';

  @override
  String get voiceInputListening => 'שומע…';

  @override
  String get voiceInputPermissionDenied => 'גישה למיקרופון נדרשת לקלט קולי.';
}
