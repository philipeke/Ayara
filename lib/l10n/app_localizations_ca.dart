// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Tria la teva llengua';

  @override
  String get languageSelectSub =>
      'Ho podràs canviar més endavant a Configuració';

  @override
  String get actionContinue => 'Continua';

  @override
  String get languageSuggestedHeader => 'Suggerides';

  @override
  String get languageAllHeader => 'Totes les llengües';

  @override
  String get languageSuggestedBadge => 'Suggerida';

  @override
  String get languageSearchHint => 'Cerca…';

  @override
  String get planBasic => 'Estàndard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Guia diària';

  @override
  String get categorySlot02 => 'Iman i confiança';

  @override
  String get categorySlot03 => 'Reflexió sobre la pregària';

  @override
  String get categorySlot04 => 'Paciència i esperança';

  @override
  String get categorySlot05 => 'Busca perdó';

  @override
  String get categorySlot06 => 'Misericòrdia i compassió';

  @override
  String get categorySlot07 => 'Força de la fe';

  @override
  String get categorySlot08 => 'Cor agraït';

  @override
  String get categorySlot09 => 'Propòsit de la vida';

  @override
  String get categorySlot10 => 'Llaços familiars';

  @override
  String get categorySlot11 => 'Pau interior';

  @override
  String get categorySlot12 => 'Saviesa del Profeta';

  @override
  String get categorySlot13 => 'Bon caràcter';

  @override
  String get categorySlot14 => 'Resisteix la temptació';

  @override
  String get categorySlot15 => 'Dhikr del vespre';

  @override
  String get categoryCustom => 'Reflexió personal';

  @override
  String get dhikrMeaningSubhanallah => 'Glòria a Al·là';

  @override
  String get dhikrMeaningAlhamdulillah => 'Tota lloança és deguda a Al·là';

  @override
  String get dhikrMeaningAllahuAkbar => 'Al·là és el més Gran';

  @override
  String get quranVerseHeartAtRest =>
      'Certament, en el record d’Al·là els cors troben repòs.';

  @override
  String get promptHint =>
      'Toca una categoria per obtenir guia i reflexió islàmica';

  @override
  String get currentLanguage => 'Llengua actual';

  @override
  String get settingsLanguage => 'Configuració de la llengua';

  @override
  String get settingsTitle => 'Configuració';

  @override
  String get chooseLanguage => 'Tria la teva llengua';

  @override
  String get continueCta => 'Continua';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count paraules',
      one: '$count paraula',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opcions';

  @override
  String get newCta => 'Nou';

  @override
  String get actionsTitle => 'Què t’agradaria fer?';

  @override
  String get copy => 'Copia';

  @override
  String get share => 'Comparteix';

  @override
  String get close => 'Tanca';

  @override
  String get copiedToast => 'S’ha copiat al porta-retalls';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No s’ha pogut generar una resposta nova';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVols tornar-ho a provar?';
  }

  @override
  String get cancelCta => 'Cancel·la';

  @override
  String get retryCta => 'Torna-ho a provar';

  @override
  String get authTitle => 'Crea el teu compte';

  @override
  String get continueAsGuest => 'Continua com a convidat';

  @override
  String get signInGoogle => 'Inicia sessió amb Google';

  @override
  String get signInApple => 'Inicia sessió amb Apple';

  @override
  String get signInEmail => 'Inicia sessió amb correu electrònic';

  @override
  String get upgradeWithApple => 'Continua amb Apple';

  @override
  String get mustAccept =>
      'Has d’acceptar els Termes i reconèixer la Política de privadesa.';

  @override
  String get termsLabel => 'Accepto els Termes del servei';

  @override
  String get privacyLabel => 'He llegit la Política de privadesa';

  @override
  String get marketingOptIn => 'Accepto rebre notícies i ofertes';

  @override
  String get openTerms => 'Termes del servei';

  @override
  String get openPrivacy => 'Política de privadesa';

  @override
  String get accountSection => 'Compte';

  @override
  String get guestMode => 'Mode convidat';

  @override
  String get signedIn => 'Sessió iniciada';

  @override
  String get upgradeHint =>
      'Desa les teves reflexions a tots els dispositius creant un compte.';

  @override
  String get upgradeWithGoogle => 'Continua amb Google';

  @override
  String get signOut => 'Tanca la sessió';

  @override
  String get snackUpgraded => 'Compte actualitzat amb Google ✅';

  @override
  String get snackSignedIn => 'Sessió iniciada amb Google ✅';

  @override
  String get snackSignedOut => 'Sessió tancada';

  @override
  String get snackSignedInApple => 'Sessió iniciada amb Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sessió iniciada amb Google ✅';

  @override
  String get snackUpgradedApple => 'Compte actualitzat amb Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Compte actualitzat amb Google ✅';

  @override
  String get historyTitle => 'Reflexions anteriors';

  @override
  String get historyOpenCta => 'Reflexions anteriors';

  @override
  String get historyEmpty => 'Encara no hi ha reflexions desades.';

  @override
  String get historyDeleteTitle => 'Vols suprimir la reflexió?';

  @override
  String get historyDeleteBody =>
      'Això eliminarà permanentment l’element seleccionat.';

  @override
  String get deleteCta => 'Suprimeix';

  @override
  String get historyButton => 'Reflexions anteriors';

  @override
  String get historyEmptyTitle => 'Encara no hi ha reflexions';

  @override
  String get historyEmptyBody =>
      'Genera alguna cosa primer — els elements desats apareixeran aquí.';

  @override
  String get historyDelete => 'Suprimeix';

  @override
  String get footerTitle => 'Amb Wilaya, Iman i Sabr';

  @override
  String get footerSubtitle => 'Una pregària cada vegada';

  @override
  String get genericErrorSnack =>
      'Alguna cosa ha anat malament — torna-ho a provar d’aquí a un moment.';

  @override
  String get upgradeAccountCta =>
      'Desa les teves reflexions a tots els dispositius – crea un compte';

  @override
  String get deleteAccount => 'Suprimeix el compte';

  @override
  String get exportData => 'Exporta les meves dades';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Calma 🐯\nAyara necessita un moment abans de la següent…';

  @override
  String get rateDailyLimit =>
      'Ara mateix t’has quedat sense reflexions.\nAconsegueix més reflexions o actualitza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has fet servir totes les teves reflexions.\nRecarrega o actualitza a Wilaya per continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Ara mateix t’has quedat sense reflexions.\nAconsegueix més reflexions o actualitza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloqueja funcions premium, categories futures i una insígnia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Ara mateix no et queden reflexions. Pla: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No s’han pogut comprovar les teves reflexions: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Alguna cosa ha anat malament en comprovar les teves reflexions.';

  @override
  String get aiFallbackGeneric =>
      'Alguna cosa ha anat malament — torna-ho a provar d’aquí a un moment.';

  @override
  String get limitSectionTitle => 'Reflexions';

  @override
  String get limitTodayLabel => 'Ús';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexions restants: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Pla: $plan';
  }

  @override
  String get limitLoadingLabel => 'S’està carregant…';

  @override
  String get limitLoadingLabelDescription =>
      'Es mostra a la targeta de reflexions mentre s’obtenen les estadístiques d’ús.';

  @override
  String get aiLimitTitle => 'Reflexions';

  @override
  String get aiLimitSubtitle =>
      'Cada resposta fa servir 1 reflexió. El pla Estàndard inclou reflexions inicials. Wilaya desbloqueja categories premium i permet recàrregues.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexions utilitzades';
  }

  @override
  String get creditsSectionTitle => 'Reflexions';

  @override
  String get creditsUsageLabel => 'Ús';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexions restants: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Pla: $plan';
  }

  @override
  String get creditsLoadingLabel => 'S’està carregant…';

  @override
  String get creditsLoadingLabelDescription =>
      'Es mostra mentre s’obtenen les estadístiques de reflexions.';

  @override
  String get creditsTitle => 'Reflexions';

  @override
  String get creditsSubtitle =>
      'Cada resposta fa servir 1 reflexió. El pla Estàndard inclou reflexions inicials. Wilaya desbloqueja categories premium i permet recàrregues.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexions utilitzades';
  }

  @override
  String get settingsDeleteTitle => 'Suprimeix el compte';

  @override
  String get settingsDeleteDescription =>
      'Suprimeix permanentment el teu compte i totes les dades associades.';

  @override
  String get settingsDeleteButtonLabel => 'Suprimeix el meu compte';

  @override
  String get settingsDeleteDialogTitle => 'Vols suprimir el compte?';

  @override
  String get settingsDeleteDialogBody =>
      'Aquesta acció és permanent i no es pot desfer.\n\nS’eliminaran tots els teus xats, l’historial i la informació del compte.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel·la';

  @override
  String get settingsDeleteDialogConfirm => 'Suprimeix';

  @override
  String get settingsFreeLimitUsedTitle =>
      'S’han fet servir les reflexions inicials';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Les reflexions inicials d’aquest dispositiu ja s’han fet servir. Actualitza a Wilaya o compra més reflexions per continuar.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'S’han fet servir les reflexions inicials';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Les reflexions inicials d’aquest dispositiu ja s’han fet servir. Actualitza a Wilaya o compra més reflexions per continuar.';

  @override
  String get deviceBoundError =>
      'Aquest dispositiu ja està enllaçat a un altre compte. Inicia sessió amb el compte original.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloqueja l’experiència completa d’Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Tens Wilaya. Necessites més reflexions?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Pla actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexions: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Les compres no estan disponibles ara mateix.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sessió per comprar reflexions o desbloquejar Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaura les compres';

  @override
  String get premiumProcessing => 'S’està processant…';

  @override
  String get premiumRestoreHintTitle =>
      'Ja has comprat Wilaya o reflexions en aquest dispositiu o en un altre?';

  @override
  String get premiumRestoreHintBody =>
      'Restaura les teves compres si no apareixen.';

  @override
  String get premiumBuyCredits200 => 'Compra 200 reflexions';

  @override
  String get premiumBuyCredits400 => 'Compra 400 reflexions';

  @override
  String get premiumBecomePremiumOneTime => 'Actualitza al mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Amb Wilaya, pots recarregar amb reflexions addicionals sempre que ho necessitis.';

  @override
  String get premiumUpgradeCta => 'Actualitza';

  @override
  String get premiumRequiredForCategory =>
      'Aquesta categoria només està disponible per als usuaris de Wilaya. Actualitza a Configuració per desbloquejar tot el contingut premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloqueja Wilaya per obtenir reflexions addicionals, accés a categories premium i continuar sempre que necessitis guia.';

  @override
  String get premiumBenefitsPremium =>
      'Ets en mode Wilaya. Si te’n queden poques, afegeix algunes reflexions extres i continua sense interrupcions.';

  @override
  String get premiumButtonBecomePremium => 'Desbloqueja Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Afegeix 1000 reflexions';

  @override
  String get premiumBadge => 'Wilaya activa';

  @override
  String get premiumLoadingStore => 'S’està carregant la botiga…';

  @override
  String get premiumProductNotAvailable =>
      'Aquest producte encara no està disponible a la botiga. Torna-ho a provar més tard.';

  @override
  String get premiumPurchaseError =>
      'Alguna cosa ha anat malament amb la compra. Torna-ho a provar.';

  @override
  String get premiumBuyCredits100 => 'Afegeix 100 reflexions';

  @override
  String get premiumFeatureLocked =>
      'Desbloqueja Wilaya per accedir a aquesta funció.';

  @override
  String get lockedCategoriesHint =>
      'Algunes categories estan reservades per als membres de Wilaya. Desbloqueja-les per explorar cada reflexió del teu camí.';

  @override
  String get freePlanBlockedTitle =>
      'Has esgotat les teves reflexions inicials';

  @override
  String get freePlanBlockedBody =>
      'Ets al pla Estàndard amb reflexions inicials i has arribat al límit. Per continuar — i desbloquejar categories premium — actualitza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Mira les opcions de Wilaya a continuació';

  @override
  String get graceBlockedTitle => 'Has esgotat les teves reflexions inicials';

  @override
  String get graceBlockedBody =>
      'Ets al pla Estàndard amb reflexions inicials i has arribat al límit. Per continuar — i desbloquejar categories premium — actualitza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium =>
      'Mira les opcions de Wilaya a continuació';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sessió per fer servir Ayara i les teves reflexions.';

  @override
  String get guestNoCreditsTitle => 'Mode convidat';

  @override
  String get guestNoCreditsBody =>
      'Com a convidat pots navegar per l’aplicació, però no pots fer servir reflexions. Inicia sessió més tard des de Configuració per fer servir reflexions i desbloquejar compres.';

  @override
  String get guestDialogContinue => 'Continua';

  @override
  String get guestDialogLoginInstead => 'Inicia sessió en lloc d’això';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Compte suprimit';

  @override
  String get accountDeleteSuccessBody =>
      'El teu compte i les dades associades s’han suprimit correctament.';

  @override
  String get accountDeleteSuccessClose => 'Tanca';

  @override
  String get accountDeleteErrorTitle => 'No s’ha pogut suprimir el compte';

  @override
  String get accountDeleteErrorClose => 'D’acord';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticació s’ha cancel·lat. Torna a iniciar sessió i prova d’eliminar el compte una altra vegada.';

  @override
  String get accountDeleteReauthRequired =>
      'Per suprimir el compte cal haver iniciat sessió recentment. Tanca la sessió, torna a iniciar-la i prova-ho de nou.';

  @override
  String get settingsDeletePermanentWarning =>
      'Aquesta acció és permanent i no es pot desfer. Totes les dades associades al teu compte s’eliminaran.';

  @override
  String get dailyGraceTitle => 'Guia diària';

  @override
  String get dailyGraceScriptureLabel => 'VERSICLE DEL DIA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SETMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓ DEL VESPRE';

  @override
  String get dailyGraceCopiedToast =>
      'S’ha copiat el versicle al porta-retalls';

  @override
  String get locationConsentLabel =>
      'Permet que Ayara faci servir la meva ubicació per a la direcció de la qibla i els horaris de pregària';

  @override
  String get locationConsentHint =>
      'Només s’utilitza per a aquestes funcions. La teva ubicació mai no es comparteix ni s’emmagatzema.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta qualsevol cosa sobre la fe, la pregària, la vida o la pràctica islàmica i rep una guia arrelada a l’Alcorà i als ensenyaments de l’Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Escriu aquí la teva pregunta…';

  @override
  String get askPageSubmitCta => 'Pregunta';

  @override
  String get askPageInputEmptyError => 'Escriu una pregunta primer.';

  @override
  String get askResultYourQuestion => 'La teva pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Cap a la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira el telèfon fins que l’agulla daurada apunti cap amunt.\nAquesta direcció apunta cap a la qibla (la Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'El senyal GPS és feble. Ves a l’exterior i toca Reintenta.';

  @override
  String get qiblaRetry => 'Reintenta';

  @override
  String get qiblaTitle => 'Direcció de la qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km fins a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Cal la ubicació';

  @override
  String get qiblaLocationNeededBody =>
      'Permet l’accés a la ubicació perquè Ayara pugui calcular la direcció de la Kaaba a la Meca des d’on siguis.';

  @override
  String get qiblaOpenSettings => 'Obre Configuració';

  @override
  String get qiblaCompassLoading => 'S’està trobant la teva posició…';

  @override
  String get qiblaTowardMecca => 'Cap a la Meca';

  @override
  String get prayerTimesTitle => 'Horaris de pregària';

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
  String get prayerTimesLocationNeededTitle => 'Cal la ubicació';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permet l’accés a la ubicació perquè Ayara pugui calcular horaris de pregària precisos per a la teva ciutat.';

  @override
  String get prayerTimesNextLabel => 'Següent';

  @override
  String get prayerTimesDoneLabel => 'Fet';

  @override
  String get monthlyPrayerTimesTitle => 'Horaris mensuals de pregària';

  @override
  String get monthlyPrayerTimesViewButton => 'Mostra el mes complet';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mes següent';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dia';

  @override
  String get sharePrayerTimes => 'Comparteix els horaris de pregària';

  @override
  String get notificationsSectionTitle => 'Notificacions';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatoris de pregària, esdeveniments del calendari i més';

  @override
  String get dailyReflectionReminderTitle => 'Reflexió diària';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatori diari suau per obrir Ayara i connectar amb la teva fe.';

  @override
  String get dailyReflectionReminderEnable => 'Activa el recordatori diari';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatori';

  @override
  String get prayerNotificationsTitle => 'Recordatoris de pregària';

  @override
  String get prayerNotificationsDescription =>
      'Rep un recordatori suau abans de cada pregària per ajudar-te a mantenir-te connectat durant el dia.';

  @override
  String get prayerNotificationsEnable => 'Activa els recordatoris de pregària';

  @override
  String get prayerNotificationsOpenSettings =>
      'Obre la configuració de notificacions';

  @override
  String get prayerNotificationsDenied =>
      'Les notificacions estan desactivades';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ves a Configuració i permet les notificacions per a Ayara per rebre recordatoris dels horaris de pregària.';

  @override
  String get notificationsConsentLabel =>
      'Permet notificacions per als horaris de pregària';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Pregària de l’alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr és la pregària dels matins de l’Ahl al-Bayt. L’imam Ali (AS) va dir: Guarda la pregària de l’alba com guardes el teu bé més preuat. Aixeca’t, purifica’t i posa’t davant d’Al·là.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Pregària del migdia';

  @override
  String get prayerNotifBodyDhuhr =>
      'Els imams de l’Ahl al-Bayt valoraven cada moment de record. Atura el teu dia, combina Dhuhr amb Asr si cal i torna el teu cor cap a Al·là.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Pregària de la tarda';

  @override
  String get prayerNotifBodyAsr =>
      'Guarda la pregària, perquè és el pacte entre tu i Al·là. Ha arribat l’hora d’Asr — no deixis que passi sense record.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Pregària del capvespre';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol s’ha post — un moment que l’Ahl al-Bayt considerava sagrat per a la súplica. Ofereix Maghrib i alça les mans a Al·là en du‘a abans que comenci la nit.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Pregària de la nit';

  @override
  String get prayerNotifBodyIsha =>
      'Acaba el teu dia en companyia d’Al·là. Els imams animaven a fer Salat al-Layl després d’Isha — però primer completa la teva Isha i tanca el dia amb el Seu record.';

  @override
  String get outOfReflectionsBannerText =>
      'Has fet servir totes les teves reflexions';

  @override
  String get outOfReflectionsBannerCta => 'Aconsegueix-ne més';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el cercle per comptar';

  @override
  String get dhikrResetButton => 'Reinicia';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completat 100 records d’Al·là. Que siguin una llum per al teu cor.';

  @override
  String get disclaimerTitle => 'Sobre la guia d’aquesta aplicació';

  @override
  String get disclaimerBody =>
      'Ayara ofereix reflexions islàmiques, recordatoris i contingut espiritual per donar suport al teu camí personal de fe, arrelat a l’Alcorà i als ensenyaments de l’Ahl al-Bayt. Aquest contingut s’ofereix només amb finalitats informatives i inspiradores generals.\n\nAyara no substitueix l’erudició qualificada.\nLa guia d’aquesta aplicació no substitueix un erudit islàmic qualificat, un marja\' o un mestre amb formació teològica. A l’islam xiïta, la guia religiosa està arrelada a l’escola jafarita de jurisprudència (fiqh) i a la tradició de seguir un Marja’ viu (font d’emulació), és a dir, un jurista qualificat les resolucions del qual guien els creients en la pràctica religiosa. Si tens preguntes sobre normes religioses, assumptes d’halal i haram o obligacions religioses personals, busca consell d’un Marja’ qualificat o d’un erudit de la teva comunitat.\n\nAquesta aplicació no emet resolucions religioses.\nAyara no pren determinacions autoritatives sobre qüestions de fiqh o obligacions religioses personals. Res del que hi ha aquí s’hauria de tractar com una fatwa o una instrucció religiosa vinculant.\n\nLa centralitat de l’Ahl al-Bayt.\nA l’islam xiïta, el profeta Muhàmmad ﷺ i la seva família purificada — l’Ahl al-Bayt — són els guies autoritzats de la comunitat islàmica després de l’Alcorà. Els dotze imams de l’Ahl al-Bayt són els intèrprets divinament designats de l’ensenyament islàmic. El contingut d’aquesta aplicació reflecteix aquesta tradició i procura honorar-la fidelment.\n\nAssumptes de comunitat.\nAquesta aplicació pretén fomentar la teva vinculació amb la fe mentre respecta profundament el paper vital de la teva mesquita local, centre islàmic i comunitat religiosa. T’animem a mantenir-te connectat i aprendre de mestres qualificats propers a tu.';

  @override
  String get disclaimerClose => 'Ho entenc';

  @override
  String get disclaimerInfoTooltip => 'Sobre la guia d’aquesta aplicació';

  @override
  String get disclaimerSettingsSubtitle =>
      'Només amb finalitats informatives generals. Toca per llegir l’avís complet.';

  @override
  String get disclaimerSectionHeader => 'Avís de responsabilitat sobre la guia';

  @override
  String get navHome => 'Inici';

  @override
  String get navReflect => 'Reflexiona';

  @override
  String get navDuas => 'Du‘as';

  @override
  String get navCalendar => 'Calendari';

  @override
  String get dashboardToday => 'AVUI';

  @override
  String get dashboardComingUp => 'Properament';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dies',
      one: 'dia',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Accés ràpid';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guia';

  @override
  String get quickActionPrayerTimes => 'Horaris de pregària';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Fes qualsevol pregunta islàmica i rep una resposta reflexiva i guiada.';

  @override
  String get askAyaraHint => 'p. ex. Quina és la importància del Ramadà?';

  @override
  String get askAyaraSubmit => 'Pregunta';

  @override
  String get wisdomOfTheDayTitle => 'Saviesa del dia';

  @override
  String get calendarScreenTitle => 'Calendari islàmic';

  @override
  String get calendarUpcomingOccasions => 'Properes ocasions';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatoris d’ocasions';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificació la nit abans de cada ocasió';

  @override
  String get calendarNotifPermissionDenied =>
      'Permís de notificacions denegat. Activa’l a la configuració del dispositiu.';

  @override
  String get calendarNoEvents => 'No s’han trobat esdeveniments pròxims.';

  @override
  String get calendarAddToPhone => 'Afegeix al calendari del telèfon';

  @override
  String get calendarAddedToPhone => 'Afegit al calendari';

  @override
  String get calendarCountdownToday => 'AVUI';

  @override
  String get calendarCountdownTomorrow => 'DEMÀ';

  @override
  String calendarCountdownDays(int days) {
    return 'd’aquí a $days dies';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'gen.';

  @override
  String get calendarMonthFeb => 'febr.';

  @override
  String get calendarMonthMar => 'març';

  @override
  String get calendarMonthApr => 'abr.';

  @override
  String get calendarMonthMay => 'maig';

  @override
  String get calendarMonthJun => 'juny';

  @override
  String get calendarMonthJul => 'jul.';

  @override
  String get calendarMonthAug => 'ag.';

  @override
  String get calendarMonthSep => 'set.';

  @override
  String get calendarMonthOct => 'oct.';

  @override
  String get calendarMonthNov => 'nov.';

  @override
  String get calendarMonthDec => 'des.';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dies de Muhàrram — recorda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muhàrram — dies de dol i reflexió';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quaranta dies de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camí cap a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — l’alba de la revelació';

  @override
  String get calendarSeasonMidShaban =>
      'Mitjan Sha\'ban — aniversari de l’Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadà Mubarak — el mes de l’Alcorà';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak!';

  @override
  String get hijriMonth1 => 'Muhàrram';

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
  String get hijriMonth9 => 'Ramadà';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Du‘as i Ziyarat';

  @override
  String get duasSearchHint => 'Cerca du‘as, ziyarat…';

  @override
  String get duasFilterAll => 'Totes';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count du‘as i ziyarat',
      one: '$count du‘a',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No s’han trobat du‘as.';

  @override
  String get duaCategoryDaily => 'Diàries';

  @override
  String get duaCategoryWeekly => 'Setmanals';

  @override
  String get duaCategoryOccasions => 'Ocasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Naixement';

  @override
  String get eventTypeMartyrdom => 'Martiri';

  @override
  String get eventTypeOccasion => 'Ocasió';

  @override
  String get duaCopyTooltip => 'Copia la traducció';

  @override
  String get duaToggleTransliteration => 'Transliteració';

  @override
  String get duaToggleTranslation => 'Traducció';

  @override
  String get duaAskAiLabel => 'Demana a Ayara que expliqui aquesta du‘a';

  @override
  String get duaAskAiLockedLabel => 'Pregunta a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Les explicacions d’Ayara estan disponibles per als membres de Wilaya. Actualitza a Configuració.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pregunta a Ayara sobre \"$name\" — aviat!';
  }

  @override
  String get duaCopiedToast => 'S’ha copiat la du‘a al porta-retalls.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Al·là és el més Gran';

  @override
  String get tasbihAlhamdulillahMeaning => 'Tota lloança pertany a Al·là';

  @override
  String get tasbihSubhanallahMeaning => 'Glòria a Al·là';

  @override
  String get tasbihResetTooltip => 'Reinicia';

  @override
  String get tasbihCompleteTitle => 'Tasbih completat';

  @override
  String get tasbihCompleteMessage => 'Que Al·là accepti el teu dhikr.';

  @override
  String get tasbihTapHint => 'Toca a qualsevol lloc per comptar';

  @override
  String get tasbihatScreenTitle => 'Guia de pregària';

  @override
  String get tasbihatScreenSubtitle => 'LES GLORIFICACIONS DE LA PREGÀRIA';

  @override
  String get tasbihatScreenDescription =>
      'Una guia completa de les glorificacions recitades durant i després de les pregàries diàries — seguint la tradició de l’Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitat durant la 3a i la 4a rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudència xiïta, el Tasbiḥāt al-Arbaʿa substitueix la sura al-Fatiha en la 3a i la 4a rakʿah de Dhuhr, Asr, Maghrib i Isha. És obligatori (wājib) recitar-lo una vegada, i recomanable (mustaḥabb) recitar-lo tres vegades.';

  @override
  String get tasbihatArba3Translation =>
      'Glòria a Al·là · Tota lloança és per a Al·là\nNo hi ha altre déu que Al·là · Al·là és el més Gran';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitació completada';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que la teva pregària sigui acceptada — Amīn';

  @override
  String get tasbihatArba3TapHint => 'Toca després de cada recitació';

  @override
  String get tasbihatZahraSubtitle => 'Després de cada pregària · 100 comptes';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La senyora Fàtima al-Zahra (sa) va demanar al Profeta ﷺ un servent. Ell va dir: \"No vols que et guiï cap a una cosa millor? Recita Subḥānallāh 33 vegades, Alḥamdulillāh 33 vegades, i Allāhu Akbar 34 vegades després de cada pregària. Això és millor per a tu que un servent.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Obre el comptador de tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DU‘AS RECOMANADES';

  @override
  String get tasbihatDuasSubtitle => 'Després de completar la pregària';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Després de cada pregària obligatòria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sura al-Baqara 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Qui recita Āyat al-Kursī després de cada pregària obligatòria, no hi ha res entre ell i el paradís excepte la mort. L’imam al-Bāqir (a) va dir que és entre els versicles més grans de l’Alcorà.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Després de cada pregària · segella totes les súpliques';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar salutacions sobre el Profeta ﷺ i la seva família purificada (Āl Muḥammad) és recomanable per segellar cada du‘a. L’imam al-Ṣādiq (a) va dir: \"Qualsevol du‘a queda suspesa fins que enviïs ṣalawāt sobre Muḥammad i la seva família.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Després de cada pregària · per a l’Imam del nostre temps';

  @override
  String get tasbihatDuaFarajSource =>
      'Ensenyada per l’Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua per la reaparició de l\'Imam al-Mahdī (af), el dotzè Imam, ensenyada pel seu pare. Sovint és recitada per molts musulmans xiïtes després de la pregària com un acte de devoció cap a l\'Imam vivent.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la senyora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Després de Maghrib i Isha · especialment recomanada';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'L’imam al-Bāqir (a) va dir que recitar el Tasbīḥ al-Zahrā després d’Isha abans d’anar a dormir és millor que 1000 rakʿahs de pregària voluntària. La seva llum s’eleva cap als cels.';

  @override
  String get tasbihFatimaGiftPre => 'Un regal del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitat després de cada pregària';

  @override
  String get prayerTrackerTitle => 'SEGUIMENT DE LA PREGÀRIA';

  @override
  String get prayerTrackerPrayed => 'Pregada';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'ratxa de $count dies';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Totes les pregàries d’avui s’han completat. Que Al·là les accepti.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completat avui';

  @override
  String get dhikrTrackerNotDoneToday => 'No fet avui';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'ratxa de $count dies';
  }

  @override
  String get dhikrReminderTitle => 'Recordatori de tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatori diari suau per recitar el teu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Activa el recordatori de tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatori';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadit diari';

  @override
  String get hadithLabelArabic => 'ÀRAB';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓ';

  @override
  String get hadithBadge => 'HADIT';

  @override
  String get hadithShare => 'Comparteix aquest hadit';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Següent';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Els Catorze Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Senyora Fatima, i els Dotze Imams — els guies purificats i infal·libles en l\'Islam xiïta dels Dotze Imams';

  @override
  String get imamLabelBorn => 'Naixement';

  @override
  String get imamLabelMartyrdom => 'Martiri';

  @override
  String get imamLabelStatus => 'Estat';

  @override
  String get imamSectionBiography => 'BIOGRAFIA';

  @override
  String get imamSectionFamousSaying => 'DITA FAMOSA';

  @override
  String get imamRoleProphet => 'L’últim Profeta';

  @override
  String get imamRoleInfallible => 'L’Infal·lible';

  @override
  String get imamOrdinal1 => '1r Imam';

  @override
  String get imamOrdinal2 => '2n Imam';

  @override
  String get imamOrdinal3 => '3r Imam';

  @override
  String get imamOrdinal4 => '4t Imam';

  @override
  String get imamOrdinal5 => '5è Imam';

  @override
  String get imamOrdinal6 => '6è Imam';

  @override
  String get imamOrdinal7 => '7è Imam';

  @override
  String get imamOrdinal8 => '8è Imam';

  @override
  String get imamOrdinal9 => '9è Imam';

  @override
  String get imamOrdinal10 => '10è Imam';

  @override
  String get imamOrdinal11 => '11è Imam';

  @override
  String get imamOrdinal12 => '12è Imam';

  @override
  String get duaAudioScreenTitle => 'Escolta du‘as';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una du‘a per escoltar. Toca la fitxa per reproduir o posar en pausa.';

  @override
  String get duaAudioComingSoonMessage =>
      'L’àudio d’aquesta du‘a estarà disponible en una propera actualització.';

  @override
  String get duaAudioClose => 'Tanca';

  @override
  String get duaAudioError =>
      'No s’ha pogut carregar l’àudio. Comprova la teva connexió.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmesa per';

  @override
  String get duaAudioMetaOccasion => 'Ocasió';

  @override
  String get duaAudioMetaDuration => 'Durada';

  @override
  String get quickActionDailyHadith => 'Hadit diari';

  @override
  String get quickAction14Masumeen => 'Catorze Infallibles';

  @override
  String get quickActionListenDuas => 'Escolta';

  @override
  String get quickActionTasbihat => 'Guia de pregària';

  @override
  String get pilgrimageSectionTitle => 'El viatge sagrat';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guies completes per a l’Hajj i la Umra — el pelegrinatge a la Casa Sagrada d’Al·là a la Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El cinquè pilar de l’islam';

  @override
  String get hajjCardDescription =>
      'El gran pelegrinatge anual — obligatori una vegada a la vida per a tot musulmà que en sigui capaç';

  @override
  String get hajjScreenTitle => 'Guia de l’Hajj';

  @override
  String get hajjScreenSubtitle => 'Guia pas a pas del gran pelegrinatge';

  @override
  String get umrahCardTitle => 'Umra';

  @override
  String get umrahCardSubtitle => 'El pelegrinatge menor';

  @override
  String get umrahCardDescription =>
      'Un viatge espiritual profundament gratificant que es pot fer en qualsevol època de l’any';

  @override
  String get umrahScreenTitle => 'Guia de la Umra';

  @override
  String get umrahScreenSubtitle => 'Guia pas a pas del pelegrinatge menor';

  @override
  String get pilgrimageStepsTitle => 'Ritus i passos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notes importants';

  @override
  String get pilgrimageDuaTitle => 'Dua per aquest pas';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Complet';

  @override
  String get pilgrimageMarkDone => 'Marca com a complet';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total passos';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pelegrins xiïtes';

  @override
  String get pilgrimageShiaNoteBody =>
      'Molts pelegrins xiïtes també viatgen a Medina per a la ziyarat del Profeta Muhammad (SAW) a la Masjid al-Nabawi i les tombes a Jannat al-Baqi. Aquestes visites porten un profund significat espiritual, tot i que no són elles mateixes rites de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj és el cinquè pilar de l\'Islam, obligatori una vegada a la vida per a cada musulmà que sigui física i econòmicament capaç. Per a la majoria dels pelegrins xiïtes dels Dotze Imams d\'avui, això significa Hajj al-Tamattu\', realitzat al mes de Dhul Hijjah seguint les petjades del Profeta Ibrahim (AS), el seu fill Ismail (AS), i la Senyora Hajar. Aquesta guia segueix l\'esquema Ja\'fari dels rites, mentre que la ziyarat a Medina continua sent un viatge profundament apreciat abans o després del Hajj.';

  @override
  String get umrahIntro =>
      'La Umra és el pelegrinatge menor a la Meca i, a diferència de l’Hajj, es pot fer en qualsevol època de l’any. Tot i que no és obligatòria, comporta una recompensa espiritual immensa i es considera un acte d’adoració molt recomanat. Comparteix diversos ritus amb l’Hajj, però és més breu i consta de quatre ritus principals.';

  @override
  String get voiceInputTitle => 'Entrada de veu';

  @override
  String get voiceInputMicTitle => 'Micròfon';

  @override
  String get voiceInputMicSubtitle =>
      'Parla la teva entrada a Ask Ayara en comptes d\'escriure.';

  @override
  String get voiceInputMicDenied => 'S\'ha denegat l\'accés al micròfon.';

  @override
  String get voiceInputSpeak => 'Parla en comptes';

  @override
  String get voiceInputListening => 'Escoltant…';

  @override
  String get voiceInputPermissionDenied =>
      'L\'accés al micròfon és necessari per a l\'entrada de veu.';
}
