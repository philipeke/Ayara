// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Dilini seç';

  @override
  String get languageSelectSub => 'Bunu daha sonra Ayarlarda dəyişə bilərsən';

  @override
  String get actionContinue => 'Davam et';

  @override
  String get languageSuggestedHeader => 'Tövsiyə olunan';

  @override
  String get languageAllHeader => 'Bütün dillər';

  @override
  String get languageSuggestedBadge => 'Tövsiyə olunur';

  @override
  String get languageSearchHint => 'Axtar…';

  @override
  String get planBasic => 'Standart';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Gündəlik rəhbərlik';

  @override
  String get categorySlot02 => 'İman və etibar';

  @override
  String get categorySlot03 => 'Namaz üzərində düşüncə';

  @override
  String get categorySlot04 => 'Səbir və ümid';

  @override
  String get categorySlot05 => 'Bağışlanma dilə';

  @override
  String get categorySlot06 => 'Mərhəmət və şəfqət';

  @override
  String get categorySlot07 => 'İmanın gücü';

  @override
  String get categorySlot08 => 'Şükürlü qəlb';

  @override
  String get categorySlot09 => 'Həyatın mənası';

  @override
  String get categorySlot10 => 'Ailə bağları';

  @override
  String get categorySlot11 => 'Daxili rahatlıq';

  @override
  String get categorySlot12 => 'Peyğəmbər hikməti';

  @override
  String get categorySlot13 => 'Gözəl əxlaq';

  @override
  String get categorySlot14 => 'Nəfsə qarşı dur';

  @override
  String get categorySlot15 => 'Axşam zikri';

  @override
  String get categoryCustom => 'Şəxsi düşüncə';

  @override
  String get dhikrMeaningSubhanallah => 'Allah pakdır';

  @override
  String get dhikrMeaningAlhamdulillah => 'Bütün həmd Allaha məxsusdur';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah ən böyüktür';

  @override
  String get quranVerseHeartAtRest =>
      'Bilin ki, qəlblər yalnız Allahı zikr etməklə rahatlıq tapar.';

  @override
  String get promptHint =>
      'İslami rəhbərlik və düşüncə üçün bir kateqoriyaya toxun';

  @override
  String get currentLanguage => 'Cari dil';

  @override
  String get settingsLanguage => 'Dil ayarları';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get chooseLanguage => 'Dilini seç';

  @override
  String get continueCta => 'Davam et';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count söz',
      one: '$count söz',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Seçimlər';

  @override
  String get newCta => 'Yeni';

  @override
  String get actionsTitle => 'Nə etmək istərdin?';

  @override
  String get copy => 'Kopyala';

  @override
  String get share => 'Paylaş';

  @override
  String get close => 'Bağla';

  @override
  String get copiedToast => 'Mübadilə yaddaşına kopyalandı';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Yeni cavab yaradıla bilmədi';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nYenidən cəhd etmək istəyirsən?';
  }

  @override
  String get cancelCta => 'Ləğv et';

  @override
  String get retryCta => 'Yenidən cəhd et';

  @override
  String get authTitle => 'Hesabını yarat';

  @override
  String get continueAsGuest => 'Qonaq kimi davam et';

  @override
  String get signInGoogle => 'Google ilə daxil ol';

  @override
  String get signInApple => 'Apple ilə daxil ol';

  @override
  String get signInEmail => 'E-poçt ilə daxil ol';

  @override
  String get upgradeWithApple => 'Apple ilə davam et';

  @override
  String get mustAccept =>
      'Şərtləri qəbul etməli və Məxfilik Siyasətini təsdiqləməlisən.';

  @override
  String get termsLabel => 'Xidmət Şərtlərini qəbul edirəm';

  @override
  String get privacyLabel => 'Məxfilik Siyasətini oxumuşam';

  @override
  String get marketingOptIn => 'Xəbərlər və təkliflər almağa razıyam';

  @override
  String get openTerms => 'Xidmət Şərtləri';

  @override
  String get openPrivacy => 'Məxfilik Siyasəti';

  @override
  String get accountSection => 'Hesab';

  @override
  String get guestMode => 'Qonaq rejimi';

  @override
  String get signedIn => 'Daxil olunub';

  @override
  String get upgradeHint =>
      'Hesab yaradaraq düşüncələrini bütün cihazlarda saxla.';

  @override
  String get upgradeWithGoogle => 'Google ilə davam et';

  @override
  String get signOut => 'Çıxış et';

  @override
  String get snackUpgraded => 'Hesab Google ilə yüksəldildi ✅';

  @override
  String get snackSignedIn => 'Google ilə daxil olundu ✅';

  @override
  String get snackSignedOut => 'Çıxış edildi';

  @override
  String get snackSignedInApple => 'Apple ilə daxil olundu ✅';

  @override
  String get snackSignedInGoogle => 'Google ilə daxil olundu ✅';

  @override
  String get snackUpgradedApple => 'Hesab Apple ilə yüksəldildi ✅';

  @override
  String get snackUpgradedGoogle => 'Hesab Google ilə yüksəldildi ✅';

  @override
  String get historyTitle => 'Əvvəlki düşüncələr';

  @override
  String get historyOpenCta => 'Əvvəlki düşüncələr';

  @override
  String get historyEmpty => 'Hələ saxlanılmış düşüncə yoxdur.';

  @override
  String get historyDeleteTitle => 'Düşüncə silinsin?';

  @override
  String get historyDeleteBody => 'Bu, seçilmiş elementi həmişəlik siləcək.';

  @override
  String get deleteCta => 'Sil';

  @override
  String get historyButton => 'Əvvəlki düşüncələr';

  @override
  String get historyEmptyTitle => 'Hələ düşüncə yoxdur';

  @override
  String get historyEmptyBody =>
      'Əvvəlcə nəsə yarat — saxlanılmış elementlərin burada görünəcək.';

  @override
  String get historyDelete => 'Sil';

  @override
  String get footerTitle => 'Wilaya, İman və Səbir ilə';

  @override
  String get footerSubtitle => 'Hər dəfə bir dua';

  @override
  String get genericErrorSnack =>
      'Nəsə səhv getdi — zəhmət olmasa bir azdan yenidən cəhd et.';

  @override
  String get upgradeAccountCta =>
      'Düşüncələrini bütün cihazlarda saxla – hesab yarat';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get exportData => 'Məlumatlarımı ixrac et';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Bir az yavaş 🐯\nAyara növbəti cavabdan əvvəl bir anlığa ehtiyac duyur…';

  @override
  String get rateDailyLimit =>
      'Hazırda düşüncələrin bitib.\nDaha çox düşüncə al və ya Wilaya-ya yüksəlt.';

  @override
  String get rateCreditsExhausted =>
      'Bütün düşüncələrindən istifadə etmisən.\nDavam etmək üçün əlavə et və ya Wilaya-ya yüksəlt.';

  @override
  String get rateGraceCreditsExhausted =>
      'Hazırda düşüncələrin bitib.\nDaha çox düşüncə al və ya Wilaya-ya yüksəlt.';

  @override
  String get premiumDescription =>
      'Wilaya premium funksiyaları, gələcək kateqoriyaları və xüsusi nişanı açır.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Hazırda düşüncələrin tükənib. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Düşüncələrin yoxlanıla bilmədi: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Düşüncələrin yoxlanılarkən xəta baş verdi.';

  @override
  String get aiFallbackGeneric =>
      'Nəsə səhv getdi — zəhmət olmasa bir azdan yenidən cəhd et.';

  @override
  String get limitSectionTitle => 'Düşüncələr';

  @override
  String get limitTodayLabel => 'İstifadə';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Qalan düşüncələr: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Yüklənir…';

  @override
  String get limitLoadingLabelDescription =>
      'İstifadə statistikası gətirilərkən düşüncələr kartında göstərilir.';

  @override
  String get aiLimitTitle => 'Düşüncələr';

  @override
  String get aiLimitSubtitle =>
      'Hər cavab 1 düşüncə istifadə edir. Standart plan başlanğıc düşüncələri ehtiva edir. Wilaya premium kateqoriyaları açır və əlavə yükləmə imkanı verir.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total düşüncə istifadə olunub';
  }

  @override
  String get creditsSectionTitle => 'Düşüncələr';

  @override
  String get creditsUsageLabel => 'İstifadə';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Qalan düşüncələr: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Yüklənir…';

  @override
  String get creditsLoadingLabelDescription =>
      'Düşüncə statistikası gətirilərkən göstərilir.';

  @override
  String get creditsTitle => 'Düşüncələr';

  @override
  String get creditsSubtitle =>
      'Hər cavab 1 düşüncə istifadə edir. Standart plan başlanğıc düşüncələri ehtiva edir. Wilaya premium kateqoriyaları açır və əlavə yükləmə imkanı verir.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total düşüncə istifadə olunub';
  }

  @override
  String get settingsDeleteTitle => 'Hesabı sil';

  @override
  String get settingsDeleteDescription =>
      'Hesabını və əlaqəli bütün məlumatları həmişəlik sil.';

  @override
  String get settingsDeleteButtonLabel => 'Hesabımı sil';

  @override
  String get settingsDeleteDialogTitle => 'Hesab silinsin?';

  @override
  String get settingsDeleteDialogBody =>
      'Bu əməl qalıcıdır və geri qaytarıla bilməz.\n\nBütün söhbətlərin, tarixçən və hesab məlumatların silinəcək.';

  @override
  String get settingsDeleteDialogCancel => 'Ləğv et';

  @override
  String get settingsDeleteDialogConfirm => 'Sil';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Başlanğıc düşüncələr istifadə olunub';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Bu cihaz üçün başlanğıc düşüncələr istifadə olunub. Davam etmək üçün Wilaya-ya yüksəlt və ya daha çox düşüncə al.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Başlanğıc düşüncələr istifadə olunub';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Bu cihaz üçün başlanğıc düşüncələr istifadə olunub. Davam etmək üçün Wilaya-ya yüksəlt və ya daha çox düşüncə al.';

  @override
  String get deviceBoundError =>
      'Bu cihaz artıq başqa hesaba bağlıdır. Zəhmət olmasa ilkin hesabla daxil ol.';

  @override
  String get premiumTitle => 'Wilaya rejimi';

  @override
  String get premiumSubtitleBasic => 'Ayara-nın tam təcrübəsini aç.';

  @override
  String get premiumSubtitlePremium =>
      'Sən artıq Wilaya-dasan. Daha çox düşüncəyə ehtiyacın var?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Cari plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Düşüncələr: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Alışlar hazırda mövcud deyil.';

  @override
  String get premiumSignInToPurchase =>
      'Düşüncə almaq və ya Wilaya-nı açmaq üçün daxil ol.';

  @override
  String get premiumRestorePurchases => 'Alışları bərpa et';

  @override
  String get premiumProcessing => 'Emal edilir…';

  @override
  String get premiumRestoreHintTitle =>
      'Bu və ya başqa cihazda artıq Wilaya və ya düşüncələr almısan?';

  @override
  String get premiumRestoreHintBody => 'Görünmürsə, alışlarını bərpa et.';

  @override
  String get premiumBuyCredits200 => '200 düşüncə al';

  @override
  String get premiumBuyCredits400 => '400 düşüncə al';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya rejiminə yüksəlt';

  @override
  String get premiumTopupHint =>
      'Wilaya ilə ehtiyac olduqda əlavə düşüncə yükləyə bilərsən.';

  @override
  String get premiumUpgradeCta => 'Yüksəlt';

  @override
  String get premiumRequiredForCategory =>
      'Bu kateqoriya yalnız Wilaya istifadəçiləri üçün mövcuddur. Bütün premium məzmunu açmaq üçün Ayarlarda yüksəlt.';

  @override
  String get premiumBenefitsBasic =>
      'Əlavə düşüncələr, premium kateqoriyalara giriş və istədiyin vaxt rəhbərlik almaq üçün Wilaya-nı aç.';

  @override
  String get premiumBenefitsPremium =>
      'Sən Wilaya rejimindəsən. Düşüncələrin azalırsa, əlavə düşüncə yüklə və fasiləsiz davam et.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya-nı aç';

  @override
  String get premiumButtonTopup1000 => '1000 düşüncə əlavə et';

  @override
  String get premiumBadge => 'Wilaya aktivdir';

  @override
  String get premiumLoadingStore => 'Mağaza yüklənir…';

  @override
  String get premiumProductNotAvailable =>
      'Bu məhsul hələ mağazada mövcud deyil. Zəhmət olmasa sonra yenidən cəhd et.';

  @override
  String get premiumPurchaseError =>
      'Alış zamanı xəta baş verdi. Zəhmət olmasa yenidən cəhd et.';

  @override
  String get premiumBuyCredits100 => '100 düşüncə əlavə et';

  @override
  String get premiumFeatureLocked => 'Bu funksiyaya giriş üçün Wilaya-nı aç.';

  @override
  String get lockedCategoriesHint =>
      'Bəzi kateqoriyalar yalnız Wilaya üzvləri üçündür. Səyahətindəki bütün düşüncələri kəşf etmək üçün onları aç.';

  @override
  String get freePlanBlockedTitle => 'Başlanğıc düşüncələrin bitib';

  @override
  String get freePlanBlockedBody =>
      'Sən başlanğıc düşüncələri olan Standart plandasan və limitə çatmısan. Davam etmək və premium kateqoriyaları açmaq üçün Wilaya-ya yüksəlt.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Aşağıdakı Wilaya seçimlərinə bax';

  @override
  String get graceBlockedTitle => 'Başlanğıc düşüncələrin bitib';

  @override
  String get graceBlockedBody =>
      'Sən başlanğıc düşüncələri olan Standart plandasan və limitə çatmısan. Davam etmək və premium kateqoriyaları açmaq üçün Wilaya-ya yüksəlt.';

  @override
  String get graceBlockedCtaGoPremium => 'Aşağıdakı Wilaya seçimlərinə bax';

  @override
  String get rateGuestMustSignIn =>
      'Ayara və düşüncələrindən istifadə etmək üçün daxil ol.';

  @override
  String get guestNoCreditsTitle => 'Qonaq rejimi';

  @override
  String get guestNoCreditsBody =>
      'Qonaq kimi tətbiqə baxa bilərsən, amma düşüncələrdən istifadə edə bilməzsən. Düşüncələrdən və alışlardan istifadə etmək üçün sonra Ayarlardan daxil ol.';

  @override
  String get guestDialogContinue => 'Davam et';

  @override
  String get guestDialogLoginInstead => 'Bunun əvəzinə daxil ol';

  @override
  String get optionalLabel => 'isteğe bağlı';

  @override
  String get accountDeleteSuccessTitle => 'Hesab silindi';

  @override
  String get accountDeleteSuccessBody =>
      'Hesabın və əlaqəli məlumatların uğurla silindi.';

  @override
  String get accountDeleteSuccessClose => 'Bağla';

  @override
  String get accountDeleteErrorTitle => 'Hesab silinə bilmədi';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Yenidən təsdiqləmə ləğv edildi. Zəhmət olmasa yenidən daxil ol və silməyi təkrar yoxla.';

  @override
  String get accountDeleteReauthRequired =>
      'Hesabın silinməsi üçün yaxın zamanda daxil olunmuş olmalıdır. Zəhmət olmasa çıxış et, yenidən daxil ol və bir daha cəhd et.';

  @override
  String get settingsDeletePermanentWarning =>
      'Bu əməl qalıcıdır və geri qaytarıla bilməz. Hesabınla əlaqəli bütün məlumatlar silinəcək.';

  @override
  String get dailyGraceTitle => 'Gündəlik rəhbərlik';

  @override
  String get dailyGraceScriptureLabel => 'GÜNÜN AYƏSİ';

  @override
  String get dailyGraceSaintLabel => 'HƏFTƏNİN ALİMİ';

  @override
  String get dailyGraceReflectionLabel => 'AXŞAM DÜŞÜNCƏSİ';

  @override
  String get dailyGraceCopiedToast => 'Ayə mübadilə yaddaşına kopyalandı';

  @override
  String get locationConsentLabel =>
      'Qiblə istiqaməti və namaz vaxtları üçün Ayara-nın məkanımı istifadə etməsinə icazə ver';

  @override
  String get locationConsentHint =>
      'Yalnız bu funksiyalar üçün istifadə olunur. Məkanın heç vaxt paylaşılmır və saxlanılmır.';

  @override
  String get askPageTitle => 'Ayara-dan soruş';

  @override
  String get askPageDescription =>
      'İman, namaz, həyat və ya İslami təcrübə barədə istənilən sualı ver və Qurana və Əhli-Beyt təlimlərinə əsaslanan rəhbərlik al.';

  @override
  String get askPageInputHint => 'Sualını burada yaz…';

  @override
  String get askPageSubmitCta => 'Soruş';

  @override
  String get askPageInputEmptyError => 'Zəhmət olmasa əvvəlcə bir sual yaz.';

  @override
  String get askResultYourQuestion => 'Sənin sualın';

  @override
  String get guidancePageTitle => 'Qiblə';

  @override
  String get qiblaFacingMecca => 'Məkkəyə tərəf';

  @override
  String get qiblaCompassInstruction =>
      'Qızılı iynə yuxarı göstərənə qədər telefonunu çevir.\nBu istiqamət qibləyə (Məkkəyə) işarə edir.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS siqnalı zəifdir. Çölə çıx və Yenidən cəhd et düyməsinə toxun.';

  @override
  String get qiblaRetry => 'Yenidən cəhd et';

  @override
  String get qiblaTitle => 'Qiblə istiqaməti';

  @override
  String qiblaDistanceLabel(String km) {
    return 'Məkkəyə $km km';
  }

  @override
  String get qiblaLocationNeededTitle => 'Məkan tələb olunur';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara-nın olduğun yerdən Məkkədəki Kəbənin istiqamətini hesablaya bilməsi üçün məkan girişinə icazə ver.';

  @override
  String get qiblaOpenSettings => 'Ayarları aç';

  @override
  String get qiblaCompassLoading => 'Məkanın müəyyən edilir…';

  @override
  String get qiblaTowardMecca => 'Məkkəyə tərəf';

  @override
  String get prayerTimesTitle => 'Namaz vaxtları';

  @override
  String get prayerTimesFajr => 'Sübh';

  @override
  String get prayerTimesDhuhr => 'Zöhr';

  @override
  String get prayerTimesAsr => 'Əsr';

  @override
  String get prayerTimesMaghrib => 'Məğrib';

  @override
  String get prayerTimesIsha => 'İşa';

  @override
  String get prayerTimesLocationNeededTitle => 'Məkan tələb olunur';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara-nın şəhərin üçün dəqiq namaz vaxtlarını hesablaya bilməsi üçün məkan girişinə icazə ver.';

  @override
  String get prayerTimesNextLabel => 'Növbəti';

  @override
  String get prayerTimesDoneLabel => 'Bitdi';

  @override
  String get monthlyPrayerTimesTitle => 'Aylıq namaz vaxtları';

  @override
  String get monthlyPrayerTimesViewButton => 'Tam ayı göstər';

  @override
  String get monthlyPrayerTimesNextMonth => 'Növbəti ay';

  @override
  String get monthlyPrayerTimesDayHeader => 'Gün';

  @override
  String get sharePrayerTimes => 'Namaz vaxtlarını paylaş';

  @override
  String get notificationsSectionTitle => 'Bildirişlər';

  @override
  String get notificationsSectionSubtitle =>
      'Namaz xatırlatmaları, təqvim hadisələri və daha çoxu';

  @override
  String get dailyReflectionReminderTitle => 'Gündəlik düşüncə';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara-nı açıb imanla bağlantı qurmağın üçün zərif gündəlik xatırlatma.';

  @override
  String get dailyReflectionReminderEnable => 'Gündəlik xatırlatmanı aktiv et';

  @override
  String get dailyReflectionReminderTimeLabel => 'Xatırlatma vaxtı';

  @override
  String get prayerNotificationsTitle => 'Namaz xatırlatmaları';

  @override
  String get prayerNotificationsDescription =>
      'Gün boyu bağlı qalmağın üçün hər namaz vaxtından əvvəl zərif xatırlatma al.';

  @override
  String get prayerNotificationsEnable => 'Namaz xatırlatmalarını aktiv et';

  @override
  String get prayerNotificationsOpenSettings => 'Bildiriş ayarlarını aç';

  @override
  String get prayerNotificationsDenied => 'Bildirişlər söndürülüb';

  @override
  String get prayerNotificationsDeniedHint =>
      'Namaz vaxtı xatırlatmalarını almaq üçün Ayarlara gedib Ayara üçün bildirişlərə icazə ver.';

  @override
  String get notificationsConsentLabel =>
      'Namaz vaxtları üçün bildirişlərə icazə ver';

  @override
  String get prayerNotifTitleFajr => '🌅 Sübh — Səhər namazı';

  @override
  String get prayerNotifBodyFajr =>
      'Sübh Əhli-Beytin səhərlərinin namazıdır. İmam Əli (ə) buyurdu: Sübh namazını ən qiymətli əmanətini qoruduğun kimi qoru. Qalx, təmizlən və Allahın hüzurunda dayan.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Zöhr — Günorta namazı';

  @override
  String get prayerNotifBodyDhuhr =>
      'Əhli-Beyt imamları zikrin hər anını dəyərləndirirdilər. Gününü bir anlıq dayandır, lazım olsa Zöhrü Əsrlə birləşdir və qəlbini Allaha qaytar.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Əsr — Günortadan sonrakı namaz';

  @override
  String get prayerNotifBodyAsr =>
      'Namazı qoru, çünki o, səninlə Allah arasındakı əhddir. Əsr vaxtı gəlib — onu zikrsiz keçirmə.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Məğrib — Gün batımı namazı';

  @override
  String get prayerNotifBodyMaghrib =>
      'Günəş batdı — bu, Əhli-Beytin dua üçün müqəddəs saydığı bir andır. Gecə başlamazdan əvvəl Məğrib namazını qıl və əllərini duaya aç.';

  @override
  String get prayerNotifTitleIsha => '🌙 İşa — Gecə namazı';

  @override
  String get prayerNotifBodyIsha =>
      'Gününü Allahın yaxınlığı ilə tamamla. İmamlar İşadan sonra Salat əl-Leyli təşviq edirdilər — amma əvvəlcə İşa namazını tamamla və günü Onun zikri ilə bağla.';

  @override
  String get outOfReflectionsBannerText =>
      'Bütün düşüncələrindən istifadə etmisən';

  @override
  String get outOfReflectionsBannerCta => 'Daha çox al';

  @override
  String get dhikrPageTitle => 'Zikr';

  @override
  String get dhikrTapToCount => 'Saymaq üçün dairəyə toxun';

  @override
  String get dhikrResetButton => 'Sıfırla';

  @override
  String get dhikrComplete => 'MaşaAllah';

  @override
  String get dhikrCompleteMessage =>
      'Allahın 100 zikrini tamamladın. Qəlbin üçün bir nur olsun.';

  @override
  String get disclaimerTitle => 'Bu tətbiqin rəhbərliyi haqqında';

  @override
  String get disclaimerBody =>
      'Ayara, Qurana və Əhli-Beyt təlimlərinə əsaslanan İslami düşüncələr, xatırlatmalar və mənəvi məzmun təqdim edir ki, şəxsi iman yolunda sənə dəstək olsun. Bu məzmun yalnız ümumi məlumatlandırma və ilham məqsədi ilə təqdim olunur.\n\nAyara ixtisaslı dini rəhbərliyi əvəz etmir.\nBu tətbiqdəki rəhbərlik ixtisaslı İslam alimini, mərceyi və ya teoloji təhsilli müəllimi əvəz etmir. Şiə İslamında dini rəhbərlik cəfəri fiqh məktəbinə və diri mərceyə (təqlid mənbəyinə) tabe olmaq ənənəsinə əsaslanır — yəni dini praktikada möminlərə rəhbərlik edən ixtisaslı fəqihə. Əgər dini hökmlər, halal və haram məsələləri və ya şəxsi dini öhdəliklər barədə sualların varsa, zəhmət olmasa ixtisaslı mərceyə və ya cəmiyyətindəki bir alimə müraciət et.\n\nBu tətbiq dini hökm vermir.\nAyara fiqh və ya şəxsi dini vəzifələr məsələsində qəti dini qərarlar vermir. Buradakı heç nə fətva və ya məcburi dini göstəriş kimi qəbul edilməməlidir.\n\nƏhli-Beytin mərkəzi rolu.\nŞiə İslamında Peyğəmbər Məhəmməd ﷺ və onun pak ailəsi — Əhli-Beyt — Qurandan sonra İslam ümmətinin səlahiyyətli rəhbərləridir. Əhli-Beytin on iki imamı İslam təlimlərinin ilahi təyin olunmuş şərhçiləridir. Bu tətbiqdəki məzmun bu ənənəni əks etdirir və ona sədaqətlə hörmət etməyə çalışır.\n\nCəmiyyət məsələləri.\nBu tətbiq imanla bağlılığını təşviq etməyi məqsəd qoyur və eyni zamanda yerli məscidinin, İslam mərkəzinin və dini cəmiyyətinin vacib roluna dərin hörmətlə yanaşır. Səni yaxınındakı ixtisaslı müəllimlərlə əlaqədə qalmağa və onlardan öyrənməyə təşviq edirik.';

  @override
  String get disclaimerClose => 'Başa düşdüm';

  @override
  String get disclaimerInfoTooltip => 'Bu tətbiqin rəhbərliyi haqqında';

  @override
  String get disclaimerSettingsSubtitle =>
      'Yalnız ümumi məlumat məqsədləri üçündür. Tam xəbərdarlığı oxumaq üçün toxun.';

  @override
  String get disclaimerSectionHeader => 'Rəhbərlik barədə xəbərdarlıq';

  @override
  String get navHome => 'Ana səhifə';

  @override
  String get navReflect => 'Düşün';

  @override
  String get navDuas => 'Dualar';

  @override
  String get navCalendar => 'Təqvim';

  @override
  String get dashboardToday => 'BU GÜN';

  @override
  String get dashboardComingUp => 'Yaxınlaşan';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gün',
      one: 'gün',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Sürətli giriş';

  @override
  String get quickActionQibla => 'Qiblə';

  @override
  String get quickActionDhikr => 'Zikr';

  @override
  String get quickActionDailyGrace => 'Rəhbərlik';

  @override
  String get quickActionPrayerTimes => 'Namaz vaxtları';

  @override
  String get askAyaraTitle => 'Ayara-dan soruş';

  @override
  String get askAyaraSubtitle =>
      'İstənilən İslami sualı ver və düşünülmüş, yönləndirici cavab al.';

  @override
  String get askAyaraHint => 'məs., Ramazanın əhəmiyyəti nədir?';

  @override
  String get askAyaraSubmit => 'Soruş';

  @override
  String get wisdomOfTheDayTitle => 'Günün hikməti';

  @override
  String get calendarScreenTitle => 'İslami təqvim';

  @override
  String get calendarUpcomingOccasions => 'Yaxınlaşan günlər';

  @override
  String get calendarOccasionRemindersTitle => 'Gün xatırlatmaları';

  @override
  String get calendarOccasionRemindersHint =>
      'Hər hadisədən bir axşam əvvəl bildiriş göndərilir';

  @override
  String get calendarNotifPermissionDenied =>
      'Bildiriş icazəsi rədd edildi. Onu cihaz ayarlarında aktiv et.';

  @override
  String get calendarNoEvents => 'Yaxınlaşan hadisə tapılmadı.';

  @override
  String get calendarAddToPhone => 'Telefon Təqviminə Əlavə Et';

  @override
  String get calendarAddedToPhone => 'Təqvimə əlavə edildi';

  @override
  String get calendarCountdownToday => 'BU GÜN';

  @override
  String get calendarCountdownTomorrow => 'SABAH';

  @override
  String calendarCountdownDays(int days) {
    return '$days gün sonra';
  }

  @override
  String get calendarAH => 'H';

  @override
  String get calendarMonthJan => 'Yan';

  @override
  String get calendarMonthFeb => 'Fev';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'İyn';

  @override
  String get calendarMonthJul => 'İyl';

  @override
  String get calendarMonthAug => 'Avq';

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
      'Məhərrəm günləri — Kərbəlanı xatırla';

  @override
  String get calendarSeasonAshura => 'Aşura — Ya Hüseyn (ə)';

  @override
  String get calendarSeasonMuharramLate => 'Məhərrəm — hüzn və düşüncə günləri';

  @override
  String get calendarSeasonArbaeen => 'Ərbəin — Hüseynin qırxı';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ərbəinə gedən yol';

  @override
  String get calendarSeasonMabath => 'Mə\'bəs mübarək — vəhyin doğuşu';

  @override
  String get calendarSeasonMidShaban =>
      'Şəbanın ortası — İmam Mehdinin (əc) mövludu';

  @override
  String get calendarSeasonRamadan => 'Ramazan mübarək — Quran ayı';

  @override
  String get calendarSeasonGhadir => 'Qədir bayramın mübarək!';

  @override
  String get hijriMonth1 => 'Məhərrəm';

  @override
  String get hijriMonth2 => 'Səfər';

  @override
  String get hijriMonth3 => 'Rəbiül-əvvəl';

  @override
  String get hijriMonth4 => 'Rəbiüs-sani';

  @override
  String get hijriMonth5 => 'Cəmadiül-əvvəl';

  @override
  String get hijriMonth6 => 'Cəmadiüs-sani';

  @override
  String get hijriMonth7 => 'Rəcəb';

  @override
  String get hijriMonth8 => 'Şəban';

  @override
  String get hijriMonth9 => 'Ramazan';

  @override
  String get hijriMonth10 => 'Şəvval';

  @override
  String get hijriMonth11 => 'Zilqədə';

  @override
  String get hijriMonth12 => 'Zilhiccə';

  @override
  String get duasScreenTitle => 'Dualar və ziyarətlər';

  @override
  String get duasSearchHint => 'Dua, ziyarət axtar…';

  @override
  String get duasFilterAll => 'Hamısı';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua və ziyarət',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Heç bir dua tapılmadı.';

  @override
  String get duaCategoryDaily => 'Gündəlik';

  @override
  String get duaCategoryWeekly => 'Həftəlik';

  @override
  String get duaCategoryOccasions => 'Münasibətlər';

  @override
  String get duaCategoryZiyarat => 'Ziyarət';

  @override
  String get duaCategoryTasbih => 'Təsbih';

  @override
  String get eventTypeBirth => 'Doğum';

  @override
  String get eventTypeMartyrdom => 'Şəhadət';

  @override
  String get eventTypeOccasion => 'Münasibət';

  @override
  String get duaCopyTooltip => 'Tərcüməni kopyala';

  @override
  String get duaToggleTransliteration => 'Transliterasiya';

  @override
  String get duaToggleTranslation => 'Tərcümə';

  @override
  String get duaAskAiLabel => 'Bu duanı Ayara-ya izah etdirt';

  @override
  String get duaAskAiLockedLabel => 'Ayara-dan soruş (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara izahları yalnız Wilaya üzvləri üçün mövcuddur. Ayarlardan yüksəlt.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" haqqında Ayara-dan soruş — tezliklə!';
  }

  @override
  String get duaCopiedToast => 'Dua mübadilə yaddaşına kopyalandı.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ən böyüktür';

  @override
  String get tasbihAlhamdulillahMeaning => 'Bütün həmd Allaha məxsusdur';

  @override
  String get tasbihSubhanallahMeaning => 'Allah pakdır';

  @override
  String get tasbihResetTooltip => 'Sıfırla';

  @override
  String get tasbihCompleteTitle => 'Təsbih tamamlandı';

  @override
  String get tasbihCompleteMessage => 'Allah zikrini qəbul etsin.';

  @override
  String get tasbihTapHint => 'Saymaq üçün istənilən yerə toxun';

  @override
  String get tasbihatScreenTitle => 'Namaz bələdçisi';

  @override
  String get tasbihatScreenSubtitle => 'NAMAZ TƏSBİHLƏRİ';

  @override
  String get tasbihatScreenDescription =>
      'Gündəlik namazlar zamanı və sonrasında oxunan təsbihlər üçün tam bələdçi — Əhli-Beyt (ə) ənənəsinə uyğun olaraq.';

  @override
  String get tasbihatArba3Title => 'TƏSBİHATƏL-ƏRBƏƏ';

  @override
  String get tasbihatArba3Subtitle => '3-cü və 4-cü rəkətdə oxunur';

  @override
  String get tasbihatArba3Info =>
      'Şiə fiqhində Təsbihatəl-Ərbəə Zöhr, Əsr, Məğrib və İşa namazlarının 3-cü və 4-cü rəkətlərində Fatihə surəsinin yerinə oxunur. Bir dəfə oxunması vacib, üç dəfə oxunması isə müstəhəbdir.';

  @override
  String get tasbihatArba3Translation =>
      'Allah pakdır · Bütün həmd Allaha məxsusdur\nAllahdan başqa məbud yoxdur · Allah ən böyüktür';

  @override
  String get tasbihatArba3CompleteTitle => 'Qiraət tamamlandı';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Allah namazını qəbul etsin — Amin';

  @override
  String get tasbihatArba3TapHint => 'Hər qiraətdən sonra toxun';

  @override
  String get tasbihatZahraSubtitle => 'Hər namazdan sonra · 100 dənə';

  @override
  String get tasbihatZahraOriginLabel => 'Mənşə';

  @override
  String get tasbihatZahraHadith =>
      'Həzrət Fatimə-Zəhra (s.ə) Peyğəmbərdən ﷺ bir xidmətçi istədi. O buyurdu: \"Səni daha xeyirli bir şeyə yönəltməyimmi? Hər namazdan sonra 33 dəfə Subhanallah, 33 dəfə Alhamdulillah və 34 dəfə Allahu Əkbər de. Bu sənin üçün bir xidmətçidən daha xeyirlidir.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar əl-Ənvar, c. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Təsbih sayğacını aç';

  @override
  String get tasbihatDuasTitle => 'TÖVSİYƏ OLUNAN DUALAR';

  @override
  String get tasbihatDuasSubtitle => 'Namazını tamamladıqdan sonra';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ayətül-Kürsi';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Hər vacib namazdan sonra';

  @override
  String get tasbihatDuaAyatKursiSource => 'Bəqərə surəsi 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Hər vacib namazdan sonra Ayətül-Kürsini oxuyan şəxslə cənnət arasında ölümdən başqa heç nə qalmaz. İmam Baqir (ə) buyurub ki, bu Quranın ən böyük ayələrindəndir.';

  @override
  String get tasbihatDuaSalawatTitle => 'Salavat';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Hər namazdan sonra · bütün duaları möhürləyir';

  @override
  String get tasbihatDuaSalawatSource => 'İmam Sadiq (ə) — əl-Kafi';

  @override
  String get tasbihatDuaSalawatNote =>
      'Peyğəmbərə ﷺ və onun pak ailəsinə (Ali-Məhəmməd) salavat göndərmək hər duanı tamamlamaq üçün tövsiyə olunur. İmam Sadiq (ə) buyurub: \"Məhəmmədə və onun ailəsinə salavat göndərilməyincə hər dua asılı qalar.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Dua əl-Fərəc';

  @override
  String get tasbihatDuaFarajWhen =>
      'Hər namazdan sonra · dövrümüzün imamı üçün';

  @override
  String get tasbihatDuaFarajSource =>
      'İmam Həsən Əskəri (ə) tərəfindən öyrədilib';

  @override
  String get tasbihatDuaFarajNote =>
      'On ikinci imam İmam Mehdinin (ə.f) zühuru üçün olan bir duadır, atası tərəfindən öyrədilmişdir. Şiələr bunu hər namazdan sonra diri İmama bağlılıq nişanəsi kimi gündəlik oxuyurlar.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Həzrət Fatimənin təsbihi';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Məğrib və İşadan sonra · xüsusilə tövsiyə olunur';

  @override
  String get tasbihatDuaTasbihFatimaSource => 'İmam Baqir (ə) — Bihar əl-Ənvar';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'İmam Baqir (ə) buyurub ki, İşadan sonra yatmazdan əvvəl Həzrət Zəhranın təsbihini demək 1000 rəkət nafilə namazdan daha üstündür. Onun nuru göylərə yüksəlir.';

  @override
  String get tasbihFatimaGiftPre => 'Peyğəmbərdən bir hədiyyə';

  @override
  String get tasbihFatimaGiftPost => 'hər namazdan sonra oxunur';

  @override
  String get prayerTrackerTitle => 'NAMAZ İZLƏYİCİSİ';

  @override
  String get prayerTrackerPrayed => 'Qılındı';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count günlük ardıcıllıq';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Bu gün bütün namazlar tamamlandı. Allah qəbul etsin.';

  @override
  String get dhikrTrackerTitle => 'TƏSBİHİ-ZƏHRA';

  @override
  String get dhikrTrackerCompletedToday => 'Bu gün tamamlanıb';

  @override
  String get dhikrTrackerNotDoneToday => 'Bu gün edilməyib';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count günlük ardıcıllıq';
  }

  @override
  String get dhikrReminderTitle => 'Təsbih xatırlatması';

  @override
  String get dhikrReminderDescription =>
      'Təsbihi-Zəhra (s.ə) zikrini oxumağın üçün zərif gündəlik xatırlatma.';

  @override
  String get dhikrReminderEnable => 'Təsbih xatırlatmasını aktiv et';

  @override
  String get dhikrReminderTimeLabel => 'Xatırlatma vaxtı';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Gündəlik hədis';

  @override
  String get hadithLabelArabic => 'ƏRƏBCƏ';

  @override
  String get hadithLabelTranslation => 'TƏRCÜMƏ';

  @override
  String get hadithBadge => 'HƏDİS';

  @override
  String get hadithShare => 'Bu hədisi paylaş';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara vasitəsilə';
  }

  @override
  String get hadithNavPrevious => 'Əvvəlki';

  @override
  String get hadithNavNext => 'Növbəti';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 Məsum';

  @override
  String get imamsScreenSubtitle =>
      'Peyğəmbər, Həzrət Fatimə və on iki imam — İslamın məsum rəhbərləri';

  @override
  String get imamLabelBorn => 'Doğum';

  @override
  String get imamLabelMartyrdom => 'Şəhadət';

  @override
  String get imamLabelStatus => 'Məqam';

  @override
  String get imamSectionBiography => 'BIOQRAFİYA';

  @override
  String get imamSectionFamousSaying => 'MƏŞHUR KƏLAM';

  @override
  String get imamRoleProphet => 'Son Peyğəmbər';

  @override
  String get imamRoleInfallible => 'Məsum';

  @override
  String get imamOrdinal1 => '1-ci İmam';

  @override
  String get imamOrdinal2 => '2-ci İmam';

  @override
  String get imamOrdinal3 => '3-cü İmam';

  @override
  String get imamOrdinal4 => '4-cü İmam';

  @override
  String get imamOrdinal5 => '5-ci İmam';

  @override
  String get imamOrdinal6 => '6-cı İmam';

  @override
  String get imamOrdinal7 => '7-ci İmam';

  @override
  String get imamOrdinal8 => '8-ci İmam';

  @override
  String get imamOrdinal9 => '9-cu İmam';

  @override
  String get imamOrdinal10 => '10-cu İmam';

  @override
  String get imamOrdinal11 => '11-ci İmam';

  @override
  String get imamOrdinal12 => '12-ci İmam';

  @override
  String get duaAudioScreenTitle => 'Duaları dinlə';

  @override
  String get duaAudioScreenSubtitle =>
      'Dinləmək üçün bir dua seç. Oynatmaq və ya dayandırmaq üçün karta toxun.';

  @override
  String get duaAudioComingSoonMessage =>
      'Bu dua üçün səs gələcək yeniləmədə əlçatan olacaq.';

  @override
  String get duaAudioClose => 'Bağla';

  @override
  String get duaAudioError =>
      'Səs yüklənə bilmədi. Zəhmət olmasa bağlantını yoxla.';

  @override
  String get duaAudioMetaTransmittedBy => 'Rəvayət edən';

  @override
  String get duaAudioMetaOccasion => 'Münasibət';

  @override
  String get duaAudioMetaDuration => 'Müddət';

  @override
  String get quickActionDailyHadith => 'Gündəlik hədis';

  @override
  String get quickAction14Masumeen => '14 Məsum';

  @override
  String get quickActionListenDuas => 'Dinlə';

  @override
  String get quickActionTasbihat => 'Namaz bələdçisi';

  @override
  String get pilgrimageSectionTitle => 'Müqəddəs səfər';

  @override
  String get pilgrimageSectionSubtitle =>
      'Həcc və Ümrə üçün tam bələdçilər — Məkkədəki Allahın Müqəddəs Evinə ziyarət';

  @override
  String get hajjCardTitle => 'Həcc';

  @override
  String get hajjCardSubtitle => 'İslamın beşinci rüknü';

  @override
  String get hajjCardDescription =>
      'Böyük illik ziyarət — gücü çatan hər bir müsəlman üçün ömründə bir dəfə vacibdir';

  @override
  String get hajjScreenTitle => 'Həcc bələdçisi';

  @override
  String get hajjScreenSubtitle => 'Böyük ziyarət üçün addım-addım bələdçi';

  @override
  String get umrahCardTitle => 'Ümrə';

  @override
  String get umrahCardSubtitle => 'Kiçik ziyarət';

  @override
  String get umrahCardDescription =>
      'İlin istənilən vaxtında edilə bilən, dərin mənəvi mükafatlı bir səfər';

  @override
  String get umrahScreenTitle => 'Ümrə bələdçisi';

  @override
  String get umrahScreenSubtitle => 'Kiçik ziyarət üçün addım-addım bələdçi';

  @override
  String get pilgrimageStepsTitle => 'Ayinlər və addımlar';

  @override
  String get pilgrimageImportantNotesTitle => 'Vacib qeydlər';

  @override
  String get pilgrimageDuaTitle => 'Bu addım üçün Dua';

  @override
  String get pilgrimageJafariNoteTitle => 'Cəfəri Fiqh Qeydi';

  @override
  String get pilgrimageComplete => '✓ Tamamlandı';

  @override
  String get pilgrimageMarkDone => 'Tamamlandı olaraq işarələyin';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total addımdan';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes dəq';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Şiə zəvvarlar';

  @override
  String get pilgrimageShiaNoteBody =>
      'Şiə zəvvarlar ənənəvi olaraq Mədinəyə də gedərək Məscidün-Nəbidə Peyğəmbər Məhəmmədin (s) qəbrini və Cənnətül-Bəqidə imamların məzarlarını ziyarət edirlər. Bu ziyarətlər böyük mənəvi əhəmiyyət daşıyır və əksər şiələr üçün səfərin ayrılmaz hissəsi sayılır.';

  @override
  String get hajjIntro =>
      'Həcc İslamın beşinci rüknüdür və fiziki və maliyyə cəhətdən gücü çatan hər bir müsəlman üçün ömründə bir dəfə vacibdir. Zilhiccə ayında yerinə yetirilir və İbrahim peyğəmbərin (ə), oğlu İsmayılın (ə) və Həzrət Hacərin izlərini təqib edir. Şiə müsəlmanlar üçün Həcc, Mədinədə Peyğəmbərin (s) və Əhli-Beytin məzarlarını ziyarət etmək nemətini də ehtiva edir.';

  @override
  String get umrahIntro =>
      'Ümrə Məkkəyə edilən kiçik ziyarətdir və Həcdən fərqli olaraq ilin istənilən vaxtında yerinə yetirilə bilər. Vacib olmasa da, böyük mənəvi savab daşıyır və çox tövsiyə olunan ibadət sayılır. Həcc ilə bir neçə ayini ortaqdır, lakin daha qısadır və dörd əsas mərasimdən ibarətdir.';
}
