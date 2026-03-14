// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choisissez votre langue';

  @override
  String get languageSelectSub =>
      'Vous pourrez modifier ce choix plus tard dans les Paramètres';

  @override
  String get actionContinue => 'Continuer';

  @override
  String get languageSuggestedHeader => 'Suggestions';

  @override
  String get languageAllHeader => 'Toutes les langues';

  @override
  String get languageSuggestedBadge => 'Suggéré';

  @override
  String get languageSearchHint => 'Rechercher…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Guidance Quotidienne';

  @override
  String get categorySlot02 => 'Iman & Confiance';

  @override
  String get categorySlot03 => 'Réflexion sur la Prière';

  @override
  String get categorySlot04 => 'Patience & Espoir';

  @override
  String get categorySlot05 => 'Demander le Pardon';

  @override
  String get categorySlot06 => 'Miséricorde & Compassion';

  @override
  String get categorySlot07 => 'Force de la Foi';

  @override
  String get categorySlot08 => 'Cœur Reconnaissant';

  @override
  String get categorySlot09 => 'Sens de la Vie';

  @override
  String get categorySlot10 => 'Liens Familiaux';

  @override
  String get categorySlot11 => 'Paix Intérieure';

  @override
  String get categorySlot12 => 'Sagesse Prophétique';

  @override
  String get categorySlot13 => 'Noblesse de Caractère';

  @override
  String get categorySlot14 => 'Résister à la Tentation';

  @override
  String get categorySlot15 => 'Dhikr du Soir';

  @override
  String get categoryCustom => 'Réflexion Personnelle';

  @override
  String get dhikrMeaningSubhanallah => 'Gloire à Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Louange à Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah est le Plus Grand';

  @override
  String get quranVerseHeartAtRest =>
      'N\'est-ce pas par l\'évocation d\'Allah que les cœurs s\'apaisent ?';

  @override
  String get promptHint =>
      'Appuyez sur une catégorie pour une guidance islamique';

  @override
  String get currentLanguage => 'Langue actuelle';

  @override
  String get settingsLanguage => 'Paramètres de langue';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get chooseLanguage => 'Choisissez votre langue';

  @override
  String get continueCta => 'Continuer';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mots',
      one: '$count mot',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'Nouveau';

  @override
  String get actionsTitle => 'Que souhaitez-vous faire ?';

  @override
  String get copy => 'Copier';

  @override
  String get share => 'Partager';

  @override
  String get close => 'Fermer';

  @override
  String get copiedToast => 'Copié dans le presse-papiers';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Impossible de générer une réponse';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVoulez-vous réessayer ?';
  }

  @override
  String get cancelCta => 'Annuler';

  @override
  String get retryCta => 'Réessayer';

  @override
  String get authTitle => 'Créez votre compte';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get signInEmail => 'Se connecter par e-mail';

  @override
  String get upgradeWithApple => 'Continuer avec Apple';

  @override
  String get mustAccept =>
      'Vous devez accepter les Conditions et la Politique de Confidentialité.';

  @override
  String get termsLabel => 'J\'accepte les Conditions d\'Utilisation';

  @override
  String get privacyLabel => 'J\'ai lu la Politique de Confidentialité';

  @override
  String get marketingOptIn =>
      'J\'accepte de recevoir des nouvelles et des offres';

  @override
  String get openTerms => 'Conditions d\'Utilisation';

  @override
  String get openPrivacy => 'Politique de Confidentialité';

  @override
  String get accountSection => 'Compte';

  @override
  String get guestMode => 'Mode invité';

  @override
  String get signedIn => 'Connecté';

  @override
  String get upgradeHint =>
      'Enregistrez vos réflexions sur tous vos appareils en créant un compte.';

  @override
  String get upgradeWithGoogle => 'Continuer avec Google';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String get snackUpgraded => 'Compte mis à niveau avec Google ✅';

  @override
  String get snackSignedIn => 'Connecté avec Google ✅';

  @override
  String get snackSignedOut => 'Déconnecté';

  @override
  String get snackSignedInApple => 'Connecté avec Apple ✅';

  @override
  String get snackSignedInGoogle => 'Connecté avec Google ✅';

  @override
  String get snackUpgradedApple => 'Compte mis à niveau avec Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Compte mis à niveau avec Google ✅';

  @override
  String get historyTitle => 'Réflexions précédentes';

  @override
  String get historyOpenCta => 'Historique des réflexions';

  @override
  String get historyEmpty => 'Aucune réflexion enregistrée pour le moment.';

  @override
  String get historyDeleteTitle => 'Supprimer la réflexion ?';

  @override
  String get historyDeleteBody =>
      'Ceci supprimera définitivement l\'élément sélectionné.';

  @override
  String get deleteCta => 'Supprimer';

  @override
  String get historyButton => 'Réflexions Précédentes';

  @override
  String get historyEmptyTitle => 'Pas encore de réflexions';

  @override
  String get historyEmptyBody =>
      'Générez du contenu d\'abord — vos éléments sauvegardés apparaîtront ici.';

  @override
  String get historyDelete => 'Supprimer';

  @override
  String get footerTitle => 'Avec Wilaya, Iman et Sabr';

  @override
  String get footerSubtitle => 'Une prière à la fois';

  @override
  String get genericErrorSnack =>
      'Un problème est survenu — veuillez réessayer dans un instant.';

  @override
  String get upgradeAccountCta =>
      'Sauvegardez vos réflexions partout – créez un compte';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get exportData => 'Exporter mes données';

  @override
  String userUidLabel(String uid) {
    return 'UID : $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Doucement 🐯\nAyara a besoin d\'un instant avant la prochaine réponse…';

  @override
  String get rateDailyLimit =>
      'Vous n\'avez plus de réflexions pour aujourd\'hui.\nObtenez-en plus ou passez à Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Vous avez utilisé toutes vos réflexions.\nRechargez ou passez à Wilaya pour continuer.';

  @override
  String get rateGraceCreditsExhausted =>
      'Vous n\'avez plus de réflexions disponibles.\nObtenez-en plus ou passez à Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya débloque les fonctionnalités premium, les futures catégories et un badge spécial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vos réflexions sont épuisées. Plan : $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Impossible de vérifier vos réflexions : $message';
  }

  @override
  String get rateCheckGenericError =>
      'Une erreur est survenue lors de la vérification de vos crédits.';

  @override
  String get aiFallbackGeneric =>
      'Un problème est survenu — veuillez réessayer dans un instant.';

  @override
  String get limitSectionTitle => 'Réflexions';

  @override
  String get limitTodayLabel => 'Utilisation';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Réflexions restantes : $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan : $plan';
  }

  @override
  String get limitLoadingLabel => 'Chargement…';

  @override
  String get limitLoadingLabelDescription =>
      'Affiché pendant la récupération des statistiques.';

  @override
  String get aiLimitTitle => 'Réflexions';

  @override
  String get aiLimitSubtitle =>
      'Chaque réponse consomme 1 réflexion. Le plan Standard inclut des réflexions de départ. Wilaya débloque les catégories premium et permet les recharges.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total réflexions utilisées';
  }

  @override
  String get creditsSectionTitle => 'Réflexions';

  @override
  String get creditsUsageLabel => 'Utilisation';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Réflexions restantes : $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan : $plan';
  }

  @override
  String get creditsLoadingLabel => 'Chargement…';

  @override
  String get creditsLoadingLabelDescription =>
      'Affiché pendant la récupération des données de réflexion.';

  @override
  String get creditsTitle => 'Réflexions';

  @override
  String get creditsSubtitle =>
      'Chaque réponse consomme 1 réflexion. Le plan Standard inclut des réflexions de départ. Wilaya débloque les catégories premium.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total réflexions utilisées';
  }

  @override
  String get settingsDeleteTitle => 'Supprimer le compte';

  @override
  String get settingsDeleteDescription =>
      'Supprime définitivement votre compte et toutes les données associées.';

  @override
  String get settingsDeleteButtonLabel => 'Supprimer mon compte';

  @override
  String get settingsDeleteDialogTitle => 'Supprimer le compte ?';

  @override
  String get settingsDeleteDialogBody =>
      'Cette action est irréversible.\n\nTous vos chats, votre historique et vos infos de compte seront supprimés.';

  @override
  String get settingsDeleteDialogCancel => 'Annuler';

  @override
  String get settingsDeleteDialogConfirm => 'Supprimer';

  @override
  String get settingsFreeLimitUsedTitle => 'Réflexions de départ épuisées';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Les réflexions offertes pour cet appareil ont été utilisées. Passez à Wilaya ou achetez des crédits pour continuer.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Réflexions de départ épuisées';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Les réflexions offertes pour cet appareil ont été utilisées. Passez à Wilaya ou achetez des crédits pour continuer.';

  @override
  String get deviceBoundError =>
      'Cet appareil est déjà lié à un autre compte. Veuillez vous connecter avec le compte original.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic => 'Débloquez l\'expérience complète Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Vous êtes sous Wilaya. Besoin de plus de réflexions ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actuel : $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Réflexions : $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Les achats sont indisponibles pour le moment.';

  @override
  String get premiumSignInToPurchase =>
      'Connectez-vous pour acheter des crédits ou débloquer Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurer les achats';

  @override
  String get premiumProcessing => 'Traitement…';

  @override
  String get premiumRestoreHintTitle =>
      'Déjà acheté Wilaya ou des crédits sur cet appareil ou un autre ?';

  @override
  String get premiumRestoreHintBody =>
      'Restaurez vos achats s\'ils n\'apparaissent pas.';

  @override
  String get premiumBuyCredits200 => 'Acheter 200 réflexions';

  @override
  String get premiumBuyCredits400 => 'Acheter 400 réflexions';

  @override
  String get premiumBecomePremiumOneTime => 'Passer au mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Avec Wilaya, vous pouvez recharger des crédits dès que nécessaire.';

  @override
  String get premiumUpgradeCta => 'Mettre à niveau';

  @override
  String get premiumRequiredForCategory =>
      'Cette catégorie est réservée aux utilisateurs Wilaya. Mettez à niveau votre plan dans les Paramètres.';

  @override
  String get premiumBenefitsBasic =>
      'Débloquez Wilaya pour obtenir des réflexions supplémentaires et accéder aux catégories premium.';

  @override
  String get premiumBenefitsPremium =>
      'Vous êtes en mode Wilaya. Si vous manquez de crédits, vous pouvez recharger à tout moment.';

  @override
  String get premiumButtonBecomePremium => 'Débloquer Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Ajouter 1000 réflexions';

  @override
  String get premiumBadge => 'Wilaya actif';

  @override
  String get premiumLoadingStore => 'Chargement de la boutique…';

  @override
  String get premiumProductNotAvailable =>
      'Ce produit n\'est pas encore disponible. Veuillez réessayer plus tard.';

  @override
  String get premiumPurchaseError =>
      'Un problème est survenu lors de l\'achat. Veuillez réessayer.';

  @override
  String get premiumBuyCredits100 => 'Ajouter 100 réflexions';

  @override
  String get premiumFeatureLocked =>
      'Débloquez Wilaya pour accéder à cette fonctionnalité.';

  @override
  String get lockedCategoriesHint =>
      'Certaines catégories sont réservées aux membres Wilaya. Débloquez-les pour explorer tout le contenu.';

  @override
  String get freePlanBlockedTitle => 'Réflexions de départ épuisées';

  @override
  String get freePlanBlockedBody =>
      'Vous avez atteint la limite du plan Standard. Pour continuer et accéder aux catégories premium, passez à Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Voir les options Wilaya ci-dessous';

  @override
  String get graceBlockedTitle => 'Réflexions gratuites épuisées';

  @override
  String get graceBlockedBody =>
      'Vous avez utilisé toutes vos réflexions de départ. Passez à Wilaya pour débloquer le contenu premium.';

  @override
  String get graceBlockedCtaGoPremium => 'Voir les options Wilaya ci-dessous';

  @override
  String get rateGuestMustSignIn =>
      'Connectez-vous pour utiliser Ayara et vos réflexions.';

  @override
  String get guestNoCreditsTitle => 'Mode Invité';

  @override
  String get guestNoCreditsBody =>
      'En tant qu\'invité, vous pouvez parcourir l\'app, mais pas utiliser les réflexions. Connectez-vous pour débloquer les fonctionnalités.';

  @override
  String get guestDialogContinue => 'Continuer';

  @override
  String get guestDialogLoginInstead => 'Se connecter plutôt';

  @override
  String get optionalLabel => 'optionnel';

  @override
  String get accountDeleteSuccessTitle => 'Compte supprimé';

  @override
  String get accountDeleteSuccessBody =>
      'Votre compte et vos données ont été supprimés avec succès.';

  @override
  String get accountDeleteSuccessClose => 'Fermer';

  @override
  String get accountDeleteErrorTitle => 'Échec de la suppression';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ré-authentification annulée. Veuillez vous reconnecter pour réessayer.';

  @override
  String get accountDeleteReauthRequired =>
      'La suppression nécessite une connexion récente. Veuillez vous déconnecter et vous reconnecter.';

  @override
  String get settingsDeletePermanentWarning =>
      'Cette action est irréversible. Toutes les données associées seront effacées.';

  @override
  String get dailyGraceTitle => 'Guidance Quotidienne';

  @override
  String get dailyGraceScriptureLabel => 'VERSET DU JOUR';

  @override
  String get dailyGraceSaintLabel => 'FIGURE DE LA SEMAINE';

  @override
  String get dailyGraceReflectionLabel => 'RÉFLEXION DU SOIR';

  @override
  String get dailyGraceCopiedToast => 'Verset copié';

  @override
  String get locationConsentLabel =>
      'Autoriser Ayara à utiliser ma position pour la Qibla et les horaires de prière';

  @override
  String get locationConsentHint =>
      'Utilisé uniquement pour ces fonctions. Votre position n\'est jamais partagée ou stockée.';

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
  String get askPageTitle => 'Demander à Ayara';

  @override
  String get askPageDescription =>
      'Posez vos questions sur la foi, la prière ou la pratique islamique. Recevez une guidance ancrée dans le Coran et les enseignements de l\'Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Tapez votre question ici…';

  @override
  String get askPageSubmitCta => 'Demander';

  @override
  String get askPageInputEmptyError => 'Veuillez d\'abord écrire une question.';

  @override
  String get askResultYourQuestion => 'Votre question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Face à la Mecque';

  @override
  String get qiblaCompassInstruction =>
      'Tournez votre téléphone jusqu\'à ce que l\'aiguille dorée pointe vers le haut.\nC\'est la direction de la Qibla (La Mecque).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Signal GPS faible. Déplacez-vous à l\'extérieur et réessayez.';

  @override
  String get qiblaRetry => 'Réessayer';

  @override
  String get qiblaTitle => 'Direction de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km jusqu\'à la Mecque';
  }

  @override
  String get qiblaLocationNeededTitle => 'Position requise';

  @override
  String get qiblaLocationNeededBody =>
      'Autorisez l\'accès à la position pour calculer la direction de la Kaaba d\'où que vous soyez.';

  @override
  String get qiblaOpenSettings => 'Ouvrir les Paramètres';

  @override
  String get qiblaCompassLoading => 'Recherche de votre position…';

  @override
  String get qiblaTowardMecca => 'Vers la Mecque';

  @override
  String get prayerTimesTitle => 'Heures de Prière';

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
  String get prayerTimesLocationNeededTitle => 'Position requise';

  @override
  String get prayerTimesLocationNeededBody =>
      'Autorisez l\'accès à la position pour obtenir les horaires précis pour votre ville.';

  @override
  String get prayerTimesNextLabel => 'Suivant';

  @override
  String get prayerTimesDoneLabel => 'Terminé';

  @override
  String get monthlyPrayerTimesTitle => 'Horaires Mensuels';

  @override
  String get monthlyPrayerTimesViewButton => 'Voir tout le mois';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mois prochain';

  @override
  String get monthlyPrayerTimesDayHeader => 'Jour';

  @override
  String get sharePrayerTimes => 'Partager les horaires';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Rappels de prière, calendrier et plus';

  @override
  String get dailyReflectionReminderTitle => 'Réflexion Quotidienne';

  @override
  String get dailyReflectionReminderDescription =>
      'Un rappel quotidien pour se connecter à sa foi via Ayara.';

  @override
  String get dailyReflectionReminderEnable => 'Activer le rappel quotidien';

  @override
  String get dailyReflectionReminderTimeLabel => 'Heure du rappel';

  @override
  String get prayerNotificationsTitle => 'Rappels de Prière';

  @override
  String get prayerNotificationsDescription =>
      'Recevez une notification avant chaque prière pour rester connecté tout au long de la journée.';

  @override
  String get prayerNotificationsEnable => 'Activer les rappels';

  @override
  String get prayerNotificationsOpenSettings => 'Paramètres de notification';

  @override
  String get prayerNotificationsDenied => 'Notifications désactivées';

  @override
  String get prayerNotificationsDeniedHint =>
      'Autorisez les notifications dans les réglages de votre appareil.';

  @override
  String get notificationsConsentLabel =>
      'Autoriser les notifications pour les prières';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Prière de l\'Aube';

  @override
  String get prayerNotifBodyFajr =>
      'Le Fajr est la prière des matins de l\'Ahl al-Bayt. Imam Ali (AS) a dit : Gardez la prière de l\'aube comme votre dépôt le plus précieux. Levez-vous, purifiez-vous et tenez-vous devant Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Prière du Midi';

  @override
  String get prayerNotifBodyDhuhr =>
      'Les Imams chérissaient chaque instant de souvenir. Marquez une pause, combinez Dhuhr et Asr si nécessaire, et tournez votre cœur vers Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Prière de l\'Après-midi';

  @override
  String get prayerNotifBodyAsr =>
      'Préservez la prière, c\'est le pacte entre vous et Allah. L\'heure de l\'Asr est là — ne la laissez pas passer sans évocation.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Prière du Coucher du soleil';

  @override
  String get prayerNotifBodyMaghrib =>
      'Le soleil s\'est couché — un moment sacré pour l\'Ahl al-Bayt. Offrez votre Maghrib et ouvrez vos mains pour le dua avant que la nuit commence.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Prière de la Nuit';

  @override
  String get prayerNotifBodyIsha =>
      'Finissez votre journée en compagnie d\'Allah. Les Imams encourageaient la Salat al-Layl après l\'Isha — mais d\'abord, complétez votre Isha.';

  @override
  String get outOfReflectionsBannerText => 'Vous avez épuisé vos réflexions';

  @override
  String get outOfReflectionsBannerCta => 'En obtenir plus';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Appuyez sur le cercle pour compter';

  @override
  String get dhikrResetButton => 'Réinitialiser';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Vous avez complété 100 évocations. Puisse cela être une lumière pour votre cœur.';

  @override
  String get disclaimerTitle => 'À propos de la guidance';

  @override
  String get disclaimerBody =>
      'Ayara propose des réflexions islamiques basées sur le Coran et l\'Ahl al-Bayt. Ce contenu est à but informatif et inspirant uniquement.\n\nAyara ne remplace pas l\'avis des savants.\nCette app ne remplace pas un savant (\'alim), un Marja\' ou un enseignant qualifié. Dans le chiisme, la guidance est ancrée dans l\'école Ja\'farite et le suivi d\'un Marja\' vivant. En cas de questions juridiques (fiqh) ou d\'obligations religieuses, veuillez consulter un Marja\' qualifié.\n\nCette application n\'émet pas de décrets religieux (fatwas).\n\nCentralité de l\'Ahl al-Bayt.\nLe Prophète Muhammad ﷺ et sa famille purifiée sont les guides après le Coran. Les douze Imams sont les interprètes divinement nommés. Cette application cherche à honorer fidèlement cette tradition.\n\nImportance de la communauté.\nNous vous encourageons à rester connecté avec votre mosquée locale et vos enseignants qualifiés.';

  @override
  String get disclaimerClose => 'Je comprends';

  @override
  String get disclaimerInfoTooltip => 'À propos de la guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'À but informatif. Appuyez pour lire le texte complet.';

  @override
  String get disclaimerSectionHeader => 'Clause de non-responsabilité';

  @override
  String get navHome => 'Accueil';

  @override
  String get navReflect => 'Réfléchir';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendrier';

  @override
  String get dashboardToday => 'AUJOURD\'HUI';

  @override
  String get dashboardComingUp => 'À venir';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jours',
      one: 'jour',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Accès Rapide';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Horaires';

  @override
  String get askAyaraTitle => 'Demander à Ayara';

  @override
  String get askAyaraSubtitle =>
      'Posez une question et recevez une réponse réfléchie et guidée.';

  @override
  String get askAyaraHint => 'ex: Quelle est l\'importance du Ramadan ?';

  @override
  String get askAyaraSubmit => 'Demander';

  @override
  String get wisdomOfTheDayTitle => 'Sagesse du Jour';

  @override
  String get calendarScreenTitle => 'Calendrier Islamique';

  @override
  String get calendarUpcomingOccasions => 'Occasions à venir';

  @override
  String get calendarOccasionRemindersTitle => 'Rappels d\'Occasions';

  @override
  String get calendarOccasionRemindersHint => 'Notifié la veille au soir';

  @override
  String get calendarNotifPermissionDenied =>
      'Permission refusée. Activez-la dans les réglages.';

  @override
  String get calendarNoEvents => 'Aucun événement trouvé.';

  @override
  String get calendarAddToPhone => 'Ajouter au calendrier du téléphone';

  @override
  String get calendarAddedToPhone => 'Ajouté au calendrier';

  @override
  String get calendarCountdownToday => 'AUJOURD\'HUI';

  @override
  String get calendarCountdownTomorrow => 'DEMAIN';

  @override
  String calendarCountdownDays(int days) {
    return 'dans $days jours';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fév';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Avr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Juin';

  @override
  String get calendarMonthJul => 'Juil';

  @override
  String get calendarMonthAug => 'Août';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Déc';

  @override
  String get calendarSeasonMuharramEarly =>
      'Jours de Muharram — Souvenir de Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — jours de deuil et réflexion';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quarante jours de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'La route vers l\'Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — l\'aube de la révélation';

  @override
  String get calendarSeasonMidShaban =>
      'Mi-Sha\'ban — naissance de l\'Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — le mois du Coran';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak !';

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
  String get duasSearchHint => 'Chercher un dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tous';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Aucun dua trouvé.';

  @override
  String get duaCategoryDaily => 'Quotidien';

  @override
  String get duaCategoryWeekly => 'Hebdomadaire';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Naissance';

  @override
  String get eventTypeMartyrdom => 'Martyre';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copier traduction';

  @override
  String get duaToggleTransliteration => 'Translittération';

  @override
  String get duaToggleTranslation => 'Traduction';

  @override
  String get duaAskAiLabel => 'Demander à Ayara d\'expliquer ce dua';

  @override
  String get duaAskAiLockedLabel => 'Demander à Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Les explications sont réservées aux membres Wilaya.';

  @override
  String duaAiComingSoon(String name) {
    return 'Demandez à Ayara sur \"$name\" — bientôt !';
  }

  @override
  String get duaCopiedToast => 'Dua copié dans le presse-papiers.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah est le Plus Grand';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toute louange appartient à Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloire à Allah';

  @override
  String get tasbihResetTooltip => 'Réinitialiser';

  @override
  String get tasbihCompleteTitle => 'Tasbih Terminé';

  @override
  String get tasbihCompleteMessage => 'Puisse Allah accepter votre dhikr.';

  @override
  String get tasbihTapHint => 'Appuyez n\'importe où pour compter';

  @override
  String get tasbihatScreenTitle => 'Guide de Prière';

  @override
  String get tasbihatScreenSubtitle => 'LES GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'Un guide complet des glorifications récitées pendant et après les prières quotidiennes — suivant la tradition de l\'Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Récité pendant les 3ème & 4ème rakʿahs';

  @override
  String get tasbihatArba3Info =>
      'Dans la jurisprudence chiite, le Tasbiḥāt al-Arbaʿa remplace la Sourate al-Fatiha dans les 3ème et 4ème rakʿahs. Il est obligatoire (wājib) de le réciter une fois, et recommandé (mustaḥabb) de le réciter trois fois.';

  @override
  String get tasbihatArba3Translation =>
      'Gloire à Allah · Louange à Allah\nNul dieu sinon Allah · Allah est le Plus Grand';

  @override
  String get tasbihatArba3CompleteTitle => 'Récitation Terminée';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Puisse votre prière être acceptée — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Appuyez après chaque récitation';

  @override
  String get tasbihatZahraSubtitle => 'Après chaque prière · 100 grains';

  @override
  String get tasbihatZahraOriginLabel => 'Origine';

  @override
  String get tasbihatZahraHadith =>
      'Dame Fatima al-Zahra (sa) a demandé au Prophète ﷺ un serviteur. Il répondit : \"Ne devrais-je pas vous guider vers quelque chose de meilleur ? Récitez Subḥānallāh 33 fois, Alḥamdulillāh 33 fois, et Allāhu Akbar 34 fois après chaque prière. C\'est mieux pour vous qu\'un serviteur.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Ouvrir le compteur Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS RECOMMANDÉS';

  @override
  String get tasbihatDuasSubtitle => 'Après avoir terminé votre prière';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Après chaque prière obligatoire';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sourate al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quiconque récite Āyat al-Kursī après chaque prière obligatoire, rien ne le sépare du paradis sinon la mort. L\'Imam al-Bāqir (a) a dit que c\'est l\'un des plus grands versets du Coran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Après chaque prière · scelle les supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Saluer le Prophète ﷺ et sa famille purifiée (Āl Muḥammad) est recommandé pour sceller chaque dua. L\'Imam al-Ṣādiq (a) a dit : \"Tout dua est suspendu jusqu\'à ce que vous envoyiez la ṣalawāt.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Après chaque prière · pour l\'Imam de notre temps';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseigné par l\'Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Une dua pour la réapparition de l\'Imam al-Mahdī (af), le douzième Imam, enseignée par son père. Elle est souvent récitée par de nombreux musulmans chiites après la prière comme un acte de dévotion envers l\'Imam vivant.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de Dame Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen => 'Après le Maghrib & l\'Isha';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'L\'Imam al-Bāqir (a) a dit que réciter le Tasbīḥ al-Zahrā après l\'Isha avant de dormir est meilleur que 1000 rakʿahs de prière optionnelle.';

  @override
  String get tasbihFatimaGiftPre => 'Un cadeau du Prophète';

  @override
  String get tasbihFatimaGiftPost => 'récité après chaque prière';

  @override
  String get prayerTrackerTitle => 'SUIVI DES PRIÈRES';

  @override
  String get prayerTrackerPrayed => 'Prié';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Série de $count jours';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Toutes les prières terminées aujourd\'hui. Puisse Allah accepter.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Fait aujourd\'hui';

  @override
  String get dhikrTrackerNotDoneToday => 'Pas encore fait';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Série de $count jours';
  }

  @override
  String get dhikrReminderTitle => 'Rappel Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un rappel quotidien pour votre Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Activer le rappel';

  @override
  String get dhikrReminderTimeLabel => 'Heure du rappel';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith du Jour';

  @override
  String get hadithLabelArabic => 'ARABE';

  @override
  String get hadithLabelTranslation => 'TRADUCTION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Partager ce Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Précédent';

  @override
  String get hadithNavNext => 'Suivant';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Les Quatorze Infaillibles';

  @override
  String get imamsScreenSubtitle =>
      'Le Prophète, Lady Fatima et les Douze Imams — les guides purifiés et infaillibles dans l\'islam chiite duodécimain';

  @override
  String get imamLabelBorn => 'Naissance';

  @override
  String get imamLabelMartyrdom => 'Martyre';

  @override
  String get imamLabelStatus => 'Statut';

  @override
  String get imamSectionBiography => 'BIOGRAPHIE';

  @override
  String get imamSectionFamousSaying => 'PAROLE CÉLÈBRE';

  @override
  String get imamRoleProphet => 'Le Sceau des Prophètes';

  @override
  String get imamRoleInfallible => 'L\'Infaillible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2ème Imam';

  @override
  String get imamOrdinal3 => '3ème Imam';

  @override
  String get imamOrdinal4 => '4ème Imam';

  @override
  String get imamOrdinal5 => '5ème Imam';

  @override
  String get imamOrdinal6 => '6ème Imam';

  @override
  String get imamOrdinal7 => '7ème Imam';

  @override
  String get imamOrdinal8 => '8ème Imam';

  @override
  String get imamOrdinal9 => '9ème Imam';

  @override
  String get imamOrdinal10 => '10ème Imam';

  @override
  String get imamOrdinal11 => '11ème Imam';

  @override
  String get imamOrdinal12 => '12ème Imam';

  @override
  String get duaAudioScreenTitle => 'Écouter les Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Sélectionnez un dua pour l\'écouter. Appuyez pour lire ou mettre en pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'L\'audio pour ce dua sera bientôt disponible.';

  @override
  String get duaAudioClose => 'Fermer';

  @override
  String get duaAudioError =>
      'Échec du chargement audio. Vérifiez votre connexion.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmis par';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Durée';

  @override
  String get quickActionDailyHadith => 'Hadith du Jour';

  @override
  String get quickAction14Masumeen => 'Quatorze Infaillibles';

  @override
  String get quickActionListenDuas => 'Écouter';

  @override
  String get quickActionTasbihat => 'Guide Prière';

  @override
  String get pilgrimageSectionTitle => 'Le Voyage Sacré';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guides pour le Hajj & l\'Umrah — le pèlerinage à la Maison d\'Allah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Le Cinquième Pilier de l\'Islam';

  @override
  String get hajjCardDescription =>
      'Le grand pèlerinage annuel — obligatoire une fois dans la vie';

  @override
  String get hajjScreenTitle => 'Guide du Hajj';

  @override
  String get hajjScreenSubtitle => 'Guide étape par étape du grand pèlerinage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Le Petit Pèlerinage';

  @override
  String get umrahCardDescription =>
      'Un voyage spirituel gratifiant réalisable à tout moment de l\'année';

  @override
  String get umrahScreenTitle => 'Guide de l\'Umrah';

  @override
  String get umrahScreenSubtitle => 'Guide étape par étape du petit pèlerinage';

  @override
  String get pilgrimageStepsTitle => 'Rituels & Étapes';

  @override
  String get pilgrimageImportantNotesTitle => 'Notes Importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua pour cette étape';

  @override
  String get pilgrimageJafariNoteTitle => 'Note de fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Complet';

  @override
  String get pilgrimageMarkDone => 'Marquer comme complet';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done sur $total étapes';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pèlerins Chiites';

  @override
  String get pilgrimageShiaNoteBody =>
      'De nombreux pèlerins chiites se rendent également à Médine pour le ziyarat du Prophète Muhammad (SAW) à la Mosquée du Prophète et aux tombes de Jannat al-Baqi. Ces visites ont une profonde signification spirituelle, bien qu\'elles ne soient pas en elles-mêmes des rites du Hajj.';

  @override
  String get hajjIntro =>
      'Le Hajj est le cinquième pilier de l\'islam, obligatoire une fois dans la vie pour chaque musulman qui est physiquement et financièrement capable. Pour la plupart des pèlerins chiites duodécimains aujourd\'hui, cela signifie le Hajj al-Tamattu\', effectué au mois de Dhul Hijjah sur les traces du Prophète Ibrahim (AS), de son fils Ismail (AS) et de Lady Hajar. Ce guide suit le schéma ja\'fari des rites, tandis que le ziyarat à Médine reste un voyage profondément chéri avant ou après le Hajj.';

  @override
  String get umrahIntro =>
      'L\'Umrah est le petit pèlerinage. Bien que non obligatoire, il porte une immense récompense spirituelle. Il partage plusieurs rituels avec le Hajj mais est plus court.';

  @override
  String get voiceInputTitle => 'Entrée vocale';

  @override
  String get voiceInputMicTitle => 'Microphone';

  @override
  String get voiceInputMicSubtitle =>
      'Parlez votre demande à Ask Ayara au lieu de taper.';

  @override
  String get voiceInputMicDenied => 'L\'accès au microphone a été refusé.';

  @override
  String get voiceInputSpeak => 'Parler à la place';

  @override
  String get voiceInputListening => 'Écoute…';

  @override
  String get voiceInputPermissionDenied =>
      'L\'accès au microphone est requis pour l\'entrée vocale.';
}

