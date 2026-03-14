// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Izberite svoj jezik';

  @override
  String get languageSelectSub => 'To lahko spremenite pozneje v nastavitvah';

  @override
  String get actionContinue => 'Nadaljuj';

  @override
  String get languageSuggestedHeader => 'Predlagano';

  @override
  String get languageAllHeader => 'Vsi jeziki';

  @override
  String get languageSuggestedBadge => 'Predlagano';

  @override
  String get languageSearchHint => 'Iskanje…';

  @override
  String get planBasic => 'Standardno';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Dnevno vodstvo';

  @override
  String get categorySlot02 => 'Vera in zaupanje';

  @override
  String get categorySlot03 => 'Razmislek o molitvi';

  @override
  String get categorySlot04 => 'Potrpežljivost in upanje';

  @override
  String get categorySlot05 => 'Iskanje odpuščanja';

  @override
  String get categorySlot06 => 'Usmiljenje in sočutje';

  @override
  String get categorySlot07 => 'Vera in moč';

  @override
  String get categorySlot08 => 'Hvaležno srce';

  @override
  String get categorySlot09 => 'Namen življenja';

  @override
  String get categorySlot10 => 'Družinske vezi';

  @override
  String get categorySlot11 => 'Notranji mir';

  @override
  String get categorySlot12 => 'Modrost Preroka';

  @override
  String get categorySlot13 => 'Dober značaj';

  @override
  String get categorySlot14 => 'Odolaj skušnjavi';

  @override
  String get categorySlot15 => 'Večerni Dhikr';

  @override
  String get categoryCustom => 'Osebni razmislek';

  @override
  String get dhikrMeaningSubhanallah => 'Slava Alahu';

  @override
  String get dhikrMeaningAlhamdulillah => 'Vsa hvala pripada Alahu';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah je največji';

  @override
  String get quranVerseHeartAtRest =>
      'Res, v spominu na Alaha srca najdejo mir.';

  @override
  String get promptHint =>
      'Tapnite na kategorijo za islamsko vodstvo in razmislek';

  @override
  String get currentLanguage => 'Trenutni jezik';

  @override
  String get settingsLanguage => 'Jezikovne nastavitve';

  @override
  String get settingsTitle => 'Nastavitve';

  @override
  String get chooseLanguage => 'Izberite svoj jezik';

  @override
  String get continueCta => 'Nadaljuj';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count besed',
      one: '$count beseda',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Možnosti';

  @override
  String get newCta => 'Novo';

  @override
  String get actionsTitle => 'Kaj bi radi naredili?';

  @override
  String get copy => 'Kopiraj';

  @override
  String get share => 'Deli';

  @override
  String get close => 'Zapri';

  @override
  String get copiedToast => 'Kopirano v odložišče';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ni bilo mogoče ustvariti novega odgovora';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nAli želite poskusiti znova?';
  }

  @override
  String get cancelCta => 'Prekliči';

  @override
  String get retryCta => 'Poskusi znova';

  @override
  String get authTitle => 'Ustvarite svoj račun';

  @override
  String get continueAsGuest => 'Nadaljuj kot gost';

  @override
  String get signInGoogle => 'Prijava s stikom Google';

  @override
  String get signInApple => 'Prijava s stikom Apple';

  @override
  String get signInEmail => 'Prijava s stikom E-pošta';

  @override
  String get upgradeWithApple => 'Nadaljuj s stikom Apple';

  @override
  String get mustAccept => 'Sprejeti morate Pogoje in Navedbe o varnosti.';

  @override
  String get termsLabel => 'Sprejemam Pogoje storitve';

  @override
  String get privacyLabel => 'Prebral sem Navedbo o varnosti';

  @override
  String get marketingOptIn => 'Strinjam se s prejemanjem novic in ponudb';

  @override
  String get openTerms => 'Pogoji storitve';

  @override
  String get openPrivacy => 'Navedba o varnosti';

  @override
  String get accountSection => 'Račun';

  @override
  String get guestMode => 'Gostinski način';

  @override
  String get signedIn => 'Prijavljen';

  @override
  String get upgradeHint =>
      'Shranite svoje razmisleke na več napravah z ustvarjanjem računa.';

  @override
  String get upgradeWithGoogle => 'Nadaljuj s stikom Google';

  @override
  String get signOut => 'Odjava';

  @override
  String get snackUpgraded => 'Račun nadgrajen s stikom Google ✅';

  @override
  String get snackSignedIn => 'Prijavljen s stikom Google ✅';

  @override
  String get snackSignedOut => 'Odjavljen';

  @override
  String get snackSignedInApple => 'Prijavljen s stikom Apple ✅';

  @override
  String get snackSignedInGoogle => 'Prijavljen s stikom Google ✅';

  @override
  String get snackUpgradedApple => 'Račun nadgrajen s stikom Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Račun nadgrajen s stikom Google ✅';

  @override
  String get historyTitle => 'Prejšnji razmisleki';

  @override
  String get historyOpenCta => 'Prejšnji razmisleki';

  @override
  String get historyEmpty => 'Še ni shranjenih razmislekov.';

  @override
  String get historyDeleteTitle => 'Izbriši razmislek?';

  @override
  String get historyDeleteBody => 'To bo trajno odstranilo izbrani element.';

  @override
  String get deleteCta => 'Izbriši';

  @override
  String get historyButton => 'Prejšnji razmisleki';

  @override
  String get historyEmptyTitle => 'Še ni razmislekov';

  @override
  String get historyEmptyBody =>
      'Najprej ustvari nekaj — tvoji shranjeni elementi se bodo pojavili tukaj.';

  @override
  String get historyDelete => 'Izbriši';

  @override
  String get footerTitle => 'Z Wilayo, Imane in Sabrom';

  @override
  String get footerSubtitle => 'Ena molitev naenkrat';

  @override
  String get genericErrorSnack =>
      'Kaj je šlo narobe — poskusite znova čez trenutek.';

  @override
  String get upgradeAccountCta =>
      'Shranite svoje razmisleke na več napravah – ustvarite račun';

  @override
  String get deleteAccount => 'Izbriši račun';

  @override
  String get exportData => 'Izvozi moje podatke';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Mirno 🐯\nAyara potrebuje trenutek pred naslednjim…';

  @override
  String get rateDailyLimit =>
      'Trenutno nimate več razmislekov.\nPridobite več razmislekov ali se nadgradite na Wilayo.';

  @override
  String get rateCreditsExhausted =>
      'Porabil si vse svoje razmisleke.\nDodaj ali se nadgradi na Wilayo, da nadaljuješ.';

  @override
  String get rateGraceCreditsExhausted =>
      'Trenutno nimate več razmislekov.\nPridobite več razmislekov ali se nadgradite na Wilayo.';

  @override
  String get premiumDescription =>
      'Wilaya odklanja premium lastnosti, prihodnje kategorije in posebno značko.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vaši razmisleki so prazni. Načrt: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ni bilo mogoče preveriti vaših razmislekov: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Med preverjanjem vaših razmislekov je kaj šlo narobe.';

  @override
  String get aiFallbackGeneric =>
      'Kaj je šlo narobe — poskusite znova čez trenutek.';

  @override
  String get limitSectionTitle => 'Razmisleki';

  @override
  String get limitTodayLabel => 'Poraba';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Preostali razmisleki: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Načrt: $plan';
  }

  @override
  String get limitLoadingLabel => 'Nalaganje…';

  @override
  String get limitLoadingLabelDescription =>
      'Prikazano v kartici razmislekov med pridobivanjem statističnih podatkov o porabi.';

  @override
  String get aiLimitTitle => 'Razmisleki';

  @override
  String get aiLimitSubtitle =>
      'Vsak odgovor porabi 1 razmislek. Standard vključuje začetne razmisleke. Wilaya odklanja premium kategorije in omogoča doplačila.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total razmislekov uporabljenih';
  }

  @override
  String get creditsSectionTitle => 'Razmisleki';

  @override
  String get creditsUsageLabel => 'Poraba';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Preostali razmisleki: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Načrt: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Nalaganje…';

  @override
  String get creditsLoadingLabelDescription =>
      'Prikazano med pridobivanjem statističnih podatkov o razmislekih.';

  @override
  String get creditsTitle => 'Razmisleki';

  @override
  String get creditsSubtitle =>
      'Vsak odgovor porabi 1 razmislek. Standard vključuje začetne razmisleke. Wilaya odklanja premium kategorije in omogoča doplačila.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total razmislekov uporabljenih';
  }

  @override
  String get settingsDeleteTitle => 'Izbriši račun';

  @override
  String get settingsDeleteDescription =>
      'Trajno izbriši svoj račun in vse povezane podatke.';

  @override
  String get settingsDeleteButtonLabel => 'Izbriši svoj račun';

  @override
  String get settingsDeleteDialogTitle => 'Izbriši račun?';

  @override
  String get settingsDeleteDialogBody =>
      'To dejanje je trajno in ga ni mogoče razveljaviti.\n\nSvi tvoji pogovori, zgodovina in podatki računa bodo izbrisani.';

  @override
  String get settingsDeleteDialogCancel => 'Prekliči';

  @override
  String get settingsDeleteDialogConfirm => 'Izbriši';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Začetni razmisleki so bili uporabljeni';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Začetni razmisleki za to napravo so bili uporabljeni. Nadgradi se na Wilayo ali kupi več razmislekov, da nadaljuješ.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Začetni razmisleki so bili uporabljeni';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Začetni razmisleki za to napravo so bili uporabljeni. Nadgradi se na Wilayo ali kupi več razmislekov, da nadaljuješ.';

  @override
  String get deviceBoundError =>
      'Ta naprava je že povezana z drugim računom. Prosimo, prijavite se s prvotnim računom.';

  @override
  String get premiumTitle => 'Wilaya način';

  @override
  String get premiumSubtitleBasic => 'Odklenite polno Ayara izkušnjo.';

  @override
  String get premiumSubtitlePremium =>
      'Ste na Wilayo. Potrebujete več razmislekov?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Trenutni načrt: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Razmisleki: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Nakupi niso na voljo v tem trenutku.';

  @override
  String get premiumSignInToPurchase =>
      'Prijavite se, da kupite razmisleke ali odklenete Wilayo.';

  @override
  String get premiumRestorePurchases => 'Obnovi nakupe';

  @override
  String get premiumProcessing => 'Obdelava…';

  @override
  String get premiumRestoreHintTitle =>
      'Že ste kupili Wilayo ali razmisleke na tej napravi ali drugi?';

  @override
  String get premiumRestoreHintBody =>
      'Obnosite svoje nakupe, če se ne prikazujejo.';

  @override
  String get premiumBuyCredits200 => 'Kupi 200 razmislekov';

  @override
  String get premiumBuyCredits400 => 'Kupi 400 razmislekov';

  @override
  String get premiumBecomePremiumOneTime => 'Nadgradite se na Wilaya način';

  @override
  String get premiumTopupHint =>
      'Z Wilayo lahko doplačate dodatne razmisleke, kadar koli je potrebno.';

  @override
  String get premiumUpgradeCta => 'Nadgradi';

  @override
  String get premiumRequiredForCategory =>
      'Ta kategorija je na voljo samo za uporabnike Wilayo. Nadgradite se v Nastavitvah, da odklenete vse premium vsebine.';

  @override
  String get premiumBenefitsBasic =>
      'Odklenite Wilayo, da dobite dodatne razmisleke, dostop do premium kategorij in nastavitev, kadar koli potrebujete vodstvo.';

  @override
  String get premiumBenefitsPremium =>
      'Ste v Wilaya načinu. Če vam zmanjkuje, dodajte dodatne razmisleke in nadaljujte brez prekinitev.';

  @override
  String get premiumButtonBecomePremium => 'Odklenite Wilayo';

  @override
  String get premiumButtonTopup1000 => 'Dodaj 1000 razmislekov';

  @override
  String get premiumBadge => 'Wilaya je aktiven';

  @override
  String get premiumLoadingStore => 'Nalagam trgovino…';

  @override
  String get premiumProductNotAvailable =>
      'Ta izdelek v trgovini ni na voljo. Poskusite ponovno pozneje.';

  @override
  String get premiumPurchaseError =>
      'Pri nakupu je kaj šlo narobe. Prosimo, poskusite znova.';

  @override
  String get premiumBuyCredits100 => 'Dodaj 100 razmislekov';

  @override
  String get premiumFeatureLocked =>
      'Odklenite Wilayo, da dostopate do te lastnosti.';

  @override
  String get lockedCategoriesHint =>
      'Nekatere kategorije so rezervirane za člane Wilayo. Odklenite jih, da raziščete vsak razmislek na svoji poti.';

  @override
  String get freePlanBlockedTitle => 'Porabil si svoje začetne razmisleke';

  @override
  String get freePlanBlockedBody =>
      'Ste na standardnem načrtu z začetnimi razmisleki in dosegли ste mejo. Če želite nadaljevati — in odkleniti premium kategorije — se nadgradite na Wilayo.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Oglejte si Wilaya možnosti spodaj';

  @override
  String get graceBlockedTitle => 'Porabil si svoje začetne razmisleke';

  @override
  String get graceBlockedBody =>
      'Ste na standardnem načrtu z začetnimi razmisleki in doseggli ste mejo. Če želite nadaljevati — in odkleniti premium kategorije — se nadgradite na Wilayo.';

  @override
  String get graceBlockedCtaGoPremium => 'Oglejte si Wilaya možnosti spodaj';

  @override
  String get rateGuestMustSignIn =>
      'Prijavite se, da uporabljate Ayaro in svoje razmisleke.';

  @override
  String get guestNoCreditsTitle => 'Gostinski način';

  @override
  String get guestNoCreditsBody =>
      'Kot gost lahko brskate po aplikaciji, vendar ne morete uporabljati razmislekov. Pozneje se prijavite v Nastavitvah, da uporabljate razmisleke in odklenete nakupe.';

  @override
  String get guestDialogContinue => 'Nadaljuj';

  @override
  String get guestDialogLoginInstead => 'Namesto tega se prijavi';

  @override
  String get optionalLabel => 'izbirno';

  @override
  String get accountDeleteSuccessTitle => 'Račun izbrisan';

  @override
  String get accountDeleteSuccessBody =>
      'Vaš račun in povezani podatki so bili uspešno izbrisani.';

  @override
  String get accountDeleteSuccessClose => 'Zapri';

  @override
  String get accountDeleteErrorTitle => 'Ni bilo mogoče izbrisati računa';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ponovno overjanje je bilo preklicano. Prosimo, da se ponovno prijavite in poskusite znova.';

  @override
  String get accountDeleteReauthRequired =>
      'Brisanje računa zahteva nedavno prijavo. Prosimo, se odjavite, ponovno prijavite in poskusite znova.';

  @override
  String get settingsDeletePermanentWarning =>
      'To dejanje je trajno in ga ni mogoče razveljaviti. Vsi podatki, povezani z vašim računom, bodo izbrisani.';

  @override
  String get dailyGraceTitle => 'Dnevno vodstvo';

  @override
  String get dailyGraceScriptureLabel => 'VERZ DNEVA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA TEDNA TEDNA';

  @override
  String get dailyGraceReflectionLabel => 'VEČERNI RAZMISLEK';

  @override
  String get dailyGraceCopiedToast => 'Verz kopiran v odložišče';

  @override
  String get locationConsentLabel =>
      'Dovolite Ayari, da uporabi mojo lokacijo za smer Qible in čase molitve';

  @override
  String get locationConsentHint =>
      'Uporabljeno samo za te lastnosti. Vaša lokacija nikoli ne bo skupna ali shranjena.';

  @override
  String get askPageTitle => 'Vprašaj Ayaro';

  @override
  String get askPageDescription =>
      'Vprašajte kaj koli o veri, molitvi, življenju ali islamski praksi in prejmite vodstvo, ukoreninjeno v Koranu in učenjih Ahl al-Bayta.';

  @override
  String get askPageInputHint => 'Vtipkajte svoje vprašanje tukaj…';

  @override
  String get askPageSubmitCta => 'Vprašaj';

  @override
  String get askPageInputEmptyError => 'Najprej napišite vprašanje.';

  @override
  String get askResultYourQuestion => 'Vaše vprašanje';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Obrnjen proti Meki';

  @override
  String get qiblaCompassInstruction =>
      'Zavrtite telefon, dokler se золота igla ne kaže navzgor.\nTa smer kaže na Qiblo (Meko).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Signal GPS je šibak. Pojdite ven in tapnite Poskusi znova.';

  @override
  String get qiblaRetry => 'Poskusi znova';

  @override
  String get qiblaTitle => 'Smer Qible';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km do Meke';
  }

  @override
  String get qiblaLocationNeededTitle => 'Lokacija je obavezna';

  @override
  String get qiblaLocationNeededBody =>
      'Dovolite dostop do lokacije, da Ayara izračuna smer Kaabe v Meki z vaše trenutne lokacije.';

  @override
  String get qiblaOpenSettings => 'Odpri nastavitve';

  @override
  String get qiblaCompassLoading => 'Iskanje vaše pozicije…';

  @override
  String get qiblaTowardMecca => 'Proti Meki';

  @override
  String get prayerTimesTitle => 'Časi molitvi';

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
  String get prayerTimesLocationNeededTitle => 'Lokacija je obavezna';

  @override
  String get prayerTimesLocationNeededBody =>
      'Dovolite dostop do lokacije, da Ayara izračuna natančne čase molitvi za vaše mesto.';

  @override
  String get prayerTimesNextLabel => 'Naslednji';

  @override
  String get prayerTimesDoneLabel => 'Končano';

  @override
  String get monthlyPrayerTimesTitle => 'Mesečni časi molitvi';

  @override
  String get monthlyPrayerTimesViewButton => 'Oglejte si polni mesec';

  @override
  String get monthlyPrayerTimesNextMonth => 'Naslednji mesec';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dan';

  @override
  String get sharePrayerTimes => 'Deli čase molitvi';

  @override
  String get notificationsSectionTitle => 'Obvestila';

  @override
  String get notificationsSectionSubtitle =>
      'Opomnitve molitvi, dogodki v koledarju in drugo';

  @override
  String get dailyReflectionReminderTitle => 'Dnevni razmislek';

  @override
  String get dailyReflectionReminderDescription =>
      'Nežna dnevna opomnika, da odpreš Ayaro in se poveži z svojo vero.';

  @override
  String get dailyReflectionReminderEnable => 'Omogoči dnevno opomnik';

  @override
  String get dailyReflectionReminderTimeLabel => 'Čas opomnika';

  @override
  String get prayerNotificationsTitle => 'Opomnike molitvi';

  @override
  String get prayerNotificationsDescription =>
      'Prejmi nežno opomnik pred vsakim časom molitvi, ki te bo pomagal ostati povezanega čez dan.';

  @override
  String get prayerNotificationsEnable => 'Omogoči opominke molitvi';

  @override
  String get prayerNotificationsOpenSettings => 'Odpri nastavitve obvestil';

  @override
  String get prayerNotificationsDenied => 'Obvestila so onemogočena';

  @override
  String get prayerNotificationsDeniedHint =>
      'Pojdite v Nastavitve in dovolite obvestila za Ayaro, da prejmate opominke časov molitvi.';

  @override
  String get notificationsConsentLabel => 'Dovolite obvestila za čase molitvi';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Zorina molitev';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr je molitev jutranj Ahl al-Bayta. Imam Ali (AS) je rekel: Varuj zorno molitev kot svoje najdragocenejše zaupanje. Vstani, očisti se in stani pred Alahom.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Poldnevna molitev';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imami Ahl al-Bayta so cenili vsak trenutek spomina. Prekini svoj dan, kombinira Dhuhr z Asrom, če je potrebno, in vrni svoje srce Alahu.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Popoldanska molitev';

  @override
  String get prayerNotifBodyAsr =>
      'Varuj molitev, ker je to zavet med vami in Alahom. Asr čas je tu — ne pustite ga brez spomina.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sončna molitev';

  @override
  String get prayerNotifBodyMaghrib =>
      'Sonce je zašlo — trenutek, ki ga je Ahl al-Bayt svetil za suplikacijo. Ponudi Maghrib in odpri svoje roke Alahu v dua pred noči.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nočna molitev';

  @override
  String get prayerNotifBodyIsha =>
      'Zaključi svoj dan v družbi Alaha. Imami so spodbujali Salat al-Layl po Ishi — vendar najprej dokončaj Isho in zaključi dan s Njegovim spominom.';

  @override
  String get outOfReflectionsBannerText => 'Porabil si vse svoje razmisleke';

  @override
  String get outOfReflectionsBannerCta => 'Pridobi več';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tapni krog za štetje';

  @override
  String get dhikrResetButton => 'Resetiraj';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Zaključil si 100 spominov Alaha. Naj bodo luč za vaše srce.';

  @override
  String get disclaimerTitle => 'O vodstvu te aplikacije';

  @override
  String get disclaimerBody =>
      'Ayara zagotavlja islamske razmisleke, opomnike in duhovno vsebino, da podpremo vašo osebno pot vere, ukoreninjeno v Koranu in učenjih Ahl al-Bayta. Ta vsebina je namenjena splošnim informativnim in inspirativnim namenom.\n\nAyara ne nadomešča usposobljene učenjake.\nVodstvo v tej aplikaciji ne nadomešča učenega islamskega učenjaka, marje ali teološko usposobljenega učitelja. V šiitskem islamu je versko vodstvo ukoreninjeno v Ja\'farijski šoli jurisprudence (fiqh) in tradiciji sledenja živemu Mardžiju (viru posnemovanja) — usposobljenemu juristu, katerega odloki vodijo verujočega v verski praksi. Če imate vprašanja o verskih odlokih, halal in haram zadevah ali osebnih verskih obveznostih, prosimo, poiščite nasvet usposobljenega Mardžija ali učenjaka v vaši skupnosti.\n\nTa aplikacija ne izdaja verskih odlokov.\nAyara ne daje avtoritativnih determinacij o zadevah fiqh ali osebnih verskih obveznostih. Nič od tega ne bi smelo biti obravnavano kot fetva ali zavezujoči verski navodilo.\n\nCentralnost Ahl al-Bayta.\nV šiitskem islamu sta Prerok Muhammad ﷺ in njegovi očiščeni dom — Ahl al-Bayt — avtoritativne vodnike islenske skupnosti po Koranu. Dvanajst imamov Ahl al-Bayta so božansko postavljeni tolmači islamskega učenja. Vsebina v tej aplikaciji odraža to tradicijo in jo želi zvesto častiti.\n\nZadevnosti skupnosti.\nTa aplikacija je namenjena spodbujanju vašega angažiranja v veri, hkrati pa globoko spoštuje ključno vlogo vaše lokalne džamije, islamskega centra in verske skupnosti. Spodbujamo vas, da ostanete povezani in se učite od usposobljenih učiteljev blizu vas.';

  @override
  String get disclaimerClose => 'Razumem';

  @override
  String get disclaimerInfoTooltip => 'O vodstvu te aplikacije';

  @override
  String get disclaimerSettingsSubtitle =>
      'Samo za splošne informativne namene. Tapnite, da preberete popoln odlog.';

  @override
  String get disclaimerSectionHeader => 'Odlog vodstva';

  @override
  String get navHome => 'Domov';

  @override
  String get navReflect => 'Razmislej';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Koledar';

  @override
  String get dashboardToday => 'DANES';

  @override
  String get dashboardComingUp => 'Kar prihaja';

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
      one: 'dan',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Hiter dostop';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Vodstvo';

  @override
  String get quickActionPrayerTimes => 'Časi molitvi';

  @override
  String get askAyaraTitle => 'Vprašaj Ayaro';

  @override
  String get askAyaraSubtitle =>
      'Vprašajte katero koli islamsko vprašanje in prejmi premišljeno, vodeno odgovore.';

  @override
  String get askAyaraHint => 'npr. Kakšen je pomen Ramadana?';

  @override
  String get askAyaraSubmit => 'Vprašaj';

  @override
  String get wisdomOfTheDayTitle => 'Modrost dneva';

  @override
  String get calendarScreenTitle => 'Islamski koledar';

  @override
  String get calendarUpcomingOccasions => 'Prihajajoči dogodki';

  @override
  String get calendarOccasionRemindersTitle => 'Opominke dogodkov';

  @override
  String get calendarOccasionRemindersHint =>
      'Obveščeni zvečer pred vsakim dogodkom';

  @override
  String get calendarNotifPermissionDenied =>
      'Dovoljenjeobvestila je zavrnjeno. Omogočite ga v nastavitvah naprave.';

  @override
  String get calendarNoEvents => 'Ni najdenih prihodnjih dogodkov.';

  @override
  String get calendarAddToPhone => 'Dodaj v telefon';

  @override
  String get calendarAddedToPhone => 'Dodano v koledar';

  @override
  String get calendarCountdownToday => 'DANES';

  @override
  String get calendarCountdownTomorrow => 'JUTRI';

  @override
  String calendarCountdownDays(int days) {
    return 'v $days dneh';
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
      'Dnevi Muharrama — spomnite se Karbaleja';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dnevi žalovanja in razmisleka';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — štirideset dni Husayna';

  @override
  String get calendarSeasonRoadToArbaeen => 'Pot do Arbaen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — zora razodetja';

  @override
  String get calendarSeasonMidShaban =>
      'Sredina Sha\'bana — rojstni dan Imama al-Mahdija (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mesec Korana';

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
  String get duasScreenTitle => 'Dua in Ziyarat';

  @override
  String get duasSearchHint => 'Iskanje dua, ziyarat…';

  @override
  String get duasFilterAll => 'Vse';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua in ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Dua ni bilo najdeno.';

  @override
  String get duaCategoryDaily => 'Dnevno';

  @override
  String get duaCategoryWeekly => 'Tedensko';

  @override
  String get duaCategoryOccasions => 'Dogodki';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Rojstvo';

  @override
  String get eventTypeMartyrdom => 'Mučeništvo';

  @override
  String get eventTypeOccasion => 'Dogodek';

  @override
  String get duaCopyTooltip => 'Kopiraj prevod';

  @override
  String get duaToggleTransliteration => 'Transliteracija';

  @override
  String get duaToggleTranslation => 'Prevod';

  @override
  String get duaAskAiLabel => 'Prosi Ayaro, da pojasni to dua';

  @override
  String get duaAskAiLockedLabel => 'Prosi Ayaro (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Pojasnjila Ayare so na voljo za člane Wilayo. Nadgradite se v Nastavitvah.';

  @override
  String duaAiComingSoon(String name) {
    return 'Prosi Ayaro o \"$name\" — prihaja kmalu!';
  }

  @override
  String get duaCopiedToast => 'Dua kopirana v odložišče.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah je največji';

  @override
  String get tasbihAlhamdulillahMeaning => 'Vsa hvala pripada Alahu';

  @override
  String get tasbihSubhanallahMeaning => 'Slava je Alahu';

  @override
  String get tasbihResetTooltip => 'Resetiraj';

  @override
  String get tasbihCompleteTitle => 'Tasbih je dokončan';

  @override
  String get tasbihCompleteMessage => 'Allah naj sprejme tvoj dhikr.';

  @override
  String get tasbihTapHint => 'Tapni kjerkoli, da šteješ';

  @override
  String get tasbihatScreenTitle => 'Vodnik za molitev';

  @override
  String get tasbihatScreenSubtitle => 'HVALOSPEVI MOLITVЕ';

  @override
  String get tasbihatScreenDescription =>
      'Kompletni vodnik po hvalospevih, izgovorljenih med in po dnevnih molitvah — sledimo tradiciji Ahl al-Bayta (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Izgovorjeno med 3. in 4. rakʿah';

  @override
  String get tasbihatArba3Info =>
      'V šiitski jurisprudenci Tasbiḥāt al-Arbaʿa nadomešča Surah al-Fatiho v 3. in 4. rakʿah Dhuhr, Asr, Maghrib in Isha. Obvezno (wājib) je izgovoriti ga enkrat, priporočeno (mustaḥabb) pa ga izgovoriti trikrat.';

  @override
  String get tasbihatArba3Translation =>
      'Slava Alahu · Vsa hvala je za Alaha\nNi boga razen Alaha · Allah je največji';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitacija je dokončana';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Naj bo tvoja molitev sprejeta — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tapni po vsaki recitaciji';

  @override
  String get tasbihatZahraSubtitle => 'Po vsaki moliti · 100 zrnc';

  @override
  String get tasbihatZahraOriginLabel => 'Izvor';

  @override
  String get tasbihatZahraHadith =>
      'Gospa Fatima al-Zahra (sa) je prosila Preroka ﷺ za služabnika. Rekel je: \"Ali ne bi ti razodel nekaj boljšega? Recitira Subḥānallāh 33-krat, Alḥamdulillāh 33-krat in Allāhu Akbar 34-krat po vsaki moliti. To je bolje zate kot služabnik.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Odpri Tasbīḥ števec';

  @override
  String get tasbihatDuasTitle => 'PRIPOROČENE DUA';

  @override
  String get tasbihatDuasSubtitle => 'Po zaključku vaše molitve';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Po vsaki obvezni moliti';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Kdor recitira Āyat al-Kursī po vsaki obvezni moliti, ga od raja ne loči nič drugega kot smrt. Imam al-Bāqir (a) je rekel, da je med največjimi verzami v Koranu.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Po vsaki moliti · pečatje vseh suplik';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Pošiljanje pozdravljanja Prerokumﷺ in njegovemu očiščenemu domu (Āl Muḥammad) je priporočeno, da zapečatite vsak dua. Imam al-Ṣādiq (a) je rekel: \"Katerikoli dua je obešen, dokler ne pošlješ ṣalawāt na Muḥammada in njegove družine.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Po vsaki moliti · za Imama našega časa';

  @override
  String get tasbihatDuaFarajSource =>
      'Poučen s strani Imama al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua za ponovni dolazak Imama al-Mahdī (af), dvanaestog Imama, koju je podučio njegov otac. Često je izgovaraju mnogi šiitski muslimani nakon molitve kao čin odanosti živom Imamu.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Gospe Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Po Maghrib in Isha · posebej priporočeno';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) je rekel, da je recitiranje Tasbīḥ al-Zahrā po Ishi pred spanjem boljše kot 1000 rakʿah opcijske molitve. Njena luč se dviga do nebes.';

  @override
  String get tasbihFatimaGiftPre => 'Dar od Preroka';

  @override
  String get tasbihFatimaGiftPost => 'recitiran po vsaki moliti';

  @override
  String get prayerTrackerTitle => 'SLEDENJE MOLITVE';

  @override
  String get prayerTrackerPrayed => 'Molil';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dnevni niz';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Vse molitve so dokončane danes. Allah naj sprejme.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Dokončano danes';

  @override
  String get dhikrTrackerNotDoneToday => 'Ni narejeno danes';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dnevni niz';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ opomnik';

  @override
  String get dhikrReminderDescription =>
      'Nežna dnevna opomnika za recitiranje Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Omogoči Tasbīḥ opomnik';

  @override
  String get dhikrReminderTimeLabel => 'Čas opomnika';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Dnevni hadith';

  @override
  String get hadithLabelArabic => 'ARABŠČINA';

  @override
  String get hadithLabelTranslation => 'PREVOD';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Deli ta hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPrek Ayare';
  }

  @override
  String get hadithNavPrevious => 'Prejšnji';

  @override
  String get hadithNavNext => 'Naslednji';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Četrnaest neomrznutih';

  @override
  String get imamsScreenSubtitle =>
      'Poslanik, gospođa Fatima i Dvanaest Imama — pročišćeni i neomrznuti vođe u dvanaestoj šiitskoj islamu';

  @override
  String get imamLabelBorn => 'Rojen';

  @override
  String get imamLabelMartyrdom => 'Mučeništvo';

  @override
  String get imamLabelStatus => 'Stanje';

  @override
  String get imamSectionBiography => 'BIOGRAFIJA';

  @override
  String get imamSectionFamousSaying => 'ZNANI CITAT';

  @override
  String get imamRoleProphet => 'Končni prerok';

  @override
  String get imamRoleInfallible => 'Nezmotljivi';

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
  String get duaAudioScreenTitle => 'Poslušaj Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Izberite dua za poslušanje. Tapnite ploščico za predvajanje ali zaustavitev.';

  @override
  String get duaAudioComingSoonMessage =>
      'Avdio za to dua bo na voljo v naslednjem posodobljenju.';

  @override
  String get duaAudioClose => 'Zapri';

  @override
  String get duaAudioError =>
      'Ni bilo mogoče naložiti avdia. Preverite svojo povezavo.';

  @override
  String get duaAudioMetaTransmittedBy => 'Preneseno s strani';

  @override
  String get duaAudioMetaOccasion => 'Dogodek';

  @override
  String get duaAudioMetaDuration => 'Trajanje';

  @override
  String get quickActionDailyHadith => 'Dnevni hadith';

  @override
  String get quickAction14Masumeen => 'Četrnaest neomrznutih';

  @override
  String get quickActionListenDuas => 'Poslušaj';

  @override
  String get quickActionTasbihat => 'Vodnik za molitev';

  @override
  String get pilgrimageSectionTitle => 'Sveta pot';

  @override
  String get pilgrimageSectionSubtitle =>
      'Celoviti vodiči do Hadža in Omerah — romanja v sveti dom Alaha v Meki';

  @override
  String get hajjCardTitle => 'Hadž';

  @override
  String get hajjCardSubtitle => 'Peti steber islama';

  @override
  String get hajjCardDescription =>
      'Veliko letno romanje — obvezno enkrat v življenju za vsakega zmožnega muslimana';

  @override
  String get hajjScreenTitle => 'Hadž vodnik';

  @override
  String get hajjScreenSubtitle =>
      'Korak-za-korakom vodnik do velikega romanja';

  @override
  String get umrahCardTitle => 'Omerah';

  @override
  String get umrahCardSubtitle => 'Manjše romanje';

  @override
  String get umrahCardDescription =>
      'Globoko nagrajujoče duhovno potovanje, ki se lahko opravi v katerem koli letnem času';

  @override
  String get umrahScreenTitle => 'Omerah vodnik';

  @override
  String get umrahScreenSubtitle => 'Korak-za-korakom vodnik manjšega romanja';

  @override
  String get pilgrimageStepsTitle => 'Obred in koraki';

  @override
  String get pilgrimageImportantNotesTitle => 'Pomembne opombe';

  @override
  String get pilgrimageDuaTitle => 'Dua za ta korak';

  @override
  String get pilgrimageJafariNoteTitle => 'Opomba o fiqhu Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Dokončano';

  @override
  String get pilgrimageMarkDone => 'Označi kot dokončano';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done od $total korakov';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Šiitski popotniki';

  @override
  String get pilgrimageShiaNoteBody =>
      'Mnogi šiitski hodočasnici takođe putuju u Medinu radi ziyarat Poslanika Muhammeda (SAW) u Masjid al-Nabawi i grobova u Džennetu al-Baqi. Ove posete nose duboko duhovno značenje, iako same po sebi nisu obredi Hadža.';

  @override
  String get hajjIntro =>
      'Hadž je peti stub Islama, obavezan jednom u životu za svakog muslimana koji je fizički i finansijski sposoban. Za većinu dvanaestih šiitskih hodočasnika danas, to znači Hadž al-Tamattu\', koji se obavlja u mesecu Dhul Hijjah u stopama Poslanika Ibrahima (AS), njegovog sina Ismaila (AS) i gospođe Hajar. Ovaj vodič prati Džafari okvir obreda, dok ziyarat u Medini ostaje duboko cenjeno putovanje pre ili posle Hadža.';

  @override
  String get umrahIntro =>
      'Omerah je manjše romanje v Meko in, za razliko od Hadža, se lahko opravlja kadarkoli v letu. Čeprav ni obvezna, nosi ogromno duhovno nagrado in velja za zelo priporočljivo dejanje vdanosti. Deli več oberedov s Hadžom, a je krajša in je sestavljena iz štirih glavnih objedov.';

  @override
  String get voiceInputTitle => 'Glasovni vnos';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Povejte svoj vnos Ask Ayara namesto tipkanja.';

  @override
  String get voiceInputMicDenied => 'Dostop do mikrofona je bil zavrnjen.';

  @override
  String get voiceInputSpeak => 'Govori namesto';

  @override
  String get voiceInputListening => 'Poslušam…';

  @override
  String get voiceInputPermissionDenied =>
      'Dostop do mikrofona je potreben za glasovni vnos.';
}
