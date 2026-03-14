// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Wähle deine Sprache';

  @override
  String get languageSelectSub =>
      'Du kannst dies später in den Einstellungen ändern';

  @override
  String get actionContinue => 'Weiter';

  @override
  String get languageSuggestedHeader => 'Empfohlen';

  @override
  String get languageAllHeader => 'Alle Sprachen';

  @override
  String get languageSuggestedBadge => 'Empfohlen';

  @override
  String get languageSearchHint => 'Suchen…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Tägliche Führung';

  @override
  String get categorySlot02 => 'Glaube & Vertrauen';

  @override
  String get categorySlot03 => 'Gebet-Betrachtung';

  @override
  String get categorySlot04 => 'Geduld & Hoffnung';

  @override
  String get categorySlot05 => 'Um Vergebung bitten';

  @override
  String get categorySlot06 => 'Barmherzigkeit & Mitgefühl';

  @override
  String get categorySlot07 => 'Glaube & Stärke';

  @override
  String get categorySlot08 => 'Dankbares Herz';

  @override
  String get categorySlot09 => 'Lebenszweck';

  @override
  String get categorySlot10 => 'Familienbande';

  @override
  String get categorySlot11 => 'Innerer Frieden';

  @override
  String get categorySlot12 => 'Prophetische Weisheit';

  @override
  String get categorySlot13 => 'Guter Charakter';

  @override
  String get categorySlot14 => 'Versuchung widerstehen';

  @override
  String get categorySlot15 => 'Abend-Dhikr';

  @override
  String get categoryCustom => 'Persönliche Betrachtung';

  @override
  String get dhikrMeaningSubhanallah => 'Gepriesen sei Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Alles Lob gebührt Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah ist der Größte';

  @override
  String get quranVerseHeartAtRest =>
      'Wahrlich, in der Erinnerung an Allah finden die Herzen Ruhe.';

  @override
  String get promptHint =>
      'Tippe auf eine Kategorie für islamische Führung und Betrachtung';

  @override
  String get currentLanguage => 'Aktuelle Sprache';

  @override
  String get settingsLanguage => 'Spracheinstellungen';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get chooseLanguage => 'Wähle deine Sprache';

  @override
  String get continueCta => 'Weiter';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Wörter',
      one: '$count Wort',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Optionen';

  @override
  String get newCta => 'Neu';

  @override
  String get actionsTitle => 'Was möchtest du tun?';

  @override
  String get copy => 'Kopieren';

  @override
  String get share => 'Teilen';

  @override
  String get close => 'Schließen';

  @override
  String get copiedToast => 'In die Zwischenablage kopiert';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Konnte keine neue Antwort generieren';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nMöchtest du es erneut versuchen?';
  }

  @override
  String get cancelCta => 'Abbrechen';

  @override
  String get retryCta => 'Erneut versuchen';

  @override
  String get authTitle => 'Erstelle dein Konto';

  @override
  String get continueAsGuest => 'Als Gast fortfahren';

  @override
  String get signInGoogle => 'Mit Google anmelden';

  @override
  String get signInApple => 'Mit Apple anmelden';

  @override
  String get signInEmail => 'Mit E-Mail anmelden';

  @override
  String get upgradeWithApple => 'Mit Apple fortfahren';

  @override
  String get mustAccept =>
      'Du musst den Nutzungsbedingungen zustimmen und die Datenschutzrichtlinie anerkennen.';

  @override
  String get termsLabel => 'Ich akzeptiere die Nutzungsbedingungen';

  @override
  String get privacyLabel => 'Ich habe die Datenschutzrichtlinie gelesen';

  @override
  String get marketingOptIn =>
      'Ich stimme zu, Nachrichten und Angebote zu erhalten';

  @override
  String get openTerms => 'Nutzungsbedingungen';

  @override
  String get openPrivacy => 'Datenschutzrichtlinie';

  @override
  String get accountSection => 'Konto';

  @override
  String get guestMode => 'Gastmodus';

  @override
  String get signedIn => 'Angemeldet';

  @override
  String get upgradeHint =>
      'Speichere deine Betrachtungen auf mehreren Geräten, indem du ein Konto erstellst.';

  @override
  String get upgradeWithGoogle => 'Mit Google fortfahren';

  @override
  String get signOut => 'Abmelden';

  @override
  String get snackUpgraded => 'Konto mit Google aktualisiert ✅';

  @override
  String get snackSignedIn => 'Mit Google angemeldet ✅';

  @override
  String get snackSignedOut => 'Abgemeldet';

  @override
  String get snackSignedInApple => 'Mit Apple angemeldet ✅';

  @override
  String get snackSignedInGoogle => 'Mit Google angemeldet ✅';

  @override
  String get snackUpgradedApple => 'Konto mit Apple aktualisiert ✅';

  @override
  String get snackUpgradedGoogle => 'Konto mit Google aktualisiert ✅';

  @override
  String get historyTitle => 'Frühere Betrachtungen';

  @override
  String get historyOpenCta => 'Frühere Betrachtungen';

  @override
  String get historyEmpty => 'Noch keine gespeicherten Betrachtungen.';

  @override
  String get historyDeleteTitle => 'Betrachtung löschen?';

  @override
  String get historyDeleteBody =>
      'Dies wird das ausgewählte Element dauerhaft entfernen.';

  @override
  String get deleteCta => 'Löschen';

  @override
  String get historyButton => 'Frühere Betrachtungen';

  @override
  String get historyEmptyTitle => 'Noch keine Betrachtungen';

  @override
  String get historyEmptyBody =>
      'Generiere zuerst etwas — deine gespeicherten Elemente werden hier angezeigt.';

  @override
  String get historyDelete => 'Löschen';

  @override
  String get footerTitle => 'Mit Wilaya, Iman und Sabr';

  @override
  String get footerSubtitle => 'Ein Gebet nach dem anderen';

  @override
  String get genericErrorSnack =>
      'Etwas ist schiefgelaufen — bitte versuche es in einem Moment erneut.';

  @override
  String get upgradeAccountCta =>
      'Speichere deine Betrachtungen auf mehreren Geräten – erstelle ein Konto';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get exportData => 'Meine Daten exportieren';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Ganz ruhig 🐯\nAyara braucht einen Moment vor dem nächsten…';

  @override
  String get rateDailyLimit =>
      'Du hast deine Betrachtungen für jetzt aufgebraucht.\nHole dir mehr Betrachtungen oder aktualisiere auf Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Du hast alle deine Betrachtungen verbraucht.\nAufladung oder Aktualisierung auf Wilaya zum Fortfahren.';

  @override
  String get rateGraceCreditsExhausted =>
      'Du hast deine Betrachtungen für jetzt aufgebraucht.\nHole dir mehr Betrachtungen oder aktualisiere auf Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya schaltet Premium-Funktionen, zukünftige Kategorien und ein spezielles Badge frei.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Deine Betrachtungen sind im Moment leer. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Konnte deine Betrachtungen nicht überprüfen: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Etwas ist beim Überprüfen deiner Betrachtungen schiefgelaufen.';

  @override
  String get aiFallbackGeneric =>
      'Etwas ist schiefgelaufen — bitte versuche es in einem Moment erneut.';

  @override
  String get limitSectionTitle => 'Betrachtungen';

  @override
  String get limitTodayLabel => 'Nutzung';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Verbleibende Betrachtungen: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Wird geladen…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Betrachtungen';

  @override
  String get aiLimitSubtitle =>
      'Jede Antwort verbraucht 1 Betrachtung. Standard enthält Starter-Betrachtungen. Wilaya schaltet Premium-Kategorien frei und ermöglicht Aufladungen.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total Betrachtungen verwendet';
  }

  @override
  String get creditsSectionTitle => 'Betrachtungen';

  @override
  String get creditsUsageLabel => 'Nutzung';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Verbleibende Betrachtungen: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Wird geladen…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Betrachtungen';

  @override
  String get creditsSubtitle =>
      'Jede Antwort verbraucht 1 Betrachtung. Standard enthält Starter-Betrachtungen. Wilaya schaltet Premium-Kategorien frei und ermöglicht Aufladungen.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total Betrachtungen verwendet';
  }

  @override
  String get settingsDeleteTitle => 'Konto löschen';

  @override
  String get settingsDeleteDescription =>
      'Lösche dein Konto und alle zugehörigen Daten dauerhaft.';

  @override
  String get settingsDeleteButtonLabel => 'Mein Konto löschen';

  @override
  String get settingsDeleteDialogTitle => 'Konto löschen?';

  @override
  String get settingsDeleteDialogBody =>
      'Diese Aktion ist endgültig und kann nicht rückgängig gemacht werden.\n\nAlle deine Chats, Verlauf und Kontoinformationen werden gelöscht.';

  @override
  String get settingsDeleteDialogCancel => 'Abbrechen';

  @override
  String get settingsDeleteDialogConfirm => 'Löschen';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter-Betrachtungen verwendet';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Die Starter-Betrachtungen für dieses Gerät wurden verwendet. Aktualisiere auf Wilaya oder kaufe mehr Betrachtungen, um fortzufahren.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Starter-Betrachtungen verwendet';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Die Starter-Betrachtungen für dieses Gerät wurden verwendet. Aktualisiere auf Wilaya oder kaufe mehr Betrachtungen, um fortzufahren.';

  @override
  String get deviceBoundError =>
      'Dieses Gerät ist bereits mit einem anderen Konto verknüpft. Bitte melde dich mit dem ursprünglichen Konto an.';

  @override
  String get premiumTitle => 'Wilaya-Modus';

  @override
  String get premiumSubtitleBasic =>
      'Entsperre das vollständige Ayara-Erlebnis.';

  @override
  String get premiumSubtitlePremium =>
      'Du bist im Wilaya-Modus. Brauchst du mehr Betrachtungen?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Aktueller Plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Betrachtungen: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Käufe sind im Moment nicht verfügbar.';

  @override
  String get premiumSignInToPurchase =>
      'Melde dich an, um Betrachtungen zu kaufen oder Wilaya freizuschalten.';

  @override
  String get premiumRestorePurchases => 'Käufe wiederherstellen';

  @override
  String get premiumProcessing => 'Wird verarbeitet…';

  @override
  String get premiumRestoreHintTitle =>
      'Hast du Wilaya oder Betrachtungen bereits auf diesem oder einem anderen Gerät gekauft?';

  @override
  String get premiumRestoreHintBody =>
      'Stelle deine Käufe wieder her, falls sie nicht angezeigt werden.';

  @override
  String get premiumBuyCredits200 => '200 Betrachtungen kaufen';

  @override
  String get premiumBuyCredits400 => '400 Betrachtungen kaufen';

  @override
  String get premiumBecomePremiumOneTime => 'Auf Wilaya-Modus aktualisieren';

  @override
  String get premiumTopupHint =>
      'Mit Wilaya kannst du dich jederzeit mit zusätzlichen Betrachtungen auffüllen.';

  @override
  String get premiumUpgradeCta => 'Aktualisieren';

  @override
  String get premiumRequiredForCategory =>
      'Diese Kategorie ist nur für Wilaya-Benutzer verfügbar. Aktualisiere in den Einstellungen, um auf alle Premium-Inhalte zuzugreifen.';

  @override
  String get premiumBenefitsBasic =>
      'Schalte Wilaya frei, um zusätzliche Betrachtungen zu erhalten, auf Premium-Kategorien zuzugreifen und jederzeit Führung zu erhalten.';

  @override
  String get premiumBenefitsPremium =>
      'Du bist im Wilaya-Modus. Falls die Betrachtungen niedrig sind, füge zusätzliche hinzu und fahre ohne Unterbrechungen fort.';

  @override
  String get premiumButtonBecomePremium => 'Schalte Wilaya frei';

  @override
  String get premiumButtonTopup1000 => '1000 Betrachtungen hinzufügen';

  @override
  String get premiumBadge => 'Wilaya aktiv';

  @override
  String get premiumLoadingStore => 'Store wird geladen…';

  @override
  String get premiumProductNotAvailable =>
      'Dieses Produkt ist im Store noch nicht verfügbar. Bitte versuche es später erneut.';

  @override
  String get premiumPurchaseError =>
      'Etwas ist beim Kauf schiefgelaufen. Bitte versuche es erneut.';

  @override
  String get premiumBuyCredits100 => '100 Betrachtungen hinzufügen';

  @override
  String get premiumFeatureLocked =>
      'Schalte Wilaya frei, um auf diese Funktion zuzugreifen.';

  @override
  String get lockedCategoriesHint =>
      'Einige Kategorien sind für Wilaya-Mitglieder reserviert. Schalte sie frei, um jede Betrachtung auf deiner Reise zu erkunden.';

  @override
  String get freePlanBlockedTitle =>
      'Du hast deine Starter-Betrachtungen aufgebraucht';

  @override
  String get freePlanBlockedBody =>
      'Du bist im Standard-Plan mit Starter-Betrachtungen und hast die Grenze erreicht. Um fortzufahren – und Premium-Kategorien freizuschalten – aktualisiere auf Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Siehe Wilaya-Optionen unten';

  @override
  String get graceBlockedTitle =>
      'Du hast deine Starter-Betrachtungen aufgebraucht';

  @override
  String get graceBlockedBody =>
      'Du bist im Standard-Plan mit Starter-Betrachtungen und hast die Grenze erreicht. Um fortzufahren – und Premium-Kategorien freizuschalten – aktualisiere auf Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Siehe Wilaya-Optionen unten';

  @override
  String get rateGuestMustSignIn =>
      'Melde dich an, um Ayara und deine Betrachtungen zu nutzen.';

  @override
  String get guestNoCreditsTitle => 'Gastmodus';

  @override
  String get guestNoCreditsBody =>
      'Als Gast kannst du die App durchsuchen, aber keine Betrachtungen nutzen. Melde dich später in den Einstellungen an, um Betrachtungen zu nutzen und Käufe freizuschalten.';

  @override
  String get guestDialogContinue => 'Fortfahren';

  @override
  String get guestDialogLoginInstead => 'Stattdessen anmelden';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Konto gelöscht';

  @override
  String get accountDeleteSuccessBody =>
      'Dein Konto und die zugehörigen Daten wurden erfolgreich gelöscht.';

  @override
  String get accountDeleteSuccessClose => 'Schließen';

  @override
  String get accountDeleteErrorTitle => 'Konto konnte nicht gelöscht werden';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Erneute Authentifizierung wurde abgebrochen. Bitte melde dich erneut an und versuche das Löschen erneut.';

  @override
  String get accountDeleteReauthRequired =>
      'Das Löschen des Kontos erfordert eine kürzliche Anmeldung. Bitte melde dich ab, melde dich erneut an und versuche das Löschen erneut.';

  @override
  String get settingsDeletePermanentWarning =>
      'Diese Aktion ist endgültig und kann nicht rückgängig gemacht werden. Alle Daten, die mit deinem Konto verbunden sind, werden gelöscht.';

  @override
  String get dailyGraceTitle => 'Tägliche Führung';

  @override
  String get dailyGraceScriptureLabel => 'VERS DES TAGES';

  @override
  String get dailyGraceSaintLabel => 'FIGUR DER WOCHE';

  @override
  String get dailyGraceReflectionLabel => 'ABEND-BETRACHTUNG';

  @override
  String get dailyGraceCopiedToast => 'Vers in die Zwischenablage kopiert';

  @override
  String get locationConsentLabel =>
      'Erlaube Ayara, meinen Standort für Qibla-Richtung und Gebetszeiten zu verwenden';

  @override
  String get locationConsentHint =>
      'Wird nur für diese Funktionen verwendet. Dein Standort wird niemals freigegeben oder gespeichert.';

  @override
  String get askPageTitle => 'Frag Ayara';

  @override
  String get askPageDescription =>
      'Stelle eine Frage zu Glauben, Gebet, Leben oder islamischer Praxis und erhalte Führung, die in dem Quran und den Lehren des Ahl al-Bayt verwurzelt ist.';

  @override
  String get askPageInputHint => 'Tippe deine Frage hier ein…';

  @override
  String get askPageSubmitCta => 'Fragen';

  @override
  String get askPageInputEmptyError => 'Bitte schreibe zuerst eine Frage.';

  @override
  String get askResultYourQuestion => 'Deine Frage';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'In Richtung Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Drehe dein Telefon, bis die goldene Nadel nach oben zeigt.\nDiese Richtung zeigt auf die Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-Signal ist schwach. Gehe nach draußen und tippe Erneut versuchen.';

  @override
  String get qiblaRetry => 'Erneut versuchen';

  @override
  String get qiblaTitle => 'Qibla-Richtung';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km bis Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Standort erforderlich';

  @override
  String get qiblaLocationNeededBody =>
      'Erlaube Standortzugriff, damit Ayara die Richtung der Kaaba in Makkah von dort aus, wo du bist, berechnen kann.';

  @override
  String get qiblaOpenSettings => 'Einstellungen öffnen';

  @override
  String get qiblaCompassLoading => 'Deine Position wird ermittelt…';

  @override
  String get qiblaTowardMecca => 'In Richtung Makkah';

  @override
  String get prayerTimesTitle => 'Gebetszeiten';

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
  String get prayerTimesLocationNeededTitle => 'Standort erforderlich';

  @override
  String get prayerTimesLocationNeededBody =>
      'Erlaube Standortzugriff, damit Ayara genaue Gebetszeiten für deine Stadt berechnen kann.';

  @override
  String get prayerTimesNextLabel => 'Nächster';

  @override
  String get prayerTimesDoneLabel => 'Fertig';

  @override
  String get monthlyPrayerTimesTitle => 'Monatliche Gebetszeiten';

  @override
  String get monthlyPrayerTimesViewButton => 'Ganzen Monat anzeigen';

  @override
  String get monthlyPrayerTimesNextMonth => 'Nächster Monat';

  @override
  String get monthlyPrayerTimesDayHeader => 'Tag';

  @override
  String get sharePrayerTimes => 'Gebetszeiten teilen';

  @override
  String get notificationsSectionTitle => 'Benachrichtigungen';

  @override
  String get notificationsSectionSubtitle =>
      'Gebetserinnerungen, Kalenderereignisse und mehr';

  @override
  String get dailyReflectionReminderTitle => 'Tägliche Betrachtung';

  @override
  String get dailyReflectionReminderDescription =>
      'Eine sanfte tägliche Erinnerung, um Ayara zu öffnen und dich mit deinem Glauben zu verbinden.';

  @override
  String get dailyReflectionReminderEnable => 'Tägliche Erinnerung aktivieren';

  @override
  String get dailyReflectionReminderTimeLabel => 'Erinnerungszeit';

  @override
  String get prayerNotificationsTitle => 'Gebetserinnerungen';

  @override
  String get prayerNotificationsDescription =>
      'Erhalte eine sanfte Erinnerung vor jeder Gebetszeit, um dich während des Tages verbunden zu halten.';

  @override
  String get prayerNotificationsEnable => 'Gebetserinnerungen aktivieren';

  @override
  String get prayerNotificationsOpenSettings =>
      'Benachrichtigungseinstellungen öffnen';

  @override
  String get prayerNotificationsDenied => 'Benachrichtigungen sind deaktiviert';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gehe zu den Einstellungen und erlaube Benachrichtigungen für Ayara, um Gebetszeitenerinnerungen zu erhalten.';

  @override
  String get notificationsConsentLabel =>
      'Benachrichtigungen für Gebetszeiten erlauben';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Morgengebet';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ist das Gebet der Morgen des Ahl al-Bayt. Imam Ali (AS) sagte: Schütze das Morgengebet wie dein kostbarstes Gut. Stehe auf, reinige dich und stehe vor Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Mittagsgebet';

  @override
  String get prayerNotifBodyDhuhr =>
      'Die Imame des Ahl al-Bayt schätzten jeden Moment der Erinnerung. Unterbreche deinen Tag, vereinige Dhuhr mit Asr, falls nötig, und richte dein Herz zurück auf Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Nachmittagsgebet';

  @override
  String get prayerNotifBodyAsr =>
      'Schütze das Gebet, denn es ist der Bund zwischen dir und Allah. Die Zeit für Asr ist gekommen — lass sie nicht ohne Erinnerung vorbeiziehen.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sonnenuntergangsgebet';

  @override
  String get prayerNotifBodyMaghrib =>
      'Die Sonne ist untergegangen — ein Moment, den der Ahl al-Bayt für die Bittgebet als heilig erachtete. Verrichte Maghrib und öffne deine Hände zu Allah in Dua, bevor die Nacht beginnt.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nachtgebet';

  @override
  String get prayerNotifBodyIsha =>
      'Beende deinen Tag in der Gesellschaft Allahs. Die Imame ermutigten Salat al-Layl nach Isha — aber zuerst, vollende dein Isha und schließe den Tag mit Seiner Erinnerung.';

  @override
  String get outOfReflectionsBannerText =>
      'Du hast alle deine Betrachtungen verbraucht';

  @override
  String get outOfReflectionsBannerCta => 'Mehr bekommen';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tippe auf den Kreis zum Zählen';

  @override
  String get dhikrResetButton => 'Zurücksetzen';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Du hast 100 Erinnerungen an Allah vervollständigt. Möge sie ein Licht für dein Herz sein.';

  @override
  String get disclaimerTitle => 'Über die Führung dieser App';

  @override
  String get disclaimerBody =>
      'Ayara bietet islamische Betrachtungen, Erinnerungen und spirituelle Inhalte, um deine persönliche Glaubensreise zu unterstützen, verwurzelt im Quran und den Lehren des Ahl al-Bayt. Dieser Inhalt wird nur zu allgemeinen Informations- und Inspirationszwecken angeboten.\n\nAyara ersetzt nicht qualifizierte Gelehrsamkeit.\nDie Führung in dieser App ist kein Ersatz für einen gelehrten islamischen Gelehrten, Marja\' oder theologisch ausgebildeten Lehrer. Im schiitischen Islam ist die religiöse Führung in der Ja\'fari-Schule der Rechtswissenschaft (Fiqh) und der Tradition des Folgverhältnisses zu einem lebenden Marja\' (Quelle der Nachahmung) — einem qualifizierten Juristen, dessen Urteile Gläubige in der religiösen Praxis leiten — verwurzelt. Wenn du Fragen zu religiösen Urteilen, Halal- und Haram-Angelegenheiten oder persönlichen religiösen Pflichten hast, wende dich bitte an einen qualifizierten Marja\' oder einen Gelehrten in deiner Gemeinde.\n\nDiese App gibt keine religiösen Urteile ab.\nAyara macht keine verbindlichen Bestimmungen in Fiqh- oder persönlichen religiösen Pflichten. Nichts hier sollte als Fatwa oder bindende religiöse Anweisung behandelt werden.\n\nDie Zentralität des Ahl al-Bayt.\nIm schiitischen Islam sind der Prophet Muhammad ﷺ und sein gereinigtes Haus — der Ahl al-Bayt — die maßgeblichen Führer der islamischen Gemeinde nach dem Quran. Die zwölf Imame des Ahl al-Bayt sind die göttlich bestellten Ausleger der islamischen Lehre. Der Inhalt dieser App spiegelt diese Tradition wider und versucht, sie treu zu ehren.\n\nGemeindeangelegenheiten.\nDiese App versucht, dein Engagement mit dem Glauben zu fördern, während sie die wichtige Rolle deiner lokalen Moschee, des islamischen Zentrums und der religiösen Gemeinde zutiefst respektiert. Wir ermutigen dich, mit qualifizierten Lehrern in deiner Nähe verbunden zu bleiben und von ihnen zu lernen.';

  @override
  String get disclaimerClose => 'Ich verstehe';

  @override
  String get disclaimerInfoTooltip => 'Über die Führung dieser App';

  @override
  String get disclaimerSettingsSubtitle =>
      'Nur für allgemeine Informationszwecke. Tippe zum Lesen des vollständigen Haftungsausschlusses.';

  @override
  String get disclaimerSectionHeader => 'Haftungsausschluss für Führung';

  @override
  String get navHome => 'Startseite';

  @override
  String get navReflect => 'Betrachtung';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'HEUTE';

  @override
  String get dashboardComingUp => 'Kommt bald';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tage',
      one: 'Tag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Schnellzugriff';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Führung';

  @override
  String get quickActionPrayerTimes => 'Gebetszeiten';

  @override
  String get askAyaraTitle => 'Frag Ayara';

  @override
  String get askAyaraSubtitle =>
      'Stelle eine islamische Frage und erhalte eine durchdachte, geführte Antwort.';

  @override
  String get askAyaraHint => 'z.B. Was ist die Bedeutung des Ramadan?';

  @override
  String get askAyaraSubmit => 'Fragen';

  @override
  String get wisdomOfTheDayTitle => 'Weisheit des Tages';

  @override
  String get calendarScreenTitle => 'Islamischer Kalender';

  @override
  String get calendarUpcomingOccasions => 'Bevorstehende Ereignisse';

  @override
  String get calendarOccasionRemindersTitle => 'Ereigniserinnerungen';

  @override
  String get calendarOccasionRemindersHint =>
      'Benachrichtigungen am Abend vor jedem Ereignis';

  @override
  String get calendarNotifPermissionDenied =>
      'Benachrichtigungsberechtigung verweigert. Aktiviere sie in den Geräteeinstellungen.';

  @override
  String get calendarNoEvents => 'Keine anstehenden Ereignisse gefunden.';

  @override
  String get calendarAddToPhone => 'In den Telefon-Kalender hinzufügen';

  @override
  String get calendarAddedToPhone => 'In den Kalender hinzugefügt';

  @override
  String get calendarCountdownToday => 'HEUTE';

  @override
  String get calendarCountdownTomorrow => 'MORGEN';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days Tagen';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mär';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mai';

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
  String get calendarMonthDec => 'Dez';

  @override
  String get calendarSeasonMuharramEarly =>
      'Tage von Muharram — denke an Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — Tage der Trauer und Betrachtung';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — vierzig Tage des Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Der Weg zu Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — die Morgenröte der Offenbarung';

  @override
  String get calendarSeasonMidShaban =>
      'Mitte Sha\'ban — Geburtstag von Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — der Monat des Quran';

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
  String get duasScreenTitle => 'Duas & Ziyarat';

  @override
  String get duasSearchHint => 'Suche Duas, Ziyarat…';

  @override
  String get duasFilterAll => 'Alles';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Duas & Ziyarat',
      one: '$count Dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Keine Duas gefunden.';

  @override
  String get duaCategoryDaily => 'Täglich';

  @override
  String get duaCategoryWeekly => 'Wöchentlich';

  @override
  String get duaCategoryOccasions => 'Ereignisse';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Geburt';

  @override
  String get eventTypeMartyrdom => 'Martyrium';

  @override
  String get eventTypeOccasion => 'Ereignis';

  @override
  String get duaCopyTooltip => 'Übersetzung kopieren';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Übersetzung';

  @override
  String get duaAskAiLabel => 'Frag Ayara, um diese Dua zu erklären';

  @override
  String get duaAskAiLockedLabel => 'Frag Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-Erklärungen sind für Wilaya-Mitglieder verfügbar. Aktualisiere in den Einstellungen.';

  @override
  String duaAiComingSoon(String name) {
    return 'Frag Ayara nach \"$name\" — kommt bald!';
  }

  @override
  String get duaCopiedToast => 'Dua in die Zwischenablage kopiert.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ist der Größte';

  @override
  String get tasbihAlhamdulillahMeaning => 'Alles Lob gebührt Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gepriesen sei Allah';

  @override
  String get tasbihResetTooltip => 'Zurücksetzen';

  @override
  String get tasbihCompleteTitle => 'Tasbih fertig';

  @override
  String get tasbihCompleteMessage => 'Möge Allah deinen Dhikr annehmen.';

  @override
  String get tasbihTapHint => 'Tippe überall zum Zählen';

  @override
  String get tasbihatScreenTitle => 'Gebetsführer';

  @override
  String get tasbihatScreenSubtitle => 'DIE GEBETSVERHERRLICHUNGEN';

  @override
  String get tasbihatScreenDescription =>
      'Ein vollständiger Leitfaden zu den Verherrlichungen, die während und nach den Tagesgebeten rezitiert werden — nach der Tradition des Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Rezitiert während der 3. & 4. Rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In der schiitischen Rechtswissenschaft ersetzt die Tasbiḥāt al-Arbaʿa in der 3. und 4. Rakʿah von Dhuhr, Asr, Maghrib und Isha die Surah al-Fatiha. Es ist obligatorisch (wājib), es einmal zu rezitieren, und empfohlen (mustaḥabb), es dreimal zu rezitieren.';

  @override
  String get tasbihatArba3Translation =>
      'Gepriesen sei Allah · Alles Lob gebührt Allah\nEs gibt keinen Gott außer Allah · Allah ist der Größte';

  @override
  String get tasbihatArba3CompleteTitle => 'Rezitation vollständig';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Möge dein Gebet angenommen werden — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tippe nach jeder Rezitation';

  @override
  String get tasbihatZahraSubtitle => 'Nach jedem Gebet · 100 Perlen';

  @override
  String get tasbihatZahraOriginLabel => 'Ursprung';

  @override
  String get tasbihatZahraHadith =>
      'Frau Fatima al-Zahra (sa) bat den Propheten ﷺ um einen Diener. Er sagte: \"Soll ich dich nicht zu etwas Besserem führen? Rezitiere Subḥānallāh 33 mal, Alḥamdulillāh 33 mal und Allāhu Akbar 34 mal nach jedem Gebet. Das ist besser für dich als ein Diener.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Tasbīḥ-Zähler öffnen';

  @override
  String get tasbihatDuasTitle => 'EMPFOHLENE DUAS';

  @override
  String get tasbihatDuasSubtitle => 'Nach Abschluss deines Gebets';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Nach jedem Pflichtgebet';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Wer Āyat al-Kursī nach jedem Pflichtgebet rezitiert, steht nichts zwischen ihm und dem Paradies außer dem Tod. Imam al-Bāqir (a) sagte, es ist unter den größten Versen im Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Nach jedem Gebet · versiegelt alle Bitten';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Das Senden von Salutationen auf den Propheten ﷺ und seine gereinigte Familie (Āl Muḥammad) wird empfohlen, um jede Dua zu versiegeln. Imam al-Ṣādiq (a) sagte: \"Jede Dua ist suspendiert, bis du ṣalawāt auf Muḥammad und seine Familie sendest.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Nach jedem Gebet · für den Imam unserer Zeit';

  @override
  String get tasbihatDuaFarajSource =>
      'Gelehrt von Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Ein Dua für das Wiedererscheinen von Imam al-Mahdī (af), dem zwölften Imam, gelehrt von seinem Vater. Es wird oft von vielen schiitischen Muslimen nach dem Gebet als Akt der Hingabe an den lebenden Imam rezitiert.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ der Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Nach Maghrib & Isha · besonders empfohlen';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sagte, dass das Rezitieren von Tasbīḥ al-Zahrā nach Isha vor dem Schlafengehen besser ist als 1000 Rakʿah optionalen Gebets. Sein Licht steigt zu den Himmeln auf.';

  @override
  String get tasbihFatimaGiftPre => 'Ein Geschenk des Propheten';

  @override
  String get tasbihFatimaGiftPost => 'rezitiert nach jedem Gebet';

  @override
  String get prayerTrackerTitle => 'GEBETS-TRACKER';

  @override
  String get prayerTrackerPrayed => 'Gebetet';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count Tage Erfolgsserie';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Alle Gebete heute vollständig. Möge Allah annehmen.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Heute abgeschlossen';

  @override
  String get dhikrTrackerNotDoneToday => 'Heute nicht gemacht';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count Tage Erfolgsserie';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-Erinnerung';

  @override
  String get dhikrReminderDescription =>
      'Eine sanfte tägliche Erinnerung, um dein Tasbīḥ al-Zahrā (SA) zu rezitieren.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ-Erinnerung aktivieren';

  @override
  String get dhikrReminderTimeLabel => 'Erinnerungszeit';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Tägliches Hadith';

  @override
  String get hadithLabelArabic => 'ARABISCH';

  @override
  String get hadithLabelTranslation => 'ÜBERSETZUNG';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Dieses Hadith teilen';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Vorherig';

  @override
  String get hadithNavNext => 'Nächster';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Die Vierzehn Unfehlbaren';

  @override
  String get imamsScreenSubtitle =>
      'Der Prophet, Lady Fatima und die zwölf Imame — die reinen und unfehlbaren Führer im Zwölfer-Schia-Islam';

  @override
  String get imamLabelBorn => 'Geboren';

  @override
  String get imamLabelMartyrdom => 'Martyrium';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIE';

  @override
  String get imamSectionFamousSaying => 'BERÜHMTER AUSSPRUCH';

  @override
  String get imamRoleProphet => 'Der letzte Prophet';

  @override
  String get imamRoleInfallible => 'Der Unfehlbare';

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
  String get duaAudioScreenTitle => 'Duas anhören';

  @override
  String get duaAudioScreenSubtitle =>
      'Wähle eine Dua zum Anhören. Tippe auf die Kachel, um zu spielen oder zu pausieren.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio für diese Dua ist in einer kommenden Aktualisierung verfügbar.';

  @override
  String get duaAudioClose => 'Schließen';

  @override
  String get duaAudioError =>
      'Audio konnte nicht geladen werden. Bitte überprüfe deine Verbindung.';

  @override
  String get duaAudioMetaTransmittedBy => 'Übertragen von';

  @override
  String get duaAudioMetaOccasion => 'Ereignis';

  @override
  String get duaAudioMetaDuration => 'Dauer';

  @override
  String get quickActionDailyHadith => 'Tägliches Hadith';

  @override
  String get quickAction14Masumeen => 'Vierzehn Unfehlbare';

  @override
  String get quickActionListenDuas => 'Anhören';

  @override
  String get quickActionTasbihat => 'Gebetsführer';

  @override
  String get pilgrimageSectionTitle => 'Die heilige Reise';

  @override
  String get pilgrimageSectionSubtitle =>
      'Vollständige Führungen zu Hajj & Umrah — die Pilgerfahrt zum Heiligen Haus Allahs in Makkah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Die fünfte Säule des Islam';

  @override
  String get hajjCardDescription =>
      'Die große jährliche Pilgerfahrt — obligatorisch einmal im Leben für jeden fähigen Muslim';

  @override
  String get hajjScreenTitle => 'Hajj-Führer';

  @override
  String get hajjScreenSubtitle =>
      'Schritt-für-Schritt-Anleitung zur großen Pilgerfahrt';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Die kleinere Pilgerfahrt';

  @override
  String get umrahCardDescription =>
      'Eine tiefgreifend lohnende spirituelle Reise, die jederzeit im Jahr durchgeführt werden kann';

  @override
  String get umrahScreenTitle => 'Umrah-Führer';

  @override
  String get umrahScreenSubtitle =>
      'Schritt-für-Schritt-Anleitung zur kleineren Pilgerfahrt';

  @override
  String get pilgrimageStepsTitle => 'Rituale & Schritte';

  @override
  String get pilgrimageImportantNotesTitle => 'Wichtige Hinweise';

  @override
  String get pilgrimageDuaTitle => 'Dua für diesen Schritt';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Hinweis';

  @override
  String get pilgrimageComplete => '✓ Abgeschlossen';

  @override
  String get pilgrimageMarkDone => 'Als abgeschlossen markieren';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done von $total Schritten';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Schiitische Pilger';

  @override
  String get pilgrimageShiaNoteBody =>
      'Viele schiitische Pilger reisen auch nach Medina zur Ziyarat des Propheten Muhammad (SAW) in der Masjid al-Nabawi und zu den Gräbern in Jannat al-Baqi. Diese Besuche haben eine tiefe spirituelle Bedeutung, obwohl sie selbst keine Riten des Hajj sind.';

  @override
  String get hajjIntro =>
      'Hajj ist die fünfte Säule des Islam, die einmal im Leben für jeden Muslim, der körperlich und finanziell dazu in der Lage ist, verpflichtend ist. Für die meisten schiitischen Pilger heute bedeutet dies Hajj al-Tamattu\', der im Monat Dhul Hijjah in den Fußstapfen von Prophet Ibrahim (AS), seinem Sohn Ismail (AS) und Lady Hajar durchgeführt wird. Dieser Leitfaden folgt dem ja\'fari Schema der Riten, während die Ziyarat in Medina eine tief geschätzte Reise vor oder nach dem Hajj bleibt.';

  @override
  String get umrahIntro =>
      'Umrah ist die kleinere Pilgerfahrt nach Makkah und kann, im Gegensatz zu Hajj, jederzeit im Jahr durchgeführt werden. Obwohl nicht obligatorisch, trägt sie enorme spirituelle Belohnung und wird als sehr empfohlener Akt der Anbetung angesehen. Sie teilt mehrere Rituale mit Hajj, ist aber kürzer und besteht aus vier Hauptriten.';

  @override
  String get voiceInputTitle => 'Sprachsteuerung';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Sprich deine Eingabe zu Ask Ayara, anstatt zu tippen.';

  @override
  String get voiceInputMicDenied =>
      'Zugriff auf das Mikrofon wurde verweigert.';

  @override
  String get voiceInputSpeak => 'Stattdessen sprechen';

  @override
  String get voiceInputListening => 'Höre zu…';

  @override
  String get voiceInputPermissionDenied =>
      'Zugriff auf das Mikrofon ist für die Sprachsteuerung erforderlich.';
}