/// The translations for French, as used in Belgium (`fr_BE`).
class AppLocalizationsFrBe extends AppLocalizationsFr {
  AppLocalizationsFrBe() : super('fr_BE');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choisissez votre langue';

  @override
  String get languageSelectSub =>
      'Vous pourrez modifier ce choix plus tard dans les Paramètres';

  @override
  String get actionContinue => 'Continuer';

  @override
  String get languageSuggestedHeader => 'Suggestions';

  @override
  String get languageAllHeader => 'Toutes les langues';

  @override
  String get languageSuggestedBadge => 'Suggéré';

  @override
  String get languageSearchHint => 'Rechercher…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Guidance Quotidienne';

  @override
  String get categorySlot02 => 'Iman & Confiance';

  @override
  String get categorySlot03 => 'Réflexion sur la Prière';

  @override
  String get categorySlot04 => 'Patience & Espoir';

  @override
  String get categorySlot05 => 'Demander le Pardon';

  @override
  String get categorySlot06 => 'Miséricorde & Compassion';

  @override
  String get categorySlot07 => 'Force de la Foi';

  @override
  String get categorySlot08 => 'Cœur Reconnaissant';

  @override
  String get categorySlot09 => 'Sens de la Vie';

  @override
  String get categorySlot10 => 'Liens Familiaux';

