// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Minangkabau (`min`).
class AppLocalizationsMin extends AppLocalizations {
  AppLocalizationsMin([String locale = 'min']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Pilih baso ang';

  @override
  String get languageSelectSub => 'Ang bisa mangganti ko ko di Pengaturan';

  @override
  String get actionContinue => 'Lanjutkan';

  @override
  String get languageSuggestedHeader => 'Disarankan';

  @override
  String get languageAllHeader => 'Sado baso';

  @override
  String get languageSuggestedBadge => 'Disarankan';

  @override
  String get languageSearchHint => 'Cari…';

  @override
  String get planBasic => 'Standar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Panduan Harian';

  @override
  String get categorySlot02 => 'Iman jo Kepercayoan';

  @override
  String get categorySlot03 => 'Renungan Salat';

  @override
  String get categorySlot04 => 'Sabar jo Harapan';

  @override
  String get categorySlot05 => 'Mohon Ampunan';

  @override
  String get categorySlot06 => 'Rahmat jo Kasih Sayang';

  @override
  String get categorySlot07 => 'Kakuaan Iman';

  @override
  String get categorySlot08 => 'Hati nan Basikua';

  @override
  String get categorySlot09 => 'Tujuan Hidup';

  @override
  String get categorySlot10 => 'Ikatan Kaluarga';

  @override
  String get categorySlot11 => 'Katenangan Batin';

  @override
  String get categorySlot12 => 'Hikmah Nabi';

  @override
  String get categorySlot13 => 'Akhlak nan Baik';

  @override
  String get categorySlot14 => 'Lawan Godaan';

  @override
  String get categorySlot15 => 'Dzikir Patang';

  @override
  String get categoryCustom => 'Renungan Pribadi';

  @override
  String get dhikrMeaningSubhanallah => 'Mahasuci Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Sagala puji bagi Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah Maha Gadang';

  @override
  String get quranVerseHeartAtRest =>
      'Sasungguahnyo, jo mangingek Allah, hati manjadi tantaram.';

  @override
  String get promptHint => 'Ketuk kategori untuak panduan Islam jo renungan';

  @override
  String get currentLanguage => 'Baso kini';

  @override
  String get settingsLanguage => 'Pengaturan baso';

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get chooseLanguage => 'Pilih baso ang';

  @override
  String get continueCta => 'Lanjutkan';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kato',
      one: '$count kato',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Pilihan';

  @override
  String get newCta => 'Baru';

  @override
  String get actionsTitle => 'Apo nan ingin ang lakukakan?';

  @override
  String get copy => 'Salin';

  @override
  String get share => 'Bagikan';

  @override
  String get close => 'Tutup';

  @override
  String get copiedToast => 'Disalin ka clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Indak bisa mambuek jawaban baru';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nApo ang ingin mancubo lai?';
  }

  @override
  String get cancelCta => 'Batal';

  @override
  String get retryCta => 'Cubo lai';

  @override
  String get authTitle => 'Buek akun ang';

  @override
  String get continueAsGuest => 'Lanjut sabagai tamu';

  @override
  String get signInGoogle => 'Masuak jo Google';

  @override
  String get signInApple => 'Masuak jo Apple';

  @override
  String get signInEmail => 'Masuak jo Email';

  @override
  String get upgradeWithApple => 'Lanjut jo Apple';

  @override
  String get mustAccept =>
      'Ang harus manarimo Syarat jo mangakuai Kebijakan Privasi.';

  @override
  String get termsLabel => 'Ambo manarimo Syarat Layanan';

  @override
  String get privacyLabel => 'Ambo lah mambaco Kebijakan Privasi';

  @override
  String get marketingOptIn => 'Ambo satuju manarimo kaba jo tawaran';

  @override
  String get openTerms => 'Syarat Layanan';

  @override
  String get openPrivacy => 'Kebijakan Privasi';

  @override
  String get accountSection => 'Akun';

  @override
  String get guestMode => 'Mode tamu';

  @override
  String get signedIn => 'Lah masuak';

  @override
  String get upgradeHint =>
      'Simpan renungan ang di sagalo perangkat jo mambuek akun.';

  @override
  String get upgradeWithGoogle => 'Lanjut jo Google';

  @override
  String get signOut => 'Kalua';

  @override
  String get snackUpgraded => 'Akun ditingkatkan jo Google ✅';

  @override
  String get snackSignedIn => 'Masuak jo Google ✅';

  @override
  String get snackSignedOut => 'Kalua';

  @override
  String get snackSignedInApple => 'Masuak jo Apple ✅';

  @override
  String get snackSignedInGoogle => 'Masuak jo Google ✅';

