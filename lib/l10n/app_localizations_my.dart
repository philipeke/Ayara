// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Pilih bahasa anda';

  @override
  String get languageSelectSub =>
      'Anda boleh mengubahnya kemudian dalam Tetapan';

  @override
  String get actionContinue => 'Teruskan';

  @override
  String get languageSuggestedHeader => 'Disyorkan';

  @override
  String get languageAllHeader => 'Semua bahasa';

  @override
  String get languageSuggestedBadge => 'Disyorkan';

  @override
  String get languageSearchHint => 'Cari…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Panduan Harian';

  @override
  String get categorySlot02 => 'Iman & Kepercayaan';

  @override
  String get categorySlot03 => 'Renungan Solat';

  @override
  String get categorySlot04 => 'Sabar dan Harapan';

  @override
  String get categorySlot05 => 'Mohon Keampunan';

  @override
  String get categorySlot06 => 'Rahmat dan Belas Kasihan';

  @override
  String get categorySlot07 => 'Kekuatan Iman';

  @override
  String get categorySlot08 => 'Hati yang Bersyukur';

  @override
  String get categorySlot09 => 'Tujuan Hidup';

  @override
  String get categorySlot10 => 'Ikatan Keluarga';

  @override
  String get categorySlot11 => 'Ketenangan Jiwa';

  @override
  String get categorySlot12 => 'Hikmah Para Nabi';

  @override
  String get categorySlot13 => 'Akhlak Mulia';

  @override
  String get categorySlot14 => 'Menahan Godaan';

  @override
  String get categorySlot15 => 'Zikir Petang';

  @override
  String get categoryCustom => 'Renungan Peribadi';

  @override
  String get dhikrMeaningSubhanallah => 'Maha Suci Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Segala puji bagi Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah Maha Besar';

  @override
  String get quranVerseHeartAtRest =>
      'Sesungguhnya, dengan mengingati Allah hati menjadi tenang.';

  @override
  String get promptHint => 'Ketik kategori untuk panduan dan renungan Islam';

  @override
  String get currentLanguage => 'Bahasa semasa';

  @override
  String get settingsLanguage => 'Tetapan bahasa';

  @override
  String get settingsTitle => 'Tetapan';

  @override
  String get chooseLanguage => 'Pilih bahasa anda';

  @override
  String get continueCta => 'Teruskan';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perkataan',
      one: '$count perkataan',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Pilihan';

  @override
  String get newCta => 'Baharu';

  @override
  String get actionsTitle => 'Apa yang anda ingin lakukan?';

  @override
  String get copy => 'Salin';

  @override
  String get share => 'Kongsi';

  @override
  String get close => 'Tutup';

  @override
  String get copiedToast => 'Disalin ke papan klip';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Tidak dapat menjana balasan baharu';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nAdakah anda mahu mencuba lagi?';
  }

  @override
  String get cancelCta => 'Batal';

  @override
  String get retryCta => 'Cuba lagi';

  @override
  String get authTitle => 'Cipta akaun anda';

  @override
  String get continueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String get signInGoogle => 'Log masuk dengan Google';

  @override
  String get signInApple => 'Log masuk dengan Apple';

  @override
  String get signInEmail => 'Log masuk dengan E-mel';

  @override
  String get upgradeWithApple => 'Teruskan dengan Apple';

  @override
  String get mustAccept =>
      'Anda mesti menerima Terma Perkhidmatan dan mengakui Dasar Privasi.';

  @override
  String get termsLabel => 'Saya menerima Terma Perkhidmatan';

  @override
  String get privacyLabel => 'Saya telah membaca Dasar Privasi';

  @override
  String get marketingOptIn => 'Saya bersetuju menerima berita dan tawaran';

  @override
  String get openTerms => 'Terma Perkhidmatan';

  @override
  String get openPrivacy => 'Dasar Privasi';

  @override
  String get accountSection => 'Akaun';

  @override
  String get guestMode => 'Mod tetamu';

  @override
  String get signedIn => 'Telah log masuk';

  @override
  String get upgradeHint =>
      'Simpan renungan anda merentas peranti dengan mencipta akaun.';

  @override
  String get upgradeWithGoogle => 'Teruskan dengan Google';

  @override
  String get signOut => 'Log keluar';

  @override
  String get snackUpgraded => 'Akaun dinaik taraf dengan Google ✅';

  @override
  String get snackSignedIn => 'Log masuk dengan Google ✅';

  @override
  String get snackSignedOut => 'Log keluar';

  @override
  String get snackSignedInApple => 'Log masuk dengan Apple ✅';

  @override
  String get snackSignedInGoogle => 'Log masuk dengan Google ✅';

  @override
  String get snackUpgradedApple => 'Akaun dinaik taraf dengan Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akaun dinaik taraf dengan Google ✅';

  @override
  String get historyTitle => 'Renungan terdahulu';

  @override
  String get historyOpenCta => 'Renungan terdahulu';

  @override
  String get historyEmpty => 'Belum ada renungan yang disimpan.';

  @override
  String get historyDeleteTitle => 'Padam renungan?';

  @override
  String get historyDeleteBody =>
      'Ini akan menghapuskan item yang dipilih secara kekal.';

  @override
  String get deleteCta => 'Padam';

  @override
  String get historyButton => 'Renungan Terdahulu';

  @override
  String get historyEmptyTitle => 'Belum ada renungan';

  @override
  String get historyEmptyBody =>
      'Jana sesuatu dahulu — item yang anda simpan akan muncul di sini.';

  @override
  String get historyDelete => 'Padam';

  @override
  String get footerTitle => 'Dengan Wilaya, Iman dan Sabr';

  @override
  String get footerSubtitle => 'Satu doa pada satu masa';

  @override
  String get genericErrorSnack =>
      'Sesuatu tidak berjalan lancar — sila cuba lagi sebentar lagi.';

  @override
  String get upgradeAccountCta =>
      'Simpan renungan anda merentas peranti – cipta akaun';

  @override
  String get deleteAccount => 'Padam akaun';

  @override
  String get exportData => 'Eksport data saya';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Bertenang sedikit 🐯\nAyara perlukan sedikit masa sebelum yang seterusnya…';

  @override
  String get rateDailyLimit =>
      'Renungan anda telah habis buat masa ini.\nDapatkan lebih banyak renungan atau naik taraf ke Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Anda telah menggunakan semua renungan anda.\nTambah nilai atau naik taraf ke Wilaya untuk teruskan.';

  @override
  String get rateGraceCreditsExhausted =>
      'Renungan anda telah habis buat masa ini.\nDapatkan lebih banyak renungan atau naik taraf ke Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya membuka ciri premium, kategori akan datang, dan lencana khas.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Renungan anda kosong buat masa ini. Pelan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Tidak dapat menyemak renungan anda: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Sesuatu tidak berjalan lancar semasa menyemak renungan anda.';

  @override
  String get aiFallbackGeneric =>
      'Sesuatu tidak berjalan lancar — sila cuba lagi sebentar lagi.';

  @override
  String get limitSectionTitle => 'Renungan';

  @override
  String get limitTodayLabel => 'Penggunaan';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Baki renungan: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Pelan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Memuatkan…';

  @override
  String get limitLoadingLabelDescription =>
      'Dipaparkan pada kad renungan semasa statistik penggunaan sedang diambil.';

  @override
  String get aiLimitTitle => 'Renungan';

  @override
  String get aiLimitSubtitle =>
      'Setiap jawapan menggunakan 1 renungan. Standard termasuk renungan permulaan. Wilaya membuka kategori premium dan membolehkan tambah nilai.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total renungan digunakan';
  }

  @override
  String get creditsSectionTitle => 'Renungan';

  @override
  String get creditsUsageLabel => 'Penggunaan';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Baki renungan: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Pelan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Memuatkan…';

  @override
  String get creditsLoadingLabelDescription =>
      'Dipaparkan semasa statistik renungan sedang diambil.';

  @override
  String get creditsTitle => 'Renungan';

  @override
  String get creditsSubtitle =>
      'Setiap jawapan menggunakan 1 renungan. Standard termasuk renungan permulaan. Wilaya membuka kategori premium dan membolehkan tambah nilai.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total renungan digunakan';
  }

  @override
  String get settingsDeleteTitle => 'Padam akaun';

  @override
  String get settingsDeleteDescription =>
      'Padam akaun anda dan semua data yang berkaitan secara kekal.';

  @override
  String get settingsDeleteButtonLabel => 'Padam akaun saya';

  @override
  String get settingsDeleteDialogTitle => 'Padam akaun?';

  @override
  String get settingsDeleteDialogBody =>
      'Tindakan ini kekal dan tidak boleh dibatalkan.\n\nSemua sembang, sejarah dan maklumat akaun anda akan dipadamkan.';

  @override
  String get settingsDeleteDialogCancel => 'Batal';

  @override
  String get settingsDeleteDialogConfirm => 'Padam';

  @override
  String get settingsFreeLimitUsedTitle => 'Renungan permulaan telah digunakan';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Renungan permulaan untuk peranti ini telah digunakan. Naik taraf ke Wilaya atau beli lebih banyak renungan untuk teruskan.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Renungan permulaan telah digunakan';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Renungan permulaan untuk peranti ini telah digunakan. Naik taraf ke Wilaya atau beli lebih banyak renungan untuk teruskan.';

  @override
  String get deviceBoundError =>
      'Peranti ini sudah dipautkan kepada akaun lain. Sila log masuk dengan akaun asal.';

  @override
  String get premiumTitle => 'Mod Wilaya';

  @override
  String get premiumSubtitleBasic => 'Buka pengalaman Ayara sepenuhnya.';

  @override
  String get premiumSubtitlePremium =>
      'Anda menggunakan Wilaya. Perlukan lebih banyak renungan?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Pelan semasa: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Renungan: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Pembelian tidak tersedia buat masa ini.';

  @override
  String get premiumSignInToPurchase =>
      'Log masuk untuk membeli renungan atau membuka Wilaya.';

  @override
  String get premiumRestorePurchases => 'Pulihkan pembelian';

  @override
  String get premiumProcessing => 'Sedang diproses…';

  @override
  String get premiumRestoreHintTitle =>
      'Sudah membeli Wilaya atau renungan pada peranti ini atau peranti lain?';

  @override
  String get premiumRestoreHintBody =>
      'Pulihkan pembelian anda jika ia tidak dipaparkan.';

  @override
  String get premiumBuyCredits200 => 'Beli 200 renungan';

  @override
  String get premiumBuyCredits400 => 'Beli 400 renungan';

  @override
  String get premiumBecomePremiumOneTime => 'Naik taraf ke mod Wilaya';

  @override
  String get premiumTopupHint =>
      'Dengan Wilaya, anda boleh menambah renungan tambahan bila-bila masa anda perlukan.';

  @override
  String get premiumUpgradeCta => 'Naik taraf';

  @override
  String get premiumRequiredForCategory =>
      'Kategori ini hanya tersedia untuk pengguna Wilaya. Naik taraf dalam Tetapan untuk membuka semua kandungan premium.';

  @override
  String get premiumBenefitsBasic =>
      'Buka Wilaya untuk mendapatkan lebih banyak renungan, akses kategori premium, dan teruskan bila-bila masa anda memerlukan panduan.';

  @override
  String get premiumBenefitsPremium =>
      'Anda berada dalam mod Wilaya. Jika hampir habis, tambah beberapa renungan lagi dan teruskan tanpa gangguan.';

  @override
  String get premiumButtonBecomePremium => 'Buka Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Tambah 1000 renungan';

  @override
  String get premiumBadge => 'Wilaya aktif';

  @override
  String get premiumLoadingStore => 'Memuatkan kedai…';

  @override
  String get premiumProductNotAvailable =>
      'Produk ini belum tersedia di kedai. Sila cuba lagi kemudian.';

  @override
  String get premiumPurchaseError =>
      'Sesuatu tidak berjalan lancar semasa pembelian. Sila cuba lagi.';

  @override
  String get premiumBuyCredits100 => 'Tambah 100 renungan';

  @override
  String get premiumFeatureLocked => 'Buka Wilaya untuk menggunakan ciri ini.';

  @override
  String get lockedCategoriesHint =>
      'Sesetengah kategori dikhaskan untuk ahli Wilaya. Bukanya untuk meneroka setiap renungan dalam perjalanan anda.';

  @override
  String get freePlanBlockedTitle =>
      'Anda telah menggunakan renungan permulaan anda';

  @override
  String get freePlanBlockedBody =>
      'Anda berada pada pelan Standard dengan renungan permulaan, dan anda telah mencapai hadnya. Untuk teruskan — dan membuka kategori premium — naik taraf ke Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Lihat pilihan Wilaya di bawah';

  @override
  String get graceBlockedTitle =>
      'Anda telah menggunakan renungan permulaan anda';

  @override
  String get graceBlockedBody =>
      'Anda berada pada pelan Standard dengan renungan permulaan, dan anda telah mencapai hadnya. Untuk teruskan — dan membuka kategori premium — naik taraf ke Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Lihat pilihan Wilaya di bawah';

  @override
  String get rateGuestMustSignIn =>
      'Log masuk untuk menggunakan Ayara dan renungan anda.';

  @override
  String get guestNoCreditsTitle => 'Mod tetamu';

  @override
  String get guestNoCreditsBody =>
      'Sebagai tetamu anda boleh melayari aplikasi, tetapi anda tidak boleh menggunakan renungan. Log masuk kemudian dalam Tetapan untuk menggunakan renungan dan membuka pembelian.';

  @override
  String get guestDialogContinue => 'Teruskan';

  @override
  String get guestDialogLoginInstead => 'Log masuk sebaliknya';

  @override
  String get optionalLabel => 'pilihan';

  @override
  String get accountDeleteSuccessTitle => 'Akaun dipadam';

  @override
  String get accountDeleteSuccessBody =>
      'Akaun anda dan data berkaitan telah berjaya dipadamkan.';

  @override
  String get accountDeleteSuccessClose => 'Tutup';

  @override
  String get accountDeleteErrorTitle => 'Tidak dapat memadam akaun';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Pengesahan semula telah dibatalkan. Sila log masuk semula dan cuba padamkan sekali lagi.';

  @override
  String get accountDeleteReauthRequired =>
      'Pemadaman akaun memerlukan log masuk yang terkini. Sila log keluar, log masuk semula, dan cuba lagi.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tindakan ini kekal dan tidak boleh dibatalkan. Semua data yang berkaitan dengan akaun anda akan dipadamkan.';

  @override
  String get dailyGraceTitle => 'Panduan Harian';

  @override
  String get dailyGraceScriptureLabel => 'AYAT HARI INI';

  @override
  String get dailyGraceSaintLabel => 'FIGURE OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'RENUNGAN PETANG';

  @override
  String get dailyGraceCopiedToast => 'Ayat disalin ke papan klip';

  @override
  String get locationConsentLabel =>
      'Benarkan Ayara menggunakan lokasi saya untuk arah kiblat dan waktu solat';

  @override
  String get locationConsentHint =>
      'Hanya digunakan untuk ciri ini. Lokasi anda tidak pernah dikongsi atau disimpan.';

  @override
  String get askPageTitle => 'Tanya Ayara';

  @override
  String get askPageDescription =>
      'Tanya apa sahaja tentang iman, solat, kehidupan, atau amalan Islam dan terima panduan yang berasaskan al-Quran dan ajaran Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Taip soalan anda di sini…';

  @override
  String get askPageSubmitCta => 'Tanya';

  @override
  String get askPageInputEmptyError => 'Sila tulis soalan dahulu.';

  @override
  String get askResultYourQuestion => 'Soalan anda';

  @override
  String get guidancePageTitle => 'Kiblat';

  @override
  String get qiblaFacingMecca => 'Menghadap Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Pusing telefon anda sehingga jarum emas menunjuk ke atas.\nArah itu menunjukkan Kiblat (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Isyarat GPS lemah. Bergerak ke luar dan ketik Cuba lagi.';

  @override
  String get qiblaRetry => 'Cuba lagi';

  @override
  String get qiblaTitle => 'Arah Kiblat';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km ke Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokasi diperlukan';

  @override
  String get qiblaLocationNeededBody =>
      'Benarkan akses lokasi supaya Ayara dapat mengira arah Kaabah di Makkah dari mana sahaja anda berada.';

  @override
  String get qiblaOpenSettings => 'Buka Tetapan';

  @override
  String get qiblaCompassLoading => 'Mencari kedudukan anda…';

  @override
  String get qiblaTowardMecca => 'Ke arah Makkah';

  @override
  String get prayerTimesTitle => 'Waktu Solat';

  @override
  String get prayerTimesFajr => 'Fajr';

  @override
  String get prayerTimesDhuhr => 'Zuhur';

  @override
  String get prayerTimesAsr => 'Asar';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Isyak';

  @override
  String get prayerTimesLocationNeededTitle => 'Lokasi diperlukan';

  @override
  String get prayerTimesLocationNeededBody =>
      'Benarkan akses lokasi supaya Ayara dapat mengira waktu solat yang tepat untuk bandar anda.';

  @override
  String get prayerTimesNextLabel => 'Seterusnya';

  @override
  String get prayerTimesDoneLabel => 'Selesai';

  @override
  String get monthlyPrayerTimesTitle => 'Waktu Solat Bulanan';

  @override
  String get monthlyPrayerTimesViewButton => 'Lihat Sepenuh Bulan';

  @override
  String get monthlyPrayerTimesNextMonth => 'Bulan depan';

  @override
  String get monthlyPrayerTimesDayHeader => 'Hari';

  @override
  String get sharePrayerTimes => 'Kongsi waktu solat';

  @override
  String get notificationsSectionTitle => 'Pemberitahuan';

  @override
  String get notificationsSectionSubtitle =>
      'Peringatan solat, acara kalendar & banyak lagi';

  @override
  String get dailyReflectionReminderTitle => 'Renungan Harian';

  @override
  String get dailyReflectionReminderDescription =>
      'Peringatan harian yang lembut untuk membuka Ayara dan menghubungkan diri dengan iman anda.';

  @override
  String get dailyReflectionReminderEnable => 'Aktifkan peringatan harian';

  @override
  String get dailyReflectionReminderTimeLabel => 'Masa peringatan';

  @override
  String get prayerNotificationsTitle => 'Peringatan Solat';

  @override
  String get prayerNotificationsDescription =>
      'Terima peringatan lembut sebelum setiap waktu solat untuk membantu anda kekal terhubung sepanjang hari.';

  @override
  String get prayerNotificationsEnable => 'Aktifkan peringatan solat';

  @override
  String get prayerNotificationsOpenSettings => 'Buka tetapan pemberitahuan';

  @override
  String get prayerNotificationsDenied => 'Pemberitahuan dimatikan';

  @override
  String get prayerNotificationsDeniedHint =>
      'Pergi ke Tetapan dan benarkan pemberitahuan untuk Ayara bagi menerima peringatan waktu solat.';

  @override
  String get notificationsConsentLabel =>
      'Benarkan pemberitahuan untuk waktu solat';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Solat Subuh';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ialah solat pagi Ahl al-Bayt. Imam Ali (AS) berkata: Jagalah solat subuh sebagaimana kamu menjaga amanahmu yang paling berharga. Bangunlah, sucikan dirimu, dan berdirilah di hadapan Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Zuhur — Solat Tengah Hari';

  @override
  String get prayerNotifBodyDhuhr =>
      'Para Imam Ahl al-Bayt sangat menghargai setiap saat zikir. Berhenti sejenak daripada urusan harian, gabungkan Zuhur dengan Asar jika perlu, dan kembalikan hati anda kepada Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asar — Solat Petang';

  @override
  String get prayerNotifBodyAsr =>
      'Peliharalah solat, kerana ia adalah perjanjian antara kamu dan Allah. Waktu Asar telah tiba — jangan biarkannya berlalu tanpa mengingati-Nya.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Solat Senja';

  @override
  String get prayerNotifBodyMaghrib =>
      'Matahari telah terbenam — satu saat yang Ahl al-Bayt muliakan untuk doa. Tunaikan Maghrib dan angkat tangan anda kepada Allah dalam doa sebelum malam bermula.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isyak — Solat Malam';

  @override
  String get prayerNotifBodyIsha =>
      'Akhiri hari anda dalam kebersamaan dengan Allah. Para Imam menggalakkan Salat al-Layl selepas Isyak — tetapi terlebih dahulu, sempurnakan Isyak anda dan tutup hari dengan mengingati-Nya.';

  @override
  String get outOfReflectionsBannerText =>
      'Anda telah menggunakan semua renungan anda';

  @override
  String get outOfReflectionsBannerCta => 'Dapatkan lagi';

  @override
  String get dhikrPageTitle => 'Zikir';

  @override
  String get dhikrTapToCount => 'Ketik bulatan untuk mengira';

  @override
  String get dhikrResetButton => 'Set semula';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Anda telah menyelesaikan 100 kali mengingati Allah. Semoga ia menjadi cahaya bagi hati anda.';

  @override
  String get disclaimerTitle => 'Tentang panduan dalam aplikasi ini';

  @override
  String get disclaimerBody =>
      'Ayara menyediakan renungan Islam, peringatan, dan kandungan rohani untuk menyokong perjalanan iman peribadi anda, berakar pada al-Quran dan ajaran Ahl al-Bayt. Kandungan ini ditawarkan untuk tujuan maklumat umum dan inspirasi sahaja.\n\nAyara tidak menggantikan keilmuan yang berkelayakan.\nPanduan dalam aplikasi ini bukan pengganti kepada sarjana Islam yang berilmu, marja\', atau guru yang terlatih dalam bidang teologi. Dalam Islam Syiah, panduan agama berakar pada mazhab Ja\'fari dalam fiqh dan tradisi mengikuti seorang Marja\' yang hidup (sumber taqlid) — seorang ahli hukum yang berkelayakan yang membimbing orang beriman dalam amalan agama. Jika anda mempunyai soalan tentang hukum agama, perkara halal dan haram, atau tanggungjawab agama peribadi, sila dapatkan nasihat daripada Marja\' yang berkelayakan atau seorang sarjana dalam komuniti anda.\n\nAplikasi ini tidak mengeluarkan hukum agama.\nAyara tidak membuat penentuan autoritatif dalam perkara fiqh atau kewajipan agama peribadi. Tiada apa-apa di sini yang patut dianggap sebagai fatwa atau arahan agama yang mengikat.\n\nKedudukan pusat Ahl al-Bayt.\nDalam Islam Syiah, Nabi Muhammad ﷺ dan keluarganya yang disucikan — Ahl al-Bayt — merupakan pembimbing autoritatif bagi umat Islam selepas al-Quran. Dua belas Imam Ahl al-Bayt ialah pentafsir ajaran Islam yang dilantik secara ilahi. Kandungan dalam aplikasi ini mencerminkan tradisi tersebut dan berusaha memuliakannya dengan setia.\n\nPeranan komuniti.\nAplikasi ini bertujuan menggalakkan keterlibatan anda dengan iman sambil menghormati secara mendalam peranan penting masjid setempat anda, pusat Islam, dan komuniti agama anda. Kami menggalakkan anda untuk terus berhubung dan belajar daripada guru-guru berkelayakan yang dekat dengan anda.';

  @override
  String get disclaimerClose => 'Saya faham';

  @override
  String get disclaimerInfoTooltip => 'Tentang panduan dalam aplikasi ini';

  @override
  String get disclaimerSettingsSubtitle =>
      'Untuk tujuan maklumat umum sahaja. Ketik untuk membaca penafian penuh.';

  @override
  String get disclaimerSectionHeader => 'Penafian panduan';

  @override
  String get navHome => 'Laman Utama';

  @override
  String get navReflect => 'Renung';

  @override
  String get navDuas => 'Doa';

  @override
  String get navCalendar => 'Kalendar';

  @override
  String get dashboardToday => 'HARI INI';

  @override
  String get dashboardComingUp => 'Akan datang';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hari',
      one: 'hari',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Akses Pantas';

  @override
  String get quickActionQibla => 'Kiblat';

  @override
  String get quickActionDhikr => 'Zikir';

  @override
  String get quickActionDailyGrace => 'Panduan';

  @override
  String get quickActionPrayerTimes => 'Waktu Solat';

  @override
  String get askAyaraTitle => 'Tanya Ayara';

  @override
  String get askAyaraSubtitle =>
      'Tanyakan apa-apa soalan Islam dan terima jawapan yang penuh pertimbangan dan membimbing.';

  @override
  String get askAyaraHint => 'contohnya Apakah kepentingan Ramadan?';

  @override
  String get askAyaraSubmit => 'Tanya';

  @override
  String get wisdomOfTheDayTitle => 'Hikmah Hari Ini';

  @override
  String get calendarScreenTitle => 'Kalendar Islam';

  @override
  String get calendarUpcomingOccasions => 'Peristiwa Akan Datang';

  @override
  String get calendarOccasionRemindersTitle => 'Peringatan Peristiwa';

  @override
  String get calendarOccasionRemindersHint =>
      'Dimaklumkan pada malam sebelum setiap peristiwa';

  @override
  String get calendarNotifPermissionDenied =>
      'Kebenaran pemberitahuan ditolak. Aktifkannya dalam tetapan peranti anda.';

  @override
  String get calendarNoEvents => 'Tiada acara akan datang ditemui.';

  @override
  String get calendarAddToPhone => 'ဖုန်းကယ်လင်ဒါထဲသို့ထည့်ပါ';

  @override
  String get calendarAddedToPhone => 'ကယ်လင်ဒါထဲသို့ထည့်ပြီး';

  @override
  String get calendarCountdownToday => 'HARI INI';

  @override
  String get calendarCountdownTomorrow => 'ESOK';

  @override
  String calendarCountdownDays(int days) {
    return 'dalam $days hari';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mac';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mei';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ogo';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dis';

  @override
  String get calendarSeasonMuharramEarly =>
      'Hari-hari Muharram — ingati Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — hari-hari dukacita dan renungan';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — empat puluh hari Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Jalan menuju Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — fajar wahyu';

  @override
  String get calendarSeasonMidShaban =>
      'Pertengahan Sha\'ban — hari kelahiran Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — bulan al-Quran';

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
  String get duasScreenTitle => 'Doa & Ziarah';

  @override
  String get duasSearchHint => 'Cari doa, ziarah…';

  @override
  String get duasFilterAll => 'Semua';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doa & ziarah',
      one: '$count doa',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Tiada doa ditemui.';

  @override
  String get duaCategoryDaily => 'Harian';

  @override
  String get duaCategoryWeekly => 'Mingguan';

  @override
  String get duaCategoryOccasions => 'Peristiwa';

  @override
  String get duaCategoryZiyarat => 'Ziarah';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Kelahiran';

  @override
  String get eventTypeMartyrdom => 'Syahid';

  @override
  String get eventTypeOccasion => 'Peristiwa';

  @override
  String get duaCopyTooltip => 'Salin terjemahan';

  @override
  String get duaToggleTransliteration => 'Transliterasi';

  @override
  String get duaToggleTranslation => 'Terjemahan';

  @override
  String get duaAskAiLabel => 'Minta Ayara jelaskan doa ini';

  @override
  String get duaAskAiLockedLabel => 'Tanya Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Penjelasan Ayara tersedia untuk ahli Wilaya. Naik taraf dalam Tetapan.';

  @override
  String duaAiComingSoon(String name) {
    return 'Tanya Ayara tentang \"$name\" — akan datang!';
  }

  @override
  String get duaCopiedToast => 'Doa disalin ke papan klip.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah Maha Besar';

  @override
  String get tasbihAlhamdulillahMeaning => 'Segala puji bagi Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Maha Suci Allah';

  @override
  String get tasbihResetTooltip => 'Set semula';

  @override
  String get tasbihCompleteTitle => 'Tasbih Selesai';

  @override
  String get tasbihCompleteMessage => 'Semoga Allah menerima zikir anda.';

  @override
  String get tasbihTapHint => 'Ketik di mana-mana untuk mengira';

  @override
  String get tasbihatScreenTitle => 'Panduan Solat';

  @override
  String get tasbihatScreenSubtitle => 'ZIKIR-ZIKIR SOLAT';

  @override
  String get tasbihatScreenDescription =>
      'Panduan lengkap tentang zikir-zikir yang dibaca semasa dan selepas solat harian — menurut tradisi Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Dibaca pada rakaat ke-3 & ke-4';

  @override
  String get tasbihatArba3Info =>
      'Dalam fiqh Syiah, Tasbiḥāt al-Arbaʿa menggantikan Surah al-Fatiha pada rakaat ke-3 dan ke-4 Zuhur, Asar, Maghrib, dan Isyak. Ia wajib dibaca sekali, dan disunatkan untuk dibaca tiga kali.';

  @override
  String get tasbihatArba3Translation =>
      'Maha Suci Allah · Segala puji bagi Allah\nTiada tuhan selain Allah · Allah Maha Besar';

  @override
  String get tasbihatArba3CompleteTitle => 'Bacaan Selesai';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Semoga solat anda diterima — Amin';

  @override
  String get tasbihatArba3TapHint => 'Ketik selepas setiap bacaan';

  @override
  String get tasbihatZahraSubtitle => 'Selepas setiap solat · 100 biji tasbih';

  @override
  String get tasbihatZahraOriginLabel => 'Asal-usul';

  @override
  String get tasbihatZahraHadith =>
      'Sayyidah Fatima al-Zahra (sa) meminta seorang pembantu daripada Nabi ﷺ. Baginda berkata: \"Mahukah aku tunjukkan sesuatu yang lebih baik? Ucapkan Subḥānallāh 33 kali, Alḥamdulillāh 33 kali, dan Allāhu Akbar 34 kali selepas setiap solat. Itu lebih baik bagimu daripada seorang pembantu.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwar, Jil. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Buka Kaunter Tasbih';

  @override
  String get tasbihatDuasTitle => 'DOA YANG DISYORKAN';

  @override
  String get tasbihatDuasSubtitle => 'Selepas anda menyelesaikan solat';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ayat al-Kursi';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Selepas setiap solat wajib';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Sesiapa yang membaca Ayat al-Kursi selepas setiap solat wajib, tiada apa yang menghalangnya daripada syurga melainkan kematian. Imam al-Baqir (a) berkata ia antara ayat terbesar dalam al-Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Selawat';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Selepas setiap solat · menutup semua doa';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Sadiq (a) — Al-Kafi';

  @override
  String get tasbihatDuaSalawatNote =>
      'Mengirim selawat ke atas Nabi ﷺ dan keluarganya yang suci (Āl Muḥammad) disunatkan untuk menutup setiap doa. Imam al-Sadiq (a) berkata: \"Setiap doa tergantung sehingga kamu berselawat ke atas Muhammad dan keluarganya.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Selepas setiap solat · untuk Imam zaman kita';

  @override
  String get tasbihatDuaFarajSource =>
      'Diajarkan oleh Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua untuk kemunculan Imam al-Mahdī (af), Imam kedua belas, yang diajarkan oleh ayahnya. Ia sering dibaca oleh banyak Muslim Syiah setelah solat sebagai tindakan pengabdian kepada Imam yang hidup.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbih Sayyidah Fāṭimah';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Selepas Maghrib & Isyak · sangat digalakkan';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Baqir (a) — Bihar al-Anwar';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Baqir (a) berkata bahawa membaca Tasbih al-Zahra selepas Isyak sebelum tidur adalah lebih baik daripada 1000 rakaat solat sunat. Cahayanya naik ke langit.';

  @override
  String get tasbihFatimaGiftPre => 'Hadiah daripada Nabi';

  @override
  String get tasbihFatimaGiftPost => 'dibaca selepas setiap solat';

  @override
  String get prayerTrackerTitle => 'PENJEJAK SOLAT';

  @override
  String get prayerTrackerPrayed => 'Sudah solat';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count hari berturut-turut';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Semua solat hari ini telah selesai. Semoga Allah menerima.';

  @override
  String get dhikrTrackerTitle => 'TASBIḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Selesai hari ini';

  @override
  String get dhikrTrackerNotDoneToday => 'Belum dibuat hari ini';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count hari berturut-turut';
  }

  @override
  String get dhikrReminderTitle => 'Peringatan Tasbih';

  @override
  String get dhikrReminderDescription =>
      'Peringatan harian yang lembut untuk membaca Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Aktifkan peringatan Tasbih';

  @override
  String get dhikrReminderTimeLabel => 'Masa peringatan';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadis Harian';

  @override
  String get hadithLabelArabic => 'ARAB';

  @override
  String get hadithLabelTranslation => 'TERJEMAHAN';

  @override
  String get hadithBadge => 'HADIS';

  @override
  String get hadithShare => 'Kongsi Hadis Ini';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nMelalui Ayara';
  }

  @override
  String get hadithNavPrevious => 'Sebelumnya';

  @override
  String get hadithNavNext => 'Seterusnya';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Empat Belas Ma\'sum';

  @override
  String get imamsScreenSubtitle =>
      'Nabi, Lady Fatima, dan Dua Belas Imam — panduan yang suci dan maksum dalam Islam Syiah Dua Belas';

  @override
  String get imamLabelBorn => 'Lahir';

  @override
  String get imamLabelMartyrdom => 'Syahid';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'KATA-KATA TERKENAL';

  @override
  String get imamRoleProphet => 'Nabi Terakhir';

  @override
  String get imamRoleInfallible => 'Yang Maksum';

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
  String get imamOrdinal8 => 'Imam Kelapan';

  @override
  String get imamOrdinal9 => 'Imam Kesembilan';

  @override
  String get imamOrdinal10 => 'Imam Kesepuluh';

  @override
  String get imamOrdinal11 => 'Imam Kesebelas';

  @override
  String get imamOrdinal12 => 'Imam Kedua Belas';

  @override
  String get duaAudioScreenTitle => 'Dengar Doa';

  @override
  String get duaAudioScreenSubtitle =>
      'Pilih doa untuk didengari. Ketik jubin untuk main atau jeda.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio untuk doa ini akan tersedia dalam kemas kini akan datang.';

  @override
  String get duaAudioClose => 'Tutup';

  @override
  String get duaAudioError =>
      'Tidak dapat memuatkan audio. Sila semak sambungan anda.';

  @override
  String get duaAudioMetaTransmittedBy => 'Diriwayatkan oleh';

  @override
  String get duaAudioMetaOccasion => 'Peristiwa';

  @override
  String get duaAudioMetaDuration => 'Tempoh';

  @override
  String get quickActionDailyHadith => 'Hadis Harian';

  @override
  String get quickAction14Masumeen => 'Empat Belas Ma\'sum';

  @override
  String get quickActionListenDuas => 'Dengar';

  @override
  String get quickActionTasbihat => 'Panduan Solat';

  @override
  String get pilgrimageSectionTitle => 'Perjalanan Suci';

  @override
  String get pilgrimageSectionSubtitle =>
      'Panduan lengkap Haji & Umrah — perjalanan ke Rumah Suci Allah di Mekah';

  @override
  String get hajjCardTitle => 'Haji';

  @override
  String get hajjCardSubtitle => 'Rukun Islam Kelima';

  @override
  String get hajjCardDescription =>
      'Ibadah tahunan agung — wajib sekali seumur hidup bagi setiap Muslim yang mampu';

  @override
  String get hajjScreenTitle => 'Panduan Haji';

  @override
  String get hajjScreenSubtitle =>
      'Panduan langkah demi langkah untuk ibadah haji agung';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Haji Kecil';

  @override
  String get umrahCardDescription =>
      'Perjalanan rohani yang sangat bernilai dan boleh dilakukan pada bila-bila masa sepanjang tahun';

  @override
  String get umrahScreenTitle => 'Panduan Umrah';

  @override
  String get umrahScreenSubtitle => 'Panduan langkah demi langkah untuk umrah';

  @override
  String get pilgrimageStepsTitle => 'Rukun & Langkah';

  @override
  String get pilgrimageImportantNotesTitle => 'Nota Penting';

  @override
  String get pilgrimageDuaTitle => 'ဤအဆင့်အတွက��ဒူအာ';

  @override
  String get pilgrimageJafariNoteTitle => 'ဂျာဖာရီဖစ်ခ်မှမှတ်စု';

  @override
  String get pilgrimageComplete => '✓ ပြီးစီး';

  @override
  String get pilgrimageMarkDone => 'ပြီးပြီဟုမှတ်သားပါ';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done မှ $total အဆင့်များ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes မိနစ်';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Jemaah Syiah';

  @override
  String get pilgrimageShiaNoteBody =>
      'Banyak peziarah Syiah juga melakukan perjalanan ke Madinah untuk ziyarat Nabi Muhammad (SAW) di Masjid al-Nabawi dan makam di Jannat al-Baqi. Kunjungan ini memiliki makna spiritual yang mendalam, meskipun mereka bukanlah ritus Haji itu sendiri.';

  @override
  String get hajjIntro =>
      'Haji adalah rukun Islam yang kelima, wajib dilakukan sekali seumur hidup bagi setiap Muslim yang mampu secara fizikal dan kewangan. Bagi kebanyakan peziarah Syiah Dua Belas hari ini, ini bermakna Haji al-Tamattu\', yang dilakukan pada bulan Dhul Hijjah mengikuti jejak Nabi Ibrahim (AS), anaknya Ismail (AS), dan Lady Hajar. Panduan ini mengikuti garis besar Ja\'fari bagi ritus, sementara ziyarat di Madinah tetap menjadi perjalanan yang sangat dihargai sebelum atau selepas Haji.';

  @override
  String get umrahIntro =>
      'Umrah ialah ziarah kecil ke Mekah dan, tidak seperti Haji, ia boleh dilakukan pada bila-bila masa sepanjang tahun. Walaupun tidak wajib, ia membawa ganjaran rohani yang besar dan dianggap sebagai ibadah yang sangat digalakkan. Ia berkongsi beberapa ritual dengan Haji tetapi lebih singkat, terdiri daripada empat amalan utama.';

  @override
  String get voiceInputTitle => 'အသံထွက်';

  @override
  String get voiceInputMicTitle => 'မိုက်ခရိုဖုန်း';

  @override
  String get voiceInputMicSubtitle =>
      'ရိုက်ထည့်ရန်အစား Ask Ayara သို့ အသံပြောပါ။';

  @override
  String get voiceInputMicDenied => 'မိုက်ခရိုဖုန်းဝင်ခွင့်ကို ပယ်ဖျက်ခဲ့သည်။';

  @override
  String get voiceInputSpeak => 'အသံပြောပါ';

  @override
  String get voiceInputListening => 'နားထောင်နေသည်…';

  @override
  String get voiceInputPermissionDenied =>
      'အသံထွက်အတွက် မိုက်ခရိုဖုန်းဝင်ခွင့်လိုအပ်သည်။';
}
