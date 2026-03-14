// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Izvēlieties savu valodu';

  @override
  String get languageSelectSub => 'Vēlāk varat to mainīt Iestatījumos';

  @override
  String get actionContinue => 'Turpināt';

  @override
  String get languageSuggestedHeader => 'Ieteiktā';

  @override
  String get languageAllHeader => 'Visas valodas';

  @override
  String get languageSuggestedBadge => 'Ieteiktā';

  @override
  String get languageSearchHint => 'Meklēt…';

  @override
  String get planBasic => 'Standarts';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Dienas vadlīnijas';

  @override
  String get categorySlot02 => 'Imāns un uzticība';

  @override
  String get categorySlot03 => 'Lūgšanas pārdomas';

  @override
  String get categorySlot04 => 'Pacietība un cerība';

  @override
  String get categorySlot05 => 'Meklēt piedošanu';

  @override
  String get categorySlot06 => 'Žēlastība un saudzīgums';

  @override
  String get categorySlot07 => 'Ticība un spēks';

  @override
  String get categorySlot08 => 'Pateicīga sirds';

  @override
  String get categorySlot09 => 'Dzīves mērķis';

  @override
  String get categorySlot10 => 'Ģimenes saites';

  @override
  String get categorySlot11 => 'Iekšējais miers';

  @override
  String get categorySlot12 => 'Pravieša gudrība';

  @override
  String get categorySlot13 => 'Labs raksturs';

  @override
  String get categorySlot14 => 'Pretstāviet kārdināšanai';

  @override
  String get categorySlot15 => 'Vakara Dhikr';

  @override
  String get categoryCustom => 'Personīgās pārdomas';

  @override
  String get dhikrMeaningSubhanallah => 'Dievs būtu svētīts';

  @override
  String get dhikrMeaningAlhamdulillah => 'Visa slava pieder Allāham';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allāhs ir Lielākais';

  @override
  String get quranVerseHeartAtRest =>
      'Patiesi, Allāha atcerēšanā sirdis atrod mieru.';

  @override
  String get promptHint =>
      'Pieskarieties kategorijai, lai saņemtu islāma vadlīnijas un pārdomas';

  @override
  String get currentLanguage => 'Pašreizējā valoda';

  @override
  String get settingsLanguage => 'Valodas iestatījumi';

  @override
  String get settingsTitle => 'Iestatījumi';

  @override
  String get chooseLanguage => 'Izvēlieties savu valodu';

  @override
  String get continueCta => 'Turpināt';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vārdi',
      one: '$count vārds',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Iespējas';

  @override
  String get newCta => 'Jauns';

  @override
  String get actionsTitle => 'Ko jūs vēlētos darīt?';

  @override
  String get copy => 'Kopēt';

  @override
  String get share => 'Dalīties';

  @override
  String get close => 'Aizvērt';

  @override
  String get copiedToast => 'Nokopēts starpliktuvē';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Nevarēja ģenerēt jaunu atbildi';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVai vēlaties mēģināt vēlreiz?';
  }

  @override
  String get cancelCta => 'Atcelt';

  @override
  String get retryCta => 'Mēģināt vēlreiz';

  @override
  String get authTitle => 'Izveidojiet savu kontu';

  @override
  String get continueAsGuest => 'Turpināt kā viesis';

  @override
  String get signInGoogle => 'Pierakstīties ar Google';

  @override
  String get signInApple => 'Pierakstīties ar Apple';

  @override
  String get signInEmail => 'Pierakstīties ar e-pastu';

  @override
  String get upgradeWithApple => 'Turpināt ar Apple';

  @override
  String get mustAccept =>
      'Jums jāpieņem Noteikumi un jāapstiprina Privātuma politika.';

  @override
  String get termsLabel => 'Piekrītu Pakalpojuma noteikumiem';

  @override
  String get privacyLabel => 'Esmu izlasījis Privātuma politiku';

  @override
  String get marketingOptIn => 'Piekrītu saņemt jaunumus un piedāvājumus';

  @override
  String get openTerms => 'Pakalpojuma noteikumi';

  @override
  String get openPrivacy => 'Privātuma politika';

  @override
  String get accountSection => 'Konts';

  @override
  String get guestMode => 'Viesa režīms';

  @override
  String get signedIn => 'Pierakstīts';

  @override
  String get upgradeHint =>
      'Saglabājiet savas pārdomas dažādās ierīcēs, izveidojot kontu.';

  @override
  String get upgradeWithGoogle => 'Turpināt ar Google';

  @override
  String get signOut => 'Izrakstīties';

  @override
  String get snackUpgraded => 'Konts jaunināts ar Google ✅';

  @override
  String get snackSignedIn => 'Pierakstīts ar Google ✅';

  @override
  String get snackSignedOut => 'Izrakstīts';

  @override
  String get snackSignedInApple => 'Pierakstīts ar Apple ✅';

  @override
  String get snackSignedInGoogle => 'Pierakstīts ar Google ✅';

  @override
  String get snackUpgradedApple => 'Konts jaunināts ar Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Konts jaunināts ar Google ✅';

  @override
  String get historyTitle => 'Iepriekšējās pārdomas';

  @override
  String get historyOpenCta => 'Iepriekšējās pārdomas';

  @override
  String get historyEmpty => 'Vēl nav saglabātu pārdowashana.';

  @override
  String get historyDeleteTitle => 'Dzēst pārdomas?';

  @override
  String get historyDeleteBody =>
      'Tas neatgriezeniski noņems atlasīto vienumu.';

  @override
  String get deleteCta => 'Dzēst';

  @override
  String get historyButton => 'Iepriekšējās pārdomas';

  @override
  String get historyEmptyTitle => 'Vēl nav pārdomu';

  @override
  String get historyEmptyBody =>
      'Vispirms ģenerējiet kaut ko — jūsu saglabātie vienumi parādīsies šeit.';

  @override
  String get historyDelete => 'Dzēst';

  @override
  String get footerTitle => 'Ar Wilaya, Imānu un Sabr';

  @override
  String get footerSubtitle => 'Viena lūgšana vienlaikus';

  @override
  String get genericErrorSnack =>
      'Kaut kas nogāja greizi — mēģiniet vēlreiz pēc brīža.';

  @override
  String get upgradeAccountCta =>
      'Saglabājiet savas pārdomas dažādās ierīcēs – izveidojiet kontu';

  @override
  String get deleteAccount => 'Dzēst kontu';

  @override
  String get exportData => 'Eksportēt manus datus';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Viegli, tīģer 🐯\nAyara nepieciešams brīdis pirms nākamā...';

  @override
  String get rateDailyLimit =>
      'Jūs esiet pabeiguši pārdomas uz šobrīdi.\nSaņemiet vairāk pārdomu vai jauniniet uz Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Jūs esat izmantojis visas savas pārdomas.\nPapildini vai jaunini uz Wilaya, lai turpinātu.';

  @override
  String get rateGraceCreditsExhausted =>
      'Jūs esiet pabeiguši pārdomas uz šobrīdi.\nSaņemiet vairāk pārdomu vai jauniniet uz Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya atver prēmija funkcijas, nākotnes kategorijas un īpašu žetonu.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Jūsu pārdomas šobrīd ir tukšas. Plāns: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nevarēja pārbaudīt jūsu pārdomas: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Kaut kas nogāja greizi, pārbaudot jūsu pārdomas.';

  @override
  String get aiFallbackGeneric =>
      'Kaut kas nogāja greizi — mēģiniet vēlreiz pēc brīža.';

  @override
  String get limitSectionTitle => 'Pārdomas';

  @override
  String get limitTodayLabel => 'Lietošana';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Atlikušas pārdomas: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plāns: $plan';
  }

  @override
  String get limitLoadingLabel => 'Ielādē…';

  @override
  String get limitLoadingLabelDescription =>
      'Rādīts pārdomu kartītē, kamēr tiek ielādētas lietošanas statistika.';

  @override
  String get aiLimitTitle => 'Pārdomas';

  @override
  String get aiLimitSubtitle =>
      'Katra atbilde izmanto 1 pārdomi. Standarts ietver sākuma pārdomas. Wilaya atver prēmija kategorijas un iespēju papildināt.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total pārdomas izmantotas';
  }

  @override
  String get creditsSectionTitle => 'Pārdomas';

  @override
  String get creditsUsageLabel => 'Lietošana';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Atlikušas pārdomas: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plāns: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Ielādē…';

  @override
  String get creditsLoadingLabelDescription =>
      'Rādīts, kamēr tiek ielādēta pārdomu statistika.';

  @override
  String get creditsTitle => 'Pārdomas';

  @override
  String get creditsSubtitle =>
      'Katra atbilde izmanto 1 pārdomi. Standarts ietver sākuma pārdomas. Wilaya atver prēmija kategorijas un iespēju papildināt.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total pārdomas izmantotas';
  }

  @override
  String get settingsDeleteTitle => 'Dzēst kontu';

  @override
  String get settingsDeleteDescription =>
      'Neatgriezeniski dzēst savu kontu un visus saistītos datus.';

  @override
  String get settingsDeleteButtonLabel => 'Dzēst manu kontu';

  @override
  String get settingsDeleteDialogTitle => 'Dzēst kontu?';

  @override
  String get settingsDeleteDialogBody =>
      'Šī darbība ir neatgriezeniska un to nevar atsaukt.\n\nVisi jūsu čati, vēsture un konta informācija tiks dzēsti.';

  @override
  String get settingsDeleteDialogCancel => 'Atcelt';

  @override
  String get settingsDeleteDialogConfirm => 'Dzēst';

  @override
  String get settingsFreeLimitUsedTitle => 'Sākuma pārdomas izmantotas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Šīs ierīces sākuma pārdomas ir izmantotas. Jauniniet uz Wilaya vai pērciet vairāk pārdomu, lai turpinātu.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Sākuma pārdomas izmantotas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Šīs ierīces sākuma pārdomas ir izmantotas. Jauniniet uz Wilaya vai pērciet vairāk pārdomu, lai turpinātu.';

  @override
  String get deviceBoundError =>
      'Šī ierīce jau ir saistīta ar citu kontu. Lūdzu, pierakstieties ar sākotnējo kontu.';

  @override
  String get premiumTitle => 'Wilaya režīms';

  @override
  String get premiumSubtitleBasic => 'Atklājiet pilno Ayara pieredzi.';

  @override
  String get premiumSubtitlePremium =>
      'Jūs esat Wilaya režīmā. Vai jums nepieciešamas vairāk pārdomas?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Pašreizējais plāns: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Pārdomas: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Pirkumi šobrīd nav pieejami.';

  @override
  String get premiumSignInToPurchase =>
      'Pierakstieties, lai pirktu pārdomas vai atbloķētu Wilaya.';

  @override
  String get premiumRestorePurchases => 'Atjaunot pirkumus';

  @override
  String get premiumProcessing => 'Apstrāde…';

  @override
  String get premiumRestoreHintTitle =>
      'Jau esat pircis Wilaya vai pārdomas šajā vai citā ierīcē?';

  @override
  String get premiumRestoreHintBody =>
      'Atjauniniet savus pirkumus, ja tie nerādās.';

  @override
  String get premiumBuyCredits200 => 'Pirkt 200 pārdomas';

  @override
  String get premiumBuyCredits400 => 'Pirkt 400 pārdomas';

  @override
  String get premiumBecomePremiumOneTime => 'Jauniniet uz Wilaya režīmu';

  @override
  String get premiumTopupHint =>
      'Ar Wilaya jūs varat papildināt ar papildu pārdoma katru reizi, kad nepieciešams.';

  @override
  String get premiumUpgradeCta => 'Jauniniet';

  @override
  String get premiumRequiredForCategory =>
      'Šī kategorija ir pieejama tikai Wilaya lietotājiem. Jauniniet Iestatījumos, lai atbloķētu visu prēmija saturu.';

  @override
  String get premiumBenefitsBasic =>
      'Jauniniet uz Wilaya, lai saņemtu papildu pārdomas, piekļūtu prēmija kategorijām un turpinātu, kad nepieciešams vadlīnijas.';

  @override
  String get premiumBenefitsPremium =>
      'Jūs esat Wilaya režīmā. Ja jūsu pārdomas beidzas, pievienojiet papildu pārdomas un turpiniet bez pārtraukumiem.';

  @override
  String get premiumButtonBecomePremium => 'Atbloķējiet Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Pievienot 1000 pārdomu';

  @override
  String get premiumBadge => 'Wilaya aktīvs';

  @override
  String get premiumLoadingStore => 'Veikala ielāde…';

  @override
  String get premiumProductNotAvailable =>
      'Šis produkts veikalā vēl nav pieejams. Lūdzu, mēģiniet vēlāk.';

  @override
  String get premiumPurchaseError =>
      'Pirkumā radās kļūda. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get premiumBuyCredits100 => 'Pievienot 100 pārdomu';

  @override
  String get premiumFeatureLocked =>
      'Atbloķējiet Wilaya, lai piekļūtu šim rīkam.';

  @override
  String get lockedCategoriesHint =>
      'Dažas kategorijas ir rezervētas Wilaya dalībniekiem. Atbloķējiet tās, lai izpētītu katru pārdomi savā ceļojumā.';

  @override
  String get freePlanBlockedTitle => 'Jūs esat izmantojis sākuma pārdomas';

  @override
  String get freePlanBlockedBody =>
      'Jūs esat Standarta plānā ar sākuma pārdoma, un esat sasniegis robežu. Lai turpinātu — un atbloķētu prēmija kategorijas — jauniniet uz Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Skatīt Wilaya iespējas zemāk';

  @override
  String get graceBlockedTitle => 'Jūs esat izmantojis sākuma pārdomas';

  @override
  String get graceBlockedBody =>
      'Jūs esat Standarta plānā ar sākuma pārdoma, un esat sasniegis robežu. Lai turpinātu — un atbloķētu prēmija kategorijas — jauniniet uz Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Skatīt Wilaya iespējas zemāk';

  @override
  String get rateGuestMustSignIn =>
      'Pierakstieties, lai lietotu Ayara un savas pārdomas.';

  @override
  String get guestNoCreditsTitle => 'Viesa režīms';

  @override
  String get guestNoCreditsBody =>
      'Kā viesis jūs varat pārlūkot programmu, taču nevariet lietot pārdomas. Pierakstieties vēlāk Iestatījumos, lai lietotu pārdomas un atbloķētu pirkumus.';

  @override
  String get guestDialogContinue => 'Turpināt';

  @override
  String get guestDialogLoginInstead => 'Pierakstīties vietā';

  @override
  String get optionalLabel => 'neobligāti';

  @override
  String get accountDeleteSuccessTitle => 'Konts dzēsts';

  @override
  String get accountDeleteSuccessBody =>
      'Jūsu konts un saistītie dati ir veiksmīgi dzēsti.';

  @override
  String get accountDeleteSuccessClose => 'Aizvērt';

  @override
  String get accountDeleteErrorTitle => 'Nevarēja dzēst kontu';

  @override
  String get accountDeleteErrorClose => 'Labi';

  @override
  String get accountDeleteReauthCancelled =>
      'Atkārtota autentifikācija tika atcelta. Lūdzu, pierakstieties vēlreiz un mēģiniet dzēšanu atkārtoti.';

  @override
  String get accountDeleteReauthRequired =>
      'Konta dzēšanai nepieciešama nesen veikta pierakstīšanās. Lūdzu, izrakstieties, pierakstieties vēlreiz un mēģiniet dzēšanu atkārtoti.';

  @override
  String get settingsDeletePermanentWarning =>
      'Šī darbība ir neatgriezeniska un to nevar atsaukt. Visi jūsu konta dati tiks dzēsti.';

  @override
  String get dailyGraceTitle => 'Dienas vadlīnijas';

  @override
  String get dailyGraceScriptureLabel => 'DIENAS PANTI';

  @override
  String get dailyGraceSaintLabel => 'NEDĒĻAS SVĒTĪBA';

  @override
  String get dailyGraceReflectionLabel => 'VAKARA PĀRDOMAS';

  @override
  String get dailyGraceCopiedToast => 'Pants nokopēts starpliktuvē';

  @override
  String get locationConsentLabel =>
      'Atļaut Ayara izmantot manu atrašanās vietu, lai noteiktu Kiblas virzienu un lūgšanas laikus';

  @override
  String get locationConsentHint =>
      'Izmantots tikai šiem rīkiem. Jūsu atrašanās vieta nekad netiek dalīta vai glabāta.';

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
  String get askPageTitle => 'Jautājiet Ayara';

  @override
  String get askPageDescription =>
      'Jautājiet par ticību, lūgšanu, dzīvi vai islāma praksi un saņemiet vadlīnijas, kas balstītas Korānā un Ahl al-Bayt mācībās.';

  @override
  String get askPageInputHint => 'Ierakstiet savu jautājumu šeit…';

  @override
  String get askPageSubmitCta => 'Jautāt';

  @override
  String get askPageInputEmptyError => 'Lūdzu, vispirms uzrakstiet jautājumu.';

  @override
  String get askResultYourQuestion => 'Jūsu jautājums';

  @override
  String get guidancePageTitle => 'Kibla';

  @override
  String get qiblaFacingMecca => 'Vēršoties uz Mekku';

  @override
  String get qiblaCompassInstruction =>
      'Pagriežiet savu tālruni, kamēr zeltainā adata norāda uz augšu.\nŠis virziens norāda uz Kiblu (Mekku).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signāls ir vājš. Pārvietojieties ārā un pieskarieties Mēģināt vēlreiz.';

  @override
  String get qiblaRetry => 'Mēģināt vēlreiz';

  @override
  String get qiblaTitle => 'Kiblas virziens';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km līdz Mekkei';
  }

  @override
  String get qiblaLocationNeededTitle => 'Atrašanās vieta nepieciešama';

  @override
  String get qiblaLocationNeededBody =>
      'Atļauts atrašanās vietas piekļuve, lai Ayara varētu aprēķināt Kaabas virzienu Mekkā no jūsu atrašanās vietas.';

  @override
  String get qiblaOpenSettings => 'Atvērt iestatījumus';

  @override
  String get qiblaCompassLoading => 'Meklē jūsu pozīciju…';

  @override
  String get qiblaTowardMecca => 'Uz Mekku';

  @override
  String get prayerTimesTitle => 'Lūgšanas laiki';

  @override
  String get prayerTimesFajr => 'Fajrs';

  @override
  String get prayerTimesDhuhr => 'Dhuhrs';

  @override
  String get prayerTimesAsr => 'Asrs';

  @override
  String get prayerTimesMaghrib => 'Maghriba';

  @override
  String get prayerTimesIsha => 'Īša';

  @override
  String get prayerTimesLocationNeededTitle => 'Atrašanās vieta nepieciešama';

  @override
  String get prayerTimesLocationNeededBody =>
      'Atļauts atrašanās vietas piekļuve, lai Ayara varētu aprēķināt precīzus lūgšanas laikus jūsu pilsētai.';

  @override
  String get prayerTimesNextLabel => 'Nākamā';

  @override
  String get prayerTimesDoneLabel => 'Pabeigts';

  @override
  String get monthlyPrayerTimesTitle => 'Mēneša lūgšanas laiki';

  @override
  String get monthlyPrayerTimesViewButton => 'Skatīt visu mēnesi';

  @override
  String get monthlyPrayerTimesNextMonth => 'Nākamais mēnesis';

  @override
  String get monthlyPrayerTimesDayHeader => 'Diena';

  @override
  String get sharePrayerTimes => 'Dalīties lūgšanas laikiem';

  @override
  String get notificationsSectionTitle => 'Paziņojumi';

  @override
  String get notificationsSectionSubtitle =>
      'Lūgšanas atgādinājumi, kalendāra notikumi un vairāk';

  @override
  String get dailyReflectionReminderTitle => 'Dienas pārdomas';

  @override
  String get dailyReflectionReminderDescription =>
      'Maiga dienas atgādinājuma, lai atvērtu Ayara un savienotu ar savu ticību.';

  @override
  String get dailyReflectionReminderEnable => 'Iespējot dienas atgādinājumu';

  @override
  String get dailyReflectionReminderTimeLabel => 'Atgādinājuma laiks';

  @override
  String get prayerNotificationsTitle => 'Lūgšanas atgādinājumi';

  @override
  String get prayerNotificationsDescription =>
      'Saņemiet maiga atgādinājumu pirms katra lūgšanas laika, lai paliktu savienots visu dienu.';

  @override
  String get prayerNotificationsEnable => 'Iespējot lūgšanas atgādinājumus';

  @override
  String get prayerNotificationsOpenSettings =>
      'Atvērt paziņojumu iestatījumus';

  @override
  String get prayerNotificationsDenied => 'Paziņojumi ir atspējoti';

  @override
  String get prayerNotificationsDeniedHint =>
      'Dodieties uz Iestatījumiem un atļaujiet Ayara paziņojumus, lai saņemtu lūgšanas laiku atgādinājumus.';

  @override
  String get notificationsConsentLabel => 'Atļaut paziņojumus lūgšanas laikiem';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajrs — Rīta lūgšana';

  @override
  String get prayerNotifBodyFajr =>
      'Fajrs ir Ahl al-Bayt rīta lūgšana. Imāms Alī (AS) teica: Sargā rīta lūgšanu kā savu vērtīgāko uzticību. Celies, attīrīties un stāvi Allāha priekšā.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhrs — Pusdienas lūgšana';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayt imāmi novērtēja katru atcerēšanās brīdi. Pauzējiet savu dienu, apvienojiet Dhuhru ar Asru, ja nepieciešams, un atgrieziet savu sirdi Allāham.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asrs — Pēcpusdienas lūgšana';

  @override
  String get prayerNotifBodyAsr =>
      'Sargā lūgšanu, jo tā ir ligums starp tevi un Allāhu. Asr laiks ir pienācis — nepalaizējiet to bez atcerēšanās.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghriba — Saulrieta lūgšana';

  @override
  String get prayerNotifBodyMaghrib =>
      'Saule ir salauzta — brīdis, ko Ahl al-Bayt uzskatīja par svētu prašanai. Piedāvājiet Maghribu un atveriet savas rokas Allāham duā pirms nakts sākas.';

  @override
  String get prayerNotifTitleIsha => '🌙 Īša — Nakts lūgšana';

  @override
  String get prayerNotifBodyIsha =>
      'Noslēdziet dienu Allāha sabiedrībā. Imāmi iedraudzināja Salat al-Layl pēc Īšas — bet vispirms pabeigiet savu Īšu un noslēdziet dienu ar Viņa atcerēšanu.';

  @override
  String get outOfReflectionsBannerText =>
      'Jūs esat izmantojis visas savas pārdomas';

  @override
  String get outOfReflectionsBannerCta => 'Saņemt vairāk';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Pieskarieties aplim, lai skaitītu';

  @override
  String get dhikrResetButton => 'Atiestatīt';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Jūs esat pabeidzis 100 Allāha atcerēšanas. Lai tās būtu gaisma jūsu sirdij.';

  @override
  String get disclaimerTitle => 'Par šīs programmas vadlīnijām';

  @override
  String get disclaimerBody =>
      'Ayara nodrošina islāma pārdomas, atgādinājumus un garīgu saturu, lai atbalstītu jūsu personīgo ticības ceļojumu, kas balstīts Korānā un Ahl al-Bayt mācībās. Šis saturs ir piedāvāts tikai vispārējiem informatīvajiem un inspirācijas nolūkiem.\n\nAyara neaizstāj kvalificētu zinātni.\nProgrammas vadlīnijas nav aizvietojums mācītam islāma zinātnejam, marža vai teoloģiski apmācītam skolotājam. Šia islāmā reliģiskā vadlīnija ir balstīta Ja\'fari jurisprudences skolā (fiqh) un tradicijā sekot dzīvajam Marža — kvalificētam juriskajam, kura spriedumi vada ticīgos reliģiskajā praksē. Ja jums ir jautājumi par reliģiskajiem spriedumiem, halāl un harām jautājumiem vai personīgajām reliģiskajām pienākumiem, lūdzu, meklējiet padoumu no kvalificēta Marža vai zinātnieka savā kopienā.\n\nŠī programma neizsniedz reliģiskos spriedumu.\nAyara neveic autoritātes noteikšanu par fiqh jautājumiem vai personīgajiem reliģiskajiem pienākumiem. Nekas šeit nedrīkst tikt uzskatīts par fatvu vai obligātu reliģisku instrukciju.\n\nAhl al-Bayt nozīmīgums.\nŠia islāmā pravietis Muhamads ﷺ un viņa attīrītā ģimene — Ahl al-Bayt — ir islāma kopienas autoritārī vadītāji pēc Korāna. Ahl al-Bayt divpadsmit imāmi ir dieviski noteiktie islāma mācības tulkotāji. Šīs programmas saturs atspoguļo šo tradīciju un cenšas viņu godīgi ievērot.\n\nKopienas jautājumi.\nŠī programma mērķis ir mudināt jūs pievērsties ticībai, vienlaikus dziļi respektējot svarīgo jūsu vietējās mošejas, islāma centra un reliģiskās kopienas lomu. Mēs jums iesaka palikties savienotam ar un mācīties no kvalificētiem skolotājiem jūsu tuvumā.';

  @override
  String get disclaimerClose => 'Es saprotu';

  @override
  String get disclaimerInfoTooltip => 'Par šīs programmas vadlīnijām';

  @override
  String get disclaimerSettingsSubtitle =>
      'Tikai vispārējiem informatīvajiem nolūkiem. Pieskarieties, lai izlasītu pilnīgu garantiju.';

  @override
  String get disclaimerSectionHeader => 'Vadlīnijas atruna';

  @override
  String get navHome => 'Sākums';

  @override
  String get navReflect => 'Padomāt';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalendārs';

  @override
  String get dashboardToday => 'ŠODIEN';

  @override
  String get dashboardComingUp => 'Tuvosies';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dienas',
      one: 'diena',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Ātrs piekļuve';

  @override
  String get quickActionQibla => 'Kibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Vadlīnijas';

  @override
  String get quickActionPrayerTimes => 'Lūgšanas laiki';

  @override
  String get askAyaraTitle => 'Jautājiet Ayara';

  @override
  String get askAyaraSubtitle =>
      'Jautājiet jebkuru islāma jautājumu un saņemiet pārdomātu, vadītu atbildi.';

  @override
  String get askAyaraHint => 'piem., Kāda ir Ramadana nozīme?';

  @override
  String get askAyaraSubmit => 'Jautāt';

  @override
  String get wisdomOfTheDayTitle => 'Dienas gudrība';

  @override
  String get calendarScreenTitle => 'Islāma kalendārs';

  @override
  String get calendarUpcomingOccasions => 'Tuvostoši notikumi';

  @override
  String get calendarOccasionRemindersTitle => 'Notikumu atgādinājumi';

  @override
  String get calendarOccasionRemindersHint =>
      'Paziņots vakaru pirms katra notikuma';

  @override
  String get calendarNotifPermissionDenied =>
      'Paziņojuma atļauja liegta. Iespējojiet to savā ierīces iestatījumos.';

  @override
  String get calendarNoEvents => 'Nav atrasti gaidāmie notikumi.';

  @override
  String get calendarAddToPhone => 'Pievienot tālruņa kalendāram';

  @override
  String get calendarAddedToPhone => 'Pievienots kalendāram';

  @override
  String get calendarCountdownToday => 'ŠODIEN';

  @override
  String get calendarCountdownTomorrow => 'RĪT';

  @override
  String calendarCountdownDays(int days) {
    return 'pēc $days dienām';
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
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Aug';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dec';

  @override
  String get calendarSeasonMuharramEarly =>
      'Muharrama dienas — atcerieties Karbalu';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharrams — sēru un pārdomu dienas';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — četrdesmit Husayna dienas';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ceļš uz Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — atklāsmes rītausma';

  @override
  String get calendarSeasonMidShaban =>
      'Vidējā Sha\'ban — Imāma al-Mahdi (AJ) dzimšanas diena';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — Korāna mēnesis';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak!';

  @override
  String get hijriMonth1 => 'Muharrams';

  @override
  String get hijriMonth2 => 'Safars';

  @override
  String get hijriMonth3 => 'Rabi\' al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi\' al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Awwal';

  @override
  String get hijriMonth6 => 'Jumada al-Thani';

  @override
  String get hijriMonth7 => 'Rajabs';

  @override
  String get hijriMonth8 => 'Sha\'bans';

  @override
  String get hijriMonth9 => 'Ramadans';

  @override
  String get hijriMonth10 => 'Shawwals';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas un Ziyarat';

  @override
  String get duasSearchHint => 'Meklēt duas, ziyarat…';

  @override
  String get duasFilterAll => 'Visas';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas un ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nav atrasta neviena dua.';

  @override
  String get duaCategoryDaily => 'Dienas';

  @override
  String get duaCategoryWeekly => 'Nedēļas';

  @override
  String get duaCategoryOccasions => 'Notikumi';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Dzimšana';

  @override
  String get eventTypeMartyrdom => 'Mārtirisma';

  @override
  String get eventTypeOccasion => 'Notikums';

  @override
  String get duaCopyTooltip => 'Kopēt tulkojumu';

  @override
  String get duaToggleTransliteration => 'Transliterācija';

  @override
  String get duaToggleTranslation => 'Tulkojums';

  @override
  String get duaAskAiLabel => 'Jautājiet Ayara, lai paskaidrotu šo duas';

  @override
  String get duaAskAiLockedLabel => 'Jautājiet Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara paskaidrojumi ir pieejami Wilaya dalībniekiem. Jauniniet Iestatījumos.';

  @override
  String duaAiComingSoon(String name) {
    return 'Jautājiet Ayara par \"$name\" — drīzumā!';
  }

  @override
  String get duaCopiedToast => 'Duas nokopēta starpliktuvē.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allāhs ir Lielākais';

  @override
  String get tasbihAlhamdulillahMeaning => 'Visu slava pieder Allāham';

  @override
  String get tasbihSubhanallahMeaning => 'Dievs būtu svētīts';

  @override
  String get tasbihResetTooltip => 'Atiestatīt';

  @override
  String get tasbihCompleteTitle => 'Tasbih pabeigts';

  @override
  String get tasbihCompleteMessage => 'Lai Allāhs pieņem jūsu dhikr.';

  @override
  String get tasbihTapHint => 'Pieskarieties jebkur, lai skaitītu';

  @override
  String get tasbihatScreenTitle => 'Lūgšanas ceļvedis';

  @override
  String get tasbihatScreenSubtitle => 'LŪGŠANAS UZSLAVĒŠANA';

  @override
  String get tasbihatScreenDescription =>
      'Pilnīgs ceļvedis par slavinājumiem, kas tiek recitēti lūgšanas laikā un pēc tam — sekojot Ahl al-Bayt (a) tradīcijai.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitēts 3. un 4. rakʿah laikā';

  @override
  String get tasbihatArba3Info =>
      'Šia jurisprudencē Tasbiḥāt al-Arbaʿa aizstāj Sūra al-Fātiha 3. un 4. rakʿah Dhuhr, Asr, Maghrib un Isha lūgšanās. Tā ir obligāta (wājib) recitēt vienu reizi un ieteicams (mustaḥabb) recitēt trīs reizes.';

  @override
  String get tasbihatArba3Translation =>
      'Dievs būtu svētīts · Visu slava pieder Allāham\nNav nekā vairāk par Allāhu · Allāhs ir Lielākais';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitācija pabeigta';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Lai jūsu lūgšana tiks pieņemta — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Pieskarieties pēc katra recitācijas';

  @override
  String get tasbihatZahraSubtitle => 'Pēc katras lūgšanas · 100 krelles';

  @override
  String get tasbihatZahraOriginLabel => 'Izcelsme';

  @override
  String get tasbihatZahraHadith =>
      'Dāma Fātima al-Zahrā (sa) lūdza no pravieša ﷺ kalpu. Viņš teica: \"Vai es neskaidru jums kaut ko labāku? Recitējiet Subḥānallāh 33 reizes, Alḥamdulillāh 33 reizes un Allāhu Akbar 34 reizes pēc katras lūgšanas. Tas jums ir labāk par kalpu.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Atvērt Tasbīḥ skaitītāju';

  @override
  String get tasbihatDuasTitle => 'IETEIKTĀS DUAS';

  @override
  String get tasbihatDuasSubtitle => 'Pēc lūgšanas pabeigšanas';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Pēc katras obligātās lūgšanas';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sūra al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Tas, kurš recitē Āyat al-Kursī pēc katras obligātās lūgšanas, nekas nestāv starp viņu un paradīzi, izņemot nāvi. Imāms al-Bāqir (a) teica, ka tā ir viena no lielākajām pantiem Korānā.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Pēc katras lūgšanas · noslēdz visus prašājumus';

  @override
  String get tasbihatDuaSalawatSource => 'Imāms al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sveicienus sūtīšana uz Pravieša ﷺ un viņa attīrītajiem ģimenes locekļiem (Āl Muḥammad) ir ieteicams, lai noslēgtu katru duas. Imāms al-Ṣādiq (a) teica: \"Jebkura duas ir suspendēta, līdz jūs sūtāt ṣalawāt uz Muḥammadu un viņa ģimeni.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Pēc katras lūgšanas · mūsu laika Imāma labā';

  @override
  String get tasbihatDuaFarajSource =>
      'Mācīts no Imāma al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Lūgšana par Imāma al-Mahdī (af) atkārtotu parādīšanos, divpadsmitā Imāma, ko mācījis viņa tēvs. To bieži lūdz daudzi šīītu musulmaņi pēc lūgšanas kā veltījumu dzīvajam Imāmam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Dāmas Fāṭima Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Pēc Maghrib un Isha · īpaši ieteicams';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imāms al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imāms al-Bāqir (a) teica, ka Tasbīḥ al-Zahrā recitēšana pēc Isha pirms miega ir labāk nekā 1000 vaļēja lūgšanas. Tā gaisma paceļas uz debesīm.';

  @override
  String get tasbihFatimaGiftPre => 'Dāvana no Pravieša';

  @override
  String get tasbihFatimaGiftPost => 'recitēts pēc katras lūgšanas';

  @override
  String get prayerTrackerTitle => 'LŪGŠANAS UZRAUGS';

  @override
  String get prayerTrackerPrayed => 'Lūgšauts';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dienu sērija';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Visas lūgšanas pabeidztas šodien. Lai Allāhs pieņem.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Pabeigtais šodien';

  @override
  String get dhikrTrackerNotDoneToday => 'Nav izdarīts šodien';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dienu sērija';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ atgādinājums';

  @override
  String get dhikrReminderDescription =>
      'Maiga dienas atgādinājuma recitēt jūsu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Iespējot Tasbīḥ atgādinājumu';

  @override
  String get dhikrReminderTimeLabel => 'Atgādinājuma laiks';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Dienas Hadith';

  @override
  String get hadithLabelArabic => 'ARĀBU VALODA';

  @override
  String get hadithLabelTranslation => 'TULKOJUMS';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Dalīties ar šo Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Iepriekšējais';

  @override
  String get hadithNavNext => 'Nākamais';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Četrpadsmit neapgāžamie';

  @override
  String get imamsScreenSubtitle =>
      'Pravietis, lēdija Fatima un divpadsmit Imāmi — attīrītie un neapgāžamie ceļveži divpadsmitā šīītu islāma tradīcijā';

  @override
  String get imamLabelBorn => 'Dzimis';

  @override
  String get imamLabelMartyrdom => 'Mārtirisma';

  @override
  String get imamLabelStatus => 'Statuss';

  @override
  String get imamSectionBiography => 'BIOGRĀFIJA';

  @override
  String get imamSectionFamousSaying => 'SLAVENAIS TEIKTAIS';

  @override
  String get imamRoleProphet => 'Pēdējais pravietis';

  @override
  String get imamRoleInfallible => 'Neapklaidi';

  @override
  String get imamOrdinal1 => '1. Imāms';

  @override
  String get imamOrdinal2 => '2. Imāms';

  @override
  String get imamOrdinal3 => '3. Imāms';

  @override
  String get imamOrdinal4 => '4. Imāms';

  @override
  String get imamOrdinal5 => '5. Imāms';

  @override
  String get imamOrdinal6 => '6. Imāms';

  @override
  String get imamOrdinal7 => '7. Imāms';

  @override
  String get imamOrdinal8 => '8. Imāms';

  @override
  String get imamOrdinal9 => '9. Imāms';

  @override
  String get imamOrdinal10 => '10. Imāms';

  @override
  String get imamOrdinal11 => '11. Imāms';

  @override
  String get imamOrdinal12 => '12. Imāms';

  @override
  String get duaAudioScreenTitle => 'Klausieties duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Atlasiet duas, lai klausītos. Pieskarieties flīzei, lai atskaņotu vai pauzētu.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio šai duas būs pieejams nākamajā atjauninājumā.';

  @override
  String get duaAudioClose => 'Aizvērt';

  @override
  String get duaAudioError =>
      'Nevarēja ielādēt audio. Lūdzu, pārbaudiet savienojumu.';

  @override
  String get duaAudioMetaTransmittedBy => 'Pārraidīts pēc';

  @override
  String get duaAudioMetaOccasion => 'Notikums';

  @override
  String get duaAudioMetaDuration => 'Ilgums';

  @override
  String get quickActionDailyHadith => 'Dienas Hadith';

  @override
  String get quickAction14Masumeen => 'Četrpadsmit neapgāžamie';

  @override
  String get quickActionListenDuas => 'Klausīties';

  @override
  String get quickActionTasbihat => 'Lūgšanas ceļvedis';

  @override
  String get pilgrimageSectionTitle => 'Svētais ceļojums';

  @override
  String get pilgrimageSectionSubtitle =>
      'Pilnīgi ceļveži Hajjam un Umrah — piligrimāžu uz Allāha Svēto māju Mekā';

  @override
  String get hajjCardTitle => 'Hajjs';

  @override
  String get hajjCardSubtitle => 'Islāma piektais stabs';

  @override
  String get hajjCardDescription =>
      'Lielajā gada piligrimāžu — obligāts vienreiz dzīvē katram spējīgam musulmaņam';

  @override
  String get hajjScreenTitle => 'Hajja ceļvedis';

  @override
  String get hajjScreenSubtitle =>
      'Soli pa solim ceļvedis lielajai piligrimāžai';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Mazā piligrimāžu';

  @override
  String get umrahCardDescription =>
      'Dziļi apmierinošs garīgs ceļojums, kas var tikt veikts jebkurā gadalaika';

  @override
  String get umrahScreenTitle => 'Umrah ceļvedis';

  @override
  String get umrahScreenSubtitle =>
      'Soli pa solim ceļvedis mazajai piligrimāžai';

  @override
  String get pilgrimageStepsTitle => 'Rituāli un soļi';

  @override
  String get pilgrimageImportantNotesTitle => 'Svarīgas piezīmes';

  @override
  String get pilgrimageDuaTitle => 'Dua šim solim';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari fiqh piezīme';

  @override
  String get pilgrimageComplete => '✓ Pabeigts';

  @override
  String get pilgrimageMarkDone => 'Atzīmēt kā pabeigtu';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done no $total soļiem';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes minūtes';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Šia piligrimi';

  @override
  String get pilgrimageShiaNoteBody =>
      'Daudzi šīītu svētceļnieki arī ceļo uz Medīnu, lai apmeklētu pravieti Muhamedu (SAW) Masjid al-Nabawi un kapus Jannat al-Baqi. Šie apmeklējumi ir dziļi garīgi nozīmīgi, lai gan tie paši nav Hajj rituāli.';

  @override
  String get hajjIntro =>
      'Hajj ir piektā islāma pīlārs, kas ir obligāts vienu reizi mūžā katram musulmanim, kurš fiziski un finansiāli spēj. Lielākajai daļai divpadsmitā šīītu svētceļnieku šodien tas nozīmē Hajj al-Tamattu\', kas tiek veikts Dhul Hijjah mēnesī pravieša Ibrahīma (AS), viņa dēla Ismaīla (AS) un lēdijas Hajar pēdās. Šis ceļvedis seko Džafāri rituālu shēmai, kamēr ziyarat Medīnā paliek dziļi mīlēts ceļojums pirms vai pēc Hajj.';

  @override
  String get umrahIntro =>
      'Umrah ir mazā piligrimāžu uz Mekku un, atskaitot Hajju, var tikt veikta jebkurā gadalaika. Lai arī ne obligāta, tā rada ļoti nozīmīgu garīgu atlīdzību un tiek uzskatīta par ļoti ieteicamu dievbijības aktu. Tā ir arī dažas rituālus ar Hajju, taču ir īsāka, kas sastāv no četriem galvenajiem rituāliem.';

  @override
  String get voiceInputTitle => 'Balss ievade';

  @override
  String get voiceInputMicTitle => 'Mikrofons';

  @override
  String get voiceInputMicSubtitle =>
      'Runājiet savu ievadi, lai uzdotu Ayara, nevis rakstītu.';

  @override
  String get voiceInputMicDenied => 'Mikrofona piekļuve tika atteikta.';

  @override
  String get voiceInputSpeak => 'Runāt vietā';

  @override
  String get voiceInputListening => 'Klausos…';

  @override
  String get voiceInputPermissionDenied =>
      'Mikrofona piekļuve ir nepieciešama balss ievadei.';
}