  @override
  String get categorySlot11 => 'Paix Intérieure';

  @override
  String get categorySlot12 => 'Sagesse Prophétique';

  @override
  String get categorySlot13 => 'Noblesse de Caractère';

  @override
  String get categorySlot14 => 'Résister à la Tentation';

  @override
  String get categorySlot15 => 'Dhikr du Soir';

  @override
  String get categoryCustom => 'Réflexion Personnelle';

  @override
  String get dhikrMeaningSubhanallah => 'Gloire à Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Louange à Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah est le Plus Grand';

  @override
  String get quranVerseHeartAtRest =>
      'N\'est-ce pas par l\'évocation d\'Allah que les cœurs s\'apaisent ?';

  @override
  String get promptHint =>
      'Appuyez sur une catégorie pour une guidance islamique';

  @override
  String get currentLanguage => 'Langue actuelle';

  @override
  String get settingsLanguage => 'Paramètres de langue';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get chooseLanguage => 'Choisissez votre langue';

  @override
  String get continueCta => 'Continuer';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mots',
      one: '$count mot',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'Nouveau';

  @override
  String get actionsTitle => 'Que souhaitez-vous faire ?';

  @override
  String get copy => 'Copier';

  @override
  String get share => 'Partager';

  @override
  String get close => 'Fermer';