  @override
  String get snackUpgradedApple => 'Akun ditingkatkan jo Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akun ditingkatkan jo Google ✅';

  @override
  String get historyTitle => 'Renungan sabalunyo';

  @override
  String get historyOpenCta => 'Renungan sabalunyo';

  @override
  String get historyEmpty => 'Balun ado renungan nan disimpan.';

  @override
  String get historyDeleteTitle => 'Hapuih renungan?';

  @override
  String get historyDeleteBody =>
      'Ko akan manghapuih item nan dipilih sacaro permanen.';

  @override
  String get deleteCta => 'Hapuih';

  @override
  String get historyButton => 'Renungan Sabalunyo';

  @override
  String get historyEmptyTitle => 'Balun ado renungan';

  @override
  String get historyEmptyBody =>
      'Buek dulu sasuatu — item nan disimpan akan muncul di siko.';

  @override
  String get historyDelete => 'Hapuih';

  @override
  String get footerTitle => 'Jo Wilaya, Iman jo Sabr';

  @override
  String get footerSubtitle => 'Satu doa satiok kalinyo';

  @override
  String get genericErrorSnack => 'Ado nan salah — cubo lai sabanta lai.';

  @override
  String get upgradeAccountCta =>
      'Simpan renungan ang di sagalo perangkat – buek akun';

  @override
  String get deleteAccount => 'Hapuih akun';

  @override
  String get exportData => 'Ekspor data ambo';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Santai ciek 🐯\nAyara paralu sabanta sabalun nan salanjutnyo…';

  @override
  String get rateDailyLimit =>
      'Renungan ang lah habih untuak kini.\nDapekkan labiah banyak renungan atau naikkan ka Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Ang lah manggunakan sado renungan ang.\nTop up atau naikkan ka Wilaya untuak lanjut.';

  @override
  String get rateGraceCreditsExhausted =>
      'Renungan ang lah habih untuak kini.\nDapekkan labiah banyak renungan atau naikkan ka Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya mambukak fitur premium, kategori maso dapan, jo lencana istimewa.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Renungan ang kosong kini. Paket: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Indak bisa maricek renungan ang: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ado nan salah saat maricek renungan ang.';

  @override
  String get aiFallbackGeneric => 'Ado nan salah — cubo lai sabanta lai.';

  @override
  String get limitSectionTitle => 'Renungan';

