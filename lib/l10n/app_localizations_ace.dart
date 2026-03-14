// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Achinese (`ace`).
class AppLocalizationsAce extends AppLocalizations {
  AppLocalizationsAce([String locale = 'ace']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Pileh bahsa droeneuh';

  @override
  String get languageSelectSub =>
      'Nyoe jeuet droeneuh ubah lheueh nyan di Setelan';

  @override
  String get actionContinue => 'Lanjut';

  @override
  String get languageSuggestedHeader => 'Disaran';

  @override
  String get languageAllHeader => 'Banmandum bahsa';

  @override
  String get languageSuggestedBadge => 'Disaran';

  @override
  String get languageSearchHint => 'Mita…';

  @override
  String get planBasic => 'Standar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Pitudôh Uroe-uroe';

  @override
  String get categorySlot02 => 'Iman & Kapercayaan';

  @override
  String get categorySlot03 => 'Renungan Salat';

  @override
  String get categorySlot04 => 'Saba & Harapan';

  @override
  String get categorySlot05 => 'Minta Peueampôn';

  @override
  String get categorySlot06 => 'Rahmat & Kaheun';

  @override
  String get categorySlot07 => 'Kuwat Iman';

  @override
  String get categorySlot08 => 'Ate Peuget Syukur';

  @override
  String get categorySlot09 => 'Tujuen Udep';

  @override
  String get categorySlot10 => 'Hubongan Kaluarga';

  @override
  String get categorySlot11 => 'Tantrem Batin';

  @override
  String get categorySlot12 => 'Hikmah Nabi';

  @override
  String get categorySlot13 => 'Akhlak Nyang Get';

  @override
  String get categorySlot14 => 'Lawan Godaan';

  @override
  String get categorySlot15 => 'Dhikr Malam';

  @override
  String get categoryCustom => 'Renungan Pribadi';

  @override
  String get dhikrMeaningSubhanallah => 'Maha Suci Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Sagala puji ka Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah Mahaboh Raya';

  @override
  String get quranVerseHeartAtRest =>
      'Bah kheun that, ngon ingat keu Allah hate geutanyoe teuntram.';

  @override
  String get promptHint =>
      'Toèk saboh kategori keu pitudôh Islam ngon renungan';

  @override
  String get currentLanguage => 'Bahsa jinoe';

  @override
  String get settingsLanguage => 'Setelan bahsa';

  @override
  String get settingsTitle => 'Setelan';

  @override
  String get chooseLanguage => 'Pileh bahsa droeneuh';

  @override
  String get continueCta => 'Lanjut';

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
  String get optionsCta => 'Pilihan';

  @override
  String get newCta => 'Barô';

  @override
  String get actionsTitle => 'Peue nyang droeneuh peugot?';

  @override
  String get copy => 'Salin';

  @override
  String get share => 'Bagi';

  @override
  String get close => 'Tôtup';

  @override
  String get copiedToast => 'Geusalin u clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Hana jeuet peujeut jawaban barô';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDroeneuh meuh\'eut cubak lom?';
  }

  @override
  String get cancelCta => 'Batal';

  @override
  String get retryCta => 'Cubak lom';

  @override
  String get authTitle => 'Peujeut akun droeneuh';

  @override
  String get continueAsGuest => 'Lanjut sabagé tamu';

  @override
  String get signInGoogle => 'Tamong ngon Google';

  @override
  String get signInApple => 'Tamong ngon Apple';

  @override
  String get signInEmail => 'Tamong ngon Email';

  @override
  String get upgradeWithApple => 'Lanjut ngon Apple';

  @override
  String get mustAccept =>
      'Droeneuh wajib teurimong Syarat ngon ngaku ka baca Kebijakan Privasi.';

  @override
  String get termsLabel => 'Lon teurimong Syarat Layanan';

  @override
  String get privacyLabel => 'Lon ka baca Kebijakan Privasi';

  @override
  String get marketingOptIn => 'Lon setuju teurimong haba ngon tawaran';

  @override
  String get openTerms => 'Syarat Layanan';

  @override
  String get openPrivacy => 'Kebijakan Privasi';

  @override
  String get accountSection => 'Akun';

  @override
  String get guestMode => 'Mode tamu';

  @override
  String get signedIn => 'Ka tamong';

  @override
  String get upgradeHint =>
      'Seumpen renungan droeneuh bak banmandum perangkat ngon peugot akun.';

  @override
  String get upgradeWithGoogle => 'Lanjut ngon Google';

  @override
  String get signOut => 'Peuluwah';

  @override
  String get snackUpgraded => 'Akun geupeuëk ngon Google ✅';

  @override
  String get snackSignedIn => 'Ka tamong ngon Google ✅';

