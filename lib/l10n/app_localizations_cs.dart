// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Vyberte si jazyk';

  @override
  String get languageSelectSub => 'Později to můžete změnit v Nastavení';

  @override
  String get actionContinue => 'Pokračovat';

  @override
  String get languageSuggestedHeader => 'Doporučené';

  @override
  String get languageAllHeader => 'Všechny jazyky';

  @override
  String get languageSuggestedBadge => 'Doporučené';

  @override
  String get languageSearchHint => 'Hledat…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Denní vedení';

  @override
  String get categorySlot02 => 'Ímán a důvěra';

  @override
  String get categorySlot03 => 'Rozjímání o modlitbě';

  @override
  String get categorySlot04 => 'Trpělivost a naděje';

  @override
  String get categorySlot05 => 'Hledej odpuštění';

  @override
  String get categorySlot06 => 'Milosrdenství a soucit';

  @override
  String get categorySlot07 => 'Síla víry';

  @override
  String get categorySlot08 => 'Vděčné srdce';

  @override
  String get categorySlot09 => 'Smysl života';

  @override
  String get categorySlot10 => 'Rodinná pouta';

  @override
  String get categorySlot11 => 'Vnitřní klid';

  @override
  String get categorySlot12 => 'Moudrost Proroka';

  @override
  String get categorySlot13 => 'Dobrý charakter';

  @override
  String get categorySlot14 => 'Odolávej pokušení';

  @override
  String get categorySlot15 => 'Večerní dhikr';

  @override
  String get categoryCustom => 'Osobní rozjímání';

  @override
  String get dhikrMeaningSubhanallah => 'Sláva Alláhu';

  @override
  String get dhikrMeaningAlhamdulillah => 'Veškerá chvála náleží Alláhu';

  @override
  String get dhikrMeaningAllahuAkbar => 'Alláh je Největší';

  @override
  String get quranVerseHeartAtRest =>
      'Věru, v připomínání Alláha nalézají srdce klid.';

  @override
  String get promptHint =>
      'Klepněte na kategorii pro islámské vedení a rozjímání';

  @override
  String get currentLanguage => 'Aktuální jazyk';

  @override
  String get settingsLanguage => 'Nastavení jazyka';

  @override
  String get settingsTitle => 'Nastavení';

  @override
  String get chooseLanguage => 'Vyberte si jazyk';

  @override
  String get continueCta => 'Pokračovat';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count slov',
      few: '$count slova',
      one: '$count slovo',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Možnosti';

  @override
  String get newCta => 'Nové';

  @override
  String get actionsTitle => 'Co byste chtěli udělat?';

  @override
  String get copy => 'Kopírovat';

  @override
  String get share => 'Sdílet';

  @override
  String get close => 'Zavřít';

  @override
  String get copiedToast => 'Zkopírováno do schránky';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Nepodařilo se vygenerovat novou odpověď';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nChcete to zkusit znovu?';
  }

  @override
  String get cancelCta => 'Zrušit';

  @override
  String get retryCta => 'Zkusit znovu';

  @override
  String get authTitle => 'Vytvořte si účet';

  @override
  String get continueAsGuest => 'Pokračovat jako host';

  @override
  String get signInGoogle => 'Přihlásit se přes Google';

  @override
  String get signInApple => 'Přihlásit se přes Apple';

  @override
  String get signInEmail => 'Přihlásit se e-mailem';

  @override
  String get upgradeWithApple => 'Pokračovat přes Apple';

  @override
  String get mustAccept =>
      'Musíte přijmout Podmínky a potvrdit Zásady ochrany osobních údajů.';

  @override
  String get termsLabel => 'Souhlasím s Podmínkami služby';

  @override
  String get privacyLabel => 'Přečetl(a) jsem si Zásady ochrany osobních údajů';

  @override
  String get marketingOptIn => 'Souhlasím se zasíláním novinek a nabídek';

  @override
  String get openTerms => 'Podmínky služby';

  @override
  String get openPrivacy => 'Zásady ochrany osobních údajů';

  @override
  String get accountSection => 'Účet';

  @override
  String get guestMode => 'Režim hosta';

  @override
  String get signedIn => 'Přihlášeno';

  @override
  String get upgradeHint =>
      'Ukládejte si svá rozjímání napříč zařízeními vytvořením účtu.';

  @override
  String get upgradeWithGoogle => 'Pokračovat přes Google';

  @override
  String get signOut => 'Odhlásit se';

  @override
  String get snackUpgraded => 'Účet byl upgradován přes Google ✅';

  @override
  String get snackSignedIn => 'Přihlášeno přes Google ✅';

  @override
  String get snackSignedOut => 'Odhlášeno';

  @override
  String get snackSignedInApple => 'Přihlášeno přes Apple ✅';

  @override
  String get snackSignedInGoogle => 'Přihlášeno přes Google ✅';

  @override
  String get snackUpgradedApple => 'Účet byl upgradován přes Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Účet byl upgradován přes Google ✅';

  @override
  String get historyTitle => 'Předchozí rozjímání';

  @override
  String get historyOpenCta => 'Předchozí rozjímání';

  @override
  String get historyEmpty => 'Zatím žádná uložená rozjímání.';

  @override
  String get historyDeleteTitle => 'Smazat rozjímání?';

  @override
  String get historyDeleteBody => 'Tímto se vybraná položka trvale odstraní.';

  @override
  String get deleteCta => 'Smazat';

  @override
  String get historyButton => 'Předchozí rozjímání';

  @override
  String get historyEmptyTitle => 'Zatím žádná rozjímání';

  @override
  String get historyEmptyBody =>
      'Nejprve něco vytvořte — vaše uložené položky se objeví zde.';

  @override
  String get historyDelete => 'Smazat';

  @override
  String get footerTitle => 'S Wilaya, Ímán a Sabr';

  @override
  String get footerSubtitle => 'Jedna modlitba po druhé';

  @override
  String get genericErrorSnack =>
      'Něco se pokazilo — zkuste to prosím za chvíli znovu.';

  @override
  String get upgradeAccountCta =>
      'Ukládejte si svá rozjímání napříč zařízeními – vytvořte si účet';

  @override
  String get deleteAccount => 'Smazat účet';

  @override
  String get exportData => 'Exportovat moje data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Klid 🐯\nAyara potřebuje chvilku před dalším…';

  @override
  String get rateDailyLimit =>
      'Prozatím vám došla rozjímání.\nZískejte další rozjímání nebo přejděte na Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Využili jste všechna svá rozjímání.\nDobijte si další nebo přejděte na Wilaya a pokračujte.';

  @override
  String get rateGraceCreditsExhausted =>
      'Prozatím vám došla rozjímání.\nZískejte další rozjímání nebo přejděte na Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya odemyká prémiové funkce, budoucí kategorie a speciální odznak.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vaše rozjímání jsou momentálně vyčerpána. Plán: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nepodařilo se zkontrolovat vaše rozjímání: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Při kontrole vašich rozjímání se něco pokazilo.';

  @override
  String get aiFallbackGeneric =>
      'Něco se pokazilo — zkuste to prosím za chvíli znovu.';

  @override
  String get limitSectionTitle => 'Rozjímání';

  @override
  String get limitTodayLabel => 'Využití';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Zbývající rozjímání: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plán: $plan';
  }

  @override
  String get limitLoadingLabel => 'Načítání…';

  @override
  String get limitLoadingLabelDescription =>
      'Zobrazuje se na kartě rozjímání při načítání statistik využití.';

  @override
  String get aiLimitTitle => 'Rozjímání';

  @override
  String get aiLimitSubtitle =>
      'Každá odpověď spotřebuje 1 rozjímání. Standard zahrnuje počáteční rozjímání. Wilaya odemyká prémiové kategorie a umožňuje dobití.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total využitých rozjímání';
  }

  @override
  String get creditsSectionTitle => 'Rozjímání';

  @override
  String get creditsUsageLabel => 'Využití';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Zbývající rozjímání: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plán: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Načítání…';

  @override
  String get creditsLoadingLabelDescription =>
      'Zobrazuje se při načítání statistik rozjímání.';

  @override
  String get creditsTitle => 'Rozjímání';

  @override
  String get creditsSubtitle =>
      'Každá odpověď spotřebuje 1 rozjímání. Standard zahrnuje počáteční rozjímání. Wilaya odemyká prémiové kategorie a umožňuje dobití.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total využitých rozjímání';
  }

  @override
  String get settingsDeleteTitle => 'Smazat účet';

  @override
  String get settingsDeleteDescription =>
      'Trvale smažte svůj účet a všechna související data.';

  @override
  String get settingsDeleteButtonLabel => 'Smazat můj účet';

  @override
  String get settingsDeleteDialogTitle => 'Smazat účet?';

  @override
  String get settingsDeleteDialogBody =>
      'Tato akce je trvalá a nelze ji vrátit zpět.\n\nBudou smazány všechny vaše chaty, historie i informace o účtu.';

  @override
  String get settingsDeleteDialogCancel => 'Zrušit';

  @override
  String get settingsDeleteDialogConfirm => 'Smazat';

  @override
  String get settingsFreeLimitUsedTitle => 'Počáteční rozjímání byla využita';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Počáteční rozjímání pro toto zařízení už byla využita. Přejděte na Wilaya nebo si kupte další rozjímání a pokračujte.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Počáteční rozjímání byla využita';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Počáteční rozjímání pro toto zařízení už byla využita. Přejděte na Wilaya nebo si kupte další rozjímání a pokračujte.';

  @override
  String get deviceBoundError =>
      'Toto zařízení je již propojeno s jiným účtem. Přihlaste se prosím původním účtem.';

  @override
  String get premiumTitle => 'Režim Wilaya';

  @override
  String get premiumSubtitleBasic => 'Odemkněte plný zážitek z Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Máte Wilaya. Potřebujete více rozjímání?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Aktuální plán: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Rozjímání: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Nákupy momentálně nejsou k dispozici.';

  @override
  String get premiumSignInToPurchase =>
      'Přihlaste se a kupte si rozjímání nebo odemkněte Wilaya.';

  @override
  String get premiumRestorePurchases => 'Obnovit nákupy';

  @override
  String get premiumProcessing => 'Zpracovává se…';

  @override
  String get premiumRestoreHintTitle =>
      'Už jste si na tomto nebo jiném zařízení koupili Wilaya nebo rozjímání?';

  @override
  String get premiumRestoreHintBody =>
      'Obnovte své nákupy, pokud se nezobrazují.';

  @override
  String get premiumBuyCredits200 => 'Koupit 200 rozjímání';

  @override
  String get premiumBuyCredits400 => 'Koupit 400 rozjímání';

  @override
  String get premiumBecomePremiumOneTime => 'Přejít na režim Wilaya';

  @override
  String get premiumTopupHint =>
      'S Wilaya si můžete kdykoli dobít další rozjímání.';

  @override
  String get premiumUpgradeCta => 'Přejít na vyšší plán';

  @override
  String get premiumRequiredForCategory =>
      'Tato kategorie je dostupná pouze uživatelům Wilaya. Přejděte v Nastavení na vyšší plán a odemkněte veškerý prémiový obsah.';

  @override
  String get premiumBenefitsBasic =>
      'Odemkněte Wilaya, získejte více rozjímání, přístup k prémiovým kategoriím a pokračujte kdykoli potřebujete vedení.';

  @override
  String get premiumBenefitsPremium =>
      'Jste v režimu Wilaya. Pokud vám docházejí rozjímání, přidejte si další a pokračujte bez přerušení.';

  @override
  String get premiumButtonBecomePremium => 'Odemknout Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Přidat 1000 rozjímání';

  @override
  String get premiumBadge => 'Wilaya aktivní';

  @override
  String get premiumLoadingStore => 'Načítání obchodu…';

  @override
  String get premiumProductNotAvailable =>
      'Tento produkt zatím není v obchodě dostupný. Zkuste to prosím později.';

  @override
  String get premiumPurchaseError =>
      'Při nákupu se něco pokazilo. Zkuste to prosím znovu.';

  @override
  String get premiumBuyCredits100 => 'Přidat 100 rozjímání';

  @override
  String get premiumFeatureLocked =>
      'Odemkněte Wilaya pro přístup k této funkci.';

  @override
  String get lockedCategoriesHint =>
      'Některé kategorie jsou vyhrazeny členům Wilaya. Odemkněte je a prozkoumejte každé rozjímání na své cestě.';

  @override
  String get freePlanBlockedTitle => 'Využili jste všechna počáteční rozjímání';

  @override
  String get freePlanBlockedBody =>
      'Jste na plánu Standard s počátečními rozjímáními a dosáhli jste limitu. Chcete-li pokračovat — a odemknout prémiové kategorie — přejděte na Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Podívejte se níže na možnosti Wilaya';

  @override
  String get graceBlockedTitle => 'Využili jste všechna počáteční rozjímání';

  @override
  String get graceBlockedBody =>
      'Jste na plánu Standard s počátečními rozjímáními a dosáhli jste limitu. Chcete-li pokračovat — a odemknout prémiové kategorie — přejděte na Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Podívejte se níže na možnosti Wilaya';

  @override
  String get rateGuestMustSignIn =>
      'Přihlaste se, abyste mohli používat Ayara a svá rozjímání.';

  @override
  String get guestNoCreditsTitle => 'Režim hosta';

  @override
  String get guestNoCreditsBody =>
      'Jako host můžete aplikaci procházet, ale nemůžete používat rozjímání. Přihlaste se později v Nastavení, abyste mohli používat rozjímání a odemknout nákupy.';

  @override
  String get guestDialogContinue => 'Pokračovat';

  @override
  String get guestDialogLoginInstead => 'Místo toho se přihlásit';

  @override
  String get optionalLabel => 'volitelné';

  @override
  String get accountDeleteSuccessTitle => 'Účet smazán';

  @override
  String get accountDeleteSuccessBody =>
      'Váš účet a související data byla úspěšně smazána.';

  @override
  String get accountDeleteSuccessClose => 'Zavřít';

  @override
  String get accountDeleteErrorTitle => 'Účet se nepodařilo smazat';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Opětovné ověření bylo zrušeno. Přihlaste se prosím znovu a zkuste účet smazat ještě jednou.';

  @override
  String get accountDeleteReauthRequired =>
      'Smazání účtu vyžaduje nedávné přihlášení. Odhlaste se, znovu se přihlaste a zkuste to znovu.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tato akce je trvalá a nelze ji vrátit zpět. Všechna data spojená s vaším účtem budou smazána.';

  @override
  String get dailyGraceTitle => 'Denní vedení';

  @override
  String get dailyGraceScriptureLabel => 'VERŠ DNE';

  @override
  String get dailyGraceSaintLabel => 'OSOBA TÝDNE';

  @override
  String get dailyGraceReflectionLabel => 'VEČERNÍ ROZJÍMÁNÍ';

  @override
  String get dailyGraceCopiedToast => 'Verš zkopírován do schránky';

  @override
  String get locationConsentLabel =>
      'Povolit Ayara používat moji polohu pro směr qibly a časy modliteb';

  @override
  String get locationConsentHint =>
      'Používá se pouze pro tyto funkce. Vaše poloha se nikdy nesdílí ani neukládá.';

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
  String get askPageTitle => 'Zeptejte se Ayara';

  @override
  String get askPageDescription =>
      'Ptejte se na cokoli ohledně víry, modlitby, života nebo islámské praxe a získejte vedení vycházející z Koránu a učení Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Sem napište svou otázku…';

  @override
  String get askPageSubmitCta => 'Zeptat se';

  @override
  String get askPageInputEmptyError => 'Nejprve napište otázku.';

  @override
  String get askResultYourQuestion => 'Vaše otázka';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Směrem k Mekce';

  @override
  String get qiblaCompassInstruction =>
      'Otáčejte telefonem, dokud zlatá střelka nebude směřovat nahoru.\nTento směr ukazuje k qible (Mekce).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Signál GPS je slabý. Přesuňte se ven a klepněte na Zkusit znovu.';

  @override
  String get qiblaRetry => 'Zkusit znovu';

  @override
  String get qiblaTitle => 'Směr qibly';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km do Mekky';
  }

  @override
  String get qiblaLocationNeededTitle => 'Vyžadována poloha';

  @override
  String get qiblaLocationNeededBody =>
      'Povolte přístup k poloze, aby Ayara mohla vypočítat směr ke Ka\'bě v Mekce odkudkoli, kde se nacházíte.';

  @override
  String get qiblaOpenSettings => 'Otevřít Nastavení';

  @override
  String get qiblaCompassLoading => 'Zjišťuje se vaše poloha…';

  @override
  String get qiblaTowardMecca => 'Směrem k Mekce';

  @override
  String get prayerTimesTitle => 'Časy modliteb';

  @override
  String get prayerTimesFajr => 'Fadžr';

  @override
  String get prayerTimesDhuhr => 'Zuhr';

  @override
  String get prayerTimesAsr => 'Asr';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Išá';

  @override
  String get prayerTimesLocationNeededTitle => 'Vyžadována poloha';

  @override
  String get prayerTimesLocationNeededBody =>
      'Povolte přístup k poloze, aby Ayara mohla vypočítat přesné časy modliteb pro vaše město.';

  @override
  String get prayerTimesNextLabel => 'Další';

  @override
  String get prayerTimesDoneLabel => 'Hotovo';

  @override
  String get monthlyPrayerTimesTitle => 'Měsíční časy modliteb';

  @override
  String get monthlyPrayerTimesViewButton => 'Zobrazit celý měsíc';

  @override
  String get monthlyPrayerTimesNextMonth => 'Příští měsíc';

  @override
  String get monthlyPrayerTimesDayHeader => 'Den';

  @override
  String get sharePrayerTimes => 'Sdílet časy modliteb';

  @override
  String get notificationsSectionTitle => 'Oznámení';

  @override
  String get notificationsSectionSubtitle =>
      'Připomínky modliteb, události v kalendáři a další';

  @override
  String get dailyReflectionReminderTitle => 'Denní rozjímání';

  @override
  String get dailyReflectionReminderDescription =>
      'Jemná denní připomínka, abyste otevřeli Ayara a propojili se se svou vírou.';

  @override
  String get dailyReflectionReminderEnable => 'Zapnout denní připomínku';

  @override
  String get dailyReflectionReminderTimeLabel => 'Čas připomínky';

  @override
  String get prayerNotificationsTitle => 'Připomínky modliteb';

  @override
  String get prayerNotificationsDescription =>
      'Dostávejte jemnou připomínku před každou modlitbou, abyste zůstali během dne duchovně spojeni.';

  @override
  String get prayerNotificationsEnable => 'Zapnout připomínky modliteb';

  @override
  String get prayerNotificationsOpenSettings => 'Otevřít nastavení oznámení';

  @override
  String get prayerNotificationsDenied => 'Oznámení jsou vypnuta';

  @override
  String get prayerNotificationsDeniedHint =>
      'Přejděte do Nastavení a povolte oznámení pro Ayara, abyste dostávali připomínky časů modliteb.';

  @override
  String get notificationsConsentLabel => 'Povolit oznámení pro časy modliteb';

  @override
  String get prayerNotifTitleFajr => '🌅 Fadžr — ranní modlitba';

  @override
  String get prayerNotifBodyFajr =>
      'Fadžr je modlitbou rán Ahl al-Bayt. Imám Alí (AS) řekl: Střež ranní modlitbu tak, jako střežíš to nejcennější, co ti bylo svěřeno. Vstaň, očisti se a postav se před Alláha.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Zuhr — polední modlitba';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imámové Ahl al-Bayt si cenili každého okamžiku vzpomínání. Zastavte se uprostřed dne, pokud je třeba spojte zuhr s asr a navraťte své srdce k Alláhu.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — odpolední modlitba';

  @override
  String get prayerNotifBodyAsr =>
      'Střež modlitbu, neboť je smlouvou mezi tebou a Alláhem. Nastal čas asr — nenech ho minout bez připomenutí Alláha.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — modlitba při západu slunce';

  @override
  String get prayerNotifBodyMaghrib =>
      'Slunce zapadlo — okamžik, který Ahl al-Bayt považovali za posvátný pro prosby. Pomodli se maghrib a pozvedni ruce k Alláhu v du\'á dříve, než začne noc.';

  @override
  String get prayerNotifTitleIsha => '🌙 Išá — noční modlitba';

  @override
  String get prayerNotifBodyIsha =>
      'Zakončete svůj den ve společnosti Alláha. Imámové povzbuzovali k Salát al-Lajl po Išá — ale nejprve dokončete svou Išá a uzavřete den Jeho připomínáním.';

  @override
  String get outOfReflectionsBannerText => 'Využili jste všechna svá rozjímání';

  @override
  String get outOfReflectionsBannerCta => 'Získat další';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Klepnutím na kruh počítáte';

  @override
  String get dhikrResetButton => 'Resetovat';

  @override
  String get dhikrComplete => 'Mašá\'Alláh';

  @override
  String get dhikrCompleteMessage =>
      'Dokončili jste 100 připomenutí Alláha. Kéž jsou světlem pro vaše srdce.';

  @override
  String get disclaimerTitle => 'O vedení v této aplikaci';

  @override
  String get disclaimerBody =>
      'Ayara poskytuje islámská rozjímání, připomínky a duchovní obsah na podporu vaší osobní cesty víry, zakořeněný v Koránu a učení Ahl al-Bayt. Tento obsah je nabízen pouze pro obecné informační a inspirativní účely.\n\nAyara nenahrazuje kvalifikované náboženské vzdělání.\nVedení v této aplikaci nenahrazuje kvalifikovaného islámského učence, marja\'e ani teologicky vzdělaného učitele. V šíitském islámu je náboženské vedení zakořeněno v džafarovské škole jurisprudence (fiqh) a v tradici následování žijícího marja\'e (zdroje následování) — kvalifikovaného právníka, jehož rozhodnutí vedou věřící v náboženské praxi. Pokud máte otázky týkající se náboženských rozhodnutí, záležitostí halal a haram nebo osobních náboženských povinností, obraťte se prosím na kvalifikovaného marja\'e nebo učence ve vaší komunitě.\n\nTato aplikace nevydává náboženská rozhodnutí.\nAyara nepřijímá autoritativní rozhodnutí ve věcech fiqhu ani osobních náboženských povinností. Nic zde by nemělo být považováno za fatwu nebo závazné náboženské nařízení.\n\nÚstřední postavení Ahl al-Bayt.\nV šíitském islámu jsou prorok Muhammad ﷺ a jeho očištěná rodina — Ahl al-Bayt — autoritativními vůdci islámské obce po Koránu. Dvanáct imámů Ahl al-Bayt jsou božsky ustanovení vykladači islámského učení. Obsah této aplikace tuto tradici odráží a snaží se ji věrně ctít.\n\nZáležitosti komunity.\nTato aplikace se snaží podporovat vaše zapojení do víry a zároveň hluboce respektuje zásadní roli vaší místní mešity, islámského centra a náboženské komunity. Povzbuzujeme vás, abyste zůstali ve spojení a učili se od kvalifikovaných učitelů ve svém okolí.';

  @override
  String get disclaimerClose => 'Rozumím';

  @override
  String get disclaimerInfoTooltip => 'O vedení v této aplikaci';

  @override
  String get disclaimerSettingsSubtitle =>
      'Pouze pro obecné informační účely. Klepněte pro přečtení úplného upozornění.';

  @override
  String get disclaimerSectionHeader => 'Upozornění k vedení';

  @override
  String get navHome => 'Domů';

  @override
  String get navReflect => 'Rozjímat';

  @override
  String get navDuas => 'Du\'á';

  @override
  String get navCalendar => 'Kalendář';

  @override
  String get dashboardToday => 'DNES';

  @override
  String get dashboardComingUp => 'Nadcházející';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dní',
      few: 'dny',
      one: 'den',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Rychlý přístup';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Vedení';

  @override
  String get quickActionPrayerTimes => 'Časy modliteb';

  @override
  String get askAyaraTitle => 'Zeptejte se Ayara';

  @override
  String get askAyaraSubtitle =>
      'Položte jakoukoli islámskou otázku a získejte promyšlenou, vedenou odpověď.';

  @override
  String get askAyaraHint => 'např. Jaký je význam Ramadánu?';

  @override
  String get askAyaraSubmit => 'Zeptat se';

  @override
  String get wisdomOfTheDayTitle => 'Moudrost dne';

  @override
  String get calendarScreenTitle => 'Islámský kalendář';

  @override
  String get calendarUpcomingOccasions => 'Nadcházející příležitosti';

  @override
  String get calendarOccasionRemindersTitle => 'Připomínky příležitostí';

  @override
  String get calendarOccasionRemindersHint =>
      'Oznámení večer před každou příležitostí';

  @override
  String get calendarNotifPermissionDenied =>
      'Oprávnění k oznámením bylo zamítnuto. Povolte ho v nastavení zařízení.';

  @override
  String get calendarNoEvents => 'Nebyly nalezeny žádné nadcházející události.';

  @override
  String get calendarAddToPhone => 'Přidat do kalendáře telefonu';

  @override
  String get calendarAddedToPhone => 'Přidáno do kalendáře';

  @override
  String get calendarCountdownToday => 'DNES';

  @override
  String get calendarCountdownTomorrow => 'ZÍTRA';

  @override
  String calendarCountdownDays(int days) {
    return 'za $days dní';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'led';

  @override
  String get calendarMonthFeb => 'úno';

  @override
  String get calendarMonthMar => 'bře';

  @override
  String get calendarMonthApr => 'dub';

  @override
  String get calendarMonthMay => 'kvě';

  @override
  String get calendarMonthJun => 'čvn';

  @override
  String get calendarMonthJul => 'čvc';

  @override
  String get calendarMonthAug => 'srp';

  @override
  String get calendarMonthSep => 'zář';

  @override
  String get calendarMonthOct => 'říj';

  @override
  String get calendarMonthNov => 'lis';

  @override
  String get calendarMonthDec => 'pro';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dny Muharramu — pamatuj na Karbalu';

  @override
  String get calendarSeasonAshura => 'Ašúrá — Já Husajn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — dny smutku a rozjímání';

  @override
  String get calendarSeasonArbaeen => 'Arba\'ín — čtyřicet dní Husajna';

  @override
  String get calendarSeasonRoadToArbaeen => 'Cesta k Arba\'ínu';

  @override
  String get calendarSeasonMabath => 'Požehnaný Mab\'ath — úsvit zjevení';

  @override
  String get calendarSeasonMidShaban =>
      'Polovina Ša\'bánu — narození imáma al-Mahdího (AJ)';

  @override
  String get calendarSeasonRamadan => 'Požehnaný Ramadán — měsíc Koránu';

  @override
  String get calendarSeasonGhadir => 'Požehnaný Íd al-Ghadír!';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabí\' al-Awwal';

  @override
  String get hijriMonth4 => 'Rabí\' al-Thání';

  @override
  String get hijriMonth5 => 'Džumádá al-Úlá';

  @override
  String get hijriMonth6 => 'Džumádá al-Thání';

  @override
  String get hijriMonth7 => 'Radžab';

  @override
  String get hijriMonth8 => 'Ša\'bán';

  @override
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Šawwál';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hidždža';

  @override
  String get duasScreenTitle => 'Du\'á a zijárat';

  @override
  String get duasSearchHint => 'Hledat du\'á, zijárat…';

  @override
  String get duasFilterAll => 'Vše';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count du\'á a zijárat',
      few: '$count du\'á',
      one: '$count du\'á',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nebyly nalezeny žádné du\'á.';

  @override
  String get duaCategoryDaily => 'Denní';

  @override
  String get duaCategoryWeekly => 'Týdenní';

  @override
  String get duaCategoryOccasions => 'Příležitosti';

  @override
  String get duaCategoryZiyarat => 'Zijárat';

  @override
  String get duaCategoryTasbih => 'Tasbíh';

  @override
  String get eventTypeBirth => 'Narození';

  @override
  String get eventTypeMartyrdom => 'Mučednictví';

  @override
  String get eventTypeOccasion => 'Příležitost';

  @override
  String get duaCopyTooltip => 'Kopírovat překlad';

  @override
  String get duaToggleTransliteration => 'Transliterace';

  @override
  String get duaToggleTranslation => 'Překlad';

  @override
  String get duaAskAiLabel => 'Požádejte Ayara o vysvětlení této du\'á';

  @override
  String get duaAskAiLockedLabel => 'Zeptejte se Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Vysvětlení Ayara jsou dostupná členům Wilaya. Přejděte na vyšší plán v Nastavení.';

  @override
  String duaAiComingSoon(String name) {
    return 'Zeptejte se Ayara na „$name“ — již brzy!';
  }

  @override
  String get duaCopiedToast => 'Du\'á zkopírována do schránky.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Alláh je Největší';

  @override
  String get tasbihAlhamdulillahMeaning => 'Veškerá chvála patří Alláhu';

  @override
  String get tasbihSubhanallahMeaning => 'Sláva Alláhu';

  @override
  String get tasbihResetTooltip => 'Resetovat';

  @override
  String get tasbihCompleteTitle => 'Tasbíh dokončen';

  @override
  String get tasbihCompleteMessage => 'Kéž Alláh přijme váš dhikr.';

  @override
  String get tasbihTapHint => 'Klepnutím kamkoli počítáte';

  @override
  String get tasbihatScreenTitle => 'Průvodce modlitbou';

  @override
  String get tasbihatScreenSubtitle => 'OSLAVOVÁNÍ PŘI MODLITBĚ';

  @override
  String get tasbihatScreenDescription =>
      'Kompletní průvodce oslavováními recitovanými během i po denních modlitbách — podle tradice Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBÍHÁT AL-ARBA\'A';

  @override
  String get tasbihatArba3Subtitle => 'Recituje se ve 3. a 4. rak\'ah';

  @override
  String get tasbihatArba3Info =>
      'V šíitské jurisprudenci Tasbíhát al-Arba\'a nahrazuje súru al-Fátiha ve 3. a 4. rak\'ah modliteb zuhr, asr, maghrib a išá. Je povinné (wádžib) recitovat ji jednou a doporučené (mustahabb) třikrát.';

  @override
  String get tasbihatArba3Translation =>
      'Sláva Alláhu · Veškerá chvála patří Alláhu\nNení božstva kromě Alláha · Alláh je Největší';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitace dokončena';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Kéž je vaše modlitba přijata — Ámín';

  @override
  String get tasbihatArba3TapHint => 'Klepněte po každé recitaci';

  @override
  String get tasbihatZahraSubtitle => 'Po každé modlitbě · 100 korálků';

  @override
  String get tasbihatZahraOriginLabel => 'Původ';

  @override
  String get tasbihatZahraHadith =>
      'Paní Fátima al-Zahrá (sa) požádala Proroka ﷺ o služebníka. On řekl: „Nemám tě nasměrovat k něčemu lepšímu? Po každé modlitbě recituj 33krát Subhánalláh, 33krát Alhamdulilláh a 34krát Alláhu Akbar. To je pro tebe lepší než služebník.“';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwár, sv. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Otevřít počítadlo tasbíhu';

  @override
  String get tasbihatDuasTitle => 'DOPORUČENÉ DU\'Á';

  @override
  String get tasbihatDuasSubtitle => 'Po dokončení modlitby';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ájat al-Kursí';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Po každé povinné modlitbě';

  @override
  String get tasbihatDuaAyatKursiSource => 'Súra al-Baqara 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Kdokoli recituje Ájat al-Kursí po každé povinné modlitbě, mezi ním a rájem nestojí nic kromě smrti. Imám al-Báqir (a) řekl, že je to jeden z největších veršů Koránu.';

  @override
  String get tasbihatDuaSalawatTitle => 'Salawát';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Po každé modlitbě · završuje všechny prosby';

  @override
  String get tasbihatDuaSalawatSource => 'Imám al-Sádiq (a) — Al-Káfí';

  @override
  String get tasbihatDuaSalawatNote =>
      'Posílání požehnání Prorokovi ﷺ a jeho očištěné rodině (Ál Muhammad) je doporučeno k završení každé du\'á. Imám al-Sádiq (a) řekl: „Každá du\'á zůstává pozastavena, dokud nepošlete salawát Muhammadovi a jeho rodině.“';

  @override
  String get tasbihatDuaFarajTitle => 'Du\'á al-Faradž';

  @override
  String get tasbihatDuaFarajWhen => 'Po každé modlitbě · za Imáma naší doby';

  @override
  String get tasbihatDuaFarajSource => 'Předal imám al-Hasan al-\'Askarí (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua za zjevení Imáma al-Mahdího (af), dvanáctého Imáma, kterou mu předal jeho otec. Často ji recitují mnozí ší\'ité po modlitbě jako projev oddanosti živému Imámovi.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbíh paní Fátimy';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Po maghribu a išá · zvláště doporučeno';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imám al-Báqir (a) — Bihar al-Anwár';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imám al-Báqir (a) řekl, že recitace Tasbíhu al-Zahrá po išá před spaním je lepší než 1000 rak\'ah dobrovolné modlitby. Jeho světlo stoupá k nebesům.';

  @override
  String get tasbihFatimaGiftPre => 'Dar od Proroka';

  @override
  String get tasbihFatimaGiftPost => 'recitováno po každé modlitbě';

  @override
  String get prayerTrackerTitle => 'SLEDOVÁNÍ MODLITEB';

  @override
  String get prayerTrackerPrayed => 'Pomodleno';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'řada $count dní';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Všechny dnešní modlitby jsou dokončeny. Kéž je Alláh přijme.';

  @override
  String get dhikrTrackerTitle => 'TASBÍH AL-ZAHRÁ';

  @override
  String get dhikrTrackerCompletedToday => 'Dnes dokončeno';

  @override
  String get dhikrTrackerNotDoneToday => 'Dnes neuděláno';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'řada $count dní';
  }

  @override
  String get dhikrReminderTitle => 'Připomínka tasbíhu';

  @override
  String get dhikrReminderDescription =>
      'Jemná denní připomínka k recitaci vašeho Tasbíhu al-Zahrá (SA).';

  @override
  String get dhikrReminderEnable => 'Zapnout připomínku tasbíhu';

  @override
  String get dhikrReminderTimeLabel => 'Čas připomínky';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Denní hadís';

  @override
  String get hadithLabelArabic => 'ARABSKY';

  @override
  String get hadithLabelTranslation => 'PŘEKLAD';

  @override
  String get hadithBadge => 'HADÍS';

  @override
  String get hadithShare => 'Sdílet tento hadís';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPřes Ayara';
  }

  @override
  String get hadithNavPrevious => 'Předchozí';

  @override
  String get hadithNavNext => 'Další';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Čtrnáct neomylných';

  @override
  String get imamsScreenSubtitle =>
      'Prorok, paní Fatima a dvanáct Imámů — očištění a neomylní vůdci v dvanácti ší\'itském islámu';

  @override
  String get imamLabelBorn => 'Narozen';

  @override
  String get imamLabelMartyrdom => 'Mučednictví';

  @override
  String get imamLabelStatus => 'Postavení';

  @override
  String get imamSectionBiography => 'ŽIVOTOPIS';

  @override
  String get imamSectionFamousSaying => 'ZNÁMÝ VÝROK';

  @override
  String get imamRoleProphet => 'Poslední Prorok';

  @override
  String get imamRoleInfallible => 'Neomylný';

  @override
  String get imamOrdinal1 => '1. imám';

  @override
  String get imamOrdinal2 => '2. imám';

  @override
  String get imamOrdinal3 => '3. imám';

  @override
  String get imamOrdinal4 => '4. imám';

  @override
  String get imamOrdinal5 => '5. imám';

  @override
  String get imamOrdinal6 => '6. imám';

  @override
  String get imamOrdinal7 => '7. imám';

  @override
  String get imamOrdinal8 => '8. imám';

  @override
  String get imamOrdinal9 => '9. imám';

  @override
  String get imamOrdinal10 => '10. imám';

  @override
  String get imamOrdinal11 => '11. imám';

  @override
  String get imamOrdinal12 => '12. imám';

  @override
  String get duaAudioScreenTitle => 'Poslouchejte du\'á';

  @override
  String get duaAudioScreenSubtitle =>
      'Vyberte du\'á k poslechu. Klepnutím na dlaždici přehrajete nebo pozastavíte.';

  @override
  String get duaAudioComingSoonMessage =>
      'Zvuk k této du\'á bude dostupný v některé z příštích aktualizací.';

  @override
  String get duaAudioClose => 'Zavřít';

  @override
  String get duaAudioError =>
      'Nepodařilo se načíst zvuk. Zkontrolujte prosím své připojení.';

  @override
  String get duaAudioMetaTransmittedBy => 'Předal';

  @override
  String get duaAudioMetaOccasion => 'Příležitost';

  @override
  String get duaAudioMetaDuration => 'Délka';

  @override
  String get quickActionDailyHadith => 'Denní hadís';

  @override
  String get quickAction14Masumeen => 'Čtrnáct neomylných';

  @override
  String get quickActionListenDuas => 'Poslech';

  @override
  String get quickActionTasbihat => 'Průvodce modlitbou';

  @override
  String get pilgrimageSectionTitle => 'Posvátná cesta';

  @override
  String get pilgrimageSectionSubtitle =>
      'Kompletní průvodci hadždžem a umrou — poutí do Posvátného domu Alláha v Mekce';

  @override
  String get hajjCardTitle => 'Hadždž';

  @override
  String get hajjCardSubtitle => 'Pátý pilíř islámu';

  @override
  String get hajjCardDescription =>
      'Velká každoroční pouť — povinná jednou za život pro každého schopného muslima';

  @override
  String get hajjScreenTitle => 'Průvodce hadždžem';

  @override
  String get hajjScreenSubtitle => 'Průvodce krok za krokem velkou poutí';

  @override
  String get umrahCardTitle => 'Umra';

  @override
  String get umrahCardSubtitle => 'Menší pouť';

  @override
  String get umrahCardDescription =>
      'Hluboce odměňující duchovní cesta, kterou lze vykonat kdykoli během roku';

  @override
  String get umrahScreenTitle => 'Průvodce umrou';

  @override
  String get umrahScreenSubtitle => 'Průvodce krok za krokem menší poutí';

  @override
  String get pilgrimageStepsTitle => 'Rituály a kroky';

  @override
  String get pilgrimageImportantNotesTitle => 'Důležité poznámky';

  @override
  String get pilgrimageDuaTitle => 'Dua pro tento krok';

  @override
  String get pilgrimageJafariNoteTitle => 'Poznámka k džafárskému fiqh';

  @override
  String get pilgrimageComplete => '✓ Dokončeno';

  @override
  String get pilgrimageMarkDone => 'Označit jako dokončeno';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done z $total kroků';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Šíitští poutníci';

  @override
  String get pilgrimageShiaNoteBody =>
      'Mnozí ší\'itští poutníci také cestují do Medíny na ziyarat Proroka Muhammada (SAW) v Masjid al-Nabawi a na hroby v Jannat al-Baqi. Tyto návštěvy mají hluboký duchovní význam, i když samy o sobě nejsou obřady Hajj.';

  @override
  String get hajjIntro =>
      'Hajj je pátým pilířem islámu, povinný jednou za život pro každého muslima, který je fyzicky a finančně schopen. Pro většinu dnešních dvanácti ší\'itských poutníků to znamená Hajj al-Tamattu\', vykonávaný v měsíci Dhul Hijjah v stopách Proroka Ibrahíma (AS), jeho syna Ismá\'ila (AS) a paní Hádžar. Tento průvodce následuje džá\'fárský rámec obřadů, zatímco ziyarat v Medíně zůstává hluboce ceněnou cestou před nebo po Hajj.';

  @override
  String get umrahIntro =>
      'Umra je menší pouť do Mekky a na rozdíl od hadždže ji lze vykonat kdykoli během roku. Ačkoli není povinná, přináší nesmírnou duchovní odměnu a je považována za velmi doporučený akt uctívání. Sdílí několik rituálů s hadždžem, ale je kratší a skládá se ze čtyř hlavních obřadů.';

  @override
  String get voiceInputTitle => 'Hlasový vstup';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Mluvte svůj vstup k Ask Ayara místo psaní.';

  @override
  String get voiceInputMicDenied => 'Přístup k mikrofonu byl odepřen.';

  @override
  String get voiceInputSpeak => 'Mluvte místo toho';

  @override
  String get voiceInputListening => 'Poslouchám…';

  @override
  String get voiceInputPermissionDenied =>
      'Přístup k mikrofonu je nutný pro hlasový vstup.';
}
