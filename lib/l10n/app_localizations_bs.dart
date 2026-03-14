// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Odaberite svoj jezik';

  @override
  String get languageSelectSub => 'Ovo možete kasnije promijeniti u Postavkama';

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
  String get categorySlot01 => 'Dnevna uputa';

  @override
  String get categorySlot02 => 'Iman i povjerenje';

  @override
  String get categorySlot03 => 'Razmišljanje o namazu';

  @override
  String get categorySlot04 => 'Strpljenje i nada';

  @override
  String get categorySlot05 => 'Traži oprost';

  @override
  String get categorySlot06 => 'Milost i saosjećanje';

  @override
  String get categorySlot07 => 'Snaga vjere';

  @override
  String get categorySlot08 => 'Zahvalno srce';

  @override
  String get categorySlot09 => 'Svrha života';

  @override
  String get categorySlot10 => 'Porodične veze';

  @override
  String get categorySlot11 => 'Unutrašnji mir';

  @override
  String get categorySlot12 => 'Mudrost Poslanika';

  @override
  String get categorySlot13 => 'Lijep ahlak';

  @override
  String get categorySlot14 => 'Odupri se iskušenju';

  @override
  String get categorySlot15 => 'Večernji zikr';

  @override
  String get categoryCustom => 'Lično razmišljanje';

  @override
  String get dhikrMeaningSubhanallah => 'Slava Allahu';

  @override
  String get dhikrMeaningAlhamdulillah => 'Sva hvala pripada Allahu';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah je najveći';

  @override
  String get quranVerseHeartAtRest =>
      'Zaista, srca se smiruju spominjanjem Allaha.';

  @override
  String get promptHint =>
      'Dodirnite kategoriju za islamsku uputu i razmišljanje';

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
  String get actionsTitle => 'Šta biste željeli uraditi?';

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
  String get regenerateErrorTitle => 'Nije bilo moguće generisati novi odgovor';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nŽelite li pokušati ponovo?';
  }

  @override
  String get cancelCta => 'Otkaži';

  @override
  String get retryCta => 'Pokušaj ponovo';

  @override
  String get authTitle => 'Kreirajte svoj račun';

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
      'Morate prihvatiti Uslove korištenja i potvrditi Politiku privatnosti.';

  @override
  String get termsLabel => 'Prihvatam Uslove korištenja';

  @override
  String get privacyLabel => 'Pročitao/la sam Politiku privatnosti';

  @override
  String get marketingOptIn => 'Slažem se da primam novosti i ponude';

  @override
  String get openTerms => 'Uslovi korištenja';

  @override
  String get openPrivacy => 'Politika privatnosti';

  @override
  String get accountSection => 'Račun';

  @override
  String get guestMode => 'Gost način';

  @override
  String get signedIn => 'Prijavljen/a';

  @override
  String get upgradeHint =>
      'Sačuvajte svoja razmišljanja na svim uređajima kreiranjem računa.';

  @override
  String get upgradeWithGoogle => 'Nastavi s Googleom';

  @override
  String get signOut => 'Odjava';

  @override
  String get snackUpgraded => 'Račun je nadograđen putem Googlea ✅';

  @override
  String get snackSignedIn => 'Prijavljeni ste putem Googlea ✅';

  @override
  String get snackSignedOut => 'Odjavljeni ste';

  @override
  String get snackSignedInApple => 'Prijavljeni ste putem Applea ✅';

  @override
  String get snackSignedInGoogle => 'Prijavljeni ste putem Googlea ✅';

  @override
  String get snackUpgradedApple => 'Račun je nadograđen putem Applea ✅';

  @override
  String get snackUpgradedGoogle => 'Račun je nadograđen putem Googlea ✅';

  @override
  String get historyTitle => 'Prethodna razmišljanja';

  @override
  String get historyOpenCta => 'Prethodna razmišljanja';

  @override
  String get historyEmpty => 'Još nema sačuvanih razmišljanja.';

  @override
  String get historyDeleteTitle => 'Obrisati razmišljanje?';

  @override
  String get historyDeleteBody => 'Ovo će trajno ukloniti odabranu stavku.';

  @override
  String get deleteCta => 'Obriši';

  @override
  String get historyButton => 'Prethodna razmišljanja';

  @override
  String get historyEmptyTitle => 'Još nema razmišljanja';

  @override
  String get historyEmptyBody =>
      'Prvo nešto generišite — vaši sačuvani sadržaji će se pojaviti ovdje.';

  @override
  String get historyDelete => 'Obriši';

  @override
  String get footerTitle => 'Sa Wilaya, Imanom i Sabrom';

  @override
  String get footerSubtitle => 'Jedna dova u isto vrijeme';

  @override
  String get genericErrorSnack =>
      'Nešto je pošlo po zlu — pokušajte ponovo za trenutak.';

  @override
  String get upgradeAccountCta =>
      'Sačuvajte svoja razmišljanja na svim uređajima – kreirajte račun';

  @override
  String get deleteAccount => 'Obriši račun';

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
      'Trenutno ste ostali bez razmišljanja.\nNabavite još razmišljanja ili nadogradite na Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Iskoristili ste sva svoja razmišljanja.\nDopunite ih ili nadogradite na Wilaya da nastavite.';

  @override
  String get rateGraceCreditsExhausted =>
      'Trenutno ste ostali bez razmišljanja.\nNabavite još razmišljanja ili nadogradite na Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya otključava premium funkcije, buduće kategorije i posebnu oznaku.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vaša razmišljanja su trenutno potrošena. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Provjera vaših razmišljanja nije uspjela: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Nešto je pošlo po zlu prilikom provjere vaših razmišljanja.';

  @override
  String get aiFallbackGeneric =>
      'Nešto je pošlo po zlu — pokušajte ponovo za trenutak.';

  @override
  String get limitSectionTitle => 'Razmišljanja';

  @override
  String get limitTodayLabel => 'Upotreba';

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
      'Prikazuje se na kartici razmišljanja dok se dohvaćaju statistike upotrebe.';

  @override
  String get aiLimitTitle => 'Razmišljanja';

  @override
  String get aiLimitSubtitle =>
      'Svaki odgovor koristi 1 razmišljanje. Standard uključuje početna razmišljanja. Wilaya otključava premium kategorije i omogućava dopune.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total iskorištenih razmišljanja';
  }

  @override
  String get creditsSectionTitle => 'Razmišljanja';

  @override
  String get creditsUsageLabel => 'Upotreba';

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
      'Prikazuje se dok se dohvaćaju statistike razmišljanja.';

  @override
  String get creditsTitle => 'Razmišljanja';

  @override
  String get creditsSubtitle =>
      'Svaki odgovor koristi 1 razmišljanje. Standard uključuje početna razmišljanja. Wilaya otključava premium kategorije i omogućava dopune.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total iskorištenih razmišljanja';
  }

  @override
  String get settingsDeleteTitle => 'Obriši račun';

  @override
  String get settingsDeleteDescription =>
      'Trajno izbrišite svoj račun i sve povezane podatke.';

  @override
  String get settingsDeleteButtonLabel => 'Obriši moj račun';

  @override
  String get settingsDeleteDialogTitle => 'Obrisati račun?';

  @override
  String get settingsDeleteDialogBody =>
      'Ova radnja je trajna i ne može se poništiti.\n\nSvi vaši razgovori, historija i podaci o računu bit će izbrisani.';

  @override
  String get settingsDeleteDialogCancel => 'Otkaži';

  @override
  String get settingsDeleteDialogConfirm => 'Obriši';

  @override
  String get settingsFreeLimitUsedTitle => 'Početna razmišljanja iskorištena';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Početna razmišljanja za ovaj uređaj su iskorištena. Nadogradite na Wilaya ili kupite još razmišljanja da nastavite.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Početna razmišljanja iskorištena';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Početna razmišljanja za ovaj uređaj su iskorištena. Nadogradite na Wilaya ili kupite još razmišljanja da nastavite.';

  @override
  String get deviceBoundError =>
      'Ovaj uređaj je već povezan s drugim računom. Prijavite se s originalnim računom.';

  @override
  String get premiumTitle => 'Wilaya način';

  @override
  String get premiumSubtitleBasic => 'Otključajte puno Ayara iskustvo.';

  @override
  String get premiumSubtitlePremium =>
      'Koristite Wilaya. Treba vam još razmišljanja?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Trenutni plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Razmišljanja: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Kupovine trenutno nisu dostupne.';

  @override
  String get premiumSignInToPurchase =>
      'Prijavite se da kupite razmišljanja ili otključate Wilaya.';

  @override
  String get premiumRestorePurchases => 'Vrati kupovine';

  @override
  String get premiumProcessing => 'Obrada…';

  @override
  String get premiumRestoreHintTitle =>
      'Već ste kupili Wilaya ili razmišljanja na ovom ili drugom uređaju?';

  @override
  String get premiumRestoreHintBody =>
      'Vratite svoje kupovine ako se ne prikazuju.';

  @override
  String get premiumBuyCredits200 => 'Kupi 200 razmišljanja';

  @override
  String get premiumBuyCredits400 => 'Kupi 400 razmišljanja';

  @override
  String get premiumBecomePremiumOneTime => 'Nadogradi na Wilaya način';

  @override
  String get premiumTopupHint =>
      'Uz Wilaya možete dopuniti dodatna razmišljanja kad god vam zatrebaju.';

  @override
  String get premiumUpgradeCta => 'Nadogradi';

  @override
  String get premiumRequiredForCategory =>
      'Ova kategorija je dostupna samo korisnicima Wilaya. Nadogradite u Postavkama da otključate sav premium sadržaj.';

  @override
  String get premiumBenefitsBasic =>
      'Otključajte Wilaya da dobijete dodatna razmišljanja, pristup premium kategorijama i nastavite kad god vam zatreba uputa.';

  @override
  String get premiumBenefitsPremium =>
      'Koristite Wilaya način. Ako vam ponestaje, dodajte još razmišljanja i nastavite bez prekida.';

  @override
  String get premiumButtonBecomePremium => 'Otključaj Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Dodaj 1000 razmišljanja';

  @override
  String get premiumBadge => 'Wilaya aktivna';

  @override
  String get premiumLoadingStore => 'Učitavanje trgovine…';

  @override
  String get premiumProductNotAvailable =>
      'Ovaj proizvod još nije dostupan u trgovini. Molimo pokušajte kasnije.';

  @override
  String get premiumPurchaseError =>
      'Došlo je do greške pri kupovini. Molimo pokušajte ponovo.';

  @override
  String get premiumBuyCredits100 => 'Dodaj 100 razmišljanja';

  @override
  String get premiumFeatureLocked =>
      'Otključajte Wilaya da pristupite ovoj funkciji.';

  @override
  String get lockedCategoriesHint =>
      'Neke kategorije su rezervisane za članove Wilaya. Otključajte ih da istražite svako razmišljanje na svom putu.';

  @override
  String get freePlanBlockedTitle =>
      'Iskoristili ste svoja početna razmišljanja';

  @override
  String get freePlanBlockedBody =>
      'Koristite Standard plan s početnim razmišljanjima i dostigli ste limit. Da nastavite — i otključate premium kategorije — nadogradite na Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Pogledajte opcije Wilaya ispod';

  @override
  String get graceBlockedTitle => 'Iskoristili ste svoja početna razmišljanja';

  @override
  String get graceBlockedBody =>
      'Koristite Standard plan s početnim razmišljanjima i dostigli ste limit. Da nastavite — i otključate premium kategorije — nadogradite na Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Pogledajte opcije Wilaya ispod';

  @override
  String get rateGuestMustSignIn =>
      'Prijavite se da koristite Ayaru i svoja razmišljanja.';

  @override
  String get guestNoCreditsTitle => 'Gost način';

  @override
  String get guestNoCreditsBody =>
      'Kao gost možete pregledati aplikaciju, ali ne možete koristiti razmišljanja. Kasnije se prijavite u Postavkama da koristite razmišljanja i otključate kupovine.';

  @override
  String get guestDialogContinue => 'Nastavi';

  @override
  String get guestDialogLoginInstead => 'Prijavi se umjesto toga';

  @override
  String get optionalLabel => 'opcionalno';

  @override
  String get accountDeleteSuccessTitle => 'Račun izbrisan';

  @override
  String get accountDeleteSuccessBody =>
      'Vaš račun i povezani podaci uspješno su izbrisani.';

  @override
  String get accountDeleteSuccessClose => 'Zatvori';

  @override
  String get accountDeleteErrorTitle => 'Nije bilo moguće izbrisati račun';

  @override
  String get accountDeleteErrorClose => 'U redu';

  @override
  String get accountDeleteReauthCancelled =>
      'Ponovna autentifikacija je otkazana. Molimo prijavite se ponovo i pokušajte brisanje.';

  @override
  String get accountDeleteReauthRequired =>
      'Brisanje računa zahtijeva nedavnu prijavu. Odjavite se, prijavite ponovo i pokušajte izbrisati račun.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ova radnja je trajna i ne može se poništiti. Svi podaci povezani s vašim računom bit će izbrisani.';

  @override
  String get dailyGraceTitle => 'Dnevna uputa';

  @override
  String get dailyGraceScriptureLabel => 'AJET DANA';

  @override
  String get dailyGraceSaintLabel => 'LIČNOST NEDJELJE';

  @override
  String get dailyGraceReflectionLabel => 'VEČERNJE RAZMIŠLJANJE';

  @override
  String get dailyGraceCopiedToast => 'Ajet je kopiran u međuspremnik';

  @override
  String get locationConsentLabel =>
      'Dozvoli Ayari da koristi moju lokaciju za smjer kible i vremena namaza';

  @override
  String get locationConsentHint =>
      'Koristi se samo za ove funkcije. Vaša lokacija se nikada ne dijeli niti pohranjuje.';

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
  String get askPageTitle => 'Pitaj Ayaru';

  @override
  String get askPageDescription =>
      'Postavite bilo koje pitanje o vjeri, namazu, životu ili islamskoj praksi i dobijte uputu ukorijenjenu u Kur’anu i učenjima Ehli-bejta.';

  @override
  String get askPageInputHint => 'Ovdje upišite svoje pitanje…';

  @override
  String get askPageSubmitCta => 'Pitaj';

  @override
  String get askPageInputEmptyError => 'Molimo prvo napišite pitanje.';

  @override
  String get askResultYourQuestion => 'Vaše pitanje';

  @override
  String get guidancePageTitle => 'Kibla';

  @override
  String get qiblaFacingMecca => 'Prema Meki';

  @override
  String get qiblaCompassInstruction =>
      'Okrećite telefon dok zlatna igla ne pokaže prema gore.\nTaj smjer pokazuje prema kibli (Meki).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal je slab. Izađite vani i dodirnite Pokušaj ponovo.';

  @override
  String get qiblaRetry => 'Pokušaj ponovo';

  @override
  String get qiblaTitle => 'Smjer kible';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km do Meke';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokacija je potrebna';

  @override
  String get qiblaLocationNeededBody =>
      'Dozvolite pristup lokaciji kako bi Ayara mogla izračunati smjer Kabe u Meki od mjesta gdje se nalazite.';

  @override
  String get qiblaOpenSettings => 'Otvori postavke';

  @override
  String get qiblaCompassLoading => 'Pronalaženje vaše pozicije…';

  @override
  String get qiblaTowardMecca => 'Prema Meki';

  @override
  String get prayerTimesTitle => 'Vremena namaza';

  @override
  String get prayerTimesFajr => 'Sabah';

  @override
  String get prayerTimesDhuhr => 'Podne';

  @override
  String get prayerTimesAsr => 'Ikindija';

  @override
  String get prayerTimesMaghrib => 'Akšam';

  @override
  String get prayerTimesIsha => 'Jacija';

  @override
  String get prayerTimesLocationNeededTitle => 'Lokacija je potrebna';

  @override
  String get prayerTimesLocationNeededBody =>
      'Dozvolite pristup lokaciji kako bi Ayara mogla izračunati tačna vremena namaza za vaš grad.';

  @override
  String get prayerTimesNextLabel => 'Sljedeće';

  @override
  String get prayerTimesDoneLabel => 'Završeno';

  @override
  String get monthlyPrayerTimesTitle => 'Mjesečna vremena namaza';

  @override
  String get monthlyPrayerTimesViewButton => 'Prikaži cijeli mjesec';

  @override
  String get monthlyPrayerTimesNextMonth => 'Sljedeći mjesec';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dan';

  @override
  String get sharePrayerTimes => 'Podijeli vremena namaza';

  @override
  String get notificationsSectionTitle => 'Obavijesti';

  @override
  String get notificationsSectionSubtitle =>
      'Podsjetnici za namaz, kalendarski događaji i više';

  @override
  String get dailyReflectionReminderTitle => 'Dnevno razmišljanje';

  @override
  String get dailyReflectionReminderDescription =>
      'Blagi dnevni podsjetnik da otvorite Ayaru i povežete se sa svojom vjerom.';

  @override
  String get dailyReflectionReminderEnable => 'Uključi dnevni podsjetnik';

  @override
  String get dailyReflectionReminderTimeLabel => 'Vrijeme podsjetnika';

  @override
  String get prayerNotificationsTitle => 'Podsjetnici za namaz';

  @override
  String get prayerNotificationsDescription =>
      'Primajte blagi podsjetnik prije svakog namaskog vremena kako biste ostali povezani tokom cijelog dana.';

  @override
  String get prayerNotificationsEnable => 'Uključi podsjetnike za namaz';

  @override
  String get prayerNotificationsOpenSettings => 'Otvori postavke obavijesti';

  @override
  String get prayerNotificationsDenied => 'Obavijesti su onemogućene';

  @override
  String get prayerNotificationsDeniedHint =>
      'Idite u Postavke i dozvolite obavijesti za Ayaru kako biste primali podsjetnike za vremena namaza.';

  @override
  String get notificationsConsentLabel =>
      'Dozvoli obavijesti za vremena namaza';

  @override
  String get prayerNotifTitleFajr => '🌅 Sabah — Zorašnji namaz';

  @override
  String get prayerNotifBodyFajr =>
      'Sabah je namaz jutara Ehli-bejta. Imam Ali (AS) je rekao: Čuvajte zorašnji namaz kao što čuvate svoje najdragocjenije povjerenje. Ustanite, očistite se i stanite pred Allaha.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Podne — Podnevni namaz';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imami Ehli-bejta cijenili su svaki trenutak zikra. Zastanite u svom danu, spojite podne s ikindijom ako je potrebno, i vratite svoje srce Allahu.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Ikindija — Popodnevni namaz';

  @override
  String get prayerNotifBodyAsr =>
      'Čuvaj namaz, jer je on zavjet između tebe i Allaha. Vrijeme ikindije je došlo — ne dopusti da prođe bez zikra.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Akšam — Zalazni namaz';

  @override
  String get prayerNotifBodyMaghrib =>
      'Sunce je zašlo — trenutak koji je Ehli-bejt smatrao svetim za dovu. Klanjaj akšam i podigni svoje ruke Allahu u dovi prije nego što noć počne.';

  @override
  String get prayerNotifTitleIsha => '🌙 Jacija — Noćni namaz';

  @override
  String get prayerNotifBodyIsha =>
      'Završi svoj dan u društvu Allaha. Imami su podsticali Salat al-Layl nakon jacije — ali prvo upotpuni jaciju i zatvori dan Njegovim spominjanjem.';

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
  String get dhikrResetButton => 'Resetuj';

  @override
  String get dhikrComplete => 'MašaAllah';

  @override
  String get dhikrCompleteMessage =>
      'Završili ste 100 zikrova Allahu. Neka budu svjetlo vašem srcu.';

  @override
  String get disclaimerTitle => 'O uputama u ovoj aplikaciji';

  @override
  String get disclaimerBody =>
      'Ayara pruža islamska razmišljanja, podsjetnike i duhovni sadržaj kao podršku vašem ličnom putu vjere, ukorijenjenom u Kur’anu i učenjima Ehli-bejta. Ovaj sadržaj se nudi samo u opće informativne i inspirativne svrhe.\n\nAyara ne zamjenjuje kvalifikovanu učenost.\nUpute u ovoj aplikaciji nisu zamjena za učenog islamskog učenjaka, marju\' ili teološki obrazovanog učitelja. U šiitskom islamu, vjersko vodstvo je ukorijenjeno u džaferskoj pravnoj školi (fikh) i tradiciji slijeđenja živog marje\' (izvora oponašanja) — kvalifikovanog pravnika čiji propisi vode vjernike u vjerskoj praksi. Ako imate pitanja o vjerskim propisima, halal i haram pitanjima ili ličnim vjerskim obavezama, potražite savjet kvalifikovanog marje\' ili učenjaka u svojoj zajednici.\n\nOva aplikacija ne izdaje vjerske propise.\nAyara ne donosi autoritativne odluke u pitanjima fikha ili ličnih vjerskih obaveza. Ništa ovdje ne treba tretirati kao fetvu ili obavezujuću vjersku uputu.\n\nSredišnje mjesto Ehli-bejta.\nU šiitskom islamu, Poslanik Muhammed ﷺ i njegova čista porodica — Ehli-bejt — su autoritativni vodiči islamske zajednice nakon Kur’ana. Dvanaest imama Ehli-bejta su božanski postavljeni tumači islamskog učenja. Sadržaj u ovoj aplikaciji odražava ovu tradiciju i nastoji je vjerno poštovati.\n\nZnačaj zajednice.\nOva aplikacija ima za cilj potaknuti vaše povezivanje s vjerom uz duboko poštovanje vitalne uloge vaše lokalne džamije, islamskog centra i vjerske zajednice. Ohrabrujemo vas da ostanete povezani i učite od kvalifikovanih učitelja u svojoj blizini.';

  @override
  String get disclaimerClose => 'Razumijem';

  @override
  String get disclaimerInfoTooltip => 'O uputama u ovoj aplikaciji';

  @override
  String get disclaimerSettingsSubtitle =>
      'Samo za opće informativne svrhe. Dodirnite da pročitate cijelo odricanje odgovornosti.';

  @override
  String get disclaimerSectionHeader => 'Odricanje od odgovornosti za upute';

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
  String get dashboardComingUp => 'Dolazi uskoro';

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
  String get quickActionDailyGrace => 'Uputa';

  @override
  String get quickActionPrayerTimes => 'Vremena namaza';

  @override
  String get askAyaraTitle => 'Pitaj Ayaru';

  @override
  String get askAyaraSubtitle =>
      'Postavite bilo koje islamsko pitanje i dobijte promišljen, vođen odgovor.';

  @override
  String get askAyaraHint => 'npr. Koji je značaj Ramazana?';

  @override
  String get askAyaraSubmit => 'Pitaj';

  @override
  String get wisdomOfTheDayTitle => 'Mudrost dana';

  @override
  String get calendarScreenTitle => 'Islamski kalendar';

  @override
  String get calendarUpcomingOccasions => 'Nadolazeće prilike';

  @override
  String get calendarOccasionRemindersTitle => 'Podsjetnici za prilike';

  @override
  String get calendarOccasionRemindersHint =>
      'Obavijest večer prije svake prilike';

  @override
  String get calendarNotifPermissionDenied =>
      'Dozvola za obavijesti je odbijena. Omogućite je u postavkama uređaja.';

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
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Maj';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Aug';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dec';

  @override
  String get calendarSeasonMuharramEarly => 'Dani Muharrema — sjeti se Kerbele';

  @override
  String get calendarSeasonAshura => 'Ašura — Ya Husejn (AS)';

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
      'Sredina Ša\'bana — rođendan Imama al-Mahdija (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramazan Mubarek — mjesec Kur’ana';

  @override
  String get calendarSeasonGhadir => 'Bajram al-Gadir Mubarek!';

  @override
  String get hijriMonth1 => 'Muharrem';

  @override
  String get hijriMonth2 => 'Safer';

  @override
  String get hijriMonth3 => 'Rebi\'u-l-evvel';

  @override
  String get hijriMonth4 => 'Rebi\'u-s-sani';

  @override
  String get hijriMonth5 => 'Džumade-l-ula';

  @override
  String get hijriMonth6 => 'Džumade-s-sanija';

  @override
  String get hijriMonth7 => 'Redžeb';

  @override
  String get hijriMonth8 => 'Ša\'ban';

  @override
  String get hijriMonth9 => 'Ramazan';

  @override
  String get hijriMonth10 => 'Ševval';

  @override
  String get hijriMonth11 => 'Zu-l-ka\'de';

  @override
  String get hijriMonth12 => 'Zu-l-hidždže';

  @override
  String get duasScreenTitle => 'Dove i zijareti';

  @override
  String get duasSearchHint => 'Pretraži dove, zijarete…';

  @override
  String get duasFilterAll => 'Sve';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dove i zijareti',
      one: '$count dova',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nijedna dova nije pronađena.';

  @override
  String get duaCategoryDaily => 'Dnevno';

  @override
  String get duaCategoryWeekly => 'Sedmično';

  @override
  String get duaCategoryOccasions => 'Prilike';

  @override
  String get duaCategoryZiyarat => 'Zijaret';

  @override
  String get duaCategoryTasbih => 'Tesbih';

  @override
  String get eventTypeBirth => 'Rođenje';

  @override
  String get eventTypeMartyrdom => 'Šehadet';

  @override
  String get eventTypeOccasion => 'Prilika';

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
      'Ayara objašnjenja su dostupna članovima Wilaya. Nadogradite u Postavkama.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pitaj Ayaru o \"$name\" — uskoro!';
  }

  @override
  String get duaCopiedToast => 'Dova je kopirana u međuspremnik.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah je najveći';

  @override
  String get tasbihAlhamdulillahMeaning => 'Sva hvala pripada Allahu';

  @override
  String get tasbihSubhanallahMeaning => 'Slava Allahu';

  @override
  String get tasbihResetTooltip => 'Resetuj';

  @override
  String get tasbihCompleteTitle => 'Tesbih završen';

  @override
  String get tasbihCompleteMessage => 'Neka Allah primi vaš zikr.';

  @override
  String get tasbihTapHint => 'Dodirnite bilo gdje za brojanje';

  @override
  String get tasbihatScreenTitle => 'Vodič za namaz';

  @override
  String get tasbihatScreenSubtitle => 'NAMASKA SLAVLJENJA';

  @override
  String get tasbihatScreenDescription =>
      'Potpuni vodič kroz slavljenja koja se uče tokom i nakon dnevnih namaza — prema predaji Ehli-bejta (a).';

  @override
  String get tasbihatArba3Title => 'TESBIHAT AL-ARBA\'A';

  @override
  String get tasbihatArba3Subtitle => 'Uči se u 3. i 4. rekatu';

  @override
  String get tasbihatArba3Info =>
      'U šiitskom fikhu, Tesbihat al-Arba\'a zamjenjuje suru al-Fatiha u 3. i 4. rekatu podne, ikindije, akšama i jacije. Obavezno (vadžib) je proučiti ga jednom, a preporučeno (mustehab) tri puta.';

  @override
  String get tasbihatArba3Translation =>
      'Slava Allahu · Sva hvala pripada Allahu\nNema boga osim Allaha · Allah je najveći';

  @override
  String get tasbihatArba3CompleteTitle => 'Učenje završeno';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Neka vaš namaz bude primljen — Amin';

  @override
  String get tasbihatArba3TapHint => 'Dodirnite nakon svakog učenja';

  @override
  String get tasbihatZahraSubtitle => 'Nakon svakog namaza · 100 zrna';

  @override
  String get tasbihatZahraOriginLabel => 'Porijeklo';

  @override
  String get tasbihatZahraHadith =>
      'Hazreti Fatima al-Zahra (sa) tražila je od Poslanika ﷺ slugu. On je rekao: \"Zar da te ne uputim na nešto bolje? Prouči Subhanallah 33 puta, Alhamdulillah 33 puta i Allahu Akbar 34 puta nakon svakog namaza. To je za tebe bolje od sluge.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwar, tom 85';

  @override
  String get tasbihatZahraOpenCounter => 'Otvori brojač tesbiha';

  @override
  String get tasbihatDuasTitle => 'PREPORUČENE DOVE';

  @override
  String get tasbihatDuasSubtitle => 'Nakon što završite namaz';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ajetul-Kursi';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Nakon svakog farz namaza';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sura al-Bekare 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Ko prouči Ajetul-Kursi nakon svakog obaveznog namaza, ništa ga ne dijeli od Dženneta osim smrti. Imam al-Bakir (a) rekao je da je to među najvećim ajetima u Kur’anu.';

  @override
  String get tasbihatDuaSalawatTitle => 'Salavat';

  @override
  String get tasbihatDuaSalawatWhen => 'Nakon svakog namaza · pečati sve dove';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Sadik (a) — Al-Kafi';

  @override
  String get tasbihatDuaSalawatNote =>
      'Slanje salavata na Poslanika ﷺ i njegovu čistu porodicu (Al Muhammad) preporučuje se kao pečat svake dove. Imam al-Sadik (a) rekao je: \"Svaka dova ostaje suspendovana dok ne pošalješ salavat na Muhammeda i njegovu porodicu.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Dua al-Faradž';

  @override
  String get tasbihatDuaFarajWhen =>
      'Nakon svakog namaza · za Imama našeg vremena';

  @override
  String get tasbihatDuaFarajSource => 'Poučio Imam al-Hasan al-Askari (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua za ponovni dolazak Imama al-Mahdīja (af), dvanaestog Imama, koju je podučio njegov otac. Često je izgovaraju mnogi šiitski muslimani nakon namaza kao čin odanosti živom Imamu.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tesbih hazreti Fatime';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Nakon akšama i jacije · posebno preporučeno';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bakir (a) — Bihar al-Anwar';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bakir (a) rekao je da je učenje Tesbiha al-Zahre nakon jacije prije spavanja bolje od 1000 rekata nafila-namaza. Njegova svjetlost uzdiže se ka nebesima.';

  @override
  String get tasbihFatimaGiftPre => 'Dar od Poslanika';

  @override
  String get tasbihFatimaGiftPost => 'uči se nakon svakog namaza';

  @override
  String get prayerTrackerTitle => 'PRAĆENJE NAMAZA';

  @override
  String get prayerTrackerPrayed => 'Klanjano';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dana u nizu';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Svi namazi su danas obavljeni. Neka Allah primi.';

  @override
  String get dhikrTrackerTitle => 'TESBIH AL-ZAHRA';

  @override
  String get dhikrTrackerCompletedToday => 'Danas završeno';

  @override
  String get dhikrTrackerNotDoneToday => 'Danas nije urađeno';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dana u nizu';
  }

  @override
  String get dhikrReminderTitle => 'Podsjetnik za tesbih';

  @override
  String get dhikrReminderDescription =>
      'Blagi dnevni podsjetnik da proučite svoj Tesbih al-Zahra (SA).';

  @override
  String get dhikrReminderEnable => 'Uključi podsjetnik za tesbih';

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
  String get hadithNavPrevious => 'Prethodni';

  @override
  String get hadithNavNext => 'Sljedeći';

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
  String get imamLabelMartyrdom => 'Šehadet';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIJA';

  @override
  String get imamSectionFamousSaying => 'POZNATA IZREKA';

  @override
  String get imamRoleProphet => 'Posljednji Poslanik';

  @override
  String get imamRoleInfallible => 'Bezgrešni';

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
      'Audio za ovu dovu bit će dostupan u narednom ažuriranju.';

  @override
  String get duaAudioClose => 'Zatvori';

  @override
  String get duaAudioError =>
      'Nije bilo moguće učitati audio. Molimo provjerite svoju vezu.';

  @override
  String get duaAudioMetaTransmittedBy => 'Prenosi';

  @override
  String get duaAudioMetaOccasion => 'Prilika';

  @override
  String get duaAudioMetaDuration => 'Trajanje';

  @override
  String get quickActionDailyHadith => 'Dnevni hadis';

  @override
  String get quickAction14Masumeen => 'Četrnaest nepogrešivih';

  @override
  String get quickActionListenDuas => 'Slušaj';

  @override
  String get quickActionTasbihat => 'Vodič za namaz';

  @override
  String get pilgrimageSectionTitle => 'Sveto putovanje';

  @override
  String get pilgrimageSectionSubtitle =>
      'Potpuni vodiči za hadž i umru — hodočašće Časnoj Allahovoj kući u Meki';

  @override
  String get hajjCardTitle => 'Hadž';

  @override
  String get hajjCardSubtitle => 'Peti stub islama';

  @override
  String get hajjCardDescription =>
      'Veliko godišnje hodočašće — obavezno jednom u životu za svakog muslimana koji je u mogućnosti';

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
  String get pilgrimageJafariNoteTitle => 'Napomena o Džafarskom fikhu';

  @override
  String get pilgrimageComplete => '✓ Završeno';

  @override
  String get pilgrimageMarkDone => 'Označi kao završeno';

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
      'Hadž je peti stub Islama, obavezan jednom u životu za svakog muslimana koji je fizički i finansijski sposoban. Za većinu dvanaestih šiitskih hodočasnika danas, to znači Hadž al-Tamattu\', koji se obavlja u mjesecu Zul-Hidždže u stopama Poslanika Ibrahima (AS), njegovog sina Ismaila (AS) i gospođe Hajar. Ovaj vodič prati Džafari okvir obreda, dok ziyarat u Medini ostaje duboko cijenjeno putovanje prije ili nakon Hadža.';

  @override
  String get umrahIntro =>
      'Umra je malo hodočašće u Meku i, za razliku od hadža, može se obaviti u bilo koje doba godine. Iako nije obavezna, nosi ogromnu duhovnu nagradu i smatra se veoma preporučenim ibadetom. Dijeli nekoliko obreda s hadžom, ali je kraća i sastoji se od četiri glavna obreda.';

  @override
  String get voiceInputTitle => 'Glasovni unos';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Govori svoj unos da pitaš Ayara umjesto da kucaš.';

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