  @override
  String get snackSignedOut => 'Ka peuluwah';

  @override
  String get snackSignedInApple => 'Ka tamong ngon Apple ✅';

  @override
  String get snackSignedInGoogle => 'Ka tamong ngon Google ✅';

  @override
  String get snackUpgradedApple => 'Akun geupeuëk ngon Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akun geupeuëk ngon Google ✅';

  @override
  String get historyTitle => 'Renungan sigohlom';

  @override
  String get historyOpenCta => 'Renungan sigohlom';

  @override
  String get historyEmpty => 'Nyan lom na renungan nyang geuseumpen.';

  @override
  String get historyDeleteTitle => 'Hapus renungan?';

  @override
  String get historyDeleteBody =>
      'Nyoe akan meusampôh item nyang dipileh sacara permanen.';

  @override
  String get deleteCta => 'Hapus';

  @override
  String get historyButton => 'Renungan Sigohlom';

  @override
  String get historyEmptyTitle => 'Lom na renungan';

  @override
  String get historyEmptyBody =>
      'Peujeut siat sapeue — item nyang geuseumpen akan tameuleumah bak nyoe.';

  @override
  String get historyDelete => 'Hapus';

  @override
  String get footerTitle => 'Ngon Wilaya, Iman, ngon Sabr';

  @override
  String get footerSubtitle => 'Saboh doa tiap saboh watee';

  @override
  String get genericErrorSnack =>
      'Na nyang salah — tulông cubak lom saboh saat.';

  @override
  String get upgradeAccountCta =>
      'Seumpen renungan droeneuh bak banmandum perangkat – peugot akun';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get exportData => 'Ekspor data lon';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Sanjai nyan dikit 🐯\nAyara butuh saboh saat sigohlom nyang teuka…';

  @override
  String get rateDailyLimit =>
      'Renungan droeneuh ka habaïh gaséh nyoe.\nPeureulèëh lom renungan atawa peueëk u Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Banmandum renungan droeneuh ka geupakai.\nTop up atawa peueëk u Wilaya keu lanjut.';

  @override
  String get rateGraceCreditsExhausted =>
      'Renungan droeneuh ka habaïh gaséh nyoe.\nPeureulèëh lom renungan atawa peueëk u Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya muka fitur premium, kategori masa depan, ngon badge meuspeusial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Renungan droeneuh hampa jinoe. Paket: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Hana jeuet cek renungan droeneuh: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Na nyang salah watee cek renungan droeneuh.';

  @override
  String get aiFallbackGeneric =>
      'Na nyang salah — tulông cubak lom saboh saat.';

  @override
  String get limitSectionTitle => 'Renungan';