  @override
  String get limitTodayLabel => 'Pamakai';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Sisa renungan: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Paket: $plan';
  }

  @override
  String get limitLoadingLabel => 'Lagi dimuat…';

  @override
  String get limitLoadingLabelDescription =>
      'Ditampilkan di kartu renungan waktu statistik pamakai diambiak.';

  @override
  String get aiLimitTitle => 'Renungan';

  @override
  String get aiLimitSubtitle =>
      'Satiok jawaban manghabiskan 1 renungan. Standar mamuat renungan awal. Wilaya mambukak kategori premium jo mambuek top-up bisa.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total renungan lah dipakai';
  }

  @override
  String get creditsSectionTitle => 'Renungan';

  @override
  String get creditsUsageLabel => 'Pamakai';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Sisa renungan: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Paket: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Lagi dimuat…';

  @override
  String get creditsLoadingLabelDescription =>
      'Ditampilkan salamo statistik renungan lagi diambiak.';

  @override
  String get creditsTitle => 'Renungan';

  @override
  String get creditsSubtitle =>
      'Satiok jawaban manghabiskan 1 renungan. Standar mamuat renungan awal. Wilaya mambukak kategori premium jo mambuek top-up bisa.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total renungan lah dipakai';
  }

  @override
  String get settingsDeleteTitle => 'Hapuih akun';

  @override
  String get settingsDeleteDescription =>
      'Hapuih akun ang jo sado data nan bakaitan sacaro permanen.';

  @override
  String get settingsDeleteButtonLabel => 'Hapuih akun ambo';

  @override
  String get settingsDeleteDialogTitle => 'Hapuih akun?';

  @override
  String get settingsDeleteDialogBody =>
      'Tindakan ko permanen jo indak bisa dibalekan.\n\nSado chat, riwayat, jo informasi akun ang akan dihapuih.';

  @override
  String get settingsDeleteDialogCancel => 'Batal';

  @override
  String get settingsDeleteDialogConfirm => 'Hapuih';

  @override
  String get settingsFreeLimitUsedTitle => 'Renungan awal lah dipakai';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Renungan awal untuak perangkat ko lah dipakai. Naikkan ka Wilaya atau bali labiah banyak renungan untuak lanjut.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Renungan awal lah dipakai';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Renungan awal untuak perangkat ko lah dipakai. Naikkan ka Wilaya atau bali labiah banyak renungan untuak lanjut.';

  @override
  String get deviceBoundError =>
      'Perangkat ko lah taikek jo akun lain. Tolong masuak jo akun asli.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic => 'Bukak pangalaman Ayara nan lengkek.';

  @override
  String get premiumSubtitlePremium =>
      'Ang ado di Wilaya. Butuah labiah banyak renungan?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Paket kini: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Renungan: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Pambalian indak tasadio kini.';

  @override
  String get premiumSignInToPurchase =>
      'Masuak untuak bali renungan atau mambukak Wilaya.';

  @override
  String get premiumRestorePurchases => 'Pulihkan pambalian';

  @override
  String get premiumProcessing => 'Lagi diproses…';

  @override
  String get premiumRestoreHintTitle =>
      'Lah prnah mambali Wilaya atau renungan di perangkat ko atau nan lain?';

  @override
  String get premiumRestoreHintBody =>
      'Pulihkan pambalian ang kalu indak kalihatan.';

  @override
  String get premiumBuyCredits200 => 'Bali 200 renungan';

  @override
  String get premiumBuyCredits400 => 'Bali 400 renungan';

  @override
  String get premiumBecomePremiumOneTime => 'Naikkan ka mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Jo Wilaya, ang bisa top up jo renungan tambahan kapan sajo ang butuah.';

  @override
  String get premiumUpgradeCta => 'Naikkan';

  @override
  String get premiumRequiredForCategory =>
      'Kategori ko hanyo tasadio untuak pangguna Wilaya. Naikkan di Pengaturan untuak mambukak sado konten premium.';

  @override
  String get premiumBenefitsBasic =>
      'Bukak Wilaya untuak mandapek renungan tambahan, akses kategori premium, jo lanjut kapan sajo ang butuah panduan.';

  @override
  String get premiumBenefitsPremium =>
      'Ang kini ado di mode Wilaya. Kalu hampia habih, tambahkan renungan tambahan jo lanjut tanpa gangguan.';

  @override
  String get premiumButtonBecomePremium => 'Bukak Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Tambahkan 1000 renungan';

  @override
  String get premiumBadge => 'Wilaya aktif';

  @override
  String get premiumLoadingStore => 'Lagi mamuat toko…';

  @override
  String get premiumProductNotAvailable =>
      'Produk ko balun tasadio di toko. Cubo lai nanti.';

  @override
  String get premiumPurchaseError => 'Ado nan salah jo pambalian. Cubo lai.';

  @override
  String get premiumBuyCredits100 => 'Tambahkan 100 renungan';

  @override
  String get premiumFeatureLocked => 'Bukak Wilaya untuak mangaksih fitur ko.';

  @override
  String get lockedCategoriesHint =>
      'Sabagian kategori dikhusuihkan untuak anggota Wilaya. Bukak untuak manjajahi satiok renungan dalam parjalanan ang.';

  @override
  String get freePlanBlockedTitle => 'Ang lah mangabihkan renungan awal ang';

  @override
  String get freePlanBlockedBody =>
      'Ang ado di paket Standar jo renungan awal, jo ang lah sampai ka batasnyo. Untuak lanjut — jo mambukak kategori premium — naikkan ka Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Lihat pilihan Wilaya di bawah';

  @override
  String get graceBlockedTitle => 'Ang lah mangabihkan renungan awal ang';

  @override
  String get graceBlockedBody =>
      'Ang ado di paket Standar jo renungan awal, jo ang lah sampai ka batasnyo. Untuak lanjut — jo mambukak kategori premium — naikkan ka Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Lihat pilihan Wilaya di bawah';

  @override
  String get rateGuestMustSignIn =>
      'Masuak untuak mamakai Ayara jo renungan ang.';

  @override
  String get guestNoCreditsTitle => 'Mode tamu';

  @override
  String get guestNoCreditsBody =>
      'Sabagai tamu ang bisa manjalajah aplikasi, tapi ang indak bisa mamakai renungan. Masuak nanti di Pengaturan untuak mamakai renungan jo mambukak pambalian.';

  @override
  String get guestDialogContinue => 'Lanjutkan';

  @override
  String get guestDialogLoginInstead => 'Masuak sajo';

  @override
  String get optionalLabel => 'opsional';

  @override
  String get accountDeleteSuccessTitle => 'Akun dihapuih';

  @override
  String get accountDeleteSuccessBody =>
      'Akun ang jo data nan bakaitan lah barhasil dihapuih.';

  @override
  String get accountDeleteSuccessClose => 'Tutup';

  @override
  String get accountDeleteErrorTitle => 'Indak bisa manghapuih akun';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Otentikasi ulang dibatalkan. Tolong masuak baliak jo cubo hapuih lai.';

  @override
  String get accountDeleteReauthRequired =>
      'Panghapuihan akun paralu login nan masih baru. Tolong kalua, masuak baliak, lalu cubo hapuih lai.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tindakan ko permanen jo indak bisa dibalekan. Sado data nan bakaitan jo akun ang akan dihapuih.';

  @override
  String get dailyGraceTitle => 'Panduan Harian';

  @override
  String get dailyGraceScriptureLabel => 'AYAT HARI KO';

  @override
  String get dailyGraceSaintLabel => 'ULAMA MINGGU KO';

  @override
  String get dailyGraceReflectionLabel => 'RENUNGAN PATANG';

  @override
  String get dailyGraceCopiedToast => 'Ayat disalin ka clipboard';

  @override
  String get locationConsentLabel =>
      'Izinkan Ayara mamakai lokasi ambo untuak arah Kiblat jo waktu salat';

  @override
  String get locationConsentHint =>
      'Dipakai hanyo untuak fitur iko. Lokasi ang indak pernah dibagikan atau disimpan.';

  @override
  String get askPageTitle => 'Tanyo ka Ayara';

  @override
  String get askPageDescription =>
      'Tanyokan apo sajo tantang iman, salat, kehidupan, atau amalan Islam dan tarimo panduan nan basumber dari Al-Quran jo ajaran Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Ketik patanyaan ang di siko…';

  @override
  String get askPageSubmitCta => 'Tanyo';

  @override
  String get askPageInputEmptyError => 'Tolong tulih patanyaan dulu.';

  @override
  String get askResultYourQuestion => 'Patanyaan ang';

  @override
  String get guidancePageTitle => 'Kiblat';

  @override
  String get qiblaFacingMecca => 'Menghadap Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Putar telepon ang sampai jarum ameh mancocok ka ateh.\nArah tu nan manunjuak ka Kiblat (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sinyal GPS lamah. Pindah ka lua ruangan lalu ketuk Cobo Lai.';

  @override
  String get qiblaRetry => 'Cobo lai';

  @override
  String get qiblaTitle => 'Arah Kiblat';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km ka Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokasi diparluakan';

  @override
  String get qiblaLocationNeededBody =>
      'Izinkan akses lokasi supayo Ayara bisa manghitung arah Ka\'bah di Makkah dari mano sajo ang barado.';

  @override
  String get qiblaOpenSettings => 'Buka Pengaturan';

  @override
  String get qiblaCompassLoading => 'Lagi mancari posisi ang…';

  @override
  String get qiblaTowardMecca => 'Ka arah Makkah';

  @override
  String get prayerTimesTitle => 'Waktu Salat';

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
  String get prayerTimesLocationNeededTitle => 'Lokasi diparluakan';

  @override
  String get prayerTimesLocationNeededBody =>
      'Izinkan akses lokasi supayo Ayara bisa manghitung waktu salat nan akurat untuak kota ang.';

  @override
  String get prayerTimesNextLabel => 'Salanjutnyo';

  @override
  String get prayerTimesDoneLabel => 'Sasai';

  @override
  String get monthlyPrayerTimesTitle => 'Waktu Salat Bulanan';

  @override
  String get monthlyPrayerTimesViewButton => 'Lihat Sabulan Panuah';

  @override
  String get monthlyPrayerTimesNextMonth => 'Bulan salanjutnyo';

  @override
  String get monthlyPrayerTimesDayHeader => 'Hari';

  @override
  String get sharePrayerTimes => 'Bagikan waktu salat';

  @override
  String get notificationsSectionTitle => 'Notifikasi';

  @override
  String get notificationsSectionSubtitle =>
      'Pengingat salat, acara kalender, jo lainnyo';

  @override
  String get dailyReflectionReminderTitle => 'Renungan Harian';

  @override
  String get dailyReflectionReminderDescription =>
      'Pengingat haluih satiok hari untuak mambuka Ayara jo manyambuang jo iman ang.';

  @override
  String get dailyReflectionReminderEnable => 'Aktifkan pengingat harian';

  @override
  String get dailyReflectionReminderTimeLabel => 'Waktu pengingat';

  @override
  String get prayerNotificationsTitle => 'Pengingat Salat';

  @override
  String get prayerNotificationsDescription =>
      'Tarimo pengingat haluih sabalun satiok waktu salat supayo ang tatap tasambuang salanjang hari.';

  @override
  String get prayerNotificationsEnable => 'Aktifkan pengingat salat';

  @override
  String get prayerNotificationsOpenSettings => 'Buka pengaturan notifikasi';

  @override
  String get prayerNotificationsDenied => 'Notifikasi dinonaktifkan';

  @override
  String get prayerNotificationsDeniedHint =>
      'Buka Pengaturan jo izinkan notifikasi untuak Ayara supayo tarimo pengingat waktu salat.';

  @override
  String get notificationsConsentLabel =>
      'Izinkan notifikasi untuak waktu salat';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Salat Subuah';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr adolah salat pagi Ahl al-Bayt. Imam Ali (AS) bakato: Jagolah salat fajar sabagaimano ang manjago amanah nan paliang barago. Bangkiklah, barsuci lah, lalu tagaklah di hadapan Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Salat Tangah Hari';

  @override
  String get prayerNotifBodyDhuhr =>
      'Para Imam Ahl al-Bayt sangat mamuliokan satiok momen dzikir. Bantikan sajenak hari ang, gabungkan Dhuhr jo Asr kalu paralu, lalu baliakkan hati ang ka Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Salat Sore';

  @override
  String get prayerNotifBodyAsr =>
      'Jagolah salat, karano itulah parjanjian antaro ang jo Allah. Waktu Asr lah tibo — jan sampai laluih tanpa dzikir.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Salat Matahari Tagalambah';

  @override
  String get prayerNotifBodyMaghrib =>
      'Matahari lah tagalambah — momen nan disuciakan Ahl al-Bayt untuak doa. Tunaikan Maghrib jo angkek tangan ang ka Allah dalam doa sabalun malam dimulai.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Salat Malam';

  @override
  String get prayerNotifBodyIsha =>
      'Akhiri hari ang dalam kabarsamaan jo Allah. Para Imam menganjurkan Salat al-Layl sasudah Isha — tapi partamo, tunaikan Isha ang jo tutup hari ko jo dzikir ka-Nya.';

  @override
  String get outOfReflectionsBannerText =>
      'Ang lah manggunakan sado renungan ang';

  @override
  String get outOfReflectionsBannerCta => 'Dapekkan labiah banyak';

  @override
  String get dhikrPageTitle => 'Dzikir';

  @override
  String get dhikrTapToCount => 'Ketuk lingkaran untuak menghitung';

  @override
  String get dhikrResetButton => 'Atua ulang';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Ang lah manyalasaiakan 100 dzikir kapado Allah. Moga-moga ko jadi cahayo untuak hati ang.';

  @override
  String get disclaimerTitle => 'Tentang panduan aplikasi ko';

  @override
  String get disclaimerBody =>
      'Ayara manyadiakan renungan Islam, pengingat, jo konten rohani untuak manyokong parjalanan iman pribadi ang, basumber dari Al-Quran jo ajaran Ahl al-Bayt. Konten ko dibariokan hanyo untuak tujuan informasi umum jo inspirasi.\n\nAyara indak manggantikan ulama nan berkualifikasi.\nPanduan di aplikasi ko bukannyo pangganti untuak ulama Islam nan alim, marja\', atau guru nan talatih dalam teologi. Dalam Islam Syiah, panduan agama basumber dari mazhab Ja\'fari dalam fikih jo tradisi mangikuik Marja\' nan hidup (sumber taqlid) — saurang ahli hukum nan mumpuni nan putusannyo manjadi panduan umat dalam amal agama. Kalu ang punyo patanyaan tantang hukum agama, hal halal jo haram, atau kawajiban agama pribadi, mintalah nasihat dari Marja\' nan mumpuni atau ulama di komunitas ang.\n\nAplikasi ko indak mangaluakan hukum agama.\nAyara indak mambuek putusan otoritatif dalam masalah fikih atau kawajiban agama pribadi. Indak ado nan di siko nan patuik dianggap sabagai fatwa atau instruksi agama nan mangikat.\n\nKapusatan Ahl al-Bayt.\nDalam Islam Syiah, Nabi Muhammad ﷺ jo keluarga beliau nan disuciakan — Ahl al-Bayt — adolah pemandu otoritatif umat Islam sasudah Al-Quran. Duo balas Imam dari Ahl al-Bayt adolah panafsir ajaran Islam nan ditunjuk Allah. Konten di aplikasi ko mancari untuak mancerminakan tradisi ko jo satia jo manjago kehormatannyo.\n\nMasalah komunitas.\nAplikasi ko batujuan mendorong kabarsambuangan ang jo iman sambia sangat menghormati paran penting masjid lokal, pusat Islam, jo komunitas agama ang. Kami menganjurkan ang untuak tatap tasambuang jo balaja dari guru nan mumpuni di dakek ang.';

  @override
  String get disclaimerClose => 'Ambo paham';

  @override
  String get disclaimerInfoTooltip => 'Tentang panduan aplikasi ko';

  @override
  String get disclaimerSettingsSubtitle =>
      'Hanyo untuak tujuan informasi umum. Ketuk untuak mambaco penjelasan lengkapnyo.';

  @override
  String get disclaimerSectionHeader => 'Penafian panduan';

  @override
  String get navHome => 'Barando';

  @override
  String get navReflect => 'Renungkan';

  @override
  String get navDuas => 'Doa';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'HARI KO';

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
  String get quickActionDhikr => 'Dzikir';

  @override
  String get quickActionDailyGrace => 'Panduan';

  @override
  String get quickActionPrayerTimes => 'Waktu Salat';

  @override
  String get askAyaraTitle => 'Tanyo ka Ayara';

  @override
  String get askAyaraSubtitle =>
      'Tanyokan patanyaan Islam apo sajo jo tarimo jawaban nan panuah pandangan jo panduan.';

  @override
  String get askAyaraHint => 'mis. Apo makna Ramadan?';

  @override
  String get askAyaraSubmit => 'Tanyo';

  @override
  String get wisdomOfTheDayTitle => 'Hikmah Hari Ko';

  @override
  String get calendarScreenTitle => 'Kalender Islam';

  @override
  String get calendarUpcomingOccasions => 'Peringatan nan akan datang';

  @override
  String get calendarOccasionRemindersTitle => 'Pengingat Peringatan';

  @override
  String get calendarOccasionRemindersHint =>
      'Diberitahu malam sabalunnyo satiok peringatan';

  @override
  String get calendarNotifPermissionDenied =>
      'Izin notifikasi ditolak. Aktifkan di pengaturan perangkat ang.';

  @override
  String get calendarNoEvents => 'Indak ado acara nan akan datang.';

  @override
  String get calendarAddToPhone => 'Tambahkan ke Kalender HP';

  @override
  String get calendarAddedToPhone => 'Telah ditambahkan ke Kalender';

  @override
  String get calendarCountdownToday => 'HARI KO';

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
      'Hari-hari Muharram — ingeklah Karbala';

  @override
  String get calendarSeasonAshura => 'Asyura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — hari-hari duka jo renungan';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — ampek puluah hari Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Jalan ka Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — fajar wahyu';

  @override
  String get calendarSeasonMidShaban =>
      'Pertangahan Sya\'ban — hari lahia Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — bulan Al-Quran';

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
  String get hijriMonth10 => 'Syawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Doa & Ziyarat';

  @override
  String get duasSearchHint => 'Cari doa, ziyarat…';

  @override
  String get duasFilterAll => 'Sado';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doa & ziyarat',
      one: '$count doa',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Indak ado doa nan ditamukan.';

  @override
  String get duaCategoryDaily => 'Harian';

  @override
  String get duaCategoryWeekly => 'Mingguan';

  @override
  String get duaCategoryOccasions => 'Peringatan';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Kelahiran';

  @override
  String get eventTypeMartyrdom => 'Syahid';

  @override
  String get eventTypeOccasion => 'Peringatan';

  @override
  String get duaCopyTooltip => 'Salin terjemahan';

  @override
  String get duaToggleTransliteration => 'Transliterasi';

  @override
  String get duaToggleTranslation => 'Terjemahan';

  @override
  String get duaAskAiLabel => 'Minta Ayara manarangkan doa ko';

  @override
  String get duaAskAiLockedLabel => 'Tanyo Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Penjelasan Ayara tasadio untuak anggota Wilaya. Naikkan di Pengaturan.';

  @override
  String duaAiComingSoon(String name) {
    return 'Tanyo Ayara tantang \"$name\" — akan datang!';
  }

  @override
  String get duaCopiedToast => 'Doa disalin ka clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah Maha Gadang';

  @override
  String get tasbihAlhamdulillahMeaning => 'Sagala puji bagi Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Mahasuci Allah';

  @override
  String get tasbihResetTooltip => 'Atua ulang';

  @override
  String get tasbihCompleteTitle => 'Tasbih Sasai';

  @override
  String get tasbihCompleteMessage => 'Moga Allah manarimo dzikir ang.';

  @override
  String get tasbihTapHint => 'Ketuk di mano sajo untuak menghitung';

  @override
  String get tasbihatScreenTitle => 'Panduan Salat';

  @override
  String get tasbihatScreenSubtitle => 'TASBIH SALAT';

  @override
  String get tasbihatScreenDescription =>
      'Panduan lengkek tantang tasbih nan dibaco salamo jo sasudah salat wajib — manuruik tradisi Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Dibaco di rakaat ka-3 jo ka-4';

  @override
  String get tasbihatArba3Info =>
      'Dalam fikih Syiah, Tasbiḥāt al-Arbaʿa manggantikan Surah al-Fatiha di rakaat ka-3 jo ka-4 Dhuhr, Asr, Maghrib, jo Isha. Wajib dibaco sakali, jo disunahkan dibaco tigo kali.';

  @override
  String get tasbihatArba3Translation =>
      'Mahasuci Allah · Sagalo puji bagi Allah\nIndak ado Tuhan selain Allah · Allah Maha Gadang';

  @override
  String get tasbihatArba3CompleteTitle => 'Bacaan Sasai';

  @override
  String get tasbihatArba3CompleteMessage => 'Moga salat ang ditarimo — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Ketuk satiok sasudah sakali bacaan';

  @override
  String get tasbihatZahraSubtitle => 'Sasudah satiok salat · 100 butir';

  @override
  String get tasbihatZahraOriginLabel => 'Asal';

  @override
  String get tasbihatZahraHadith =>
      'Sayyidah Fatimah al-Zahra (sa) mamintak ka Nabi ﷺ saurang pambantu. Beliau bakato: \"Apo indak ambo tunjuakkan ka ang sasuatu nan labiah baik? Baco Subḥānallāh 33 kali, Alḥamdulillāh 33 kali, jo Allāhu Akbar 34 kali sasudah satiok salat. Itu labiah baik bagi ang daripada saurang pambantu.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Jilid 85';

  @override
  String get tasbihatZahraOpenCounter => 'Buka Penghitung Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DOA NAN DISUNAHKAN';

  @override
  String get tasbihatDuasSubtitle => 'Sasudah manyalasaiakan salat ang';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Sasudah satiok salat wajib';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Sapo nan mambaco Āyat al-Kursī sasudah satiok salat wajib, indak ado nan manghalangi antaro inyo jo surga salain kamatian. Imam al-Bāqir (a) bakato itu salah satu ayat nan paliang aguang dalam Al-Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Sasudah satiok salat · manyudahi sado doa';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Mangirim salawat ka Nabi ﷺ jo keluarga beliau nan suci (Āl Muḥammad) disunahkan untuak manyudahi satiok doa. Imam al-Ṣādiq (a) bakato: \"Satiok doa tatangguh sampai ang mambaco ṣalawāt atas Muḥammad jo keluarganyo.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Sasudah satiok salat · untuak Imam zaman kito';

  @override
  String get tasbihatDuaFarajSource =>
      'Diajarkan oleh Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Doa untuak kemunculan baliak Imam al-Mahdī (af), Imam ka-12, nan diajarkan oleh ayah beliau. Dibaco satiok hari oleh kaum Syiah sasudah satiok salat sabagai wujud bakti ka Imam nan masih hidup.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Sayyidah Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Sasudah Maghrib jo Isha · sangat dianjurkan';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) bakato bahwo mambaco Tasbīḥ al-Zahrā sasudah Isha sabalun tidur labiah baik daripada 1000 rakaat salat sunnah. Cahayonyo naiak ka langik.';

  @override
  String get tasbihFatimaGiftPre => 'Hadiah dari Nabi';

  @override
  String get tasbihFatimaGiftPost => 'dibaco sasudah satiok salat';

  @override
  String get prayerTrackerTitle => 'PELACAK SALAT';

  @override
  String get prayerTrackerPrayed => 'Lah salat';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'rentetan $count hari';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Sado salat lah ditunaikan hari ko. Moga Allah manarimo.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Lah sasai hari ko';

  @override
  String get dhikrTrackerNotDoneToday => 'Balun dikerjakan hari ko';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'rentetan $count hari';
  }

  @override
  String get dhikrReminderTitle => 'Pengingat Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Pengingat harian nan haluih untuak mambaco Tasbīḥ al-Zahrā (SA) ang.';

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
  String get hadithShare => 'Bagikan Hadis Ko';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nLewat Ayara';
  }

  @override
  String get hadithNavPrevious => 'Sabalunyo';

  @override
  String get hadithNavNext => 'Salanjutnyo';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 Maksumin';

  @override
  String get imamsScreenSubtitle =>
      'Nabi, Sayyidah Fatimah, jo Duo Baleh Imam — pemandu Islam nan maksum';

  @override
  String get imamLabelBorn => 'Lahia';

  @override
  String get imamLabelMartyrdom => 'Syahid';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'UCAPAN TARKANAL';

  @override
  String get imamRoleProphet => 'Nabi Panutuik';

  @override
  String get imamRoleInfallible => 'Nan Maksum';

  @override
  String get imamOrdinal1 => 'Imam ka-1';

  @override
  String get imamOrdinal2 => 'Imam ka-2';

  @override
  String get imamOrdinal3 => 'Imam ka-3';

  @override
  String get imamOrdinal4 => 'Imam ka-4';

  @override
  String get imamOrdinal5 => 'Imam ka-5';

  @override
  String get imamOrdinal6 => 'Imam ka-6';

  @override
  String get imamOrdinal7 => 'Imam ka-7';

  @override
  String get imamOrdinal8 => 'Imam ka-8';

  @override
  String get imamOrdinal9 => 'Imam ka-9';

  @override
  String get imamOrdinal10 => 'Imam ka-10';

  @override
  String get imamOrdinal11 => 'Imam ka-11';

  @override
  String get imamOrdinal12 => 'Imam ka-12';

  @override
  String get duaAudioScreenTitle => 'Danga Doa';

  @override
  String get duaAudioScreenSubtitle =>
      'Pilih doa nan ingin didangakan. Ketuk kotak untuak mamainkan atau manjeda.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio untuak doa ko akan tasadio di pambaruan nan akan datang.';

  @override
  String get duaAudioClose => 'Tutup';

  @override
  String get duaAudioError =>
      'Indak bisa mamuat audio. Tolong parikso koneksi ang.';

  @override
  String get duaAudioMetaTransmittedBy => 'Diriwayatkan oleh';

  @override
  String get duaAudioMetaOccasion => 'Peringatan';

  @override
  String get duaAudioMetaDuration => 'Durasi';

  @override
  String get quickActionDailyHadith => 'Hadis Harian';

  @override
  String get quickAction14Masumeen => '14 Maksumin';

  @override
  String get quickActionListenDuas => 'Danga';

  @override
  String get quickActionTasbihat => 'Panduan Salat';

  @override
  String get pilgrimageSectionTitle => 'Parjalanan Suci';

  @override
  String get pilgrimageSectionSubtitle =>
      'Panduan lengkek Haji jo Umrah — ziarah ka Rumah Suci Allah di Makkah';

  @override
  String get hajjCardTitle => 'Haji';

  @override
  String get hajjCardSubtitle => 'Rukun Islam nan Kalimo';

  @override
  String get hajjCardDescription =>
      'Ibadah tahunan nan aguang — wajib sakali salamo hidup bagi satiok Muslim nan mampu';

  @override
  String get hajjScreenTitle => 'Panduan Haji';

  @override
  String get hajjScreenSubtitle =>
      'Panduan langkah demi langkah untuak ibadah haji akbar';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Haji Kecil';

  @override
  String get umrahCardDescription =>
      'Parjalanan rohani nan sangat babalasan nan bisa dilakukan kapan sajo dalam satahun';

  @override
  String get umrahScreenTitle => 'Panduan Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Panduan langkah demi langkah untuak ibadah umrah';

  @override
  String get pilgrimageStepsTitle => 'Ritual jo Langkah';

  @override
  String get pilgrimageImportantNotesTitle => 'Catatan Penting';

  @override
  String get pilgrimageDuaTitle => 'Dua untuk langkah ini';

  @override
  String get pilgrimageJafariNoteTitle => 'Catatan Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Lengkap';

  @override
  String get pilgrimageMarkDone => 'Tandai sabagai rampung';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done dari $total langkah';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes menit';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Jamaah Syiah';

  @override
  String get pilgrimageShiaNoteBody =>
      'Jamaah Syiah biaso juo barangkek ka Madinah untuak manziarahi makam Nabi Muhammad (SAW) di Masjid al-Nabawi, jo kuburan para Imam di Jannat al-Baqi. Kunjungan iko mampunyoi makna rohani nan sangat gadang jo dianggap sabagai bagian penting dari parjalanan bagi kabanyakan jamaah Syiah.';

  @override
  String get hajjIntro =>
      'Haji adolah rukun Islam nan kalimo, wajib sakali salamo hidup bagi satiok Muslim nan mampu sacaro fisik jo finansial. Dilakukan di bulan Dhul Hijjah, haji manelusuri jejak Nabi Ibrahim (AS), putra beliau Ismail (AS), jo Sayyidah Hajar. Bagi Muslim Syiah, Haji juo mamuat nikmat nan dalam untuak manziarahi tempat peristirahatan Nabi (SAW) jo Ahlul Bayt di Madinah.';

  @override
  String get umrahIntro =>
      'Umrah adolah ziarah kecil ka Makkah dan, babeda jo Haji, bisa dilakukan kapan sajo salamo satahun. Walaupun indak wajib, umrah mampunyoi pahala rohani nan sangat gadang jo dianggap sabagai ibadah nan sangat dianjurkan. Umrah babagi babarapo ritual jo Haji tapi labiah singkek, nan terdiri dari ampek rukun utama.';
}