/// The translations for German, as used in Austria (`de_AT`).
class AppLocalizationsDeAt extends AppLocalizationsDe {
  AppLocalizationsDeAt() : super('de_AT');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Wähle deine Sprache';

  @override
  String get languageSelectSub =>
      'Du kannst dies später in den Einstellungen ändern';

  @override
  String get actionContinue => 'Weiter';

  @override
  String get languageSuggestedHeader => 'Empfohlen';

  @override
  String get languageAllHeader => 'Alle Sprachen';

  @override
  String get languageSuggestedBadge => 'Empfohlen';

  @override
  String get languageSearchHint => 'Suchen…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Tägliche Führung';

  @override
  String get categorySlot02 => 'Glaube & Vertrauen';

  @override
  String get categorySlot03 => 'Gebet-Betrachtung';

  @override
  String get categorySlot04 => 'Geduld & Hoffnung';

  @override
  String get categorySlot05 => 'Um Vergebung bitten';

  @override
  String get categorySlot06 => 'Barmherzigkeit & Mitgefühl';

  @override
  String get categorySlot07 => 'Glaube & Stärke';

  @override
  String get categorySlot08 => 'Dankbares Herz';

  @override
  String get categorySlot09 => 'Lebenszweck';

  @override
  String get categorySlot10 => 'Familienbande';