  @override
  String get copiedToast => 'Copié dans le presse-papiers';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Impossible de générer une réponse';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVoulez-vous réessayer ?';
  }

  @override
  String get cancelCta => 'Annuler';

  @override
  String get retryCta => 'Réessayer';

  @override
  String get authTitle => 'Créez votre compte';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get signInEmail => 'Se connecter par e-mail';

  @override
  String get upgradeWithApple => 'Continuer avec Apple';

  @override
  String get mustAccept =>
      'Vous devez accepter les Conditions et la Politique de Confidentialité.';

  @override
  String get termsLabel => 'J\'accepte les Conditions d\'Utilisation';

  @override
  String get privacyLabel => 'J\'ai lu la Politique de Confidentialité';

  @override
  String get marketingOptIn =>
      'J\'accepte de recevoir des nouvelles et des offres';

  @override
  String get openTerms => 'Conditions d\'Utilisation';

  @override
  String get openPrivacy => 'Politique de Confidentialité';

  @override
  String get accountSection => 'Compte';

  @override
  String get guestMode => 'Mode invité';

  @override
  String get signedIn => 'Connecté';

  @override
  String get upgradeHint =>
      'Enregistrez vos réflexions sur tous vos appareils en créant un compte.';

  @override
  String get upgradeWithGoogle => 'Continuer avec Google';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String get snackUpgraded => 'Compte mis à niveau avec Google ✅';

  @override
  String get snackSignedIn => 'Connecté avec Google ✅';

  @override
  String get snackSignedOut => 'Déconnecté';

  @override
  String get snackSignedInApple => 'Connecté avec Apple ✅';

  @override
  String get snackSignedInGoogle => 'Connecté avec Google ✅';

  @override
  String get snackUpgradedApple => 'Compte mis à niveau avec Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Compte mis à niveau avec Google ✅';

  @override
  String get historyTitle => 'Réflexions précédentes';

  @override
  String get historyOpenCta => 'Historique des réflexions';

  @override
  String get historyEmpty => 'Aucune réflexion enregistrée pour le moment.';

  @override
  String get historyDeleteTitle => 'Supprimer la réflexion ?';

  @override
  String get historyDeleteBody =>
      'Ceci supprimera définitivement l\'élément sélectionné.';

  @override
  String get deleteCta => 'Supprimer';

  @override
  String get historyButton => 'Réflexions Précédentes';

  @override
  String get historyEmptyTitle => 'Pas encore de réflexions';

  @override
  String get historyEmptyBody =>
      'Générez du contenu d\'abord — vos éléments sauvegardés apparaîtront ici.';

  @override
  String get historyDelete => 'Supprimer';

  @override
  String get footerTitle => 'Avec Wilaya, Iman et Sabr';

  @override
  String get footerSubtitle => 'Une prière à la fois';

  @override
  String get genericErrorSnack =>
      'Un problème est survenu — veuillez réessayer dans un instant.';

  @override
  String get upgradeAccountCta =>
      'Sauvegardez vos réflexions partout – créez un compte';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get exportData => 'Exporter mes données';

  @override
  String userUidLabel(String uid) {
    return 'UID : $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Doucement 🐯\nAyara a besoin d\'un instant avant la prochaine réponse…';

  @override
  String get rateDailyLimit =>
      'Vous n\'avez plus de réflexions pour aujourd\'hui.\nObtenez-en plus ou passez à Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Vous avez utilisé toutes vos réflexions.\nRechargez ou passez à Wilaya pour continuer.';

  @override
  String get rateGraceCreditsExhausted =>
      'Vous n\'avez plus de réflexions disponible.\nRechargez votre compte ou passez à Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya débloque les fonctionnalités premium, les futures catégories et un badge spécial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vos réflexions sont épuisées. Plan : $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Impossible de vérifier vos réflexions : $message';
  }

  @override
  String get rateCheckGenericError =>
      'Une erreur est survenue lors de la vérification de vos crédits.';

  @override
  String get aiFallbackGeneric =>
      'Un problème est survenu — veuillez réessayer dans un instant.';

  @override
  String get limitSectionTitle => 'Réflexions';

  @override
  String get limitTodayLabel => 'Utilisation';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Réflexions restantes : $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan : $plan';
  }

  @override
  String get limitLoadingLabel => 'Chargement…';

  @override
  String get limitLoadingLabelDescription =>
      'Affiché pendant la récupération des statistiques.';

  @override
  String get aiLimitTitle => 'Réflexions';

  @override
  String get aiLimitSubtitle =>
      'Chaque réponse consomme 1 réflexion. Le plan Standard inclut des réflexions de départ. Wilaya débloque les catégories premium et permet les recharges.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total réflexions utilisées';
  }

  @override
  String get creditsSectionTitle => 'Réflexions';

  @override
  String get creditsUsageLabel => 'Utilisation';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Réflexions restantes : $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan : $plan';
  }

  @override
  String get creditsLoadingLabel => 'Chargement…';

  @override
  String get creditsLoadingLabelDescription =>
      'Affiché pendant la récupération des données.';

  @override
  String get creditsTitle => 'Réflexions';

  @override
  String get creditsSubtitle =>
      'Chaque réponse consomme 1 réflexion. Le plan Standard inclut des réflexions de départ. Wilaya débloque les catégories premium.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total réflexions utilisées';
  }

  @override
  String get settingsDeleteTitle => 'Supprimer le compte';

  @override
  String get settingsDeleteDescription =>
      'Supprime définitivement votre compte et toutes les données associées.';

  @override
  String get settingsDeleteButtonLabel => 'Supprimer mon compte';

  @override
  String get settingsDeleteDialogTitle => 'Supprimer le compte ?';

  @override
  String get settingsDeleteDialogBody =>
      'Cette action est irréversible.\n\nTous vos chats, votre historique et vos infos seront supprimés.';

  @override
  String get settingsDeleteDialogCancel => 'Annuler';

  @override
  String get settingsDeleteDialogConfirm => 'Supprimer';

  @override
  String get settingsFreeLimitUsedTitle => 'Réflexions gratuites épuisées';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Les réflexions de départ pour cet appareil ont été utilisées. Passez à Wilaya ou achetez des crédits.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Réflexions de départ épuisées';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Vous avez utilisé vos crédits offerts. Passez à Wilaya pour continuer.';

  @override
  String get deviceBoundError =>
      'Cet appareil est déjà lié à un autre compte. Veuillez vous connecter avec le compte original.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic => 'Débloquez l\'expérience complète Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Vous êtes sous Wilaya. Besoin de plus de réflexions ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actuel : $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Réflexions : $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Les achats sont indisponibles pour le moment.';

  @override
  String get premiumSignInToPurchase =>
      'Connectez-vous pour acheter des crédits ou débloquer Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurer les achats';

  @override
  String get premiumProcessing => 'Traitement…';

  @override
  String get premiumRestoreHintTitle => 'Déjà acheté Wilaya ou des crédits ?';

  @override
  String get premiumRestoreHintBody =>
      'Restaurez vos achats s\'ils n\'apparaissent pas.';

  @override
  String get premiumBuyCredits200 => 'Acheter 200 réflexions';

  @override
  String get premiumBuyCredits400 => 'Acheter 400 réflexions';

  @override
  String get premiumBecomePremiumOneTime => 'Passer au mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Avec Wilaya, vous pouvez recharger des crédits dès que nécessaire.';

  @override
  String get premiumUpgradeCta => 'Mettre à niveau';

  @override
  String get premiumRequiredForCategory =>
      'Cette catégorie est réservée aux utilisateurs Wilaya. Mettez à niveau votre plan dans les Paramètres.';

  @override
  String get premiumBenefitsBasic =>
      'Débloquez Wilaya pour obtenir des réflexions supplémentaires et accéder aux catégories premium.';

  @override
  String get premiumBenefitsPremium =>
      'Vous êtes en mode Wilaya. Si vous manquez de crédits, vous pouvez recharger à tout moment.';

  @override
  String get premiumButtonBecomePremium => 'Débloquer Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Ajouter 1000 réflexions';

  @override
  String get premiumBadge => 'Wilaya actif';

  @override
  String get premiumLoadingStore => 'Chargement de la boutique…';

  @override
  String get premiumProductNotAvailable =>
      'Ce produit n\'est pas encore disponible. Veuillez réessayer plus tard.';

  @override
  String get premiumPurchaseError =>
      'Un problème est survenu lors de l\'achat. Veuillez réessayer.';

  @override
  String get premiumBuyCredits100 => 'Ajouter 100 réflexions';

  @override
  String get premiumFeatureLocked =>
      'Débloquez Wilaya pour accéder à cette fonctionnalité.';

  @override
  String get lockedCategoriesHint =>
      'Certaines catégories sont réservées aux membres Wilaya. Débloquez-les pour explorer tout le contenu.';

  @override
  String get freePlanBlockedTitle => 'Réflexions de départ épuisées';

  @override
  String get freePlanBlockedBody =>
      'Vous avez atteint la limite du plan Standard. Pour continuer et accéder aux catégories premium, passez à Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Voir les options Wilaya ci-dessous';

  @override
  String get graceBlockedTitle => 'Réflexions gratuites épuisées';

  @override
  String get graceBlockedBody =>
      'Vous avez utilisé toutes vos réflexions de départ. Passez à Wilaya pour débloquer le contenu premium.';

  @override
  String get graceBlockedCtaGoPremium => 'Voir les options Wilaya';

  @override
  String get rateGuestMustSignIn =>
      'Connectez-vous pour utiliser Ayara et vos réflexions.';

  @override
  String get guestNoCreditsTitle => 'Mode Invité';

  @override
  String get guestNoCreditsBody =>
      'En tant qu\'invité, vous pouvez parcourir l\'app, mais pas utiliser les réflexions. Connectez-vous pour débloquer les fonctionnalités.';

  @override
  String get guestDialogContinue => 'Continuer';

  @override
  String get guestDialogLoginInstead => 'Se connecter plutôt';

  @override
  String get optionalLabel => 'optionnel';

  @override
  String get accountDeleteSuccessTitle => 'Compte supprimé';

  @override
  String get accountDeleteSuccessBody =>
      'Votre compte et vos données ont été supprimés avec succès.';

  @override
  String get accountDeleteSuccessClose => 'Fermer';

  @override
  String get accountDeleteErrorTitle => 'Échec de la suppression';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ré-authentification annulée. Veuillez vous reconnecter pour réessayer.';

  @override
  String get accountDeleteReauthRequired =>
      'La suppression nécessite une connexion récente. Veuillez vous déconnecter et vous reconnecter.';

  @override
  String get settingsDeletePermanentWarning =>
      'Cette action est définitive. Toutes les données seront effacées.';

  @override
  String get dailyGraceTitle => 'Guidance Quotidienne';

  @override
  String get dailyGraceScriptureLabel => 'VERSET DU JOUR';

  @override
  String get dailyGraceSaintLabel => 'FIGURE DE LA SEMAINE';

  @override
  String get dailyGraceReflectionLabel => 'RÉFLEXION DU SOIR';

  @override
  String get dailyGraceCopiedToast => 'Verset copié';

  @override
  String get locationConsentLabel =>
      'Autoriser Ayara à utiliser ma position pour la Qibla et les horaires de prière';

  @override
  String get locationConsentHint =>
      'Utilisé uniquement pour ces fonctions. Votre position n\'est jamais partagée ou stockée.';

  @override
  String get askPageTitle => 'Demander à Ayara';

  @override
  String get askPageDescription =>
      'Posez vos questions sur la foi, la prière ou la pratique islamique. Recevez une guidance ancrée dans le Coran et les enseignements de l\'Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Tapez votre question ici…';

  @override
  String get askPageSubmitCta => 'Demander';

  @override
  String get askPageInputEmptyError => 'Veuillez d\'abord écrire une question.';

  @override
  String get askResultYourQuestion => 'Votre question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Face à la Mecque';

  @override
  String get qiblaCompassInstruction =>
      'Tournez votre téléphone jusqu\'à ce que l\'aiguille dorée pointe vers le haut.\nC\'est la direction de la Qibla.';

  @override
  String get qiblaGpsUnavailableBody =>
      'Signal GPS faible. Déplacez-vous à l\'extérieur et réessayez.';

  @override
  String get qiblaRetry => 'Réessayer';

  @override
  String get qiblaTitle => 'Direction de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km jusqu\'à la Mecque';
  }

  @override
  String get qiblaLocationNeededTitle => 'Position requise';

  @override
  String get qiblaLocationNeededBody =>
      'Autorisez l\'accès à la position pour calculer la direction de la Kaaba d\'où que vous soyez.';

  @override
  String get qiblaOpenSettings => 'Ouvrir les Paramètres';

  @override
  String get qiblaCompassLoading => 'Recherche de votre position…';

  @override
  String get qiblaTowardMecca => 'Vers la Mecque';

  @override
  String get prayerTimesTitle => 'Heures de Prière';

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
  String get prayerTimesLocationNeededTitle => 'Position requise';

  @override
  String get prayerTimesLocationNeededBody =>
      'Autorisez l\'accès à la position pour obtenir les horaires précis pour votre ville.';

  @override
  String get prayerTimesNextLabel => 'Suivant';

  @override
  String get prayerTimesDoneLabel => 'Terminé';

  @override
  String get monthlyPrayerTimesTitle => 'Horaires Mensuels';

  @override
  String get monthlyPrayerTimesViewButton => 'Voir tout le mois';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mois prochain';

  @override
  String get monthlyPrayerTimesDayHeader => 'Jour';

  @override
  String get sharePrayerTimes => 'Partager les horaires';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Rappels de prière, calendrier et plus';

  @override
  String get dailyReflectionReminderTitle => 'Réflexion Quotidienne';

  @override
  String get dailyReflectionReminderDescription =>
      'Un rappel quotidien pour se connecter à sa foi via Ayara.';

  @override
  String get dailyReflectionReminderEnable => 'Activer le rappel quotidien';

  @override
  String get dailyReflectionReminderTimeLabel => 'Heure du rappel';

  @override
  String get prayerNotificationsTitle => 'Rappels de Prière';

  @override
  String get prayerNotificationsDescription =>
      'Recevez une notification avant chaque prière pour rester connecté tout au long de la journée.';

  @override
  String get prayerNotificationsEnable => 'Activer les rappels';

  @override
  String get prayerNotificationsOpenSettings => 'Paramètres de notification';

  @override
  String get prayerNotificationsDenied => 'Notifications désactivées';

  @override
  String get prayerNotificationsDeniedHint =>
      'Autorisez les notifications dans les réglages de votre appareil.';

  @override
  String get notificationsConsentLabel =>
      'Autoriser les notifications pour les prières';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Prière de l\'Aube';

  @override
  String get prayerNotifBodyFajr =>
      'Le Fajr est la prière des matins de l\'Ahl al-Bayt. Imam Ali (AS) a dit : Gardez la prière de l\'aube comme votre dépôt le plus précieux.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Prière du Midi';

  @override
  String get prayerNotifBodyDhuhr =>
      'Les Imams chérissaient chaque instant de souvenir. Marquez une pause et tournez votre cœur vers Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Prière de l\'Après-midi';

  @override
  String get prayerNotifBodyAsr =>
      'Préservez la prière, c\'est le pacte entre vous et Allah. L\'heure de l\'Asr est là.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Prière du Coucher du soleil';

  @override
  String get prayerNotifBodyMaghrib =>
      'Le soleil s\'est couché. Offrez votre Maghrib et ouvrez vos mains pour le dua.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Prière de la Nuit';

  @override
  String get prayerNotifBodyIsha =>
      'Finissez votre journée en compagnie d\'Allah. Les Imams encourageaient le souvenir avant de fermer les yeux.';

  @override
  String get outOfReflectionsBannerText => 'Vous avez épuisé vos réflexions';

  @override
  String get outOfReflectionsBannerCta => 'En obtenir plus';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Appuyez sur le cercle pour compter';

  @override
  String get dhikrResetButton => 'Réinitialiser';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Vous avez complété 100 évocations. Puisse cela être une lumière pour votre cœur.';

  @override
  String get disclaimerTitle => 'À propos de la guidance';

  @override
  String get disclaimerBody =>
      'Ayara propose des réflexions islamiques basées sur le Coran et l\'Ahl al-Bayt. Ce contenu est à but informatif et inspirant uniquement.\n\nAyara ne remplace pas l\'avis des savants.\nCette app ne remplace pas un savant (\'alim) ou un Marja\'. En cas de questions juridiques (fiqh) ou d\'obligations religieuses, veuillez consulter un Marja\' qualifié de la communauté chiite.\n\nCette application n\'émet pas de décrets religieux (fatwas).\n\nCentralité de l\'Ahl al-Bayt.\nLes douze Imams sont les guides divinement nommés. Cette application cherche à honorer fidèlement cette tradition.\n\nImportance de la communauté.\nNous vous encourageons à rester connecté avec votre mosquée locale et vos enseignants qualifiés.';

  @override
  String get disclaimerClose => 'Je comprends';

  @override
  String get disclaimerInfoTooltip => 'À propos de la guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'À but informatif. Appuyez pour lire le texte complet.';

  @override
  String get disclaimerSectionHeader => 'Clause de non-responsabilité';

  @override
  String get navHome => 'Accueil';

  @override
  String get navReflect => 'Réfléchir';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendrier';

  @override
  String get dashboardToday => 'AUJOURD\'HUI';

  @override
  String get dashboardComingUp => 'À venir';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jours',
      one: 'jour',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Accès Rapide';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Horaires';

  @override
  String get askAyaraTitle => 'Demander à Ayara';

  @override
  String get askAyaraSubtitle =>
      'Posez une question et recevez une réponse guidée.';

  @override
  String get askAyaraHint => 'ex: Quelle est l\'importance du Ramadan ?';

  @override
  String get askAyaraSubmit => 'Demander';

  @override
  String get wisdomOfTheDayTitle => 'Sagesse du Jour';

  @override
  String get calendarScreenTitle => 'Calendrier Islamique';

  @override
  String get calendarUpcomingOccasions => 'Occasions à venir';

  @override
  String get calendarOccasionRemindersTitle => 'Rappels d\'Occasions';

  @override
  String get calendarOccasionRemindersHint => 'Notifié la veille au soir';

  @override
  String get calendarNotifPermissionDenied =>
      'Permission refusée. Activez-la dans les réglages.';

  @override
  String get calendarNoEvents => 'Aucun événement trouvé.';

  @override
  String get calendarAddToPhone => 'Ajouter au calendrier du téléphone';

  @override
  String get calendarAddedToPhone => 'Ajouté au calendrier';

  @override
  String get calendarCountdownToday => 'AUJOURD\'HUI';

  @override
  String get calendarCountdownTomorrow => 'DEMAIN';

  @override
  String calendarCountdownDays(int days) {
    return 'dans $days jours';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fév';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Avr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Juin';

  @override
  String get calendarMonthJul => 'Juil';

  @override
  String get calendarMonthAug => 'Août';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Déc';

  @override
  String get calendarSeasonMuharramEarly =>
      'Jours de Muharram — Souvenir de Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — jours de deuil et réflexion';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quarante jours de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'La route vers l\'Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — l\'aube de la révélation';

  @override
  String get calendarSeasonMidShaban =>
      'Mi-Sha\'ban — naissance de l\'Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — le mois du Coran';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak !';

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
  String get duasSearchHint => 'Chercher un dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tous';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Aucun dua trouvé.';

  @override
  String get duaCategoryDaily => 'Quotidien';

  @override
  String get duaCategoryWeekly => 'Hebdomadaire';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Naissance';

  @override
  String get eventTypeMartyrdom => 'Martyre';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copier traduction';

  @override
  String get duaToggleTransliteration => 'Translittération';

  @override
  String get duaToggleTranslation => 'Traduction';

  @override
  String get duaAskAiLabel => 'Demander à Ayara d\'expliquer ce dua';

  @override
  String get duaAskAiLockedLabel => 'Demander à Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Les explications sont réservées aux membres Wilaya.';

  @override
  String duaAiComingSoon(String name) {
    return 'Demandez à Ayara sur \"$name\" — bientôt disponible !';
  }

  @override
  String get duaCopiedToast => 'Dua copié dans le presse-papiers.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah est le Plus Grand';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toute louange appartient à Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloire à Allah';

  @override
  String get tasbihResetTooltip => 'Réinitialiser';

  @override
  String get tasbihCompleteTitle => 'Tasbih Terminé';

  @override
  String get tasbihCompleteMessage => 'Puisse Allah accepter votre dhikr.';

  @override
  String get tasbihTapHint => 'Appuyez n\'importe où pour compter';

  @override
  String get tasbihatScreenTitle => 'Guide de Prière';

  @override
  String get tasbihatScreenSubtitle => 'LES GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'Un guide complet des glorifications récitées pendant et après les prières quotidiennes.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Récité pendant les 3ème & 4ème rakʿahs';

  @override
  String get tasbihatArba3Info =>
      'Remplace la Sourate al-Fatiha. Il est obligatoire de le réciter une fois, et recommandé trois fois.';

  @override
  String get tasbihatArba3Translation =>
      'Gloire à Allah · Louange à Allah\nNul dieu sinon Allah · Allah est le Plus Grand';

  @override
  String get tasbihatArba3CompleteTitle => 'Récitation Terminée';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Puisse votre prière être acceptée — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Appuyez après chaque récitation';

  @override
  String get tasbihatZahraSubtitle => 'Après chaque prière · 100 grains';

  @override
  String get tasbihatZahraOriginLabel => 'Origine';

  @override
  String get tasbihatZahraHadith =>
      'Dame Fatima al-Zahra (sa) a reçu cet enseignement du Prophète ﷺ : Subḥānallāh 33 fois, Alḥamdulillāh 33 fois, et Allāhu Akbar 34 fois.';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Ouvrir le compteur Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS RECOMMANDÉS';

  @override
  String get tasbihatDuasSubtitle => 'Après avoir terminé votre prière';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Après chaque prière obligatoire';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sourate al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'L\'Imam al-Bāqir (a) a dit que c\'est l\'un des plus grands versets du Coran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Après chaque prière';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Indispensable pour sceller vos supplications.';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Après chaque prière · pour l\'Imam de notre temps';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseigné par l\'Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Une dua pour la réapparition de l\'Imam al-Mahdī (af), le douzième Imam, enseignée par son père. Elle est souvent récitée par de nombreux musulmans chiites après la prière comme un acte de dévotion envers l\'Imam vivant.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de Dame Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen => 'Après le Maghrib & l\'Isha';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Sa lumière monte jusqu\'aux cieux.';

  @override
  String get tasbihFatimaGiftPre => 'Un cadeau du Prophète';

  @override
  String get tasbihFatimaGiftPost => 'récité après chaque prière';

  @override
  String get prayerTrackerTitle => 'SUIVI DES PRIÈRES';

  @override
  String get prayerTrackerPrayed => 'Prié';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Série de $count jours';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Prières terminées. Puisse Allah accepter.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Fait aujourd\'hui';

  @override
  String get dhikrTrackerNotDoneToday => 'Pas encore fait';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Série de $count jours';
  }

  @override
  String get dhikrReminderTitle => 'Rappel Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un rappel quotidien pour votre Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Activer le rappel';

  @override
  String get dhikrReminderTimeLabel => 'Heure du rappel';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith du Jour';

  @override
  String get hadithLabelArabic => 'ARABE';

  @override
  String get hadithLabelTranslation => 'TRADUCTION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Partager ce Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Précédent';

  @override
  String get hadithNavNext => 'Suivant';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Les Quatorze Infaillibles';

  @override
  String get imamsScreenSubtitle =>
      'Le Prophète, Lady Fatima et les Douze Imams — les guides purifiés et infaillibles dans l\'Islam chiite du Douzième';

  @override
  String get imamLabelBorn => 'Naissance';

  @override
  String get imamLabelMartyrdom => 'Martyre';

  @override
  String get imamLabelStatus => 'Statut';

  @override
  String get imamSectionBiography => 'BIOGRAPHIE';

  @override
  String get imamSectionFamousSaying => 'PAROLE CÉLÈBRE';

  @override
  String get imamRoleProphet => 'Le Sceau des Prophètes';

  @override
  String get imamRoleInfallible => 'L\'Infaillible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2ème Imam';

  @override
  String get imamOrdinal3 => '3ème Imam';

  @override
  String get imamOrdinal4 => '4ème Imam';

  @override
  String get imamOrdinal5 => '5ème Imam';

  @override
  String get imamOrdinal6 => '6ème Imam';

  @override
  String get imamOrdinal7 => '7ème Imam';

  @override
  String get imamOrdinal8 => '8ème Imam';

  @override
  String get imamOrdinal9 => '9ème Imam';

  @override
  String get imamOrdinal10 => '10ème Imam';

  @override
  String get imamOrdinal11 => '11ème Imam';

  @override
  String get imamOrdinal12 => '12ème Imam';

  @override
  String get duaAudioScreenTitle => 'Écouter les Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Sélectionnez un dua. Appuyez pour lire ou mettre en pause.';

  @override
  String get duaAudioComingSoonMessage => 'Audio bientôt disponible.';

  @override
  String get duaAudioClose => 'Fermer';

  @override
  String get duaAudioError =>
      'Échec du chargement audio. Vérifiez votre connexion.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmis par';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Durée';

  @override
  String get quickActionDailyHadith => 'Hadith du Jour';

  @override
  String get quickAction14Masumeen => 'Quatorze Infaillibles';

  @override
  String get quickActionListenDuas => 'Écouter';

  @override
  String get quickActionTasbihat => 'Guide Prière';

  @override
  String get pilgrimageSectionTitle => 'Le Voyage Sacré';

  @override
  String get pilgrimageSectionSubtitle => 'Guides pour le Hajj & l\'Umrah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Le Cinquième Pilier de l\'Islam';

  @override
  String get hajjCardDescription => 'Le grand pèlerinage annuel à la Mecque';

  @override
  String get hajjScreenTitle => 'Guide du Hajj';

  @override
  String get hajjScreenSubtitle => 'Étapes du grand pèlerinage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Le Petit Pèlerinage';

  @override
  String get umrahCardDescription =>
      'Un voyage spirituel réalisable à tout moment de l\'année';

  @override
  String get umrahScreenTitle => 'Guide de l\'Umrah';

  @override
  String get umrahScreenSubtitle => 'Étapes du petit pèlerinage';

  @override
  String get pilgrimageStepsTitle => 'Rituels & Étapes';

  @override
  String get pilgrimageImportantNotesTitle => 'Notes Importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua pour cette étape';

  @override
  String get pilgrimageJafariNoteTitle => 'Note de fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Complet';

  @override
  String get pilgrimageMarkDone => 'Marquer comme complet';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done sur $total étapes';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pèlerins Chiites';

  @override
  String get pilgrimageShiaNoteBody =>
      'De nombreux pèlerins chiites se rendent également à Médine pour le ziyarat du Prophète Muhammad (SAW) à la Mosquée du Prophète et aux tombes de Jannat al-Baqi. Ces visites ont une profonde signification spirituelle, bien qu\'elles ne soient pas en elles-mêmes des rites de Hajj.';

  @override
  String get hajjIntro =>
      'Le Hajj est le cinquième pilier de l\'Islam, obligatoire une fois dans la vie pour chaque musulman qui est physiquement et financièrement capable. Pour la plupart des pèlerins chiites du Douzième aujourd\'hui, cela signifie Hajj al-Tamattu\', effectué au mois de Dhul Hijjah sur les traces du Prophète Ibrahim (AS), de son fils Ismaïl (AS) et de Lady Hajar. Ce guide suit le schéma ja\'fari des rites, tandis que le ziyarat à Médine reste un voyage profondément chéri avant ou après le Hajj.';

  @override
  String get umrahIntro =>
      'L\'Umrah est le petit pèlerinage. Bien que non obligatoire, il est hautement recommandé.';

  @override
  String get voiceInputTitle => 'Entrée vocale';

  @override
  String get voiceInputMicTitle => 'Microphone';

  @override
  String get voiceInputMicSubtitle =>
      'Parlez votre demande à Ask Ayara au lieu de taper.';

  @override
  String get voiceInputMicDenied => 'L\'accès au microphone a été refusé.';

  @override
  String get voiceInputSpeak => 'Parler à la place';

  @override
  String get voiceInputListening => 'Écoute…';

  @override
  String get voiceInputPermissionDenied =>
      'L\'accès au microphone est requis pour l\'entrée vocale.';
}

/// The translations for French, as used in Canada (`fr_CA`).
class AppLocalizationsFrCa extends AppLocalizationsFr {
  AppLocalizationsFrCa() : super('fr_CA');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choisissez votre langue';

  @override
  String get languageSelectSub =>
      'Vous pourrez modifier ce choix plus tard dans les Paramètres';

  @override
  String get actionContinue => 'Continuer';

