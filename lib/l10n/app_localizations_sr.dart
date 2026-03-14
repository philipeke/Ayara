// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Izaberite svoj jezik';

  @override
  String get languageSelectSub =>
      'Ovo možete kasnije promeniti u Podešavanjima';

  @override
  String get actionContinue => 'Nastavi';

  @override
  String get languageSuggestedHeader => 'Predloženo';

  @override
  String get languageAllHeader => 'Svi jezici';

  @override
  String get languageSuggestedBadge => 'Predloženo';

  @override
  String get languageSearchHint => 'Pretraga…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Dnevno vođstvo';

  @override
  String get categorySlot02 => 'Iman i poverenje';

  @override
  String get categorySlot03 => 'Razmišljanje o molitvi';

  @override
  String get categorySlot04 => 'Strpljenje i nada';

  @override
  String get categorySlot05 => 'Traži oprost';

  @override
  String get categorySlot06 => 'Milost i saosećanje';

  @override
  String get categorySlot07 => 'Snaga vere';

  @override
  String get categorySlot08 => 'Zahvalno srce';

  @override
  String get categorySlot09 => 'Svrha života';

  @override
  String get categorySlot10 => 'Porodične veze';

  @override
  String get categorySlot11 => 'Unutrašnji mir';

  @override
  String get categorySlot12 => 'Poslanikova mudrost';

  @override
  String get categorySlot13 => 'Dobar karakter';

  @override
  String get categorySlot14 => 'Odupri se iskušenju';

  @override
  String get categorySlot15 => 'Večernji zikr';

  @override
  String get categoryCustom => 'Lično razmišljanje';

  @override
  String get dhikrMeaningSubhanallah => 'Slavljen neka je Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Sva hvala pripada Allahu';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah je Najveći';

  @override
  String get quranVerseHeartAtRest =>
      'Zaista, u spominjanju Allaha srca nalaze smiraj.';

  @override
  String get promptHint =>
      'Dodirnite kategoriju za islamsko vođstvo i razmišljanje';

  @override
  String get currentLanguage => 'Trenutni jezik';

  @override
  String get settingsLanguage => 'Podešavanja jezika';

  @override
  String get settingsTitle => 'Podešavanja';

  @override
  String get chooseLanguage => 'Izaberite svoj jezik';

  @override
  String get continueCta => 'Nastavi';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reči',
      one: '$count reč',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opcije';

  @override
  String get newCta => 'Novo';

  @override
  String get actionsTitle => 'Šta biste želeli da uradite?';

  @override
  String get copy => 'Kopiraj';

  @override
  String get share => 'Podeli';

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
    return '$error\n\nDa li želite da pokušate ponovo?';
  }

  @override
  String get cancelCta => 'Otkaži';

  @override
  String get retryCta => 'Pokušaj ponovo';

  @override
  String get authTitle => 'Napravite svoj nalog';

  @override
  String get continueAsGuest => 'Nastavi kao gost';

  @override
  String get signInGoogle => 'Prijavi se putem Google-a';

  @override
  String get signInApple => 'Prijavi se putem Apple-a';

  @override
  String get signInEmail => 'Prijavi se e-poštom';

  @override
  String get upgradeWithApple => 'Nastavi sa Apple-om';

  @override
  String get mustAccept =>
      'Morate prihvatiti Uslove korišćenja i potvrditi Politiku privatnosti.';

  @override
  String get termsLabel => 'Prihvatam Uslove korišćenja';

  @override
  String get privacyLabel => 'Pročitao/la sam Politiku privatnosti';

  @override
  String get marketingOptIn => 'Pristajem da primam novosti i ponude';

  @override
  String get openTerms => 'Uslovi korišćenja';

  @override
  String get openPrivacy => 'Politika privatnosti';

  @override
  String get accountSection => 'Nalog';

  @override
  String get guestMode => 'Režim gosta';

  @override
  String get signedIn => 'Prijavljen/a';

  @override
  String get upgradeHint =>
      'Sačuvajte svoja razmišljanja na svim uređajima kreiranjem naloga.';

  @override
  String get upgradeWithGoogle => 'Nastavi sa Google-om';

  @override
  String get signOut => 'Odjavi se';

  @override
  String get snackUpgraded => 'Nalog je unapređen putem Google-a ✅';

  @override
  String get snackSignedIn => 'Prijava putem Google-a uspešna ✅';

  @override
  String get snackSignedOut => 'Odjavljeni ste';

  @override
  String get snackSignedInApple => 'Prijava putem Apple-a uspešna ✅';

  @override
  String get snackSignedInGoogle => 'Prijava putem Google-a uspešna ✅';

  @override
  String get snackUpgradedApple => 'Nalog je unapređen putem Apple-a ✅';

  @override
  String get snackUpgradedGoogle => 'Nalog je unapređen putem Google-a ✅';

  @override
  String get historyTitle => 'Prethodna razmišljanja';

  @override
  String get historyOpenCta => 'Prethodna razmišljanja';

  @override
  String get historyEmpty => 'Još nema sačuvanih razmišljanja.';

  @override
  String get historyDeleteTitle => 'Obrisati razmišljanje?';

  @override
  String get historyDeleteBody => 'Ovo će trajno ukloniti izabranu stavku.';

  @override
  String get deleteCta => 'Obriši';

  @override
  String get historyButton => 'Prethodna razmišljanja';

  @override
  String get historyEmptyTitle => 'Još nema razmišljanja';

  @override
  String get historyEmptyBody =>
      'Prvo nešto generišite — vaše sačuvane stavke će se pojaviti ovde.';

  @override
  String get historyDelete => 'Obriši';

  @override
  String get footerTitle => 'Sa Wilaya, Imanom i Sabrom';

  @override
  String get footerSubtitle => 'Jedna molitva u isto vreme';

  @override
  String get genericErrorSnack =>
      'Nešto je pošlo po zlu — pokušajte ponovo za trenutak.';

  @override
  String get upgradeAccountCta =>
      'Sačuvajte svoja razmišljanja na svim uređajima – napravite nalog';

  @override
  String get deleteAccount => 'Obriši nalog';

  @override
  String get exportData => 'Izvezi moje podatke';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Polako 🐯\nAyari treba trenutak pre sledećeg odgovora…';

  @override
  String get rateDailyLimit =>
      'Za sada ste ostali bez razmišljanja.\nNabavite više razmišljanja ili unapredite na Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Iskoristili ste sva svoja razmišljanja.\nDopunite ili unapredite na Wilaya da biste nastavili.';

  @override
  String get rateGraceCreditsExhausted =>
      'Za sada ste ostali bez razmišljanja.\nNabavite više razmišljanja ili unapredite na Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya otključava premium funkcije, buduće kategorije i posebnu oznaku.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Trenutno nemate više razmišljanja. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nije bilo moguće proveriti vaša razmišljanja: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Došlo je do greške prilikom provere vaših razmišljanja.';

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
      'Prikazuje se na kartici razmišljanja dok se učitava statistika korišćenja.';

  @override
  String get aiLimitTitle => 'Razmišljanja';

  @override
  String get aiLimitSubtitle =>
      'Svaki odgovor koristi 1 razmišljanje. Standard uključuje početna razmišljanja. Wilaya otključava premium kategorije i omogućava dopune.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total razmišljanja iskorišćeno';
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
      'Prikazuje se dok se učitava statistika razmišljanja.';

  @override
  String get creditsTitle => 'Razmišljanja';

  @override
  String get creditsSubtitle =>
      'Svaki odgovor koristi 1 razmišljanje. Standard uključuje početna razmišljanja. Wilaya otključava premium kategorije i omogućava dopune.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total razmišljanja iskorišćeno';
  }

  @override
  String get settingsDeleteTitle => 'Obriši nalog';

  @override
  String get settingsDeleteDescription =>
      'Trajno obrišite svoj nalog i sve povezane podatke.';

  @override
  String get settingsDeleteButtonLabel => 'Obriši moj nalog';

  @override
  String get settingsDeleteDialogTitle => 'Obrisati nalog?';

  @override
  String get settingsDeleteDialogBody =>
      'Ova radnja je trajna i ne može se poništiti.\n\nSvi vaši razgovori, istorija i informacije o nalogu biće obrisani.';

  @override
  String get settingsDeleteDialogCancel => 'Otkaži';

  @override
  String get settingsDeleteDialogConfirm => 'Obriši';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Početna razmišljanja su iskorišćena';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Početna razmišljanja za ovaj uređaj su iskorišćena. Unapredite na Wilaya ili kupite više razmišljanja da biste nastavili.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Početna razmišljanja su iskorišćena';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Početna razmišljanja za ovaj uređaj su iskorišćena. Unapredite na Wilaya ili kupite više razmišljanja da biste nastavili.';

  @override
  String get deviceBoundError =>
      'Ovaj uređaj je već povezan sa drugim nalogom. Prijavite se sa originalnim nalogom.';

  @override
  String get premiumTitle => 'Wilaya režim';

  @override
  String get premiumSubtitleBasic => 'Otključajte potpuno Ayara iskustvo.';

  @override
  String get premiumSubtitlePremium =>
      'Na Wilaya planu ste. Treba vam još razmišljanja?';

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
      'Prijavite se da biste kupili razmišljanja ili otključali Wilaya.';

  @override
  String get premiumRestorePurchases => 'Vrati kupovine';

  @override
  String get premiumProcessing => 'Obrada…';

  @override
  String get premiumRestoreHintTitle =>
      'Da li ste već kupili Wilaya ili razmišljanja na ovom ili drugom uređaju?';

  @override
  String get premiumRestoreHintBody =>
      'Vratite svoje kupovine ako se ne prikazuju.';

  @override
  String get premiumBuyCredits200 => 'Kupi 200 razmišljanja';

  @override
  String get premiumBuyCredits400 => 'Kupi 400 razmišljanja';

  @override
  String get premiumBecomePremiumOneTime => 'Pređi na Wilaya režim';

  @override
  String get premiumTopupHint =>
      'Uz Wilaya možete dopuniti dodatna razmišljanja kad god vam zatrebaju.';

  @override
  String get premiumUpgradeCta => 'Unapredi';

  @override
  String get premiumRequiredForCategory =>
      'Ova kategorija je dostupna samo za korisnike Wilaya plana. Unapredite u Podešavanjima da biste otključali sav premium sadržaj.';

  @override
  String get premiumBenefitsBasic =>
      'Otključajte Wilaya da biste dobili dodatna razmišljanja, pristup premium kategorijama i nastavili kad god vam zatreba vođstvo.';

  @override
  String get premiumBenefitsPremium =>
      'Nalazite se u Wilaya režimu. Ako vam ponestaje razmišljanja, dodajte još i nastavite bez prekida.';

  @override
  String get premiumButtonBecomePremium => 'Otključaj Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Dodaj 1000 razmišljanja';

  @override
  String get premiumBadge => 'Wilaya aktivna';

  @override
  String get premiumLoadingStore => 'Učitavanje prodavnice…';

  @override
  String get premiumProductNotAvailable =>
      'Ovaj proizvod još nije dostupan u prodavnici. Pokušajte ponovo kasnije.';

  @override
  String get premiumPurchaseError =>
      'Došlo je do greške tokom kupovine. Pokušajte ponovo.';

  @override
  String get premiumBuyCredits100 => 'Dodaj 100 razmišljanja';

  @override
  String get premiumFeatureLocked =>
      'Otključajte Wilaya da biste pristupili ovoj funkciji.';

  @override
  String get lockedCategoriesHint =>
      'Neke kategorije su rezervisane za članove Wilaya. Otključajte ih da biste istražili svako razmišljanje na svom putovanju.';

  @override
  String get freePlanBlockedTitle => 'Iskoristili ste početna razmišljanja';

  @override
  String get freePlanBlockedBody =>
      'Na Standard planu ste sa početnim razmišljanjima i dostigli ste limit. Da biste nastavili — i otključali premium kategorije — unapredite na Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Pogledajte opcije Wilaya ispod';

  @override
  String get graceBlockedTitle => 'Iskoristili ste početna razmišljanja';

  @override
  String get graceBlockedBody =>
      'Na Standard planu ste sa početnim razmišljanjima i dostigli ste limit. Da biste nastavili — i otključali premium kategorije — unapredite na Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Pogledajte opcije Wilaya ispod';

  @override
  String get rateGuestMustSignIn =>
      'Prijavite se da biste koristili Ayara i svoja razmišljanja.';

  @override
  String get guestNoCreditsTitle => 'Režim gosta';

  @override
  String get guestNoCreditsBody =>
      'Kao gost možete pregledati aplikaciju, ali ne možete koristiti razmišljanja. Kasnije se prijavite u Podešavanjima da biste koristili razmišljanja i otključali kupovine.';

  @override
  String get guestDialogContinue => 'Nastavi';

  @override
  String get guestDialogLoginInstead => 'Prijavi se umesto toga';

  @override
  String get optionalLabel => 'opciono';

  @override
  String get accountDeleteSuccessTitle => 'Nalog je obrisan';

  @override
  String get accountDeleteSuccessBody =>
      'Vaš nalog i povezani podaci su uspešno obrisani.';

  @override
  String get accountDeleteSuccessClose => 'Zatvori';

  @override
  String get accountDeleteErrorTitle => 'Nije bilo moguće obrisati nalog';

  @override
  String get accountDeleteErrorClose => 'U redu';

  @override
  String get accountDeleteReauthCancelled =>
      'Ponovna autentifikacija je otkazana. Prijavite se ponovo i pokušajte brisanje još jednom.';

  @override
  String get accountDeleteReauthRequired =>
      'Za brisanje naloga potrebna je nedavna prijava. Odjavite se, prijavite ponovo i pokušajte još jednom.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ova radnja je trajna i ne može se poništiti. Svi podaci povezani sa vašim nalogom biće obrisani.';

  @override
  String get dailyGraceTitle => 'Dnevno vođstvo';

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
      'Dozvoli Ayari da koristi moju lokaciju za pravac Kible i vremena namaza';

  @override
  String get locationConsentHint =>
      'Koristi se samo za ove funkcije. Vaša lokacija se nikada ne deli niti čuva.';

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
      'Pitajte bilo šta o veri, molitvi, životu ili islamskoj praksi i dobićete vođstvo zasnovano na Kur\'anu i učenjima Ahl al-Bayta.';

  @override
  String get askPageInputHint => 'Ovde unesite svoje pitanje…';

  @override
  String get askPageSubmitCta => 'Pitaj';

  @override
  String get askPageInputEmptyError => 'Molimo prvo napišite pitanje.';

  @override
  String get askResultYourQuestion => 'Vaše pitanje';

  @override
  String get guidancePageTitle => 'Kibla';

  @override
  String get qiblaFacingMecca => 'Okrenuto prema Meki';

  @override
  String get qiblaCompassInstruction =>
      'Rotirajte telefon dok zlatna igla ne pokaže nagore.\nTaj pravac pokazuje Kibli (Meki).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal je slab. Izađite napolje i dodirnite Pokušaj ponovo.';

  @override
  String get qiblaRetry => 'Pokušaj ponovo';

  @override
  String get qiblaTitle => 'Pravac Kible';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km do Meke';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokacija je potrebna';

  @override
  String get qiblaLocationNeededBody =>
      'Omogućite pristup lokaciji kako bi Ayara mogla izračunati pravac Kabe u Meki odakle god da se nalazite.';

  @override
  String get qiblaOpenSettings => 'Otvori Podešavanja';

  @override
  String get qiblaCompassLoading => 'Pronalaženje vaše lokacije…';

  @override
  String get qiblaTowardMecca => 'Prema Meki';

  @override
  String get prayerTimesTitle => 'Vremena namaza';

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
  String get prayerTimesLocationNeededTitle => 'Lokacija je potrebna';

  @override
  String get prayerTimesLocationNeededBody =>
      'Omogućite pristup lokaciji kako bi Ayara mogla izračunati tačna vremena namaza za vaš grad.';

  @override
  String get prayerTimesNextLabel => 'Sledeći';

  @override
  String get prayerTimesDoneLabel => 'Završeno';

  @override
  String get monthlyPrayerTimesTitle => 'Mesečna vremena namaza';

  @override
  String get monthlyPrayerTimesViewButton => 'Pogledaj ceo mesec';

  @override
  String get monthlyPrayerTimesNextMonth => 'Sledeći mesec';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dan';

  @override
  String get sharePrayerTimes => 'Podeli vremena namaza';

  @override
  String get notificationsSectionTitle => 'Obaveštenja';

  @override
  String get notificationsSectionSubtitle =>
      'Podsetnici za namaz, događaji u kalendaru i još mnogo toga';

  @override
  String get dailyReflectionReminderTitle => 'Dnevno razmišljanje';

  @override
  String get dailyReflectionReminderDescription =>
      'Blag dnevni podsetnik da otvorite Ayaru i povežete se sa svojom verom.';

  @override
  String get dailyReflectionReminderEnable => 'Omogući dnevni podsetnik';

  @override
  String get dailyReflectionReminderTimeLabel => 'Vreme podsetnika';

  @override
  String get prayerNotificationsTitle => 'Podsetnici za namaz';

  @override
  String get prayerNotificationsDescription =>
      'Dobijajte blag podsetnik pre svakog namaza kako biste ostali povezani tokom celog dana.';

  @override
  String get prayerNotificationsEnable => 'Omogući podsetnike za namaz';

  @override
  String get prayerNotificationsOpenSettings =>
      'Otvori podešavanja obaveštenja';

  @override
  String get prayerNotificationsDenied => 'Obaveštenja su onemogućena';

  @override
  String get prayerNotificationsDeniedHint =>
      'Idite u Podešavanja i dozvolite obaveštenja za Ayaru da biste primali podsetnike za vremena namaza.';

  @override
  String get notificationsConsentLabel =>
      'Dozvoli obaveštenja za vremena namaza';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Zorašnja molitva';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr je molitva jutara Ahl al-Bayta. Imam Ali (AS) je rekao: Čuvajte zorašnji namaz kao što čuvate svoju najdragoceniju amanet. Ustanite, očistite se i stanite pred Allaha.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Podnevna molitva';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imami Ahl al-Bayta cenili su svaki trenutak zikra. Zaustavite svoj dan, spojite Dhuhr sa Asrom ako je potrebno, i vratite svoje srce Allahu.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Popodnevna molitva';

  @override
  String get prayerNotifBodyAsr =>
      'Čuvajte namaz, jer je on savez između vas i Allaha. Vreme Asra je nastupilo — ne dopustite da prođe bez zikra.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Molitva zalaska sunca';

  @override
  String get prayerNotifBodyMaghrib =>
      'Sunce je zašlo — trenutak koji je Ahl al-Bayt smatrao svetim za dovu. Klanjajte Maghrib i podignite ruke Allahu u dovi pre nego što noć počne.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Noćna molitva';

  @override
  String get prayerNotifBodyIsha =>
      'Završite svoj dan u Allahovom društvu. Imami su preporučivali Salat al-Layl posle Ishe — ali prvo završite svoju Ishu i zatvorite dan Njegovim spominjanjem.';

  @override
  String get outOfReflectionsBannerText =>
      'Iskoristili ste sva svoja razmišljanja';

  @override
  String get outOfReflectionsBannerCta => 'Nabavi više';

  @override
  String get dhikrPageTitle => 'Zikr';

  @override
  String get dhikrTapToCount => 'Dodirnite krug da biste brojali';

  @override
  String get dhikrResetButton => 'Resetuj';

  @override
  String get dhikrComplete => 'Maša\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Završili ste 100 zikrova Allahu. Neka budu svetlost za vaše srce.';

  @override
  String get disclaimerTitle => 'O vođstvu ove aplikacije';

  @override
  String get disclaimerBody =>
      'Ayara pruža islamska razmišljanja, podsetnike i duhovni sadržaj kako bi podržala vaše lično putovanje vere, zasnovano na Kur\'anu i učenjima Ahl al-Bayta. Ovaj sadržaj se pruža isključivo u opšte informativne i inspirativne svrhe.\n\nAyara ne zamenjuje kvalifikovanu učenost.\nVođstvo u ovoj aplikaciji nije zamena za učenog islamskog učenjaka, marja\'a ili teološki obrazovanog učitelja. U šiitskom islamu, versko vođstvo je ukorenjeno u ja\'farijskoj pravnoj školi (fiqh) i tradiciji sledovanja živog Marja\'a (izvora sleđenja) — kvalifikovanog pravnika čije presude vode vernike u verskoj praksi. Ako imate pitanja o verskim propisima, o halal i haram pitanjima, ili o ličnim verskim obavezama, potražite savet kvalifikovanog Marja\'a ili učenjaka u svojoj zajednici.\n\nOva aplikacija ne izdaje verske presude.\nAyara ne donosi autoritativne odluke u pitanjima fiqha ili ličnih verskih obaveza. Ništa ovde ne treba smatrati fatvom ili obavezujućim verskim uputstvom.\n\nCentralnost Ahl al-Bayta.\nU šiitskom islamu, Poslanik Muhammed ﷺ i njegova pročišćena porodica — Ahl al-Bayt — autoritativni su vodiči islamske zajednice nakon Kur\'ana. Dvanaest imama Ahl al-Bayta su božanski postavljeni tumači islamskog učenja. Sadržaj ove aplikacije odražava tu tradiciju i nastoji da je verno poštuje.\n\nPitanja zajednice.\nOva aplikacija nastoji da vas podstakne na dublju povezanost sa verom, uz duboko poštovanje vitalne uloge vaše lokalne džamije, islamskog centra i verske zajednice. Podstičemo vas da ostanete povezani sa kvalifikovanim učiteljima u svojoj blizini i da od njih učite.';

  @override
  String get disclaimerClose => 'Razumem';

  @override
  String get disclaimerInfoTooltip => 'O vođstvu ove aplikacije';

  @override
  String get disclaimerSettingsSubtitle =>
      'Samo u opšte informativne svrhe. Dodirnite da pročitate potpuno objašnjenje.';

  @override
  String get disclaimerSectionHeader => 'Odricanje od odgovornosti';

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
  String get dashboardComingUp => 'Predstoji';

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
  String get quickActionDailyGrace => 'Vođstvo';

  @override
  String get quickActionPrayerTimes => 'Vremena namaza';

  @override
  String get askAyaraTitle => 'Pitaj Ayaru';

  @override
  String get askAyaraSubtitle =>
      'Postavite bilo koje islamsko pitanje i dobićete promišljen, vođen odgovor.';

  @override
  String get askAyaraHint => 'npr. Koji je značaj Ramazana?';

  @override
  String get askAyaraSubmit => 'Pitaj';

  @override
  String get wisdomOfTheDayTitle => 'Mudrost dana';

  @override
  String get calendarScreenTitle => 'Islamski kalendar';

  @override
  String get calendarUpcomingOccasions => 'Predstojeće prilike';

  @override
  String get calendarOccasionRemindersTitle => 'Podsetnici za prilike';

  @override
  String get calendarOccasionRemindersHint =>
      'Bićete obavešteni veče pre svake prilike';

  @override
  String get calendarNotifPermissionDenied =>
      'Dozvola za obaveštenja je odbijena. Omogućite je u podešavanjima uređaja.';

  @override
  String get calendarNoEvents => 'Nema pronađenih predstojećih događaja.';

  @override
  String get calendarAddToPhone => 'Додај у Телефонски Календар';

  @override
  String get calendarAddedToPhone => 'Додато у Календар';

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
  String get calendarMonthAug => 'Avg';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dec';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dani Muharrama — setite se Kerbele';

  @override
  String get calendarSeasonAshura => 'Ašura — Ja Husejn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dani žalosti i razmišljanja';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — četrdeset dana Husejna';

  @override
  String get calendarSeasonRoadToArbaeen => 'Put ka Arbaeenu';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — zora objave';

  @override
  String get calendarSeasonMidShaban =>
      'Sredina Ša\'bana — rođendan Imama al-Mahdija (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mesec Kur\'ana';

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
  String get duasScreenTitle => 'Dove i Zijarat';

  @override
  String get duasSearchHint => 'Pretraži dove, zijarat…';

  @override
  String get duasFilterAll => 'Sve';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dove i zijarat',
      one: '$count dova',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nema pronađenih dova.';

  @override
  String get duaCategoryDaily => 'Dnevne';

  @override
  String get duaCategoryWeekly => 'Nedeljne';

  @override
  String get duaCategoryOccasions => 'Prilike';

  @override
  String get duaCategoryZiyarat => 'Zijarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Rođenje';

  @override
  String get eventTypeMartyrdom => 'Šehadet';

  @override
  String get eventTypeOccasion => 'Prilika';

  @override
  String get duaCopyTooltip => 'Kopiraj prevod';

  @override
  String get duaToggleTransliteration => 'Transliteracija';

  @override
  String get duaToggleTranslation => 'Prevod';

  @override
  String get duaAskAiLabel => 'Pitaj Ayaru da objasni ovu dovu';

  @override
  String get duaAskAiLockedLabel => 'Pitaj Ayaru (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara objašnjenja su dostupna članovima Wilaya plana. Unapredite u Podešavanjima.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pitaj Ayaru o „$name“ — uskoro!';
  }

  @override
  String get duaCopiedToast => 'Dova je kopirana u međuspremnik.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah je Najveći';

  @override
  String get tasbihAlhamdulillahMeaning => 'Sva hvala pripada Allahu';

  @override
  String get tasbihSubhanallahMeaning => 'Slavljen neka je Allah';

  @override
  String get tasbihResetTooltip => 'Resetuj';

  @override
  String get tasbihCompleteTitle => 'Tasbih završen';

  @override
  String get tasbihCompleteMessage => 'Neka Allah primi vaš zikr.';

  @override
  String get tasbihTapHint => 'Dodirnite bilo gde da biste brojali';

  @override
  String get tasbihatScreenTitle => 'Vodič za namaz';

  @override
  String get tasbihatScreenSubtitle => 'ZIKROVI U NAMAZU';

  @override
  String get tasbihatScreenDescription =>
      'Potpun vodič za zikrove koji se uče tokom i nakon dnevnih namaza — prema tradiciji Ahl al-Bayta (a).';

  @override
  String get tasbihatArba3Title => 'TASBIHAT AL-ARBA\'A';

  @override
  String get tasbihatArba3Subtitle => 'Uči se u 3. i 4. rekatu';

  @override
  String get tasbihatArba3Info =>
      'U šiitskom fikhu, Tasbihat al-Arba\'a zamenjuje Suru al-Fatihu u 3. i 4. rekatu podnevnog, ikindijskog, akšamskog i jacijskog namaza. Obavezno je (wajib) proučiti je jednom, a preporučeno (mustahabb) tri puta.';

  @override
  String get tasbihatArba3Translation =>
      'Slavljen neka je Allah · Sva hvala pripada Allahu\nNema boga osim Allaha · Allah je Najveći';

  @override
  String get tasbihatArba3CompleteTitle => 'Učenje završeno';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Neka vaš namaz bude primljen — Amin';

  @override
  String get tasbihatArba3TapHint => 'Dodirnite nakon svakog učenja';

  @override
  String get tasbihatZahraSubtitle => 'Nakon svakog namaza · 100 perli';

  @override
  String get tasbihatZahraOriginLabel => 'Poreklo';

  @override
  String get tasbihatZahraHadith =>
      'Hazreti Fatima al-Zahra (sa) je tražila od Poslanika ﷺ slugu. On joj reče: „Zar da te ne uputim na nešto bolje? Posle svakog namaza reci Subhanallah 33 puta, Alhamdulillah 33 puta i Allahu Akbar 34 puta. To je bolje za tebe od sluge.“';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwar, tom 85';

  @override
  String get tasbihatZahraOpenCounter => 'Otvori brojač tasbiha';

  @override
  String get tasbihatDuasTitle => 'PREPORUČENE DOVE';

  @override
  String get tasbihatDuasSubtitle => 'Nakon što završite svoj namaz';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ajetul Kursi';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Nakon svakog farz namaza';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sura al-Baqara 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Ko prouči Ajetul Kursi nakon svakog farz namaza, između njega i Dženneta ne ostaje ništa osim smrti. Imam al-Baqir (a) je rekao da je to jedan od najvećih ajeta u Kur\'anu.';

  @override
  String get tasbihatDuaSalawatTitle => 'Salavat';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Nakon svakog namaza · pečat svim dovama';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Sadiq (a) — Al-Kafi';

  @override
  String get tasbihatDuaSalawatNote =>
      'Slanje salavata na Poslanika ﷺ i njegovu čistu porodicu (Al Muhammad) preporučuje se kao završetak svake dove. Imam al-Sadiq (a) je rekao: „Svaka dova ostaje obustavljena dok ne pošaljete salavat na Muhammeda i njegovu porodicu.“';

  @override
  String get tasbihatDuaFarajTitle => 'Dua al-Faradž';

  @override
  String get tasbihatDuaFarajWhen =>
      'Nakon svakog namaza · za Imama našeg vremena';

  @override
  String get tasbihatDuaFarajSource => 'Poučavao Imam al-Hasan al-Askari (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua za ponovni dolazak Imama al-Mahdīja (af), dvanaestog Imama, koju je podučio njegov otac. Često je izgovaraju mnogi šiitski muslimani nakon molitve kao čin odanosti živom Imamu.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbih hazreti Fatime';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Nakon akšama i jacije · posebno preporučeno';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Baqir (a) — Bihar al-Anwar';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Baqir (a) je rekao da je učenje Tasbiha al-Zahra nakon jacije pre spavanja bolje od 1000 rekata nafila namaza. Njegova svetlost se uzdiže ka nebesima.';

  @override
  String get tasbihFatimaGiftPre => 'Dar Poslanika';

  @override
  String get tasbihFatimaGiftPost => 'uči se posle svakog namaza';

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
      'Svi namazi za danas su završeni. Neka Allah primi.';

  @override
  String get dhikrTrackerTitle => 'TASBIH AL-ZAHRA';

  @override
  String get dhikrTrackerCompletedToday => 'Završeno danas';

  @override
  String get dhikrTrackerNotDoneToday => 'Nije urađeno danas';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dana u nizu';
  }

  @override
  String get dhikrReminderTitle => 'Podsetnik za tasbih';

  @override
  String get dhikrReminderDescription =>
      'Blag dnevni podsetnik da proučite svoj Tasbih al-Zahra (SA).';

  @override
  String get dhikrReminderEnable => 'Omogući podsetnik za tasbih';

  @override
  String get dhikrReminderTimeLabel => 'Vreme podsetnika';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Dnevni hadis';

  @override
  String get hadithLabelArabic => 'ARAPSKI';

  @override
  String get hadithLabelTranslation => 'PREVOD';

  @override
  String get hadithBadge => 'HADIS';

  @override
  String get hadithShare => 'Podeli ovaj hadis';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPutem Ayare';
  }

  @override
  String get hadithNavPrevious => 'Prethodni';

  @override
  String get hadithNavNext => 'Sledeći';

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
  String get imamRoleProphet => 'Poslednji Poslanik';

  @override
  String get imamRoleInfallible => 'Bezgrešni';

  @override
  String get imamOrdinal1 => '1. Imam';

  @override
  String get imamOrdinal2 => '2. Imam';

  @override
  String get imamOrdinal3 => '3. Imam';

  @override
  String get imamOrdinal4 => '4. Imam';

  @override
  String get imamOrdinal5 => '5. Imam';

  @override
  String get imamOrdinal6 => '6. Imam';

  @override
  String get imamOrdinal7 => '7. Imam';

  @override
  String get imamOrdinal8 => '8. Imam';

  @override
  String get imamOrdinal9 => '9. Imam';

  @override
  String get imamOrdinal10 => '10. Imam';

  @override
  String get imamOrdinal11 => '11. Imam';

  @override
  String get imamOrdinal12 => '12. Imam';

  @override
  String get duaAudioScreenTitle => 'Slušaj dove';

  @override
  String get duaAudioScreenSubtitle =>
      'Izaberite dovu za slušanje. Dodirnite pločicu za puštanje ili pauzu.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio za ovu dovu biće dostupan u narednom ažuriranju.';

  @override
  String get duaAudioClose => 'Zatvori';

  @override
  String get duaAudioError =>
      'Nije bilo moguće učitati audio. Proverite svoju vezu.';

  @override
  String get duaAudioMetaTransmittedBy => 'Preneo';

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
      'Potpuni vodiči za hadž i umru — hodočašće Ka Allahovoj svetoj Kući u Meki';

  @override
  String get hajjCardTitle => 'Hadž';

  @override
  String get hajjCardSubtitle => 'Peti stub islama';

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
  String get pilgrimageDuaTitle => 'Дуа за овај корак';

  @override
  String get pilgrimageJafariNoteTitle => 'Напомена о Џа\'фари Фикху';

  @override
  String get pilgrimageComplete => '✓ Завршено';

  @override
  String get pilgrimageMarkDone => 'Označi kao završeno';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done од $total корака';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes мин';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Šiitski hodočasnici';

  @override
  String get pilgrimageShiaNoteBody =>
      'Mnogi šiitski hodočasnici takođe putuju u Medinu radi ziyarat Poslanika Muhammeda (SAW) u Masjid al-Nabawi i grobova u Džennetu al-Baqi. Ove posete imaju duboko duhovno značenje, iako same po sebi nisu obredi Hadža.';

  @override
  String get hajjIntro =>
      'Hadž je peti stub Islama, obavezan jednom u životu za svakog muslimana koji je fizički i finansijski sposoban. Za većinu dvanaestih šiitskih hodočasnika danas, to znači Hadž al-Tamattu\', koji se obavlja u mesecu Džul-Hidždžu u stopama Poslanika Ibrahima (AS), njegovog sina Ismaila (AS) i gospođe Hajar. Ovaj vodič prati Džafari okvir obreda, dok je ziyarat u Medini duboko cenjeno putovanje pre ili posle Hadža.';

  @override
  String get umrahIntro =>
      'Umra je malo hodočašće u Meku i, za razliku od hadža, može se obaviti u bilo koje doba godine. Iako nije obavezna, nosi ogromnu duhovnu nagradu i smatra se vrlo preporučenim ibadetom. Deli nekoliko obreda sa hadžom, ali je kraća i sastoji se od četiri glavna čina.';

  @override
  String get voiceInputTitle => 'Glasovni unos';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Govori svoj unos da bi pitao Ayara umesto da kucaš.';

  @override
  String get voiceInputMicDenied => 'Pristup mikrofonu je odbijen.';

  @override
  String get voiceInputSpeak => 'Govori umesto';

  @override
  String get voiceInputListening => 'Slušam…';

  @override
  String get voiceInputPermissionDenied =>
      'Pristup mikrofonu je neophodan za glasovni unos.';
}
