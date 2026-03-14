// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Scegli la tua lingua';

  @override
  String get languageSelectSub =>
      'Puoi cambiare questa impostazione in seguito nei Parametri';

  @override
  String get actionContinue => 'Continua';

  @override
  String get languageSuggestedHeader => 'Suggerite';

  @override
  String get languageAllHeader => 'Tutte le lingue';

  @override
  String get languageSuggestedBadge => 'Suggerita';

  @override
  String get languageSearchHint => 'Cerca…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Guida Quotidiana';

  @override
  String get categorySlot02 => 'Iman e Fiducia';

  @override
  String get categorySlot03 => 'Riflessione sulla Preghiera';

  @override
  String get categorySlot04 => 'Pazienza e Speranza';

  @override
  String get categorySlot05 => 'Cerca il Perdono';

  @override
  String get categorySlot06 => 'Misericordia e Compassione';

  @override
  String get categorySlot07 => 'Forza della Fede';

  @override
  String get categorySlot08 => 'Cuore Grato';

  @override
  String get categorySlot09 => 'Scopo della Vita';

  @override
  String get categorySlot10 => 'Legami Familiari';

  @override
  String get categorySlot11 => 'Pace Interiore';

  @override
  String get categorySlot12 => 'Saggezza del Profeta';

  @override
  String get categorySlot13 => 'Buon Carattere';

  @override
  String get categorySlot14 => 'Resistere alle Tentazioni';

  @override
  String get categorySlot15 => 'Dhikr Serale';

  @override
  String get categoryCustom => 'Riflessione Personale';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Ogni lode appartiene a Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah è il più Grande';

  @override
  String get quranVerseHeartAtRest =>
      'In verità, nel ricordo di Allah i cuori trovano riposo.';

  @override
  String get promptHint =>
      'Tocca una categoria per la guida e la riflessione islamica';

  @override
  String get currentLanguage => 'Lingua attuale';

  @override
  String get settingsLanguage => 'Impostazioni lingua';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get chooseLanguage => 'Scegli la tua lingua';

  @override
  String get continueCta => 'Continua';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count parole',
      one: '$count parola',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opzioni';

  @override
  String get newCta => 'Nuovo';

  @override
  String get actionsTitle => 'Cosa vorresti fare?';

  @override
  String get copy => 'Copia';

  @override
  String get share => 'Condividi';

  @override
  String get close => 'Chiudi';

  @override
  String get copiedToast => 'Copiato negli appunti';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Impossibile generare una nuova risposta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVuoi riprovare?';
  }

  @override
  String get cancelCta => 'Annulla';

  @override
  String get retryCta => 'Riprova';

  @override
  String get authTitle => 'Crea il tuo account';

  @override
  String get continueAsGuest => 'Continua come ospite';

  @override
  String get signInGoogle => 'Accedi con Google';

  @override
  String get signInApple => 'Accedi con Apple';

  @override
  String get signInEmail => 'Accedi con Email';

  @override
  String get upgradeWithApple => 'Continua con Apple';

  @override
  String get mustAccept =>
      'Devi accettare i Termini e prendere visione dell\'Informativa sulla Privacy.';

  @override
  String get termsLabel => 'Accetto i Termini di Servizio';

  @override
  String get privacyLabel => 'Ho letto l\'Informativa sulla Privacy';

  @override
  String get marketingOptIn => 'Acconsento a ricevere notizie e offerte';

  @override
  String get openTerms => 'Termini di Servizio';

  @override
  String get openPrivacy => 'Informativa sulla Privacy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Modalità ospite';

  @override
  String get signedIn => 'Accesso effettuato';

  @override
  String get upgradeHint =>
      'Salva le tue riflessioni su tutti i dispositivi creando un account.';

  @override
  String get upgradeWithGoogle => 'Continua con Google';

  @override
  String get signOut => 'Disconnetti';

  @override
  String get snackUpgraded => 'Account aggiornato con Google ✅';

  @override
  String get snackSignedIn => 'Accesso effettuato con Google ✅';

  @override
  String get snackSignedOut => 'Disconnesso';

  @override
  String get snackSignedInApple => 'Accesso effettuato con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Accesso effettuato con Google ✅';

  @override
  String get snackUpgradedApple => 'Account aggiornato con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account aggiornato con Google ✅';

  @override
  String get historyTitle => 'Riflessioni precedenti';

  @override
  String get historyOpenCta => 'Riflessioni precedenti';

  @override
  String get historyEmpty => 'Ancora nessuna riflessione salvata.';

  @override
  String get historyDeleteTitle => 'Eliminare la riflessione?';

  @override
  String get historyDeleteBody =>
      'Questo rimuoverà permanentemente l\'elemento selezionato.';

  @override
  String get deleteCta => 'Elimina';

  @override
  String get historyButton => 'Riflessioni Precedenti';

  @override
  String get historyEmptyTitle => 'Ancora nessuna riflessione';

  @override
  String get historyEmptyBody =>
      'Genera prima qualcosa: i tuoi elementi salvati appariranno qui.';

  @override
  String get historyDelete => 'Elimina';

  @override
  String get footerTitle => 'Con Wilaya, Iman e Sabr';

  @override
  String get footerSubtitle => 'Una preghiera alla volta';

  @override
  String get genericErrorSnack =>
      'Qualcosa è andato storto — riprova tra un momento.';

  @override
  String get upgradeAccountCta =>
      'Salva le tue riflessioni su più dispositivi – crea un account';

  @override
  String get deleteAccount => 'Elimina account';

  @override
  String get exportData => 'Esporta i miei dati';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Calma, tigre 🐯\nAyara ha bisogno di un momento prima della prossima...';

  @override
  String get rateDailyLimit =>
      'Hai esaurito le riflessioni per ora.\nOttieni più riflessioni o passa a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Hai usato tutte le tue riflessioni.\nRicarica o passa a Wilaya per continuare.';

  @override
  String get rateGraceCreditsExhausted =>
      'Hai esaurito le riflessioni per ora.\nOttieni più riflessioni o passa a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya sblocca funzioni premium, categorie future e un badge speciale.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Le tue riflessioni sono esaurite al momento. Piano: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Impossibile controllare le tue riflessioni: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Qualcosa è andato storto durante il controllo delle tue riflessioni.';

  @override
  String get aiFallbackGeneric =>
      'Qualcosa è andato storto — riprova tra un momento.';

  @override
  String get limitSectionTitle => 'Riflessioni';

  @override
  String get limitTodayLabel => 'Utilizzo';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Riflessioni rimanenti: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Piano: $plan';
  }

  @override
  String get limitLoadingLabel => 'Caricamento…';

  @override
  String get limitLoadingLabelDescription =>
      'Mostrato nella scheda riflessioni mentre le statistiche di utilizzo vengono recuperate.';

  @override
  String get aiLimitTitle => 'Riflessioni';

  @override
  String get aiLimitSubtitle =>
      'Ogni risposta consuma 1 riflessione. Il piano Standard include riflessioni iniziali. Wilaya sblocca categorie premium e ricariche.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total riflessioni usate';
  }

  @override
  String get creditsSectionTitle => 'Riflessioni';

  @override
  String get creditsUsageLabel => 'Utilizzo';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Riflessioni rimanenti: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Piano: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Caricamento…';

  @override
  String get creditsLoadingLabelDescription =>
      'Mostrato mentre le statistiche delle riflessioni vengono recuperate.';

  @override
  String get creditsTitle => 'Riflessioni';

  @override
  String get creditsSubtitle =>
      'Ogni risposta consuma 1 riflessione. Il piano Standard include riflessioni iniziali. Wilaya sblocca categorie premium e ricariche.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total riflessioni usate';
  }

  @override
  String get settingsDeleteTitle => 'Elimina account';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente il tuo account e tutti i dati associati.';

  @override
  String get settingsDeleteButtonLabel => 'Elimina il mio account';

  @override
  String get settingsDeleteDialogTitle => 'Eliminare l\'account?';

  @override
  String get settingsDeleteDialogBody =>
      'Questa azione è permanente e non può essere annullata.\n\nTutte le tue chat, la cronologia e le informazioni dell\'account verranno eliminate.';

  @override
  String get settingsDeleteDialogCancel => 'Annulla';

  @override
  String get settingsDeleteDialogConfirm => 'Elimina';

  @override
  String get settingsFreeLimitUsedTitle => 'Riflessioni iniziali esaurite';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Le riflessioni iniziali per questo dispositivo sono state utilizzate. Passa a Wilaya o acquista altre riflessioni per continuare.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Riflessioni iniziali esaurite';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Le riflessioni iniziali per questo dispositivo sono state utilizzate. Passa a Wilaya o acquista altre riflessioni per continuare.';

  @override
  String get deviceBoundError =>
      'Questo dispositivo è già collegato a un altro account. Accedi con l\'account originale.';

  @override
  String get premiumTitle => 'Modalità Wilaya';

  @override
  String get premiumSubtitleBasic => 'Sblocca l\'esperienza completa di Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Sei su Wilaya. Hai bisogno di più riflessioni?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Piano attuale: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Riflessioni: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Gli acquisti non sono disponibili al momento.';

  @override
  String get premiumSignInToPurchase =>
      'Accedi per acquistare riflessioni o sbloccare Wilaya.';

  @override
  String get premiumRestorePurchases => 'Ripristina acquisti';

  @override
  String get premiumProcessing => 'Elaborazione…';

  @override
  String get premiumRestoreHintTitle =>
      'Hai già acquistato Wilaya o riflessioni su questo o un altro dispositivo?';

  @override
  String get premiumRestoreHintBody =>
      'Ripristina i tuoi acquisti se non appaiono.';

  @override
  String get premiumBuyCredits200 => 'Compra 200 riflessioni';

  @override
  String get premiumBuyCredits400 => 'Compra 400 riflessioni';

  @override
  String get premiumBecomePremiumOneTime => 'Passa alla modalità Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puoi ricaricare con riflessioni extra ogni volta che ne hai bisogno.';

  @override
  String get premiumUpgradeCta => 'Migliora';

  @override
  String get premiumRequiredForCategory =>
      'Questa categoria è disponibile solo per gli utenti Wilaya. Passa a Wilaya nelle Impostazioni per sbloccare tutti i contenuti premium.';

  @override
  String get premiumBenefitsBasic =>
      'Sblocca Wilaya per ottenere riflessioni extra, accedere a categorie premium e continuare ogni volta che hai bisogno di guida.';

  @override
  String get premiumBenefitsPremium =>
      'Sei in modalità Wilaya. Se stai finendo le riflessioni, aggiungine di nuove e continua senza interruzioni.';

  @override
  String get premiumButtonBecomePremium => 'Sblocca Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Aggiungi 1000 riflessioni';

  @override
  String get premiumBadge => 'Wilaya attivo';

  @override
  String get premiumLoadingStore => 'Caricamento negozio…';

  @override
  String get premiumProductNotAvailable =>
      'Questo prodotto non è ancora disponibile nel negozio. Riprova più tardi.';

  @override
  String get premiumPurchaseError =>
      'Qualcosa è andato storto con l\'acquisto. Riprova.';

  @override
  String get premiumBuyCredits100 => 'Aggiungi 100 riflessioni';

  @override
  String get premiumFeatureLocked =>
      'Sblocca Wilaya per accedere a questa funzione.';

  @override
  String get lockedCategoriesHint =>
      'Alcune categorie sono riservate ai membri Wilaya. Sbloccale per esplorare ogni riflessione nel tuo percorso.';

  @override
  String get freePlanBlockedTitle => 'Hai esaurito le riflessioni iniziali';

  @override
  String get freePlanBlockedBody =>
      'Sei sul piano Standard con riflessioni iniziali e hai raggiunto il limite. Per continuare — e sbloccare le categorie premium — passa a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Vedi le opzioni Wilaya sotto';

  @override
  String get graceBlockedTitle => 'Hai esaurito le riflessioni iniziali';

  @override
  String get graceBlockedBody =>
      'Sei sul piano Standard con riflessioni iniziali e hai raggiunto il limite. Per continuare — e sbloccare le categorie premium — passa a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Vedi le opzioni Wilaya sotto';

  @override
  String get rateGuestMustSignIn =>
      'Accedi per usare Ayara e le tue riflessioni.';

  @override
  String get guestNoCreditsTitle => 'Modalità ospite';

  @override
  String get guestNoCreditsBody =>
      'Come ospite puoi sfogliare l\'app, ma non puoi usare le riflessioni. Accedi più tardi nelle Impostazioni per usare le riflessioni e sbloccare gli acquisti.';

  @override
  String get guestDialogContinue => 'Continua';

  @override
  String get guestDialogLoginInstead => 'Accedi invece';

  @override
  String get optionalLabel => 'opzionale';

  @override
  String get accountDeleteSuccessTitle => 'Account eliminato';

  @override
  String get accountDeleteSuccessBody =>
      'Il tuo account e i dati associati sono stati eliminati con successo.';

  @override
  String get accountDeleteSuccessClose => 'Chiudi';

  @override
  String get accountDeleteErrorTitle => 'Impossibile eliminare l\'account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La riautenticazione è stata annullata. Accedi di nuovo e riprova l\'eliminazione.';

  @override
  String get accountDeleteReauthRequired =>
      'L\'eliminazione dell\'account richiede un accesso recente. Effettua il logout, accedi di nuovo e riprova.';

  @override
  String get settingsDeletePermanentWarning =>
      'Questa azione è permanente e non può essere annullata. Tutti i dati associati al tuo account verranno eliminati.';

  @override
  String get dailyGraceTitle => 'Guida Quotidiana';

  @override
  String get dailyGraceScriptureLabel => 'VERSETTO DEL GIORNO';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DELLA SETTIMANA';

  @override
  String get dailyGraceReflectionLabel => 'RIFLESSIONE SERALE';

  @override
  String get dailyGraceCopiedToast => 'Versetto copiato negli appunti';

  @override
  String get locationConsentLabel =>
      'Consenti ad Ayara di usare la mia posizione per la direzione della Qibla e gli orari di preghiera';

  @override
  String get locationConsentHint =>
      'Usato solo per queste funzioni. La tua posizione non viene mai condivisa né memorizzata.';

  @override
  String get askPageTitle => 'Chiedi ad Ayara';

  @override
  String get askPageDescription =>
      'Chiedi qualsiasi cosa sulla fede, la preghiera, la vita o la pratica islamica e ricevi una guida radicata nel Corano e negli insegnamenti della Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Scrivi qui la tua domanda…';

  @override
  String get askPageSubmitCta => 'Chiedi';

  @override
  String get askPageInputEmptyError => 'Per favore, scrivi prima una domanda.';

  @override
  String get askResultYourQuestion => 'La tua domanda';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Verso la Mecca';

  @override
  String get qiblaCompassInstruction =>
      'Ruota il telefono finché l\'ago d\'oro punta verso l\'alto.\nQuella direzione indica la Qibla (La Mecca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Il segnale GPS è debole. Spostati all\'esterno e tocca Riprova.';

  @override
  String get qiblaRetry => 'Riprova';

  @override
  String get qiblaTitle => 'Direzione Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km dalla Mecca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Posizione richiesta';

  @override
  String get qiblaLocationNeededBody =>
      'Consenti l\'accesso alla posizione affinché Ayara possa calcolare la direzione della Kaaba alla Mecca da ovunque tu sia.';

  @override
  String get qiblaOpenSettings => 'Apri Impostazioni';

  @override
  String get qiblaCompassLoading => 'Ricerca della tua posizione…';

  @override
  String get qiblaTowardMecca => 'Verso la Mecca';

  @override
  String get prayerTimesTitle => 'Orari di Preghiera';

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
  String get prayerTimesLocationNeededTitle => 'Posizione richiesta';

  @override
  String get prayerTimesLocationNeededBody =>
      'Consenti l\'accesso alla posizione affinché Ayara possa calcolare orari di preghiera precisi per la tua città.';

  @override
  String get prayerTimesNextLabel => 'Prossima';

  @override
  String get prayerTimesDoneLabel => 'Fatto';

  @override
  String get monthlyPrayerTimesTitle => 'Orari Mensili';

  @override
  String get monthlyPrayerTimesViewButton => 'Vedi intero mese';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mese prossimo';

  @override
  String get monthlyPrayerTimesDayHeader => 'Giorno';

  @override
  String get sharePrayerTimes => 'Condividi orari di preghiera';

  @override
  String get notificationsSectionTitle => 'Notifiche';

  @override
  String get notificationsSectionSubtitle =>
      'Promemoria preghiere, eventi del calendario e altro';

  @override
  String get dailyReflectionReminderTitle => 'Riflessione Quotidiana';

  @override
  String get dailyReflectionReminderDescription =>
      'Un gentile promemoria quotidiano per aprire Ayara e connetterti con la tua fede.';

  @override
  String get dailyReflectionReminderEnable => 'Attiva promemoria quotidiano';

  @override
  String get dailyReflectionReminderTimeLabel => 'Orario promemoria';

  @override
  String get prayerNotificationsTitle => 'Promemoria Preghiere';

  @override
  String get prayerNotificationsDescription =>
      'Ricevi un gentile promemoria prima di ogni orario di preghiera per aiutarti a rimanere connesso durante il giorno.';

  @override
  String get prayerNotificationsEnable => 'Attiva promemoria preghiere';

  @override
  String get prayerNotificationsOpenSettings => 'Apri impostazioni notifiche';

  @override
  String get prayerNotificationsDenied => 'Le notifiche sono disattivate';

  @override
  String get prayerNotificationsDeniedHint =>
      'Vai nelle Impostazioni e consenti le notifiche per Ayara per ricevere i promemoria degli orari di preghiera.';

  @override
  String get notificationsConsentLabel =>
      'Consenti notifiche per gli orari di preghiera';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Preghiera dell\'Alba';

  @override
  String get prayerNotifBodyFajr =>
      'Il Fajr è la preghiera dei mattini della Ahl al-Bayt. L\'Imam Ali (AS) disse: Custodite la preghiera dell\'alba come custodite il vostro tesoro più prezioso. Alzati, purificati e stai davanti ad Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Preghiera del Mezzogiorno';

  @override
  String get prayerNotifBodyDhuhr =>
      'Gli Imam della Ahl al-Bayt amavano ogni momento di ricordo. Metti in pausa la tua giornata, unisci Dhuhr con Asr se necessario, e riporta il tuo cuore ad Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Preghiera del Pomeriggio';

  @override
  String get prayerNotifBodyAsr =>
      'Custodisci la preghiera, poiché è il patto tra te e Allah. L\'ora di Asr è arrivata — non lasciarla passare senza ricordo.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Preghiera del Tramonto';

  @override
  String get prayerNotifBodyMaghrib =>
      'Il sole è tramontato — un momento sacro per la supplica per la Ahl al-Bayt. Offri il Maghrib e apri le tue mani ad Allah in dua prima che inizi la notte.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Preghiera della Notte';

  @override
  String get prayerNotifBodyIsha =>
      'Concludi la tua giornata in compagnia di Allah. Gli Imam incoraggiavano la Salat al-Layl dopo l\'Isha — ma prima, completa l\'Isha e chiudi il giorno con il Suo ricordo.';

  @override
  String get outOfReflectionsBannerText => 'Hai usato tutte le tue riflessioni';

  @override
  String get outOfReflectionsBannerCta => 'Ottienine altre';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tocca il cerchio per contare';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Hai completato 100 ricordi di Allah. Che possano essere una luce per il tuo cuore.';

  @override
  String get disclaimerTitle => 'Informazioni sulla guida di questa app';

  @override
  String get disclaimerBody =>
      'Ayara fornisce riflessioni islamiche, promemoria e contenuti spirituali per sostenere il tuo percorso personale di fede, radicato nel Corano e negli insegnamenti della Ahl al-Bayt. Questo contenuto è offerto solo a scopo informativo e ispirativo generale.\n\nAyara non sostituisce l\'erudizione qualificata.\nLa guida in questa app non sostituisce un dotto studioso islamico, un marja\' o un insegnante teologicamente preparato. Nell\'Islam sciita, la guida religiosa è radicata nella scuola di giurisprudenza Ja\'fari (fiqh) e nella tradizione di seguire un Marja\' vivente (fonte di emulazione) — un giurista qualificato le cui sentenze guidano i credenti nella pratica religiosa. Se hai domande su sentenze religiose, questioni halal e haram o obblighi religiosi personali, cerca consiglio da un Marja\' qualificato o da uno studioso della tua comunità.\n\nQuesta app non emette sentenze religiose.\nAyara non fornisce determinazioni autorevoli su questioni di fiqh o obblighi religiosi personali. Nulla qui deve essere trattato come una fatwa o un\'istruzione religiosa vincolante.\n\nLa centralità della Ahl al-Bayt.\nNell\'Islam sciita, il Profeta Muhammad ﷺ e la sua casa purificata — la Ahl al-Bayt — sono le guide autorevoli della comunità islamica dopo il Corano. I dodici Imam della Ahl al-Bayt sono gli interpreti divinamente nominati dell\'insegnamento islamico. Il contenuto di questa app riflette questa tradizione e cerca di onorarla fedelmente.\n\nL\'importanza della comunità.\nQuesta app mira a incoraggiare il tuo impegno con la fede rispettando profondamente il ruolo vitale della tua moschea locale, del centro islamico e della comunità religiosa. Ti incoraggiamo a rimanere in contatto e a imparare dagli insegnanti qualificati vicino a te.';

  @override
  String get disclaimerClose => 'Ho capito';

  @override
  String get disclaimerInfoTooltip => 'Informazioni sulla guida di questa app';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo a scopo informativo generale. Tocca per leggere l\'informativa completa.';

  @override
  String get disclaimerSectionHeader =>
      'Esclusione di responsabilità sulla guida';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Riflessione';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'OGGI';

  @override
  String get dashboardComingUp => 'In arrivo';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'giorni',
      one: 'giorno',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Accesso Rapido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guida';

  @override
  String get quickActionPrayerTimes => 'Orari';

  @override
  String get askAyaraTitle => 'Chiedi ad Ayara';

  @override
  String get askAyaraSubtitle =>
      'Fai qualsiasi domanda sull\'Islam e ricevi una risposta guidata e ponderata.';

  @override
  String get askAyaraHint => 'es. Qual è l\'importanza del Ramadan?';

  @override
  String get askAyaraSubmit => 'Chiedi';

  @override
  String get wisdomOfTheDayTitle => 'Saggezza del Giorno';

  @override
  String get calendarScreenTitle => 'Calendario Islamico';

  @override
  String get calendarUpcomingOccasions => 'Prossime Ricorrenze';

  @override
  String get calendarOccasionRemindersTitle => 'Promemoria Ricorrenze';

  @override
  String get calendarOccasionRemindersHint =>
      'Notifica la sera prima di ogni ricorrenza';

  @override
  String get calendarNotifPermissionDenied =>
      'Permesso per le notifiche negato. Attivalo nelle impostazioni del dispositivo.';

  @override
  String get calendarNoEvents => 'Nessun evento imminente trovato.';

  @override
  String get calendarAddToPhone => 'Aggiungi al Calendario del Telefono';

  @override
  String get calendarAddedToPhone => 'Aggiunto al Calendario';

  @override
  String get calendarCountdownToday => 'OGGI';

  @override
  String get calendarCountdownTomorrow => 'DOMANI';

  @override
  String calendarCountdownDays(int days) {
    return 'tra $days giorni';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Gen';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mag';

  @override
  String get calendarMonthJun => 'Giu';

  @override
  String get calendarMonthJul => 'Lug';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Set';

  @override
  String get calendarMonthOct => 'Ott';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Giorni di Muharram — ricorda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — giorni di lutto e riflessione';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quaranta giorni di Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'La strada verso Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — l\'alba della rivelazione';

  @override
  String get calendarSeasonMidShaban =>
      'Metà Sha\'ban — nascita dell\'Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — il mese del Corano';

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
  String get duasScreenTitle => 'Dua e Ziyarat';

  @override
  String get duasSearchHint => 'Cerca dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tutti';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua e ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nessuna dua trovata.';

  @override
  String get duaCategoryDaily => 'Quotidiano';

  @override
  String get duaCategoryWeekly => 'Settimanale';

  @override
  String get duaCategoryOccasions => 'Ricorrenze';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nascita';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ricorrenza';

  @override
  String get duaCopyTooltip => 'Copia traduzione';

  @override
  String get duaToggleTransliteration => 'Traslitterazione';

  @override
  String get duaToggleTranslation => 'Traduzione';

  @override
  String get duaAskAiLabel => 'Chiedi ad Ayara di spiegare questa dua';

  @override
  String get duaAskAiLockedLabel => 'Chiedi ad Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Le spiegazioni di Ayara sono disponibili per i membri Wilaya. Passa a Wilaya nelle Impostazioni.';

  @override
  String duaAiComingSoon(String name) {
    return 'Chiedi ad Ayara su \"$name\" — presto disponibile!';
  }

  @override
  String get duaCopiedToast => 'Dua copiata negli appunti.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah è il più Grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Ogni lode appartiene a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria a Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Completato';

  @override
  String get tasbihCompleteMessage => 'Che Allah accetti il tuo dhikr.';

  @override
  String get tasbihTapHint => 'Tocca ovunque per contare';

  @override
  String get tasbihatScreenTitle => 'Guida alla Preghiera';

  @override
  String get tasbihatScreenSubtitle => 'LE GLORIFICAZIONI DELLA PREGHIERA';

  @override
  String get tasbihatScreenDescription =>
      'Una guida completa alle glorificazioni recitate durante e dopo le preghiere quotidiane — seguendo la tradizione della Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitate durante la 3ª e 4ª rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Nella giurisprudenza sciita, le Tasbiḥāt al-Arbaʿa sostituiscono la Surah al-Fatiha nella 3ª e 4ª rakʿah di Dhuhr, Asr, Maghrib e Isha. È obbligatorio (wājib) recitarle una volta, e raccomandato (mustaḥabb) recitarle tre volte.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria a Allah · Ogni lode è per Allah\nNon c\'è dio all\'infuori di Allah · Allah è il più Grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitazione Completata';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Possa la tua preghiera essere accettata — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tocca dopo ogni recitazione';

  @override
  String get tasbihatZahraSubtitle => 'Dopo ogni preghiera · 100 grani';

  @override
  String get tasbihatZahraOriginLabel => 'Origine';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) chiese al Profeta ﷺ un aiuto. Egli disse: \"Non ti guiderò verso qualcosa di meglio? Recita Subḥānallāh 33 volte, Alḥamdulillāh 33 volte e Allāhu Akbar 34 volte dopo ogni preghiera. Questo è meglio per te di un servitore.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Apri Contatore Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀ RACCOMANDATE';

  @override
  String get tasbihatDuasSubtitle => 'Dopo aver completato la preghiera';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Dopo ogni preghiera obbligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Chiunque reciti Āyat al-Kursī dopo ogni preghiera obbligatoria, nulla si frappone tra lui e il paradiso eccetto la morte. L\'Imam al-Bāqir (a) disse che è tra i versetti più grandi del Corano.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Dopo ogni preghiera · sigilla tutte le suppliche';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Inviare saluti al Profeta ﷺ e alla sua famiglia purificata (Āl Muḥammad) è raccomandato per sigillare ogni dua. L\'Imam al-Ṣādiq (a) disse: \"Qualsiasi dua è sospesa finché non invii ṣalawāt su Muḥammad e la sua famiglia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Dopo ogni preghiera · per l\'Imam del nostro tempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Insegnata dall\'Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua per la riapparizione dell\'Imam al-Mahdī (af), il dodicesimo Imam, insegnata da suo padre. Viene spesso recitata da molti musulmani sciiti dopo la preghiera come atto di devozione all\'Imam vivente.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ di Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Dopo Maghrib e Isha · specialmente raccomandato';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'L\'Imam al-Bāqir (a) disse che recitare il Tasbīḥ al-Zahrā dopo l\'Isha prima di dormire è meglio di 1000 rakʿah di preghiera opzionale. La sua luce sale verso i cieli.';

  @override
  String get tasbihFatimaGiftPre => 'Un dono del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitato dopo ogni preghiera';

  @override
  String get prayerTrackerTitle => 'MONITORAGGIO PREGHIERA';

  @override
  String get prayerTrackerPrayed => 'Pregato';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Serie di $count giorni';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Tutte le preghiere completate oggi. Che Allah accetti.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completato oggi';

  @override
  String get dhikrTrackerNotDoneToday => 'Non completato oggi';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Serie di $count giorni';
  }

  @override
  String get dhikrReminderTitle => 'Promemoria Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un gentile promemoria quotidiano per recitare il tuo Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Attiva promemoria Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Orario promemoria';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith del Giorno';

  @override
  String get hadithLabelArabic => 'ARABO';

  @override
  String get hadithLabelTranslation => 'TRADUZIONE';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Condividi questo Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Precedente';

  @override
  String get hadithNavNext => 'Successivo';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'I Quattordici Infallibili';

  @override
  String get imamsScreenSubtitle =>
      'Il Profeta, Lady Fatima e i Dodici Imams — le guide purificate e infallibili nello Sciismo dei Dodici';

  @override
  String get imamLabelBorn => 'Nascita';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Stato';

  @override
  String get imamSectionBiography => 'BIOGRAFIA';

  @override
  String get imamSectionFamousSaying => 'DETTO FAMOSO';

  @override
  String get imamRoleProphet => 'L\'Ultimo Profeta';

  @override
  String get imamRoleInfallible => 'L\'Infallibile';

  @override
  String get imamOrdinal1 => '1° Imam';

  @override
  String get imamOrdinal2 => '2° Imam';

  @override
  String get imamOrdinal3 => '3° Imam';

  @override
  String get imamOrdinal4 => '4° Imam';

  @override
  String get imamOrdinal5 => '5° Imam';

  @override
  String get imamOrdinal6 => '6° Imam';

  @override
  String get imamOrdinal7 => '7° Imam';

  @override
  String get imamOrdinal8 => '8° Imam';

  @override
  String get imamOrdinal9 => '9° Imam';

  @override
  String get imamOrdinal10 => '10° Imam';

  @override
  String get imamOrdinal11 => '11° Imam';

  @override
  String get imamOrdinal12 => '12° Imam';

  @override
  String get duaAudioScreenTitle => 'Ascolta Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Seleziona una dua da ascoltare. Tocca il riquadro per riprodurre o mettere in pausa.';

  @override
  String get duaAudioComingSoonMessage =>
      'L\'audio per questa dua sarà disponibile in un prossimo aggiornamento.';

  @override
  String get duaAudioClose => 'Chiudi';

  @override
  String get duaAudioError =>
      'Impossibile caricare l\'audio. Controlla la tua connessione.';

  @override
  String get duaAudioMetaTransmittedBy => 'Trasmessa da';

  @override
  String get duaAudioMetaOccasion => 'Ricorrenza';

  @override
  String get duaAudioMetaDuration => 'Durata';

  @override
  String get quickActionDailyHadith => 'Hadith Quotidiano';

  @override
  String get quickAction14Masumeen => 'Quattordici Infallibili';

  @override
  String get quickActionListenDuas => 'Ascolta';

  @override
  String get quickActionTasbihat => 'Guida Preghiera';

  @override
  String get pilgrimageSectionTitle => 'Il Viaggio Sacro';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guide complete per Hajj e Umrah — il pellegrinaggio alla Casa Santa di Allah alla Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Il Quinto Pilastro dell\'Islam';

  @override
  String get hajjCardDescription =>
      'Il grande pellegrinaggio annuale — obbligatorio una volta nella vita per ogni musulmano in grado di farlo';

  @override
  String get hajjScreenTitle => 'Guida Hajj';

  @override
  String get hajjScreenSubtitle => 'Guida passo-passo al grande pellegrinaggio';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Il Pellegrinaggio Minore';

  @override
  String get umrahCardDescription =>
      'Un viaggio spirituale profondo che può essere compiuto in qualsiasi momento dell\'anno';

  @override
  String get umrahScreenTitle => 'Guida Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guida passo-passo al pellegrinaggio minore';

  @override
  String get pilgrimageStepsTitle => 'Rituali e Fasi';

  @override
  String get pilgrimageImportantNotesTitle => 'Note Importanti';

  @override
  String get pilgrimageDuaTitle => 'Dua per questo passo';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota di Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Segna come completato';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done di $total passi';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pellegrini Sciiti';

  @override
  String get pilgrimageShiaNoteBody =>
      'Molti pellegrini sciiti viaggiano anche a Medina per la ziyarat del Profeta Muhammad (SAW) presso la Masjid al-Nabawi e le tombe a Jannat al-Baqi. Queste visite portano un profondo significato spirituale, anche se non sono di per sé riti del Hajj.';

  @override
  String get hajjIntro =>
      'Il Hajj è il quinto pilastro dell\'Islam, obbligatorio una volta nella vita per ogni musulmano che sia fisicamente e finanziariamente in grado. Per la maggior parte dei pellegrini sciiti dei Dodici oggi, questo significa Hajj al-Tamattu\', eseguito nel mese di Dhul Hijjah seguendo le orme del Profeta Ibrahim (AS), di suo figlio Ismail (AS) e della Lady Hajar. Questa guida segue il quadro giuridico ja\'fari dei riti, mentre la ziyarat a Medina rimane un viaggio profondamente caro prima o dopo il Hajj.';

  @override
  String get umrahIntro =>
      'L\'Umrah è il pellegrinaggio minore alla Mecca e, a differenza dell\'Hajj, può essere eseguito in qualsiasi momento dell\'anno. Pur non essendo obbligatorio, porta un\'immensa ricompensa spirituale ed è considerato un atto di culto altamente raccomandato. Condivide diversi rituali con l\'Hajj ma è più breve, consistendo in quattro riti principali.';

  @override
  String get voiceInputTitle => 'Input Vocale';

  @override
  String get voiceInputMicTitle => 'Microfono';

  @override
  String get voiceInputMicSubtitle =>
      'Parla il tuo input per chiedere ad Ayara invece di digitare.';

  @override
  String get voiceInputMicDenied => 'Accesso al microfono negato.';

  @override
  String get voiceInputSpeak => 'Parla invece';

  @override
  String get voiceInputListening => 'Ascoltando…';

  @override
  String get voiceInputPermissionDenied =>
      'L\'accesso al microfono è necessario per l\'input vocale.';
}