  @override
  String get languageSuggestedHeader => 'Suggestions';

  @override
  String get languageAllHeader => 'Toutes les langues';

  @override
  String get languageSuggestedBadge => 'Suggéré';

  @override
  String get languageSearchHint => 'Rechercher…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Guidance Quotidienne';

  @override
  String get categorySlot02 => 'Iman & Confiance';

  @override
  String get categorySlot03 => 'Réflexion sur la Prière';

  @override
  String get categorySlot04 => 'Patience & Espoir';

  @override
  String get categorySlot05 => 'Demander le Pardon';

  @override
  String get categorySlot06 => 'Miséricorde & Compassion';

  @override
  String get categorySlot07 => 'Force de la Foi';

  @override
  String get categorySlot08 => 'Cœur Reconnaissant';

  @override
  String get categorySlot09 => 'Sens de la Vie';

  @override
  String get categorySlot10 => 'Liens Familiaux';

  @override
  String get categorySlot11 => 'Paix Intérieure';

  @override
  String get categorySlot12 => 'Sagesse Prophétique';

  @override
  String get categorySlot13 => 'Noblesse de Caractère';

  @override
  String get categorySlot14 => 'Résister à la Tentation';

  @override
  String get categorySlot15 => 'Dhikr du Soir';

  @override
  String get categoryCustom => 'Réflexion Personnelle';

  @override
  String get dhikrMeaningSubhanallah => 'Gloire à Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Louange à Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah est le Plus Grand';

  @override
  String get quranVerseHeartAtRest =>
      'N\'est-ce pas par l\'évocation d\'Allah que les cœurs s\'apaisent ?';

  @override
  String get promptHint =>
      'Appuyez sur une catégorie pour une guidance islamique';

  @override
  String get currentLanguage => 'Langue actuelle';

  @override
  String get settingsLanguage => 'Paramètres de langue';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get chooseLanguage => 'Choisissez votre langue';

  @override
  String get continueCta => 'Continuer';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mots',
      one: '$count mot',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'Nouveau';

  @override
  String get actionsTitle => 'Que souhaitez-vous faire ?';

  @override
  String get copy => 'Copier';

  @override
  String get share => 'Partager';

  @override
  String get close => 'Fermer';

