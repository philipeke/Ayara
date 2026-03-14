// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

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
  String get categorySlot04 => 'Kesabaran Harapan';

  @override
  String get categorySlot05 => 'Mohon Keampunan';

  @override
  String get categorySlot06 => 'Belas Kasihan Ihsan';

  @override
  String get categorySlot07 => 'Keimanan Kekuatan';

  @override
  String get categorySlot08 => 'Hati yang Bersyukur';

  @override
  String get categorySlot09 => 'Tujuan Hidup';

  @override
  String get categorySlot10 => 'Ikatan Keluarga';

  @override
  String get categorySlot11 => 'Kedamaian Batin';

  @override
  String get categorySlot12 => 'Kebijaksanaan Nabi';

  @override
  String get categorySlot13 => 'Akhlak Mulia';

  @override
  String get categorySlot14 => 'Menolak Godaan';

  @override
  String get categorySlot15 => 'Dhikr Malam';

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
      'Sesungguhnya dalam mengingati Allah, hati menjadi tenang.';

  @override
  String get promptHint =>
      'Ketik kategori untuk mendapatkan panduan dan renungan Islam';

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
  String get regenerateErrorTitle => 'Tidak dapat menjana jawapan baharu';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nAdakah anda ingin mencuba lagi?';
  }

  @override
  String get cancelCta => 'Batal';

  @override
  String get retryCta => 'Cuba lagi';

  @override
  String get authTitle => 'Buat akaun anda';

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
      'Anda mesti menerima Syarat dan mengakui Dasar Privasi.';

  @override
  String get termsLabel => 'Saya menerima Syarat Perkhidmatan';

  @override
  String get privacyLabel => 'Saya telah membaca Dasar Privasi';

  @override
  String get marketingOptIn => 'Saya bersetuju menerima berita dan tawaran';

  @override
  String get openTerms => 'Syarat Perkhidmatan';

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
      'Simpan renungan anda di seluruh peranti dengan membuat akaun.';

  @override
  String get upgradeWithGoogle => 'Teruskan dengan Google';

  @override
  String get signOut => 'Log keluar';

  @override
  String get snackUpgraded => 'Akaun ditingkatkan dengan Google ✅';

  @override
  String get snackSignedIn => 'Log masuk dengan Google ✅';

  @override
  String get snackSignedOut => 'Telah log keluar';

  @override
  String get snackSignedInApple => 'Log masuk dengan Apple ✅';

  @override
  String get snackSignedInGoogle => 'Log masuk dengan Google ✅';

  @override
  String get snackUpgradedApple => 'Akaun ditingkatkan dengan Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akaun ditingkatkan dengan Google ✅';

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
      'Ini akan menghapus item yang dipilih secara kekal.';

  @override
  String get deleteCta => 'Padam';

  @override
  String get historyButton => 'Renungan Terdahulu';

  @override
  String get historyEmptyTitle => 'Belum ada renungan';

  @override
  String get historyEmptyBody =>
      'Janakan sesuatu terlebih dahulu — item yang disimpan anda akan muncul di sini.';

  @override
  String get historyDelete => 'Padam';

  @override
  String get footerTitle => 'Dengan Wilaya, Iman dan Sabr';

  @override
  String get footerSubtitle => 'Satu solat pada satu masa';

  @override
  String get genericErrorSnack =>
      'Ada yang tidak kena — sila cuba lagi dalam satu saat.';

  @override
  String get upgradeAccountCta =>
      'Simpan renungan anda di seluruh peranti – buat akaun';

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
      'Perlahan-lahan 🐯\nAyara memerlukan saat sebelum yang seterusnya…';

  @override
  String get rateDailyLimit =>
      'Anda kehabisan renungan buat sekarang.\nDapatkan renungan lagi atau tingkatkan ke Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Anda telah menggunakan semua renungan anda.\nIsi semula atau tingkatkan ke Wilaya untuk terus.';

  @override
  String get rateGraceCreditsExhausted =>
      'Anda kehabisan renungan buat sekarang.\nDapatkan renungan lagi atau tingkatkan ke Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya membuka fitur premium, kategori masa depan, dan lencana khas.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Renungan anda kosong sekarang. Pelan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Tidak dapat menyemak renungan anda: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ada yang tidak kena semasa menyemak renungan anda.';

  @override
  String get aiFallbackGeneric =>
      'Ada yang tidak kena — sila cuba lagi dalam satu saat.';

  @override
  String get limitSectionTitle => 'Renungan';

  @override
  String get limitTodayLabel => 'Penggunaan';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Renungan baki: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Pelan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Memuatkan…';

  @override
  String get limitLoadingLabelDescription =>
      'Ditunjukkan dalam kad renungan semasa statistik penggunaan sedang diambil.';

  @override
  String get aiLimitTitle => 'Renungan';

  @override
  String get aiLimitSubtitle =>
      'Setiap respons menggunakan 1 renungan. Standard termasuk renungan permulaan. Wilaya membuka kategori premium dan membolehkan isi semula.';

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
    return 'Renungan baki: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Pelan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Memuatkan…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ditunjukkan semasa statistik renungan sedang diambil.';

  @override
  String get creditsTitle => 'Renungan';

  @override
  String get creditsSubtitle =>
      'Setiap respons menggunakan 1 renungan. Standard termasuk renungan permulaan. Wilaya membuka kategori premium dan membolehkan isi semula.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total renungan digunakan';
  }

  @override
  String get settingsDeleteTitle => 'Padam akaun';

  @override
  String get settingsDeleteDescription =>
      'Padam akaun anda dan semua data berkaitan secara kekal.';

  @override
  String get settingsDeleteButtonLabel => 'Padam akaun saya';

  @override
  String get settingsDeleteDialogTitle => 'Padam akaun?';

  @override
  String get settingsDeleteDialogBody =>
      'Tindakan ini adalah kekal dan tidak dapat dibuat alik.\n\nSemua sembang, sejarah dan maklumat akaun anda akan dipadamkan.';

  @override
  String get settingsDeleteDialogCancel => 'Batal';

  @override
  String get settingsDeleteDialogConfirm => 'Padam';

  @override
  String get settingsFreeLimitUsedTitle => 'Renungan permulaan digunakan';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Renungan permulaan untuk peranti ini telah digunakan. Tingkatkan ke Wilaya atau beli renungan lagi untuk terus.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Renungan permulaan digunakan';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Renungan permulaan untuk peranti ini telah digunakan. Tingkatkan ke Wilaya atau beli renungan lagi untuk terus.';

  @override
  String get deviceBoundError =>
      'Peranti ini sudah terikat pada akaun lain. Sila log masuk dengan akaun asal.';

  @override
  String get premiumTitle => 'Mod Wilaya';

  @override
  String get premiumSubtitleBasic => 'Buka pengalaman Ayara penuh.';

  @override
  String get premiumSubtitlePremium =>
      'Anda menggunakan Wilaya. Memerlukan renungan lagi?';

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
      'Pembelian tidak tersedia sekarang.';

  @override
  String get premiumSignInToPurchase =>
      'Log masuk untuk membeli renungan atau buka Wilaya.';

  @override
  String get premiumRestorePurchases => 'Pulihkan pembelian';

  @override
  String get premiumProcessing => 'Memproses…';

  @override
  String get premiumRestoreHintTitle =>
      'Sudah membeli Wilaya atau renungan di peranti ini atau yang lain?';

  @override
  String get premiumRestoreHintBody =>
      'Pulihkan pembelian anda jika tidak dipaparkan.';

  @override
  String get premiumBuyCredits200 => 'Beli 200 renungan';

  @override
  String get premiumBuyCredits400 => 'Beli 400 renungan';

  @override
  String get premiumBecomePremiumOneTime => 'Tingkatkan ke mod Wilaya';

  @override
  String get premiumTopupHint =>
      'Dengan Wilaya, anda boleh isi semula dengan renungan tambahan apabila diperlukan.';

  @override
  String get premiumUpgradeCta => 'Tingkatkan';

  @override
  String get premiumRequiredForCategory =>
      'Kategori ini hanya tersedia untuk pengguna Wilaya. Tingkatkan dalam Tetapan untuk membuka semua kandungan premium.';

  @override
  String get premiumBenefitsBasic =>
      'Buka Wilaya untuk mendapatkan renungan tambahan, akses kategori premium, dan terus apabila memerlukan panduan.';

  @override
  String get premiumBenefitsPremium =>
      'Anda dalam mod Wilaya. Jika berkurangan, tambah renungan tambahan dan terus tanpa gangguan.';

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
      'Produk ini belum tersedia dalam kedai. Sila cuba lagi kemudian.';

  @override
  String get premiumPurchaseError =>
      'Ada yang tidak kena dengan pembelian. Sila cuba lagi.';

  @override
  String get premiumBuyCredits100 => 'Tambah 100 renungan';

  @override
  String get premiumFeatureLocked => 'Buka Wilaya untuk mengakses fitur ini.';

  @override
  String get lockedCategoriesHint =>
      'Sesetengah kategori dikhaskan untuk ahli Wilaya. Bukanya untuk meneroka setiap renungan dalam perjalanan anda.';

  @override
  String get freePlanBlockedTitle => 'Anda telah kehabisan renungan permulaan';

  @override
  String get freePlanBlockedBody =>
      'Anda berada dalam pelan Standard dengan renungan permulaan, dan anda telah mencapai had. Untuk terus — dan buka kategori premium — tingkatkan ke Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Lihat pilihan Wilaya di bawah';

  @override
  String get graceBlockedTitle => 'Anda telah kehabisan renungan permulaan';

  @override
  String get graceBlockedBody =>
      'Anda berada dalam pelan Standard dengan renungan permulaan, dan anda telah mencapai had. Untuk terus — dan buka kategori premium — tingkatkan ke Wilaya.';

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
  String get accountDeleteSuccessTitle => 'Akaun dipadamkan';

  @override
  String get accountDeleteSuccessBody =>
      'Akaun anda dan data berkaitan telah dipadamkan dengan jayanya.';

  @override
  String get accountDeleteSuccessClose => 'Tutup';

  @override
  String get accountDeleteErrorTitle => 'Tidak dapat memadamkan akaun';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Pengesahan semula dibatalkan. Sila log masuk lagi dan cuba padaman lagi.';

  @override
  String get accountDeleteReauthRequired =>
      'Pemadaman akaun memerlukan log masuk yang terkini. Sila log keluar, log masuk lagi, dan cuba padaman lagi.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tindakan ini adalah kekal dan tidak dapat dibuat alik. Semua data yang berkaitan dengan akaun anda akan dipadamkan.';

  @override
  String get dailyGraceTitle => 'Panduan Harian';

  @override
  String get dailyGraceScriptureLabel => 'AYAT HARI INI';

  @override
  String get dailyGraceSaintLabel => 'SARJANA MINGGU INI';

  @override
  String get dailyGraceReflectionLabel => 'RENUNGAN MALAM';

  @override
  String get dailyGraceCopiedToast => 'Ayat disalin ke papan klip';

  @override
  String get locationConsentLabel =>
      'Benarkan Ayara menggunakan lokasi saya untuk arah Qibla dan waktu solat';

  @override
  String get locationConsentHint =>
      'Digunakan hanya untuk fitur ini. Lokasi anda tidak pernah dikongsi atau disimpan.';

  @override
  String get askPageTitle => 'Tanya Ayara';

  @override
  String get askPageDescription =>
      'Tanya apa sahaja tentang keimanan, solat, kehidupan, atau amalan Islam dan terima panduan berakar dalam Quran dan ajaran Ahli al-Bayt.';

  @override
  String get askPageInputHint => 'Taip soalan anda di sini…';

  @override
  String get askPageSubmitCta => 'Tanya';

  @override
  String get askPageInputEmptyError => 'Sila tulis soalan terlebih dahulu.';

  @override
  String get askResultYourQuestion => 'Soalan anda';

  @override
  String get guidancePageTitle => 'Kiblat';

  @override
  String get qiblaFacingMecca => 'Menghadap ke Mekah';

  @override
  String get qiblaCompassInstruction =>
      'Putar telefon anda sehingga jarum emas menunjuk ke atas.\nArah itu menunjuk ke Kiblat (Mekah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Isyarat GPS lemah. Keluar dan ketik Cuba Lagi.';

  @override
  String get qiblaRetry => 'Cuba lagi';

  @override
  String get qiblaTitle => 'Arah Kiblat';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km ke Mekah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokasi diperlukan';

  @override
  String get qiblaLocationNeededBody =>
      'Benarkan akses lokasi supaya Ayara dapat mengira arah Kaabah di Mekah dari mana sahaja anda berada.';

  @override
  String get qiblaOpenSettings => 'Buka Tetapan';

  @override
  String get qiblaCompassLoading => 'Mencari kedudukan anda…';

  @override
  String get qiblaTowardMecca => 'Ke arah Mekah';

  @override
  String get prayerTimesTitle => 'Waktu Solat';

  @override
  String get prayerTimesFajr => 'Fajar';

  @override
  String get prayerTimesDhuhr => 'Zohor';

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
  String get monthlyPrayerTimesViewButton => 'Lihat Bulan Penuh';

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
      'Peringatan solat, acara kalendar & lagi';

  @override
  String get dailyReflectionReminderTitle => 'Renungan Harian';

  @override
  String get dailyReflectionReminderDescription =>
      'Peringatan harian yang lembut untuk membuka Ayara dan berhubung dengan keimanan anda.';

  @override
  String get dailyReflectionReminderEnable => 'Benarkan peringatan harian';

  @override
  String get dailyReflectionReminderTimeLabel => 'Waktu peringatan';

  @override
  String get prayerNotificationsTitle => 'Peringatan Solat';

  @override
  String get prayerNotificationsDescription =>
      'Terima peringatan lembut sebelum setiap waktu solat untuk membantu anda tetap berhubung sepanjang hari.';

  @override
  String get prayerNotificationsEnable => 'Benarkan peringatan solat';

  @override
  String get prayerNotificationsOpenSettings => 'Buka tetapan pemberitahuan';

  @override
  String get prayerNotificationsDenied => 'Pemberitahuan dilumpuhkan';

  @override
  String get prayerNotificationsDeniedHint =>
      'Pergi ke Tetapan dan benarkan pemberitahuan untuk Ayara untuk menerima peringatan waktu solat.';

  @override
  String get notificationsConsentLabel =>
      'Benarkan pemberitahuan untuk waktu solat';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajar — Solat Subuh';

  @override
  String get prayerNotifBodyFajr =>
      'Fajar adalah solat pagi Ahli al-Bayt. Imam Ali (AS) berkata: Jaga solat subuh seperti anda menjaga amanah paling berharga. Bangun, bersihkan diri, dan berdiri di hadapan Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Zohor — Solat Tengah Hari';

  @override
  String get prayerNotifBodyDhuhr =>
      'Para Imam Ahli al-Bayt menghargai setiap saat mengingati. Hentikan hari anda, gabungkan Zohor dengan Asar jika diperlukan, dan kembalikan hati anda kepada Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asar — Solat Petang';

  @override
  String get prayerNotifBodyAsr =>
      'Jaga solat, kerana ia adalah perjanjian antara anda dan Allah. Waktu Asar telah tiba — jangan biarkannya berlalu tanpa mengingati.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Solat Senja';

  @override
  String get prayerNotifBodyMaghrib =>
      'Matahari telah terbenam — saat yang Ahli al-Bayt anggap suci untuk doa. Tawarkan Maghrib dan buka tangan anda kepada Allah dalam dua sebelum malam bermula.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isyak — Solat Malam';

  @override
  String get prayerNotifBodyIsha =>
      'Tamatkan hari anda dalam pertemuan dengan Allah. Para Imam menggalakkan Salat al-Layl selepas Isyak — tetapi pertama-tama, selesaikan Isyak anda dan tutup hari dengan pengingat-Nya.';

  @override
  String get outOfReflectionsBannerText =>
      'Anda telah menggunakan semua renungan anda';

  @override
  String get outOfReflectionsBannerCta => 'Dapatkan lagi';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Ketik bulatan untuk mengira';

  @override
  String get dhikrResetButton => 'Tetapkan semula';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Anda telah melengkapkan 100 pengingatan Allah. Semoga mereka menjadi cahaya untuk hati anda.';

  @override
  String get disclaimerTitle => 'Tentang panduan aplikasi ini';

  @override
  String get disclaimerBody =>
      'Ayara menyediakan renungan Islam, peringatan, dan kandungan spiritual untuk menyokong perjalanan keimanan peribadi anda, berakar dalam Quran dan ajaran Ahli al-Bayt. Kandungan ini ditawarkan untuk tujuan maklumat umum dan inspirasi sahaja.\n\nAyara tidak menggantikan sarjana yang layak.\nPanduan dalam aplikasi ini bukan pengganti kepada sarjana Islam yang belajar, marja\', atau guru yang terlatih secara teologi. Dalam Islam Syiah, panduan agama berakar dalam sekolah yurisprudensi Ja\'fari (fiqh) dan tradisi mengikuti Marja\' hidup (sumber emulasi) — seorang jurist yang layak yang hukum-hukumnya memandu pengikut dalam amalan agama. Jika anda mempunyai pertanyaan tentang hukum agama, perkara halal dan haram, atau kewajipan agama peribadi, sila minta nasihat daripada Marja\' yang layak atau seorang sarjana di komuniti anda.\n\nAplikasi ini tidak mengeluarkan hukum agama.\nAyara tidak membuat penentuan berwibawa tentang perkara fiqh atau kewajipan agama peribadi. Tiada di sini yang sepatutnya dianggap sebagai fatwa atau arahan agama yang mengikat.\n\nKeagungan Ahli al-Bayt.\nDalam Islam Syiah, Nabi Muhammad ﷺ dan rumah tansuhinya yang disucikan — Ahli al-Bayt — adalah pemandu berwibawa komuniti Islam selepas Quran. Dua belas Imam Ahli al-Bayt adalah pentafsir agama yang dilantik secara ilahi. Kandungan dalam aplikasi ini mencerminkan tradisi ini dan berusaha menghormatinya dengan setia.\n\nPerkara komuniti.\nAplikasi ini bertujuan untuk menggalakkan keterlibatan anda dengan keimanan sambil menghormati peranan penting masjid tempatan anda, pusat Islam, dan komuniti agama. Kami menggalakkan anda untuk tetap berhubung dengan dan belajar daripada guru yang layak berhampiran anda.';

  @override
  String get disclaimerClose => 'Saya memahami';

  @override
  String get disclaimerInfoTooltip => 'Tentang panduan aplikasi ini';

  @override
  String get disclaimerSettingsSubtitle =>
      'Untuk tujuan maklumat umum sahaja. Ketik untuk membaca penafian penuh.';

  @override
  String get disclaimerSectionHeader => 'Penafian panduan';

  @override
  String get navHome => 'Rumah';

  @override
  String get navReflect => 'Renungan';

  @override
  String get navDuas => 'Dua-dua';

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
  String get dashboardQuickAccess => 'Akses Cepat';

  @override
  String get quickActionQibla => 'Kiblat';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Panduan';

  @override
  String get quickActionPrayerTimes => 'Waktu Solat';

  @override
  String get askAyaraTitle => 'Tanya Ayara';

  @override
  String get askAyaraSubtitle =>
      'Tanya mana-mana soalan Islam dan terima jawapan yang bijaksana dan berpandu.';

  @override
  String get askAyaraHint => 'contohnya. Apakah kepentingan Ramadan?';

  @override
  String get askAyaraSubmit => 'Tanya';

  @override
  String get wisdomOfTheDayTitle => 'Kebijaksanaan Hari Ini';

  @override
  String get calendarScreenTitle => 'Kalendar Islam';

  @override
  String get calendarUpcomingOccasions => 'Acara akan datang';

  @override
  String get calendarOccasionRemindersTitle => 'Peringatan Acara';

  @override
  String get calendarOccasionRemindersHint =>
      'Dimaklumkan pada malam sebelum setiap acara';

  @override
  String get calendarNotifPermissionDenied =>
      'Kebenaran pemberitahuan ditolak. Dayakan dalam tetapan peranti anda.';

  @override
  String get calendarNoEvents => 'Tiada acara akan datang dijumpai.';

  @override
  String get calendarAddToPhone => 'Tambah ke Kalendar Telefon';

  @override
  String get calendarAddedToPhone => 'Ditambah ke Kalendar';

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
  String get calendarMonthAug => 'Ags';

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
      'Muharram — hari-hari berkabung dan renungan';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — empat puluh hari Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Jalan menuju Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — fajar wahyu';

  @override
  String get calendarSeasonMidShaban =>
      'Pertengahan Sha\'ban — hari lahir Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — bulan Quran';

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
  String get duasScreenTitle => 'Dua-dua & Ziarah';

  @override
  String get duasSearchHint => 'Cari dua-dua, ziarah…';

  @override
  String get duasFilterAll => 'Semua';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua-dua & ziarah',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Tiada dua-dua dijumpai.';

  @override
  String get duaCategoryDaily => 'Harian';

  @override
  String get duaCategoryWeekly => 'Mingguan';

  @override
  String get duaCategoryOccasions => 'Acara';

  @override
  String get duaCategoryZiyarat => 'Ziarah';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Kelahiran';

  @override
  String get eventTypeMartyrdom => 'Syahid';

  @override
  String get eventTypeOccasion => 'Acara';

  @override
  String get duaCopyTooltip => 'Salin terjemahan';

  @override
  String get duaToggleTransliteration => 'Transliterasi';

  @override
  String get duaToggleTranslation => 'Terjemahan';

  @override
  String get duaAskAiLabel => 'Tanya Ayara untuk menerangkan dua ini';

  @override
  String get duaAskAiLockedLabel => 'Tanya Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Penjelasan Ayara tersedia untuk ahli Wilaya. Tingkatkan dalam Tetapan.';

  @override
  String duaAiComingSoon(String name) {
    return 'Tanya Ayara tentang \"$name\" — akan datang!';
  }

  @override
  String get duaCopiedToast => 'Dua disalin ke papan klip.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah Maha Besar';

  @override
  String get tasbihAlhamdulillahMeaning => 'Segala puji kepada Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Maha Suci Allah';

  @override
  String get tasbihResetTooltip => 'Tetapkan semula';

  @override
  String get tasbihCompleteTitle => 'Tasbih Selesai';

  @override
  String get tasbihCompleteMessage => 'Semoga Allah menerima dhikr anda.';

  @override
  String get tasbihTapHint => 'Ketik di mana sahaja untuk mengira';

  @override
  String get tasbihatScreenTitle => 'Panduan Solat';

  @override
  String get tasbihatScreenSubtitle => 'PENGAGUNG-AGUNG SOLAT';

  @override
  String get tasbihatScreenDescription =>
      'Panduan lengkap tentang pengagung-agung yang dibacakan semasa dan selepas solat harian — mengikuti tradisi Ahli al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Dibacakan semasa rakʿah ke-3 & ke-4';

  @override
  String get tasbihatArba3Info =>
      'Dalam yurisprudensi Syiah, Tasbiḥāt al-Arbaʿa menggantikan Surah al-Fatiha dalam rakʿah ke-3 dan ke-4 Zohor, Asar, Maghrib, dan Isyak. Adalah wajib (wājib) membacanya sekali, dan disyorkan (mustaḥabb) membacanya tiga kali.';

  @override
  String get tasbihatArba3Translation =>
      'Maha Suci Allah · Segala puji kepada Allah\nTiada tuhan selain Allah · Allah Maha Besar';

  @override
  String get tasbihatArba3CompleteTitle => 'Pembacaan Selesai';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Semoga solat anda diterima — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Ketik selepas setiap pembacaan';

  @override
  String get tasbihatZahraSubtitle => 'Selepas setiap solat · 100 manik';

  @override
  String get tasbihatZahraOriginLabel => 'Asal';

  @override
  String get tasbihatZahraHadith =>
      'Bibi Fatima al-Zahra (sa) meminta pelayan daripada Nabi ﷺ. Dia berkata: \"Bukankah saya membimbing anda kepada sesuatu yang lebih baik? Bacakan Subḥānallāh 33 kali, Alḥamdulillāh 33 kali, dan Allāhu Akbar 34 kali selepas setiap solat. Itu lebih baik untuk anda daripada pelayan.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Jilid 85';

  @override
  String get tasbihatZahraOpenCounter => 'Buka Kaunter Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUA-DUA YANG DISYORKAN';

  @override
  String get tasbihatDuasSubtitle => 'Selepas melengkapkan solat anda';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Selepas setiap solat wajib';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Sesiapa yang membacakan Āyat al-Kursī selepas setiap solat wajib, tiada apa-apa yang menghalangi dia dan syurga kecuali kematian. Imam al-Bāqir (a) berkata ia antara ayat-ayat terbesar dalam Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Selepas setiap solat · meterai semua dua-dua';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Menghantar selawat kepada Nabi ﷺ dan keluarga tansuhinya yang disucikan (Āl Muḥammad) disyorkan untuk meterai setiap dua. Imam al-Ṣādiq (a) berkata: \"Mana-mana dua tertahankan sehingga anda menghantar selawat kepada Muḥammad dan keluarganya.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Selepas setiap solat · untuk Imam zaman kita';

  @override
  String get tasbihatDuaFarajSource =>
      'Diajar oleh Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua untuk penampilan semula Imam al-Mahdī (af), Imam Keduabelas, diajar oleh bapanya. Dibacakan setiap hari oleh pengikut Syiah selepas setiap solat sebagai tindakan dedikasi kepada Imam yang hidup.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Bibi Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Selepas Maghrib & Isyak · disyorkan khususnya';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) berkata bahawa membacakan Tasbīḥ al-Zahrā selepas Isyak sebelum tidur lebih baik daripada 1000 rakʿahs solat pilihan. Cahayanya naik ke langit.';

  @override
  String get tasbihFatimaGiftPre => 'Hadiah daripada Nabi';

  @override
  String get tasbihFatimaGiftPost => 'dibacakan selepas setiap solat';

  @override
  String get prayerTrackerTitle => 'PENJEJAK SOLAT';

  @override
  String get prayerTrackerPrayed => 'Solat';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Jujukan $count hari';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Semua solat dilengkapkan hari ini. Semoga Allah menerima.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Dilengkapkan hari ini';

  @override
  String get dhikrTrackerNotDoneToday => 'Belum dilakukan hari ini';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Jujukan $count hari';
  }

  @override
  String get dhikrReminderTitle => 'Peringatan Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Peringatan harian yang lembut untuk membacakan Tasbīḥ al-Zahrā (SA) anda.';

  @override
  String get dhikrReminderEnable => 'Benarkan peringatan Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Waktu peringatan';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Harian';

  @override
  String get hadithLabelArabic => 'ARAB';

  @override
  String get hadithLabelTranslation => 'TERJEMAHAN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Kongsi Hadith Ini';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
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
  String get imamsScreenTitle => '14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'Nabi, Bibi Fatima, dan Dua Belas Imam — pemandu Islam yang tidak bersalah';

  @override
  String get imamLabelBorn => 'Dilahirkan';

  @override
  String get imamLabelMartyrdom => 'Syahid';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'Nabi Akhir';

  @override
  String get imamRoleInfallible => 'Yang Tidak Bersalah';

  @override
  String get imamOrdinal1 => 'Imam Ke-1';

  @override
  String get imamOrdinal2 => 'Imam Ke-2';

  @override
  String get imamOrdinal3 => 'Imam Ke-3';

  @override
  String get imamOrdinal4 => 'Imam Ke-4';

  @override
  String get imamOrdinal5 => 'Imam Ke-5';

  @override
  String get imamOrdinal6 => 'Imam Ke-6';

  @override
  String get imamOrdinal7 => 'Imam Ke-7';

  @override
  String get imamOrdinal8 => 'Imam Ke-8';

  @override
  String get imamOrdinal9 => 'Imam Ke-9';

  @override
  String get imamOrdinal10 => 'Imam Ke-10';

  @override
  String get imamOrdinal11 => 'Imam Ke-11';

  @override
  String get imamOrdinal12 => 'Imam Ke-12';

  @override
  String get duaAudioScreenTitle => 'Dengar Dua-dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Pilih dua untuk mendengarkan. Ketik jubin untuk main atau jeda.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio untuk dua ini akan tersedia dalam kemas kini yang akan datang.';

  @override
  String get duaAudioClose => 'Tutup';

  @override
  String get duaAudioError =>
      'Tidak dapat memuatkan audio. Sila semak sambungan anda.';

  @override
  String get duaAudioMetaTransmittedBy => 'Disampaikan oleh';

  @override
  String get duaAudioMetaOccasion => 'Acara';

  @override
  String get duaAudioMetaDuration => 'Tempoh';

  @override
  String get quickActionDailyHadith => 'Hadith Harian';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Dengar';

  @override
  String get quickActionTasbihat => 'Panduan Solat';

  @override
  String get pilgrimageSectionTitle => 'Perjalanan Suci';

  @override
  String get pilgrimageSectionSubtitle =>
      'Panduan lengkap Hajj & Umrah — peramalan ke Rumah Suci Allah di Mekah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Rukun Islam Kelima';

  @override
  String get hajjCardDescription =>
      'Peramalan tahunan besar — wajib sekali seumur hidup bagi setiap Muslim yang mampu';

  @override
  String get hajjScreenTitle => 'Panduan Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Panduan langkah demi langkah untuk peramalan besar';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Peramalan Kecil';

  @override
  String get umrahCardDescription =>
      'Perjalanan spiritual yang sangat menguntungkan yang boleh dilakukan pada bila-bila masa dalam setahun';

  @override
  String get umrahScreenTitle => 'Panduan Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Panduan langkah demi langkah untuk peramalan kecil';

  @override
  String get pilgrimageStepsTitle => 'Ritual & Langkah-langkah';

  @override
  String get pilgrimageImportantNotesTitle => 'Nota Penting';

  @override
  String get pilgrimageDuaTitle => 'Dua untuk langkah ini';

  @override
  String get pilgrimageJafariNoteTitle => 'Catatan Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Lengkap';

  @override
  String get pilgrimageMarkDone => 'Tandakan sebagai lengkap';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done dari $total langkah';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes minit';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peziarah Syiah';

  @override
  String get pilgrimageShiaNoteBody =>
      'Peziarah Syiah secara tradisional juga melancong ke Madinah untuk mengunjungi makam Nabi Muhammad (SAW) di Masjid al-Nabawi, dan kubur Para Imam di Jannat al-Baqi. Lawatan ini membawa kepentingan spiritual yang besar dan dianggap sebagai bahagian integral perjalanan bagi kebanyakan Muslim Syiah.';

  @override
  String get hajjIntro =>
      'Hajj adalah rukun Islam kelima, wajib sekali seumur hidup bagi setiap Muslim yang mampu dari segi fizikal dan kewangan. Dilakukan dalam bulan Dhul Hijjah, ia menjejaki jejak kaki Nabi Ibrahim (AS), anaknya Ismail (AS), dan Bibi Hajar. Bagi Muslim Syiah, Hajj juga termasuk berkah mendalam mengunjungi tempat istirahat Nabi (SAW) dan Ahlul Bayt di Madinah.';

  @override
  String get umrahIntro =>
      'Umrah adalah peramalan kecil ke Mekah dan, tidak seperti Hajj, boleh dilakukan pada bila-bila masa dalam tahun. Walaupun tidak wajib, ia membawa ganjaran spiritual yang besar dan dianggap sebagai tindakan ibadah yang sangat disyorkan. Ia berkongsi beberapa ritual dengan Hajj tetapi lebih singkat, terdiri daripada empat ritual utama.';
}