  @override
  String get limitTodayLabel => 'Pake';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Renungan nyang tinggai: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Paket: $plan';
  }

  @override
  String get limitLoadingLabel => 'Lagee geumuat…';

  @override
  String get limitLoadingLabelDescription =>
      'Geupeuleumah di kartu renungan watee statistik pake geupeugot.';

  @override
  String get aiLimitTitle => 'Renungan';

  @override
  String get aiLimitSubtitle =>
      'Tiap jawaban geupakai 1 renungan. Standar meuisi renungan pemula. Wilaya muka kategori premium ngon top-up.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total renungan ka geupakai';
  }

  @override
  String get creditsSectionTitle => 'Renungan';

  @override
  String get creditsUsageLabel => 'Pake';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Renungan nyang tinggai: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Paket: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Lagee geumuat…';

  @override
  String get creditsLoadingLabelDescription =>
      'Geupeuleumah watee statistik renungan geupeugot.';

  @override
  String get creditsTitle => 'Renungan';

  @override
  String get creditsSubtitle =>
      'Tiap jawaban geupakai 1 renungan. Standar meuisi renungan pemula. Wilaya muka kategori premium ngon top-up.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total renungan ka geupakai';
  }

  @override
  String get settingsDeleteTitle => 'Hapus akun';

  @override
  String get settingsDeleteDescription =>
      'Hapus akun droeneuh ngon banmandum data nyang meusangkutan sacara permanen.';

  @override
  String get settingsDeleteButtonLabel => 'Hapus akun lon';

  @override
  String get settingsDeleteDialogTitle => 'Hapus akun?';

  @override
  String get settingsDeleteDialogBody =>
      'Tindakan nyoe permanen ngon hana jeuet geubateuëh.\n\nBanmandum obrolan, riwayat, ngon informasi akun droeneuh akan geuhapus.';

  @override
  String get settingsDeleteDialogCancel => 'Batal';

  @override
  String get settingsDeleteDialogConfirm => 'Hapus';

  @override
  String get settingsFreeLimitUsedTitle => 'Renungan pemula ka geupakai';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Renungan pemula keu perangkat nyoe ka geupakai. Peueëk u Wilaya atawa bloe renungan lom keu lanjut.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Renungan pemula ka geupakai';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Renungan pemula keu perangkat nyoe ka geupakai. Peueëk u Wilaya atawa bloe renungan lom keu lanjut.';

  @override
  String get deviceBoundError =>
      'Perangkat nyoe ka teukait ngon akun laén. Tulông tamong ngon akun asal.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic => 'Muka pengalaman Ayara nyang peunoh.';

  @override
  String get premiumSubtitlePremium =>
      'Droeneuh bak Wilaya. Peu perleu renungan lom?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Paket jinoe: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Renungan: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Pembelian hana tersedia jinoe.';

  @override
  String get premiumSignInToPurchase =>
      'Tamong keu bloe renungan atawa buka Wilaya.';

  @override
  String get premiumRestorePurchases => 'Pulèhkan pembelian';

  @override
  String get premiumProcessing => 'Lagee diproses…';

  @override
  String get premiumRestoreHintTitle =>
      'Ka geubloe Wilaya atawa renungan bak perangkat nyoe atawa laén?';

  @override
  String get premiumRestoreHintBody =>
      'Pulèhkan pembelian droeneuh meunyo hana teuleumah.';

  @override
  String get premiumBuyCredits200 => 'Bloe 200 renungan';

  @override
  String get premiumBuyCredits400 => 'Bloe 400 renungan';

  @override
  String get premiumBecomePremiumOneTime => 'Peueëk u mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Ngon Wilaya, droeneuh jeuet top up renungan tambehan saban butôh.';

  @override
  String get premiumUpgradeCta => 'Peueëk';

  @override
  String get premiumRequiredForCategory =>
      'Kategori nyoe mantong tersedia keu ureuëng Wilaya. Peueëk di Setelan keu buka banmandum kontèn premium.';

  @override
  String get premiumBenefitsBasic =>
      'Buka Wilaya keu peureulèëh renungan tambehan, akseu kategori premium, ngon lanjut saban droeneuh butôh pitudôh.';

  @override
  String get premiumBenefitsPremium =>
      'Droeneuh dalam mode Wilaya. Meunyo renungan ka mupo, tamah saboh peu dan lanjut tanpa gangguan.';

  @override
  String get premiumButtonBecomePremium => 'Buka Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Tamah 1000 renungan';

  @override
  String get premiumBadge => 'Wilaya aktif';

  @override
  String get premiumLoadingStore => 'Lagee geumuat toko…';

  @override
  String get premiumProductNotAvailable =>
      'Produk nyoe lom tersedia di toko. Tulông cubak lom teuma.';

  @override
  String get premiumPurchaseError =>
      'Na nyang salah ngon pembelian. Tulông cubak lom.';

  @override
  String get premiumBuyCredits100 => 'Tamah 100 renungan';

  @override
  String get premiumFeatureLocked => 'Buka Wilaya keu akseu fitur nyoe.';

  @override
  String get lockedCategoriesHint =>
      'Saboh dua kategori dicadangkan keu anggota Wilaya. Buka keu jeulah banmandum renungan bak peujalanan droeneuh.';

  @override
  String get freePlanBlockedTitle => 'Renungan pemula droeneuh ka habaïh';

  @override
  String get freePlanBlockedBody =>
      'Droeneuh bak paket Standar ngon renungan pemula, ngon ka troh bak batas. Keu lanjut — ngon buka kategori premium — peueëk u Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Kalôn pilihan Wilaya di yup';

  @override
  String get graceBlockedTitle => 'Renungan pemula droeneuh ka habaïh';

  @override
  String get graceBlockedBody =>
      'Droeneuh bak paket Standar ngon renungan pemula, ngon ka troh bak batas. Keu lanjut — ngon buka kategori premium — peueëk u Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Kalôn pilihan Wilaya di yup';

  @override
  String get rateGuestMustSignIn =>
      'Tamong keu pakai Ayara ngon renungan droeneuh.';

  @override
  String get guestNoCreditsTitle => 'Mode tamu';

  @override
  String get guestNoCreditsBody =>
      'Sabagé tamu droeneuh jeuet jeulah aplikasi, tapi hana jeuet pakai renungan. Tamong lheueh di Setelan keu pakai renungan ngon buka pembelian.';

  @override
  String get guestDialogContinue => 'Lanjut';

  @override
  String get guestDialogLoginInstead => 'Tamong mantong';

  @override
  String get optionalLabel => 'opsional';

  @override
  String get accountDeleteSuccessTitle => 'Akun ka geuhapus';

  @override
  String get accountDeleteSuccessBody =>
      'Akun droeneuh ngon data nyang meusangkutan ka geuhapus ngon sukses.';

  @override
  String get accountDeleteSuccessClose => 'Tôtup';

  @override
  String get accountDeleteErrorTitle => 'Hana jeuet hapus akun';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Autentikasi ulang geubatal. Tulông tamong lom jeung cubak hapus lom.';

  @override
  String get accountDeleteReauthRequired =>
      'Hapus akun butôh tamong barô. Tulông peuluwah, tamong lom, jeung cubak hapus akun.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tindakan nyoe permanen ngon hana jeuet geubateuëh. Banmandum data nyang meusangkutan ngon akun droeneuh akan geuhapus.';

  @override
  String get dailyGraceTitle => 'Pitudôh Uroe-uroe';

  @override
  String get dailyGraceScriptureLabel => 'AYAT UROE NYOE';

  @override
  String get dailyGraceSaintLabel => 'FIGURE HARI INI';

  @override
  String get dailyGraceReflectionLabel => 'RENUNGAN MALAM';

  @override
  String get dailyGraceCopiedToast => 'Ayat ka geusalin u clipboard';

  @override
  String get locationConsentLabel =>
      'Izin Ayara pakai lokasi lon keu arah Qibla ngon jadwal salat';

  @override
  String get locationConsentHint =>
      'Mantong geupakai keu fitur nyoe. Lokasi droeneuh hana geubagi atawa geuseumpen.';

  @override
  String get askPageTitle => 'Tanyöng Ayara';

  @override
  String get askPageDescription =>
      'Tanyöng sapeue mantong perkawih iman, salat, udep, atawa amalan Islam ngon tamong pitudôh nyang beurapeu bak Quran ngon ajaran Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Tuleh patanyaan droeneuh di sinan…';

  @override
  String get askPageSubmitCta => 'Tanyöng';

  @override
  String get askPageInputEmptyError => 'Tulông tuleh saboh patanyaan dilee.';

  @override
  String get askResultYourQuestion => 'Patanyaan droeneuh';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Arah u Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Putar HP droeneuh sampoe jarôm meuligoe nyan tunjuk u ateuh.\nArah nyan nyoe Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sinyal GPS leumah. Pindah u luwa dan toèk Cubak Lom.';

  @override
  String get qiblaRetry => 'Cubak lom';

  @override
  String get qiblaTitle => 'Arah Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km u Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokasi diperlukeun';

  @override
  String get qiblaLocationNeededBody =>
      'Izin akseu lokasi mangat Ayara jeuet hitông arah Ka\'bah di Makkah dari pat droeneuh nyan.';

  @override
  String get qiblaOpenSettings => 'Buka Setelan';

  @override
  String get qiblaCompassLoading => 'Lagee mita posisi droeneuh…';

  @override
  String get qiblaTowardMecca => 'Ka arah Makkah';

  @override
  String get prayerTimesTitle => 'Watee Salat';

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
  String get prayerTimesLocationNeededTitle => 'Lokasi diperlukeun';

  @override
  String get prayerTimesLocationNeededBody =>
      'Izin akseu lokasi mangat Ayara jeuet hitông watee salat nyang akurat keu banda droeneuh.';

  @override
  String get prayerTimesNextLabel => 'Salajôet';

  @override
  String get prayerTimesDoneLabel => 'Rampa';

  @override
  String get monthlyPrayerTimesTitle => 'Watee Salat Bulanan';

  @override
  String get monthlyPrayerTimesViewButton => 'Kalôn Sebuleun Penuh';

  @override
  String get monthlyPrayerTimesNextMonth => 'Buleun salajôet';

  @override
  String get monthlyPrayerTimesDayHeader => 'Uroe';

  @override
  String get sharePrayerTimes => 'Bagi watee salat';

  @override
  String get notificationsSectionTitle => 'Notifikasi';

  @override
  String get notificationsSectionSubtitle =>
      'Peuingat salat, acara kalender & laén-lain';

  @override
  String get dailyReflectionReminderTitle => 'Renungan Uroe-uroe';

  @override
  String get dailyReflectionReminderDescription =>
      'Peuingat haléh saban uroe keu buka Ayara ngon seuhubông ngon iman droeneuh.';

  @override
  String get dailyReflectionReminderEnable => 'Aktifkan peuingat uroe-uroe';

  @override
  String get dailyReflectionReminderTimeLabel => 'Watee peuingat';

  @override
  String get prayerNotificationsTitle => 'Peuingat Salat';

  @override
  String get prayerNotificationsDescription =>
      'Teurimong peuingat haléh sigohlom tiap watee salat mangat droeneuh teutap teuhubông seupanjang uroe.';

  @override
  String get prayerNotificationsEnable => 'Aktifkan peuingat salat';

  @override
  String get prayerNotificationsOpenSettings => 'Buka setelan notifikasi';

  @override
  String get prayerNotificationsDenied => 'Notifikasi hana aktif';

  @override
  String get prayerNotificationsDeniedHint =>
      'Jak u Setelan dan izinkan notifikasi keu Ayara mangat teurimong peuingat watee salat.';

  @override
  String get notificationsConsentLabel => 'Izin notifikasi keu watee salat';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Salat Subôh';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr nyoe salat pagoe Ahl al-Bayt. Imam Ali (AS) geukheun: Jaga salat subôh lagee droeneuh jaga amanah droeneuh nyang paling meuharga. Beudôh, peu suci droeneuh, dan duek di keue Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Salat Teungoh Uroe';

  @override
  String get prayerNotifBodyDhuhr =>
      'Para Imam Ahl al-Bayt meuhargai tiap saat zikir. Peuëdôh saboh saat dari kajeuen droeneuh, jamak Dhuhr ngon Asr meunyo perleu, dan peulhèë hate droeneuh bak Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Salat Peutang';

  @override
  String get prayerNotifBodyAsr =>
      'Jaga salat, sabab nyan perjanjian antare droeneuh ngon Allah. Watee Asr ka troh — bek peubiôh nyan lewat tanpa zikir.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Salat Mata Uroe Teutam';

  @override
  String get prayerNotifBodyMaghrib =>
      'Mata uroe ka teutam — saboh saat nyang Ahl al-Bayt peumulia. Peulaksana Maghrib dan buka jaroe droeneuh bak Allah dalam doa sigohlom malam meumula.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Salat Malam';

  @override
  String get prayerNotifBodyIsha =>
      'Akhiri uroe droeneuh dalam kebersamaan ngon Allah. Para Imam menyaran Salat al-Layl lheueh Isha — tapi dilee, rampa keuh Isha droeneuh dan peunutôh uroe ngon zikir keu-Nya.';

  @override
  String get outOfReflectionsBannerText =>
      'Banmandum renungan droeneuh ka geupakai';

  @override
  String get outOfReflectionsBannerCta => 'Peureulèëh lom';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toèk lingkaran keu hitông';

  @override
  String get dhikrResetButton => 'Atuër ulang';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Droeneuh ka rampa 100 zikir Allah. Mudah-mudahan nyan jeut nur keu hate droeneuh.';

  @override
  String get disclaimerTitle => 'Ngeunae pitudôh dalam aplikasi nyoe';

  @override
  String get disclaimerBody =>
      'Ayara meuneubiet renungan Islam, peuingat, ngon kontèn rohani keu dukong peujalanan iman pribadi droeneuh, nyang beurapeu bak Quran ngon ajaran Ahl al-Bayt. Kontèn nyoe geupeusadia mantong keu tujuan informasi umum ngon inspirasi.\n\nAyara hana geugantoe ulama nyang ahli.\nPitudôh dalam aplikasi nyoe kon pengganti ulama Islam nyang teupelajar, marja\', atawa guru teologi nyang terlatih. Dalam Islam Syiah, pitudôh agama beurapeu bak mazhab Ja\'fari dalam fikih ngon tradisi taqlid bak Marja\' nyang udep — nyaitu ahli hukum nyang mumpuni, nyang ketetapan geu peuguna keu ureuëng mukmin dalam ibadah. Meunyo droeneuh na patanyaan tentang hukum agama, halal-haram, atawa kewajiban agama pribadi, tulông mita nasihat bak Marja\' nyang mumpuni atawa ulama di komunitas droeneuh.\n\nAplikasi nyoe hana meupeulhua hukum agama.\nAyara hana peugot penentuan otoritatif bak urusan fikih atawa kewajiban agama pribadi. Hana nyang di sinan jeuet geuanggap sabagé fatwa atawa pitudôh agama nyang meungiket.\n\nPentingnyan Ahl al-Bayt.\nDalam Islam Syiah, Nabi Muhammad ﷺ ngon ahli rumah tangga geu nyang suci — Ahl al-Bayt — nyan pitudôh otoritatif komunitas Islam lheueh Quran. Dua blaih Imam Ahl al-Bayt nyan penafsir ajaran Islam nyang geutunjuk Allah. Kontèn bak aplikasi nyoe mecerminkan tradisi nyoe ngon beusaha hormat padum cara setia.\n\nPerkara komunitas.\nAplikasi nyoe beutujuen keu meudorong keterlibatan droeneuh ngon iman sambé sangat hormat keu peran penting mesjid lokal, pusat Islam, ngon komunitas agama droeneuh. Kamoe anjurkan droeneuh keu teutap teuhubông ngon balajar dari guru nyang mumpuni di toe droeneuh.';

  @override
  String get disclaimerClose => 'Lon paham';

  @override
  String get disclaimerInfoTooltip => 'Ngeunae pitudôh aplikasi nyoe';

  @override
  String get disclaimerSettingsSubtitle =>
      'Mantong keu tujuan informasi umum. Toèk keu baca penjelasan peunoh.';

  @override
  String get disclaimerSectionHeader => 'Penjelasan pitudôh';

  @override
  String get navHome => 'Ureuëng';

  @override
  String get navReflect => 'Renung';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'UROE NYOE';

  @override
  String get dashboardComingUp => 'Nyang teuka';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'uroe',
      one: 'uroe',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Aksès Capat';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Pitudôh';

  @override
  String get quickActionPrayerTimes => 'Watee Salat';

  @override
  String get askAyaraTitle => 'Tanyöng Ayara';

  @override
  String get askAyaraSubtitle =>
      'Tanyöng peue mantong tentang Islam dan teurimong jawaban nyang tajak pikir ngon meupitudôh.';

  @override
  String get askAyaraHint => 'mis. Peu nyan makna Ramadan?';

  @override
  String get askAyaraSubmit => 'Tanyöng';

  @override
  String get wisdomOfTheDayTitle => 'Hikmah Uroe Nyoe';

  @override
  String get calendarScreenTitle => 'Kalender Islam';

  @override
  String get calendarUpcomingOccasions => 'Peristiwa nyang teuka';

  @override
  String get calendarOccasionRemindersTitle => 'Peuingat Peristiwa';

  @override
  String get calendarOccasionRemindersHint =>
      'Geubeurita bak malam sigohlom tiap peristiwa';

  @override
  String get calendarNotifPermissionDenied =>
      'Izin notifikasi geutôlak. Aktifkan dalam setelan perangkat droeneuh.';

  @override
  String get calendarNoEvents => 'Hana na acara nyang teuka geutem.';

  @override
  String get calendarAddToPhone => 'Tambahkan ke Kalender Telepon';

  @override
  String get calendarAddedToPhone => 'Ditambahkan ke Kalender';

  @override
  String get calendarCountdownToday => 'UROE NYOE';

  @override
  String get calendarCountdownTomorrow => 'BEUSÔK';

  @override
  String calendarCountdownDays(int days) {
    return 'dalam $days uroe';
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
  String get calendarSeasonMuharramEarly => 'Asoe Muharram — ingat Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — asoe dukacita ngon renungan';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — peuplôh uroe Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Jalan u Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — fajar wahyu';

  @override
  String get calendarSeasonMidShaban =>
      'Teungoh Sha\'ban — uroe meu lahe Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — buleun Quran';

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
  String get duasScreenTitle => 'Dua & Ziyarat';

  @override
  String get duasSearchHint => 'Mita dua, ziyarat…';

  @override
  String get duasFilterAll => 'Banmandum';

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
  String get duasEmpty => 'Hana na dua geutem.';

  @override
  String get duaCategoryDaily => 'Uroe-uroe';

  @override
  String get duaCategoryWeekly => 'Mingguan';

  @override
  String get duaCategoryOccasions => 'Peristiwa';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

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
  String get duaAskAiLabel => 'Tanyöng Ayara keu jaleh dua nyoe';

  @override
  String get duaAskAiLockedLabel => 'Tanyöng Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Penjelasan Ayara mantong tersedia keu anggota Wilaya. Peueëk bak Setelan.';

  @override
  String duaAiComingSoon(String name) {
    return 'Tanyöng Ayara tentang \"$name\" — sigra teuka!';
  }

  @override
  String get duaCopiedToast => 'Dua ka geusalin u clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah Mahaboh Raya';

  @override
  String get tasbihAlhamdulillahMeaning => 'Sagala puji keu Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Maha Suci Allah';

  @override
  String get tasbihResetTooltip => 'Atuër ulang';

  @override
  String get tasbihCompleteTitle => 'Tasbih Rampa';

  @override
  String get tasbihCompleteMessage =>
      'Mudah-mudahan Allah teurimong dhikr droeneuh.';

  @override
  String get tasbihTapHint => 'Toèk di pat mantong keu hitông';

  @override
  String get tasbihatScreenTitle => 'Pitudôh Salat';

  @override
  String get tasbihatScreenSubtitle => 'PUJI-PUJIAN DALAM SALAT';

  @override
  String get tasbihatScreenDescription =>
      'Pitudôh peunoh tentang puji-pujian nyang geubaca dalam ngon lheueh salat uroe-uroe — meunurut tradisi Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Geubaca bak rakaʿat keu-3 & keu-4';

  @override
  String get tasbihatArba3Info =>
      'Dalam fikih Syiah, Tasbiḥāt al-Arbaʿa geugantoe Surah al-Fatiha bak rakaʿat keu-3 ngon keu-4 Dhuhr, Asr, Maghrib, ngon Isha. Wajib (wājib) geubaca sigohlom, dan disunahkan (mustaḥabb) geubaca teulông kali.';

  @override
  String get tasbihatArba3Translation =>
      'Maha Suci Allah · Sagala puji keu Allah\nHana tuhan selain Allah · Allah Mahaboh Raya';

  @override
  String get tasbihatArba3CompleteTitle => 'Bacaan Rampa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Mudah-mudahan salat droeneuh geuteurimong — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toèk lheueh tiap bacaan';

  @override
  String get tasbihatZahraSubtitle => 'Lheueh tiap salat · 100 butir';

  @override
  String get tasbihatZahraOriginLabel => 'Asal';

  @override
  String get tasbihatZahraHadith =>
      'Sayyidah Fatima al-Zahra (sa) meuhaba bak Nabi ﷺ minta saboh pelayan. Geukheun: \"Peue hana Lon pitudôh droeneuh saboh nyang leubèh get nibak nyan? Baca Subḥānallāh 33 kali, Alḥamdulillāh 33 kali, ngon Allāhu Akbar 34 kali lheueh tiap salat. Nyan leubèh get keu droeneuh nibak saboh pelayan.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Jilid 85';

  @override
  String get tasbihatZahraOpenCounter => 'Buka Konter Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀ NYANG DISARAN';

  @override
  String get tasbihatDuasSubtitle => 'Lheueh droeneuh rampa salat';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Lheueh tiap salat wajib';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Soe nyang baca Āyat al-Kursī lheueh tiap salat wajib, hana na nyang meuhalang antare jih ngon suruga selain maut. Imam al-Bāqir (a) geukheun nyan termasuk ayat nyang paling raya dalam Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Lheueh tiap salat · peunôtôh banmandum doa';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Meukirem salawat keu Nabi ﷺ ngon keluarga geu nyang suci (Āl Muḥammad) disaran keu peunôtôh tiap dua. Imam al-Ṣādiq (a) geukheun: \"Tiap doa teutanggôh sampoe droeneuh kirem ṣalawāt ateueh Muḥammad ngon keluarga geu.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Lheueh tiap salat · keu Imam masa geutanyoe';

  @override
  String get tasbihatDuaFarajSource =>
      'Geuajôh lé Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Sebuah dua untuk kemunculan kembali Imam al-Mahdī (af), Imam kedua belas, yang diajarkan oleh ayahnya. Ini sering dibaca oleh banyak Muslim Syiah setelah shalat sebagai tindakan pengabdian kepada Imam yang hidup.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Sayyidah Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Lheueh Maghrib & Isha · sangat disaran';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) geukheun bahwa baca Tasbīḥ al-Zahrā lheueh Isha sigohlom turoe leubèh get nibak 1000 rakaʿat salat sunat. Cahayanyan meuneukik u langet.';

  @override
  String get tasbihFatimaGiftPre => 'Hadiah dari Nabi';

  @override
  String get tasbihFatimaGiftPost => 'geubaca lheueh tiap salat';

  @override
  String get prayerTrackerTitle => 'PELACAK SALAT';

  @override
  String get prayerTrackerPrayed => 'Ka salat';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count uroe berturut-turut';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Banmandum salat uroe nyoe ka rampa. Mudah-mudahan Allah teurimong.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Rampa uroe nyoe';

  @override
  String get dhikrTrackerNotDoneToday => 'Lom geupeugot uroe nyoe';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count uroe berturut-turut';
  }

  @override
  String get dhikrReminderTitle => 'Peuingat Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Peuingat haléh saban uroe keu baca Tasbīḥ al-Zahrā (SA) droeneuh.';

  @override
  String get dhikrReminderEnable => 'Aktifkan peuingat Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Watee peuingat';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Uroe-uroe';

  @override
  String get hadithLabelArabic => 'ARAB';

  @override
  String get hadithLabelTranslation => 'TERJEMAHAN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Bagi Hadith Nyoe';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Sigohlom';

  @override
  String get hadithNavNext => 'Salajôet';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Empat Belas Ma\'sum';

  @override
  String get imamsScreenSubtitle =>
      'Nabi, Nyonya Fatimah, dan Dua Belas Imam — para pembimbing yang suci dan ma\'sum dalam Islam Syiah Dua Belas';

  @override
  String get imamLabelBorn => 'Lahoir';

  @override
  String get imamLabelMartyrdom => 'Syahid';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'KATA-KATA TAHOH';

  @override
  String get imamRoleProphet => 'Nabi Panutup';

  @override
  String get imamRoleInfallible => 'Nyang Maksum';

  @override
  String get imamOrdinal1 => 'Imam keu-1';

  @override
  String get imamOrdinal2 => 'Imam keu-2';

  @override
  String get imamOrdinal3 => 'Imam keu-3';

  @override
  String get imamOrdinal4 => 'Imam keu-4';

  @override
  String get imamOrdinal5 => 'Imam keu-5';

  @override
  String get imamOrdinal6 => 'Imam keu-6';

  @override
  String get imamOrdinal7 => 'Imam keu-7';

  @override
  String get imamOrdinal8 => 'Imam keu-8';

  @override
  String get imamOrdinal9 => 'Imam keu-9';

  @override
  String get imamOrdinal10 => 'Imam keu-10';

  @override
  String get imamOrdinal11 => 'Imam keu-11';

  @override
  String get imamOrdinal12 => 'Imam keu-12';

  @override
  String get duaAudioScreenTitle => 'Deungo Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Pileh saboh dua keu deungo. Toèk tile keu putar atawa jeda.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio keu dua nyoe akan tersedia bak pembaruan nyang teuka.';

  @override
  String get duaAudioClose => 'Tôtup';

  @override
  String get duaAudioError =>
      'Hana jeuet muat audio. Tulông cek koneksi droeneuh.';

  @override
  String get duaAudioMetaTransmittedBy => 'Diriwayatkan lé';

  @override
  String get duaAudioMetaOccasion => 'Peristiwa';

  @override
  String get duaAudioMetaDuration => 'Durasi';

  @override
  String get quickActionDailyHadith => 'Hadith Uroe-uroe';

  @override
  String get quickAction14Masumeen => 'Empat Belas Ma\'sum';

  @override
  String get quickActionListenDuas => 'Deungo';

  @override
  String get quickActionTasbihat => 'Pitudôh Salat';

  @override
  String get pilgrimageSectionTitle => 'Peujalanan Suci';

  @override
  String get pilgrimageSectionSubtitle =>
      'Pitudôh peunoh Hajj & Umrah — ziarah u Baitullah nyang suci di Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Rukun Islam Nyang Keu-Limèëng';

  @override
  String get hajjCardDescription =>
      'Ziarah raya tahunan — wajib sigohlom seumasa udep keu tiap Muslim nyang mampu';

  @override
  String get hajjScreenTitle => 'Pitudôh Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Pitudôh langkah demi langkah keu ziarah raya';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Ziarah Ket';

  @override
  String get umrahCardDescription =>
      'Peujalanan rohani nyang sangat meuharga nyang jeuet geulaksana saban masa dalam sataon';

  @override
  String get umrahScreenTitle => 'Pitudôh Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Pitudôh langkah demi langkah keu ziarah ket';

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
      'Banyak peziarah Syiah juga melakukan perjalanan ke Medina untuk ziyarat Nabi Muhammad (SAW) di Masjid al-Nabawi dan makam di Jannat al-Baqi. Kunjungan ini memiliki makna spiritual yang dalam, meskipun mereka bukan ritus Haji itu sendiri.';

  @override
  String get hajjIntro =>
      'Haji adalah pilar kelima Islam, wajib sekali seumur hidup bagi setiap Muslim yang mampu secara fisik dan finansial. Bagi sebagian besar peziarah Syiah Dua Belas saat ini, ini berarti Haji al-Tamattu\', yang dilaksanakan pada bulan Dhul Hijjah mengikuti jejak Nabi Ibrahim (AS), putranya Ismail (AS), dan Nyonya Hajar. Panduan ini mengikuti garis besar ritus Ja\'fari, sementara ziyarat di Medina tetap menjadi perjalanan yang sangat dihargai sebelum atau setelah Haji.';

  @override
  String get umrahIntro =>
      'Umrah nyoe ziarah ket u Mecca dan, beda ngon Hajj, jeuet geulaksana saban masa dalam sataon. Walaupun hana wajib, Umrah meugandung pahla rohani nyang raya dan geuanggap sabagé ibadah nyang sangat disaran. Umrah meusyareukat beurapa ritual ngon Hajj, tapi leubèh singkat, nyang meuisi peuët ritual utama.';

  @override
  String get voiceInputTitle => 'Input Suara';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Bicara input Anda untuk Ask Ayara daripada mengetik.';

  @override
  String get voiceInputMicDenied => 'Akses mikrofon ditolak.';

  @override
  String get voiceInputSpeak => 'Bicara sebaliknya';

  @override
  String get voiceInputListening => 'Mendengarkan…';

  @override
  String get voiceInputPermissionDenied =>
      'Akses mikrofon diperlukan untuk input suara.';
}
