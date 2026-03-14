// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Pilih bahasa Anda';

  @override
  String get languageSelectSub => 'Anda dapat mengubahnya nanti di Pengaturan';

  @override
  String get actionContinue => 'Lanjutkan';

  @override
  String get languageSuggestedHeader => 'Disarankan';

  @override
  String get languageAllHeader => 'Semua bahasa';

  @override
  String get languageSuggestedBadge => 'Disarankan';

  @override
  String get languageSearchHint => 'Cari…';

  @override
  String get planBasic => 'Standar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Bimbingan Harian';

  @override
  String get categorySlot02 => 'Iman & Kepercayaan';

  @override
  String get categorySlot03 => 'Refleksi Salat';

  @override
  String get categorySlot04 => 'Kesabaran & Harapan';

  @override
  String get categorySlot05 => 'Mohon Ampunan';

  @override
  String get categorySlot06 => 'Rahmat & Kasih Sayang';

  @override
  String get categorySlot07 => 'Kekuatan Iman';

  @override
  String get categorySlot08 => 'Hati yang Bersyukur';

  @override
  String get categorySlot09 => 'Tujuan Hidup';

  @override
  String get categorySlot10 => 'Ikatan Keluarga';

  @override
  String get categorySlot11 => 'Ketenangan Batin';

  @override
  String get categorySlot12 => 'Hikmah Nabi';

  @override
  String get categorySlot13 => 'Akhlak Mulia';

  @override
  String get categorySlot14 => 'Lawan Godaan';

  @override
  String get categorySlot15 => 'Dzikir Malam';

  @override
  String get categoryCustom => 'Refleksi Pribadi';

  @override
  String get dhikrMeaningSubhanallah => 'Mahasuci Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Segala puji bagi Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah Mahabesar';

  @override
  String get quranVerseHeartAtRest =>
      'Ingatlah, hanya dengan mengingat Allah hati menjadi tenteram.';

  @override
  String get promptHint => 'Ketuk kategori untuk bimbingan dan refleksi Islami';

  @override
  String get currentLanguage => 'Bahasa saat ini';

  @override
  String get settingsLanguage => 'Pengaturan bahasa';

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get chooseLanguage => 'Pilih bahasa Anda';

  @override
  String get continueCta => 'Lanjutkan';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kata',
      one: '$count kata',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opsi';

  @override
  String get newCta => 'Baru';

  @override
  String get actionsTitle => 'Apa yang ingin Anda lakukan?';

  @override
  String get copy => 'Salin';

  @override
  String get share => 'Bagikan';

  @override
  String get close => 'Tutup';

  @override
  String get copiedToast => 'Disalin ke papan klip';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Tidak dapat membuat jawaban baru';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nApakah Anda ingin mencoba lagi?';
  }

  @override
  String get cancelCta => 'Batal';

  @override
  String get retryCta => 'Coba lagi';

  @override
  String get authTitle => 'Buat akun Anda';

  @override
  String get continueAsGuest => 'Lanjutkan sebagai tamu';

  @override
  String get signInGoogle => 'Masuk dengan Google';

  @override
  String get signInApple => 'Masuk dengan Apple';

  @override
  String get signInEmail => 'Masuk dengan Email';

  @override
  String get upgradeWithApple => 'Lanjutkan dengan Apple';

  @override
  String get mustAccept =>
      'Anda harus menerima Ketentuan dan mengakui Kebijakan Privasi.';

  @override
  String get termsLabel => 'Saya menerima Ketentuan Layanan';

  @override
  String get privacyLabel => 'Saya telah membaca Kebijakan Privasi';

  @override
  String get marketingOptIn => 'Saya setuju menerima berita dan penawaran';

  @override
  String get openTerms => 'Ketentuan Layanan';

  @override
  String get openPrivacy => 'Kebijakan Privasi';

  @override
  String get accountSection => 'Akun';

  @override
  String get guestMode => 'Mode tamu';

  @override
  String get signedIn => 'Sudah masuk';

  @override
  String get upgradeHint =>
      'Simpan refleksi Anda di berbagai perangkat dengan membuat akun.';

  @override
  String get upgradeWithGoogle => 'Lanjutkan dengan Google';

  @override
  String get signOut => 'Keluar';

  @override
  String get snackUpgraded => 'Akun ditingkatkan dengan Google ✅';

  @override
  String get snackSignedIn => 'Masuk dengan Google ✅';

  @override
  String get snackSignedOut => 'Keluar';

  @override
  String get snackSignedInApple => 'Masuk dengan Apple ✅';

  @override
  String get snackSignedInGoogle => 'Masuk dengan Google ✅';

  @override
  String get snackUpgradedApple => 'Akun ditingkatkan dengan Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akun ditingkatkan dengan Google ✅';

  @override
  String get historyTitle => 'Refleksi sebelumnya';

  @override
  String get historyOpenCta => 'Refleksi sebelumnya';

  @override
  String get historyEmpty => 'Belum ada refleksi yang disimpan.';

  @override
  String get historyDeleteTitle => 'Hapus refleksi?';

  @override
  String get historyDeleteBody =>
      'Ini akan menghapus item yang dipilih secara permanen.';

  @override
  String get deleteCta => 'Hapus';

  @override
  String get historyButton => 'Refleksi Sebelumnya';

  @override
  String get historyEmptyTitle => 'Belum ada refleksi';

  @override
  String get historyEmptyBody =>
      'Buat sesuatu terlebih dahulu — item yang Anda simpan akan muncul di sini.';

  @override
  String get historyDelete => 'Hapus';

  @override
  String get footerTitle => 'Dengan Wilaya, Iman, dan Sabr';

  @override
  String get footerSubtitle => 'Satu doa pada satu waktu';

  @override
  String get genericErrorSnack =>
      'Terjadi kesalahan — silakan coba lagi sebentar lagi.';

  @override
  String get upgradeAccountCta =>
      'Simpan refleksi Anda di berbagai perangkat – buat akun';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get exportData => 'Ekspor data saya';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Santai dulu 🐯\nAyara perlu waktu sejenak sebelum yang berikutnya…';

  @override
  String get rateDailyLimit =>
      'Refleksi Anda untuk saat ini sudah habis.\nDapatkan lebih banyak refleksi atau upgrade ke Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Anda telah menggunakan semua refleksi Anda.\nIsi ulang atau upgrade ke Wilaya untuk melanjutkan.';

  @override
  String get rateGraceCreditsExhausted =>
      'Refleksi Anda untuk saat ini sudah habis.\nDapatkan lebih banyak refleksi atau upgrade ke Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya membuka fitur premium, kategori masa depan, dan lencana khusus.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Refleksi Anda sedang kosong. Paket: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Tidak dapat memeriksa refleksi Anda: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Terjadi kesalahan saat memeriksa refleksi Anda.';

  @override
  String get aiFallbackGeneric =>
      'Terjadi kesalahan — silakan coba lagi sebentar lagi.';

  @override
  String get limitSectionTitle => 'Refleksi';

  @override
  String get limitTodayLabel => 'Penggunaan';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Sisa refleksi: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Paket: $plan';
  }

  @override
  String get limitLoadingLabel => 'Memuat…';

  @override
  String get limitLoadingLabelDescription =>
      'Ditampilkan pada kartu refleksi saat statistik penggunaan sedang diambil.';

  @override
  String get aiLimitTitle => 'Refleksi';

  @override
  String get aiLimitSubtitle =>
      'Setiap respons menggunakan 1 refleksi. Standar mencakup refleksi awal. Wilaya membuka kategori premium dan memungkinkan isi ulang.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total refleksi telah digunakan';
  }

  @override
  String get creditsSectionTitle => 'Refleksi';

  @override
  String get creditsUsageLabel => 'Penggunaan';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Sisa refleksi: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Paket: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Memuat…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ditampilkan saat statistik refleksi sedang diambil.';

  @override
  String get creditsTitle => 'Refleksi';

  @override
  String get creditsSubtitle =>
      'Setiap respons menggunakan 1 refleksi. Standar mencakup refleksi awal. Wilaya membuka kategori premium dan memungkinkan isi ulang.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total refleksi telah digunakan';
  }

  @override
  String get settingsDeleteTitle => 'Hapus akun';

  @override
  String get settingsDeleteDescription =>
      'Hapus akun Anda dan semua data terkait secara permanen.';

  @override
  String get settingsDeleteButtonLabel => 'Hapus akun saya';

  @override
  String get settingsDeleteDialogTitle => 'Hapus akun?';

  @override
  String get settingsDeleteDialogBody =>
      'Tindakan ini bersifat permanen dan tidak dapat dibatalkan.\n\nSemua obrolan, riwayat, dan informasi akun Anda akan dihapus.';

  @override
  String get settingsDeleteDialogCancel => 'Batal';

  @override
  String get settingsDeleteDialogConfirm => 'Hapus';

  @override
  String get settingsFreeLimitUsedTitle => 'Refleksi awal telah digunakan';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Refleksi awal untuk perangkat ini telah digunakan. Upgrade ke Wilaya atau beli lebih banyak refleksi untuk melanjutkan.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Refleksi awal telah digunakan';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Refleksi awal untuk perangkat ini telah digunakan. Upgrade ke Wilaya atau beli lebih banyak refleksi untuk melanjutkan.';

  @override
  String get deviceBoundError =>
      'Perangkat ini sudah terhubung ke akun lain. Silakan masuk dengan akun asli.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic => 'Buka pengalaman Ayara sepenuhnya.';

  @override
  String get premiumSubtitlePremium =>
      'Anda menggunakan Wilaya. Butuh lebih banyak refleksi?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Paket saat ini: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Refleksi: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Pembelian tidak tersedia saat ini.';

  @override
  String get premiumSignInToPurchase =>
      'Masuk untuk membeli refleksi atau membuka Wilaya.';

  @override
  String get premiumRestorePurchases => 'Pulihkan pembelian';

  @override
  String get premiumProcessing => 'Memproses…';

  @override
  String get premiumRestoreHintTitle =>
      'Sudah membeli Wilaya atau refleksi di perangkat ini atau perangkat lain?';

  @override
  String get premiumRestoreHintBody =>
      'Pulihkan pembelian Anda jika belum muncul.';

  @override
  String get premiumBuyCredits200 => 'Beli 200 refleksi';

  @override
  String get premiumBuyCredits400 => 'Beli 400 refleksi';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade ke mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Dengan Wilaya, Anda dapat menambah refleksi kapan pun Anda membutuhkannya.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'Kategori ini hanya tersedia untuk pengguna Wilaya. Upgrade di Pengaturan untuk membuka semua konten premium.';

  @override
  String get premiumBenefitsBasic =>
      'Buka Wilaya untuk mendapatkan refleksi tambahan, akses kategori premium, dan teruskan kapan pun Anda membutuhkan bimbingan.';

  @override
  String get premiumBenefitsPremium =>
      'Anda sedang dalam mode Wilaya. Jika mulai menipis, tambahkan refleksi ekstra dan lanjutkan tanpa gangguan.';

  @override
  String get premiumButtonBecomePremium => 'Buka Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Tambahkan 1000 refleksi';

  @override
  String get premiumBadge => 'Wilaya aktif';

  @override
  String get premiumLoadingStore => 'Memuat toko…';

  @override
  String get premiumProductNotAvailable =>
      'Produk ini belum tersedia di toko. Silakan coba lagi nanti.';

  @override
  String get premiumPurchaseError =>
      'Terjadi kesalahan pada pembelian. Silakan coba lagi.';

  @override
  String get premiumBuyCredits100 => 'Tambahkan 100 refleksi';

  @override
  String get premiumFeatureLocked => 'Buka Wilaya untuk mengakses fitur ini.';

  @override
  String get lockedCategoriesHint =>
      'Beberapa kategori hanya untuk anggota Wilaya. Bukalah untuk menjelajahi setiap refleksi dalam perjalanan Anda.';

  @override
  String get freePlanBlockedTitle =>
      'Anda telah menggunakan refleksi awal Anda';

  @override
  String get freePlanBlockedBody =>
      'Anda menggunakan paket Standar dengan refleksi awal, dan Anda telah mencapai batasnya. Untuk melanjutkan — dan membuka kategori premium — upgrade ke Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Lihat opsi Wilaya di bawah';

  @override
  String get graceBlockedTitle => 'Anda telah menggunakan refleksi awal Anda';

  @override
  String get graceBlockedBody =>
      'Anda menggunakan paket Standar dengan refleksi awal, dan Anda telah mencapai batasnya. Untuk melanjutkan — dan membuka kategori premium — upgrade ke Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Lihat opsi Wilaya di bawah';

  @override
  String get rateGuestMustSignIn =>
      'Masuk untuk menggunakan Ayara dan refleksi Anda.';

  @override
  String get guestNoCreditsTitle => 'Mode tamu';

  @override
  String get guestNoCreditsBody =>
      'Sebagai tamu Anda dapat menjelajahi aplikasi, tetapi Anda tidak dapat menggunakan refleksi. Masuk nanti di Pengaturan untuk menggunakan refleksi dan membuka pembelian.';

  @override
  String get guestDialogContinue => 'Lanjutkan';

  @override
  String get guestDialogLoginInstead => 'Masuk saja';

  @override
  String get optionalLabel => 'opsional';

  @override
  String get accountDeleteSuccessTitle => 'Akun dihapus';

  @override
  String get accountDeleteSuccessBody =>
      'Akun dan data terkait Anda telah berhasil dihapus.';

  @override
  String get accountDeleteSuccessClose => 'Tutup';

  @override
  String get accountDeleteErrorTitle => 'Tidak dapat menghapus akun';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Autentikasi ulang dibatalkan. Silakan masuk lagi dan coba hapus kembali.';

  @override
  String get accountDeleteReauthRequired =>
      'Penghapusan akun memerlukan login terbaru. Silakan keluar, masuk lagi, lalu coba kembali.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tindakan ini permanen dan tidak dapat dibatalkan. Semua data yang terkait dengan akun Anda akan dihapus.';

  @override
  String get dailyGraceTitle => 'Bimbingan Harian';

  @override
  String get dailyGraceScriptureLabel => 'AYAT HARI INI';

  @override
  String get dailyGraceSaintLabel => 'FIGUR MINGGU INI';

  @override
  String get dailyGraceReflectionLabel => 'REFLEKSI MALAM';

  @override
  String get dailyGraceCopiedToast => 'Ayat disalin ke papan klip';

  @override
  String get locationConsentLabel =>
      'Izinkan Ayara menggunakan lokasi saya untuk arah kiblat dan waktu salat';

  @override
  String get locationConsentHint =>
      'Hanya digunakan untuk fitur ini. Lokasi Anda tidak pernah dibagikan atau disimpan.';

  @override
  String get askPageTitle => 'Tanya Ayara';

  @override
  String get askPageDescription =>
      'Tanyakan apa saja tentang iman, salat, kehidupan, atau praktik Islam dan terima bimbingan yang berakar pada Al-Qur\'an dan ajaran Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Tulis pertanyaan Anda di sini…';

  @override
  String get askPageSubmitCta => 'Tanya';

  @override
  String get askPageInputEmptyError =>
      'Silakan tulis pertanyaan terlebih dahulu.';

  @override
  String get askResultYourQuestion => 'Pertanyaan Anda';

  @override
  String get guidancePageTitle => 'Kiblat';

  @override
  String get qiblaFacingMecca => 'Menghadap Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Putar ponsel Anda sampai jarum emas mengarah ke atas.\nArah itu menunjukkan Kiblat (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sinyal GPS lemah. Pindahlah ke luar ruangan dan ketuk Coba lagi.';

  @override
  String get qiblaRetry => 'Coba lagi';

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
      'Izinkan akses lokasi agar Ayara dapat menghitung arah Ka\'bah di Makkah dari lokasi Anda.';

  @override
  String get qiblaOpenSettings => 'Buka Pengaturan';

  @override
  String get qiblaCompassLoading => 'Mencari posisi Anda…';

  @override
  String get qiblaTowardMecca => 'Menuju Makkah';

  @override
  String get prayerTimesTitle => 'Waktu Salat';

  @override
  String get prayerTimesFajr => 'Subuh';

  @override
  String get prayerTimesDhuhr => 'Zuhur';

  @override
  String get prayerTimesAsr => 'Asar';

  @override
  String get prayerTimesMaghrib => 'Magrib';

  @override
  String get prayerTimesIsha => 'Isya';

  @override
  String get prayerTimesLocationNeededTitle => 'Lokasi diperlukan';

  @override
  String get prayerTimesLocationNeededBody =>
      'Izinkan akses lokasi agar Ayara dapat menghitung waktu salat yang akurat untuk kota Anda.';

  @override
  String get prayerTimesNextLabel => 'Berikutnya';

  @override
  String get prayerTimesDoneLabel => 'Selesai';

  @override
  String get monthlyPrayerTimesTitle => 'Waktu Salat Bulanan';

  @override
  String get monthlyPrayerTimesViewButton => 'Lihat Bulan Penuh';

  @override
  String get monthlyPrayerTimesNextMonth => 'Bulan berikutnya';

  @override
  String get monthlyPrayerTimesDayHeader => 'Hari';

  @override
  String get sharePrayerTimes => 'Bagikan waktu salat';

  @override
  String get notificationsSectionTitle => 'Notifikasi';

  @override
  String get notificationsSectionSubtitle =>
      'Pengingat salat, acara kalender & lainnya';

  @override
  String get dailyReflectionReminderTitle => 'Refleksi Harian';

  @override
  String get dailyReflectionReminderDescription =>
      'Pengingat harian yang lembut untuk membuka Ayara dan terhubung dengan iman Anda.';

  @override
  String get dailyReflectionReminderEnable => 'Aktifkan pengingat harian';

  @override
  String get dailyReflectionReminderTimeLabel => 'Waktu pengingat';

  @override
  String get prayerNotificationsTitle => 'Pengingat Salat';

  @override
  String get prayerNotificationsDescription =>
      'Terima pengingat lembut sebelum setiap waktu salat untuk membantu Anda tetap terhubung sepanjang hari.';

  @override
  String get prayerNotificationsEnable => 'Aktifkan pengingat salat';

  @override
  String get prayerNotificationsOpenSettings => 'Buka pengaturan notifikasi';

  @override
  String get prayerNotificationsDenied => 'Notifikasi dinonaktifkan';

  @override
  String get prayerNotificationsDeniedHint =>
      'Buka Pengaturan dan izinkan notifikasi untuk Ayara agar menerima pengingat waktu salat.';

  @override
  String get notificationsConsentLabel =>
      'Izinkan notifikasi untuk waktu salat';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Salat Fajar';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr adalah salat pagi Ahl al-Bayt. Imam Ali (AS) berkata: Jagalah salat fajar sebagaimana engkau menjaga amanahmu yang paling berharga. Bangunlah, sucikan dirimu, dan berdirilah di hadapan Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Salat Zuhur';

  @override
  String get prayerNotifBodyDhuhr =>
      'Para Imam Ahl al-Bayt menghargai setiap momen zikir. Hentikan sejenak harimu, gabungkan Zuhur dengan Asar jika perlu, dan kembalikan hatimu kepada Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Salat Asar';

  @override
  String get prayerNotifBodyAsr =>
      'Jagalah salat, karena ia adalah perjanjian antara engkau dan Allah. Waktu Asar telah tiba — jangan biarkan ia berlalu tanpa zikir.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Salat Magrib';

  @override
  String get prayerNotifBodyMaghrib =>
      'Matahari telah terbenam — saat yang disucikan Ahl al-Bayt untuk berdoa. Tunaikan Magrib dan angkat tanganmu kepada Allah dalam doa sebelum malam dimulai.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Salat Isya';

  @override
  String get prayerNotifBodyIsha =>
      'Akhiri harimu dalam kebersamaan dengan Allah. Para Imam menganjurkan Salat al-Layl setelah Isya — tetapi terlebih dahulu, tunaikan salat Isya dan tutuplah harimu dengan mengingat-Nya.';

  @override
  String get outOfReflectionsBannerText =>
      'Anda telah menggunakan semua refleksi Anda';

  @override
  String get outOfReflectionsBannerCta => 'Dapatkan lebih banyak';

  @override
  String get dhikrPageTitle => 'Dzikir';

  @override
  String get dhikrTapToCount => 'Ketuk lingkaran untuk menghitung';

  @override
  String get dhikrResetButton => 'Atur ulang';

  @override
  String get dhikrComplete => 'Masya Allah';

  @override
  String get dhikrCompleteMessage =>
      'Anda telah menyelesaikan 100 zikir kepada Allah. Semoga itu menjadi cahaya bagi hati Anda.';

  @override
  String get disclaimerTitle => 'Tentang panduan aplikasi ini';

  @override
  String get disclaimerBody =>
      'Ayara menyediakan refleksi Islami, pengingat, dan konten spiritual untuk mendukung perjalanan iman pribadi Anda, yang berakar pada Al-Qur\'an dan ajaran Ahl al-Bayt. Konten ini disediakan hanya untuk tujuan informasi umum dan inspirasi.\n\nAyara tidak menggantikan keilmuan yang mumpuni.\nPanduan dalam aplikasi ini bukan pengganti ulama Islam yang berilmu, marja\', atau guru yang terlatih secara teologis. Dalam Islam Syiah, panduan agama berakar pada mazhab Ja\'fari dalam fikih dan tradisi mengikuti Marja\' yang hidup (sumber keteladanan) — seorang ahli hukum yang mumpuni yang fatwanya membimbing kaum mukmin dalam praktik agama. Jika Anda memiliki pertanyaan tentang hukum agama, perkara halal dan haram, atau kewajiban agama pribadi, silakan meminta nasihat dari Marja\' yang mumpuni atau seorang ulama di komunitas Anda.\n\nAplikasi ini tidak mengeluarkan hukum agama.\nAyara tidak membuat penetapan otoritatif dalam perkara fikih atau kewajiban agama pribadi. Tidak ada apa pun di sini yang boleh diperlakukan sebagai fatwa atau instruksi agama yang mengikat.\n\nSentralitas Ahl al-Bayt.\nDalam Islam Syiah, Nabi Muhammad ﷺ dan keluarga sucinya — Ahl al-Bayt — adalah para pembimbing otoritatif umat Islam setelah Al-Qur\'an. Dua belas Imam Ahl al-Bayt adalah para penafsir ajaran Islam yang ditunjuk secara ilahi. Konten dalam aplikasi ini mencerminkan tradisi ini dan berupaya memuliakannya dengan setia.\n\nPerkara komunitas.\nAplikasi ini bertujuan mendorong keterlibatan Anda dengan iman sambil sangat menghormati peran penting masjid setempat, pusat Islam, dan komunitas keagamaan Anda. Kami mendorong Anda untuk tetap terhubung dengan dan belajar dari para guru yang mumpuni di sekitar Anda.';

  @override
  String get disclaimerClose => 'Saya mengerti';

  @override
  String get disclaimerInfoTooltip => 'Tentang panduan aplikasi ini';

  @override
  String get disclaimerSettingsSubtitle =>
      'Hanya untuk tujuan informasi umum. Ketuk untuk membaca penafian lengkap.';

  @override
  String get disclaimerSectionHeader => 'Penafian panduan';

  @override
  String get navHome => 'Beranda';

  @override
  String get navReflect => 'Refleksi';

  @override
  String get navDuas => 'Doa';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'HARI INI';

  @override
  String get dashboardComingUp => 'Segera datang';

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
  String get dashboardQuickAccess => 'Akses Cepat';

  @override
  String get quickActionQibla => 'Kiblat';

  @override
  String get quickActionDhikr => 'Dzikir';

  @override
  String get quickActionDailyGrace => 'Bimbingan';

  @override
  String get quickActionPrayerTimes => 'Waktu Salat';

  @override
  String get askAyaraTitle => 'Tanya Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ajukan pertanyaan Islami apa pun dan terima jawaban yang bijaksana dan membimbing.';

  @override
  String get askAyaraHint => 'mis. Apa makna Ramadan?';

  @override
  String get askAyaraSubmit => 'Tanya';

  @override
  String get wisdomOfTheDayTitle => 'Hikmah Hari Ini';

  @override
  String get calendarScreenTitle => 'Kalender Islam';

  @override
  String get calendarUpcomingOccasions => 'Peristiwa Mendatang';

  @override
  String get calendarOccasionRemindersTitle => 'Pengingat Peristiwa';

  @override
  String get calendarOccasionRemindersHint =>
      'Diberi tahu pada malam sebelum setiap peristiwa';

  @override
  String get calendarNotifPermissionDenied =>
      'Izin notifikasi ditolak. Aktifkan di pengaturan perangkat Anda.';

  @override
  String get calendarNoEvents => 'Tidak ada acara mendatang ditemukan.';

  @override
  String get calendarAddToPhone => 'Tambahkan ke Kalender Telepon';

  @override
  String get calendarAddedToPhone => 'Ditambahkan ke Kalender';

  @override
  String get calendarCountdownToday => 'HARI INI';

  @override
  String get calendarCountdownTomorrow => 'BESOK';

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
      'Hari-hari Muharram — ingat Karbala';

  @override
  String get calendarSeasonAshura => 'Asyura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — hari-hari duka dan refleksi';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — empat puluh hari Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Jalan menuju Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — fajar wahyu';

  @override
  String get calendarSeasonMidShaban =>
      'Pertengahan Sya\'ban — hari kelahiran Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — bulan Al-Qur\'an';

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
  String get hijriMonth8 => 'Sya\'ban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Syawal';

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
  String get duasEmpty => 'Tidak ada doa ditemukan.';

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
  String get eventTypeMartyrdom => 'Syahadah';

  @override
  String get eventTypeOccasion => 'Peristiwa';

  @override
  String get duaCopyTooltip => 'Salin terjemahan';

  @override
  String get duaToggleTransliteration => 'Transliterasi';

  @override
  String get duaToggleTranslation => 'Terjemahan';

  @override
  String get duaAskAiLabel => 'Minta Ayara menjelaskan doa ini';

  @override
  String get duaAskAiLockedLabel => 'Tanya Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Penjelasan Ayara tersedia untuk anggota Wilaya. Upgrade di Pengaturan.';

  @override
  String duaAiComingSoon(String name) {
    return 'Tanya Ayara tentang \"$name\" — segera hadir!';
  }

  @override
  String get duaCopiedToast => 'Doa disalin ke papan klip.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah Mahabesar';

  @override
  String get tasbihAlhamdulillahMeaning => 'Segala puji bagi Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Mahasuci Allah';

  @override
  String get tasbihResetTooltip => 'Atur ulang';

  @override
  String get tasbihCompleteTitle => 'Tasbih Selesai';

  @override
  String get tasbihCompleteMessage => 'Semoga Allah menerima dzikir Anda.';

  @override
  String get tasbihTapHint => 'Ketuk di mana saja untuk menghitung';

  @override
  String get tasbihatScreenTitle => 'Panduan Salat';

  @override
  String get tasbihatScreenSubtitle => 'BACAAN TASBIH SALAT';

  @override
  String get tasbihatScreenDescription =>
      'Panduan lengkap bacaan tasbih yang dibaca selama dan setelah salat harian — mengikuti tradisi Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Dibaca pada rakaat ke-3 & ke-4';

  @override
  String get tasbihatArba3Info =>
      'Dalam fikih Syiah, Tasbiḥāt al-Arbaʿa menggantikan Surah al-Fatiha pada rakaat ke-3 dan ke-4 salat Zuhur, Asar, Magrib, dan Isya. Wajib (wājib) membacanya sekali, dan dianjurkan (mustaḥabb) membacanya tiga kali.';

  @override
  String get tasbihatArba3Translation =>
      'Mahasuci Allah · Segala puji bagi Allah\nTiada tuhan selain Allah · Allah Mahabesar';

  @override
  String get tasbihatArba3CompleteTitle => 'Bacaan Selesai';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Semoga salat Anda diterima — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Ketuk setelah setiap bacaan';

  @override
  String get tasbihatZahraSubtitle => 'Setelah setiap salat · 100 butir';

  @override
  String get tasbihatZahraOriginLabel => 'Asal-usul';

  @override
  String get tasbihatZahraHadith =>
      'Sayidah Fatima al-Zahra (sa) meminta seorang pembantu kepada Nabi ﷺ. Beliau bersabda: \"Maukah aku tunjukkan sesuatu yang lebih baik? Bacalah Subḥānallāh 33 kali, Alḥamdulillāh 33 kali, dan Allāhu Akbar 34 kali setelah setiap salat. Itu lebih baik bagimu daripada seorang pembantu.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Jil. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Buka Penghitung Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DOA-DOA YANG DIANJURKAN';

  @override
  String get tasbihatDuasSubtitle => 'Setelah menyelesaikan salat Anda';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Setelah setiap salat wajib';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Barang siapa membaca Āyat al-Kursī setelah setiap salat wajib, tidak ada yang menghalanginya dari surga kecuali kematian. Imam al-Bāqir (a) berkata bahwa itu termasuk ayat-ayat terbesar dalam Al-Qur\'an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Setelah setiap salat · menyempurnakan semua doa';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Mengirim salam kepada Nabi ﷺ dan keluarganya yang suci (Āl Muḥammad) dianjurkan untuk menyempurnakan setiap doa. Imam al-Ṣādiq (a) berkata: \"Setiap doa tertahan sampai engkau mengirim ṣalawāt kepada Muḥammad dan keluarganya.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Setelah setiap salat · untuk Imam zaman kita';

  @override
  String get tasbihatDuaFarajSource =>
      'Diajarkan oleh Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Sebuah doa untuk kemunculan kembali Imam al-Mahdī (af), Imam kedua belas, yang diajarkan oleh ayahnya. Doa ini sering dibaca oleh banyak Muslim Syiah setelah shalat sebagai bentuk pengabdian kepada Imam yang hidup.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Sayidah Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Setelah Magrib & Isya · sangat dianjurkan';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) berkata bahwa membaca Tasbīḥ al-Zahrā setelah Isya sebelum tidur lebih baik daripada 1000 rakaat salat sunah. Cahayanya naik ke langit.';

  @override
  String get tasbihFatimaGiftPre => 'Hadiah dari Nabi';

  @override
  String get tasbihFatimaGiftPost => 'dibaca setelah setiap salat';

  @override
  String get prayerTrackerTitle => 'PELACAK SALAT';

  @override
  String get prayerTrackerPrayed => 'Sudah salat';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count hari berturut-turut';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Semua salat selesai hari ini. Semoga Allah menerima.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Selesai hari ini';

  @override
  String get dhikrTrackerNotDoneToday => 'Belum dilakukan hari ini';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count hari berturut-turut';
  }

  @override
  String get dhikrReminderTitle => 'Pengingat Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Pengingat harian yang lembut untuk membaca Tasbīḥ al-Zahrā (SA) Anda.';

  @override
  String get dhikrReminderEnable => 'Aktifkan pengingat Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Waktu pengingat';

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
  String get hadithShare => 'Bagikan Hadis Ini';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Sebelumnya';

  @override
  String get hadithNavNext => 'Berikutnya';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Empat Belas Ma\'sum';

  @override
  String get imamsScreenSubtitle =>
      'Nabi, Sayyidah Fatimah, dan Dua Belas Imam — para pembimbing yang suci dan maksum dalam Islam Syiah Dua Belas';

  @override
  String get imamLabelBorn => 'Lahir';

  @override
  String get imamLabelMartyrdom => 'Syahadah';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'UCAPAN TERKENAL';

  @override
  String get imamRoleProphet => 'Nabi Terakhir';

  @override
  String get imamRoleInfallible => 'Yang Maksum';

  @override
  String get imamOrdinal1 => 'Imam ke-1';

  @override
  String get imamOrdinal2 => 'Imam ke-2';

  @override
  String get imamOrdinal3 => 'Imam ke-3';

  @override
  String get imamOrdinal4 => 'Imam ke-4';

  @override
  String get imamOrdinal5 => 'Imam ke-5';

  @override
  String get imamOrdinal6 => 'Imam ke-6';

  @override
  String get imamOrdinal7 => 'Imam ke-7';

  @override
  String get imamOrdinal8 => 'Imam ke-8';

  @override
  String get imamOrdinal9 => 'Imam ke-9';

  @override
  String get imamOrdinal10 => 'Imam ke-10';

  @override
  String get imamOrdinal11 => 'Imam ke-11';

  @override
  String get imamOrdinal12 => 'Imam ke-12';

  @override
  String get duaAudioScreenTitle => 'Dengarkan Doa';

  @override
  String get duaAudioScreenSubtitle =>
      'Pilih doa untuk didengarkan. Ketuk ubin untuk memutar atau menjeda.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio untuk doa ini akan tersedia pada pembaruan mendatang.';

  @override
  String get duaAudioClose => 'Tutup';

  @override
  String get duaAudioError =>
      'Tidak dapat memuat audio. Silakan periksa koneksi Anda.';

  @override
  String get duaAudioMetaTransmittedBy => 'Diriwayatkan oleh';

  @override
  String get duaAudioMetaOccasion => 'Peristiwa';

  @override
  String get duaAudioMetaDuration => 'Durasi';

  @override
  String get quickActionDailyHadith => 'Hadis Harian';

  @override
  String get quickAction14Masumeen => 'Empat Belas Ma\'sum';

  @override
  String get quickActionListenDuas => 'Dengarkan';

  @override
  String get quickActionTasbihat => 'Panduan Salat';

  @override
  String get pilgrimageSectionTitle => 'Perjalanan Suci';

  @override
  String get pilgrimageSectionSubtitle =>
      'Panduan lengkap Haji & Umrah — ziarah ke Baitullah di Mekkah';

  @override
  String get hajjCardTitle => 'Haji';

  @override
  String get hajjCardSubtitle => 'Rukun Islam Kelima';

  @override
  String get hajjCardDescription =>
      'Ibadah haji tahunan yang agung — wajib sekali seumur hidup bagi setiap Muslim yang mampu';

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
      'Perjalanan spiritual yang sangat bernilai dan dapat dilakukan kapan saja sepanjang tahun';

  @override
  String get umrahScreenTitle => 'Panduan Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Panduan langkah demi langkah untuk ibadah umrah';

  @override
  String get pilgrimageStepsTitle => 'Ritual & Langkah';

  @override
  String get pilgrimageImportantNotesTitle => 'Catatan Penting';

  @override
  String get pilgrimageDuaTitle => 'Dua untuk langkah ini';

  @override
  String get pilgrimageJafariNoteTitle => 'Catatan Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Lengkap';

  @override
  String get pilgrimageMarkDone => 'Tandai sebagai selesai';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done dari $total langkah';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes menit';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Jemaah Syiah';

  @override
  String get pilgrimageShiaNoteBody =>
      'Banyak peziarah Syiah juga melakukan perjalanan ke Madinah untuk ziyarat Nabi Muhammad (SAW) di Masjid al-Nabawi dan makam di Jannat al-Baqi. Kunjungan ini memiliki makna spiritual yang dalam, meskipun bukan merupakan ritus Haji itu sendiri.';

  @override
  String get hajjIntro =>
      'Haji adalah rukun Islam yang kelima, wajib dilakukan sekali seumur hidup bagi setiap Muslim yang mampu secara fisik dan finansial. Bagi sebagian besar peziarah Syiah Dua Belas saat ini, ini berarti Haji al-Tamattu\', yang dilaksanakan pada bulan Dhul Hijjah mengikuti jejak Nabi Ibrahim (AS), putranya Ismail (AS), dan Sayyidah Hajar. Panduan ini mengikuti garis besar ritus Ja\'fari, sementara ziyarat di Madinah tetap menjadi perjalanan yang sangat dihargai sebelum atau setelah Haji.';

  @override
  String get umrahIntro =>
      'Umrah adalah ziarah kecil ke Mekkah dan, tidak seperti Haji, dapat dilakukan kapan saja sepanjang tahun. Meskipun tidak wajib, ia membawa pahala spiritual yang sangat besar dan dianggap sebagai ibadah yang sangat dianjurkan. Ia berbagi beberapa ritual dengan Haji tetapi lebih singkat, terdiri dari empat ritual utama.';

  @override
  String get voiceInputTitle => 'Input Suara';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Ucapkan input Anda untuk Ask Ayara alih-alih mengetik.';

  @override
  String get voiceInputMicDenied => 'Akses mikrofon ditolak.';

  @override
  String get voiceInputSpeak => 'Ucapkan sebagai ganti';

  @override
  String get voiceInputListening => 'Mendengarkan…';

  @override
  String get voiceInputPermissionDenied =>
      'Akses mikrofon diperlukan untuk input suara.';
}
