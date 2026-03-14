// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Dilinizi seçin';

  @override
  String get languageSelectSub =>
      'Bunu daha sonra Ayarlar\'da değiştirebilirsiniz';

  @override
  String get actionContinue => 'Devam et';

  @override
  String get languageSuggestedHeader => 'Önerilen';

  @override
  String get languageAllHeader => 'Tüm diller';

  @override
  String get languageSuggestedBadge => 'Önerilen';

  @override
  String get languageSearchHint => 'Ara…';

  @override
  String get planBasic => 'Standart';

  @override
  String get planPremium => 'Vilaye';

  @override
  String get categorySlot01 => 'Günlük Rehberlik';

  @override
  String get categorySlot02 => 'İman & Güven';

  @override
  String get categorySlot03 => 'Namaz Meditasyonu';

  @override
  String get categorySlot04 => 'Sabır ve Umut';

  @override
  String get categorySlot05 => 'Affı Dile';

  @override
  String get categorySlot06 => 'Merhamet & Şefkat';

  @override
  String get categorySlot07 => 'İman Gücü';

  @override
  String get categorySlot08 => 'Şükreden Kalp';

  @override
  String get categorySlot09 => 'Hayatın Amacı';

  @override
  String get categorySlot10 => 'Aile Bağları';

  @override
  String get categorySlot11 => 'İç Huzur';

  @override
  String get categorySlot12 => 'Peygamber Hikmeti';

  @override
  String get categorySlot13 => 'İyi Karakter';

  @override
  String get categorySlot14 => 'Şeytani Vesveselerden Korun';

  @override
  String get categorySlot15 => 'Akşam Tesbih';

  @override
  String get categoryCustom => 'Kişisel Düşünce';

  @override
  String get dhikrMeaningSubhanallah => 'Allah yüce ve kudsîdir';

  @override
  String get dhikrMeaningAlhamdulillah => 'Tüm hamd Allah\'a özgüdür';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah en büyüktür';

  @override
  String get quranVerseHeartAtRest =>
      'Bilin ki kalpler, ancak Allah\'ı zikir ederken huzur bulur.';

  @override
  String get promptHint =>
      'İslami rehberlik ve meditasyon için bir kategori seçin';

  @override
  String get currentLanguage => 'Mevcut dil';

  @override
  String get settingsLanguage => 'Dil ayarları';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get chooseLanguage => 'Dilinizi seçin';

  @override
  String get continueCta => 'Devam et';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kelime',
      one: '$count kelime',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Seçenekler';

  @override
  String get newCta => 'Yeni';

  @override
  String get actionsTitle => 'Ne yapmak istersiniz?';

  @override
  String get copy => 'Kopyala';

  @override
  String get share => 'Paylaş';

  @override
  String get close => 'Kapat';

  @override
  String get copiedToast => 'Panoya kopyalandı';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Yeni cevap oluşturulamadı';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nTekrar denemek ister misiniz?';
  }

  @override
  String get cancelCta => 'İptal et';

  @override
  String get retryCta => 'Tekrar dene';

  @override
  String get authTitle => 'Hesabınızı oluşturun';

  @override
  String get continueAsGuest => 'Misafir olarak devam et';

  @override
  String get signInGoogle => 'Google ile giriş yap';

  @override
  String get signInApple => 'Apple ile giriş yap';

  @override
  String get signInEmail => 'E-posta ile giriş yap';

  @override
  String get upgradeWithApple => 'Apple ile devam et';

  @override
  String get mustAccept =>
      'Şartları kabul etmeniz ve Gizlilik Politikasını onaylamanız gerekir.';

  @override
  String get termsLabel => 'Hizmet Şartlarını kabul ediyorum';

  @override
  String get privacyLabel => 'Gizlilik Politikasını okudum';

  @override
  String get marketingOptIn => 'Haber ve teklifler almayı kabul ediyorum';

  @override
  String get openTerms => 'Hizmet Şartları';

  @override
  String get openPrivacy => 'Gizlilik Politikası';

  @override
  String get accountSection => 'Hesap';

  @override
  String get guestMode => 'Misafir modu';

  @override
  String get signedIn => 'Giriş yapıldı';

  @override
  String get upgradeHint =>
      'Düşüncelerinizi cihazlar arasında kaydetmek için bir hesap oluşturun.';

  @override
  String get upgradeWithGoogle => 'Google ile devam et';

  @override
  String get signOut => 'Çıkış yap';

  @override
  String get snackUpgraded => 'Hesap Google ile yükseltildi ✅';

  @override
  String get snackSignedIn => 'Google ile giriş yapıldı ✅';

  @override
  String get snackSignedOut => 'Çıkış yapıldı';

  @override
  String get snackSignedInApple => 'Apple ile giriş yapıldı ✅';

  @override
  String get snackSignedInGoogle => 'Google ile giriş yapıldı ✅';

  @override
  String get snackUpgradedApple => 'Hesap Apple ile yükseltildi ✅';

  @override
  String get snackUpgradedGoogle => 'Hesap Google ile yükseltildi ✅';

  @override
  String get historyTitle => 'Önceki düşünceler';

  @override
  String get historyOpenCta => 'Önceki düşünceler';

  @override
  String get historyEmpty => 'Henüz kaydedilmiş meditasyon yok.';

  @override
  String get historyDeleteTitle => 'Meditasyon silinsin mi?';

  @override
  String get historyDeleteBody =>
      'Bu, seçili öğeyi kalıcı olarak kaldıracaktır.';

  @override
  String get deleteCta => 'Sil';

  @override
  String get historyButton => 'Önceki Meditasyonlar';

  @override
  String get historyEmptyTitle => 'Henüz meditasyon yok';

  @override
  String get historyEmptyBody =>
      'Önce birşey oluşturun — kayıtlı öğeleriniz burada görünecektir.';

  @override
  String get historyDelete => 'Sil';

  @override
  String get footerTitle => 'Vilaye, İman ve Sabır ile';

  @override
  String get footerSubtitle => 'Birer dua bir defada';

  @override
  String get genericErrorSnack =>
      'Bir şeyler yanlış gitti — lütfen biraz sonra tekrar deneyin.';

  @override
  String get upgradeAccountCta =>
      'Meditasyonlarınızı cihazlar arasında kaydetmek için hesap oluşturun';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get exportData => 'Verilerimi dışa aktar';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Yavaş ol 🐯\nAyara sonraki bir öncesinde biraz zaman gerekli…';

  @override
  String get rateDailyLimit =>
      'Şu an meditasyonunuz bitti.\nDaha fazla meditasyon alın veya Vilaye\'ye yükseltin.';

  @override
  String get rateCreditsExhausted =>
      'Tüm meditasyonlarınızı kullandınız.\nDevam etmek için ek meditasyon ekleyin veya Vilaye\'ye yükseltin.';

  @override
  String get rateGraceCreditsExhausted =>
      'Şu an meditasyonunuz bitti.\nDaha fazla meditasyon alın veya Vilaye\'ye yükseltin.';

  @override
  String get premiumDescription =>
      'Vilaye, premium özellikleri, gelecekteki kategorileri ve özel bir rozet sunar.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Meditasyonlarınız şu an boş. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Meditasyonlarınız kontrol edilemedi: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Meditasyonlarınız kontrol edilirken bir hata oluştu.';

  @override
  String get aiFallbackGeneric =>
      'Bir şeyler yanlış gitti — lütfen biraz sonra tekrar deneyin.';

  @override
  String get limitSectionTitle => 'Meditasyonlar';

  @override
  String get limitTodayLabel => 'Kullanım';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Kalan meditasyonlar: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Yükleniyor…';

  @override
  String get limitLoadingLabelDescription =>
      'Kullanım istatistikleri alınırken meditasyon kartında gösterilir.';

  @override
  String get aiLimitTitle => 'Meditasyonlar';

  @override
  String get aiLimitSubtitle =>
      'Her yanıt 1 meditasyonu kullanır. Standart başlangıç meditasyonları içerir. Vilaye premium kategorileri açar ve ek almayı sağlar.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total meditasyon kullanıldı';
  }

  @override
  String get creditsSectionTitle => 'Meditasyonlar';

  @override
  String get creditsUsageLabel => 'Kullanım';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Kalan meditasyonlar: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Yükleniyor…';

  @override
  String get creditsLoadingLabelDescription =>
      'Meditasyon istatistikleri alınırken gösterilir.';

  @override
  String get creditsTitle => 'Meditasyonlar';

  @override
  String get creditsSubtitle =>
      'Her yanıt 1 meditasyonu kullanır. Standart başlangıç meditasyonları içerir. Vilaye premium kategorileri açar ve ek almayı sağlar.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total meditasyon kullanıldı';
  }

  @override
  String get settingsDeleteTitle => 'Hesabı sil';

  @override
  String get settingsDeleteDescription =>
      'Hesabınızı ve ilişkili tüm verileri kalıcı olarak silin.';

  @override
  String get settingsDeleteButtonLabel => 'Hesabımı sil';

  @override
  String get settingsDeleteDialogTitle => 'Hesap silinsin mi?';

  @override
  String get settingsDeleteDialogBody =>
      'Bu işlem kalıcıdır ve geri alınamaz.\n\nTüm sohbetleriniz, geçmişiniz ve hesap bilgileriniz silinecektir.';

  @override
  String get settingsDeleteDialogCancel => 'İptal et';

  @override
  String get settingsDeleteDialogConfirm => 'Sil';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Başlangıç meditasyonları kullanıldı';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Bu cihazın başlangıç meditasyonları kullanıldı. Devam etmek için Vilaye\'ye yükseltin veya daha fazla meditasyon satın alın.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Başlangıç meditasyonları kullanıldı';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Bu cihazın başlangıç meditasyonları kullanıldı. Devam etmek için Vilaye\'ye yükseltin veya daha fazla meditasyon satın alın.';

  @override
  String get deviceBoundError =>
      'Bu cihaz zaten başka bir hesaba bağlı. Lütfen orijinal hesapla giriş yapın.';

  @override
  String get premiumTitle => 'Vilaye modu';

  @override
  String get premiumSubtitleBasic => 'Tam Ayara deneyiminin kilidini açın.';

  @override
  String get premiumSubtitlePremium =>
      'Vilaye\'desiniz. Daha fazla meditasyon mı gerekiyor?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Mevcut plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Meditasyonlar: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Satın almalar şu an kullanılamıyor.';

  @override
  String get premiumSignInToPurchase =>
      'Meditasyon satın almak veya Vilaye\'yi açmak için giriş yapın.';

  @override
  String get premiumRestorePurchases => 'Satın alımları geri yükle';

  @override
  String get premiumProcessing => 'İşleniyor…';

  @override
  String get premiumRestoreHintTitle =>
      'Zaten bu cihazda veya başka bir cihazda Vilaye veya meditasyon satın aldınız mı?';

  @override
  String get premiumRestoreHintBody =>
      'Gösterilmiyorsa satın alımlarınızı geri yükleyin.';

  @override
  String get premiumBuyCredits200 => '200 meditasyon satın al';

  @override
  String get premiumBuyCredits400 => '400 meditasyon satın al';

  @override
  String get premiumBecomePremiumOneTime => 'Vilaye moduna yüksel';

  @override
  String get premiumTopupHint =>
      'Vilaye ile ihtiyaç duyduğunuzda ek meditasyonlarla ek alabilirsiniz.';

  @override
  String get premiumUpgradeCta => 'Yüksel';

  @override
  String get premiumRequiredForCategory =>
      'Bu kategori yalnızca Vilaye kullanıcıları için kullanılabilir. Premium içeriğin tümünü açmak için Ayarlar\'da yükseltin.';

  @override
  String get premiumBenefitsBasic =>
      'Vilaye\'yi açın ve ekstra meditasyonlar alın, premium kategorilere erişin ve rehberliğe ihtiyaç duyduğunuzda devam edin.';

  @override
  String get premiumBenefitsPremium =>
      'Vilaye modundasınız. Yetersiz kalıyorsanız, ekstra meditasyonlar ekleyin ve kesintisiz devam edin.';

  @override
  String get premiumButtonBecomePremium => 'Vilaye\'yi açın';

  @override
  String get premiumButtonTopup1000 => '1000 meditasyon ekle';

  @override
  String get premiumBadge => 'Vilaye aktif';

  @override
  String get premiumLoadingStore => 'Mağaza yükleniyor…';

  @override
  String get premiumProductNotAvailable =>
      'Bu ürün henüz mağazada mevcut değil. Lütfen daha sonra tekrar deneyin.';

  @override
  String get premiumPurchaseError =>
      'Satın almada bir hata oluştu. Lütfen tekrar deneyin.';

  @override
  String get premiumBuyCredits100 => '100 meditasyon ekle';

  @override
  String get premiumFeatureLocked =>
      'Bu özelliğe erişmek için Vilaye\'yi açın.';

  @override
  String get lockedCategoriesHint =>
      'Bazı kategoriler Vilaye üyeleri için ayrılmıştır. Yolculuğunuzdaki her meditasyonu keşfetmek için bunları açın.';

  @override
  String get freePlanBlockedTitle => 'Başlangıç meditasyonlarınız bitti';

  @override
  String get freePlanBlockedBody =>
      'Başlangıç meditasyonları ile Standart plandaysınız ve sınıra ulaştınız. Devam etmek ve premium kategorileri açmak için Vilaye\'ye yükseltin.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Aşağıda Vilaye seçeneklerine bakın';

  @override
  String get graceBlockedTitle => 'Başlangıç meditasyonlarınız bitti';

  @override
  String get graceBlockedBody =>
      'Başlangıç meditasyonları ile Standart plandaysınız ve sınıra ulaştınız. Devam etmek ve premium kategorileri açmak için Vilaye\'ye yükseltin.';

  @override
  String get graceBlockedCtaGoPremium => 'Aşağıda Vilaye seçeneklerine bakın';

  @override
  String get rateGuestMustSignIn =>
      'Ayara\'yı kullanmak ve meditasyonlarınıza erişmek için giriş yapın.';

  @override
  String get guestNoCreditsTitle => 'Misafir modu';

  @override
  String get guestNoCreditsBody =>
      'Misafir olarak uygulamaya göz atabilirsiniz, ancak meditasyonları kullanamazsınız. Meditasyonları kullanmak ve satın alımları açmak için daha sonra Ayarlar\'da oturum açın.';

  @override
  String get guestDialogContinue => 'Devam et';

  @override
  String get guestDialogLoginInstead => 'Bunun yerine oturum aç';

  @override
  String get optionalLabel => 'isteğe bağlı';

  @override
  String get accountDeleteSuccessTitle => 'Hesap silindi';

  @override
  String get accountDeleteSuccessBody =>
      'Hesabınız ve ilişkili verileriniz başarıyla silindi.';

  @override
  String get accountDeleteSuccessClose => 'Kapat';

  @override
  String get accountDeleteErrorTitle => 'Hesap silinemiyor';

  @override
  String get accountDeleteErrorClose => 'Tamam';

  @override
  String get accountDeleteReauthCancelled =>
      'Yeniden kimlik doğrulama iptal edildi. Lütfen tekrar giriş yapın ve silmeyi tekrar deneyin.';

  @override
  String get accountDeleteReauthRequired =>
      'Hesap silme işlemi son giriş gerektirir. Lütfen çıkış yapın, tekrar giriş yapın ve silmeyi tekrar deneyin.';

  @override
  String get settingsDeletePermanentWarning =>
      'Bu işlem kalıcıdır ve geri alınamaz. Hesabınızla ilişkili tüm veriler silinecektir.';

  @override
  String get dailyGraceTitle => 'Günlük Rehberlik';

  @override
  String get dailyGraceScriptureLabel => 'GÜNÜN AYETİ';

  @override
  String get dailyGraceSaintLabel => 'HAFTANIN ŞEKİLİ';

  @override
  String get dailyGraceReflectionLabel => 'AKŞAM MEDİTASYONU';

  @override
  String get dailyGraceCopiedToast => 'Ayet panoya kopyalandı';

  @override
  String get locationConsentLabel =>
      'Ayara\'nın Kıble yönü ve namaz vakitleri için konumumu kullanmasına izin ver';

  @override
  String get locationConsentHint =>
      'Yalnızca bu özellikler için kullanılır. Konumunuz asla paylaşılmaz veya kaydedilmez.';

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
  String get askPageTitle => 'Ayara\'ya Sor';

  @override
  String get askPageDescription =>
      'İman, namaz, hayat veya İslami uygulama hakkında herhangi bir şey sorun ve Kuran ve Ehl-i Beyt\'in öğretilerine dayanan rehberlik alın.';

  @override
  String get askPageInputHint => 'Sorunuzu buraya yazın…';

  @override
  String get askPageSubmitCta => 'Sor';

  @override
  String get askPageInputEmptyError => 'Lütfen önce bir soru yazın.';

  @override
  String get askResultYourQuestion => 'Sorunuz';

  @override
  String get guidancePageTitle => 'Kıble';

  @override
  String get qiblaFacingMecca => 'Mekke\'ye Dönük';

  @override
  String get qiblaCompassInstruction =>
      'Altın iğne yukarı çıkana kadar telefonunuzu döndürün.\nBu yön Kıble\'yi (Mekke) gösterir.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS sinyali zayıf. Dışarı çıkın ve Tekrar Dene\'ye dokunun.';

  @override
  String get qiblaRetry => 'Tekrar dene';

  @override
  String get qiblaTitle => 'Kıble Yönü';

  @override
  String qiblaDistanceLabel(String km) {
    return 'Mekke\'ye $km km';
  }

  @override
  String get qiblaLocationNeededTitle => 'Konum gerekli';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara\'nın nerede olursan olun Mekke\'deki Kaabe\'nin yönünü hesaplayabilmesi için konum erişimine izin verin.';

  @override
  String get qiblaOpenSettings => 'Ayarları Aç';

  @override
  String get qiblaCompassLoading => 'Konumunuz bulunuyor…';

  @override
  String get qiblaTowardMecca => 'Mekke\'ye Doğru';

  @override
  String get prayerTimesTitle => 'Namaz Vakitleri';

  @override
  String get prayerTimesFajr => 'Sabah Namazı';

  @override
  String get prayerTimesDhuhr => 'Öğle Namazı';

  @override
  String get prayerTimesAsr => 'İkindi Namazı';

  @override
  String get prayerTimesMaghrib => 'Akşam Namazı';

  @override
  String get prayerTimesIsha => 'Yatsı Namazı';

  @override
  String get prayerTimesLocationNeededTitle => 'Konum gerekli';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara\'nın şehriniz için doğru namaz vakitlerini hesaplayabilmesi için konum erişimine izin verin.';

  @override
  String get prayerTimesNextLabel => 'Sonraki';

  @override
  String get prayerTimesDoneLabel => 'Bitti';

  @override
  String get monthlyPrayerTimesTitle => 'Aylık Namaz Vakitleri';

  @override
  String get monthlyPrayerTimesViewButton => 'Tüm Ayı Görüntüle';

  @override
  String get monthlyPrayerTimesNextMonth => 'Sonraki ay';

  @override
  String get monthlyPrayerTimesDayHeader => 'Gün';

  @override
  String get sharePrayerTimes => 'Namaz vakitlerini paylaş';

  @override
  String get notificationsSectionTitle => 'Bildirimler';

  @override
  String get notificationsSectionSubtitle =>
      'Namaz hatırlatıcıları, takvim etkinlikleri ve daha fazlası';

  @override
  String get dailyReflectionReminderTitle => 'Günlük Meditasyon';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara\'yı açmak ve imanınızla bağlantı kurmak için günlük bir nazik hatırlatıcı.';

  @override
  String get dailyReflectionReminderEnable =>
      'Günlük hatırlatıcıyı etkinleştir';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hatırlatıcı saati';

  @override
  String get prayerNotificationsTitle => 'Namaz Hatırlatıcıları';

  @override
  String get prayerNotificationsDescription =>
      'Gün boyunca bağlantılı kalmak için her namaz vakitinden önce nazik bir hatırlatıcı alın.';

  @override
  String get prayerNotificationsEnable => 'Namaz hatırlatıcılarını etkinleştir';

  @override
  String get prayerNotificationsOpenSettings => 'Bildirim ayarlarını aç';

  @override
  String get prayerNotificationsDenied => 'Bildirimler devre dışı';

  @override
  String get prayerNotificationsDeniedHint =>
      'Namaz saati hatırlatıcıları almak için Ayarlar\'a gidip Ayara için bildirimlere izin verin.';

  @override
  String get notificationsConsentLabel =>
      'Namaz vakit bildirimleri için bildirime izin ver';

  @override
  String get prayerNotifTitleFajr => '🌅 Sabah Namazı — Fecir';

  @override
  String get prayerNotifBodyFajr =>
      'Sabah namazı, Ehl-i Beyt\'in sabahlarının namazıdır. İmam Ali (AS) şöyle söyledi: Sabah namazını en değerli amanetine verdiğin şekilde koru. Kalk, kendini temizle ve Allah\'ın huzurunda dayan.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Öğle Namazı — Zuhr';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ehl-i Beyt\'in İmamları zikrin her anını değerli tutmuşlardır. Günün akışını kes, gerekirse Zuhr\'u Asr ile birleştir ve kalbini Allah\'a döndür.';

  @override
  String get prayerNotifTitleAsr => '🌤️ İkindi Namazı — Asr';

  @override
  String get prayerNotifBodyAsr =>
      'Namazı koru, çünkü o seninle Allah arasında bir ahittir. Asr vakti geldi — bunu zikir olmadan geçirme.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Akşam Namazı — Maghrib';

  @override
  String get prayerNotifBodyMaghrib =>
      'Güneş batmıştır — Ehl-i Beyt\'in du\'a için kutsal saydığı bir an. Maghrib\'i sun ve dua etmek için ellerini Allah\'a aç, gece başlamadan önce.';

  @override
  String get prayerNotifTitleIsha => '🌙 Yatsı Namazı — İşa';

  @override
  String get prayerNotifBodyIsha =>
      'Günü Allah\'ın huzurunda bitir. İmamlar İşa\'dan sonra Gece Namazı\'nı (Salat al-Layl) teşvik ettiler — ama önce İşa\'nı tamamla ve günü Onun zikri ile kapat.';

  @override
  String get outOfReflectionsBannerText => 'Tüm meditasyonlarınızı kullandınız';

  @override
  String get outOfReflectionsBannerCta => 'Daha fazla al';

  @override
  String get dhikrPageTitle => 'Tesbih';

  @override
  String get dhikrTapToCount => 'Saymak için daireye dokunun';

  @override
  String get dhikrResetButton => 'Sıfırla';

  @override
  String get dhikrComplete => 'Maşallah';

  @override
  String get dhikrCompleteMessage =>
      'Allah\'ı 100 kez zikir ettiniz. Bunlar kalbinize ışık olsun.';

  @override
  String get disclaimerTitle => 'Bu uygulamanın rehberliği hakkında';

  @override
  String get disclaimerBody =>
      'Ayara, İslami meditasyonlar, hatırlatıcılar ve Kuran ile Ehl-i Beyt\'in öğretilerine dayanan ruhani içerik sunarak imanınız yolculuğunuzu destekler. Bu içerik genel bilgilendirme ve ilham amaçları için sunulmuştur.\n\nAyara, nitelikli bilimsel yorum yerine geçmez.\nBu uygulamadaki rehberlik, öğrenmiş bir İslam alimi, mürcie veya ilahiyat eğitimi almış bir öğretmenin yerine geçmez. Şia İslam\'ında, dinî rehberlik Caferî fıkıh okuluna ve canlı bir Mürcie (imamet kaynağı) takip geleneğine dayanır — dinî uygulamada müminleri yönlendiren nitelikli bir fakih. Dini hükümler, helal-haram meseleri veya kişisel dini yükümlülükler hakkında soruları varsa, lütfen topluluğunuzdaki nitelikli bir Mürcie veya alime danışın.\n\nBu uygulama dini hüküm vermez.\nAyara, fıkıh veya kişisel dini yükümlülükler konularında yetkili kararlar almaz. Burada hiçbir şey fetva veya bağlayıcı dini talimat olarak kabul edilmemelidir.\n\nEhl-i Beyt\'in merkezi önemliği.\nŞia İslam\'ında, Peygamber Muhammed ﷺ ve onun temiz hane halkı — Ehl-i Beyt — Kuran\'dan sonra İslam topluluğunun yetkili rehberidir. Ehl-i Beyt\'in on iki İmamı, İslami öğretimin ilahi atanan yorumcularıdır. Bu uygulamadaki içerik bu geleneği yansıtır ve onu saygıyla onurlandırmaya çalışır.\n\nTopluluk önemlidir.\nBu uygulama imanınızla ilişkiye geçişinizi teşvik ederken, yerel camii, İslami merkez ve dini topluluğunuzun hayati rolünü çok saygıyla değerlendirmektedir. Sizin yanınızda nitelikli öğretmenlerle bağlantılı kalmanızı ve onlardan öğrenmenizi teşvik ederiz.';

  @override
  String get disclaimerClose => 'Anladım';

  @override
  String get disclaimerInfoTooltip => 'Bu uygulamanın rehberliği hakkında';

  @override
  String get disclaimerSettingsSubtitle =>
      'Yalnızca genel bilgilendirme amaçlı. Tam sorumluluk incelemesini okumak için dokunun.';

  @override
  String get disclaimerSectionHeader => 'Rehberlik sorumluluk reddi';

  @override
  String get navHome => 'Ana Sayfa';

  @override
  String get navReflect => 'Meditasyon';

  @override
  String get navDuas => 'Dualar';

  @override
  String get navCalendar => 'Takvim';

  @override
  String get dashboardToday => 'BUGÜN';

  @override
  String get dashboardComingUp => 'Yaklaşan';

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
  String get dashboardQuickAccess => 'Hızlı Erişim';

  @override
  String get quickActionQibla => 'Kıble';

  @override
  String get quickActionDhikr => 'Tesbih';

  @override
  String get quickActionDailyGrace => 'Rehberlik';

  @override
  String get quickActionPrayerTimes => 'Namaz Vakitleri';

  @override
  String get askAyaraTitle => 'Ayara\'ya Sor';

  @override
  String get askAyaraSubtitle =>
      'Her hangi bir İslami soruyu sorun ve düşünceli, rehberli bir cevap alın.';

  @override
  String get askAyaraHint => 'örn. Ramazan\'ın önemi nedir?';

  @override
  String get askAyaraSubmit => 'Sor';

  @override
  String get wisdomOfTheDayTitle => 'Günün Hikmeti';

  @override
  String get calendarScreenTitle => 'İslami Takvim';

  @override
  String get calendarUpcomingOccasions => 'Yaklaşan Etkinlikler';

  @override
  String get calendarOccasionRemindersTitle => 'Etkinlik Hatırlatıcıları';

  @override
  String get calendarOccasionRemindersHint =>
      'Her etkinlikten akşamı bildirim alın';

  @override
  String get calendarNotifPermissionDenied =>
      'Bildirim izni reddedildi. Cihaz ayarlarınızda etkinleştirin.';

  @override
  String get calendarNoEvents => 'Yaklaşan etkinlik bulunamadı.';

  @override
  String get calendarAddToPhone => 'Telefon Takvimine Ekle';

  @override
  String get calendarAddedToPhone => 'Takvime Eklendi';

  @override
  String get calendarCountdownToday => 'BUGÜN';

  @override
  String get calendarCountdownTomorrow => 'YARIM';

  @override
  String calendarCountdownDays(int days) {
    return '$days gün içinde';
  }

  @override
  String get calendarAH => 'H';

  @override
  String get calendarMonthJan => 'Oca';

  @override
  String get calendarMonthFeb => 'Şub';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Nis';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Haz';

  @override
  String get calendarMonthJul => 'Tem';

  @override
  String get calendarMonthAug => 'Ağu';

  @override
  String get calendarMonthSep => 'Eyl';

  @override
  String get calendarMonthOct => 'Eki';

  @override
  String get calendarMonthNov => 'Kas';

  @override
  String get calendarMonthDec => 'Ara';

  @override
  String get calendarSeasonMuharramEarly =>
      'Muharrem Günleri — Kerbela\'yı anımsa';

  @override
  String get calendarSeasonAshura => 'Aşure — Ya Hüseyin (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharrem — yas ve meditasyon günleri';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — Hüseyin\'in kırk günü';

  @override
  String get calendarSeasonRoadToArbaeen => 'Arbaeen\'e giden yol';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mübarak — Vahyin şafağı';

  @override
  String get calendarSeasonMidShaban =>
      'Şaban\'ın Ortası — İmam Mehdi\'nin (AJ) doğum günü';

  @override
  String get calendarSeasonRamadan => 'Ramazan Mübarak — Kuran ayı';

  @override
  String get calendarSeasonGhadir => 'Gadir-i Hum Bayramı Mübarak!';

  @override
  String get hijriMonth1 => 'Muharrem';

  @override
  String get hijriMonth2 => 'Safer';

  @override
  String get hijriMonth3 => 'Rebiülevvel';

  @override
  String get hijriMonth4 => 'Rebiülahir';

  @override
  String get hijriMonth5 => 'Cumadaülevvel';

  @override
  String get hijriMonth6 => 'Cumadaülevvel';

  @override
  String get hijriMonth7 => 'Recep';

  @override
  String get hijriMonth8 => 'Şaban';

  @override
  String get hijriMonth9 => 'Ramazan';

  @override
  String get hijriMonth10 => 'Şevval';

  @override
  String get hijriMonth11 => 'Zilka\'de';

  @override
  String get hijriMonth12 => 'Zilhicce';

  @override
  String get duasScreenTitle => 'Dualar & Ziyarat';

  @override
  String get duasSearchHint => 'Dualar, ziyarat ara…';

  @override
  String get duasFilterAll => 'Tümü';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Dua bulunamadı.';

  @override
  String get duaCategoryDaily => 'Günlük';

  @override
  String get duaCategoryWeekly => 'Haftalık';

  @override
  String get duaCategoryOccasions => 'Etkinlikler';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tesbih';

  @override
  String get eventTypeBirth => 'Doğum';

  @override
  String get eventTypeMartyrdom => 'Şehitlik';

  @override
  String get eventTypeOccasion => 'Etkinlik';

  @override
  String get duaCopyTooltip => 'Tercemeyi kopyala';

  @override
  String get duaToggleTransliteration => 'Transkripsiyon';

  @override
  String get duaToggleTranslation => 'Terceme';

  @override
  String get duaAskAiLabel => 'Ayara\'dan bu dua hakkında soru sor';

  @override
  String get duaAskAiLockedLabel => 'Ayara Sor (Vilaye)';

  @override
  String get duaAiLockedMessage =>
      'Ayara açıklamaları Vilaye üyeleri için mevcuttur. Ayarlar\'da yükseltin.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\" hakkında Ayara\'ya sor — çok yakında!';
  }

  @override
  String get duaCopiedToast => 'Dua panoya kopyalandı.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah en büyüktür';

  @override
  String get tasbihAlhamdulillahMeaning => 'Tüm hamd Allah\'a özgüdür';

  @override
  String get tasbihSubhanallahMeaning => 'Allah yüce ve kudsîdir';

  @override
  String get tasbihResetTooltip => 'Sıfırla';

  @override
  String get tasbihCompleteTitle => 'Tesbih Tamamlandı';

  @override
  String get tasbihCompleteMessage => 'Allah zikrinizi kabul etsin.';

  @override
  String get tasbihTapHint => 'Saymak için herhangi bir yere dokunun';

  @override
  String get tasbihatScreenTitle => 'Namaz Rehberi';

  @override
  String get tasbihatScreenSubtitle => 'NAMAZ TECBİHATI';

  @override
  String get tasbihatScreenDescription =>
      'Günlük namazlar sırasında ve sonrasında okunan tecbihatlara eksiksiz rehber — Ehl-i Beyt (a) geleneğine uygun.';

  @override
  String get tasbihatArba3Title => 'TESPILERI ARBAAH';

  @override
  String get tasbihatArba3Subtitle => '3. ve 4. rekatta okunan';

  @override
  String get tasbihatArba3Info =>
      'Şia fıkhında, Tespileri Arbaah, Zuhr, Asr, Maghrib ve İşa\'nın 3. ve 4. rekatında Suretü\'l-Fatiha yerine okunur. Bir kez okumak zorunludur (vâcib) ve üç kez okumak önerilidir (müstehap).';

  @override
  String get tasbihatArba3Translation =>
      'Allah yüce ve kudsîdir · Tüm hamd Allah\'a özgüdür\nAllah\'tan başka ilah yoktur · Allah en büyüktür';

  @override
  String get tasbihatArba3CompleteTitle => 'Okuma Tamamlandı';

  @override
  String get tasbihatArba3CompleteMessage => 'Namazınız kabul olsun — Âmin';

  @override
  String get tasbihatArba3TapHint => 'Her okumadan sonra dokunun';

  @override
  String get tasbihatZahraSubtitle => 'Her namazdan sonra · 100 boncuk';

  @override
  String get tasbihatZahraOriginLabel => 'Kaynağı';

  @override
  String get tasbihatZahraHadith =>
      'Fatıma ez-Zehra (sa) Peygamber\'den (ﷺ) bir hizmetçi istedi. Peygamber şöyle dedi: \"Size daha iyisini öğretmeyeyim mi? Her namazdan sonra Subhanallah\'ı 33 kez, Elhamdulillah\'ı 33 kez ve Allahu Ekber\'i 34 kez okuyun. Bu sizin için hizmetçi olmaktan daha iyidir.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar el-Envar, Cilt 85';

  @override
  String get tasbihatZahraOpenCounter => 'Tesbih Sayacını Aç';

  @override
  String get tasbihatDuasTitle => 'ÖNERİLEN DUALAR';

  @override
  String get tasbihatDuasSubtitle => 'Namazınız tamamlandıktan sonra';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ayetü\'l-Kürsi';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Her zorunlu namazdan sonra';

  @override
  String get tasbihatDuaAyatKursiSource => 'Suretü\'l-Bakara 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Her zorunlu namazdan sonra Ayetü\'l-Kürsi\'yi okuyan kişi ile cennet arasında ölümden başka hiçbir şey bulunmaz. İmam el-Bakır (a) bunu Kuran\'ın en büyük ayetlerinden biri olarak söylemişti.';

  @override
  String get tasbihatDuaSalawatTitle => 'Salavat';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Her namazdan sonra · tüm duaları bitiriyor';

  @override
  String get tasbihatDuaSalawatSource => 'İmam es-Sadık (a) — el-Kâfi';

  @override
  String get tasbihatDuaSalawatNote =>
      'Peygamber\'e (ﷺ) ve temiz ailesine (Âl-i Muhammed) salaat göndermek her duayı bitirmek için önerilir. İmam es-Sadık (a) şöyle dedi: \"Her dua, Muhammed\'e ve ailesine salaat gönderene kadar sarkı durur.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Du\'âü\'l-Feraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Her namazdan sonra · zamanımızın İmamı için';

  @override
  String get tasbihatDuaFarajSource =>
      'İmam el-Hasan el-Askeri (a) tarafından öğretildi';

  @override
  String get tasbihatDuaFarajNote =>
      'İmam Mehdi\'nin (a.f) zuhuruna dair bir dua, on ikinci İmam, babası tarafından öğretilmiştir. Bu dua, birçok Şii Müslüman tarafından ibadet niyetiyle namazdan sonra okunur.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Fatıma Hanım\'ın Tesbih';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Maghrib ve İşa\'dan sonra · özellikle önerilen';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'İmam el-Bakır (a) — Bihar el-Envar';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'İmam el-Bakır (a) İşa\'dan sonra uyumadan önce Fatıma Tesbih\'ini okumanın 1000 rekatü isteğe bağlı namazdan daha iyi olduğunu söyledi. Onun nur göklere yükselir.';

  @override
  String get tasbihFatimaGiftPre => 'Peygamber\'in armağanı';

  @override
  String get tasbihFatimaGiftPost => 'her namazdan sonra okunan';

  @override
  String get prayerTrackerTitle => 'NAMAZ İZLEYİCİ';

  @override
  String get prayerTrackerPrayed => 'Namaz Kıldı';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count gün serisi';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Bugün tüm namazlar kılındı. Allah kabul etsin.';

  @override
  String get dhikrTrackerTitle => 'FATIMA TECBİHATI';

  @override
  String get dhikrTrackerCompletedToday => 'Bugün tamamlandı';

  @override
  String get dhikrTrackerNotDoneToday => 'Bugün yapılmadı';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count gün serisi';
  }

  @override
  String get dhikrReminderTitle => 'Tesbih Hatırlatıcısı';

  @override
  String get dhikrReminderDescription =>
      'Fatıma\'nın Tesbih\'ini (SA) okumanız için günlük bir nazik hatırlatıcı.';

  @override
  String get dhikrReminderEnable => 'Tesbih Hatırlatıcısını Etkinleştir';

  @override
  String get dhikrReminderTimeLabel => 'Hatırlatıcı saati';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Günlük Hadis';

  @override
  String get hadithLabelArabic => 'ARABİÇE';

  @override
  String get hadithLabelTranslation => 'TERCEME';

  @override
  String get hadithBadge => 'HADİS';

  @override
  String get hadithShare => 'Bu Hadisi Paylaş';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara üzerinden';
  }

  @override
  String get hadithNavPrevious => 'Önceki';

  @override
  String get hadithNavNext => 'Sonraki';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'On Dört Masum';

  @override
  String get imamsScreenSubtitle =>
      'Peygamber, Hz. Fatıma ve On İki İmam — On İki İmam Şii İslamında arınmış ve masum rehberler';

  @override
  String get imamLabelBorn => 'Doğdu';

  @override
  String get imamLabelMartyrdom => 'Şehitlik';

  @override
  String get imamLabelStatus => 'Durum';

  @override
  String get imamSectionBiography => 'BİYOGRAFİ';

  @override
  String get imamSectionFamousSaying => 'ÜNLÜ SÖYLEV';

  @override
  String get imamRoleProphet => 'Son Peygamber';

  @override
  String get imamRoleInfallible => 'Masum';

  @override
  String get imamOrdinal1 => '1. İmam';

  @override
  String get imamOrdinal2 => '2. İmam';

  @override
  String get imamOrdinal3 => '3. İmam';

  @override
  String get imamOrdinal4 => '4. İmam';

  @override
  String get imamOrdinal5 => '5. İmam';

  @override
  String get imamOrdinal6 => '6. İmam';

  @override
  String get imamOrdinal7 => '7. İmam';

  @override
  String get imamOrdinal8 => '8. İmam';

  @override
  String get imamOrdinal9 => '9. İmam';

  @override
  String get imamOrdinal10 => '10. İmam';

  @override
  String get imamOrdinal11 => '11. İmam';

  @override
  String get imamOrdinal12 => '12. İmam';

  @override
  String get duaAudioScreenTitle => 'Duaları Dinle';

  @override
  String get duaAudioScreenSubtitle =>
      'Dinlemek için bir dua seçin. Oynatmak veya duraklatmak için karoyu dokunun.';

  @override
  String get duaAudioComingSoonMessage =>
      'Bu dua için ses, yaklaşan bir güncellenmede kullanılabilir olacaktır.';

  @override
  String get duaAudioClose => 'Kapat';

  @override
  String get duaAudioError =>
      'Ses yüklenemedi. Lütfen bağlantınızı kontrol edin.';

  @override
  String get duaAudioMetaTransmittedBy => 'İleteni';

  @override
  String get duaAudioMetaOccasion => 'Etkinlik';

  @override
  String get duaAudioMetaDuration => 'Süre';

  @override
  String get quickActionDailyHadith => 'Günlük Hadis';

  @override
  String get quickAction14Masumeen => 'On Dört Masum';

  @override
  String get quickActionListenDuas => 'Dinle';

  @override
  String get quickActionTasbihat => 'Namaz Rehberi';

  @override
  String get pilgrimageSectionTitle => 'Kutsal Yolculuk';

  @override
  String get pilgrimageSectionSubtitle =>
      'Hac & Umre\'ye eksiksiz rehberler — Mekke\'deki Allah\'ın Kutsal Evine hac';

  @override
  String get hajjCardTitle => 'Hac';

  @override
  String get hajjCardSubtitle => 'İslam\'ın Beşinci Sütunu';

  @override
  String get hajjCardDescription =>
      'Yılda bir yapılan ve her müslümanın hayatında bir kez yapması zorunlu büyük hac';

  @override
  String get hajjScreenTitle => 'Hac Rehberi';

  @override
  String get hajjScreenSubtitle => 'Adım adım büyük hac rehberi';

  @override
  String get umrahCardTitle => 'Umre';

  @override
  String get umrahCardSubtitle => 'Küçük Hac';

  @override
  String get umrahCardDescription =>
      'Yılın herhangi bir zamanında yapılabilen çok ödüllendirici bir ruhani yolculuk';

  @override
  String get umrahScreenTitle => 'Umre Rehberi';

  @override
  String get umrahScreenSubtitle => 'Adım adım küçük hac rehberi';

  @override
  String get pilgrimageStepsTitle => 'Ritüeller & Adımlar';

  @override
  String get pilgrimageImportantNotesTitle => 'Önemli Notlar';

  @override
  String get pilgrimageDuaTitle => 'Bu adım için Dua';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Notu';

  @override
  String get pilgrimageComplete => '✓ Tamamlandı';

  @override
  String get pilgrimageMarkDone => 'Tamamlandı olarak işaretle';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total adım';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes dk';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Şia Hacıları';

  @override
  String get pilgrimageShiaNoteBody =>
      'Birçok Şii hacı, Peygamber Muhammed\'in (SAV) Medine\'deki ziyareti için Mescid-i Nebevi\'ye ve Cennetül Bakî\'deki mezarlara da seyahat eder. Bu ziyaretler derin bir manevi anlam taşır, ancak kendileri Hac ritüelleri değildir.';

  @override
  String get hajjIntro =>
      'Hac, İslam\'ın beşinci şartıdır; fiziksel ve mali olarak imkanı olan her Müslüman için hayatında bir kez farzdır. Bugün çoğu On İki İmam Şii hacısı için bu, Hz. İbrahim (a.s), oğlu İsmail (a.s) ve Hz. Hacer\'in izinde, Zul-Hicce ayında yapılan Hac-ı Temettü\'dür. Bu rehber, ritüellerin Caferi çerçevesini takip ederken, Medine\'deki ziyaret Hac\'dan önce veya sonra derin bir şekilde değer verilen bir yolculuk olarak kalır.';

  @override
  String get umrahIntro =>
      'Umre, Mekke\'ye yapılan küçük hac tur ve Hac\'ın aksine yılın herhangi bir zamanında yapılabilir. Zorunlu olmasa da, muazzam manevi ödülü taşır ve çok tavsiye edilen ibadetin bir şeklidir. Hac ile bazı ritüelleri paylaşır ancak daha kısadır ve dört ana ayin içerir.';

  @override
  String get voiceInputTitle => 'Ses Girişi';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Yazmak yerine Ayara\'ya sesli olarak sor.';

  @override
  String get voiceInputMicDenied => 'Mikrofon erişimi reddedildi.';

  @override
  String get voiceInputSpeak => 'Bunun yerine konuş';

  @override
  String get voiceInputListening => 'Dinliyor…';

  @override
  String get voiceInputPermissionDenied =>
      'Ses girişi için mikrofon erişimi gereklidir.';
}