  @override
  String get categorySlot11 => 'Innerer Frieden';

  @override
  String get categorySlot12 => 'Prophetische Weisheit';

  @override
  String get categorySlot13 => 'Guter Charakter';

  @override
  String get categorySlot14 => 'Versuchung widerstehen';

  @override
  String get categorySlot15 => 'Abend-Dhikr';

  @override
  String get categoryCustom => 'Persönliche Betrachtung';

  @override
  String get dhikrMeaningSubhanallah => 'Gepriesen sei Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Alles Lob gebührt Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah ist der Größte';

  @override
  String get quranVerseHeartAtRest =>
      'Wahrlich, in der Erinnerung an Allah finden die Herzen Ruhe.';

  @override
  String get promptHint =>
      'Tippe auf eine Kategorie für islamische Führung und Betrachtung';

  @override
  String get currentLanguage => 'Aktuelle Sprache';

  @override
  String get settingsLanguage => 'Spracheinstellungen';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get chooseLanguage => 'Wähle deine Sprache';

  @override
  String get continueCta => 'Weiter';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Wörter',
      one: '$count Wort',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Optionen';

  @override
  String get newCta => 'Neu';

  @override
  String get actionsTitle => 'Was möchtest du tun?';

  @override
  String get copy => 'Kopieren';

  @override
  String get share => 'Teilen';

  @override
  String get close => 'Schließen';

