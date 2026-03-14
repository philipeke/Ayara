// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Odaberite svoj jezik';

  @override
  String get languageSelectSub => 'Ovo kasnije možete promijeniti u Postavkama';

  @override
  String get actionContinue => 'Nastavi';

  @override
  String get languageSuggestedHeader => 'Predloženo';

  @override
  String get languageAllHeader => 'Svi jezici';

  @override
  String get languageSuggestedBadge => 'Predloženo';

  @override
  String get languageSearchHint => 'Pretraži…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Dnevno vodstvo';

  @override
  String get categorySlot02 => 'Iman i povjerenje';

  @override
  String get categorySlot03 => 'Razmišljanje o molitvi';

  @override
  String get categorySlot04 => 'Strpljenje i nada';

  @override
  String get categorySlot05 => 'Traži oprost';

  @override
  String get categorySlot06 => 'Milosrđe i suosjećanje';

  @override
  String get categorySlot07 => 'Snaga vjere';

  @override
  String get categorySlot08 => 'Zahvalno srce';

  @override
  String get categorySlot09 => 'Svrha života';

  @override
  String get categorySlot10 => 'Obiteljske veze';

  @override
  String get categorySlot11 => 'Unutarnji mir';

  @override
  String get categorySlot12 => 'Mudrost Poslanika';

  @override
  String get categorySlot13 => 'Dobar karakter';

  @override
  String get categorySlot14 => 'Odupri se iskušenju';

  @override
  String get categorySlot15 => 'Večernji zikr';

  @override
  String get categoryCustom => 'Osobno razmišljanje';

  @override
  String get dhikrMeaningSubhanallah => 'Slavljen neka je Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Sva hvala pripada Allahu';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah je najveći';

  @override
  String get quranVerseHeartAtRest =>
      'Zaista, u spominjanju Allaha srca nalaze smiraj.';

  @override
  String get promptHint =>
      'Dodirnite kategoriju za islamsko vodstvo i razmišljanje';

  @override
  String get currentLanguage => 'Trenutni jezik';

  @override
  String get settingsLanguage => 'Postavke jezika';

  @override
  String get settingsTitle => 'Postavke';

  @override
  String get chooseLanguage => 'Odaberite svoj jezik';

  @override
  String get continueCta => 'Nastavi';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count riječi',
      one: '$count riječ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opcije';

  @override
  String get newCta => 'Novo';

  @override
  String get actionsTitle => 'Što želite učiniti?';

  @override
  String get copy => 'Kopiraj';

  @override
  String get share => 'Podijeli';

  @override
  String get close => 'Zatvori';

  @override
  String get copiedToast => 'Kopirano u međuspremnik';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Nije moguće generirati novi odgovor';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nŽelite li pokušati ponovno?';
  }

  @override
  String get cancelCta => 'Odustani';

  @override
  String get retryCta => 'Pokušaj ponovno';

  @override
  String get authTitle => 'Izradite svoj račun';

  @override
  String get continueAsGuest => 'Nastavi kao gost';

  @override
  String get signInGoogle => 'Prijava putem Googlea';

  @override
  String get signInApple => 'Prijava putem Applea';

  @override
  String get signInEmail => 'Prijava putem e-pošte';

  @override
  String get upgradeWithApple => 'Nastavi s Appleom';

  @override
  String get mustAccept =>
      'Morate prihvatiti Uvjete i potvrditi Pravila privatnosti.';

  @override
  String get termsLabel => 'Prihvaćam Uvjete korištenja';

  @override
  String get privacyLabel => 'Pročitao/la sam Pravila privatnosti';

  @override
  String get marketingOptIn => 'Pristajem primati novosti i ponude';

  @override
  String get openTerms => 'Uvjeti korištenja';

  @override
  String get openPrivacy => 'Pravila privatnosti';

  @override
  String get accountSection => 'Račun';

  @override
  String get guestMode => 'Gostujući način';

  @override
  String get signedIn => 'Prijavljen/a';

  @override
  String get upgradeHint =>
      'Spremite svoja razmišljanja na svim uređajima izradom računa.';

  @override
  String get upgradeWithGoogle => 'Nastavi s Googleom';

  @override
  String get signOut => 'Odjava';

  @override
  String get snackUpgraded => 'Račun nadograđen putem Googlea ✅';

  @override
  String get snackSignedIn => 'Prijava putem Googlea ✅';

  @override
  String get snackSignedOut => 'Odjavljen/a';

  @override
  String get snackSignedInApple => 'Prijava putem Applea ✅';

  @override
  String get snackSignedInGoogle => 'Prijava putem Googlea ✅';

  @override
  String get snackUpgradedApple => 'Račun nadograđen putem Applea ✅';

  @override
  String get snackUpgradedGoogle => 'Račun nadograđen putem Googlea ✅';

  @override
  String get historyTitle => 'Prethodna razmišljanja';

  @override
  String get historyOpenCta => 'Prethodna razmišljanja';

  @override
  String get historyEmpty => 'Još nema spremljenih razmišljanja.';

  @override
  String get historyDeleteTitle => 'Izbrisati razmišljanje?';

  @override
  String get historyDeleteBody => 'Ovo će trajno ukloniti odabranu stavku.';

  @override
  String get deleteCta => 'Izbriši';

  @override
  String get historyButton => 'Prethodna razmišljanja';

  @override
  String get historyEmptyTitle => 'Još nema razmišljanja';

  @override
  String get historyEmptyBody =>
      'Najprije nešto generirajte — vaše spremljene stavke pojavit će se ovdje.';

  @override
  String get historyDelete => 'Izbriši';

  @override
  String get footerTitle => 'S Wilayom, Imanom i Sabrom';

  @override
  String get footerSubtitle => 'Jedna molitva odjednom';

  @override
  String get genericErrorSnack =>
      'Nešto je pošlo po zlu — pokušajte ponovno za trenutak.';

  @override
  String get upgradeAccountCta =>
      'Spremite svoja razmišljanja na svim uređajima – izradite račun';

  @override
  String get deleteAccount => 'Izbriši račun';

  @override
  String get exportData => 'Izvezi moje podatke';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Polako 🐯\nAyari treba trenutak prije sljedećeg…';

  @override
  String get rateDailyLimit =>
      'Trenutačno ste ostali bez razmišljanja.\nNabavite više razmišljanja ili nadogradite na Wilayu.';

  @override
  String get rateCreditsExhausted =>
      'Iskoristili ste sva svoja razmišljanja.\nNadoplatite ili nadogradite na Wilayu za nastavak.';

  @override
  String get rateGraceCreditsExhausted =>
      'Trenutačno ste ostali bez razmišljanja.\nNabavite više razmišljanja ili nadogradite na Wilayu.';

  @override
  String get premiumDescription =>
      'Wilaya otključava premium značajke, buduće kategorije i posebnu oznaku.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vaša su razmišljanja trenutačno iscrpljena. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nije bilo moguće provjeriti vaša razmišljanja: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Nešto je pošlo po zlu tijekom provjere vaših razmišljanja.';

  @override
  String get aiFallbackGeneric =>
      'Nešto je pošlo po zlu — pokušajte ponovno za trenutak.';

  @override
  String get limitSectionTitle => 'Razmišljanja';

  @override
  String get limitTodayLabel => 'Korištenje';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Preostala razmišljanja: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Učitavanje…';

  @override
  String get limitLoadingLabelDescription =>
      'Prikazuje se na kartici razmišljanja tijekom dohvaćanja statistike korištenja.';

  @override
  String get aiLimitTitle => 'Razmišljanja';

  @override
  String get aiLimitSubtitle =>
      'Svaki odgovor koristi 1 razmišljanje. Standard uključuje početna razmišljanja. Wilaya otključava premium kategorije i omogućuje nadopune.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total iskorištenih razmišljanja';
  }

  @override
  String get creditsSectionTitle => 'Razmišljanja';

  @override
  String get creditsUsageLabel => 'Korištenje';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Preostala razmišljanja: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Učitavanje…';

  @override
  String get creditsLoadingLabelDescription =>
      'Prikazuje se tijekom dohvaćanja statistike razmišljanja.';

  @override
  String get creditsTitle => 'Razmišljanja';

  @override
  String get creditsSubtitle =>
      'Svaki odgovor koristi 1 razmišljanje. Standard uključuje početna razmišljanja. Wilaya otključava premium kategorije i omogućuje nadopune.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total iskorištenih razmišljanja';
  }

  @override
  String get settingsDeleteTitle => 'Izbriši račun';

  @override
  String get settingsDeleteDescription =>
      'Trajno izbrišite svoj račun i sve povezane podatke.';

  @override
  String get settingsDeleteButtonLabel => 'Izbriši moj račun';

  @override
  String get settingsDeleteDialogTitle => 'Izbrisati račun?';

  @override
  String get settingsDeleteDialogBody =>
      'Ova je radnja trajna i ne može se poništiti.\n\nSvi vaši razgovori, povijest i podaci računa bit će izbrisani.';

  @override
  String get settingsDeleteDialogCancel => 'Odustani';

  @override
  String get settingsDeleteDialogConfirm => 'Izbriši';

  @override
  String get settingsFreeLimitUsedTitle => 'Početna razmišljanja iskorištena';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Početna razmišljanja za ovaj uređaj su iskorištena. Nadogradite na Wilayu ili kupite još razmišljanja za nastavak.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Početna razmišljanja iskorištena';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Početna razmišljanja za ovaj uređaj su iskorištena. Nadogradite na Wilayu ili kupite još razmišljanja za nastavak.';

  @override
  String get deviceBoundError =>
      'Ovaj je uređaj već povezan s drugim računom. Prijavite se s izvornim računom.';

  @override
  String get premiumTitle => 'Wilaya način';

  @override
  String get premiumSubtitleBasic => 'Otključajte potpuno Ayara iskustvo.';

  @override
  String get premiumSubtitlePremium =>
      'Na Wilayi ste. Trebate još razmišljanja?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Trenutni plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Razmišljanja: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Kupnje trenutno nisu dostupne.';

  @override
  String get premiumSignInToPurchase =>
      'Prijavite se kako biste kupili razmišljanja ili otključali Wilayu.';

  @override
  String get premiumRestorePurchases => 'Vrati kupnje';

  @override
  String get premiumProcessing => 'Obrada…';

  @override
  String get premiumRestoreHintTitle =>
      'Već ste kupili Wilayu ili razmišljanja na ovom ili drugom uređaju?';

  @override
  String get premiumRestoreHintBody =>
      'Vratite svoje kupnje ako se ne prikazuju.';

  @override
  String get premiumBuyCredits200 => 'Kupi 200 razmišljanja';

  @override
  String get premiumBuyCredits400 => 'Kupi 400 razmišljanja';

  @override
  String get premiumBecomePremiumOneTime => 'Nadogradi na Wilaya način';

  @override
  String get premiumTopupHint =>
      'S Wilayom možete nadopuniti dodatna razmišljanja kad god vam zatrebaju.';

  @override
  String get premiumUpgradeCta => 'Nadogradi';

  @override
  String get premiumRequiredForCategory =>
      'Ova je kategorija dostupna samo korisnicima Wilaye. Nadogradite u Postavkama kako biste otključali sav premium sadržaj.';

  @override
  String get premiumBenefitsBasic =>
      'Otključajte Wilayu kako biste dobili dodatna razmišljanja, pristup premium kategorijama i nastavili kad god trebate vodstvo.';

  @override
  String get premiumBenefitsPremium =>
      'U Wilayi ste. Ako vam ponestaje, dodajte još razmišljanja i nastavite bez prekida.';

  @override
  String get premiumButtonBecomePremium => 'Otključaj Wilayu';

  @override
  String get premiumButtonTopup1000 => 'Dodaj 1000 razmišljanja';

  @override
  String get premiumBadge => 'Wilaya aktivna';

  @override
  String get premiumLoadingStore => 'Učitavanje trgovine…';

  @override
  String get premiumProductNotAvailable =>
      'Ovaj proizvod još nije dostupan u trgovini. Pokušajte ponovno kasnije.';

  @override
  String get premiumPurchaseError =>
      'Nešto je pošlo po zlu s kupnjom. Pokušajte ponovno.';

  @override
  String get premiumBuyCredits100 => 'Dodaj 100 razmišljanja';

  @override
  String get premiumFeatureLocked =>
      'Otključajte Wilayu za pristup ovoj značajci.';

  @override
  String get lockedCategoriesHint =>
      'Neke su kategorije rezervirane za članove Wilaye. Otključajte ih kako biste istražili svako razmišljanje na svom putovanju.';

  @override
  String get freePlanBlockedTitle =>
      'Iskoristili ste svoja početna razmišljanja';

  @override
  String get freePlanBlockedBody =>
      'Na Standard planu ste s početnim razmišljanjima i dosegnuli ste ograničenje. Za nastavak — i otključavanje premium kategorija — nadogradite na Wilayu.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Pogledajte opcije Wilaye u nastavku';

  @override
  String get graceBlockedTitle => 'Iskoristili ste svoja početna razmišljanja';

  @override
  String get graceBlockedBody =>
      'Na Standard planu ste s početnim razmišljanjima i dosegnuli ste ograničenje. Za nastavak — i otključavanje premium kategorija — nadogradite na Wilayu.';

  @override
  String get graceBlockedCtaGoPremium => 'Pogledajte opcije Wilaye u nastavku';

  @override
  String get rateGuestMustSignIn =>
      'Prijavite se za korištenje Ayare i svojih razmišljanja.';

  @override
  String get guestNoCreditsTitle => 'Gostujući način';

  @override
  String get guestNoCreditsBody =>
      'Kao gost možete pregledavati aplikaciju, ali ne možete koristiti razmišljanja. Prijavite se kasnije u Postavkama kako biste koristili razmišljanja i otključali kupnje.';

  @override
  String get guestDialogContinue => 'Nastavi';

  @override
  String get guestDialogLoginInstead => 'Umjesto toga prijavite se';

  @override
  String get optionalLabel => 'neobavezno';

  @override
  String get accountDeleteSuccessTitle => 'Račun izbrisan';

  @override
  String get accountDeleteSuccessBody =>
      'Vaš račun i povezani podaci uspješno su izbrisani.';

  @override
  String get accountDeleteSuccessClose => 'Zatvori';

  @override
  String get accountDeleteErrorTitle => 'Nije moguće izbrisati račun';

  @override
  String get accountDeleteErrorClose => 'U redu';

  @override
  String get accountDeleteReauthCancelled =>
      'Ponovna autentifikacija je otkazana. Prijavite se ponovno i pokušajte brisanje još jednom.';

  @override
  String get accountDeleteReauthRequired =>
      'Brisanje računa zahtijeva nedavnu prijavu. Odjavite se, prijavite ponovno i pokušajte još jednom.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ova je radnja trajna i ne može se poništiti. Svi podaci povezani s vašim računom bit će izbrisani.';

  @override
  String get dailyGraceTitle => 'Dnevno vodstvo';

  @override
  String get dailyGraceScriptureLabel => 'AJET DANA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA TJEDNA';

  @override
  String get dailyGraceReflectionLabel => 'VEČERNJE RAZMIŠLJANJE';

  @override
  String get dailyGraceCopiedToast => 'Ajet kopiran u međuspremnik';

  @override
  String get locationConsentLabel =>
      'Dopusti Ayari korištenje moje lokacije za smjer kible i vremena molitve';

  @override
  String get locationConsentHint =>
      'Koristi se samo za ove značajke. Vaša lokacija nikada se ne dijeli niti pohranjuje.';

  @override
  String get askPageTitle => 'Pitaj Ayaru';

  @override
  String get askPageDescription =>
      'Postavite bilo koje pitanje o vjeri, molitvi, životu ili islamskoj praksi i primite vodstvo utemeljeno na Kuranu i učenjima Ahl al-Bayta.';

  @override
  String get askPageInputHint => 'Upišite svoje pitanje ovdje…';

  @override
  String get askPageSubmitCta => 'Pitaj';

  @override
  String get askPageInputEmptyError => 'Najprije napišite pitanje.';

  @override
  String get askResultYourQuestion => 'Vaše pitanje';

  @override
  String get guidancePageTitle => 'Kibla';

  @override
  String get qiblaFacingMecca => 'Okrenuto prema Meki';

  @override
  String get qiblaCompassInstruction =>
      'Okrećite telefon dok zlatna igla ne pokaže prema gore.\nTaj smjer pokazuje prema kibli (Meki).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal je slab. Izađite van i dodirnite Pokušaj ponovno.';

  @override
  String get qiblaRetry => 'Pokušaj ponovno';

  @override
  String get qiblaTitle => 'Smjer kible';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km do Meke';
  }

  @override
  String get qiblaLocationNeededTitle => 'Potrebna je lokacija';

  @override
  String get qiblaLocationNeededBody =>
      'Dopustite pristup lokaciji kako bi Ayara mogla izračunati smjer Kabe u Meki s mjesta na kojem se nalazite.';

  @override
  String get qiblaOpenSettings => 'Otvori Postavke';

  @override
  String get qiblaCompassLoading => 'Pronalaženje vaše lokacije…';

  @override
  String get qiblaTowardMecca => 'Prema Meki';

  @override
  String get prayerTimesTitle => 'Vremena molitve';

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
  String get prayerTimesLocationNeededTitle => 'Potrebna je lokacija';

  @override
  String get prayerTimesLocationNeededBody =>
      'Dopustite pristup lokaciji kako bi Ayara mogla izračunati točna vremena molitve za vaš grad.';

  @override
  String get prayerTimesNextLabel => 'Sljedeće';

  @override
  String get prayerTimesDoneLabel => 'Gotovo';

  @override
  String get monthlyPrayerTimesTitle => 'Mjesečna vremena molitve';

  @override
  String get monthlyPrayerTimesViewButton => 'Prikaži cijeli mjesec';

  @override
  String get monthlyPrayerTimesNextMonth => 'Sljedeći mjesec';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dan';

  @override
  String get sharePrayerTimes => 'Podijeli vremena molitve';

  @override
  String get notificationsSectionTitle => 'Obavijesti';

  @override
  String get notificationsSectionSubtitle =>
      'Podsjetnici za molitvu, kalendarski događaji i više';

  @override
  String get dailyReflectionReminderTitle => 'Dnevno razmišljanje';

  @override
  String get dailyReflectionReminderDescription =>
      'Nježan dnevni podsjetnik da otvorite Ayaru i povežete se sa svojom vjerom.';

  @override
  String get dailyReflectionReminderEnable => 'Omogući dnevni podsjetnik';

  @override
  String get dailyReflectionReminderTimeLabel => 'Vrijeme podsjetnika';

  @override
  String get prayerNotificationsTitle => 'Podsjetnici za molitvu';

  @override
  String get prayerNotificationsDescription =>
      'Primite nježan podsjetnik prije svakog vremena molitve kako biste ostali povezani tijekom dana.';

  @override
  String get prayerNotificationsEnable => 'Omogući podsjetnike za molitvu';

  @override
  String get prayerNotificationsOpenSettings => 'Otvori postavke obavijesti';

  @override
  String get prayerNotificationsDenied => 'Obavijesti su onemogućene';

  @override
  String get prayerNotificationsDeniedHint =>
      'Idite u Postavke i dopustite obavijesti za Ayaru kako biste primali podsjetnike za vrijeme molitve.';

  @override
  String get notificationsConsentLabel =>
      'Dopusti obavijesti za vremena molitve';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Zorna molitva';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr je molitva jutara Ahl al-Bayta. Imam Ali (AS) je rekao: Čuvajte zornu molitvu kao što čuvate svoje najdragocjenije povjerenje. Ustanite, očistite se i stanite pred Allaha.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Podnevna molitva';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imami Ahl al-Bayta cijenili su svaki trenutak zikra. Zaustavite svoj dan, spojite Dhuhr s Asrom ako je potrebno i vratite svoje srce Allahu.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Poslijepodnevna molitva';

  @override
  String get prayerNotifBodyAsr =>
      'Čuvajte molitvu, jer ona je savez između vas i Allaha. Vrijeme Asra je došlo — ne dopustite da prođe bez zikra.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Molitva zalaska sunca';

  @override
  String get prayerNotifBodyMaghrib =>
      'Sunce je zašlo — trenutak koji je Ahl al-Bayt smatrao svetim za dovu. Klanjajte Maghrib i podignite ruke Allahu u dovi prije nego što noć započne.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Noćna molitva';

  @override
  String get prayerNotifBodyIsha =>
      'Završite svoj dan u Allahovom društvu. Imami su poticali Salat al-Layl nakon Ishe — ali najprije obavite Ishu i završite dan Njegovim spominjanjem.';

  @override
  String get outOfReflectionsBannerText =>
      'Iskoristili ste sva svoja razmišljanja';

  @override
  String get outOfReflectionsBannerCta => 'Nabavi još';

  @override
  String get dhikrPageTitle => 'Zikr';

  @override
  String get dhikrTapToCount => 'Dodirnite krug za brojanje';

  @override
  String get dhikrResetButton => 'Resetiraj';

  @override
  String get dhikrComplete => 'Maša\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Završili ste 100 Allahovih spominjanja. Neka budu svjetlo vašem srcu.';

  @override
  String get disclaimerTitle => 'O smjernicama ove aplikacije';

  @override
  String get disclaimerBody =>
      'Ayara pruža islamska razmišljanja, podsjetnike i duhovni sadržaj kako bi podržala vaše osobno putovanje vjere, utemeljeno na Kuranu i učenjima Ahl al-Bayta. Ovaj je sadržaj namijenjen isključivo za opće informativne i inspirativne svrhe.\n\nAyara ne zamjenjuje kvalificirano vjersko znanje.\nSmjernice u ovoj aplikaciji nisu zamjena za učenog islamskog učenjaka, marja\'a ili teološki obrazovanog učitelja. U šiitskom islamu vjersko vodstvo ukorijenjeno je u džaferskoj školi jurisprudencije (fiqhu) i tradiciji slijeđenja živućeg Marja\'a (izvora oponašanja) — kvalificiranog pravnika čije presude usmjeravaju vjernike u vjerskoj praksi. Ako imate pitanja o vjerskim propisima, halal i haram pitanjima ili osobnim vjerskim obvezama, potražite savjet od kvalificiranog Marja\'a ili učenjaka u svojoj zajednici.\n\nOva aplikacija ne izdaje vjerske presude.\nAyara ne donosi autoritativne odluke o pitanjima fiqha ili osobnih vjerskih obveza. Ništa ovdje ne treba smatrati fetvom ili obvezujućom vjerskom uputom.\n\nSredišnje mjesto Ahl al-Bayta.\nU šiitskom islamu, Poslanik Muhammed ﷺ i njegova čista obitelj — Ahl al-Bayt — autoritativni su vodiči islamske zajednice nakon Kurana. Dvanaest imama Ahl al-Bayta božanski su imenovani tumači islamskog učenja. Sadržaj ove aplikacije odražava tu tradiciju i nastoji je vjerno poštovati.\n\nPitanja zajednice.\nOva aplikacija nastoji potaknuti vaš angažman s vjerom uz duboko poštovanje prema važnoj ulozi vaše lokalne džamije, islamskog centra i vjerske zajednice. Potičemo vas da ostanete povezani s kvalificiranim učiteljima u svojoj blizini i da učite od njih.';

  @override
  String get disclaimerClose => 'Razumijem';

  @override
  String get disclaimerInfoTooltip => 'O smjernicama ove aplikacije';

  @override
  String get disclaimerSettingsSubtitle =>
      'Samo za opće informativne svrhe. Dodirnite za čitanje cijelog odricanja od odgovornosti.';

  @override
  String get disclaimerSectionHeader =>
      'Odricanje od odgovornosti za smjernice';

  @override
  String get navHome => 'Početna';

  @override
  String get navReflect => 'Razmišljaj';

  @override
  String get navDuas => 'Dove';

  @override
  String get navCalendar => 'Kalendar';

  @override
  String get dashboardToday => 'DANAS';

  @override
  String get dashboardComingUp => 'Uskoro';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dana',
      one: 'dan',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Brzi pristup';

  @override
  String get quickActionQibla => 'Kibla';

  @override
  String get quickActionDhikr => 'Zikr';

  @override
  String get quickActionDailyGrace => 'Vodstvo';

  @override
  String get quickActionPrayerTimes => 'Vremena molitve';

  @override
  String get askAyaraTitle => 'Pitaj Ayaru';

  @override
  String get askAyaraSubtitle =>
      'Postavite bilo koje islamsko pitanje i primite promišljen, vođen odgovor.';

  @override
  String get askAyaraHint => 'npr. Koje je značenje Ramazana?';

  @override
  String get askAyaraSubmit => 'Pitaj';

  @override
  String get wisdomOfTheDayTitle => 'Mudrost dana';

  @override
  String get calendarScreenTitle => 'Islamski kalendar';

  @override
  String get calendarUpcomingOccasions => 'Nadolazeće prigode';

  @override
  String get calendarOccasionRemindersTitle => 'Podsjetnici za prigode';

  @override
  String get calendarOccasionRemindersHint =>
      'Obavijest večer prije svake prigode';

  @override
  String get calendarNotifPermissionDenied =>
      'Dopuštenje za obavijesti odbijeno. Omogućite ga u postavkama uređaja.';

  @override
  String get calendarNoEvents => 'Nema nadolazećih događaja.';

  @override
  String get calendarAddToPhone => 'Dodaj u kalendar telefona';

  @override
  String get calendarAddedToPhone => 'Dodano u kalendar';

  @override
  String get calendarCountdownToday => 'DANAS';

  @override
  String get calendarCountdownTomorrow => 'SUTRA';

  @override
  String calendarCountdownDays(int days) {
    return 'za $days dana';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Sij';

  @override
  String get calendarMonthFeb => 'Velj';

  @override
  String get calendarMonthMar => 'Ožu';

  @override
  String get calendarMonthApr => 'Tra';

  @override
  String get calendarMonthMay => 'Svi';

  @override
  String get calendarMonthJun => 'Lip';

  @override
  String get calendarMonthJul => 'Srp';

  @override
  String get calendarMonthAug => 'Kol';

  @override
  String get calendarMonthSep => 'Ruj';

  @override
  String get calendarMonthOct => 'Lis';

  @override
  String get calendarMonthNov => 'Stu';

  @override
  String get calendarMonthDec => 'Pro';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dani Muharrema — sjećanje na Karbalu';

  @override
  String get calendarSeasonAshura => 'Ašura — Ja Husejne (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharrem — dani žalosti i razmišljanja';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — četrdeset dana Husejna';

  @override
  String get calendarSeasonRoadToArbaeen => 'Put prema Arbaeenu';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — zora objave';

  @override
  String get calendarSeasonMidShaban =>
      'Sredina Ša\'bana — rođendan imama al-Mahdija (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mjesec Kurana';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak!';

  @override
  String get hijriMonth1 => 'Muharrem';

  @override
  String get hijriMonth2 => 'Safer';

  @override
  String get hijriMonth3 => 'Rabi\' al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi\' al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Awwal';

  @override
  String get hijriMonth6 => 'Jumada al-Thani';

  @override
  String get hijriMonth7 => 'Radžab';

  @override
  String get hijriMonth8 => 'Ša\'ban';

  @override
  String get hijriMonth9 => 'Ramazan';

  @override
  String get hijriMonth10 => 'Ševval';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hidždža';

  @override
  String get duasScreenTitle => 'Dove i zijarati';

  @override
  String get duasSearchHint => 'Pretraži dove, zijarate…';

  @override
  String get duasFilterAll => 'Sve';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dove i zijarati',
      one: '$count dova',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nema pronađenih dova.';

  @override
  String get duaCategoryDaily => 'Dnevno';

  @override
  String get duaCategoryWeekly => 'Tjedno';

  @override
  String get duaCategoryOccasions => 'Prigode';

  @override
  String get duaCategoryZiyarat => 'Zijarat';

  @override
  String get duaCategoryTasbih => 'Tesbih';

  @override
  String get eventTypeBirth => 'Rođenje';

  @override
  String get eventTypeMartyrdom => 'Mučeništvo';

  @override
  String get eventTypeOccasion => 'Prigoda';

  @override
  String get duaCopyTooltip => 'Kopiraj prijevod';

  @override
  String get duaToggleTransliteration => 'Transliteracija';

  @override
  String get duaToggleTranslation => 'Prijevod';

  @override
  String get duaAskAiLabel => 'Pitaj Ayaru da objasni ovu dovu';

  @override
  String get duaAskAiLockedLabel => 'Pitaj Ayaru (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayarina objašnjenja dostupna su članovima Wilaye. Nadogradite u Postavkama.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pitaj Ayaru o \"$name\" — uskoro!';
  }

  @override
  String get duaCopiedToast => 'Dova kopirana u međuspremnik.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah je najveći';

  @override
  String get tasbihAlhamdulillahMeaning => 'Sva hvala pripada Allahu';

  @override
  String get tasbihSubhanallahMeaning => 'Slavljen neka je Allah';

  @override
  String get tasbihResetTooltip => 'Resetiraj';

  @override
  String get tasbihCompleteTitle => 'Tesbih dovršen';

  @override
  String get tasbihCompleteMessage => 'Neka Allah primi vaš zikr.';

  @override
  String get tasbihTapHint => 'Dodirnite bilo gdje za brojanje';

  @override
  String get tasbihatScreenTitle => 'Vodič za molitvu';

  @override
  String get tasbihatScreenSubtitle => 'MOLITVENA VELIČANJA';

  @override
  String get tasbihatScreenDescription =>
      'Potpun vodič za veličanja koja se uče tijekom i nakon dnevnih molitvi — slijedeći tradiciju Ahl al-Bayta (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Uči se tijekom 3. i 4. rekata';

  @override
  String get tasbihatArba3Info =>
      'U šiitskoj jurisprudenciji, Tasbiḥāt al-Arbaʿa zamjenjuje suru al-Fatihu u 3. i 4. rekatu Dhuhr, Asr, Maghrib i Isha namaza. Obavezno je (wājib) proučiti ga jednom, a preporučeno (mustaḥabb) tri puta.';

  @override
  String get tasbihatArba3Translation =>
      'Slavljen neka je Allah · Sva hvala pripada Allahu\nNema boga osim Allaha · Allah je najveći';

  @override
  String get tasbihatArba3CompleteTitle => 'Učenje dovršeno';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Neka vaša molitva bude primljena — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Dodirnite nakon svakog učenja';

  @override
  String get tasbihatZahraSubtitle => 'Nakon svake molitve · 100 zrna';

  @override
  String get tasbihatZahraOriginLabel => 'Podrijetlo';

  @override
  String get tasbihatZahraHadith =>
      'Hazreti Fatima al-Zahra (sa) zatražila je od Poslanika ﷺ slugu. On je rekao: \"Zar da te ne uputim na nešto bolje? Nakon svake molitve prouči Subḥānallāh 33 puta, Alḥamdulillāh 33 puta i Allāhu Akbar 34 puta. To je za tebe bolje od sluge.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, sv. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Otvori brojač tasbīha';

  @override
  String get tasbihatDuasTitle => 'PREPORUČENE DOVE';

  @override
  String get tasbihatDuasSubtitle => 'Nakon završetka molitve';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ājat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Nakon svake obavezne molitve';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sura al-Baqara 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Tko prouči Ājat al-Kursī nakon svake obavezne molitve, između njega i Dženneta ne stoji ništa osim smrti. Imam al-Bāqir (a) rekao je da je to među najvećim ajetima u Kuranu.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Nakon svake molitve · pečati sve dove';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Slanje salavata na Poslanika ﷺ i njegovu čistu obitelj (Āl Muḥammad) preporučuje se kao pečat svake dove. Imam al-Ṣādiq (a) rekao je: \"Svaka dova ostaje suspendirana dok ne pošalješ ṣalawāt na Muhammeda i njegovu obitelj.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Nakon svake molitve · za imama našeg vremena';

  @override
  String get tasbihatDuaFarajSource => 'Podučio imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua za ponovni dolazak Imama al-Mahdīja (af), dvanaestog Imama, koju je podučio njegov otac. Često je izgovaraju mnogi šiitski muslimani nakon molitve kao čin odanosti živom Imamu.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ hazreti Fāṭime';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Nakon Maghriba i Ishe · posebno preporučeno';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) rekao je da je učenje Tasbīḥ al-Zahrā nakon Ishe prije spavanja bolje od 1000 rekata dobrovoljne molitve. Njegovo svjetlo uzdiže se do nebesa.';

  @override
  String get tasbihFatimaGiftPre => 'Dar od Poslanika';

  @override
  String get tasbihFatimaGiftPost => 'uči se nakon svake molitve';

  @override
  String get prayerTrackerTitle => 'PRAĆENJE MOLITVE';

  @override
  String get prayerTrackerPrayed => 'Klanjano';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dana zaredom';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Sve su molitve danas dovršene. Neka Allah primi.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Dovršeno danas';

  @override
  String get dhikrTrackerNotDoneToday => 'Nije učinjeno danas';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dana zaredom';
  }

  @override
  String get dhikrReminderTitle => 'Podsjetnik za tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Nježan dnevni podsjetnik za učenje vašeg Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Omogući podsjetnik za tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Vrijeme podsjetnika';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Dnevni hadis';

  @override
  String get hadithLabelArabic => 'ARAPSKI';

  @override
  String get hadithLabelTranslation => 'PRIJEVOD';

  @override
  String get hadithBadge => 'HADIS';

  @override
  String get hadithShare => 'Podijeli ovaj hadis';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPutem Ayare';
  }

  @override
  String get hadithNavPrevious => 'Prethodno';

  @override
  String get hadithNavNext => 'Sljedeće';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Četrnaest nepogrešivih';

  @override
  String get imamsScreenSubtitle =>
      'Poslanik, gospođa Fatima i dvanaest Imama — pročišćeni i nepogrešivi vođe u dvanaestoj šiitskoj islamu';

  @override
  String get imamLabelBorn => 'Rođen';

  @override
  String get imamLabelMartyrdom => 'Mučeništvo';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIJA';

  @override
  String get imamSectionFamousSaying => 'POZNATA IZREKA';

  @override
  String get imamRoleProphet => 'Posljednji Poslanik';

  @override
  String get imamRoleInfallible => 'Bezgrješni';

  @override
  String get imamOrdinal1 => '1. imam';

  @override
  String get imamOrdinal2 => '2. imam';

  @override
  String get imamOrdinal3 => '3. imam';

  @override
  String get imamOrdinal4 => '4. imam';

  @override
  String get imamOrdinal5 => '5. imam';

  @override
  String get imamOrdinal6 => '6. imam';

  @override
  String get imamOrdinal7 => '7. imam';

  @override
  String get imamOrdinal8 => '8. imam';

  @override
  String get imamOrdinal9 => '9. imam';

  @override
  String get imamOrdinal10 => '10. imam';

  @override
  String get imamOrdinal11 => '11. imam';

  @override
  String get imamOrdinal12 => '12. imam';

  @override
  String get duaAudioScreenTitle => 'Slušaj dove';

  @override
  String get duaAudioScreenSubtitle =>
      'Odaberite dovu za slušanje. Dodirnite pločicu za reprodukciju ili pauzu.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio za ovu dovu bit će dostupan u nadolazećem ažuriranju.';

  @override
  String get duaAudioClose => 'Zatvori';

  @override
  String get duaAudioError =>
      'Nije moguće učitati audio. Provjerite svoju vezu.';

  @override
  String get duaAudioMetaTransmittedBy => 'Prenio';

  @override
  String get duaAudioMetaOccasion => 'Prigoda';

  @override
  String get duaAudioMetaDuration => 'Trajanje';

  @override
  String get quickActionDailyHadith => 'Dnevni hadis';

  @override
  String get quickAction14Masumeen => 'Četrnaest nepogrešivih';

  @override
  String get quickActionListenDuas => 'Slušaj';

  @override
  String get quickActionTasbihat => 'Vodič za molitvu';

  @override
  String get pilgrimageSectionTitle => 'Sveto putovanje';

  @override
  String get pilgrimageSectionSubtitle =>
      'Potpuni vodiči za hadž i umru — hodočašće Svetoj Allahovoj kući u Meki';

  @override
  String get hajjCardTitle => 'Hadž';

  @override
  String get hajjCardSubtitle => 'Peti stup islama';

  @override
  String get hajjCardDescription =>
      'Veliko godišnje hodočašće — obavezno jednom u životu za svakog sposobnog muslimana';

  @override
  String get hajjScreenTitle => 'Vodič za hadž';

  @override
  String get hajjScreenSubtitle => 'Vodič korak po korak za veliko hodočašće';

  @override
  String get umrahCardTitle => 'Umra';

  @override
  String get umrahCardSubtitle => 'Malo hodočašće';

  @override
  String get umrahCardDescription =>
      'Duboko nagrađujuće duhovno putovanje koje se može obaviti u bilo koje doba godine';

  @override
  String get umrahScreenTitle => 'Vodič za umru';

  @override
  String get umrahScreenSubtitle => 'Vodič korak po korak za malo hodočašće';

  @override
  String get pilgrimageStepsTitle => 'Obredi i koraci';

  @override
  String get pilgrimageImportantNotesTitle => 'Važne napomene';

  @override
  String get pilgrimageDuaTitle => 'Dua za ovaj korak';

  @override
  String get pilgrimageJafariNoteTitle => 'Napomena o Ja\'fari fiqhu';

  @override
  String get pilgrimageComplete => '✓ Završen';

  @override
  String get pilgrimageMarkDone => 'Označi kao dovršeno';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done od $total koraka';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Šiitski hodočasnici';

  @override
  String get pilgrimageShiaNoteBody =>
      'Mnogi šiitski hodočasnici također putuju u Medinu radi ziyarat Poslanika Muhammeda (SAW) u Masjid al-Nabawi i grobova u Džennetu al-Baqi. Ove posjete imaju duboko duhovno značenje, iako same po sebi nisu obredi Hadža.';

  @override
  String get hajjIntro =>
      'Hadž je peti stub Islama, obavezan jednom u životu za svakog muslimana koji je fizički i finansijski sposoban. Za većinu dvanaestih šiitskih hodočasnika danas, to znači Hadž al-Tamattu\', koji se obavlja u mjesecu Dhul Hijjah u stopama Poslanika Ibrahima (AS), njegovog sina Ismaila (AS) i gospođe Hajar. Ovaj vodič prati Džafari okvir obreda, dok ziyarat u Medini ostaje duboko cijenjeno putovanje prije ili nakon Hadža.';

  @override
  String get umrahIntro =>
      'Umra je malo hodočašće u Meku i, za razliku od hadža, može se obaviti u bilo koje doba godine. Iako nije obavezna, nosi golemu duhovnu nagradu i smatra se vrlo preporučenim činom ibadeta. Dijeli nekoliko obreda s hadžem, ali je kraća i sastoji se od četiri glavna obreda.';

  @override
  String get voiceInputTitle => 'Glasovni unos';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Govori svoj unos za Ask Ayara umjesto da tipkaš.';

  @override
  String get voiceInputMicDenied => 'Pristup mikrofonu je odbijen.';

  @override
  String get voiceInputSpeak => 'Govori umjesto';

  @override
  String get voiceInputListening => 'Slušam…';

  @override
  String get voiceInputPermissionDenied =>
      'Pristup mikrofonu je potreban za glasovni unos.';
}
