// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Pasirinkite savo kalbą';

  @override
  String get languageSelectSub => 'Vėliau tai galėsite pakeisti nustatymuose';

  @override
  String get actionContinue => 'Tęsti';

  @override
  String get languageSuggestedHeader => 'Siūloma';

  @override
  String get languageAllHeader => 'Visos kalbos';

  @override
  String get languageSuggestedBadge => 'Siūloma';

  @override
  String get languageSearchHint => 'Ieškoti…';

  @override
  String get planBasic => 'Standartinis';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Kasdienis vadovavimas';

  @override
  String get categorySlot02 => 'Imanas ir pasitikėjimas';

  @override
  String get categorySlot03 => 'Maldos apmąstymas';

  @override
  String get categorySlot04 => 'Kantrybė ir viltis';

  @override
  String get categorySlot05 => 'Prašyk atleidimo';

  @override
  String get categorySlot06 => 'Gailestingumas ir užuojauta';

  @override
  String get categorySlot07 => 'Tikėjimo stiprybė';

  @override
  String get categorySlot08 => 'Dėkinga širdis';

  @override
  String get categorySlot09 => 'Gyvenimo tikslas';

  @override
  String get categorySlot10 => 'Šeimos ryšiai';

  @override
  String get categorySlot11 => 'Vidinė ramybė';

  @override
  String get categorySlot12 => 'Pranašo išmintis';

  @override
  String get categorySlot13 => 'Geras charakteris';

  @override
  String get categorySlot14 => 'Atsispirk pagundai';

  @override
  String get categorySlot15 => 'Vakarinis dhikras';

  @override
  String get categoryCustom => 'Asmeninis apmąstymas';

  @override
  String get dhikrMeaningSubhanallah => 'Šlovė Allahui';

  @override
  String get dhikrMeaningAlhamdulillah => 'Visa šlovė priklauso Allahui';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allahas yra Didžiausias';

  @override
  String get quranVerseHeartAtRest =>
      'Iš tiesų, Allaho minėjime širdys randa ramybę.';

  @override
  String get promptHint =>
      'Bakstelėkite kategoriją islamo vadovavimui ir apmąstymui';

  @override
  String get currentLanguage => 'Dabartinė kalba';

  @override
  String get settingsLanguage => 'Kalbos nustatymai';

  @override
  String get settingsTitle => 'Nustatymai';

  @override
  String get chooseLanguage => 'Pasirinkite savo kalbą';

  @override
  String get continueCta => 'Tęsti';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count žodžių',
      few: '$count žodžiai',
      one: '$count žodis',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Parinktys';

  @override
  String get newCta => 'Naujas';

  @override
  String get actionsTitle => 'Ką norėtumėte daryti?';

  @override
  String get copy => 'Kopijuoti';

  @override
  String get share => 'Bendrinti';

  @override
  String get close => 'Uždaryti';

  @override
  String get copiedToast => 'Nukopijuota į iškarpinę';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Nepavyko sugeneruoti naujo atsakymo';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nAr norite pabandyti dar kartą?';
  }

  @override
  String get cancelCta => 'Atšaukti';

  @override
  String get retryCta => 'Bandyti dar kartą';

  @override
  String get authTitle => 'Susikurkite savo paskyrą';

  @override
  String get continueAsGuest => 'Tęsti kaip svečiui';

  @override
  String get signInGoogle => 'Prisijungti su Google';

  @override
  String get signInApple => 'Prisijungti su Apple';

  @override
  String get signInEmail => 'Prisijungti el. paštu';

  @override
  String get upgradeWithApple => 'Tęsti su Apple';

  @override
  String get mustAccept =>
      'Turite sutikti su Sąlygomis ir patvirtinti Privatumo politiką.';

  @override
  String get termsLabel => 'Sutinku su Paslaugų teikimo sąlygomis';

  @override
  String get privacyLabel => 'Perskaičiau Privatumo politiką';

  @override
  String get marketingOptIn => 'Sutinku gauti naujienas ir pasiūlymus';

  @override
  String get openTerms => 'Paslaugų teikimo sąlygos';

  @override
  String get openPrivacy => 'Privatumo politika';

  @override
  String get accountSection => 'Paskyra';

  @override
  String get guestMode => 'Svečio režimas';

  @override
  String get signedIn => 'Prisijungta';

  @override
  String get upgradeHint =>
      'Išsaugokite savo apmąstymus skirtinguose įrenginiuose susikūrę paskyrą.';

  @override
  String get upgradeWithGoogle => 'Tęsti su Google';

  @override
  String get signOut => 'Atsijungti';

  @override
  String get snackUpgraded => 'Paskyra atnaujinta su Google ✅';

  @override
  String get snackSignedIn => 'Prisijungta su Google ✅';

  @override
  String get snackSignedOut => 'Atsijungta';

  @override
  String get snackSignedInApple => 'Prisijungta su Apple ✅';

  @override
  String get snackSignedInGoogle => 'Prisijungta su Google ✅';

  @override
  String get snackUpgradedApple => 'Paskyra atnaujinta su Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Paskyra atnaujinta su Google ✅';

  @override
  String get historyTitle => 'Ankstesni apmąstymai';

  @override
  String get historyOpenCta => 'Ankstesni apmąstymai';

  @override
  String get historyEmpty => 'Dar nėra išsaugotų apmąstymų.';

  @override
  String get historyDeleteTitle => 'Ištrinti apmąstymą?';

  @override
  String get historyDeleteBody =>
      'Tai visam laikui pašalins pasirinktą elementą.';

  @override
  String get deleteCta => 'Ištrinti';

  @override
  String get historyButton => 'Ankstesni apmąstymai';

  @override
  String get historyEmptyTitle => 'Dar nėra apmąstymų';

  @override
  String get historyEmptyBody =>
      'Pirmiausia ką nors sugeneruokite — jūsų išsaugoti elementai pasirodys čia.';

  @override
  String get historyDelete => 'Ištrinti';

  @override
  String get footerTitle => 'Su Wilaya, Iman ir Sabr';

  @override
  String get footerSubtitle => 'Viena malda vienu metu';

  @override
  String get genericErrorSnack =>
      'Kažkas nepavyko — po akimirkos pabandykite dar kartą.';

  @override
  String get upgradeAccountCta =>
      'Išsaugokite savo apmąstymus skirtinguose įrenginiuose – susikurkite paskyrą';

  @override
  String get deleteAccount => 'Ištrinti paskyrą';

  @override
  String get exportData => 'Eksportuoti mano duomenis';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Lengviau 🐯\nAyara reikia akimirkos prieš kitą…';

  @override
  String get rateDailyLimit =>
      'Kol kas jūsų apmąstymai baigėsi.\nGaukite daugiau apmąstymų arba atnaujinkite į Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Išnaudojote visus savo apmąstymus.\nPapildykite arba atnaujinkite į Wilaya, kad tęstumėte.';

  @override
  String get rateGraceCreditsExhausted =>
      'Kol kas jūsų apmąstymai baigėsi.\nGaukite daugiau apmąstymų arba atnaujinkite į Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya atrakina aukščiausios kokybės funkcijas, būsimas kategorijas ir specialų ženklelį.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Jūsų apmąstymai šiuo metu baigėsi. Planas: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nepavyko patikrinti jūsų apmąstymų: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Tikrinant jūsų apmąstymus kažkas nepavyko.';

  @override
  String get aiFallbackGeneric =>
      'Kažkas nepavyko — po akimirkos pabandykite dar kartą.';

  @override
  String get limitSectionTitle => 'Apmąstymai';

  @override
  String get limitTodayLabel => 'Naudojimas';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Likę apmąstymai: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Planas: $plan';
  }

  @override
  String get limitLoadingLabel => 'Įkeliama…';

  @override
  String get limitLoadingLabelDescription =>
      'Rodoma apmąstymų kortelėje, kol gaunama naudojimo statistika.';

  @override
  String get aiLimitTitle => 'Apmąstymai';

  @override
  String get aiLimitSubtitle =>
      'Kiekvienas atsakymas naudoja 1 apmąstymą. Standartinis planas apima pradines apmąstymų atsargas. Wilaya atrakina aukščiausios kokybės kategorijas ir leidžia papildymus.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return 'Panaudota $used / $total apmąstymų';
  }

  @override
  String get creditsSectionTitle => 'Apmąstymai';

  @override
  String get creditsUsageLabel => 'Naudojimas';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Likę apmąstymai: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Planas: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Įkeliama…';

  @override
  String get creditsLoadingLabelDescription =>
      'Rodoma, kol gaunama apmąstymų statistika.';

  @override
  String get creditsTitle => 'Apmąstymai';

  @override
  String get creditsSubtitle =>
      'Kiekvienas atsakymas naudoja 1 apmąstymą. Standartinis planas apima pradines apmąstymų atsargas. Wilaya atrakina aukščiausios kokybės kategorijas ir leidžia papildymus.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return 'Panaudota $used / $total apmąstymų';
  }

  @override
  String get settingsDeleteTitle => 'Ištrinti paskyrą';

  @override
  String get settingsDeleteDescription =>
      'Visam laikui ištrinkite savo paskyrą ir visus susijusius duomenis.';

  @override
  String get settingsDeleteButtonLabel => 'Ištrinti mano paskyrą';

  @override
  String get settingsDeleteDialogTitle => 'Ištrinti paskyrą?';

  @override
  String get settingsDeleteDialogBody =>
      'Šis veiksmas yra negrįžtamas ir jo negalima atšaukti.\n\nVisi jūsų pokalbiai, istorija ir paskyros informacija bus ištrinti.';

  @override
  String get settingsDeleteDialogCancel => 'Atšaukti';

  @override
  String get settingsDeleteDialogConfirm => 'Ištrinti';

  @override
  String get settingsFreeLimitUsedTitle => 'Pradiniai apmąstymai panaudoti';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Šio įrenginio pradiniai apmąstymai jau panaudoti. Atnaujinkite į Wilaya arba nusipirkite daugiau apmąstymų, kad tęstumėte.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Pradiniai apmąstymai panaudoti';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Šio įrenginio pradiniai apmąstymai jau panaudoti. Atnaujinkite į Wilaya arba nusipirkite daugiau apmąstymų, kad tęstumėte.';

  @override
  String get deviceBoundError =>
      'Šis įrenginys jau susietas su kita paskyra. Prisijunkite naudodami pradinę paskyrą.';

  @override
  String get premiumTitle => 'Wilaya režimas';

  @override
  String get premiumSubtitleBasic => 'Atrakinkite visą Ayara patirtį.';

  @override
  String get premiumSubtitlePremium =>
      'Naudojatės Wilaya. Reikia daugiau apmąstymų?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Dabartinis planas: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Apmąstymai: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Pirkimai šiuo metu nepasiekiami.';

  @override
  String get premiumSignInToPurchase =>
      'Prisijunkite, kad nusipirktumėte apmąstymų arba atrakintumėte Wilaya.';

  @override
  String get premiumRestorePurchases => 'Atkurti pirkimus';

  @override
  String get premiumProcessing => 'Apdorojama…';

  @override
  String get premiumRestoreHintTitle =>
      'Jau įsigijote Wilaya arba apmąstymų šiame ar kitame įrenginyje?';

  @override
  String get premiumRestoreHintBody =>
      'Atkurkite savo pirkimus, jei jie nerodomi.';

  @override
  String get premiumBuyCredits200 => 'Pirkti 200 apmąstymų';

  @override
  String get premiumBuyCredits400 => 'Pirkti 400 apmąstymų';

  @override
  String get premiumBecomePremiumOneTime => 'Atnaujinti į Wilaya režimą';

  @override
  String get premiumTopupHint =>
      'Su Wilaya galite papildyti apmąstymus kada tik prireikia.';

  @override
  String get premiumUpgradeCta => 'Atnaujinti';

  @override
  String get premiumRequiredForCategory =>
      'Ši kategorija prieinama tik Wilaya naudotojams. Atnaujinkite nustatymuose, kad atrakintumėte visą aukščiausios kokybės turinį.';

  @override
  String get premiumBenefitsBasic =>
      'Atrakinkite Wilaya, kad gautumėte papildomų apmąstymų, prieigą prie premium kategorijų ir galėtumėte tęsti, kai tik prireikia vadovavimo.';

  @override
  String get premiumBenefitsPremium =>
      'Jūs naudojatės Wilaya režimu. Jei apmąstymų mažėja, pridėkite daugiau ir tęskite be pertraukų.';

  @override
  String get premiumButtonBecomePremium => 'Atrakinti Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Pridėti 1000 apmąstymų';

  @override
  String get premiumBadge => 'Wilaya aktyvi';

  @override
  String get premiumLoadingStore => 'Įkeliama parduotuvė…';

  @override
  String get premiumProductNotAvailable =>
      'Šio produkto parduotuvėje dar nėra. Bandykite vėliau.';

  @override
  String get premiumPurchaseError =>
      'Pirkimo metu kažkas nepavyko. Bandykite dar kartą.';

  @override
  String get premiumBuyCredits100 => 'Pridėti 100 apmąstymų';

  @override
  String get premiumFeatureLocked =>
      'Atrakinkite Wilaya, kad naudotumėtės šia funkcija.';

  @override
  String get lockedCategoriesHint =>
      'Kai kurios kategorijos skirtos tik Wilaya nariams. Atrakinkite jas, kad galėtumėte tyrinėti kiekvieną savo kelionės apmąstymą.';

  @override
  String get freePlanBlockedTitle => 'Jūsų pradiniai apmąstymai išnaudoti';

  @override
  String get freePlanBlockedBody =>
      'Naudojatės Standartiniu planu su pradiniais apmąstymais ir pasiekėte ribą. Norėdami tęsti — ir atrakinti premium kategorijas — atnaujinkite į Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Žemiau peržiūrėkite Wilaya parinktis';

  @override
  String get graceBlockedTitle => 'Jūsų pradiniai apmąstymai išnaudoti';

  @override
  String get graceBlockedBody =>
      'Naudojatės Standartiniu planu su pradiniais apmąstymais ir pasiekėte ribą. Norėdami tęsti — ir atrakinti premium kategorijas — atnaujinkite į Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Žemiau peržiūrėkite Wilaya parinktis';

  @override
  String get rateGuestMustSignIn =>
      'Prisijunkite, kad naudotumėtės Ayara ir savo apmąstymais.';

  @override
  String get guestNoCreditsTitle => 'Svečio režimas';

  @override
  String get guestNoCreditsBody =>
      'Kaip svečias galite naršyti programėlę, bet negalite naudoti apmąstymų. Prisijunkite vėliau nustatymuose, kad naudotumėtės apmąstymais ir atrakintumėte pirkimus.';

  @override
  String get guestDialogContinue => 'Tęsti';

  @override
  String get guestDialogLoginInstead => 'Vietoj to prisijungti';

  @override
  String get optionalLabel => 'nebūtina';

  @override
  String get accountDeleteSuccessTitle => 'Paskyra ištrinta';

  @override
  String get accountDeleteSuccessBody =>
      'Jūsų paskyra ir susiję duomenys sėkmingai ištrinti.';

  @override
  String get accountDeleteSuccessClose => 'Uždaryti';

  @override
  String get accountDeleteErrorTitle => 'Nepavyko ištrinti paskyros';

  @override
  String get accountDeleteErrorClose => 'Gerai';

  @override
  String get accountDeleteReauthCancelled =>
      'Pakartotinis autentifikavimas buvo atšauktas. Prisijunkite dar kartą ir bandykite trinti iš naujo.';

  @override
  String get accountDeleteReauthRequired =>
      'Paskyros ištrynimui reikia neseno prisijungimo. Atsijunkite, prisijunkite iš naujo ir bandykite dar kartą.';

  @override
  String get settingsDeletePermanentWarning =>
      'Šis veiksmas yra negrįžtamas ir jo negalima atšaukti. Visi su jūsų paskyra susiję duomenys bus ištrinti.';

  @override
  String get dailyGraceTitle => 'Kasdienis vadovavimas';

  @override
  String get dailyGraceScriptureLabel => 'DIENOS EILUTĖ';

  @override
  String get dailyGraceSaintLabel => 'SAVAITĖS MOKSLININKAS';

  @override
  String get dailyGraceReflectionLabel => 'VAKARO APMĄSTYMAS';

  @override
  String get dailyGraceCopiedToast => 'Eilutė nukopijuota į iškarpinę';

  @override
  String get locationConsentLabel =>
      'Leisti Ayara naudoti mano vietą Qiblos krypčiai ir maldų laikams';

  @override
  String get locationConsentHint =>
      'Naudojama tik šioms funkcijoms. Jūsų vieta niekada nėra bendrinama ar saugoma.';

  @override
  String get askPageTitle => 'Klauskite Ayara';

  @override
  String get askPageDescription =>
      'Paklauskite bet ko apie tikėjimą, maldą, gyvenimą ar islamo praktiką ir gaukite vadovavimą, paremtą Koranu ir Ahl al-Bayt mokymais.';

  @override
  String get askPageInputHint => 'Įrašykite savo klausimą čia…';

  @override
  String get askPageSubmitCta => 'Klausti';

  @override
  String get askPageInputEmptyError => 'Pirmiausia parašykite klausimą.';

  @override
  String get askResultYourQuestion => 'Jūsų klausimas';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Atsisukta į Meką';

  @override
  String get qiblaCompassInstruction =>
      'Sukite telefoną, kol auksinė rodyklė rodys aukštyn.\nTa kryptis rodo į Qiblą (Meką).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signalas silpnas. Išeikite į lauką ir bakstelėkite „Bandyti dar kartą“.';

  @override
  String get qiblaRetry => 'Bandyti dar kartą';

  @override
  String get qiblaTitle => 'Qiblos kryptis';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km iki Mekos';
  }

  @override
  String get qiblaLocationNeededTitle => 'Reikalinga vieta';

  @override
  String get qiblaLocationNeededBody =>
      'Leiskite prieigą prie vietos, kad Ayara galėtų apskaičiuoti Kaabos Mekoje kryptį iš bet kurios jūsų vietos.';

  @override
  String get qiblaOpenSettings => 'Atidaryti nustatymus';

  @override
  String get qiblaCompassLoading => 'Nustatoma jūsų vieta…';

  @override
  String get qiblaTowardMecca => 'Mekos link';

  @override
  String get prayerTimesTitle => 'Maldų laikai';

  @override
  String get prayerTimesFajr => 'Fadžr';

  @override
  String get prayerTimesDhuhr => 'Zuhr';

  @override
  String get prayerTimesAsr => 'Asr';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Iša';

  @override
  String get prayerTimesLocationNeededTitle => 'Reikalinga vieta';

  @override
  String get prayerTimesLocationNeededBody =>
      'Leiskite prieigą prie vietos, kad Ayara galėtų apskaičiuoti tikslius maldų laikus jūsų miestui.';

  @override
  String get prayerTimesNextLabel => 'Kitas';

  @override
  String get prayerTimesDoneLabel => 'Atlikta';

  @override
  String get monthlyPrayerTimesTitle => 'Mėnesio maldų laikai';

  @override
  String get monthlyPrayerTimesViewButton => 'Peržiūrėti visą mėnesį';

  @override
  String get monthlyPrayerTimesNextMonth => 'Kitas mėnuo';

  @override
  String get monthlyPrayerTimesDayHeader => 'Diena';

  @override
  String get sharePrayerTimes => 'Bendrinti maldų laikus';

  @override
  String get notificationsSectionTitle => 'Pranešimai';

  @override
  String get notificationsSectionSubtitle =>
      'Maldų priminimai, kalendoriaus įvykiai ir daugiau';

  @override
  String get dailyReflectionReminderTitle => 'Kasdienis apmąstymas';

  @override
  String get dailyReflectionReminderDescription =>
      'Švelnus kasdienis priminimas atverti Ayara ir susijungti su savo tikėjimu.';

  @override
  String get dailyReflectionReminderEnable => 'Įjungti kasdienį priminimą';

  @override
  String get dailyReflectionReminderTimeLabel => 'Priminimo laikas';

  @override
  String get prayerNotificationsTitle => 'Maldų priminimai';

  @override
  String get prayerNotificationsDescription =>
      'Gaukite švelnų priminimą prieš kiekvieną maldos laiką, kad išliktumėte susiję visą dieną.';

  @override
  String get prayerNotificationsEnable => 'Įjungti maldų priminimus';

  @override
  String get prayerNotificationsOpenSettings =>
      'Atidaryti pranešimų nustatymus';

  @override
  String get prayerNotificationsDenied => 'Pranešimai išjungti';

  @override
  String get prayerNotificationsDeniedHint =>
      'Eikite į nustatymus ir leiskite Ayara siųsti pranešimus, kad gautumėte maldų laikų priminimus.';

  @override
  String get notificationsConsentLabel => 'Leisti pranešimus apie maldų laikus';

  @override
  String get prayerNotifTitleFajr => '🌅 Fadžr — Aušros malda';

  @override
  String get prayerNotifBodyFajr =>
      'Fadžr yra Ahl al-Bayt rytų malda. Imamas Ali (AS) sakė: Saugokite aušros maldą kaip savo brangiausią patikėtą vertybę. Kelkitės, apsivalykite ir stokite prieš Allahą.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Zuhr — Vidurdienio malda';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayt imamams kiekviena prisiminimo akimirka buvo brangi. Sustabdykite dieną, jei reikia sujunkite Zuhr su Asr, ir sugrąžinkite širdį Allahui.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Popietės malda';

  @override
  String get prayerNotifBodyAsr =>
      'Saugokite maldą, nes tai sandora tarp jūsų ir Allaho. Atėjo Asr laikas — neleiskite jam praeiti be prisiminimo.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Saulėlydžio malda';

  @override
  String get prayerNotifBodyMaghrib =>
      'Saulė nusileido — tai akimirka, kurią Ahl al-Bayt laikė šventa maldavimui. Atlikite Maghrib ir ištieskite rankas Allahui du‘a prieš prasidedant nakčiai.';

  @override
  String get prayerNotifTitleIsha => '🌙 Iša — Nakties malda';

  @override
  String get prayerNotifBodyIsha =>
      'Užbaikite dieną Allaho draugijoje. Imamai skatino Salat al-Layl po Iša — bet pirmiausia atlikite Iša ir užbaikite dieną Jo prisiminimu.';

  @override
  String get outOfReflectionsBannerText => 'Išnaudojote visus savo apmąstymus';

  @override
  String get outOfReflectionsBannerCta => 'Gauti daugiau';

  @override
  String get dhikrPageTitle => 'Dhikras';

  @override
  String get dhikrTapToCount => 'Bakstelėkite apskritimą skaičiavimui';

  @override
  String get dhikrResetButton => 'Nustatyti iš naujo';

  @override
  String get dhikrComplete => 'Maša\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Jūs užbaigėte 100 Allaho prisiminimų. Tegul jie tampa šviesa jūsų širdžiai.';

  @override
  String get disclaimerTitle => 'Apie šios programėlės vadovavimą';

  @override
  String get disclaimerBody =>
      'Ayara teikia islamo apmąstymus, priminimus ir dvasinį turinį, skirtą palaikyti jūsų asmeninę tikėjimo kelionę, paremtą Koranu ir Ahl al-Bayt mokymais. Šis turinys pateikiamas tik bendrais informaciniais ir įkvepiančiais tikslais.\n\nAyara nepakeičia kvalifikuoto mokymo.\nŠioje programėlėje pateikiamas vadovavimas nėra pakaitalas išmokytam islamo mokslininkui, marja\' ar teologiškai parengtam mokytojui. Šiitų islame religinis vadovavimas remiasi džafaritų jurisprudencijos (fiqh) mokykla ir gyvo Marja\' (sekimo šaltinio) tradicija — kvalifikuotu teisininku, kurio sprendimai veda tikinčiuosius religinėje praktikoje. Jei turite klausimų apie religinius sprendimus, halal ir haram klausimus ar asmenines religines pareigas, kreipkitės patarimo į kvalifikuotą Marja\' ar mokslininką savo bendruomenėje.\n\nŠi programėlė neišduoda religinių sprendimų.\nAyara nepriima autoritetingų sprendimų fiqh ar asmeninių religinių pareigų klausimais. Niekas čia neturėtų būti laikoma fatva ar privalomu religiniu nurodymu.\n\nAhl al-Bayt svarba.\nŠiitų islame Pranašas Muhammadas ﷺ ir jo išgryninta šeima — Ahl al-Bayt — yra autoritetingi islamo bendruomenės vedliai po Korano. Dvylika Ahl al-Bayt imamų yra dieviškai paskirti islamo mokymo aiškintojai. Šios programėlės turinys atspindi šią tradiciją ir siekia ją ištikimai pagerbti.\n\nBendruomenės svarba.\nŠi programėlė siekia skatinti jūsų ryšį su tikėjimu, kartu labai gerbdama svarbų jūsų vietinės mečetės, islamo centro ir religinės bendruomenės vaidmenį. Raginame jus palaikyti ryšį ir mokytis iš kvalifikuotų mokytojų savo aplinkoje.';

  @override
  String get disclaimerClose => 'Suprantu';

  @override
  String get disclaimerInfoTooltip => 'Apie šios programėlės vadovavimą';

  @override
  String get disclaimerSettingsSubtitle =>
      'Tik bendriems informaciniams tikslams. Bakstelėkite, kad perskaitytumėte visą atsakomybės ribojimą.';

  @override
  String get disclaimerSectionHeader => 'Vadovavimo atsakomybės ribojimas';

  @override
  String get navHome => 'Pagrindinis';

  @override
  String get navReflect => 'Apmąstyti';

  @override
  String get navDuas => 'Du‘a';

  @override
  String get navCalendar => 'Kalendorius';

  @override
  String get dashboardToday => 'ŠIANDIEN';

  @override
  String get dashboardComingUp => 'Artėja';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dienų',
      few: 'dienos',
      one: 'diena',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Greita prieiga';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikras';

  @override
  String get quickActionDailyGrace => 'Vadovavimas';

  @override
  String get quickActionPrayerTimes => 'Maldų laikai';

  @override
  String get askAyaraTitle => 'Klauskite Ayara';

  @override
  String get askAyaraSubtitle =>
      'Užduokite bet kokį islamo klausimą ir gaukite apgalvotą, vedantį atsakymą.';

  @override
  String get askAyaraHint => 'pvz. Kokia yra Ramadano reikšmė?';

  @override
  String get askAyaraSubmit => 'Klausti';

  @override
  String get wisdomOfTheDayTitle => 'Dienos išmintis';

  @override
  String get calendarScreenTitle => 'Islamo kalendorius';

  @override
  String get calendarUpcomingOccasions => 'Artėjančios progos';

  @override
  String get calendarOccasionRemindersTitle => 'Progų priminimai';

  @override
  String get calendarOccasionRemindersHint =>
      'Pranešama vakare prieš kiekvieną progą';

  @override
  String get calendarNotifPermissionDenied =>
      'Pranešimų leidimas atmestas. Įjunkite jį savo įrenginio nustatymuose.';

  @override
  String get calendarNoEvents => 'Artėjančių įvykių nerasta.';

  @override
  String get calendarAddToPhone => 'Pridėti prie telefono kalendoriaus';

  @override
  String get calendarAddedToPhone => 'Pridėta prie kalendoriaus';

  @override
  String get calendarCountdownToday => 'ŠIANDIEN';

  @override
  String get calendarCountdownTomorrow => 'RYTOJ';

  @override
  String calendarCountdownDays(int days) {
    return 'po $days dienų';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Sau';

  @override
  String get calendarMonthFeb => 'Vas';

  @override
  String get calendarMonthMar => 'Kov';

  @override
  String get calendarMonthApr => 'Bal';

  @override
  String get calendarMonthMay => 'Geg';

  @override
  String get calendarMonthJun => 'Bir';

  @override
  String get calendarMonthJul => 'Lie';

  @override
  String get calendarMonthAug => 'Rgp';

  @override
  String get calendarMonthSep => 'Rgs';

  @override
  String get calendarMonthOct => 'Spa';

  @override
  String get calendarMonthNov => 'Lap';

  @override
  String get calendarMonthDec => 'Gru';

  @override
  String get calendarSeasonMuharramEarly =>
      'Muharramo dienos — prisiminkite Karbalą';

  @override
  String get calendarSeasonAshura => 'Ašūra — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharramas — gedulo ir apmąstymų dienos';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — keturiasdešimt Husayno dienų';

  @override
  String get calendarSeasonRoadToArbaeen => 'Kelias į Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — apreiškimo aušra';

  @override
  String get calendarSeasonMidShaban =>
      'Sha\'bano vidurys — Imamo al-Mahdi (AJ) gimtadienis';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — Korano mėnuo';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak!';

  @override
  String get hijriMonth1 => 'Muharramas';

  @override
  String get hijriMonth2 => 'Safaras';

  @override
  String get hijriMonth3 => 'Rabi\' al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi\' al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Awwal';

  @override
  String get hijriMonth6 => 'Jumada al-Thani';

  @override
  String get hijriMonth7 => 'Radžabas';

  @override
  String get hijriMonth8 => 'Sha\'banas';

  @override
  String get hijriMonth9 => 'Ramadanas';

  @override
  String get hijriMonth10 => 'Šavvalis';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Du‘a ir Ziyarat';

  @override
  String get duasSearchHint => 'Ieškoti du‘a, ziyarat…';

  @override
  String get duasFilterAll => 'Visos';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count du‘a ir ziyarat',
      few: '$count du‘a',
      one: '$count du‘a',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Du‘a nerasta.';

  @override
  String get duaCategoryDaily => 'Kasdienės';

  @override
  String get duaCategoryWeekly => 'Savaitinės';

  @override
  String get duaCategoryOccasions => 'Progos';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Gimimas';

  @override
  String get eventTypeMartyrdom => 'Kankinystė';

  @override
  String get eventTypeOccasion => 'Proga';

  @override
  String get duaCopyTooltip => 'Kopijuoti vertimą';

  @override
  String get duaToggleTransliteration => 'Transliteracija';

  @override
  String get duaToggleTranslation => 'Vertimas';

  @override
  String get duaAskAiLabel => 'Paprašykite Ayara paaiškinti šią du‘a';

  @override
  String get duaAskAiLockedLabel => 'Klausti Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara paaiškinimai prieinami Wilaya nariams. Atnaujinkite nustatymuose.';

  @override
  String duaAiComingSoon(String name) {
    return 'Klauskite Ayara apie „$name“ — netrukus!';
  }

  @override
  String get duaCopiedToast => 'Du‘a nukopijuota į iškarpinę.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allahas yra Didžiausias';

  @override
  String get tasbihAlhamdulillahMeaning => 'Visa šlovė priklauso Allahui';

  @override
  String get tasbihSubhanallahMeaning => 'Šlovė Allahui';

  @override
  String get tasbihResetTooltip => 'Nustatyti iš naujo';

  @override
  String get tasbihCompleteTitle => 'Tasbih užbaigtas';

  @override
  String get tasbihCompleteMessage => 'Tegul Allahas priima jūsų dhikrą.';

  @override
  String get tasbihTapHint => 'Bakstelėkite bet kur, kad skaičiuotumėte';

  @override
  String get tasbihatScreenTitle => 'Maldos vadovas';

  @override
  String get tasbihatScreenSubtitle => 'MALDOS ŠLOVINIMAI';

  @override
  String get tasbihatScreenDescription =>
      'Išsamus šlovinimų, recituojamų kasdienių maldų metu ir po jų, vadovas — pagal Ahl al-Bayt (a) tradiciją.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recituojama 3-ioje ir 4-oje rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Šiitų jurisprudencijoje Tasbiḥāt al-Arbaʿa pakeičia Sūrą al-Fatiha 3-ioje ir 4-oje Zuhr, Asr, Maghrib ir Iša rakʿah. Privaloma (wājib) recituoti vieną kartą, o rekomenduojama (mustaḥabb) — tris kartus.';

  @override
  String get tasbihatArba3Translation =>
      'Šlovė Allahui · Visa šlovė Allahui\nNėra kito dievo, tik Allahas · Allahas yra Didžiausias';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitacija baigta';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Tegul jūsų malda būna priimta — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Bakstelėkite po kiekvienos recitacijos';

  @override
  String get tasbihatZahraSubtitle => 'Po kiekvienos maldos · 100 karoliukų';

  @override
  String get tasbihatZahraOriginLabel => 'Kilmė';

  @override
  String get tasbihatZahraHadith =>
      'Ledi Fatima al-Zahra (sa) paprašė Pranašo ﷺ tarno. Jis pasakė: „Argi neparodyti tau kažko geresnio? Po kiekvienos maldos recituok Subḥānallāh 33 kartus, Alḥamdulillāh 33 kartus ir Allāhu Akbar 34 kartus. Tai tau geriau nei tarnas.“';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, t. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Atidaryti Tasbīḥ skaitiklį';

  @override
  String get tasbihatDuasTitle => 'REKOMENDUOJAMOS DU‘A';

  @override
  String get tasbihatDuasSubtitle => 'Užbaigus maldą';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Po kiekvienos privalomos maldos';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sūra al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Kas recituoja Āyat al-Kursī po kiekvienos privalomos maldos, tarp jo ir rojaus nieko nėra, tik mirtis. Imamas al-Bāqir (a) sakė, kad tai viena iš didžiausių Korano eilučių.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Po kiekvienos maldos · užantspauduoja visas maldas';

  @override
  String get tasbihatDuaSalawatSource => 'Imamas al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Palaiminimų siuntimas Pranašui ﷺ ir jo išgrynintai šeimai (Āl Muḥammad) rekomenduojamas užbaigti kiekvieną du‘a. Imamas al-Ṣādiq (a) sakė: „Bet kuri du‘a lieka sustabdyta, kol nesiunčiate ṣalawāt Muhammadui ir jo šeimai.“';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Po kiekvienos maldos · mūsų laiko Imamui';

  @override
  String get tasbihatDuaFarajSource => 'Mokė Imamas al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Du‘a dėl Imamo al-Mahdī (af), dvyliktojo Imamo, sugrįžimo, kurios mokė jo tėvas. Šiitų tikintieji ją recituoja kasdien po kiekvienos maldos kaip atsidavimo gyvajam Imamui veiksmą.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Ledi Fāṭimos Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Po Maghrib ir Iša · ypač rekomenduojama';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imamas al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imamas al-Bāqir (a) sakė, kad recituoti Tasbīḥ al-Zahrā po Iša prieš miegą yra geriau nei 1000 rakʿah savanoriškos maldos. Jos šviesa kyla į dangus.';

  @override
  String get tasbihFatimaGiftPre => 'Dovana iš Pranašo';

  @override
  String get tasbihFatimaGiftPost => 'recituojama po kiekvienos maldos';

  @override
  String get prayerTrackerTitle => 'MALDŲ SEKIMAS';

  @override
  String get prayerTrackerPrayed => 'Pasimelsta';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dienų iš eilės';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Visos šiandienos maldos užbaigtos. Tegul Allahas priima.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Šiandien užbaigta';

  @override
  String get dhikrTrackerNotDoneToday => 'Šiandien neatlikta';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dienų iš eilės';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ priminimas';

  @override
  String get dhikrReminderDescription =>
      'Švelnus kasdienis priminimas recituoti savo Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Įjungti Tasbīḥ priminimą';

  @override
  String get dhikrReminderTimeLabel => 'Priminimo laikas';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Kasdienis hadisas';

  @override
  String get hadithLabelArabic => 'ARABŲ KALBA';

  @override
  String get hadithLabelTranslation => 'VERTIMAS';

  @override
  String get hadithBadge => 'HADISAS';

  @override
  String get hadithShare => 'Bendrinti šį hadisą';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPer Ayara';
  }

  @override
  String get hadithNavPrevious => 'Ankstesnis';

  @override
  String get hadithNavNext => 'Kitas';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'Pranašas, Ledi Fatima ir dvylika imamų — neklystantys islamo vedliai';

  @override
  String get imamLabelBorn => 'Gimė';

  @override
  String get imamLabelMartyrdom => 'Kankinystė';

  @override
  String get imamLabelStatus => 'Statusas';

  @override
  String get imamSectionBiography => 'BIOGRAFIJA';

  @override
  String get imamSectionFamousSaying => 'ŽYMUS POSAKIS';

  @override
  String get imamRoleProphet => 'Paskutinis Pranašas';

  @override
  String get imamRoleInfallible => 'Neklystantysis';

  @override
  String get imamOrdinal1 => '1-asis Imamas';

  @override
  String get imamOrdinal2 => '2-asis Imamas';

  @override
  String get imamOrdinal3 => '3-iasis Imamas';

  @override
  String get imamOrdinal4 => '4-asis Imamas';

  @override
  String get imamOrdinal5 => '5-asis Imamas';

  @override
  String get imamOrdinal6 => '6-asis Imamas';

  @override
  String get imamOrdinal7 => '7-asis Imamas';

  @override
  String get imamOrdinal8 => '8-asis Imamas';

  @override
  String get imamOrdinal9 => '9-asis Imamas';

  @override
  String get imamOrdinal10 => '10-asis Imamas';

  @override
  String get imamOrdinal11 => '11-asis Imamas';

  @override
  String get imamOrdinal12 => '12-asis Imamas';

  @override
  String get duaAudioScreenTitle => 'Klausytis du‘a';

  @override
  String get duaAudioScreenSubtitle =>
      'Pasirinkite du‘a, kurios norite klausytis. Bakstelėkite plytelę, kad paleistumėte arba pristabdytumėte.';

  @override
  String get duaAudioComingSoonMessage =>
      'Šios du‘a garso įrašas bus pasiekiamas būsimame atnaujinime.';

  @override
  String get duaAudioClose => 'Uždaryti';

  @override
  String get duaAudioError => 'Nepavyko įkelti garso. Patikrinkite savo ryšį.';

  @override
  String get duaAudioMetaTransmittedBy => 'Perdavė';

  @override
  String get duaAudioMetaOccasion => 'Proga';

  @override
  String get duaAudioMetaDuration => 'Trukmė';

  @override
  String get quickActionDailyHadith => 'Kasdienis hadisas';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Klausytis';

  @override
  String get quickActionTasbihat => 'Maldos vadovas';

  @override
  String get pilgrimageSectionTitle => 'Šventoji kelionė';

  @override
  String get pilgrimageSectionSubtitle =>
      'Išsamūs Hajj ir Umrah vadovai — piligrimystė į Šventuosius Allaho Namus Mekoje';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Penktasis islamo ramstis';

  @override
  String get hajjCardDescription =>
      'Didžioji kasmetinė piligrimystė — privaloma kartą gyvenime kiekvienam pajėgiam musulmonui';

  @override
  String get hajjScreenTitle => 'Hajj vadovas';

  @override
  String get hajjScreenSubtitle =>
      'Žingsnis po žingsnio vadovas didžiajai piligrimystei';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Mažoji piligrimystė';

  @override
  String get umrahCardDescription =>
      'Giliai praturtinanti dvasinė kelionė, kurią galima atlikti bet kuriuo metų laiku';

  @override
  String get umrahScreenTitle => 'Umrah vadovas';

  @override
  String get umrahScreenSubtitle =>
      'Žingsnis po žingsnio vadovas mažajai piligrimystei';

  @override
  String get pilgrimageStepsTitle => 'Ritualai ir žingsniai';

  @override
  String get pilgrimageImportantNotesTitle => 'Svarbios pastabos';

  @override
  String get pilgrimageDuaTitle => 'Dua šiam žingsniui';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari fiqh pastaba';

  @override
  String get pilgrimageComplete => '✓ Baigta';

  @override
  String get pilgrimageMarkDone => 'Pažymėti kaip baigtą';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done iš $total žingsnių';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Šiitų piligrimai';

  @override
  String get pilgrimageShiaNoteBody =>
      'Šiitų piligrimai tradiciškai taip pat vyksta į Mediną aplankyti Pranašo Muhammado (SAW) kapo Masjid al-Nabawi ir imamų kapų Jannat al-Baqi. Šie apsilankymai turi didžiulę dvasinę reikšmę ir daugumai šiitų musulmonų laikomi neatsiejama kelionės dalimi.';

  @override
  String get hajjIntro =>
      'Hajj yra penktasis islamo ramstis, privalomas kartą gyvenime kiekvienam musulmonui, kuris yra fiziškai ir finansiškai pajėgus. Atliekamas Dhul Hijjah mėnesį, jis seka Pranašo Ibrahimo (AS), jo sūnaus Ismailo (AS) ir Ledi Hajar pėdomis. Šiitų musulmonams Hajj taip pat apima didžiulę palaimą aplankyti Pranašo (SAW) ir Ahlul Bayt poilsio vietas Medinoje.';

  @override
  String get umrahIntro =>
      'Umrah yra mažoji piligrimystė į Meką ir, skirtingai nei Hajj, gali būti atliekama bet kuriuo metų laiku. Nors ji nėra privaloma, ji neša didžiulį dvasinį atlygį ir laikoma labai rekomenduojamu garbinimo veiksmu. Ji dalijasi keliomis apeigomis su Hajj, tačiau yra trumpesnė ir susideda iš keturių pagrindinių ritualų.';
}