  @override
  String get copiedToast => 'In die Zwischenablage kopiert';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Konnte keine neue Antwort generieren';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nMöchtest du es erneut versuchen?';
  }

  @override
  String get cancelCta => 'Abbrechen';

  @override
  String get retryCta => 'Erneut versuchen';

  @override
  String get authTitle => 'Erstelle dein Konto';

  @override
  String get continueAsGuest => 'Als Gast fortfahren';

  @override
  String get signInGoogle => 'Mit Google anmelden';

  @override
  String get signInApple => 'Mit Apple anmelden';

  @override
  String get signInEmail => 'Mit E-Mail anmelden';

  @override
  String get upgradeWithApple => 'Mit Apple fortfahren';

  @override
  String get mustAccept =>
      'Du musst den Nutzungsbedingungen zustimmen und die Datenschutzrichtlinie anerkennen.';

  @override
  String get termsLabel => 'Ich akzeptiere die Nutzungsbedingungen';

  @override
  String get privacyLabel => 'Ich habe die Datenschutzrichtlinie gelesen';

  @override
  String get marketingOptIn =>
      'Ich stimme zu, Nachrichten und Angebote zu erhalten';

  @override
  String get openTerms => 'Nutzungsbedingungen';

  @override
  String get openPrivacy => 'Datenschutzrichtlinie';

  @override
  String get accountSection => 'Konto';

  @override
  String get guestMode => 'Gastmodus';

  @override
  String get signedIn => 'Angemeldet';

  @override
  String get upgradeHint =>
      'Speichere deine Betrachtungen auf mehreren Geräten, indem du ein Konto erstellst.';

  @override
  String get upgradeWithGoogle => 'Mit Google fortfahren';

  @override
  String get signOut => 'Abmelden';

  @override
  String get snackUpgraded => 'Konto mit Google aktualisiert ✅';

  @override
  String get snackSignedIn => 'Mit Google angemeldet ✅';

  @override
  String get snackSignedOut => 'Abgemeldet';

  @override
  String get snackSignedInApple => 'Mit Apple angemeldet ✅';

  @override
  String get snackSignedInGoogle => 'Mit Google angemeldet ✅';

  @override
  String get snackUpgradedApple => 'Konto mit Apple aktualisiert ✅';

  @override
  String get snackUpgradedGoogle => 'Konto mit Google aktualisiert ✅';

  @override
  String get historyTitle => 'Frühere Betrachtungen';

  @override
  String get historyOpenCta => 'Frühere Betrachtungen';

  @override
  String get historyEmpty => 'Noch keine gespeicherten Betrachtungen.';

  @override
  String get historyDeleteTitle => 'Betrachtung löschen?';

  @override
  String get historyDeleteBody =>
      'Dies wird das ausgewählte Element dauerhaft entfernen.';

  @override
  String get deleteCta => 'Löschen';

  @override
  String get historyButton => 'Frühere Betrachtungen';

  @override
  String get historyEmptyTitle => 'Noch keine Betrachtungen';

  @override
  String get historyEmptyBody =>
      'Generiere zuerst etwas — deine gespeicherten Elemente werden hier angezeigt.';

  @override
  String get historyDelete => 'Löschen';

  @override
  String get footerTitle => 'Mit Wilaya, Iman und Sabr';

  @override
  String get footerSubtitle => 'Ein Gebet nach dem anderen';

  @override
  String get genericErrorSnack =>
      'Etwas ist schiefgelaufen — bitte versuche es in einem Moment erneut.';

  @override
  String get upgradeAccountCta =>
      'Speichere deine Betrachtungen auf mehreren Geräten – erstelle ein Konto';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get exportData => 'Meine Daten exportieren';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Ganz ruhig 🐯\nAyara braucht einen Moment vor dem nächsten…';

  @override
  String get rateDailyLimit =>
      'Du hast deine Betrachtungen für jetzt aufgebraucht.\nHole dir mehr Betrachtungen oder aktualisiere auf Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Du hast alle deine Betrachtungen verbraucht.\nAufladung oder Aktualisierung auf Wilaya zum Fortfahren.';

  @override
  String get rateGraceCreditsExhausted =>
      'Du hast deine Betrachtungen für jetzt aufgebraucht.\nHole dir mehr Betrachtungen oder aktualisiere auf Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya schaltet Premium-Funktionen, zukünftige Kategorien und ein spezielles Badge frei.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Deine Betrachtungen sind im Moment leer. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Konnte deine Betrachtungen nicht überprüfen: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Etwas ist beim Überprüfen deiner Betrachtungen schiefgelaufen.';

  @override
  String get aiFallbackGeneric =>
      'Etwas ist schiefgelaufen — bitte versuche es in einem Moment erneut.';

  @override
  String get limitSectionTitle => 'Betrachtungen';

  @override
  String get limitTodayLabel => 'Nutzung';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Verbleibende Betrachtungen: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Wird geladen…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Betrachtungen';

  @override
  String get aiLimitSubtitle =>
      'Jede Antwort verbraucht 1 Betrachtung. Standard enthält Starter-Betrachtungen. Wilaya schaltet Premium-Kategorien frei und ermöglicht Aufladungen.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total Betrachtungen verwendet';
  }

  @override
  String get creditsSectionTitle => 'Betrachtungen';

  @override
  String get creditsUsageLabel => 'Nutzung';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Verbleibende Betrachtungen: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Wird geladen…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Betrachtungen';

  @override
  String get creditsSubtitle =>
      'Jede Antwort verbraucht 1 Betrachtung. Standard enthält Starter-Betrachtungen. Wilaya schaltet Premium-Kategorien frei und ermöglicht Aufladungen.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total Betrachtungen verwendet';
  }

  @override
  String get settingsDeleteTitle => 'Konto löschen';

  @override
  String get settingsDeleteDescription =>
      'Lösche dein Konto und alle zugehörigen Daten dauerhaft.';

  @override
  String get settingsDeleteButtonLabel => 'Mein Konto löschen';

  @override
  String get settingsDeleteDialogTitle => 'Konto löschen?';

  @override
  String get settingsDeleteDialogBody =>
      'Diese Aktion ist endgültig und kann nicht rückgängig gemacht werden.\n\nAlle deine Chats, Verlauf und Kontoinformationen werden gelöscht.';

  @override
  String get settingsDeleteDialogCancel => 'Abbrechen';

  @override
  String get settingsDeleteDialogConfirm => 'Löschen';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter-Betrachtungen verwendet';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Die Starter-Betrachtungen für dieses Gerät wurden verwendet. Aktualisiere auf Wilaya oder kaufe mehr Betrachtungen, um fortzufahren.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Starter-Betrachtungen verwendet';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Die Starter-Betrachtungen für dieses Gerät wurden verwendet. Aktualisiere auf Wilaya oder kaufe mehr Betrachtungen, um fortzufahren.';

  @override
  String get deviceBoundError =>
      'Dieses Gerät ist bereits mit einem anderen Konto verknüpft. Bitte melde dich mit dem ursprünglichen Konto an.';

  @override
  String get premiumTitle => 'Wilaya-Modus';

  @override
  String get premiumSubtitleBasic =>
      'Entsperre das vollständige Ayara-Erlebnis.';

  @override
  String get premiumSubtitlePremium =>
      'Du bist im Wilaya-Modus. Brauchst du mehr Betrachtungen?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Aktueller Plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Betrachtungen: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Käufe sind im Moment nicht verfügbar.';

  @override
  String get premiumSignInToPurchase =>
      'Melde dich an, um Betrachtungen zu kaufen oder Wilaya freizuschalten.';

  @override
  String get premiumRestorePurchases => 'Käufe wiederherstellen';

  @override
  String get premiumProcessing => 'Wird verarbeitet…';

  @override
  String get premiumRestoreHintTitle =>
      'Hast du Wilaya oder Betrachtungen bereits auf diesem oder einem anderen Gerät gekauft?';

  @override
  String get premiumRestoreHintBody =>
      'Stelle deine Käufe wieder her, falls sie nicht angezeigt werden.';

  @override
  String get premiumBuyCredits200 => '200 Betrachtungen kaufen';

  @override
  String get premiumBuyCredits400 => '400 Betrachtungen kaufen';

  @override
  String get premiumBecomePremiumOneTime => 'Auf Wilaya-Modus aktualisieren';

  @override
  String get premiumTopupHint =>
      'Mit Wilaya kannst du dich jederzeit mit zusätzlichen Betrachtungen auffüllen.';

  @override
  String get premiumUpgradeCta => 'Aktualisieren';

  @override
  String get premiumRequiredForCategory =>
      'Diese Kategorie ist nur für Wilaya-Benutzer verfügbar. Aktualisiere in den Einstellungen, um auf alle Premium-Inhalte zuzugreifen.';

  @override
  String get premiumBenefitsBasic =>
      'Schalte Wilaya frei, um zusätzliche Betrachtungen zu erhalten, auf Premium-Kategorien zuzugreifen und jederzeit Führung zu erhalten.';

  @override
  String get premiumBenefitsPremium =>
      'Du bist im Wilaya-Modus. Falls die Betrachtungen niedrig sind, füge zusätzliche hinzu und fahre ohne Unterbrechungen fort.';

  @override
  String get premiumButtonBecomePremium => 'Schalte Wilaya frei';

  @override
  String get premiumButtonTopup1000 => '1000 Betrachtungen hinzufügen';

  @override
  String get premiumBadge => 'Wilaya aktiv';

  @override
  String get premiumLoadingStore => 'Store wird geladen…';

  @override
  String get premiumProductNotAvailable =>
      'Dieses Produkt ist im Store noch nicht verfügbar. Bitte versuche es später erneut.';

  @override
  String get premiumPurchaseError =>
      'Etwas ist beim Kauf schiefgelaufen. Bitte versuche es erneut.';

  @override
  String get premiumBuyCredits100 => '100 Betrachtungen hinzufügen';

  @override
  String get premiumFeatureLocked =>
      'Schalte Wilaya frei, um auf diese Funktion zuzugreifen.';

  @override
  String get lockedCategoriesHint =>
      'Einige Kategorien sind für Wilaya-Mitglieder reserviert. Schalte sie frei, um jede Betrachtung auf deiner Reise zu erkunden.';

  @override
  String get freePlanBlockedTitle =>
      'Du hast deine Starter-Betrachtungen aufgebraucht';

  @override
  String get freePlanBlockedBody =>
      'Du bist im Standard-Plan mit Starter-Betrachtungen und hast die Grenze erreicht. Um fortzufahren – und Premium-Kategorien freizuschalten – aktualisiere auf Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Siehe Wilaya-Optionen unten';

  @override
  String get graceBlockedTitle =>
      'Du hast deine Starter-Betrachtungen aufgebraucht';

  @override
  String get graceBlockedBody =>
      'Du bist im Standard-Plan mit Starter-Betrachtungen und hast die Grenze erreicht. Um fortzufahren – und Premium-Kategorien freizuschalten – aktualisiere auf Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Siehe Wilaya-Optionen unten';

  @override
  String get rateGuestMustSignIn =>
      'Melde dich an, um Ayara und deine Betrachtungen zu nutzen.';

  @override
  String get guestNoCreditsTitle => 'Gastmodus';

  @override
  String get guestNoCreditsBody =>
      'Als Gast kannst du die App durchsuchen, aber keine Betrachtungen nutzen. Melde dich später in den Einstellungen an, um Betrachtungen zu nutzen und Käufe freizuschalten.';

  @override
  String get guestDialogContinue => 'Fortfahren';

  @override
  String get guestDialogLoginInstead => 'Stattdessen anmelden';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Konto gelöscht';

  @override
  String get accountDeleteSuccessBody =>
      'Dein Konto und die zugehörigen Daten wurden erfolgreich gelöscht.';

  @override
  String get accountDeleteSuccessClose => 'Schließen';

  @override
  String get accountDeleteErrorTitle => 'Konto konnte nicht gelöscht werden';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Erneute Authentifizierung wurde abgebrochen. Bitte melde dich erneut an und versuche das Löschen erneut.';

  @override
  String get accountDeleteReauthRequired =>
      'Das Löschen des Kontos erfordert eine kürzliche Anmeldung. Bitte melde dich ab, melde dich erneut an und versuche das Löschen erneut.';

  @override
  String get settingsDeletePermanentWarning =>
      'Diese Aktion ist endgültig und kann nicht rückgängig gemacht werden. Alle Daten, die mit deinem Konto verbunden sind, werden gelöscht.';

  @override
  String get dailyGraceTitle => 'Tägliche Führung';

  @override
  String get dailyGraceScriptureLabel => 'VERS DES TAGES';

  @override
  String get dailyGraceSaintLabel => 'FIGUR DER WOCHE';

  @override
  String get dailyGraceReflectionLabel => 'ABEND-BETRACHTUNG';

  @override
  String get dailyGraceCopiedToast => 'Vers in die Zwischenablage kopiert';

  @override
  String get locationConsentLabel =>
      'Erlaube Ayara, meinen Standort für Qibla-Richtung und Gebetszeiten zu verwenden';

  @override
  String get locationConsentHint =>
      'Wird nur für diese Funktionen verwendet. Dein Standort wird niemals freigegeben oder gespeichert.';

  @override
  String get askPageTitle => 'Frag Ayara';

  @override
  String get askPageDescription =>
      'Stelle eine Frage zu Glauben, Gebet, Leben oder islamischer Praxis und erhalte Führung, die in dem Quran und den Lehren des Ahl al-Bayt verwurzelt ist.';

  @override
  String get askPageInputHint => 'Tippe deine Frage hier ein…';

  @override
  String get askPageSubmitCta => 'Fragen';

  @override
  String get askPageInputEmptyError => 'Bitte schreibe zuerst eine Frage.';

  @override
  String get askResultYourQuestion => 'Deine Frage';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'In Richtung Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Drehe dein Telefon, bis die goldene Nadel nach oben zeigt.\nDiese Richtung zeigt auf die Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-Signal ist schwach. Gehe nach draußen und tippe Erneut versuchen.';

  @override
  String get qiblaRetry => 'Erneut versuchen';

  @override
  String get qiblaTitle => 'Qibla-Richtung';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km bis Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Standort erforderlich';

  @override
  String get qiblaLocationNeededBody =>
      'Erlaube Standortzugriff, damit Ayara die Richtung der Kaaba in Makkah von dort aus, wo du bist, berechnen kann.';

  @override
  String get qiblaOpenSettings => 'Einstellungen öffnen';

  @override
  String get qiblaCompassLoading => 'Deine Position wird ermittelt…';

  @override
  String get qiblaTowardMecca => 'In Richtung Makkah';

  @override
  String get prayerTimesTitle => 'Gebetszeiten';

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
  String get prayerTimesLocationNeededTitle => 'Standort erforderlich';

  @override
  String get prayerTimesLocationNeededBody =>
      'Erlaube Standortzugriff, damit Ayara genaue Gebetszeiten für deine Stadt berechnen kann.';

  @override
  String get prayerTimesNextLabel => 'Nächster';

  @override
  String get prayerTimesDoneLabel => 'Fertig';

  @override
  String get monthlyPrayerTimesTitle => 'Monatliche Gebetszeiten';

  @override
  String get monthlyPrayerTimesViewButton => 'Ganzen Monat anzeigen';

  @override
  String get monthlyPrayerTimesNextMonth => 'Nächster Monat';

  @override
  String get monthlyPrayerTimesDayHeader => 'Tag';

  @override
  String get sharePrayerTimes => 'Gebetszeiten teilen';

  @override
  String get notificationsSectionTitle => 'Benachrichtigungen';

  @override
  String get notificationsSectionSubtitle =>
      'Gebetserinnerungen, Kalenderereignisse und mehr';

  @override
  String get dailyReflectionReminderTitle => 'Tägliche Betrachtung';

  @override
  String get dailyReflectionReminderDescription =>
      'Eine sanfte tägliche Erinnerung, um Ayara zu öffnen und dich mit deinem Glauben zu verbinden.';

  @override
  String get dailyReflectionReminderEnable => 'Tägliche Erinnerung aktivieren';

  @override
  String get dailyReflectionReminderTimeLabel => 'Erinnerungszeit';

  @override
  String get prayerNotificationsTitle => 'Gebetserinnerungen';

  @override
  String get prayerNotificationsDescription =>
      'Erhalte eine sanfte Erinnerung vor jeder Gebetszeit, um dich während des Tages verbunden zu halten.';

  @override
  String get prayerNotificationsEnable => 'Gebetserinnerungen aktivieren';

  @override
  String get prayerNotificationsOpenSettings =>
      'Benachrichtigungseinstellungen öffnen';

  @override
  String get prayerNotificationsDenied => 'Benachrichtigungen sind deaktiviert';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gehe zu den Einstellungen und erlaube Benachrichtigungen für Ayara, um Gebetszeitenerinnerungen zu erhalten.';

  @override
  String get notificationsConsentLabel =>
      'Benachrichtigungen für Gebetszeiten erlauben';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Morgengebet';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ist das Gebet der Morgen des Ahl al-Bayt. Imam Ali (AS) sagte: Schütze das Morgengebet wie dein kostbarstes Gut. Stehe auf, reinige dich und stehe vor Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Mittagsgebet';

  @override
  String get prayerNotifBodyDhuhr =>
      'Die Imame des Ahl al-Bayt schätzten jeden Moment der Erinnerung. Unterbreche deinen Tag, vereinige Dhuhr mit Asr, falls nötig, und richte dein Herz zurück auf Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Nachmittagsgebet';

  @override
  String get prayerNotifBodyAsr =>
      'Schütze das Gebet, denn es ist der Bund zwischen dir und Allah. Die Zeit für Asr ist gekommen — lass sie nicht ohne Erinnerung vorbeiziehen.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sonnenuntergangsgebet';

  @override
  String get prayerNotifBodyMaghrib =>
      'Die Sonne ist untergegangen — ein Moment, den der Ahl al-Bayt für die Bittgebet als heilig erachtete. Verrichte Maghrib und öffne deine Hände zu Allah in Dua, bevor die Nacht beginnt.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nachtgebet';

  @override
  String get prayerNotifBodyIsha =>
      'Beende deinen Tag in der Gesellschaft Allahs. Die Imame ermutigten Salat al-Layl nach Isha — aber zuerst, vollende dein Isha und schließe den Tag mit Seiner Erinnerung.';

  @override
  String get outOfReflectionsBannerText =>
      'Du hast alle deine Betrachtungen verbraucht';

  @override
  String get outOfReflectionsBannerCta => 'Mehr bekommen';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tippe auf den Kreis zum Zählen';

  @override
  String get dhikrResetButton => 'Zurücksetzen';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Du hast 100 Erinnerungen an Allah vervollständigt. Möge sie ein Licht für dein Herz sein.';

  @override
  String get disclaimerTitle => 'Über die Führung dieser App';

  @override
  String get disclaimerBody =>
      'Ayara bietet islamische Betrachtungen, Erinnerungen und spirituelle Inhalte, um deine persönliche Glaubensreise zu unterstützen, verwurzelt im Quran und den Lehren des Ahl al-Bayt. Dieser Inhalt wird nur zu allgemeinen Informations- und Inspirationszwecken angeboten.\n\nAyara ersetzt nicht qualifizierte Gelehrsamkeit.\nDie Führung in dieser App ist kein Ersatz für einen gelehrten islamischen Gelehrten, Marja\' oder theologisch ausgebildeten Lehrer. Im schiitischen Islam ist die religiöse Führung in der Ja\'fari-Schule der Rechtswissenschaft (Fiqh) und der Tradition des Folgverhältnisses zu einem lebenden Marja\' (Quelle der Nachahmung) — einem qualifizierten Juristen, dessen Urteile Gläubige in der religiösen Praxis leiten — verwurzelt. Wenn du Fragen zu religiösen Urteilen, Halal- und Haram-Angelegenheiten oder persönlichen religiösen Pflichten hast, wende dich bitte an einen qualifizierten Marja\' oder einen Gelehrten in deiner Gemeinde.\n\nDiese App gibt keine religiösen Urteile ab.\nAyara macht keine verbindlichen Bestimmungen in Fiqh- oder persönlichen religiösen Pflichten. Nichts hier sollte als Fatwa oder bindende religiöse Anweisung behandelt werden.\n\nDie Zentralität des Ahl al-Bayt.\nIm schiitischen Islam sind der Prophet Muhammad ﷺ und sein gereinigtes Haus — der Ahl al-Bayt — die maßgeblichen Führer der islamischen Gemeinde nach dem Quran. Die zwölf Imame des Ahl al-Bayt sind die göttlich bestellten Ausleger der islamischen Lehre. Der Inhalt dieser App spiegelt diese Tradition wider und versucht, sie treu zu ehren.\n\nGemeindeangelegenheiten.\nDiese App versucht, dein Engagement mit dem Glauben zu fördern, während sie die wichtige Rolle deiner lokalen Moschee, des islamischen Zentrums und der religiösen Gemeinde zutiefst respektiert. Wir ermutigen dich, mit qualifizierten Lehrern in deiner Nähe verbunden zu bleiben und von ihnen zu lernen.';

  @override
  String get disclaimerClose => 'Ich verstehe';

  @override
  String get disclaimerInfoTooltip => 'Über die Führung dieser App';

  @override
  String get disclaimerSettingsSubtitle =>
      'Nur für allgemeine Informationszwecke. Tippe zum Lesen des vollständigen Haftungsausschlusses.';

  @override
  String get disclaimerSectionHeader => 'Haftungsausschluss für Führung';

  @override
  String get navHome => 'Startseite';

  @override
  String get navReflect => 'Betrachtung';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'HEUTE';

  @override
  String get dashboardComingUp => 'Kommt bald';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tage',
      one: 'Tag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Schnellzugriff';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Führung';

  @override
  String get quickActionPrayerTimes => 'Gebetszeiten';

  @override
  String get askAyaraTitle => 'Frag Ayara';

  @override
  String get askAyaraSubtitle =>
      'Stelle eine islamische Frage und erhalte eine durchdachte, geführte Antwort.';

  @override
  String get askAyaraHint => 'z.B. Was ist die Bedeutung des Ramadan?';

  @override
  String get askAyaraSubmit => 'Fragen';

  @override
  String get wisdomOfTheDayTitle => 'Weisheit des Tages';

  @override
  String get calendarScreenTitle => 'Islamischer Kalender';

  @override
  String get calendarUpcomingOccasions => 'Bevorstehende Ereignisse';

  @override
  String get calendarOccasionRemindersTitle => 'Ereigniserinnerungen';

  @override
  String get calendarOccasionRemindersHint =>
      'Benachrichtigungen am Abend vor jedem Ereignis';

  @override
  String get calendarNotifPermissionDenied =>
      'Benachrichtigungsberechtigung verweigert. Aktiviere sie in den Geräteeinstellungen.';

  @override
  String get calendarNoEvents => 'Keine anstehenden Ereignisse gefunden.';

  @override
  String get calendarAddToPhone => 'In den Telefon-Kalender hinzufügen';

  @override
  String get calendarAddedToPhone => 'In den Kalender hinzugefügt';

  @override
  String get calendarCountdownToday => 'HEUTE';

  @override
  String get calendarCountdownTomorrow => 'MORGEN';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days Tagen';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mär';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mai';

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
  String get calendarMonthDec => 'Dez';

  @override
  String get calendarSeasonMuharramEarly =>
      'Tage von Muharram — denke an Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — Tage der Trauer und Betrachtung';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — vierzig Tage des Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Der Weg zu Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — die Morgenröte der Offenbarung';

  @override
  String get calendarSeasonMidShaban =>
      'Mitte Sha\'ban — Geburtstag von Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — der Monat des Quran';

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
  String get duasScreenTitle => 'Duas & Ziyarat';

  @override
  String get duasSearchHint => 'Suche Duas, Ziyarat…';

  @override
  String get duasFilterAll => 'Alles';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Duas & Ziyarat',
      one: '$count Dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Keine Duas gefunden.';

  @override
  String get duaCategoryDaily => 'Täglich';

  @override
  String get duaCategoryWeekly => 'Wöchentlich';

  @override
  String get duaCategoryOccasions => 'Ereignisse';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Geburt';

  @override
  String get eventTypeMartyrdom => 'Martyrium';

  @override
  String get eventTypeOccasion => 'Ereignis';

  @override
  String get duaCopyTooltip => 'Übersetzung kopieren';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Übersetzung';

  @override
  String get duaAskAiLabel => 'Frag Ayara, um diese Dua zu erklären';

  @override
  String get duaAskAiLockedLabel => 'Frag Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-Erklärungen sind für Wilaya-Mitglieder verfügbar. Aktualisiere in den Einstellungen.';

  @override
  String duaAiComingSoon(String name) {
    return 'Frag Ayara nach \"$name\" — kommt bald!';
  }

  @override
  String get duaCopiedToast => 'Dua in die Zwischenablage kopiert.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ist der Größte';

  @override
  String get tasbihAlhamdulillahMeaning => 'Alles Lob gebührt Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gepriesen sei Allah';

  @override
  String get tasbihResetTooltip => 'Zurücksetzen';

  @override
  String get tasbihCompleteTitle => 'Tasbih fertig';

  @override
  String get tasbihCompleteMessage => 'Möge Allah deinen Dhikr annehmen.';

  @override
  String get tasbihTapHint => 'Tippe überall zum Zählen';

  @override
  String get tasbihatScreenTitle => 'Gebetsführer';

  @override
  String get tasbihatScreenSubtitle => 'DIE GEBETSVERHERRLICHUNGEN';

  @override
  String get tasbihatScreenDescription =>
      'Ein vollständiger Leitfaden zu den Verherrlichungen, die während und nach den Tagesgebeten rezitiert werden — nach der Tradition des Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Rezitiert während der 3. & 4. Rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In der schiitischen Rechtswissenschaft ersetzt die Tasbiḥāt al-Arbaʿa in der 3. und 4. Rakʿah von Dhuhr, Asr, Maghrib und Isha die Surah al-Fatiha. Es ist obligatorisch (wājib), es einmal zu rezitieren, und empfohlen (mustaḥabb), es dreimal zu rezitieren.';

  @override
  String get tasbihatArba3Translation =>
      'Gepriesen sei Allah · Alles Lob gebührt Allah\nEs gibt keinen Gott außer Allah · Allah ist der Größte';

  @override
  String get tasbihatArba3CompleteTitle => 'Rezitation vollständig';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Möge dein Gebet angenommen werden — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tippe nach jeder Rezitation';

  @override
  String get tasbihatZahraSubtitle => 'Nach jedem Gebet · 100 Perlen';

  @override
  String get tasbihatZahraOriginLabel => 'Ursprung';

  @override
  String get tasbihatZahraHadith =>
      'Frau Fatima al-Zahra (sa) bat den Propheten ﷺ um einen Diener. Er sagte: \"Soll ich dich nicht zu etwas Besserem führen? Rezitiere Subḥānallāh 33 mal, Alḥamdulillāh 33 mal und Allāhu Akbar 34 mal nach jedem Gebet. Das ist besser für dich als ein Diener.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Tasbīḥ-Zähler öffnen';

  @override
  String get tasbihatDuasTitle => 'EMPFOHLENE DUAS';

  @override
  String get tasbihatDuasSubtitle => 'Nach Abschluss deines Gebets';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Nach jedem Pflichtgebet';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Wer Āyat al-Kursī nach jedem Pflichtgebet rezitiert, steht nichts zwischen ihm und dem Paradies außer dem Tod. Imam al-Bāqir (a) sagte, es ist unter den größten Versen im Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Nach jedem Gebet · versiegelt alle Bitten';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Das Senden von Salutationen auf den Propheten ﷺ und seine gereinigte Familie (Āl Muḥammad) wird empfohlen, um jede Dua zu versiegeln. Imam al-Ṣādiq (a) sagte: \"Jede Dua ist suspendiert, bis du ṣalawāt auf Muḥammad und seine Familie sendest.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Nach jedem Gebet · für den Imam unserer Zeit';

  @override
  String get tasbihatDuaFarajSource =>
      'Gelehrt von Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Ein Dua für das Wiedererscheinen von Imam al-Mahdī (af), dem zwölften Imam, gelehrt von seinem Vater. Es wird oft von vielen Schiiten nach dem Gebet als Akt der Hingabe an den lebenden Imam rezitiert.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ der Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Nach Maghrib & Isha · besonders empfohlen';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sagte, dass das Rezitieren von Tasbīḥ al-Zahrā nach Isha vor dem Schlafengehen besser ist als 1000 Rakʿah optionalen Gebets. Sein Licht steigt zu den Himmeln auf.';

  @override
  String get tasbihFatimaGiftPre => 'Ein Geschenk des Propheten';

  @override
  String get tasbihFatimaGiftPost => 'rezitiert nach jedem Gebet';

  @override
  String get prayerTrackerTitle => 'GEBETS-TRACKER';

  @override
  String get prayerTrackerPrayed => 'Gebetet';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count Tage Erfolgsserie';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Alle Gebete heute vollständig. Möge Allah annehmen.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Heute abgeschlossen';

  @override
  String get dhikrTrackerNotDoneToday => 'Heute nicht gemacht';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count Tage Erfolgsserie';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-Erinnerung';

  @override
  String get dhikrReminderDescription =>
      'Eine sanfte tägliche Erinnerung, um dein Tasbīḥ al-Zahrā (SA) zu rezitieren.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ-Erinnerung aktivieren';

  @override
  String get dhikrReminderTimeLabel => 'Erinnerungszeit';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Tägliches Hadith';

  @override
  String get hadithLabelArabic => 'ARABISCH';

  @override
  String get hadithLabelTranslation => 'ÜBERSETZUNG';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Dieses Hadith teilen';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Vorherig';

  @override
  String get hadithNavNext => 'Nächster';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Die Vierzehn Unfehlbaren';

  @override
  String get imamsScreenSubtitle =>
      'Der Prophet, Lady Fatima und die zwölf Imame – die reinen und unfehlbaren Führer im Zwölfer-Schiismus';

  @override
  String get imamLabelBorn => 'Geboren';

  @override
  String get imamLabelMartyrdom => 'Martyrium';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIE';

  @override
  String get imamSectionFamousSaying => 'BERÜHMTER AUSSPRUCH';

  @override
  String get imamRoleProphet => 'Der letzte Prophet';

  @override
  String get imamRoleInfallible => 'Der Unfehlbare';

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
  String get duaAudioScreenTitle => 'Duas anhören';

  @override
  String get duaAudioScreenSubtitle =>
      'Wähle eine Dua zum Anhören. Tippe auf die Kachel, um zu spielen oder zu pausieren.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio für diese Dua ist in einer kommenden Aktualisierung verfügbar.';

  @override
  String get duaAudioClose => 'Schließen';

  @override
  String get duaAudioError =>
      'Audio konnte nicht geladen werden. Bitte überprüfe deine Verbindung.';

  @override
  String get duaAudioMetaTransmittedBy => 'Übertragen von';

  @override
  String get duaAudioMetaOccasion => 'Ereignis';

  @override
  String get duaAudioMetaDuration => 'Dauer';

  @override
  String get quickActionDailyHadith => 'Tägliches Hadith';

  @override
  String get quickAction14Masumeen => 'Vierzehn Unfehlbare';

  @override
  String get quickActionListenDuas => 'Anhören';

  @override
  String get quickActionTasbihat => 'Gebetsführer';

  @override
  String get pilgrimageSectionTitle => 'Die heilige Reise';

  @override
  String get pilgrimageSectionSubtitle =>
      'Vollständige Führungen zu Hajj & Umrah — die Pilgerfahrt zum Heiligen Haus Allahs in Makkah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Die fünfte Säule des Islam';

  @override
  String get hajjCardDescription =>
      'Die große jährliche Pilgerfahrt — obligatorisch einmal im Leben für jeden fähigen Muslim';

  @override
  String get hajjScreenTitle => 'Hajj-Führer';

  @override
  String get hajjScreenSubtitle =>
      'Schritt-für-Schritt-Anleitung zur großen Pilgerfahrt';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Die kleinere Pilgerfahrt';

  @override
  String get umrahCardDescription =>
      'Eine tiefgreifend lohnende spirituelle Reise, die jederzeit im Jahr durchgeführt werden kann';

  @override
  String get umrahScreenTitle => 'Umrah-Führer';

  @override
  String get umrahScreenSubtitle =>
      'Schritt-für-Schritt-Anleitung zur kleineren Pilgerfahrt';

  @override
  String get pilgrimageStepsTitle => 'Rituale & Schritte';

  @override
  String get pilgrimageImportantNotesTitle => 'Wichtige Hinweise';

  @override
  String get pilgrimageDuaTitle => 'Dua für diesen Schritt';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Hinweis';

  @override
  String get pilgrimageComplete => '✓ Abgeschlossen';

  @override
  String get pilgrimageMarkDone => 'Als abgeschlossen markieren';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done von $total Schritten';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Schiitische Pilger';

  @override
  String get pilgrimageShiaNoteBody =>
      'Viele schiitische Pilger reisen auch nach Medina für die Ziyarat des Propheten Muhammad (SAW) in der Masjid al-Nabawi und die Gräber in Jannat al-Baqi. Diese Besuche haben eine tiefe spirituelle Bedeutung, obwohl sie selbst keine Riten des Hajj sind.';

  @override
  String get hajjIntro =>
      'Der Hajj ist die fünfte Säule des Islam, die für jeden Muslim, der körperlich und finanziell dazu in der Lage ist, einmal im Leben verpflichtend ist. Für die meisten schiitischen Pilger heute bedeutet dies Hajj al-Tamattu\', der im Monat Dhul Hijjah in den Fußstapfen von Prophet Ibrahim (AS), seinem Sohn Ismail (AS) und Lady Hajar vollzogen wird. Dieser Leitfaden folgt dem ja\'fariischen Rahmen der Riten, während die Ziyarat in Medina eine tief geschätzte Reise vor oder nach dem Hajj bleibt.';

  @override
  String get umrahIntro =>
      'Umrah ist die kleinere Pilgerfahrt nach Makkah und kann, im Gegensatz zu Hajj, jederzeit im Jahr durchgeführt werden. Obwohl nicht obligatorisch, trägt sie enorme spirituelle Belohnung und wird als sehr empfohlener Akt der Anbetung angesehen. Sie teilt mehrere Rituale mit Hajj, ist aber kürzer und besteht aus vier Hauptriten.';

  @override
  String get voiceInputTitle => 'Sprachsteuerung';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Sprich deine Eingabe zu Ask Ayara statt zu tippen.';

  @override
  String get voiceInputMicDenied =>
      'Zugriff auf das Mikrofon wurde verweigert.';

  @override
  String get voiceInputSpeak => 'Stattdessen sprechen';

  @override
  String get voiceInputListening => 'Höre zu…';

  @override
  String get voiceInputPermissionDenied =>
      'Zugriff auf das Mikrofon ist für die Sprachsteuerung erforderlich.';
}