  @override
  String get copiedToast => 'Copié dans le presse-papiers';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Impossible de générer une réponse';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVoulez-vous réessayer ?';
  }

  @override
  String get cancelCta => 'Annuler';

  @override
  String get retryCta => 'Réessayer';

  @override
  String get authTitle => 'Créez votre compte';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get signInEmail => 'Se connecter par e-mail';

  @override
  String get upgradeWithApple => 'Continuer avec Apple';

  @override
  String get mustAccept =>
      'Vous devez accepter les Conditions et la Politique de Confidentialité.';

  @override
  String get termsLabel => 'J\'accepte les Conditions d\'Utilisation';

  @override
  String get privacyLabel => 'J\'ai lu la Politique de Confidentialité';

  @override
  String get marketingOptIn =>
      'J\'accepte de recevoir des nouvelles et des offres';

  @override
  String get openTerms => 'Conditions d\'Utilisation';

  @override
  String get openPrivacy => 'Politique de Confidentialité';

  @override
  String get accountSection => 'Compte';

  @override
  String get guestMode => 'Mode invité';

  @override
  String get signedIn => 'Connecté';

  @override
  String get upgradeHint =>
      'Enregistrez vos réflexions sur tous vos appareils en créant un compte.';

  @override
  String get upgradeWithGoogle => 'Continuer avec Google';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String get snackUpgraded => 'Compte mis à niveau avec Google ✅';

  @override
  String get snackSignedIn => 'Connecté avec Google ✅';

  @override
  String get snackSignedOut => 'Déconnecté';

  @override
  String get snackSignedInApple => 'Connecté avec Apple ✅';

  @override
  String get snackSignedInGoogle => 'Connecté avec Google ✅';

  @override
  String get snackUpgradedApple => 'Compte mis à niveau avec Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Compte mis à niveau avec Google ✅';

  @override
  String get historyTitle => 'Réflexions précédentes';

  @override
  String get historyOpenCta => 'Historique des réflexions';

  @override
  String get historyEmpty => 'Aucune réflexion enregistrée pour le moment.';

  @override
  String get historyDeleteTitle => 'Supprimer la réflexion ?';

  @override
  String get historyDeleteBody =>
      'Ceci supprimera définitivement l\'élément sélectionné.';

  @override
  String get deleteCta => 'Supprimer';

  @override
  String get historyButton => 'Réflexions Précédentes';

  @override
  String get historyEmptyTitle => 'Pas encore de réflexions';

  @override
  String get historyEmptyBody =>
      'Générez du contenu d\'abord — vos éléments sauvegardés apparaîtront ici.';

  @override
  String get historyDelete => 'Supprimer';

  @override
  String get footerTitle => 'Avec Wilaya, Iman et Sabr';

  @override
  String get footerSubtitle => 'Une prière à la fois';

  @override
  String get genericErrorSnack =>
      'Un problème est survenu — veuillez réessayer dans un instant.';

  @override
  String get upgradeAccountCta =>
      'Sauvegardez vos réflexions partout – créez un compte';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get exportData => 'Exporter mes données';

  @override
  String userUidLabel(String uid) {
    return 'UID : $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Doucement 🐯\nAyara a besoin d\'un instant avant la prochaine réponse…';

  @override
  String get rateDailyLimit =>
      'Vous n\'avez plus de réflexions pour aujourd\'hui.\nObtenez-en plus ou passez à Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Vous avez utilisé toutes vos réflexions.\nRechargez ou passez à Wilaya pour continuer.';

  @override
  String get rateGraceCreditsExhausted =>
      'Vous n\'avez plus de réflexions disponibles.\nObtenez-en plus ou passez à Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya débloque les fonctionnalités premium, les futures catégories et un badge spécial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vos réflexions sont épuisées. Plan : $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Impossible de vérifier vos réflexions : $message';
  }

  @override
  String get rateCheckGenericError =>
      'Une erreur est survenue lors de la vérification de vos crédits.';

  @override
  String get aiFallbackGeneric =>
      'Un problème est survenu — veuillez réessayer dans un instant.';

  @override
  String get limitSectionTitle => 'Réflexions';

  @override
  String get limitTodayLabel => 'Utilisation';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Réflexions restantes : $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan : $plan';
  }

  @override
  String get limitLoadingLabel => 'Chargement…';

  @override
  String get limitLoadingLabelDescription =>
      'Affiché pendant la récupération des statistiques.';

  @override
  String get aiLimitTitle => 'Réflexions';

  @override
  String get aiLimitSubtitle =>
      'Chaque réponse consomme 1 réflexion. Le plan Standard inclut des réflexions de départ. Wilaya débloque les catégories premium et permet les recharges.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total réflexions utilisées';
  }

  @override
  String get creditsSectionTitle => 'Réflexions';

  @override
  String get creditsUsageLabel => 'Utilisation';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Réflexions restantes : $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan : $plan';
  }

  @override
  String get creditsLoadingLabel => 'Chargement…';

  @override
  String get creditsLoadingLabelDescription =>
      'Affiché pendant la récupération des données de réflexion.';

  @override
  String get creditsTitle => 'Réflexions';

  @override
  String get creditsSubtitle =>
      'Chaque réponse consomme 1 réflexion. Le plan Standard inclut des réflexions de départ. Wilaya débloque les catégories premium.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total réflexions utilisées';
  }

  @override
  String get settingsDeleteTitle => 'Supprimer le compte';

  @override
  String get settingsDeleteDescription =>
      'Supprime définitivement votre compte et toutes les données associées.';

  @override
  String get settingsDeleteButtonLabel => 'Supprimer mon compte';

  @override
  String get settingsDeleteDialogTitle => 'Supprimer le compte ?';

  @override
  String get settingsDeleteDialogBody =>
      'Cette action est irréversible.\n\nTous vos chats, votre historique et vos infos de compte seront supprimés.';

  @override
  String get settingsDeleteDialogCancel => 'Annuler';

  @override
  String get settingsDeleteDialogConfirm => 'Supprimer';

  @override
  String get settingsFreeLimitUsedTitle => 'Réflexions de départ épuisées';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Les réflexions offertes pour cet appareil ont été utilisées. Passez à Wilaya ou achetez des crédits pour continuer.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Réflexions de départ épuisées';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Les réflexions offertes pour cet appareil ont été utilisées. Passez à Wilaya ou achetez des crédits pour continuer.';

  @override
  String get deviceBoundError =>
      'Cet appareil est déjà lié à un autre compte. Veuillez vous connecter avec le compte original.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic => 'Débloquez l\'expérience complète Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Vous êtes sous Wilaya. Besoin de plus de réflexions ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actuel : $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Réflexions : $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Les achats sont indisponibles pour le moment.';

  @override
  String get premiumSignInToPurchase =>
      'Connectez-vous pour acheter des crédits ou débloquer Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurer les achats';

  @override
  String get premiumProcessing => 'Traitement…';

  @override
  String get premiumRestoreHintTitle =>
      'Déjà acheté Wilaya ou des crédits sur cet appareil ou un autre ?';

  @override
  String get premiumRestoreHintBody =>
      'Restaurez vos achats s\'ils n\'apparaissent pas.';

  @override
  String get premiumBuyCredits200 => 'Acheter 200 réflexions';

  @override
  String get premiumBuyCredits400 => 'Acheter 400 réflexions';

  @override
  String get premiumBecomePremiumOneTime => 'Passer au mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Avec Wilaya, vous pouvez recharger des crédits dès que nécessaire.';

  @override
  String get premiumUpgradeCta => 'Mettre à niveau';

  @override
  String get premiumRequiredForCategory =>
      'Cette catégorie est réservée aux utilisateurs Wilaya. Mettez à niveau votre plan dans les Paramètres.';

  @override
  String get premiumBenefitsBasic =>
      'Débloquez Wilaya pour obtenir des réflexions supplémentaires et accéder aux catégories premium.';

  @override
  String get premiumBenefitsPremium =>
      'Vous êtes en mode Wilaya. Si vous manquez de crédits, vous pouvez recharger à tout moment.';

  @override
  String get premiumButtonBecomePremium => 'Débloquer Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Ajouter 1000 réflexions';

  @override
  String get premiumBadge => 'Wilaya actif';

  @override
  String get premiumLoadingStore => 'Chargement de la boutique…';

  @override
  String get premiumProductNotAvailable =>
      'Ce produit n\'est pas encore disponible. Veuillez réessayer plus tard.';

  @override
  String get premiumPurchaseError =>
      'Un problème est survenu lors de l\'achat. Veuillez réessayer.';

  @override
  String get premiumBuyCredits100 => 'Ajouter 100 réflexions';

  @override
  String get premiumFeatureLocked =>
      'Débloquez Wilaya pour accéder à cette fonctionnalité.';

  @override
  String get lockedCategoriesHint =>
      'Certaines catégories sont réservées aux membres Wilaya. Débloquez-les pour explorer tout le contenu.';

  @override
  String get freePlanBlockedTitle => 'Réflexions de départ épuisées';

  @override
  String get freePlanBlockedBody =>
      'Vous avez atteint la limite du plan Standard. Pour continuer et accéder aux catégories premium, passez à Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Voir les options Wilaya ci-dessous';

  @override
  String get graceBlockedTitle => 'Réflexions gratuites épuisées';

  @override
  String get graceBlockedBody =>
      'Vous avez utilisé toutes vos réflexions de départ. Passez à Wilaya pour débloquer le contenu premium.';

  @override
  String get graceBlockedCtaGoPremium => 'Voir les options Wilaya ci-dessous';

  @override
  String get rateGuestMustSignIn =>
      'Connectez-vous pour utiliser Ayara et vos réflexions.';

  @override
  String get guestNoCreditsTitle => 'Mode Invité';

  @override
  String get guestNoCreditsBody =>
      'En tant qu\'invité, vous pouvez parcourir l\'app, mais pas utiliser les réflexions. Connectez-vous pour débloquer les fonctionnalités.';

  @override
  String get guestDialogContinue => 'Continuer';

  @override
  String get guestDialogLoginInstead => 'Se connecter plutôt';

  @override
  String get optionalLabel => 'optionnel';

  @override
  String get accountDeleteSuccessTitle => 'Compte supprimé';

  @override
  String get accountDeleteSuccessBody =>
      'Votre compte et vos données ont été supprimés avec succès.';

  @override
  String get accountDeleteSuccessClose => 'Fermer';

  @override
  String get accountDeleteErrorTitle => 'Échec de la suppression';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ré-authentification annulée. Veuillez vous reconnecter pour réessayer.';

  @override
  String get accountDeleteReauthRequired =>
      'La suppression nécessite une connexion récente. Veuillez vous déconnecter et vous reconnecter.';

  @override
  String get settingsDeletePermanentWarning =>
      'Cette action est irréversible. Toutes les données associées seront effacées.';

  @override
  String get dailyGraceTitle => 'Guidance Quotidienne';

  @override
  String get dailyGraceScriptureLabel => 'VERSET DU JOUR';

  @override
  String get dailyGraceSaintLabel => 'FIGURE DE LA SEMAINE';

  @override
  String get dailyGraceReflectionLabel => 'RÉFLEXION DU SOIR';

  @override
  String get dailyGraceCopiedToast => 'Verset copié';

  @override
  String get locationConsentLabel =>
      'Autoriser Ayara à utiliser ma position pour la Qibla et les horaires de prière';

  @override
  String get locationConsentHint =>
      'Utilisé uniquement pour ces fonctions. Votre position n\'est jamais partagée ou stockée.';

  @override
  String get askPageTitle => 'Demander à Ayara';

  @override
  String get askPageDescription =>
      'Posez vos questions sur la foi, la prière ou la pratique islamique. Recevez une guidance ancrée dans le Coran et les enseignements de l\'Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Tapez votre question ici…';

  @override
  String get askPageSubmitCta => 'Demander';

  @override
  String get askPageInputEmptyError => 'Veuillez d\'abord écrire une question.';

  @override
  String get askResultYourQuestion => 'Votre question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Face à la Mecque';

  @override
  String get qiblaCompassInstruction =>
      'Tournez votre téléphone jusqu\'à ce que l\'aiguille dorée pointe vers le haut.\nC\'est la direction de la Qibla (La Mecque).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Signal GPS faible. Déplacez-vous à l\'extérieur et réessayez.';

  @override
  String get qiblaRetry => 'Réessayer';

  @override
  String get qiblaTitle => 'Direction de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km jusqu\'à la Mecque';
  }

  @override
  String get qiblaLocationNeededTitle => 'Position requise';

  @override
  String get qiblaLocationNeededBody =>
      'Autorisez l\'accès à la position pour calculer la direction de la Kaaba d\'où que vous soyez.';

  @override
  String get qiblaOpenSettings => 'Ouvrir les Paramètres';

  @override
  String get qiblaCompassLoading => 'Recherche de votre position…';

  @override
  String get qiblaTowardMecca => 'Vers la Mecque';

  @override
  String get prayerTimesTitle => 'Heures de Prière';

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
  String get prayerTimesLocationNeededTitle => 'Position requise';

  @override
  String get prayerTimesLocationNeededBody =>
      'Autorisez l\'accès à la position pour obtenir les horaires précis pour votre ville.';

  @override
  String get prayerTimesNextLabel => 'Suivant';

  @override
  String get prayerTimesDoneLabel => 'Terminé';

  @override
  String get monthlyPrayerTimesTitle => 'Horaires Mensuels';

  @override
  String get monthlyPrayerTimesViewButton => 'Voir tout le mois';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mois prochain';

  @override
  String get monthlyPrayerTimesDayHeader => 'Jour';

  @override
  String get sharePrayerTimes => 'Partager les horaires';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Rappels de prière, calendrier et plus';

  @override
  String get dailyReflectionReminderTitle => 'Réflexion Quotidienne';

  @override
  String get dailyReflectionReminderDescription =>
      'Un rappel quotidien pour se connecter à sa foi via Ayara.';

  @override
  String get dailyReflectionReminderEnable => 'Activer le rappel quotidien';

  @override
  String get dailyReflectionReminderTimeLabel => 'Heure du rappel';

  @override
  String get prayerNotificationsTitle => 'Rappels de Prière';

  @override
  String get prayerNotificationsDescription =>
      'Recevez une notification avant chaque prière pour rester connecté tout au long de la journée.';

  @override
  String get prayerNotificationsEnable => 'Activer les rappels';

  @override
  String get prayerNotificationsOpenSettings => 'Paramètres de notification';

  @override
  String get prayerNotificationsDenied => 'Notifications désactivées';

  @override
  String get prayerNotificationsDeniedHint =>
      'Autorisez les notifications dans les réglages de votre appareil.';

  @override
  String get notificationsConsentLabel =>
      'Autoriser les notifications pour les prières';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Prière de l\'Aube';

  @override
  String get prayerNotifBodyFajr =>
      'Le Fajr est la prière des matins de l\'Ahl al-Bayt. Imam Ali (AS) a dit : Gardez la prière de l\'aube comme votre dépôt le plus précieux. Levez-vous, purifiez-vous et tenez-vous devant Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Prière du Midi';

  @override
  String get prayerNotifBodyDhuhr =>
      'Les Imams chérissaient chaque instant de souvenir. Marquez une pause, combinez Dhuhr et Asr si nécessaire, et tournez votre cœur vers Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Prière de l\'Après-midi';

  @override
  String get prayerNotifBodyAsr =>
      'Préservez la prière, c\'est le pacte entre vous et Allah. L\'heure de l\'Asr est là — ne la laissez pas passer sans évocation.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Prière du Coucher du soleil';

  @override
  String get prayerNotifBodyMaghrib =>
      'Le soleil s\'est couché — un moment sacré pour l\'Ahl al-Bayt. Offrez votre Maghrib et ouvrez vos mains pour le dua avant que la nuit commence.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Prière de la Nuit';

  @override
  String get prayerNotifBodyIsha =>
      'Finissez votre journée en compagnie d\'Allah. Les Imams encourageaient la Salat al-Layl après l\'Isha — mais d\'abord, complétez votre Isha.';

  @override
  String get outOfReflectionsBannerText => 'Vous avez épuisé vos réflexions';

  @override
  String get outOfReflectionsBannerCta => 'En obtenir plus';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Appuyez sur le cercle pour compter';

  @override
  String get dhikrResetButton => 'Réinitialiser';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Vous avez complété 100 évocations. Puisse cela être une lumière pour votre cœur.';

  @override
  String get disclaimerTitle => 'À propos de la guidance';

  @override
  String get disclaimerBody =>
      'Ayara propose des réflexions islamiques basées sur le Coran et l\'Ahl al-Bayt. Ce contenu est à but informatif et inspirant uniquement.\n\nAyara ne remplace pas l\'avis des savants.\nCette app ne remplace pas un savant (\'alim), un Marja\' ou un enseignant qualifié. Dans le chiisme, la guidance est ancrée dans l\'école Ja\'farite et le suivi d\'un Marja\' vivant. En cas de questions juridiques (fiqh) ou d\'obligations religieuses, veuillez consulter un Marja\' qualifié.\n\nCette application n\'émet pas de décrets religieux (fatwas).\n\nCentralité de l\'Ahl al-Bayt.\nLe Prophète Muhammad ﷺ et sa famille purifiée sont les guides après le Coran. Les douze Imams sont les interprètes divinement nommés. Cette application cherche à honorer fidèlement cette tradition.\n\nImportance de la communauté.\nNous vous encourageons à rester connecté avec votre mosquée locale et vos enseignants qualifiés.';

  @override
  String get disclaimerClose => 'Je comprends';

  @override
  String get disclaimerInfoTooltip => 'À propos de la guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'À but informatif. Appuyez pour lire le texte complet.';

  @override
  String get disclaimerSectionHeader => 'Clause de non-responsabilité';

  @override
  String get navHome => 'Accueil';

  @override
  String get navReflect => 'Réfléchir';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendrier';

  @override
  String get dashboardToday => 'AUJOURD\'HUI';

  @override
  String get dashboardComingUp => 'À venir';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jours',
      one: 'jour',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Accès Rapide';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Horaires';

  @override
  String get askAyaraTitle => 'Demander à Ayara';

  @override
  String get askAyaraSubtitle =>
      'Posez une question et recevez une réponse réfléchie et guidée.';

  @override
  String get askAyaraHint => 'ex: Quelle est l\'importance du Ramadan ?';

  @override
  String get askAyaraSubmit => 'Demander';

  @override
  String get wisdomOfTheDayTitle => 'Sagesse du Jour';

  @override
  String get calendarScreenTitle => 'Calendrier Islamique';

  @override
  String get calendarUpcomingOccasions => 'Occasions à venir';

  @override
  String get calendarOccasionRemindersTitle => 'Rappels d\'Occasions';

  @override
  String get calendarOccasionRemindersHint => 'Notifié la veille au soir';

  @override
  String get calendarNotifPermissionDenied =>
      'Permission refusée. Activez-la dans les réglages.';

  @override
  String get calendarNoEvents => 'Aucun événement trouvé.';

  @override
  String get calendarAddToPhone => 'Ajouter au calendrier du téléphone';

  @override
  String get calendarAddedToPhone => 'Ajouté au calendrier';

  @override
  String get calendarCountdownToday => 'AUJOURD\'HUI';

  @override
  String get calendarCountdownTomorrow => 'DEMAIN';

  @override
  String calendarCountdownDays(int days) {
    return 'dans $days jours';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fév';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Avr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Juin';

  @override
  String get calendarMonthJul => 'Juil';

  @override
  String get calendarMonthAug => 'Août';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Déc';

  @override
  String get calendarSeasonMuharramEarly =>
      'Jours de Muharram — Souvenir de Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — jours de deuil et réflexion';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quarante jours de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'La route vers l\'Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — l\'aube de la révélation';

  @override
  String get calendarSeasonMidShaban =>
      'Mi-Sha\'ban — naissance de l\'Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — le mois du Coran';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak !';

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
  String get duasSearchHint => 'Chercher un dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tous';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Aucun dua trouvé.';

  @override
  String get duaCategoryDaily => 'Quotidien';

  @override
  String get duaCategoryWeekly => 'Hebdomadaire';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Naissance';

  @override
  String get eventTypeMartyrdom => 'Martyre';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copier traduction';

  @override
  String get duaToggleTransliteration => 'Translittération';

  @override
  String get duaToggleTranslation => 'Traduction';

  @override
  String get duaAskAiLabel => 'Demander à Ayara d\'expliquer ce dua';

  @override
  String get duaAskAiLockedLabel => 'Demander à Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Les explications sont réservées aux membres Wilaya.';

  @override
  String duaAiComingSoon(String name) {
    return 'Demandez à Ayara sur \"$name\" — bientôt !';
  }

  @override
  String get duaCopiedToast => 'Dua copié dans le presse-papiers.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah est le Plus Grand';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toute louange appartient à Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloire à Allah';

  @override
  String get tasbihResetTooltip => 'Réinitialiser';

  @override
  String get tasbihCompleteTitle => 'Tasbih Terminé';

  @override
  String get tasbihCompleteMessage => 'Puisse Allah accepter votre dhikr.';

  @override
  String get tasbihTapHint => 'Appuyez n\'importe où pour compter';

  @override
  String get tasbihatScreenTitle => 'Guide de Prière';

  @override
  String get tasbihatScreenSubtitle => 'LES GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'Un guide complet des glorifications récitées pendant et après les prières quotidiennes — suivant la tradition de l\'Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Récité pendant les 3ème & 4ème rakʿahs';

  @override
  String get tasbihatArba3Info =>
      'Dans la jurisprudence chiite, le Tasbiḥāt al-Arbaʿa remplace la Sourate al-Fatiha dans les 3ème et 4ème rakʿahs. Il est obligatoire (wājib) de le réciter une fois, et recommandé (mustaḥabb) de le réciter trois fois.';

  @override
  String get tasbihatArba3Translation =>
      'Gloire à Allah · Louange à Allah\nNul dieu sinon Allah · Allah est le Plus Grand';

  @override
  String get tasbihatArba3CompleteTitle => 'Récitation Terminée';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Puisse votre prière être acceptée — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Appuyez après chaque récitation';

  @override
  String get tasbihatZahraSubtitle => 'Après chaque prière · 100 grains';

  @override
  String get tasbihatZahraOriginLabel => 'Origine';

  @override
  String get tasbihatZahraHadith =>
      'Dame Fatima al-Zahra (sa) a demandé au Prophète ﷺ un serviteur. Il répondit : \"Ne devrais-je pas vous guider vers quelque chose de meilleur ? Récitez Subḥānallāh 33 fois, Alḥamdulillāh 33 fois, et Allāhu Akbar 34 fois après chaque prière. C\'est mieux pour vous qu\'un serviteur.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Ouvrir le compteur Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS RECOMMANDÉS';

  @override
  String get tasbihatDuasSubtitle => 'Après avoir terminé votre prière';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Après chaque prière obligatoire';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sourate al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quiconque récite Āyat al-Kursī après chaque prière obligatoire, rien ne le sépare du paradis sinon la mort. L\'Imam al-Bāqir (a) a dit que c\'est l\'un des plus grands versets du Coran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Après chaque prière · scelle les supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Saluer le Prophète ﷺ et sa famille purifiée (Āl Muḥammad) est recommandé pour sceller chaque dua. L\'Imam al-Ṣādiq (a) a dit : \"Tout dua est suspendu jusqu\'à ce que vous envoyiez la ṣalawāt.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Après chaque prière · pour l\'Imam de notre temps';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseigné par l\'Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Une dua pour la réapparition de l\'Imam al-Mahdī (af), le douzième Imam, enseignée par son père. Elle est souvent récitée par de nombreux musulmans chiites après la prière comme un acte de dévotion envers l\'Imam vivant.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de Dame Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen => 'Après le Maghrib & l\'Isha';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'L\'Imam al-Bāqir (a) a dit que réciter le Tasbīḥ al-Zahrā après l\'Isha avant de dormir est meilleur que 1000 rakʿahs de prière optionnelle.';

  @override
  String get tasbihFatimaGiftPre => 'Un cadeau du Prophète';

  @override
  String get tasbihFatimaGiftPost => 'récité après chaque prière';

  @override
  String get prayerTrackerTitle => 'SUIVI DES PRIÈRES';

  @override
  String get prayerTrackerPrayed => 'Prié';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Série de $count jours';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Toutes les prières terminées aujourd\'hui. Puisse Allah accepter.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Fait aujourd\'hui';

  @override
  String get dhikrTrackerNotDoneToday => 'Pas encore fait';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Série de $count jours';
  }

  @override
  String get dhikrReminderTitle => 'Rappel Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un rappel quotidien pour votre Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Activer le rappel';

  @override
  String get dhikrReminderTimeLabel => 'Heure du rappel';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith du Jour';

  @override
  String get hadithLabelArabic => 'ARABE';

  @override
  String get hadithLabelTranslation => 'TRADUCTION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Partager ce Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Précédent';

  @override
  String get hadithNavNext => 'Suivant';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Les Quatorze Infaillibles';

  @override
  String get imamsScreenSubtitle =>
      'Le Prophète, Lady Fatima et les Douze Imams — les guides purifiés et infaillibles dans l\'islam chiite duodécimain';

  @override
  String get imamLabelBorn => 'Naissance';

  @override
  String get imamLabelMartyrdom => 'Martyre';

  @override
  String get imamLabelStatus => 'Statut';

  @override
  String get imamSectionBiography => 'BIOGRAPHIE';

  @override
  String get imamSectionFamousSaying => 'PAROLE CÉLÈBRE';

  @override
  String get imamRoleProphet => 'Le Sceau des Prophètes';

  @override
  String get imamRoleInfallible => 'L\'Infaillible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2ème Imam';

  @override
  String get imamOrdinal3 => '3ème Imam';

  @override
  String get imamOrdinal4 => '4ème Imam';

  @override
  String get imamOrdinal5 => '5ème Imam';

  @override
  String get imamOrdinal6 => '6ème Imam';

  @override
  String get imamOrdinal7 => '7ème Imam';

  @override
  String get imamOrdinal8 => '8ème Imam';

  @override
  String get imamOrdinal9 => '9ème Imam';

  @override
  String get imamOrdinal10 => '10ème Imam';

  @override
  String get imamOrdinal11 => '11ème Imam';

  @override
  String get imamOrdinal12 => '12ème Imam';

  @override
  String get duaAudioScreenTitle => 'Écouter les Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Sélectionnez un dua pour l\'écouter. Appuyez pour lire ou mettre en pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'L\'audio pour ce dua sera bientôt disponible.';

  @override
  String get duaAudioClose => 'Fermer';

  @override
  String get duaAudioError =>
      'Échec du chargement audio. Vérifiez votre connexion.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmis par';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Durée';

  @override
  String get quickActionDailyHadith => 'Hadith du Jour';

  @override
  String get quickAction14Masumeen => 'Quatorze Infaillibles';

  @override
  String get quickActionListenDuas => 'Écouter';

  @override
  String get quickActionTasbihat => 'Guide Prière';

  @override
  String get pilgrimageSectionTitle => 'Le Voyage Sacré';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guides pour le Hajj & l\'Umrah — le pèlerinage à la Maison d\'Allah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Le Cinquième Pilier de l\'Islam';

  @override
  String get hajjCardDescription =>
      'Le grand pèlerinage annuel — obligatoire une fois dans la vie';

  @override
  String get hajjScreenTitle => 'Guide du Hajj';

  @override
  String get hajjScreenSubtitle => 'Guide étape par étape du grand pèlerinage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Le Petit Pèlerinage';

  @override
  String get umrahCardDescription =>
      'Un voyage spirituel gratifiant réalisable à tout moment de l\'année';

  @override
  String get umrahScreenTitle => 'Guide de l\'Umrah';

  @override
  String get umrahScreenSubtitle => 'Guide étape par étape du petit pèlerinage';

  @override
  String get pilgrimageStepsTitle => 'Rituels & Étapes';

  @override
  String get pilgrimageImportantNotesTitle => 'Notes Importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua pour cette étape';

  @override
  String get pilgrimageJafariNoteTitle => 'Note de fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Complet';

  @override
  String get pilgrimageMarkDone => 'Marquer comme complet';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done sur $total étapes';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pèlerins Chiites';

  @override
  String get pilgrimageShiaNoteBody =>
      'De nombreux pèlerins chiites se rendent également à Médine pour le ziyarat du Prophète Muhammad (SAW) à la Mosquée du Prophète et aux tombes de Jannat al-Baqi. Ces visites ont une profonde signification spirituelle, bien qu\'elles ne soient pas en elles-mêmes des rites de Hajj.';

  @override
  String get hajjIntro =>
      'Le Hajj est le cinquième pilier de l\'islam, obligatoire une fois dans la vie pour chaque musulman qui est physiquement et financièrement capable. Pour la plupart des pèlerins chiites duodécimains aujourd\'hui, cela signifie le Hajj al-Tamattu\', effectué au mois de Dhul Hijjah sur les traces du Prophète Ibrahim (AS), de son fils Ismail (AS) et de Lady Hajar. Ce guide suit le schéma ja\'fari des rites, tandis que le ziyarat à Médine reste un voyage profondément chéri avant ou après le Hajj.';

  @override
  String get umrahIntro =>
      'L\'Umrah est le petit pèlerinage. Bien que non obligatoire, il porte une immense récompense spirituelle. Il partage plusieurs rituels avec le Hajj mais est plus court.';

  @override
  String get voiceInputTitle => 'Entrée vocale';

  @override
  String get voiceInputMicTitle => 'Microphone';

  @override
  String get voiceInputMicSubtitle =>
      'Parlez votre saisie à Ask Ayara au lieu de taper.';

  @override
  String get voiceInputMicDenied => 'L\'accès au microphone a été refusé.';

  @override
  String get voiceInputSpeak => 'Parler à la place';

  @override
  String get voiceInputListening => 'Écoute…';

  @override
  String get voiceInputPermissionDenied =>
      'L\'accès au microphone est requis pour l\'entrée vocale.';
}

