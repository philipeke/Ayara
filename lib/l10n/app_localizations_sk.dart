// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Vyberte svoj jazyk';

  @override
  String get languageSelectSub => 'Toto môžete zmeniť neskôr v Nastaveniach';

  @override
  String get actionContinue => 'Pokračovať';

  @override
  String get languageSuggestedHeader => 'Odporúčané';

  @override
  String get languageAllHeader => 'Všetky jazyky';

  @override
  String get languageSuggestedBadge => 'Odporúčané';

  @override
  String get languageSearchHint => 'Hľadať…';

  @override
  String get planBasic => 'Štandardný';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Denné rady';

  @override
  String get categorySlot02 => 'Viera a dôvera';

  @override
  String get categorySlot03 => 'Reflexia modlitby';

  @override
  String get categorySlot04 => 'Trpezlivosť a nádej';

  @override
  String get categorySlot05 => 'Hľadajte odpustenie';

  @override
  String get categorySlot06 => 'Milosrdenstvo a súcit';

  @override
  String get categorySlot07 => 'Viera a sila';

  @override
  String get categorySlot08 => 'Vďačné srdce';

  @override
  String get categorySlot09 => 'Zmysel života';

  @override
  String get categorySlot10 => 'Rodinné väzby';

  @override
  String get categorySlot11 => 'Vnútorný pokoj';

  @override
  String get categorySlot12 => 'Múdrosť proroka';

  @override
  String get categorySlot13 => 'Dobrý charakter';

  @override
  String get categorySlot14 => 'Odolajte pokušeniu';

  @override
  String get categorySlot15 => 'Večerný dhikr';

  @override
  String get categoryCustom => 'Osobná reflexia';

  @override
  String get dhikrMeaningSubhanallah => 'Chvála Alláhovi';

  @override
  String get dhikrMeaningAlhamdulillah => 'Všetka chvála patrí Alláhovi';

  @override
  String get dhikrMeaningAllahuAkbar => 'Alláh je najväčší';

  @override
  String get quranVerseHeartAtRest =>
      'Istotne, v spomínaní si Alláha nachádzajú srdcia pokoj.';

  @override
  String get promptHint => 'Kliknite na kategóriu pre islamské rady a reflexiu';

  @override
  String get currentLanguage => 'Súčasný jazyk';

  @override
  String get settingsLanguage => 'Nastavenia jazyka';

  @override
  String get settingsTitle => 'Nastavenia';

  @override
  String get chooseLanguage => 'Vyberte svoj jazyk';

  @override
  String get continueCta => 'Pokračovať';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count slov',
      one: '$count slovo',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Možnosti';

  @override
  String get newCta => 'Nové';

  @override
  String get actionsTitle => 'Čo by ste chceli urobiť?';

  @override
  String get copy => 'Kopírovať';

  @override
  String get share => 'Zdieľať';

  @override
  String get close => 'Zatvoriť';

  @override
  String get copiedToast => 'Skopírované do schránky';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Nepodarilo sa vygenerovať novú odpoveď';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nChcete to skúsiť znova?';
  }

  @override
  String get cancelCta => 'Zrušiť';

  @override
  String get retryCta => 'Skúsiť znova';

  @override
  String get authTitle => 'Vytvorte svoj účet';

  @override
  String get continueAsGuest => 'Pokračovať ako hosť';

  @override
  String get signInGoogle => 'Prihlásiť sa cez Google';

  @override
  String get signInApple => 'Prihlásiť sa cez Apple';

  @override
  String get signInEmail => 'Prihlásiť sa cez E-mail';

  @override
  String get upgradeWithApple => 'Pokračovať s Apple';

  @override
  String get mustAccept =>
      'Musíte prijať Podmienky a potvrdiť Zásady ochrany osobných údajov.';

  @override
  String get termsLabel => 'Prijímam Podmienky služby';

  @override
  String get privacyLabel => 'Prečítal som si Zásady ochrany osobných údajov';

  @override
  String get marketingOptIn => 'Súhlasím s prijímaním správ a ponúk';

  @override
  String get openTerms => 'Podmienky služby';

  @override
  String get openPrivacy => 'Zásady ochrany osobných údajov';

  @override
  String get accountSection => 'Účet';

  @override
  String get guestMode => 'Režim hosta';

  @override
  String get signedIn => 'Prihlásený';

  @override
  String get upgradeHint =>
      'Uložte si svoje reflexie na všetkých zariadeniach vytvorením účtu.';

  @override
  String get upgradeWithGoogle => 'Pokračovať s Google';

  @override
  String get signOut => 'Odhlásiť sa';

  @override
  String get snackUpgraded => 'Účet upgradovaný s Google ✅';

  @override
  String get snackSignedIn => 'Prihlásený s Google ✅';

  @override
  String get snackSignedOut => 'Odhlásiť sa';

  @override
  String get snackSignedInApple => 'Prihlásený s Apple ✅';

  @override
  String get snackSignedInGoogle => 'Prihlásený s Google ✅';

  @override
  String get snackUpgradedApple => 'Účet upgradovaný s Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Účet upgradovaný s Google ✅';

  @override
  String get historyTitle => 'Predchádzajúce reflexie';

  @override
  String get historyOpenCta => 'Predchádzajúce reflexie';

  @override
  String get historyEmpty => 'Zatiaľ nie sú uložené žiadne reflexie.';

  @override
  String get historyDeleteTitle => 'Odstrániť reflexiu?';

  @override
  String get historyDeleteBody => 'Tým sa vybraná položka natrvalo odstráni.';

  @override
  String get deleteCta => 'Odstrániť';

  @override
  String get historyButton => 'Predchádzajúce reflexie';

  @override
  String get historyEmptyTitle => 'Zatiaľ žiadne reflexie';

  @override
  String get historyEmptyBody =>
      'Najprv vygenerujte niečo — uložené položky sa tu objavia.';

  @override
  String get historyDelete => 'Odstrániť';

  @override
  String get footerTitle => 'S Wilayou, Imanom a Sabrom';

  @override
  String get footerSubtitle => 'Jedna modlitba naraz';

  @override
  String get genericErrorSnack =>
      'Niečo sa pokazilo — skúste to prosím za chvíľu.';

  @override
  String get upgradeAccountCta =>
      'Uložte si svoje reflexie na všetkých zariadeniach – vytvorte si účet';

  @override
  String get deleteAccount => 'Odstrániť účet';

  @override
  String get exportData => 'Exportovať moje údaje';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Pomaly 🐯\nAyara potrebuje chvíľu pred ďalším…';

  @override
  String get rateDailyLimit =>
      'Vyčerpali ste reflexie teraz.\nZískajte viac reflexií alebo upgradujte na Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Vyčerpali ste všetky reflexie.\nDoplnite si alebo upgradujte na Wilaya na pokračovanie.';

  @override
  String get rateGraceCreditsExhausted =>
      'Vyčerpali ste reflexie teraz.\nZískajte viac reflexií alebo upgradujte na Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya odomyká prémiové funkcie, budúce kategórie a špeciálny odznak.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vaše reflexie sú teraz prázdne. Plán: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nepodarilo sa skontrolovať vaše reflexie: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Pri kontrole vašich reflexií sa niečo pokazilo.';

  @override
  String get aiFallbackGeneric =>
      'Niečo sa pokazilo — skúste to prosím za chvíľu.';

  @override
  String get limitSectionTitle => 'Reflexie';

  @override
  String get limitTodayLabel => 'Použitie';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Zostávajúce reflexie: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plán: $plan';
  }

  @override
  String get limitLoadingLabel => 'Načítava sa…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflexie';

  @override
  String get aiLimitSubtitle =>
      'Každá odpoveď využije 1 reflexiu. Štandardný zahŕňa startérovské reflexie. Wilaya odomyká prémiové kategórie a umožňuje doplnenie.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexií použitých';
  }

  @override
  String get creditsSectionTitle => 'Reflexie';

  @override
  String get creditsUsageLabel => 'Použitie';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Zostávajúce reflexie: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plán: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Načítava sa…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflexie';

  @override
  String get creditsSubtitle =>
      'Každá odpoveď využije 1 reflexiu. Štandardný zahŕňa startérovské reflexie. Wilaya odomyká prémiové kategórie a umožňuje doplnenie.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexií použitých';
  }

  @override
  String get settingsDeleteTitle => 'Odstrániť účet';

  @override
  String get settingsDeleteDescription =>
      'Natrvalo odstrániť váš účet a všetky související údaje.';

  @override
  String get settingsDeleteButtonLabel => 'Odstrániť môj účet';

  @override
  String get settingsDeleteDialogTitle => 'Odstrániť účet?';

  @override
  String get settingsDeleteDialogBody =>
      'Táto akcia je trvalá a nemôže sa vrátiť späť.\n\nVšetky vaše chaty, história a informácie o účte budú odstránené.';

  @override
  String get settingsDeleteDialogCancel => 'Zrušiť';

  @override
  String get settingsDeleteDialogConfirm => 'Odstrániť';

  @override
  String get settingsFreeLimitUsedTitle => 'Startérovské reflexie použité';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Startérovské reflexie pre toto zariadenie boli použité. Upgradujte na Wilaya alebo si kúpte viac reflexií na pokračovanie.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Startérovské reflexie použité';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Startérovské reflexie pre toto zariadenie boli použité. Upgradujte na Wilaya alebo si kúpte viac reflexií na pokračovanie.';

  @override
  String get deviceBoundError =>
      'Toto zariadenie je už prepojené s iným účtom. Prihláste sa prosím s pôvodným účtom.';

  @override
  String get premiumTitle => 'Režim Wilaya';

  @override
  String get premiumSubtitleBasic => 'Odomknite plný zážitok Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Ste na Wilaya. Potrebujete viac reflexií?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Súčasný plán: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexie: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Nákupy nie sú momentálne dostupné.';

  @override
  String get premiumSignInToPurchase =>
      'Prihláste sa na nákup reflexií alebo odomknutie Wilaya.';

  @override
  String get premiumRestorePurchases => 'Obnoviť nákupy';

  @override
  String get premiumProcessing => 'Spracovávanie…';

  @override
  String get premiumRestoreHintTitle =>
      'Už ste si kúpili Wilaya alebo reflexie na tomto alebo inom zariadení?';

  @override
  String get premiumRestoreHintBody => 'Obnovte si nákupy, ak sa nezobrazujú.';

  @override
  String get premiumBuyCredits200 => 'Kúpiť 200 reflexií';

  @override
  String get premiumBuyCredits400 => 'Kúpiť 400 reflexií';

  @override
  String get premiumBecomePremiumOneTime => 'Upgradovať na režim Wilaya';

  @override
  String get premiumTopupHint =>
      'S Wilayou môžete kedykoľvek doplniť extra reflexie.';

  @override
  String get premiumUpgradeCta => 'Upgradovať';

  @override
  String get premiumRequiredForCategory =>
      'Táto kategória je dostupná iba pre používateľov Wilaya. Upgradujte v Nastaveniach na odomknutie všetkého prémiového obsahu.';

  @override
  String get premiumBenefitsBasic =>
      'Odomknite Wilaya a získajte extra reflexie, prístup k prémiowym kategóriám a pokračujte kedykoľvek potrebujete rady.';

  @override
  String get premiumBenefitsPremium =>
      'Ste v režime Wilaya. Ak vám začína dochádzať, pridajte si extra reflexie a pokračujte bez prerušení.';

  @override
  String get premiumButtonBecomePremium => 'Odomknúť Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Pridať 1000 reflexií';

  @override
  String get premiumBadge => 'Wilaya aktívna';

  @override
  String get premiumLoadingStore => 'Načítava sa obchod…';

  @override
  String get premiumProductNotAvailable =>
      'Tento produkt nie je v obchode zatiaľ dostupný. Skúste to prosím neskôr.';

  @override
  String get premiumPurchaseError =>
      'Pri nákupe sa niečo pokazilo. Skúste to prosím znova.';

  @override
  String get premiumBuyCredits100 => 'Pridať 100 reflexií';

  @override
  String get premiumFeatureLocked =>
      'Odomknite Wilaya na prístup k tejto funkcii.';

  @override
  String get lockedCategoriesHint =>
      'Niektoré kategórie sú vyhradené pre členov Wilaya. Odomknite ich na objavenie každej reflexie na vašej ceste.';

  @override
  String get freePlanBlockedTitle => 'Vyčerpali ste startérovské reflexie';

  @override
  String get freePlanBlockedBody =>
      'Ste na pláne Štandardný so startériovskými reflexiami a dosiahli ste limit. Na pokračovanie — a odomknutie prémiových kategórií — upgradujte na Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Pozrite Wilaya možnosti nižšie';

  @override
  String get graceBlockedTitle => 'Vyčerpali ste startérovské reflexie';

  @override
  String get graceBlockedBody =>
      'Ste na pláne Štandardný so startériovskými reflexiami a dosiahli ste limit. Na pokračovanie — a odomknutie prémiových kategórií — upgradujte na Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Pozrite Wilaya možnosti nižšie';

  @override
  String get rateGuestMustSignIn =>
      'Prihláste sa na použitie Ayara a vašich reflexií.';

  @override
  String get guestNoCreditsTitle => 'Režim hosta';

  @override
  String get guestNoCreditsBody =>
      'Ako hosť môžete prehliadať aplikáciu, ale nemôžete používať reflexie. Prihláste sa neskôr v Nastaveniach na použitie reflexií a odomknutie nákupov.';

  @override
  String get guestDialogContinue => 'Pokračovať';

  @override
  String get guestDialogLoginInstead => 'Prihlásiť sa namiesto toho';

  @override
  String get optionalLabel => 'voliteľné';

  @override
  String get accountDeleteSuccessTitle => 'Účet bol odstránený';

  @override
  String get accountDeleteSuccessBody =>
      'Váš účet a príslušné údaje boli úspešne odstránené.';

  @override
  String get accountDeleteSuccessClose => 'Zatvoriť';

  @override
  String get accountDeleteErrorTitle => 'Nepodarilo sa odstrániť účet';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Opätovné overenie bolo zrušené. Prihláste sa prosím znova a skúste odstránenie znova.';

  @override
  String get accountDeleteReauthRequired =>
      'Odstránenie účtu vyžaduje nedávne prihlásenie. Odhláste sa, prihláste sa znova a skúste odstránenie znova.';

  @override
  String get settingsDeletePermanentWarning =>
      'Táto akcia je trvalá a nemôže sa vrátiť späť. Všetky údaje asociované s vašim účtom budú odstránené.';

  @override
  String get dailyGraceTitle => 'Denné rady';

  @override
  String get dailyGraceScriptureLabel => 'VERŠ DŇA';

  @override
  String get dailyGraceSaintLabel => 'OSOBA TÝŽDŇA';

  @override
  String get dailyGraceReflectionLabel => 'VEČERNÁ REFLEXIA';

  @override
  String get dailyGraceCopiedToast => 'Verš skopírovaný do schránky';

  @override
  String get locationConsentLabel =>
      'Povoľte Ayara používať moju polohu na smer Qibly a časy modlitieb';

  @override
  String get locationConsentHint =>
      'Používa sa iba pre tieto funkcie. Vaša poloha sa nikdy nezdieľa ani neukladá.';

  @override
  String get askPageTitle => 'Opýtajte sa Ayara';

  @override
  String get askPageDescription =>
      'Opýtajte sa čohokoľvek o viere, modlitbe, živote alebo islamskej praxi a získajte rady zakorenené v Koráne a učení Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Napíšte sem svoju otázku…';

  @override
  String get askPageSubmitCta => 'Opýtajte sa';

  @override
  String get askPageInputEmptyError => 'Napíšte prosím najprv otázku.';

  @override
  String get askResultYourQuestion => 'Vaša otázka';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Smerom na Mekku';

  @override
  String get qiblaCompassInstruction =>
      'Otáčajte telefón, kým sa zlatá ihla neukazuje nahor.\nTento smer ukazuje na Qiblu (Mekku).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signál je slabý. Posuňte sa von a kliknite na Skúsiť znova.';

  @override
  String get qiblaRetry => 'Skúsiť znova';

  @override
  String get qiblaTitle => 'Smer Qibly';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km na Mekku';
  }

  @override
  String get qiblaLocationNeededTitle => 'Vyžaduje sa poloha';

  @override
  String get qiblaLocationNeededBody =>
      'Povolte prístup k polohe, aby Ayara mohla vypočítať smer ku Kaabu v Mekke od vášho aktuálneho miesta.';

  @override
  String get qiblaOpenSettings => 'Otvoriť Nastavenia';

  @override
  String get qiblaCompassLoading => 'Hľadám vašu polohu…';

  @override
  String get qiblaTowardMecca => 'Smerom na Mekku';

  @override
  String get prayerTimesTitle => 'Časy modlitieb';

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
  String get prayerTimesLocationNeededTitle => 'Vyžaduje sa poloha';

  @override
  String get prayerTimesLocationNeededBody =>
      'Povolte prístup k polohe, aby Ayara mohla vypočítať presné časy modlitieb pre vaše mesto.';

  @override
  String get prayerTimesNextLabel => 'Ďalší';

  @override
  String get prayerTimesDoneLabel => 'Hotovo';

  @override
  String get monthlyPrayerTimesTitle => 'Mesačné časy modlitieb';

  @override
  String get monthlyPrayerTimesViewButton => 'Zobraziť celý mesiac';

  @override
  String get monthlyPrayerTimesNextMonth => 'Nasledujúci mesiac';

  @override
  String get monthlyPrayerTimesDayHeader => 'Deň';

  @override
  String get sharePrayerTimes => 'Zdieľať časy modlitieb';

  @override
  String get notificationsSectionTitle => 'Upozornenia';

  @override
  String get notificationsSectionSubtitle =>
      'Pripomienky modlitieb, udalosti kalendára a ďalšie';

  @override
  String get dailyReflectionReminderTitle => 'Denná reflexia';

  @override
  String get dailyReflectionReminderDescription =>
      'Jemné denné pripomenutie na otvorenie Ayara a spojenie sa s vašou vierou.';

  @override
  String get dailyReflectionReminderEnable => 'Aktivovať denné pripomenutie';

  @override
  String get dailyReflectionReminderTimeLabel => 'Čas pripomenutia';

  @override
  String get prayerNotificationsTitle => 'Pripomienky modlitieb';

  @override
  String get prayerNotificationsDescription =>
      'Získajte jemné pripomenutie pred každým časom modlitby, aby ste zostali spojení počas celého dňa.';

  @override
  String get prayerNotificationsEnable => 'Aktivovať pripomienky modlitieb';

  @override
  String get prayerNotificationsOpenSettings => 'Otvoriť nastavenia upozornení';

  @override
  String get prayerNotificationsDenied => 'Upozornenia sú vypnuté';

  @override
  String get prayerNotificationsDeniedHint =>
      'Choďte do Nastavení a povolte upozornenia pre Ayara, aby ste dostali pripomienky časov modlitieb.';

  @override
  String get notificationsConsentLabel =>
      'Povolia upozornenia na časy modlitieb';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Modlitba zoraní';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr je modlitbou zoraní Ahl al-Bayt. Imam Ali (AS) povedal: Strážte modlitbu zoraní ako strážite svoje najcennejšie dedičstvo. Vstanite, očistite sa a stanite pred Alláhom.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Poludňajšia modlitba';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imámovia Ahl al-Bayt si cenili každý moment spomínania. Pozastavte deň, spojte Dhuhr s Asr v prípade potreby a vráťte si srdce k Alláhovi.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Popoludňajšia modlitba';

  @override
  String get prayerNotifBodyAsr =>
      'Strážte modlitbu, pretože je zmluva medzi vami a Alláhom. Čas Asr prišiel — nevytráťte ho bez spomínania.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Modlitba za súmraku';

  @override
  String get prayerNotifBodyMaghrib =>
      'Slnko zašlo — moment, ktorý Ahl al-Bayt považoval za posvätný na modlitbu. Ponúknite Maghrib a otvorte si ruky k Alláhovi v dua pred príchodom noci.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nočná modlitba';

  @override
  String get prayerNotifBodyIsha =>
      'Skončite svoj deň v spoločnosti Alláha. Imámovia podporovali Salat al-Layl po Isha — ale najprv vykonajte svoju Isha a skončite deň jeho spomínaním.';

  @override
  String get outOfReflectionsBannerText => 'Vyčerpali ste všetky reflexie';

  @override
  String get outOfReflectionsBannerCta => 'Získajte viac';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Kliknite na kruh na počítanie';

  @override
  String get dhikrResetButton => 'Resetovať';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Vykonali ste 100 spomienok na Alláha. Nech sú svetlom vášho srdca.';

  @override
  String get disclaimerTitle => 'O radách tejto aplikácie';

  @override
  String get disclaimerBody =>
      'Ayara poskytuje islamské reflexie, pripomienky a duchovný obsah na podporu vašej osobnej cesty viery, zakoreňovanej v Koráne a učení Ahl al-Bayt. Tento obsah sa ponúka iba na všeobecné informatívne a inšpiračné účely.\n\nAyara nenahradí kvalifikovanú erudíciu.\nRady v tejto aplikácii nie sú náhradou za učeného islamského učenca, marja\', alebo teologicky vyškolených učiteľov. V Šiitskom islame sú náboženské rady zakorenené v Džafarskej škole jurísprudencii (fiqh) a tradícii nasledovania živého Marja\' (zdroj emulácii) — kvalifikovaného právnika, ktorého rozhodnutia vedú veriacich v náboženských praktikách. Ak máte otázky o náboženských rozhodnutiach, halál a harám záležitostiach, alebo osobných náboženských povinnostiach, prosím vyhľadajte rady od kvalifikovaného Marja\' alebo učenca vo vašej komunite.\n\nTáto aplikácia nevydáva náboženské rozhodnutia.\nAyara neurobí autoritatívne determinácie otázok fiqh alebo osobných náboženských povinností. Nič tu by sa nemalo považovať za fatvu alebo záväzný religiózny pokyn.\n\nÚstrednosť Ahl al-Bayt.\nV Šiitskom islame sú Prorok Muhammad ﷺ a jeho čistá domácnosť — Ahl al-Bayt — autoritatívnymi vodcami islamskej komunity po Koráne. Dvanásť Imámov Ahl al-Bayt sú božsky určenými interpretami islamského učenia. Obsah v tejto aplikácii odráža túto tradíciu a snaží sa ju verne uctievať.\n\nZáležitosti komunity.\nTáto aplikácia si kladie za cieľ podnietiť vašu angažovanosť vo viere pri hlbokej úcte k základnej úlohe vašej miestnej mešity, islamského centra a nábožennej komunity. Vyzývame vás, aby ste zostali spojení s kvalifikovanými učiteľmi vo vašej blízkosti.';

  @override
  String get disclaimerClose => 'Rozumiem';

  @override
  String get disclaimerInfoTooltip => 'O radách tejto aplikácie';

  @override
  String get disclaimerSettingsSubtitle =>
      'Iba na všeobecné informatívne účely. Kliknite na prečítanie úplného vylúčenia zodpovednosti.';

  @override
  String get disclaimerSectionHeader => 'Vylúčenie zodpovednosti za rady';

  @override
  String get navHome => 'Domov';

  @override
  String get navReflect => 'Reflexia';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Kalendár';

  @override
  String get dashboardToday => 'DNES';

  @override
  String get dashboardComingUp => 'Nadchádzajúce';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dni',
      one: 'deň',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Rýchly prístup';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Rady';

  @override
  String get quickActionPrayerTimes => 'Časy modlitieb';

  @override
  String get askAyaraTitle => 'Opýtajte sa Ayara';

  @override
  String get askAyaraSubtitle =>
      'Opýtajte sa akejkoľvek islamskej otázky a získajte premyslené, vedené odpovede.';

  @override
  String get askAyaraHint => 'napr. Aký je významný Ramadán?';

  @override
  String get askAyaraSubmit => 'Opýtajte sa';

  @override
  String get wisdomOfTheDayTitle => 'Múdrosť dňa';

  @override
  String get calendarScreenTitle => 'Islamský kalendár';

  @override
  String get calendarUpcomingOccasions => 'Nadchádzajúce príležitosti';

  @override
  String get calendarOccasionRemindersTitle => 'Pripomienky príležitostí';

  @override
  String get calendarOccasionRemindersHint =>
      'Notifikácia večer pred každou príležitosťou';

  @override
  String get calendarNotifPermissionDenied =>
      'Povolenie upozornení bolo odmietnuté. Zapnite ho v nastaveniach vášho zariadenia.';

  @override
  String get calendarNoEvents => 'Nenašli sa žiadne nadchádzajúce udalosti.';

  @override
  String get calendarAddToPhone => 'Pridať do telefónneho kalendára';

  @override
  String get calendarAddedToPhone => 'Pridané do kalendára';

  @override
  String get calendarCountdownToday => 'DNES';

  @override
  String get calendarCountdownTomorrow => 'ZAJTRA';

  @override
  String calendarCountdownDays(int days) {
    return 'za $days dni';
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
  String get calendarMonthJun => 'Jún';

  @override
  String get calendarMonthJul => 'Júl';

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
  String get calendarSeasonMuharramEarly =>
      'Dni Muharramu — spomínajte si na Karbalu';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — dni žiaľu a reflexie';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — štyridsať dní Husayna';

  @override
  String get calendarSeasonRoadToArbaeen => 'Cesta na Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — úsvit zjavenia';

  @override
  String get calendarSeasonMidShaban =>
      'Polovica Sha\'banu — narodeniny Imáma al-Mahdího (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mesiac Koránu';

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
  String get duasScreenTitle => 'Duas a Ziyarat';

  @override
  String get duasSearchHint => 'Hľadať duas, ziyarat…';

  @override
  String get duasFilterAll => 'Všetko';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas a ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nenašli sa žiadne duas.';

  @override
  String get duaCategoryDaily => 'Denný';

  @override
  String get duaCategoryWeekly => 'Týždenný';

  @override
  String get duaCategoryOccasions => 'Príležitosti';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Narodenie';

  @override
  String get eventTypeMartyrdom => 'Mučenictvo';

  @override
  String get eventTypeOccasion => 'Príležitosť';

  @override
  String get duaCopyTooltip => 'Kopírovať preklad';

  @override
  String get duaToggleTransliteration => 'Transliterácia';

  @override
  String get duaToggleTranslation => 'Preklad';

  @override
  String get duaAskAiLabel => 'Opýtajte sa Ayara, aby vysvetlila túto dua';

  @override
  String get duaAskAiLockedLabel => 'Opýtajte sa Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Vysvetlenia Ayara sú dostupné pre členov Wilaya. Upgradujte v Nastaveniach.';

  @override
  String duaAiComingSoon(String name) {
    return 'Opýtajte sa Ayara na \"$name\" — čoskoro!';
  }

  @override
  String get duaCopiedToast => 'Dua skopírovaná do schránky.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Alláh je najväčší';

  @override
  String get tasbihAlhamdulillahMeaning => 'Všetka chvála patrí Alláhovi';

  @override
  String get tasbihSubhanallahMeaning => 'Chvála Alláhovi';

  @override
  String get tasbihResetTooltip => 'Resetovať';

  @override
  String get tasbihCompleteTitle => 'Tasbih hotový';

  @override
  String get tasbihCompleteMessage => 'Nech Alláh prijme váš dhikr.';

  @override
  String get tasbihTapHint => 'Kliknite kdekoľvek na počítanie';

  @override
  String get tasbihatScreenTitle => 'Sprievodca modlitbou';

  @override
  String get tasbihatScreenSubtitle => 'OSLÁVENIE MODLITBY';

  @override
  String get tasbihatScreenDescription =>
      'Kompletný sprievodca oslavovaním recitovaným počas a po denných modlitbách — podľa tradície Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitované počas 3. a 4. rakʿah';

  @override
  String get tasbihatArba3Info =>
      'V Šiitskej jurísprudencii Tasbiḥāt al-Arbaʿa nahrádza Suratu al-Fatiha v 3. a 4. rakʿah Dhuhr, Asr, Maghrib a Isha. Je povinné (wājib) recitovať ju raz a odporúčané (mustaḥabb) recitovať ju trikrát.';

  @override
  String get tasbihatArba3Translation =>
      'Chvála Alláhovi · Všetka chvála patrí Alláhovi\nNie je boha okrem Alláha · Alláh je najväčší';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitácia hotová';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Nech bude vaša modlitba prijatá — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Kliknite po každej recitácii';

  @override
  String get tasbihatZahraSubtitle => 'Po každej modlitbe · 100 korálikmi';

  @override
  String get tasbihatZahraOriginLabel => 'Pôvod';

  @override
  String get tasbihatZahraHadith =>
      'Pani Fatima al-Zahra (sa) sa opýtala Proroka ﷺ na slúgu. Povedal: \"Nemám vám ukázať niečo lepšie? Recitujte Subḥānallāh 33-krát, Alḥamdulillāh 33-krát a Allāhu Akbar 34-krát po každej modlitbe. To je pre vás lepšie ako slúga.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, zväzok 85';

  @override
  String get tasbihatZahraOpenCounter => 'Otvoriť počítadlo Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'ODPORÚČANÉ DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'Po dokončení modlitby';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Po každej povinnej modlitbe';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Ktokoľvek recituje Āyat al-Kursī po každej povinnej modlitbe, nič ho nedrží od raja okrem smrti. Imam al-Bāqir (a) povedal, že je medzi najväčšími verších v Koráne.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Po každej modlitbe · zatvára všetky modlitby';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Posielanie pozdravov Prorokovi ﷺ a jeho čistej rodine (Āl Muḥammad) sa odporúča na zatvorenie každej modlitby. Imam al-Ṣādiq (a) povedal: \"Akákoľvek dua je pozastavená, kým neposlaním ṣalawāt na Muḥammada a jeho rodinu.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Po každej modlitbe · pre Imáma nášho času';

  @override
  String get tasbihatDuaFarajSource => 'Učený Imámom al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua za opätovný príchod Imáma al-Mahdīho (af), dvanásteho Imáma, ktorú ho naučil jeho otec. Často ju recitujú mnohí šiítski moslimovia po modlitbe ako prejav oddanosti žijúcemu Imámovi.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ pani Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Po Maghrib a Isha · zvlášť odporúčané';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) povedal, že recitovanie Tasbīḥ al-Zahrā po Isha pred spánkom je lepšie ako 1000 rakʿahs voliteľnej modlitby. Jeho svetlo stúpa do nebies.';

  @override
  String get tasbihFatimaGiftPre => 'Dar od Proroka';

  @override
  String get tasbihFatimaGiftPost => 'recitovaný po každej modlitbe';

  @override
  String get prayerTrackerTitle => 'SLEDOVAČ MODLITIEB';

  @override
  String get prayerTrackerPrayed => 'Modlený';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dní postupnosti';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Všetky modlitby dnes dokončené. Nech Alláh prijme.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Dokončené dnes';

  @override
  String get dhikrTrackerNotDoneToday => 'Nehotovo dnes';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dní postupnosti';
  }

  @override
  String get dhikrReminderTitle => 'Pripomenutie Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Jemné denné pripomenutie na recitovanie vášho Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Aktivovať pripomenutie Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Čas pripomenutia';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Denný hadith';

  @override
  String get hadithLabelArabic => 'ARABČINA';

  @override
  String get hadithLabelTranslation => 'PREKLAD';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Zdieľať tento hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Predchádzajúci';

  @override
  String get hadithNavNext => 'Nasledujúci';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Štrnásti neomylní';

  @override
  String get imamsScreenSubtitle =>
      'Prorok, pani Fatima a dvanásť Imámov — očistení a neomylní vodcovia v dvanásťimámovskom šiizme';

  @override
  String get imamLabelBorn => 'Narodený';

  @override
  String get imamLabelMartyrdom => 'Mučenictvo';

  @override
  String get imamLabelStatus => 'Stav';

  @override
  String get imamSectionBiography => 'BIOGRAFIE';

  @override
  String get imamSectionFamousSaying => 'SLÁVNY VÝROK';

  @override
  String get imamRoleProphet => 'Posledný Prorok';

  @override
  String get imamRoleInfallible => 'Neomylný';

  @override
  String get imamOrdinal1 => '1. Imám';

  @override
  String get imamOrdinal2 => '2. Imám';

  @override
  String get imamOrdinal3 => '3. Imám';

  @override
  String get imamOrdinal4 => '4. Imám';

  @override
  String get imamOrdinal5 => '5. Imám';

  @override
  String get imamOrdinal6 => '6. Imám';

  @override
  String get imamOrdinal7 => '7. Imám';

  @override
  String get imamOrdinal8 => '8. Imám';

  @override
  String get imamOrdinal9 => '9. Imám';

  @override
  String get imamOrdinal10 => '10. Imám';

  @override
  String get imamOrdinal11 => '11. Imám';

  @override
  String get imamOrdinal12 => '12. Imám';

  @override
  String get duaAudioScreenTitle => 'Počúvajte Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Vyberte dua na počúvanie. Kliknite na dlaždicu na prehrávanie alebo pozastavenie.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio pre túto dua bude dostupné v budúcej aktualizácii.';

  @override
  String get duaAudioClose => 'Zatvoriť';

  @override
  String get duaAudioError =>
      'Nepodarilo sa načítať audio. Skontrolujte prosím vaše pripojenie.';

  @override
  String get duaAudioMetaTransmittedBy => 'Prenášané';

  @override
  String get duaAudioMetaOccasion => 'Príležitosť';

  @override
  String get duaAudioMetaDuration => 'Trvanie';

  @override
  String get quickActionDailyHadith => 'Denný hadith';

  @override
  String get quickAction14Masumeen => 'Štrnásti neomylní';

  @override
  String get quickActionListenDuas => 'Počúvajte';

  @override
  String get quickActionTasbihat => 'Sprievodca modlitbou';

  @override
  String get pilgrimageSectionTitle => 'Svätá cesta';

  @override
  String get pilgrimageSectionSubtitle =>
      'Kompletní průvodci Hadždžu a Umre — pouť k Svätému domu Alláha v Mekke';

  @override
  String get hajjCardTitle => 'Hadždž';

  @override
  String get hajjCardSubtitle => 'Piaty pilier islamu';

  @override
  String get hajjCardDescription =>
      'Veľká ročná pouť — povinná raz v živote pre každého schopného muslima';

  @override
  String get hajjScreenTitle => 'Sprievodca Hadždžom';

  @override
  String get hajjScreenSubtitle => 'Sprievodca steppol-by-step veľkou pútou';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Menšia pouť';

  @override
  String get umrahCardDescription =>
      'Hlboko vykonávaná duchovná cesta, ktorá môže byť vykonaná kedykoľvek v priebehu roka';

  @override
  String get umrahScreenTitle => 'Sprievodca Umrahou';

  @override
  String get umrahScreenSubtitle => 'Sprievodca steppol-by-step menšou pútou';

  @override
  String get pilgrimageStepsTitle => 'Rituály a kroky';

  @override
  String get pilgrimageImportantNotesTitle => 'Dôležité poznámky';

  @override
  String get pilgrimageDuaTitle => 'Dua pre tento krok';

  @override
  String get pilgrimageJafariNoteTitle => 'Poznámka k fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Dokončené';

  @override
  String get pilgrimageMarkDone => 'Označiť ako dokončené';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done z $total krokov';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Šiitskí pútnici';

  @override
  String get pilgrimageShiaNoteBody =>
      'Mnohí šiítski pútnici tiež cestujú do Mediny na ziyarat Proroka Muhammada (SAW) v Masjid al-Nabawi a na hroby v Jannat al-Baqi. Tieto návštevy majú hlboký duchovný význam, aj keď samy o sebe nie sú rituálmi Hajj.';

  @override
  String get hajjIntro =>
      'Hajj je piatym pilierom islamu, povinný raz za život pre každého moslima, ktorý je fyzicky a finančne schopný. Pre väčšinu dnešných dvanásťimámovských pútnikov to znamená Hajj al-Tamattu\', vykonávaný v mesiaci Dhul Hijjah v stopách proroka Ibrahima (AS), jeho syna Ismaila (AS) a pani Hajar. Tento sprievodca nasleduje Ja\'fariho osnovu rituálov, zatiaľ čo ziyarat v Medine zostáva hlboko cenenou cestou pred alebo po Hajj.';

  @override
  String get umrahIntro =>
      'Umrah je menšia pouť do Mekky a na rozdiel od Hadždža môže byť vykonaná kedykoľvek v priebehu roka. Hoci nie je povinná, nesie obrovskú duchovnú награду a považuje sa za vysoko odporúčané činu zbožnosti. Delí si niekoľko rituálov s Hadždžom, ale je kratšia, pozostávajúc zo štyroch hlavných obradov.';

  @override
  String get voiceInputTitle => 'Hlasový vstup';

  @override
  String get voiceInputMicTitle => 'Mikrofón';

  @override
  String get voiceInputMicSubtitle =>
      'Povedzte svoj vstup Ask Ayara namiesto písania.';

  @override
  String get voiceInputMicDenied => 'Prístup k mikrofónu bol zamietnutý.';

  @override
  String get voiceInputSpeak => 'Hovorte namiesto';

  @override
  String get voiceInputListening => 'Počúvam…';

  @override
  String get voiceInputPermissionDenied =>
      'Prístup k mikrofónu je potrebný pre hlasový vstup.';
}