/// The translations for German, as used in Switzerland (`de_CH`).
class AppLocalizationsDeCh extends AppLocalizationsDe {
  AppLocalizationsDeCh() : super('de_CH');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Wähle deine Sprache';

  @override
  String get languageSelectSub =>
      'Du kannst dies später in den Einstellungen ändern';

  @override
  String get actionContinue => 'Weiter';

  @override
  String get languageSuggestedHeader => 'Empfohlen';

  @override
  String get languageAllHeader => 'Alle Sprachen';

  @override
  String get languageSuggestedBadge => 'Empfohlen';

  @override
  String get languageSearchHint => 'Suchen…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Tägliche Führung';

  @override
  String get categorySlot02 => 'Glaube & Vertrauen';

  @override
  String get categorySlot03 => 'Gebet-Betrachtung';

  @override
  String get categorySlot04 => 'Geduld & Hoffnung';

  @override
  String get categorySlot05 => 'Um Vergebung bitten';

  @override
  String get categorySlot06 => 'Barmherzigkeit & Mitgefühl';

  @override
  String get categorySlot07 => 'Glaube & Stärke';

  @override
  String get categorySlot08 => 'Dankbares Herz';

  @override
  String get categorySlot09 => 'Lebenszweck';

  @override
  String get categorySlot10 => 'Familienbande';

