// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Pilih basa mu';

  @override
  String get languageSelectSub =>
      'Sampeyan bisa ngganti iki mengko ing Pengaturan';

  @override
  String get actionContinue => 'Nerusake';

  @override
  String get languageSuggestedHeader => 'Disaranake';

  @override
  String get languageAllHeader => 'Kabeh basa';

  @override
  String get languageSuggestedBadge => 'Disaranake';

  @override
  String get languageSearchHint => 'Goleki…';

  @override
  String get planBasic => 'Standar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Panduan Saben Dina';

  @override
  String get categorySlot02 => 'Iman & Kapercayaan';

  @override
  String get categorySlot03 => 'Renungan Solat';

  @override
  String get categorySlot04 => 'Sabar Lan Pengharapan';

  @override
  String get categorySlot05 => 'Njaluki Pangapuran';

  @override
  String get categorySlot06 => 'Belas Kasih';

  @override
  String get categorySlot07 => 'Kapercayaan Lan Kekuatan';

  @override
  String get categorySlot08 => 'Hati Sing Bersukur';

  @override
  String get categorySlot09 => 'Tujuan Urip';

  @override
  String get categorySlot10 => 'Hubungan Kulawarga';

  @override
  String get categorySlot11 => 'Kalingan Batin';

  @override
  String get categorySlot12 => 'Kawicaksanan Para Nabi';

  @override
  String get categorySlot13 => 'Karakter Sing Apik';

  @override
  String get categorySlot14 => 'Nolak Godaan';

  @override
  String get categorySlot15 => 'Zikir Sore';

  @override
  String get categoryCustom => 'Renungan Pribadi';

  @override
  String get dhikrMeaningSubhanallah => 'Maha Suci Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Segala puji bagi Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah Maha Besar';

  @override
  String get quranVerseHeartAtRest =>
      'Sesungguhnya, dalam peringatan kepada Allah, hati menemukan ketenangan.';

  @override
  String get promptHint => 'Ketuk kategori kanggo panduan lan renungan Islam';

  @override
  String get currentLanguage => 'Basa saiki';

  @override
  String get settingsLanguage => 'Pengaturan basa';

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get chooseLanguage => 'Pilih basa mu';

  @override
  String get continueCta => 'Nerusake';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tembung',
      one: '$count tembung',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Pilihan';

  @override
  String get newCta => 'Anyar';

  @override
  String get actionsTitle => 'Apa sing pengin sampeyan gawe?';

  @override
  String get copy => 'Salinan';

  @override
  String get share => 'Tumindak';

  @override
  String get close => 'Tutup';

  @override
  String get copiedToast => 'Disalin menyang papan klip';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ora bisa nggawe balesan anyar';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nPengin nyoba maneh?';
  }

  @override
  String get cancelCta => 'Batal';

  @override
  String get retryCta => 'Nyoba maneh';

  @override
  String get authTitle => 'Gawa akun mu';

  @override
  String get continueAsGuest => 'Terusake minangka tamu';

  @override
  String get signInGoogle => 'Mlebu nganggo Google';

  @override
  String get signInApple => 'Mlebu nganggo Apple';

  @override
  String get signInEmail => 'Mlebu nganggo Email';

  @override
  String get upgradeWithApple => 'Terusake nganggo Apple';

  @override
  String get mustAccept =>
      'Sampeyan kudu nampa Syarat lan Ketentuan lan Kebijakan Privasi.';

  @override
  String get termsLabel => 'Aku nampa Syarat Layanan';

  @override
  String get privacyLabel => 'Aku wis maca Kebijakan Privasi';

  @override
  String get marketingOptIn => 'Aku setuju nampa warta lan tawaran';

  @override
  String get openTerms => 'Syarat Layanan';

  @override
  String get openPrivacy => 'Kebijakan Privasi';

  @override
  String get accountSection => 'Akun';

  @override
  String get guestMode => 'Mode tamu';

  @override
  String get signedIn => 'Wis mlebu';

  @override
  String get upgradeHint =>
      'Simpen renungan mu antarane piranti kanthi nggawa akun.';

  @override
  String get upgradeWithGoogle => 'Terusake nganggo Google';

  @override
  String get signOut => 'Metu';

  @override
  String get snackUpgraded => 'Akun ditingkatake nganggo Google ✅';

  @override
  String get snackSignedIn => 'Wis mlebu nganggo Google ✅';

  @override
  String get snackSignedOut => 'Wis metu';

  @override
  String get snackSignedInApple => 'Wis mlebu nganggo Apple ✅';

  @override
  String get snackSignedInGoogle => 'Wis mlebu nganggo Google ✅';

  @override
  String get snackUpgradedApple => 'Akun ditingkatake nganggo Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akun ditingkatake nganggo Google ✅';

  @override
  String get historyTitle => 'Renungan sadurunge';

  @override
  String get historyOpenCta => 'Renungan sadurunge';

  @override
  String get historyEmpty => 'Durung ana renungan sing disimpen.';

  @override
  String get historyDeleteTitle => 'Hapus renungan?';

  @override
  String get historyDeleteBody =>
      'Iki bakal nghapus permanen item sing dipilih.';

  @override
  String get deleteCta => 'Hapus';

  @override
  String get historyButton => 'Renungan Sadurunge';

  @override
  String get historyEmptyTitle => 'Durung ana renungan';

  @override
  String get historyEmptyBody =>
      'Gawe sesuatu pisanan — item sing disimpen bakal muncul nèk.';

  @override
  String get historyDelete => 'Hapus';

  @override
  String get footerTitle => 'Kanthi Wilaya, Iman lan Sabr';

  @override
  String get footerSubtitle => 'Setunggal solat ing sawijining wektu';

  @override
  String get genericErrorSnack => 'Ana sing salah — coba maneh ing saprene.';

  @override
  String get upgradeAccountCta =>
      'Simpen renungan antarane piranti – gawa akun';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get exportData => 'Mbukak data ku';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Gampang prau 🐯\nAyara butuh sedhengah wektu sadurunge sing ngarep…';

  @override
  String get rateDailyLimit =>
      'Renungan sampeyan wis entek saiki.\nDakake renungan liyane utawa tingkatake menyang Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Sampeyan wis nggunakake kabeh renungan mu.\nTambahi utawa tingkatake menyang Wilaya kanggo nerusake.';

  @override
  String get rateGraceCreditsExhausted =>
      'Renungan sampeyan wis entek saiki.\nDakake renungan liyane utawa tingkatake menyang Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya mbukak fitur premium, kategori liyane, lan badge khusus.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Renungan sampeyan kosong saiki. Paket: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ora bisa mriksa renungan mu: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ana sing salah nalika mriksa renungan mu.';

  @override
  String get aiFallbackGeneric => 'Ana sing salah — coba maneh ing saprene.';

  @override
  String get limitSectionTitle => 'Renungan';

  @override
  String get limitTodayLabel => 'Panganggon';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Renungan sing isih: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Paket: $plan';
  }

  @override
  String get limitLoadingLabel => 'Ngisi…';

  @override
  String get limitLoadingLabelDescription =>
      'Ditampilake ing kartu renungan nalika statistik panganggon diambil.';

  @override
  String get aiLimitTitle => 'Renungan';

  @override
  String get aiLimitSubtitle =>
      'Saben balesan nggunakake 1 renungan. Standar kalebu renungan awal. Wilaya mbukak kategori premium lan ngaktifake isi ulang.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total renungan digunakake';
  }

  @override
  String get creditsSectionTitle => 'Renungan';

  @override
  String get creditsUsageLabel => 'Panganggon';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Renungan sing isih: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Paket: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Ngisi…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ditampilake nalika statistik renungan diambil.';

  @override
  String get creditsTitle => 'Renungan';

  @override
  String get creditsSubtitle =>
      'Saben balesan nggunakake 1 renungan. Standar kalebu renungan awal. Wilaya mbukak kategori premium lan ngaktifake isi ulang.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total renungan digunakake';
  }

  @override
  String get settingsDeleteTitle => 'Hapus akun';

  @override
  String get settingsDeleteDescription =>
      'Hapus permanen akun mu lan kabeh data sing ana hubungane.';

  @override
  String get settingsDeleteButtonLabel => 'Hapus akun ku';

  @override
  String get settingsDeleteDialogTitle => 'Hapus akun?';

  @override
  String get settingsDeleteDialogBody =>
      'Tidakan iki permanen lan ora bisa dibatalake.\n\nKabeh obrolan, riwayat lan informasi akun mu bakal dihapus.';

  @override
  String get settingsDeleteDialogCancel => 'Batal';

  @override
  String get settingsDeleteDialogConfirm => 'Hapus';

  @override
  String get settingsFreeLimitUsedTitle => 'Renungan awal wis digunakake';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Renungan awal kanggo piranti iki wis digunakake. Tingkatake menyang Wilaya utawa tuku renungan liyane kanggo nerusake.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Renungan awal wis digunakake';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Renungan awal kanggo piranti iki wis digunakake. Tingkatake menyang Wilaya utawa tuku renungan liyane kanggo nerusake.';

  @override
  String get deviceBoundError =>
      'Piranti iki wis dikunci menyang akun liyane. Mangga mlebu nganggo akun asli.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic => 'Mbukak pengalaman Ayara lengkap.';

  @override
  String get premiumSubtitlePremium =>
      'Sampeyan ing Wilaya. Butuh renungan liyane?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Paket saiki: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Renungan: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Pembelian ora ana saiki.';

  @override
  String get premiumSignInToPurchase =>
      'Mlebu kanggo tuku renungan utawa mbukak Wilaya.';

  @override
  String get premiumRestorePurchases => 'Kembalikan pembelian';

  @override
  String get premiumProcessing => 'Ngolah…';

  @override
  String get premiumRestoreHintTitle =>
      'Wis tuku Wilaya utawa renungan ing piranti iki utawa liyane?';

  @override
  String get premiumRestoreHintBody => 'Kembalikan pembelian mu yèn ora katon.';

  @override
  String get premiumBuyCredits200 => 'Tuku 200 renungan';

  @override
  String get premiumBuyCredits400 => 'Tuku 400 renungan';

  @override
  String get premiumBecomePremiumOneTime => 'Tingkatake menyang mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Kanthi Wilaya, sampeyan bisa isi ulang renungan liyane nalika butuh.';

  @override
  String get premiumUpgradeCta => 'Tingkatake';

  @override
  String get premiumRequiredForCategory =>
      'Kategori iki mung ana kanggo pengguna Wilaya. Tingkatake ing Pengaturan kanggo mbukak kabeh konten premium.';

  @override
  String get premiumBenefitsBasic =>
      'Mbukak Wilaya kanggo nambah renungan, akses kategori premium, lan nerusake kapan-kapan butuh panduan.';

  @override
  String get premiumBenefitsPremium =>
      'Sampeyan ing mode Wilaya. Yèn renungan mau, tambahi lan terusake tanpa gangguan.';

  @override
  String get premiumButtonBecomePremium => 'Mbukak Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Tambahi 1000 renungan';

  @override
  String get premiumBadge => 'Wilaya aktif';

  @override
  String get premiumLoadingStore => 'Ngisi toko…';

  @override
  String get premiumProductNotAvailable =>
      'Produk iki durung ana ing toko. Mangga coba maneh mengko.';

  @override
  String get premiumPurchaseError =>
      'Ana sing salah karo pembelian. Mangga coba maneh.';

  @override
  String get premiumBuyCredits100 => 'Tambahi 100 renungan';

  @override
  String get premiumFeatureLocked => 'Mbukak Wilaya kanggo akses fitur iki.';

  @override
  String get lockedCategoriesHint =>
      'Sawetara kategori cuma kanggo anggota Wilaya. Mbukake kanggo jelajahi saben renungan ing perjalanan mu.';

  @override
  String get freePlanBlockedTitle => 'Renungan awal mu wis abang';

  @override
  String get freePlanBlockedBody =>
      'Sampeyan ing paket Standar nganggo renungan awal, lan sampeyan wis tekan batas. Kanggo nerusake — lan mbukak kategori premium — tingkatake menyang Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ndelok pilihan Wilaya nèk';

  @override
  String get graceBlockedTitle => 'Renungan awal mu wis abang';

  @override
  String get graceBlockedBody =>
      'Sampeyan ing paket Standar nganggo renungan awal, lan sampeyan wis tekan batas. Kanggo nerusake — lan mbukak kategori premium — tingkatake menyang Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ndelok pilihan Wilaya nèk';

  @override
  String get rateGuestMustSignIn =>
      'Mlebu kanggo nggunakake Ayara lan renungan mu.';

  @override
  String get guestNoCreditsTitle => 'Mode tamu';

  @override
  String get guestNoCreditsBody =>
      'Minangka tamu sampeyan bisa jelajahi aplikasi, nanging ora bisa nggunakake renungan. Mlebu mengko ing Pengaturan kanggo nggunakake renungan lan mbukak pembelian.';

  @override
  String get guestDialogContinue => 'Terusake';

  @override
  String get guestDialogLoginInstead => 'Mlebu';

  @override
  String get optionalLabel => 'pilihan';

  @override
  String get accountDeleteSuccessTitle => 'Akun dihapus';

  @override
  String get accountDeleteSuccessBody =>
      'Akun lan data sing ana hubungane wis dihapus sukses.';

  @override
  String get accountDeleteSuccessClose => 'Tutup';

  @override
  String get accountDeleteErrorTitle => 'Ora bisa hapus akun';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Mbaleni otentikasi dibatalake. Mangga mlebu maneh lan coba hapus maneh.';

  @override
  String get accountDeleteReauthRequired =>
      'Hapus akun butuh login anyar. Mangga metu, mlebu maneh, lan coba hapus maneh.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tidakan iki permanen lan ora bisa dibatalake. Kabeh data sing ana hubungane menyang akun mu bakal dihapus.';

  @override
  String get dailyGraceTitle => 'Panduan Saben Dina';

  @override
  String get dailyGraceScriptureLabel => 'AYAT SABEN DINA';

  @override
  String get dailyGraceSaintLabel => 'FIGUR WIKU';

  @override
  String get dailyGraceReflectionLabel => 'RENUNGAN SORE';

  @override
  String get dailyGraceCopiedToast => 'Ayat disalin menyang papan klip';

  @override
  String get locationConsentLabel =>
      'Ijini Ayara nggunakake lokasi ku kanggo arah Kiblat lan waktu solat';

  @override
  String get locationConsentHint =>
      'Digunakake mung kanggo fitur iki. Lokasi mu ora pernah dibagekake utawa disimpen.';

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
  String get askPageTitle => 'Takon Ayara';

  @override
  String get askPageDescription =>
      'Takon apa wae babagan iman, solat, urip, utawa amaliyah Islam lan nampa panduan saka Quran lan ajaran Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Ketik pitakon mu nèk…';

  @override
  String get askPageSubmitCta => 'Takon';

  @override
  String get askPageInputEmptyError => 'Mangga tulis pitakon pisanan.';

  @override
  String get askResultYourQuestion => 'Pitakon mu';

  @override
  String get guidancePageTitle => 'Kiblat';

  @override
  String get qiblaFacingMecca => 'Menghadap Mekkah';

  @override
  String get qiblaCompassInstruction =>
      'Balekake ponsel mu nganti jarum emas nunjuk menyang ndhuwur.\nArah kasebut nunjuk menyang Kiblat (Mekkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sinyal GPS lemah. Metu menyang luar lan ketuk Coba Maneh.';

  @override
  String get qiblaRetry => 'Coba Maneh';

  @override
  String get qiblaTitle => 'Arah Kiblat';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km menyang Mekkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokasi dibutuhi';

  @override
  String get qiblaLocationNeededBody =>
      'Ijini akses lokasi supaya Ayara bisa ngitung arah Kaabah ing Mekkah saka endi pun sampeyan.';

  @override
  String get qiblaOpenSettings => 'Mbukak Pengaturan';

  @override
  String get qiblaCompassLoading => 'Nggoleki posisi mu…';

  @override
  String get qiblaTowardMecca => 'Menyang Mekkah';

  @override
  String get prayerTimesTitle => 'Jadwal Solat';

  @override
  String get prayerTimesFajr => 'Subuh';

  @override
  String get prayerTimesDhuhr => 'Dhuhur';

  @override
  String get prayerTimesAsr => 'Asar';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Isya';

  @override
  String get prayerTimesLocationNeededTitle => 'Lokasi dibutuhi';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ijini akses lokasi supaya Ayara bisa ngitung jadwal solat sing akurat kanggo kutha mu.';

  @override
  String get prayerTimesNextLabel => 'Ngarep';

  @override
  String get prayerTimesDoneLabel => 'Selesai';

  @override
  String get monthlyPrayerTimesTitle => 'Jadwal Solat Saben Bulan';

  @override
  String get monthlyPrayerTimesViewButton => 'Delok Sak Bulan';

  @override
  String get monthlyPrayerTimesNextMonth => 'Bulan ngarep';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dina';

  @override
  String get sharePrayerTimes => 'Tumindak jadwal solat';

  @override
  String get notificationsSectionTitle => 'Notifikasi';

  @override
  String get notificationsSectionSubtitle =>
      'Pengingat solat, acara kalender & liyane';

  @override
  String get dailyReflectionReminderTitle => 'Renungan Saben Dina';

  @override
  String get dailyReflectionReminderDescription =>
      'Pengingat lembut saben dina kanggo mbukak Ayara lan nyambung menyang iman mu.';

  @override
  String get dailyReflectionReminderEnable => 'Nyalakake pengingat saben dina';

  @override
  String get dailyReflectionReminderTimeLabel => 'Jam pengingat';

  @override
  String get prayerNotificationsTitle => 'Pengingat Solat';

  @override
  String get prayerNotificationsDescription =>
      'Nampa pengingat lembut sakdurunge saben waktu solat kanggo tulung sampeyan tetep nyambung sak dina.';

  @override
  String get prayerNotificationsEnable => 'Nyalakake pengingat solat';

  @override
  String get prayerNotificationsOpenSettings => 'Mbukak pengaturan notifikasi';

  @override
  String get prayerNotificationsDenied => 'Notifikasi wis dianut';

  @override
  String get prayerNotificationsDeniedHint =>
      'Menyang Pengaturan lan ijini notifikasi kanggo Ayara supaya nampa pengingat waktu solat.';

  @override
  String get notificationsConsentLabel => 'Ijini notifikasi kanggo waktu solat';

  @override
  String get prayerNotifTitleFajr => '🌅 Subuh — Solat Subuh';

  @override
  String get prayerNotifBodyFajr =>
      'Subuh minangka solat pagi Ahlul Bayt. Imam Ali (AS) ngandika: Ati-atikake solat subuh minangka ati-ati barang sing paling berharga. Bangun, bersuci, lan berdiri ing adhadapan Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhur — Solat Tengah Dina';

  @override
  String get prayerNotifBodyDhuhr =>
      'Para Imam Ahlul Bayt ngerti setiap momen peringatan. Henti kerja, gabung Dhuhur lan Asar yèn perlu, lan bali menyang Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asar — Solat Sore';

  @override
  String get prayerNotifBodyAsr =>
      'Ati-atikake solat, amarga iku perjanjian antara sampeyan lan Allah. Waktu Asar wis tiba — aja sampek ora ono zikir.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Solat Takbiran';

  @override
  String get prayerNotifBodyMaghrib =>
      'Matahari wis terbenam — wektu sing penting kanggo Ahlul Bayt supaya berdoa. Jaga Maghrib lan mbukak tangan kanggo doa sadurunge malam dimulai.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isya — Solat Malam';

  @override
  String get prayerNotifBodyIsha =>
      'Tutup dina mu kanthi menemani Allah. Para Imam ngerti Salat al-Layl sawise Isya — nanging pisanan, rampungake Isya lan tutup dina kanthi peeringatan-Nya.';

  @override
  String get outOfReflectionsBannerText =>
      'Sampeyan wis nggunakake kabeh renungan';

  @override
  String get outOfReflectionsBannerCta => 'Dakake';

  @override
  String get dhikrPageTitle => 'Zikir';

  @override
  String get dhikrTapToCount => 'Ketuk lingkaran kanggo itungan';

  @override
  String get dhikrResetButton => 'Baleni';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Sampeyan wis rampung 100 zikir menyang Allah. Semoga dadi cahaya kanggo hati mu.';

  @override
  String get disclaimerTitle => 'Babagan panduan aplikasi iki';

  @override
  String get disclaimerBody =>
      'Ayara menyediakan renungan Islam, pengingat, lan konten spiritual kanggo ndukungan perjalanan iman pribadi mu, asale saka Quran lan ajaran Ahlul Bayt. Konten iki ditawarake kanggo tujuan informatif lan inspiratif umum.\n\nAyara ora ngganteni ulama qualified.\nPanduan ing aplikasi iki ora ngganti ulama Islam lereng, marja\', utawa guru sing pelatihan teologi. Ing Islam Syiah, panduan agama asale saka madzhab Ja\'fari (fiqh) lan tradisi ngikuti Marja\' hidup — seorang ahli agama sing penetapane panduan para pengikut ing amaliyah agama. Yèn sampeyan punpun pitakon babagan penetapan agama, halal lan haram, utawa kaharusan agama pribadi, mangga minta saran saka Marja\' qualified utawa ulama ing komunitas mu.\n\nAplikasi iki ora ngaluarake penetapan agama.\nAyara ora nggawa penentuan otoritatif babagan hal fiqh utawa kaharusan agama pribadi. Ora ana sing kudu dianggap minangka fatwa utawa instruksi agama mengikat.\n\nKesentralan Ahlul Bayt.\nIng Islam Syiah, Nabi Muhammad ﷺ lan keluarganya sing murni — Ahlul Bayt — minangka pamandu otoritatif komunitas Islam sawise Quran. Rong Belas Imam Ahlul Bayt minangka penafsir alihan awak-Allah saka ajaran Islam. Konten ing aplikasi iki nglalui tradisi iki lan njaluki kanggo ngormati kanthi setia.\n\nMasalah Komunitas.\nAplikasi iki njaluki kanggo umamat kasunyatan iman mu nalika hormati katonane pentingnya masjid lokal mu, pusat Islam, lan komunitas keagamaan. Kami njaluki sampeyan tetep nyambung lan dhewekan saka guru qualified cedhak mu.';

  @override
  String get disclaimerClose => 'Ngerti';

  @override
  String get disclaimerInfoTooltip => 'Babagan panduan aplikasi iki';

  @override
  String get disclaimerSettingsSubtitle =>
      'Kanggo tujuan informatif umum. Ketuk kanggo maca lembar disclaimer lengkap.';

  @override
  String get disclaimerSectionHeader => 'Lembar pembuahan panduan';

  @override
  String get navHome => 'Ngarep';

  @override
  String get navReflect => 'Renungan';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'DINA IKI';

  @override
  String get dashboardComingUp => 'Ngarep';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dina',
      one: 'dina',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Akses Cepet';

  @override
  String get quickActionQibla => 'Kiblat';

  @override
  String get quickActionDhikr => 'Zikir';

  @override
  String get quickActionDailyGrace => 'Panduan';

  @override
  String get quickActionPrayerTimes => 'Jadwal Solat';

  @override
  String get askAyaraTitle => 'Takon Ayara';

  @override
  String get askAyaraSubtitle =>
      'Takon pitakon Islam apa wae lan nampa balesan sing dipikirake mateng.';

  @override
  String get askAyaraHint => 'cth: Apa makne penting Ramadan?';

  @override
  String get askAyaraSubmit => 'Takon';

  @override
  String get wisdomOfTheDayTitle => 'Kawicaksanan Saben Dina';

  @override
  String get calendarScreenTitle => 'Kalender Islam';

  @override
  String get calendarUpcomingOccasions => 'Acara Ngarep';

  @override
  String get calendarOccasionRemindersTitle => 'Pengingat Acara';

  @override
  String get calendarOccasionRemindersHint =>
      'Wanti ing malam sadurunge saben acara';

  @override
  String get calendarNotifPermissionDenied =>
      'Ijin notifikasi ditolak. Nyalakake ing pengaturan piranti mu.';

  @override
  String get calendarNoEvents => 'Ora ana acara ngarep sing ketemu.';

  @override
  String get calendarAddToPhone => 'Tambah menyang Kalender Telepon';

  @override
  String get calendarAddedToPhone => 'Ditambah menyang Kalender';

  @override
  String get calendarCountdownToday => 'DINA IKI';

  @override
  String get calendarCountdownTomorrow => 'SESUK';

  @override
  String calendarCountdownDays(int days) {
    return 'ing $days dina';
  }

  @override
  String get calendarAH => 'H';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mei';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Agu';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Des';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dina-dina Muharram — inget Karbala';

  @override
  String get calendarSeasonAshura => 'Asyura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dina-dina tabig lan renungan';

  @override
  String get calendarSeasonArbaeen => 'Arba\'in — patang puluh dina Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Jalan menyang Arba\'in';

  @override
  String get calendarSeasonMabath => 'Mab\'ats Mubarak — subuh wahyu';

  @override
  String get calendarSeasonMidShaban =>
      'Pertengahan Sha\'ban — dina lahir Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — bulan Quran';

  @override
  String get calendarSeasonGhadir => 'Idul Ghadir Mubarak!';

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
  String get duasScreenTitle => 'Dua & Ziyarat';

  @override
  String get duasSearchHint => 'Goleki dua, ziyarat…';

  @override
  String get duasFilterAll => 'Kabeh';

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
  String get duasEmpty => 'Durung ana dua sing ketemu.';

  @override
  String get duaCategoryDaily => 'Saben Dina';

  @override
  String get duaCategoryWeekly => 'Saben Minggu';

  @override
  String get duaCategoryOccasions => 'Acara';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Lahir';

  @override
  String get eventTypeMartyrdom => 'Syahadat';

  @override
  String get eventTypeOccasion => 'Acara';

  @override
  String get duaCopyTooltip => 'Salinan terjemahan';

  @override
  String get duaToggleTransliteration => 'Transliterasi';

  @override
  String get duaToggleTranslation => 'Terjemahan';

  @override
  String get duaAskAiLabel => 'Takon Ayara kanggo jelaske dua iki';

  @override
  String get duaAskAiLockedLabel => 'Takon Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Jelaske Ayara ana kanggo anggota Wilaya. Tingkatake ing Pengaturan.';

  @override
  String duaAiComingSoon(String name) {
    return 'Takon Ayara babagan \"$name\" — segera hadir!';
  }

  @override
  String get duaCopiedToast => 'Dua disalin menyang papan klip.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah Maha Besar';

  @override
  String get tasbihAlhamdulillahMeaning => 'Kabeh puji milik Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Maha Suci Allah';

  @override
  String get tasbihResetTooltip => 'Baleni';

  @override
  String get tasbihCompleteTitle => 'Tasbih Rampung';

  @override
  String get tasbihCompleteMessage => 'Semoga Allah nampa zikir mu.';

  @override
  String get tasbihTapHint => 'Ketuk ngendi wae kanggo itungan';

  @override
  String get tasbihatScreenTitle => 'Panduan Solat';

  @override
  String get tasbihatScreenSubtitle => 'TASBIHAN WAKTU SOLAT';

  @override
  String get tasbihatScreenDescription =>
      'Panduan lengkap tasbihan sing diucapake nalika lan sawise solat saben dina — nglalui tradisi Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIHAT AL-ARBAA';

  @override
  String get tasbihatArba3Subtitle =>
      'Diucapake ing raka\'at ketiga lan keempat';

  @override
  String get tasbihatArba3Info =>
      'Ing fiqh Syiah, Tasbihat al-Arba\'a ngganti Surah al-Fatihah ing raka\'at ketiga lan keempat Dhuhur, Asar, Maghrib, lan Isya. Wajib diucapake sekali, lan sunah diucapake tiga kali.';

  @override
  String get tasbihatArba3Translation =>
      'Maha Suci Allah · Kabeh puji kanggo Allah\nTidak ada Tuhan selain Allah · Allah Maha Besar';

  @override
  String get tasbihatArba3CompleteTitle => 'Pembacaan Rampung';

  @override
  String get tasbihatArba3CompleteMessage => 'Semoga solat mu diterima — Amin';

  @override
  String get tasbihatArba3TapHint => 'Ketuk sawise saben bacaan';

  @override
  String get tasbihatZahraSubtitle => 'Sawise solat saben wektu · 100 biji';

  @override
  String get tasbihatZahraOriginLabel => 'Asal-usul';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) njaluki Nabi ﷺ kanggo pembantu. Beliau bilang: \"Apa ora aku tunjuki samubarang sing luwih apik? Ucapake Subhanallah 33 kali, Alhamdulillah 33 kali, lan Allahu Akbar 34 kali sawise saben solat. Iku luwih apik kanggo mu tinimbang pembantu.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwar, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Mbukak Tasbih Penghitung';

  @override
  String get tasbihatDuasTitle => 'DUA YANG DIREKOMENDASIKAN';

  @override
  String get tasbihatDuasSubtitle => 'Sawise rampung solat mu';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ayat al-Kursi';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Sawise solat wajib saben wektu';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Siapa yang membaca Ayat al-Kursi setelah setiap solat wajib, tidak ada yang menghalangi surga kecuali kematian. Imam al-Baqir (a) bilang itu salah satu ayat terbesar dalam Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Salawat';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Sawise solat saben wektu · tutup kabeh dua';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Sadiq (a) — Al-Kafi';

  @override
  String get tasbihatDuaSalawatNote =>
      'Ngucapake salam menyang Nabi ﷺ lan keluarganya sing murni (Al Muhammad) disaranake kanggo tutup saben dua. Imam al-Sadiq (a) bilang: \"Saben dua itu tergantung hanggang sampeyan ngucapake salawat menyang Muhammad lan keluarganya.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Dua al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Sawise solat saben wektu · kanggo Imam zamannya';

  @override
  String get tasbihatDuaFarajSource =>
      'Diajarake saka Imam al-Hasan al-Askari (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua kanggo munculé Imam al-Mahdī (af), Imam kaping rolas, sing diajari déning bapaké. Iki asring diwaca déning akèh Muslim Shia sawise shalat minangka tumindak devosi marang Imam sing urip.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbih Lady Fatima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Sawise Maghrib lan Isya · luwih disaranake';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Baqir (a) — Bihar al-Anwar';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Baqir (a) bilang ucapake Tasbih al-Zahra sawise Isya sadurunge tidur luwih apik tinimbang 1000 raka\'at solat sunah. Cahayanya naik menyang langit.';

  @override
  String get tasbihFatimaGiftPre => 'Hadiah saka Nabi';

  @override
  String get tasbihFatimaGiftPost => 'diucapake sawise solat saben wektu';

  @override
  String get prayerTrackerTitle => 'PELACAK SOLAT';

  @override
  String get prayerTrackerPrayed => 'Solat';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dina beruntun';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Kabeh solat rampung dina iki. Semoga Allah nampa.';

  @override
  String get dhikrTrackerTitle => 'TASBIH AL-ZAHRA';

  @override
  String get dhikrTrackerCompletedToday => 'Rampung dina iki';

  @override
  String get dhikrTrackerNotDoneToday => 'Durung dilakuke dina iki';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dina beruntun';
  }

  @override
  String get dhikrReminderTitle => 'Pengingat Tasbih';

  @override
  String get dhikrReminderDescription =>
      'Pengingat lembut saben dina kanggo ngucapake Tasbih al-Zahra mu (SA).';

  @override
  String get dhikrReminderEnable => 'Nyalakake pengingat Tasbih';

  @override
  String get dhikrReminderTimeLabel => 'Jam pengingat';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Saben Dina';

  @override
  String get hadithLabelArabic => 'ARAB';

  @override
  String get hadithLabelTranslation => 'TERJEMAHAN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Tumindak Hadith Iki';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Sadurunge';

  @override
  String get hadithNavNext => 'Ngarep';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Empat Belas Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'Nabi, Lady Fatima, lan Dua Belas Imam — pituduh sing suci lan infallible ing Islam Shia Twelver';

  @override
  String get imamLabelBorn => 'Lahir';

  @override
  String get imamLabelMartyrdom => 'Syahadat';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'RIWAYAT HIDUP';

  @override
  String get imamSectionFamousSaying => 'UCAPAN MASYHUR';

  @override
  String get imamRoleProphet => 'Nabi Penutup';

  @override
  String get imamRoleInfallible => 'Sing Isip';

  @override
  String get imamOrdinal1 => 'Imam Pertama';

  @override
  String get imamOrdinal2 => 'Imam Kedua';

  @override
  String get imamOrdinal3 => 'Imam Ketiga';

  @override
  String get imamOrdinal4 => 'Imam Keempat';

  @override
  String get imamOrdinal5 => 'Imam Kelima';

  @override
  String get imamOrdinal6 => 'Imam Keenam';

  @override
  String get imamOrdinal7 => 'Imam Ketujuh';

  @override
  String get imamOrdinal8 => 'Imam Kedelapan';

  @override
  String get imamOrdinal9 => 'Imam Kesembilan';

  @override
  String get imamOrdinal10 => 'Imam Kesepuluh';

  @override
  String get imamOrdinal11 => 'Imam Kesebelas';

  @override
  String get imamOrdinal12 => 'Imam Keduabelas';

  @override
  String get duaAudioScreenTitle => 'Ngrungokake Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Pilih dua kanggo ngrungokake. Ketuk tile kanggo main utawa setel.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio kanggo dua iki bakal ana ing update ngarep.';

  @override
  String get duaAudioClose => 'Tutup';

  @override
  String get duaAudioError => 'Ora bisa muat audio. Mangga mriksa koneksi mu.';

  @override
  String get duaAudioMetaTransmittedBy => 'Diterusake saka';

  @override
  String get duaAudioMetaOccasion => 'Acara';

  @override
  String get duaAudioMetaDuration => 'Durasi';

  @override
  String get quickActionDailyHadith => 'Hadith Saben Dina';

  @override
  String get quickAction14Masumeen => 'Empat Belas Infallibles';

  @override
  String get quickActionListenDuas => 'Ngrungokake';

  @override
  String get quickActionTasbihat => 'Panduan Solat';

  @override
  String get pilgrimageSectionTitle => 'Perjalanan Suci';

  @override
  String get pilgrimageSectionSubtitle =>
      'Panduan lengkap Hajj & Umrah — ziarah menyang Baytul Haram Allah ing Mekkah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Pilar Islam Kelima';

  @override
  String get hajjCardDescription =>
      'Ziarah tahunan besar — wajib sekali dalam hidup kanggo saben Muslim yang mampu';

  @override
  String get hajjScreenTitle => 'Panduan Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Panduan langkah demi langkah kanggo ziarah besar';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ziarah Kecil';

  @override
  String get umrahCardDescription =>
      'Perjalanan spiritual yang bermakna yang dapat dilakukan kapan saja dalam tahun itu';

  @override
  String get umrahScreenTitle => 'Panduan Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Panduan langkah demi langkah kanggo ziarah kecil';

  @override
  String get pilgrimageStepsTitle => 'Ritual & Langkah-langkah';

  @override
  String get pilgrimageImportantNotesTitle => 'Catatan Penting';

  @override
  String get pilgrimageDuaTitle => 'Dua kanggo langkah iki';

  @override
  String get pilgrimageJafariNoteTitle => 'Cathetan Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Rampung';

  @override
  String get pilgrimageMarkDone => 'Tandhani minangka rampung';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done saka $total langkah';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes menit';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Jamaah Syiah';

  @override
  String get pilgrimageShiaNoteBody =>
      'Akeh peziarah Shia uga lelungan menyang Medina kanggo ziyarat Nabi Muhammad (SAW) ing Masjid al-Nabawi lan kuburan ing Jannat al-Baqi. Kunjungan iki nduweni makna spiritual sing jero, sanajan ora dadi ritus Hajj dhewe.';

  @override
  String get hajjIntro =>
      'Hajj iku pilar kaping lima saka Islam, wajib dilakoni sakali sajrone urip kanggo saben Muslim sing fisik lan finansial bisa. Kanggo akèh peziarah Shia Twelver saiki, iki ateges Hajj al-Tamattu\', sing dilakoni ing sasi Dhul Hijjah ing jejak Nabi Ibrahim (AS), putrane Ismail (AS), lan Lady Hajar. Pandhuan iki ngetutake garis besar Ja\'fari saka ritus, nalika ziyarat ing Medina tetep dadi perjalanan sing banget dihargai sadurunge utawa sawise Hajj.';

  @override
  String get umrahIntro =>
      'Umrah adalah ziarah kecil ke Mekkah dan, tidak seperti Hajj, dapat dilakukan kapan saja dalam tahun itu. Meskipun tidak wajib, memiliki pahala spiritual yang besar dan dianggap tindakan ibadah yang sangat disarankan. Berbagi beberapa ritual dengan Hajj tetapi lebih pendek, terdiri dari empat ritual utama.';

  @override
  String get voiceInputTitle => 'Input Suara';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Ngomongake inputmu kanggo Ask Ayara tinimbang ngetik.';

  @override
  String get voiceInputMicDenied => 'Akses mikrofon ditolak.';

  @override
  String get voiceInputSpeak => 'Ngomongake gantine';

  @override
  String get voiceInputListening => 'Ngrungokake…';

  @override
  String get voiceInputPermissionDenied =>
      'Akses mikrofon dibutuhake kanggo input suara.';
}