/// The translations for French, as used in Switzerland (`fr_CH`).
class AppLocalizationsFrCh extends AppLocalizationsFr {
  AppLocalizationsFrCh() : super('fr_CH');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choisissez votre langue';

  @override
  String get languageSelectSub =>
      'Vous pourrez modifier ce choix plus tard dans les Paramètres';

  @override
  String get actionContinue => 'Continuer';

  @override
  String get languageSuggestedHeader => 'Suggestions';

  @override
  String get languageAllHeader => 'Toutes les langues';

  @override
  String get languageSuggestedBadge => 'Suggéré';

  @override
  String get languageSearchHint => 'Rechercher…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Guidance Quotidienne';

  @override
  String get categorySlot02 => 'Iman & Confiance';

  @override
  String get categorySlot03 => 'Réflexion sur la Prière';

  @override
  String get categorySlot04 => 'Patience & Espoir';

  @override
  String get categorySlot05 => 'Demander le Pardon';

  @override
  String get categorySlot06 => 'Miséricorde & Compassion';

  @override
  String get categorySlot07 => 'Force de la Foi';

  @override
  String get categorySlot08 => 'Cœur Reconnaissant';

  @override
  String get categorySlot09 => 'Sens de la Vie';

  @override
  String get categorySlot10 => 'Liens Familiaux';

  @override
  String get categorySlot11 => 'Paix Intérieure';

  @override
  String get categorySlot12 => 'Sagesse Prophétique';

  @override
  String get categorySlot13 => 'Noblesse de Caractère';

  @override
  String get categorySlot14 => 'Résister à la Tentation';

  @override
  String get categorySlot15 => 'Dhikr du Soir';

  @override
  String get categoryCustom => 'Réflexion Personnelle';

  @override
  String get dhikrMeaningSubhanallah => 'Gloire à Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Louange à Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah est le Plus Grand';

  @override
  String get quranVerseHeartAtRest =>
      'N\'est-ce pas par l\'évocation d\'Allah que les cœurs s\'apaisent ?';

  @override
  String get promptHint =>
      'Appuyez sur une catégorie pour une guidance islamique';

  @override
  String get currentLanguage => 'Langue actuelle';

  @override
  String get settingsLanguage => 'Paramètres de langue';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get chooseLanguage => 'Choisissez votre langue';

  @override
  String get continueCta => 'Continuer';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mots',
      one: '$count mot',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'Nouveau';

  @override
  String get actionsTitle => 'Que souhaitez-vous faire ?';

  @override
  String get copy => 'Copier';

  @override
  String get share => 'Partager';

  @override
  String get close => 'Fermer';