  @override
  String get categorySlot11 => 'Innerer Frieden';

  @override
  String get categorySlot12 => 'Prophetische Weisheit';

  @override
  String get categorySlot13 => 'Guter Charakter';

  @override
  String get categorySlot14 => 'Versuchung widerstehen';

  @override
  String get categorySlot15 => 'Abend-Dhikr';

  @override
  String get categoryCustom => 'Persönliche Betrachtung';

  @override
  String get dhikrMeaningSubhanallah => 'Gepriesen sei Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Alles Lob gebührt Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah ist der Größte';

  @override
  String get quranVerseHeartAtRest =>
      'Wahrlich, in der Erinnerung an Allah finden die Herzen Ruhe.';

  @override
  String get promptHint =>
      'Tippe auf eine Kategorie für islamische Führung und Betrachtung';

  @override
  String get currentLanguage => 'Aktuelle Sprache';

  @override
  String get settingsLanguage => 'Spracheinstellungen';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get chooseLanguage => 'Wähle deine Sprache';

  @override
  String get continueCta => 'Weiter';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Wörter',
      one: '$count Wort',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Optionen';

  @override
  String get newCta => 'Neu';

  @override
  String get actionsTitle => 'Was möchtest du tun?';

  @override
  String get copy => 'Kopieren';

  @override
  String get share => 'Teilen';

  @override
  String get close => 'Schließen';

  @override
  String get copiedToast => 'In die Zwischenablage kopiert';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Konnte keine neue Antwort generieren';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nMöchtest du es erneut versuchen?';
  }

  @override
  String get cancelCta => 'Abbrechen';

  @override
  String get retryCta => 'Erneut versuchen';

  @override
  String get authTitle => 'Erstelle dein Konto';

  @override
  String get continueAsGuest => 'Als Gast fortfahren';

  @override
  String get signInGoogle => 'Mit Google anmelden';

  @override
  String get signInApple => 'Mit Apple anmelden';

  @override
  String get signInEmail => 'Mit E-Mail anmelden';

  @override
  String get upgradeWithApple => 'Mit Apple fortfahren';

  @override
  String get mustAccept =>
      'Du musst den Nutzungsbedingungen zustimmen und die Datenschutzrichtlinie anerkennen.';

  @override
  String get termsLabel => 'Ich akzeptiere die Nutzungsbedingungen';

  @override
  String get privacyLabel => 'Ich habe die Datenschutzrichtlinie gelesen';

  @override
  String get marketingOptIn =>
      'Ich stimme zu, Nachrichten und Angebote zu erhalten';

  @override
  String get openTerms => 'Nutzungsbedingungen';

  @override
  String get openPrivacy => 'Datenschutzrichtlinie';

  @override
  String get accountSection => 'Konto';

  @override
  String get guestMode => 'Gastmodus';

  @override
  String get signedIn => 'Angemeldet';

  @override
  String get upgradeHint =>
      'Speichere deine Betrachtungen auf mehreren Geräten, indem du ein Konto erstellst.';

  @override
  String get upgradeWithGoogle => 'Mit Google fortfahren';

  @override
  String get signOut => 'Abmelden';

  @override
  String get snackUpgraded => 'Konto mit Google aktualisiert ✅';

  @override
  String get snackSignedIn => 'Mit Google angemeldet ✅';

  @override
  String get snackSignedOut => 'Abgemeldet';

  @override
  String get snackSignedInApple => 'Mit Apple angemeldet ✅';

  @override
  String get snackSignedInGoogle => 'Mit Google angemeldet ✅';

  @override
  String get snackUpgradedApple => 'Konto mit Apple aktualisiert ✅';

  @override
  String get snackUpgradedGoogle => 'Konto mit Google aktualisiert ✅';

  @override
  String get historyTitle => 'Frühere Betrachtungen';

  @override
  String get historyOpenCta => 'Frühere Betrachtungen';

  @override
  String get historyEmpty => 'Noch keine gespeicherten Betrachtungen.';

  @override
  String get historyDeleteTitle => 'Betrachtung löschen?';

  @override
  String get historyDeleteBody =>
      'Dies wird das ausgewählte Element dauerhaft entfernen.';

  @override
  String get deleteCta => 'Löschen';

  @override
  String get historyButton => 'Frühere Betrachtungen';

  @override
  String get historyEmptyTitle => 'Noch keine Betrachtungen';

  @override
  String get historyEmptyBody =>
      'Generiere zuerst etwas — deine gespeicherten Elemente werden hier angezeigt.';

  @override
  String get historyDelete => 'Löschen';

  @override
  String get footerTitle => 'Mit Wilaya, Iman und Sabr';

  @override
  String get footerSubtitle => 'Ein Gebet nach dem anderen';

  @override
  String get genericErrorSnack =>
      'Etwas ist schiefgelaufen — bitte versuche es in einem Moment erneut.';

  @override
  String get upgradeAccountCta =>
      'Speichere deine Betrachtungen auf mehreren Geräten – erstelle ein Konto';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get exportData => 'Meine Daten exportieren';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Ganz ruhig 🐯\nAyara braucht einen Moment vor dem nächsten…';

  @override
  String get rateDailyLimit =>
      'Du hast deine Betrachtungen für jetzt aufgebraucht.\nHole dir mehr Betrachtungen oder aktualisiere auf Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Du hast alle deine Betrachtungen verbraucht.\nAufladung oder Aktualisierung auf Wilaya zum Fortfahren.';

  @override
  String get rateGraceCreditsExhausted =>
      'Du hast deine Betrachtungen für jetzt aufgebraucht.\nHole dir mehr Betrachtungen oder aktualisiere auf Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya schaltet Premium-Funktionen, zukünftige Kategorien und ein spezielles Badge frei.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Deine Betrachtungen sind im Moment leer. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Konnte deine Betrachtungen nicht überprüfen: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Etwas ist beim Überprüfen deiner Betrachtungen schiefgelaufen.';

  @override
  String get aiFallbackGeneric =>
      'Etwas ist schiefgelaufen — bitte versuche es in einem Moment erneut.';

  @override
  String get limitSectionTitle => 'Betrachtungen';

  @override
  String get limitTodayLabel => 'Nutzung';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Verbleibende Betrachtungen: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Wird geladen…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Betrachtungen';

  @override
  String get aiLimitSubtitle =>
      'Jede Antwort verbraucht 1 Betrachtung. Standard enthält Starter-Betrachtungen. Wilaya schaltet Premium-Kategorien frei und ermöglicht Aufladungen.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total Betrachtungen verwendet';
  }

  @override
  String get creditsSectionTitle => 'Betrachtungen';

  @override
  String get creditsUsageLabel => 'Nutzung';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Verbleibende Betrachtungen: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Wird geladen…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Betrachtungen';

  @override
  String get creditsSubtitle =>
      'Jede Antwort verbraucht 1 Betrachtung. Standard enthält Starter-Betrachtungen. Wilaya schaltet Premium-Kategorien frei und ermöglicht Aufladungen.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total Betrachtungen verwendet';
  }

  @override
  String get settingsDeleteTitle => 'Konto löschen';

  @override
  String get settingsDeleteDescription =>
      'Lösche dein Konto und alle zugehörigen Daten dauerhaft.';

  @override
  String get settingsDeleteButtonLabel => 'Mein Konto löschen';

  @override
  String get settingsDeleteDialogTitle => 'Konto löschen?';

  @override
  String get settingsDeleteDialogBody =>
      'Diese Aktion ist endgültig und kann nicht rückgängig gemacht werden.\n\nAlle deine Chats, Verlauf und Kontoinformationen werden gelöscht.';

  @override
  String get settingsDeleteDialogCancel => 'Abbrechen';

  @override
  String get settingsDeleteDialogConfirm => 'Löschen';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter-Betrachtungen verwendet';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Die Starter-Betrachtungen für dieses Gerät wurden verwendet. Aktualisiere auf Wilaya oder kaufe mehr Betrachtungen, um fortzufahren.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Starter-Betrachtungen verwendet';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Die Starter-Betrachtungen für dieses Gerät wurden verwendet. Aktualisiere auf Wilaya oder kaufe mehr Betrachtungen, um fortzufahren.';

  @override
  String get deviceBoundError =>
      'Dieses Gerät ist bereits mit einem anderen Konto verknüpft. Bitte melde dich mit dem ursprünglichen Konto an.';

  @override
  String get premiumTitle => 'Wilaya-Modus';

  @override
  String get premiumSubtitleBasic =>
      'Entsperre das vollständige Ayara-Erlebnis.';

  @override
  String get premiumSubtitlePremium =>
      'Du bist im Wilaya-Modus. Brauchst du mehr Betrachtungen?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Aktueller Plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Betrachtungen: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Käufe sind im Moment nicht verfügbar.';

  @override
  String get premiumSignInToPurchase =>
      'Melde dich an, um Betrachtungen zu kaufen oder Wilaya freizuschalten.';

  @override
  String get premiumRestorePurchases => 'Käufe wiederherstellen';

  @override
  String get premiumProcessing => 'Wird verarbeitet…';

  @override
  String get premiumRestoreHintTitle =>
      'Hast du Wilaya oder Betrachtungen bereits auf diesem oder einem anderen Gerät gekauft?';

  @override
  String get premiumRestoreHintBody =>
      'Stelle deine Käufe wieder her, falls sie nicht angezeigt werden.';

  @override
  String get premiumBuyCredits200 => '200 Betrachtungen kaufen';

  @override
  String get premiumBuyCredits400 => '400 Betrachtungen kaufen';

  @override
  String get premiumBecomePremiumOneTime => 'Auf Wilaya-Modus aktualisieren';

  @override
  String get premiumTopupHint =>
      'Mit Wilaya kannst du dich jederzeit mit zusätzlichen Betrachtungen auffüllen.';

  @override
  String get premiumUpgradeCta => 'Aktualisieren';

  @override
  String get premiumRequiredForCategory =>
      'Diese Kategorie ist nur für Wilaya-Benutzer verfügbar. Aktualisiere in den Einstellungen, um auf alle Premium-Inhalte zuzugreifen.';

  @override
  String get premiumBenefitsBasic =>
      'Schalte Wilaya frei, um zusätzliche Betrachtungen zu erhalten, auf Premium-Kategorien zuzugreifen und jederzeit Führung zu erhalten.';

  @override
  String get premiumBenefitsPremium =>
      'Du bist im Wilaya-Modus. Falls die Betrachtungen niedrig sind, füge zusätzliche hinzu und fahre ohne Unterbrechungen fort.';

  @override
  String get premiumButtonBecomePremium => 'Schalte Wilaya frei';

  @override
  String get premiumButtonTopup1000 => '1000 Betrachtungen hinzufügen';

  @override
  String get premiumBadge => 'Wilaya aktiv';

  @override
  String get premiumLoadingStore => 'Store wird geladen…';

  @override
  String get premiumProductNotAvailable =>
      'Dieses Produkt ist im Store noch nicht verfügbar. Bitte versuche es später erneut.';

  @override
  String get premiumPurchaseError =>
      'Etwas ist beim Kauf schiefgelaufen. Bitte versuche es erneut.';

  @override
  String get premiumBuyCredits100 => '100 Betrachtungen hinzufügen';

  @override
  String get premiumFeatureLocked =>
      'Schalte Wilaya frei, um auf diese Funktion zuzugreifen.';

  @override
  String get lockedCategoriesHint =>
      'Einige Kategorien sind für Wilaya-Mitglieder reserviert. Schalte sie frei, um jede Betrachtung auf deiner Reise zu erkunden.';

  @override
  String get freePlanBlockedTitle =>
      'Du hast deine Starter-Betrachtungen aufgebraucht';

  @override
  String get freePlanBlockedBody =>
      'Du bist im Standard-Plan mit Starter-Betrachtungen und hast die Grenze erreicht. Um fortzufahren – und Premium-Kategorien freizuschalten – aktualisiere auf Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Siehe Wilaya-Optionen unten';

  @override
  String get graceBlockedTitle =>
      'Du hast deine Starter-Betrachtungen aufgebraucht';

  @override
  String get graceBlockedBody =>
      'Du bist im Standard-Plan mit Starter-Betrachtungen und hast die Grenze erreicht. Um fortzufahren – und Premium-Kategorien freizuschalten – aktualisiere auf Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Siehe Wilaya-Optionen unten';

  @override
  String get rateGuestMustSignIn =>
      'Melde dich an, um Ayara und deine Betrachtungen zu nutzen.';

  @override
  String get guestNoCreditsTitle => 'Gastmodus';

  @override
  String get guestNoCreditsBody =>
      'Als Gast kannst du die App durchsuchen, aber keine Betrachtungen nutzen. Melde dich später in den Einstellungen an, um Betrachtungen zu nutzen und Käufe freizuschalten.';

  @override
  String get guestDialogContinue => 'Fortfahren';

  @override
  String get guestDialogLoginInstead => 'Stattdessen anmelden';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Konto gelöscht';

  @override
  String get accountDeleteSuccessBody =>
      'Dein Konto und die zugehörigen Daten wurden erfolgreich gelöscht.';

  @override
  String get accountDeleteSuccessClose => 'Schließen';

  @override
  String get accountDeleteErrorTitle => 'Konto konnte nicht gelöscht werden';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Erneute Authentifizierung wurde abgebrochen. Bitte melde dich erneut an und versuche das Löschen erneut.';

  @override
  String get accountDeleteReauthRequired =>
      'Das Löschen des Kontos erfordert eine kürzliche Anmeldung. Bitte melde dich ab, melde dich erneut an und versuche das Löschen erneut.';

  @override
  String get settingsDeletePermanentWarning =>
      'Diese Aktion ist endgültig und kann nicht rückgängig gemacht werden. Alle Daten, die mit deinem Konto verbunden sind, werden gelöscht.';

  @override
  String get dailyGraceTitle => 'Tägliche Führung';

  @override
  String get dailyGraceScriptureLabel => 'VERS DES TAGES';

  @override
  String get dailyGraceSaintLabel => 'FIGUR DER WOCHE';

  @override
  String get dailyGraceReflectionLabel => 'ABEND-BETRACHTUNG';

  @override
  String get dailyGraceCopiedToast => 'Vers in die Zwischenablage kopiert';

  @override
  String get locationConsentLabel =>
      'Erlaube Ayara, meinen Standort für Qibla-Richtung und Gebetszeiten zu verwenden';

  @override
  String get locationConsentHint =>
      'Wird nur für diese Funktionen verwendet. Dein Standort wird niemals freigegeben oder gespeichert.';

  @override
  String get askPageTitle => 'Frag Ayara';

  @override
  String get askPageDescription =>
      'Stelle eine Frage zu Glauben, Gebet, Leben oder islamischer Praxis und erhalte Führung, die in dem Quran und den Lehren des Ahl al-Bayt verwurzelt ist.';

  @override
  String get askPageInputHint => 'Tippe deine Frage hier ein…';

  @override
  String get askPageSubmitCta => 'Fragen';

  @override
  String get askPageInputEmptyError => 'Bitte schreibe zuerst eine Frage.';

  @override
  String get askResultYourQuestion => 'Deine Frage';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'In Richtung Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Drehe dein Telefon, bis die goldene Nadel nach oben zeigt.\nDiese Richtung zeigt auf die Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-Signal ist schwach. Gehe nach draußen und tippe Erneut versuchen.';

  @override
  String get qiblaRetry => 'Erneut versuchen';

  @override
  String get qiblaTitle => 'Qibla-Richtung';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km bis Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Standort erforderlich';

  @override
  String get qiblaLocationNeededBody =>
      'Erlaube Standortzugriff, damit Ayara die Richtung der Kaaba in Makkah von dort aus, wo du bist, berechnen kann.';

  @override
  String get qiblaOpenSettings => 'Einstellungen öffnen';

  @override
  String get qiblaCompassLoading => 'Deine Position wird ermittelt…';

  @override
  String get qiblaTowardMecca => 'In Richtung Makkah';

  @override
  String get prayerTimesTitle => 'Gebetszeiten';

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
  String get prayerTimesLocationNeededTitle => 'Standort erforderlich';

  @override
  String get prayerTimesLocationNeededBody =>
      'Erlaube Standortzugriff, damit Ayara genaue Gebetszeiten für deine Stadt berechnen kann.';

  @override
  String get prayerTimesNextLabel => 'Nächster';

  @override
  String get prayerTimesDoneLabel => 'Fertig';

  @override
  String get monthlyPrayerTimesTitle => 'Monatliche Gebetszeiten';

  @override
  String get monthlyPrayerTimesViewButton => 'Ganzen Monat anzeigen';

  @override
  String get monthlyPrayerTimesNextMonth => 'Nächster Monat';

  @override
  String get monthlyPrayerTimesDayHeader => 'Tag';

  @override
  String get sharePrayerTimes => 'Gebetszeiten teilen';

  @override
  String get notificationsSectionTitle => 'Benachrichtigungen';

  @override
  String get notificationsSectionSubtitle =>
      'Gebetserinnerungen, Kalenderereignisse und mehr';

  @override
  String get dailyReflectionReminderTitle => 'Tägliche Betrachtung';

  @override
  String get dailyReflectionReminderDescription =>
      'Eine sanfte tägliche Erinnerung, um Ayara zu öffnen und dich mit deinem Glauben zu verbinden.';

  @override
  String get dailyReflectionReminderEnable => 'Tägliche Erinnerung aktivieren';

  @override
  String get dailyReflectionReminderTimeLabel => 'Erinnerungszeit';

  @override
  String get prayerNotificationsTitle => 'Gebetserinnerungen';

  @override
  String get prayerNotificationsDescription =>
      'Erhalte eine sanfte Erinnerung vor jeder Gebetszeit, um dich während des Tages verbunden zu halten.';

  @override
  String get prayerNotificationsEnable => 'Gebetserinnerungen aktivieren';

  @override
  String get prayerNotificationsOpenSettings =>
      'Benachrichtigungseinstellungen öffnen';

  @override
  String get prayerNotificationsDenied => 'Benachrichtigungen sind deaktiviert';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gehe zu den Einstellungen und erlaube Benachrichtigungen für Ayara, um Gebetszeitenerinnerungen zu erhalten.';

  @override
  String get notificationsConsentLabel =>
      'Benachrichtigungen für Gebetszeiten erlauben';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Morgengebet';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ist das Gebet der Morgen des Ahl al-Bayt. Imam Ali (AS) sagte: Schütze das Morgengebet wie dein kostbarstes Gut. Stehe auf, reinige dich und stehe vor Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Mittagsgebet';

  @override
  String get prayerNotifBodyDhuhr =>
      'Die Imame des Ahl al-Bayt schätzten jeden Moment der Erinnerung. Unterbreche deinen Tag, vereinige Dhuhr mit Asr, falls nötig, und richte dein Herz zurück auf Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Nachmittagsgebet';

  @override
  String get prayerNotifBodyAsr =>
      'Schütze das Gebet, denn es ist der Bund zwischen dir und Allah. Die Zeit für Asr ist gekommen — lass sie nicht ohne Erinnerung vorbeiziehen.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sonnenuntergangsgebet';

  @override
  String get prayerNotifBodyMaghrib =>
      'Die Sonne ist untergegangen — ein Moment, den der Ahl al-Bayt für die Bittgebet als heilig erachtete. Verrichte Maghrib und öffne deine Hände zu Allah in Dua, bevor die Nacht beginnt.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nachtgebet';

  @override
  String get prayerNotifBodyIsha =>
      'Beende deinen Tag in der Gesellschaft Allahs. Die Imame ermutigten Salat al-Layl nach Isha — aber zuerst, vollende dein Isha und schließe den Tag mit Seiner Erinnerung.';

  @override
  String get outOfReflectionsBannerText =>
      'Du hast alle deine Betrachtungen verbraucht';

  @override
  String get outOfReflectionsBannerCta => 'Mehr bekommen';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tippe auf den Kreis zum Zählen';

  @override
  String get dhikrResetButton => 'Zurücksetzen';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Du hast 100 Erinnerungen an Allah vervollständigt. Möge sie ein Licht für dein Herz sein.';

  @override
  String get disclaimerTitle => 'Über die Führung dieser App';

  @override
  String get disclaimerBody =>
      'Ayara bietet islamische Betrachtungen, Erinnerungen und spirituelle Inhalte, um deine persönliche Glaubensreise zu unterstützen, verwurzelt im Quran und den Lehren des Ahl al-Bayt. Dieser Inhalt wird nur zu allgemeinen Informations- und Inspirationszwecken angeboten.\n\nAyara ersetzt nicht qualifizierte Gelehrsamkeit.\nDie Führung in dieser App ist kein Ersatz für einen gelehrten islamischen Gelehrten, Marja\' oder theologisch ausgebildeten Lehrer. Im schiitischen Islam ist die religiöse Führung in der Ja\'fari-Schule der Rechtswissenschaft (Fiqh) und der Tradition des Folgverhältnisses zu einem lebenden Marja\' (Quelle der Nachahmung) — einem qualifizierten Juristen, dessen Urteile Gläubige in der religiösen Praxis leiten — verwurzelt. Wenn du Fragen zu religiösen Urteilen, Halal- und Haram-Angelegenheiten oder persönlichen religiösen Pflichten hast, wende dich bitte an einen qualifizierten Marja\' oder einen Gelehrten in deiner Gemeinde.\n\nDiese App gibt keine religiösen Urteile ab.\nAyara macht keine verbindlichen Bestimmungen in Fiqh- oder persönlichen religiösen Pflichten. Nichts hier sollte als Fatwa oder bindende religiöse Anweisung behandelt werden.\n\nDie Zentralität des Ahl al-Bayt.\nIm schiitischen Islam sind der Prophet Muhammad ﷺ und sein gereinigtes Haus — der Ahl al-Bayt — die maßgeblichen Führer der islamischen Gemeinde nach dem Quran. Die zwölf Imame des Ahl al-Bayt sind die göttlich bestellten Ausleger der islamischen Lehre. Der Inhalt dieser App spiegelt diese Tradition wider und versucht, sie treu zu ehren.\n\nGemeindeangelegenheiten.\nDiese App versucht, dein Engagement mit dem Glauben zu fördern, während sie die wichtige Rolle deiner lokalen Moschee, des islamischen Zentrums und der religiösen Gemeinde zutiefst respektiert. Wir ermutigen dich, mit qualifizierten Lehrern in deiner Nähe verbunden zu bleiben und von ihnen zu lernen.';

  @override
  String get disclaimerClose => 'Ich verstehe';

  @override
  String get disclaimerInfoTooltip => 'Über die Führung dieser App';

  @override
  String get disclaimerSettingsSubtitle =>
      'Nur für allgemeine Informationszwecke. Tippe zum Lesen des vollständigen Haftungsausschlusses.';

  @override
  String get disclaimerSectionHeader => 'Haftungsausschluss für Führung';

  @override
  String get navHome => 'Startseite';

  @override
  String get navReflect => 'Betrachtung';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'HEUTE';

  @override
  String get dashboardComingUp => 'Kommt bald';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tage',
      one: 'Tag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Schnellzugriff';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Führung';

  @override
  String get quickActionPrayerTimes => 'Gebetszeiten';

  @override
  String get askAyaraTitle => 'Frag Ayara';

  @override
  String get askAyaraSubtitle =>
      'Stelle eine islamische Frage und erhalte eine durchdachte, geführte Antwort.';

  @override
  String get askAyaraHint => 'z.B. Was ist die Bedeutung des Ramadan?';

  @override
  String get askAyaraSubmit => 'Fragen';

  @override
  String get wisdomOfTheDayTitle => 'Weisheit des Tages';

  @override
  String get calendarScreenTitle => 'Islamischer Kalender';

  @override
  String get calendarUpcomingOccasions => 'Bevorstehende Ereignisse';

  @override
  String get calendarOccasionRemindersTitle => 'Ereigniserinnerungen';

  @override
  String get calendarOccasionRemindersHint =>
      'Benachrichtigungen am Abend vor jedem Ereignis';

  @override
  String get calendarNotifPermissionDenied =>
      'Benachrichtigungsberechtigung verweigert. Aktiviere sie in den Geräteeinstellungen.';

  @override
  String get calendarNoEvents => 'Keine anstehenden Ereignisse gefunden.';

  @override
  String get calendarAddToPhone => 'In den Telefon-Kalender hinzufügen';

  @override
  String get calendarAddedToPhone => 'In den Kalender hinzugefügt';

  @override
  String get calendarCountdownToday => 'HEUTE';

  @override
  String get calendarCountdownTomorrow => 'MORGEN';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days Tagen';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mär';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mai';

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
  String get calendarMonthDec => 'Dez';

  @override
  String get calendarSeasonMuharramEarly =>
      'Tage von Muharram — denke an Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — Tage der Trauer und Betrachtung';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — vierzig Tage des Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Der Weg zu Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — die Morgenröte der Offenbarung';

  @override
  String get calendarSeasonMidShaban =>
      'Mitte Sha\'ban — Geburtstag von Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — der Monat des Quran';

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
  String get duasScreenTitle => 'Duas & Ziyarat';

  @override
  String get duasSearchHint => 'Suche Duas, Ziyarat…';

  @override
  String get duasFilterAll => 'Alles';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Duas & Ziyarat',
      one: '$count Dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Keine Duas gefunden.';

  @override
  String get duaCategoryDaily => 'Täglich';

  @override
  String get duaCategoryWeekly => 'Wöchentlich';

  @override
  String get duaCategoryOccasions => 'Ereignisse';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Geburt';

  @override
  String get eventTypeMartyrdom => 'Martyrium';

  @override
  String get eventTypeOccasion => 'Ereignis';

  @override
  String get duaCopyTooltip => 'Übersetzung kopieren';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Übersetzung';

  @override
  String get duaAskAiLabel => 'Frag Ayara, um diese Dua zu erklären';

  @override
  String get duaAskAiLockedLabel => 'Frag Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-Erklärungen sind für Wilaya-Mitglieder verfügbar. Aktualisiere in den Einstellungen.';

  @override
  String duaAiComingSoon(String name) {
    return 'Frag Ayara nach \"$name\" — kommt bald!';
  }

  @override
  String get duaCopiedToast => 'Dua in die Zwischenablage kopiert.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah ist der Größte';

  @override
  String get tasbihAlhamdulillahMeaning => 'Alles Lob gebührt Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gepriesen sei Allah';

  @override
  String get tasbihResetTooltip => 'Zurücksetzen';

  @override
  String get tasbihCompleteTitle => 'Tasbih fertig';

  @override
  String get tasbihCompleteMessage => 'Möge Allah deinen Dhikr annehmen.';

  @override
  String get tasbihTapHint => 'Tippe überall zum Zählen';

  @override
  String get tasbihatScreenTitle => 'Gebetsführer';

  @override
  String get tasbihatScreenSubtitle => 'DIE GEBETSVERHERRLICHUNGEN';

  @override
  String get tasbihatScreenDescription =>
      'Ein vollständiger Leitfaden zu den Verherrlichungen, die während und nach den Tagesgebeten rezitiert werden — nach der Tradition des Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Rezitiert während der 3. & 4. Rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In der schiitischen Rechtswissenschaft ersetzt die Tasbiḥāt al-Arbaʿa in der 3. und 4. Rakʿah von Dhuhr, Asr, Maghrib und Isha die Surah al-Fatiha. Es ist obligatorisch (wājib), es einmal zu rezitieren, und empfohlen (mustaḥabb), es dreimal zu rezitieren.';

  @override
  String get tasbihatArba3Translation =>
      'Gepriesen sei Allah · Alles Lob gebührt Allah\nEs gibt keinen Gott außer Allah · Allah ist der Größte';

  @override
  String get tasbihatArba3CompleteTitle => 'Rezitation vollständig';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Möge dein Gebet angenommen werden — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tippe nach jeder Rezitation';

  @override
  String get tasbihatZahraSubtitle => 'Nach jedem Gebet · 100 Perlen';

  @override
  String get tasbihatZahraOriginLabel => 'Ursprung';

  @override
  String get tasbihatZahraHadith =>
      'Frau Fatima al-Zahra (sa) bat den Propheten ﷺ um einen Diener. Er sagte: \"Soll ich dich nicht zu etwas Besserem führen? Rezitiere Subḥānallāh 33 mal, Alḥamdulillāh 33 mal und Allāhu Akbar 34 mal nach jedem Gebet. Das ist besser für dich als ein Diener.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Tasbīḥ-Zähler öffnen';

  @override
  String get tasbihatDuasTitle => 'EMPFOHLENE DUAS';

  @override
  String get tasbihatDuasSubtitle => 'Nach Abschluss deines Gebets';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Nach jedem Pflichtgebet';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Wer Āyat al-Kursī nach jedem Pflichtgebet rezitiert, steht nichts zwischen ihm und dem Paradies außer dem Tod. Imam al-Bāqir (a) sagte, es ist unter den größten Versen im Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Nach jedem Gebet · versiegelt alle Bitten';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Das Senden von Salutationen auf den Propheten ﷺ und seine gereinigte Familie (Āl Muḥammad) wird empfohlen, um jede Dua zu versiegeln. Imam al-Ṣādiq (a) sagte: \"Jede Dua ist suspendiert, bis du ṣalawāt auf Muḥammad und seine Familie sendest.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Nach jedem Gebet · für den Imam unserer Zeit';

  @override
  String get tasbihatDuaFarajSource =>
      'Gelehrt von Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Ein Dua für das Wiedererscheinen von Imam al-Mahdī (af), dem zwölften Imam, gelehrt von seinem Vater. Es wird oft von vielen Schiiten nach dem Gebet als Akt der Hingabe an den lebenden Imam rezitiert.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ der Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Nach Maghrib & Isha · besonders empfohlen';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sagte, dass das Rezitieren von Tasbīḥ al-Zahrā nach Isha vor dem Schlafengehen besser ist als 1000 Rakʿah optionalen Gebets. Sein Licht steigt zu den Himmeln auf.';

  @override
  String get tasbihFatimaGiftPre => 'Ein Geschenk des Propheten';

  @override
  String get tasbihFatimaGiftPost => 'rezitiert nach jedem Gebet';

  @override
  String get prayerTrackerTitle => 'GEBETS-TRACKER';

  @override
  String get prayerTrackerPrayed => 'Gebetet';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count Tage Erfolgsserie';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Alle Gebete heute vollständig. Möge Allah annehmen.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Heute abgeschlossen';

  @override
  String get dhikrTrackerNotDoneToday => 'Heute nicht gemacht';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count Tage Erfolgsserie';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-Erinnerung';

  @override
  String get dhikrReminderDescription =>
      'Eine sanfte tägliche Erinnerung, um dein Tasbīḥ al-Zahrā (SA) zu rezitieren.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ-Erinnerung aktivieren';

  @override
  String get dhikrReminderTimeLabel => 'Erinnerungszeit';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Tägliches Hadith';

  @override
  String get hadithLabelArabic => 'ARABISCH';

  @override
  String get hadithLabelTranslation => 'ÜBERSETZUNG';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Dieses Hadith teilen';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Vorherig';

  @override
  String get hadithNavNext => 'Nächster';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Die Vierzehn Unfehlbaren';

  @override
  String get imamsScreenSubtitle =>
      'Der Prophet, Lady Fatima und die zwölf Imame — die reinen und unfehlbaren Führer im Zwölfer-Schiismus';

  @override
  String get imamLabelBorn => 'Geboren';

  @override
  String get imamLabelMartyrdom => 'Martyrium';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIE';

  @override
  String get imamSectionFamousSaying => 'BERÜHMTER AUSSPRUCH';

  @override
  String get imamRoleProphet => 'Der letzte Prophet';

  @override
  String get imamRoleInfallible => 'Der Unfehlbare';

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
  String get duaAudioScreenTitle => 'Duas anhören';

  @override
  String get duaAudioScreenSubtitle =>
      'Wähle eine Dua zum Anhören. Tippe auf die Kachel, um zu spielen oder zu pausieren.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio für diese Dua ist in einer kommenden Aktualisierung verfügbar.';

  @override
  String get duaAudioClose => 'Schließen';

  @override
  String get duaAudioError =>
      'Audio konnte nicht geladen werden. Bitte überprüfe deine Verbindung.';

  @override
  String get duaAudioMetaTransmittedBy => 'Übertragen von';

  @override
  String get duaAudioMetaOccasion => 'Ereignis';

  @override
  String get duaAudioMetaDuration => 'Dauer';

  @override
  String get quickActionDailyHadith => 'Tägliches Hadith';

  @override
  String get quickAction14Masumeen => 'Vierzehn Unfehlbare';

  @override
  String get quickActionListenDuas => 'Anhören';

  @override
  String get quickActionTasbihat => 'Gebetsführer';

  @override
  String get pilgrimageSectionTitle => 'Die heilige Reise';

  @override
  String get pilgrimageSectionSubtitle =>
      'Vollständige Führungen zu Hajj & Umrah — die Pilgerfahrt zum Heiligen Haus Allahs in Makkah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Die fünfte Säule des Islam';

  @override
  String get hajjCardDescription =>
      'Die große jährliche Pilgerfahrt — obligatorisch einmal im Leben für jeden fähigen Muslim';

  @override
  String get hajjScreenTitle => 'Hajj-Führer';

  @override
  String get hajjScreenSubtitle =>
      'Schritt-für-Schritt-Anleitung zur großen Pilgerfahrt';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Die kleinere Pilgerfahrt';

  @override
  String get umrahCardDescription =>
      'Eine tiefgreifend lohnende spirituelle Reise, die jederzeit im Jahr durchgeführt werden kann';

  @override
  String get umrahScreenTitle => 'Umrah-Führer';

  @override
  String get umrahScreenSubtitle =>
      'Schritt-für-Schritt-Anleitung zur kleineren Pilgerfahrt';

  @override
  String get pilgrimageStepsTitle => 'Rituale & Schritte';

  @override
  String get pilgrimageImportantNotesTitle => 'Wichtige Hinweise';

  @override
  String get pilgrimageDuaTitle => 'Dua für diesen Schritt';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Hinweis';

  @override
  String get pilgrimageComplete => '✓ Abgeschlossen';

  @override
  String get pilgrimageMarkDone => 'Als abgeschlossen markieren';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done von $total Schritten';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Schiitische Pilger';

  @override
  String get pilgrimageShiaNoteBody =>
      'Viele schiitische Pilger reisen auch nach Medina für die Ziyarat des Propheten Muhammad (SAW) in der Masjid al-Nabawi und die Gräber in Jannat al-Baqi. Diese Besuche haben eine tiefe spirituelle Bedeutung, obwohl sie selbst keine Riten des Hajj sind.';

  @override
  String get hajjIntro =>
      'Hajj ist die fünfte Säule des Islam, die einmal im Leben für jeden Muslim, der körperlich und finanziell dazu in der Lage ist, verpflichtend ist. Für die meisten schiitischen Pilger heute bedeutet dies Hajj al-Tamattu\', der im Monat Dhul Hijjah in den Fußstapfen von Prophet Ibrahim (AS), seinem Sohn Ismail (AS) und Lady Hajar durchgeführt wird. Dieser Leitfaden folgt dem ja\'fariischen Rahmen der Riten, während die Ziyarat in Medina eine tief geschätzte Reise vor oder nach dem Hajj bleibt.';

  @override
  String get umrahIntro =>
      'Umrah ist die kleinere Pilgerfahrt nach Makkah und kann, im Gegensatz zu Hajj, jederzeit im Jahr durchgeführt werden. Obwohl nicht obligatorisch, trägt sie enorme spirituelle Belohnung und wird als sehr empfohlener Akt der Anbetung angesehen. Sie teilt mehrere Rituale mit Hajj, ist aber kürzer und besteht aus vier Hauptriten.';

  @override
  String get voiceInputTitle => 'Sprachsteuerung';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Sprich deine Eingabe zu Ask Ayara statt zu tippen.';

  @override
  String get voiceInputMicDenied =>
      'Zugriff auf das Mikrofon wurde verweigert.';

  @override
  String get voiceInputSpeak => 'Stattdessen sprechen';

  @override
  String get voiceInputListening => 'Höre zu…';

  @override
  String get voiceInputPermissionDenied =>
      'Zugriff auf das Mikrofon ist für die Sprachsteuerung erforderlich.';
}