  @override
  String get copiedToast => 'Copié dans le presse-papiers';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Impossible de générer une réponse';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVoulez-vous réessayer ?';
  }

  @override
  String get cancelCta => 'Annuler';

  @override
  String get retryCta => 'Réessayer';

  @override
  String get authTitle => 'Créez votre compte';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get signInEmail => 'Se connecter par e-mail';

  @override
  String get upgradeWithApple => 'Continuer avec Apple';

  @override
  String get mustAccept =>
      'Vous devez accepter les Conditions et la Politique de Confidentialité.';

  @override
  String get termsLabel => 'J\'accepte les Conditions d\'Utilisation';

  @override
  String get privacyLabel => 'J\'ai lu la Politique de Confidentialité';

  @override
  String get marketingOptIn =>
      'J\'accepte de recevoir des nouvelles et des offres';

  @override
  String get openTerms => 'Conditions d\'Utilisation';

  @override
  String get openPrivacy => 'Politique de Confidentialité';

  @override
  String get accountSection => 'Compte';

  @override
  String get guestMode => 'Mode invité';

  @override
  String get signedIn => 'Connecté';

  @override
  String get upgradeHint =>
      'Enregistrez vos réflexions sur tous vos appareils en créant un compte.';

  @override
  String get upgradeWithGoogle => 'Continuer avec Google';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String get snackUpgraded => 'Compte mis à niveau avec Google ✅';

  @override
  String get snackSignedIn => 'Connecté avec Google ✅';

  @override
  String get snackSignedOut => 'Déconnecté';

  @override
  String get snackSignedInApple => 'Connecté avec Apple ✅';

  @override
  String get snackSignedInGoogle => 'Connecté avec Google ✅';

  @override
  String get snackUpgradedApple => 'Compte mis à niveau avec Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Compte mis à niveau avec Google ✅';

  @override
  String get historyTitle => 'Réflexions précédentes';

  @override
  String get historyOpenCta => 'Historique des réflexions';

  @override
  String get historyEmpty => 'Aucune réflexion enregistrée pour le moment.';

  @override
  String get historyDeleteTitle => 'Supprimer la réflexion ?';

  @override
  String get historyDeleteBody =>
      'Ceci supprimera définitivement l\'élément sélectionné.';

  @override
  String get deleteCta => 'Supprimer';

  @override
  String get historyButton => 'Réflexions Précédentes';

  @override
  String get historyEmptyTitle => 'Pas encore de réflexions';

  @override
  String get historyEmptyBody =>
      'Générez du contenu d\'abord — vos éléments sauvegardés apparaîtront ici.';

  @override
  String get historyDelete => 'Supprimer';

  @override
  String get footerTitle => 'Avec Wilaya, Iman et Sabr';

  @override
  String get footerSubtitle => 'Une prière à la fois';

  @override
  String get genericErrorSnack =>
      'Un problème est survenu — veuillez réessayer dans un instant.';

  @override
  String get upgradeAccountCta =>
      'Sauvegardez vos réflexions partout – créez un compte';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get exportData => 'Exporter mes données';

  @override
  String userUidLabel(String uid) {
    return 'UID : $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Doucement 🐯\nAyara a besoin d\'un instant avant la prochaine réponse…';

  @override
  String get rateDailyLimit =>
      'Vous n\'avez plus de réflexions pour aujourd\'hui.\nObtenez-en plus ou passez à Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Vous avez utilisé toutes vos réflexions.\nRechargez ou passez à Wilaya pour continuer.';

  @override
  String get rateGraceCreditsExhausted =>
      'Vous n\'avez plus de réflexions disponibles.\nObtenez-en plus ou passez à Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya débloque les fonctionnalités premium, les futures catégories et un badge spécial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Vos réflexions sont épuisées. Plan : $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Impossible de vérifier vos réflexions : $message';
  }

  @override
  String get rateCheckGenericError =>
      'Une erreur est survenue lors de la vérification de vos crédits.';

  @override
  String get aiFallbackGeneric =>
      'Un problème est survenu — veuillez réessayer dans un instant.';

  @override
  String get limitSectionTitle => 'Réflexions';

  @override
  String get limitTodayLabel => 'Utilisation';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Réflexions restantes : $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan : $plan';
  }

  @override
  String get limitLoadingLabel => 'Chargement…';

  @override
  String get limitLoadingLabelDescription =>
      'Affiché pendant la récupération des statistiques.';

  @override
  String get aiLimitTitle => 'Réflexions';

  @override
  String get aiLimitSubtitle =>
      'Chaque réponse consomme 1 réflexion. Le plan Standard inclut des réflexions de départ. Wilaya débloque les catégories premium et permet les recharges.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total réflexions utilisées';
  }

  @override
  String get creditsSectionTitle => 'Réflexions';

  @override
  String get creditsUsageLabel => 'Utilisation';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Réflexions restantes : $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan : $plan';
  }

  @override
  String get creditsLoadingLabel => 'Chargement…';

  @override
  String get creditsLoadingLabelDescription =>
      'Affiché pendant la récupération des données de réflexion.';

  @override
  String get creditsTitle => 'Réflexions';

  @override
  String get creditsSubtitle =>
      'Chaque réponse consomme 1 réflexion. Le plan Standard inclut des réflexions de départ. Wilaya débloque les catégories premium.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total réflexions utilisées';
  }

  @override
  String get settingsDeleteTitle => 'Supprimer le compte';

  @override
  String get settingsDeleteDescription =>
      'Supprime définitivement votre compte et toutes les données associées.';

  @override
  String get settingsDeleteButtonLabel => 'Supprimer mon compte';

  @override
  String get settingsDeleteDialogTitle => 'Supprimer le compte ?';

  @override
  String get settingsDeleteDialogBody =>
      'Cette action est irréversible.\n\nTous vos chats, votre historique et vos infos de compte seront supprimés.';

  @override
  String get settingsDeleteDialogCancel => 'Annuler';

  @override
  String get settingsDeleteDialogConfirm => 'Supprimer';

  @override
  String get settingsFreeLimitUsedTitle => 'Réflexions de départ épuisées';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Les réflexions offertes pour cet appareil ont été utilisées. Passez à Wilaya ou achetez des crédits pour continuer.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Réflexions de départ épuisées';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Les réflexions offertes pour cet appareil ont été utilisées. Passez à Wilaya ou achetez des crédits pour continuer.';

  @override
  String get deviceBoundError =>
      'Cet appareil est déjà lié à un autre compte. Veuillez vous connecter avec le compte original.';

  @override
  String get premiumTitle => 'Mode Wilaya';

  @override
  String get premiumSubtitleBasic => 'Débloquez l\'expérience complète Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Vous êtes sous Wilaya. Besoin de plus de réflexions ?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actuel : $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Réflexions : $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Les achats sont indisponibles pour le moment.';

  @override
  String get premiumSignInToPurchase =>
      'Connectez-vous pour acheter des crédits ou débloquer Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurer les achats';

  @override
  String get premiumProcessing => 'Traitement…';

  @override
  String get premiumRestoreHintTitle =>
      'Déjà acheté Wilaya ou des crédits sur cet appareil ou un autre ?';

  @override
  String get premiumRestoreHintBody =>
      'Restaurez vos achats s\'ils n\'apparaissent pas.';

  @override
  String get premiumBuyCredits200 => 'Acheter 200 réflexions';

  @override
  String get premiumBuyCredits400 => 'Acheter 400 réflexions';

  @override
  String get premiumBecomePremiumOneTime => 'Passer au mode Wilaya';

  @override
  String get premiumTopupHint =>
      'Avec Wilaya, vous pouvez recharger des crédits dès que nécessaire.';

  @override
  String get premiumUpgradeCta => 'Mettre à niveau';

  @override
  String get premiumRequiredForCategory =>
      'Cette catégorie est réservée aux utilisateurs Wilaya. Mettez à niveau votre plan dans les Paramètres.';

  @override
  String get premiumBenefitsBasic =>
      'Débloquez Wilaya pour obtenir des réflexions supplémentaires et accéder aux catégories premium.';

  @override
  String get premiumBenefitsPremium =>
      'Vous êtes en mode Wilaya. Si vous manquez de crédits, vous pouvez recharger à tout moment.';

  @override
  String get premiumButtonBecomePremium => 'Débloquer Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Ajouter 1000 réflexions';

  @override
  String get premiumBadge => 'Wilaya actif';

  @override
  String get premiumLoadingStore => 'Chargement de la boutique…';

  @override
  String get premiumProductNotAvailable =>
      'Ce produit n\'est pas encore disponible. Veuillez réessayer plus tard.';

  @override
  String get premiumPurchaseError =>
      'Un problème est survenu lors de l\'achat. Veuillez réessayer.';

  @override
  String get premiumBuyCredits100 => 'Ajouter 100 réflexions';

  @override
  String get premiumFeatureLocked =>
      'Débloquez Wilaya pour accéder à cette fonctionnalité.';

  @override
  String get lockedCategoriesHint =>
      'Certaines catégories sont réservées aux membres Wilaya. Débloquez-les pour explorer tout le contenu.';

  @override
  String get freePlanBlockedTitle => 'Réflexions de départ épuisées';

  @override
  String get freePlanBlockedBody =>
      'Vous avez atteint la limite du plan Standard. Pour continuer et accéder aux catégories premium, passez à Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Voir les options Wilaya ci-dessous';

  @override
  String get graceBlockedTitle => 'Réflexions gratuites épuisées';

  @override
  String get graceBlockedBody =>
      'Vous avez utilisé toutes vos réflexions de départ. Passez à Wilaya pour débloquer le contenu premium.';

  @override
  String get graceBlockedCtaGoPremium => 'Voir les options Wilaya ci-dessous';

  @override
  String get rateGuestMustSignIn =>
      'Connectez-vous pour utiliser Ayara et vos réflexions.';

  @override
  String get guestNoCreditsTitle => 'Mode Invité';

  @override
  String get guestNoCreditsBody =>
      'En tant qu\'invité, vous pouvez parcourir l\'app, mais pas utiliser les réflexions. Connectez-vous pour débloquer les fonctionnalités.';

  @override
  String get guestDialogContinue => 'Continuer';

  @override
  String get guestDialogLoginInstead => 'Se connecter plutôt';

  @override
  String get optionalLabel => 'optionnel';

  @override
  String get accountDeleteSuccessTitle => 'Compte supprimé';

  @override
  String get accountDeleteSuccessBody =>
      'Votre compte et vos données ont été supprimés avec succès.';

  @override
  String get accountDeleteSuccessClose => 'Fermer';

  @override
  String get accountDeleteErrorTitle => 'Échec de la suppression';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ré-authentification annulée. Veuillez vous reconnecter pour réessayer.';

  @override
  String get accountDeleteReauthRequired =>
      'La suppression nécessite une connexion récente. Veuillez vous déconnecter et vous reconnecter.';

  @override
  String get settingsDeletePermanentWarning =>
      'Cette action est irréversible. Toutes les données associées seront effacées.';

  @override
  String get dailyGraceTitle => 'Guidance Quotidienne';

  @override
  String get dailyGraceScriptureLabel => 'VERSET DU JOUR';

  @override
  String get dailyGraceSaintLabel => 'FIGURE DE LA SEMAINE';

  @override
  String get dailyGraceReflectionLabel => 'RÉFLEXION DU SOIR';

  @override
  String get dailyGraceCopiedToast => 'Verset copié';

  @override
  String get locationConsentLabel =>
      'Autoriser Ayara à utiliser ma position pour la Qibla et les horaires de prière';

  @override
  String get locationConsentHint =>
      'Utilisé uniquement pour ces fonctions. Votre position n\'est jamais partagée ou stockée.';

  @override
  String get askPageTitle => 'Demander à Ayara';

  @override
  String get askPageDescription =>
      'Posez vos questions sur la foi, la prière ou la pratique islamique. Recevez une guidance ancrée dans le Coran et les enseignements de l\'Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Tapez votre question ici…';

  @override
  String get askPageSubmitCta => 'Demander';

  @override
  String get askPageInputEmptyError => 'Veuillez d\'abord écrire une question.';

  @override
  String get askResultYourQuestion => 'Votre question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Face à la Mecque';

  @override
  String get qiblaCompassInstruction =>
      'Tournez votre téléphone jusqu\'à ce que l\'aiguille dorée pointe vers le haut.\nC\'est la direction de la Qibla (La Mecque).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Signal GPS faible. Déplacez-vous à l\'extérieur et réessayez.';

  @override
  String get qiblaRetry => 'Réessayer';

  @override
  String get qiblaTitle => 'Direction de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km jusqu\'à la Mecque';
  }

  @override
  String get qiblaLocationNeededTitle => 'Position requise';

  @override
  String get qiblaLocationNeededBody =>
      'Autorisez l\'accès à la position pour calculer la direction de la Kaaba d\'où que vous soyez.';

  @override
  String get qiblaOpenSettings => 'Ouvrir les Paramètres';

  @override
  String get qiblaCompassLoading => 'Recherche de votre position…';

  @override
  String get qiblaTowardMecca => 'Vers la Mecque';

  @override
  String get prayerTimesTitle => 'Heures de Prière';

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
  String get prayerTimesLocationNeededTitle => 'Position requise';

  @override
  String get prayerTimesLocationNeededBody =>
      'Autorisez l\'accès à la position pour obtenir les horaires précis pour votre ville.';

  @override
  String get prayerTimesNextLabel => 'Suivant';

  @override
  String get prayerTimesDoneLabel => 'Terminé';

  @override
  String get monthlyPrayerTimesTitle => 'Horaires Mensuels';

  @override
  String get monthlyPrayerTimesViewButton => 'Voir tout le mois';

  @override
  String get monthlyPrayerTimesNextMonth => 'Mois prochain';

  @override
  String get monthlyPrayerTimesDayHeader => 'Jour';

  @override
  String get sharePrayerTimes => 'Partager les horaires';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Rappels de prière, calendrier et plus';

  @override
  String get dailyReflectionReminderTitle => 'Réflexion Quotidienne';

  @override
  String get dailyReflectionReminderDescription =>
      'Un rappel quotidien pour se connecter à sa foi via Ayara.';

  @override
  String get dailyReflectionReminderEnable => 'Activer le rappel quotidien';

  @override
  String get dailyReflectionReminderTimeLabel => 'Heure du rappel';

  @override
  String get prayerNotificationsTitle => 'Rappels de Prière';

  @override
  String get prayerNotificationsDescription =>
      'Recevez une notification avant chaque prière pour rester connecté tout au long de la journée.';

  @override
  String get prayerNotificationsEnable => 'Activer les rappels';

  @override
  String get prayerNotificationsOpenSettings => 'Paramètres de notification';

  @override
  String get prayerNotificationsDenied => 'Notifications désactivées';

  @override
  String get prayerNotificationsDeniedHint =>
      'Autorisez les notifications dans les réglages de votre appareil.';

  @override
  String get notificationsConsentLabel =>
      'Autoriser les notifications pour les prières';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Prière de l\'Aube';

  @override
  String get prayerNotifBodyFajr =>
      'Le Fajr est la prière des matins de l\'Ahl al-Bayt. Imam Ali (AS) a dit : Gardez la prière de l\'aube comme votre dépôt le plus précieux. Levez-vous, purifiez-vous et tenez-vous devant Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Prière du Midi';

  @override
  String get prayerNotifBodyDhuhr =>
      'Les Imams chérissaient chaque instant de souvenir. Marquez une pause, combinez Dhuhr et Asr si nécessaire, et tournez votre cœur vers Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Prière de l\'Après-midi';

  @override
  String get prayerNotifBodyAsr =>
      'Préservez la prière, c\'est le pacte entre vous et Allah. L\'heure de l\'Asr est là — ne la laissez pas passer sans évocation.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Prière du Coucher du soleil';

  @override
  String get prayerNotifBodyMaghrib =>
      'Le soleil s\'est couché — un moment sacré pour l\'Ahl al-Bayt. Offrez votre Maghrib et ouvrez vos mains pour le dua.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Prière de la Nuit';

  @override
  String get prayerNotifBodyIsha =>
      'Finissez votre journée en compagnie d\'Allah. Les Imams encourageaient la Salat al-Layl, mais d\'abord, complétez votre Isha.';

  @override
  String get outOfReflectionsBannerText => 'Vous avez épuisé vos réflexions';

  @override
  String get outOfReflectionsBannerCta => 'En obtenir plus';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Appuyez sur le cercle pour compter';

  @override
  String get dhikrResetButton => 'Réinitialiser';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Vous avez complété 100 évocations. Puisse cela être une lumière pour votre cœur.';

  @override
  String get disclaimerTitle => 'À propos de la guidance';

  @override
  String get disclaimerBody =>
      'Ayara propose des réflexions islamiques basées sur le Coran et l\'Ahl al-Bayt. Ce contenu est à but informatif et inspirant uniquement.\n\nAyara ne remplace pas l\'avis des savants.\nCette app ne remplace pas un savant (\'alim), un Marja\' ou un enseignant qualifié. Dans le chiisme, la guidance est ancrée dans l\'école Ja\'farite et le suivi d\'un Marja\' vivant. En cas de questions juridiques (fiqh), veuillez consulter un Marja\' qualifié.\n\nCette application n\'émet pas de décrets religieux (fatwas).\n\nCentralité de l\'Ahl al-Bayt.\nLes douze Imams sont les guides divinement nommés. Cette application cherche à honorer fidèlement cette tradition.\n\nImportance de la communauté.\nNous vous encourageons à rester connecté avec votre mosquée locale et vos enseignants qualifiés.';

  @override
  String get disclaimerClose => 'Je comprends';

  @override
  String get disclaimerInfoTooltip => 'À propos de la guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'À but informatif. Appuyez pour lire le texte complet.';

  @override
  String get disclaimerSectionHeader => 'Clause de non-responsabilité';

  @override
  String get navHome => 'Accueil';

  @override
  String get navReflect => 'Réfléchir';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendrier';

  @override
  String get dashboardToday => 'AUJOURD\'HUI';

  @override
  String get dashboardComingUp => 'À venir';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jours',
      one: 'jour',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Accès Rapide';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Horaires';

  @override
  String get askAyaraTitle => 'Demander à Ayara';

  @override
  String get askAyaraSubtitle =>
      'Posez une question et recevez une réponse guidée.';

  @override
  String get askAyaraHint => 'ex: Quelle est l\'importance du Ramadan ?';

  @override
  String get askAyaraSubmit => 'Demander';

  @override
  String get wisdomOfTheDayTitle => 'Sagesse du Jour';

  @override
  String get calendarScreenTitle => 'Calendrier Islamique';

  @override
  String get calendarUpcomingOccasions => 'Occasions à venir';

  @override
  String get calendarOccasionRemindersTitle => 'Rappels d\'Occasions';

  @override
  String get calendarOccasionRemindersHint => 'Notifié la veille au soir';

  @override
  String get calendarNotifPermissionDenied =>
      'Permission refusée. Activez-la dans les réglages.';

  @override
  String get calendarNoEvents => 'Aucun événement trouvé.';

  @override
  String get calendarAddToPhone => 'Ajouter au calendrier du téléphone';

  @override
  String get calendarAddedToPhone => 'Ajouté au calendrier';

  @override
  String get calendarCountdownToday => 'AUJOURD\'HUI';

  @override
  String get calendarCountdownTomorrow => 'DEMAIN';

  @override
  String calendarCountdownDays(int days) {
    return 'dans $days jours';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fév';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Avr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Juin';

  @override
  String get calendarMonthJul => 'Juil';

  @override
  String get calendarMonthAug => 'Août';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Déc';

  @override
  String get calendarSeasonMuharramEarly =>
      'Jours de Muharram — Souvenir de Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — jours de deuil et réflexion';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quarante jours de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'La route vers l\'Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — l\'aube de la révélation';

  @override
  String get calendarSeasonMidShaban =>
      'Mi-Sha\'ban — naissance de l\'Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — le mois du Coran';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak !';

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
  String get duasSearchHint => 'Chercher un dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tous';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Aucun dua trouvé.';

  @override
  String get duaCategoryDaily => 'Quotidien';

  @override
  String get duaCategoryWeekly => 'Hebdomadaire';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Naissance';

  @override
  String get eventTypeMartyrdom => 'Martyre';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copier traduction';

  @override
  String get duaToggleTransliteration => 'Translittération';

  @override
  String get duaToggleTranslation => 'Traduction';

  @override
  String get duaAskAiLabel => 'Demander à Ayara d\'expliquer ce dua';

  @override
  String get duaAskAiLockedLabel => 'Demander à Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Les explications sont réservées aux membres Wilaya.';

  @override
  String duaAiComingSoon(String name) {
    return 'Demandez à Ayara sur \"$name\" — bientôt !';
  }

  @override
  String get duaCopiedToast => 'Dua copié dans le presse-papiers.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah est le Plus Grand';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toute louange appartient à Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloire à Allah';

  @override
  String get tasbihResetTooltip => 'Réinitialiser';

  @override
  String get tasbihCompleteTitle => 'Tasbih Terminé';

  @override
  String get tasbihCompleteMessage => 'Puisse Allah accepter votre dhikr.';

  @override
  String get tasbihTapHint => 'Appuyez n\'importe où pour compter';

  @override
  String get tasbihatScreenTitle => 'Guide de Prière';

  @override
  String get tasbihatScreenSubtitle => 'LES GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'Un guide complet des glorifications récitées pendant et après les prières quotidiennes.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Récité pendant les 3ème & 4ème rakʿahs';

  @override
  String get tasbihatArba3Info =>
      'Remplace la Sourate al-Fatiha. Il est obligatoire de le réciter une fois, et recommandé trois fois.';

  @override
  String get tasbihatArba3Translation =>
      'Gloire à Allah · Louange à Allah\nNul dieu sinon Allah · Allah est le Plus Grand';

  @override
  String get tasbihatArba3CompleteTitle => 'Récitation Terminée';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Puisse votre prière être acceptée — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Appuyez après chaque récitation';

  @override
  String get tasbihatZahraSubtitle => 'Après chaque prière · 100 grains';

  @override
  String get tasbihatZahraOriginLabel => 'Origine';

  @override
  String get tasbihatZahraHadith =>
      'Dame Fatima al-Zahra (sa) a reçu cet enseignement du Prophète ﷺ : Subḥānallāh 33 fois, Alḥamdulillāh 33 fois, et Allāhu Akbar 34 fois.';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Ouvrir le compteur Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS RECOMMANDÉS';

  @override
  String get tasbihatDuasSubtitle => 'Après avoir terminé votre prière';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Après chaque prière obligatoire';

  @override
  String get tasbihatDuaAyatKursiSource => 'Sourate al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'L\'Imam al-Bāqir (a) a dit que c\'est l\'un des plus grands versets du Coran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Après chaque prière';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Indispensable pour sceller vos supplications.';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Après chaque prière';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseigné par l\'Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Une dua pour la réapparition de l\'Imam al-Mahdī (af), le douzième Imam, enseignée par son père. Elle est souvent récitée par de nombreux musulmans chiites après la prière comme un acte de dévotion envers l\'Imam vivant.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de Dame Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen => 'Après le Maghrib & l\'Isha';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Sa lumière monte jusqu\'aux cieux.';

  @override
  String get tasbihFatimaGiftPre => 'Un cadeau du Prophète';

  @override
  String get tasbihFatimaGiftPost => 'récité après chaque prière';

  @override
  String get prayerTrackerTitle => 'SUIVI DES PRIÈRES';

  @override
  String get prayerTrackerPrayed => 'Prié';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Série de $count jours';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Prières terminées. Puisse Allah accepter.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Fait aujourd\'hui';

  @override
  String get dhikrTrackerNotDoneToday => 'Pas encore fait';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Série de $count jours';
  }

  @override
  String get dhikrReminderTitle => 'Rappel Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un rappel quotidien pour votre Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Activer le rappel';

  @override
  String get dhikrReminderTimeLabel => 'Heure du rappel';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith du Jour';

  @override
  String get hadithLabelArabic => 'ARABE';

  @override
  String get hadithLabelTranslation => 'TRADUCTION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Partager ce Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Précédent';

  @override
  String get hadithNavNext => 'Suivant';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Les Quatorze Infaillibles';

  @override
  String get imamsScreenSubtitle =>
      'Le Prophète, Lady Fatima et les Douze Imams — les guides purifiés et infaillibles dans l\'Islam chiite du Douzième';

  @override
  String get imamLabelBorn => 'Naissance';

  @override
  String get imamLabelMartyrdom => 'Martyre';

  @override
  String get imamLabelStatus => 'Statut';

  @override
  String get imamSectionBiography => 'BIOGRAPHIE';

  @override
  String get imamSectionFamousSaying => 'PAROLE CÉLÈBRE';

  @override
  String get imamRoleProphet => 'Le Sceau des Prophètes';

  @override
  String get imamRoleInfallible => 'L\'Infaillible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2ème Imam';

  @override
  String get imamOrdinal3 => '3ème Imam';

  @override
  String get imamOrdinal4 => '4ème Imam';

  @override
  String get imamOrdinal5 => '5ème Imam';

  @override
  String get imamOrdinal6 => '6ème Imam';

  @override
  String get imamOrdinal7 => '7ème Imam';

  @override
  String get imamOrdinal8 => '8ème Imam';

  @override
  String get imamOrdinal9 => '9ème Imam';

  @override
  String get imamOrdinal10 => '10ème Imam';

  @override
  String get imamOrdinal11 => '11ème Imam';

  @override
  String get imamOrdinal12 => '12ème Imam';

  @override
  String get duaAudioScreenTitle => 'Écouter les Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Sélectionnez un dua. Appuyez pour lire ou mettre en pause.';

  @override
  String get duaAudioComingSoonMessage => 'Audio bientôt disponible.';

  @override
  String get duaAudioClose => 'Fermer';

  @override
  String get duaAudioError =>
      'Échec du chargement audio. Vérifiez votre connexion.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmis par';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Durée';

  @override
  String get quickActionDailyHadith => 'Hadith du Jour';

  @override
  String get quickAction14Masumeen => 'Quatorze Infaillibles';

  @override
  String get quickActionListenDuas => 'Écouter';

  @override
  String get quickActionTasbihat => 'Guide Prière';

  @override
  String get pilgrimageSectionTitle => 'Le Voyage Sacré';

  @override
  String get pilgrimageSectionSubtitle => 'Guides pour le Hajj & l\'Umrah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Le Cinquième Pilier de l\'Islam';

  @override
  String get hajjCardDescription => 'Le grand pèlerinage annuel à la Mecque';

  @override
  String get hajjScreenTitle => 'Guide du Hajj';

  @override
  String get hajjScreenSubtitle => 'Étapes du grand pèlerinage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Le Petit Pèlerinage';

  @override
  String get umrahCardDescription =>
      'Un voyage spirituel réalisable à tout moment de l\'année';

  @override
  String get umrahScreenTitle => 'Guide de l\'Umrah';

  @override
  String get umrahScreenSubtitle => 'Étapes du petit pèlerinage';

  @override
  String get pilgrimageStepsTitle => 'Rituels & Étapes';

  @override
  String get pilgrimageImportantNotesTitle => 'Notes Importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua pour cette étape';

  @override
  String get pilgrimageJafariNoteTitle => 'Note de fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Complet';

  @override
  String get pilgrimageMarkDone => 'Marquer comme complet';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done sur $total étapes';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pèlerins Chiites';

  @override
  String get pilgrimageShiaNoteBody =>
      'De nombreux pèlerins chiites se rendent également à Médine pour le ziyarat du Prophète Muhammad (SAW) à la Mosquée du Prophète et aux tombes de Jannat al-Baqi. Ces visites ont une profonde signification spirituelle, bien qu\'elles ne soient pas en elles-mêmes des rites de Hajj.';

  @override
  String get hajjIntro =>
      'Le Hajj est le cinquième pilier de l\'Islam, obligatoire une fois dans la vie pour chaque musulman qui est physiquement et financièrement capable. Pour la plupart des pèlerins chiites du Douzième aujourd\'hui, cela signifie Hajj al-Tamattu\', effectué au mois de Dhul Hijjah sur les traces du Prophète Ibrahim (AS), de son fils Ismail (AS) et de Lady Hajar. Ce guide suit le schéma ja\'fari des rites, tandis que le ziyarat à Médine reste un voyage profondément chéri avant ou après le Hajj.';

  @override
  String get umrahIntro =>
      'L\'Umrah est le petit pèlerinage. Bien que non obligatoire, il est hautement recommandé.';

  @override
  String get voiceInputTitle => 'Saisie vocale';

  @override
  String get voiceInputMicTitle => 'Microphone';

  @override
  String get voiceInputMicSubtitle =>
      'Parlez votre saisie à Ask Ayara au lieu de taper.';

  @override
  String get voiceInputMicDenied => 'L\'accès au microphone a été refusé.';

  @override
  String get voiceInputSpeak => 'Parler à la place';

  @override
  String get voiceInputListening => 'Écoute…';

  @override
  String get voiceInputPermissionDenied =>
      'L\'accès au microphone est requis pour la saisie vocale.';
}
