// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choose your language';

  @override
  String get languageSelectSub => 'You can change this later in Settings';

  @override
  String get actionContinue => 'Continue';

  @override
  String get languageSuggestedHeader => 'Suggested';

  @override
  String get languageAllHeader => 'All languages';

  @override
  String get languageSuggestedBadge => 'Suggested';

  @override
  String get languageSearchHint => 'Search…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daily Guidance';

  @override
  String get categorySlot02 => 'Iman & Trust';

  @override
  String get categorySlot03 => 'Prayer Reflection';

  @override
  String get categorySlot04 => 'Patience Hope';

  @override
  String get categorySlot05 => 'Seek Forgiveness';

  @override
  String get categorySlot06 => 'Mercy Compassion';

  @override
  String get categorySlot07 => 'Faith Strength';

  @override
  String get categorySlot08 => 'Grateful Heart';

  @override
  String get categorySlot09 => 'Life Purpose';

  @override
  String get categorySlot10 => 'Family Ties';

  @override
  String get categorySlot11 => 'Inner Peace';

  @override
  String get categorySlot12 => 'Prophet Wisdom';

  @override
  String get categorySlot13 => 'Good Character';

  @override
  String get categorySlot14 => 'Resist Temptation';

  @override
  String get categorySlot15 => 'Evening Dhikr';

  @override
  String get categoryCustom => 'Personal Reflection';

  @override
  String get dhikrMeaningSubhanallah => 'Glory be to Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All praise is due to Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is the Greatest';

  @override
  String get quranVerseHeartAtRest =>
      'Verily, in the remembrance of Allah do hearts find rest.';

  @override
  String get promptHint => 'Tap a category for Islamic guidance and reflection';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get settingsLanguage => 'Language settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Choose your language';

  @override
  String get continueCta => 'Continue';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '$count word',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'New';

  @override
  String get actionsTitle => 'What would you like to do?';

  @override
  String get copy => 'Copy';

  @override
  String get share => 'Share';

  @override
  String get close => 'Close';

  @override
  String get copiedToast => 'Copied to clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Couldn\'t generate a new reply';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDo you want to try again?';
  }

  @override
  String get cancelCta => 'Cancel';

  @override
  String get retryCta => 'Try again';

  @override
  String get authTitle => 'Create your account';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get signInEmail => 'Sign in with Email';

  @override
  String get upgradeWithApple => 'Continue with Apple';

  @override
  String get mustAccept =>
      'You must accept the Terms and acknowledge the Privacy Policy.';

  @override
  String get termsLabel => 'I accept the Terms of Service';

  @override
  String get privacyLabel => 'I have read the Privacy Policy';

  @override
  String get marketingOptIn => 'I agree to receive news and offers';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Signed in';

  @override
  String get upgradeHint =>
      'Save your reflections across devices by creating an account.';

  @override
  String get upgradeWithGoogle => 'Continue with Google';

  @override
  String get signOut => 'Sign out';

  @override
  String get snackUpgraded => 'Account upgraded with Google ✅';

  @override
  String get snackSignedIn => 'Signed in with Google ✅';

  @override
  String get snackSignedOut => 'Signed out';

  @override
  String get snackSignedInApple => 'Signed in with Apple ✅';

  @override
  String get snackSignedInGoogle => 'Signed in with Google ✅';

  @override
  String get snackUpgradedApple => 'Account upgraded with Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account upgraded with Google ✅';

  @override
  String get historyTitle => 'Previous reflections';

  @override
  String get historyOpenCta => 'Previous reflections';

  @override
  String get historyEmpty => 'No saved reflections yet.';

  @override
  String get historyDeleteTitle => 'Delete reflection?';

  @override
  String get historyDeleteBody =>
      'This will permanently remove the selected item.';

  @override
  String get deleteCta => 'Delete';

  @override
  String get historyButton => 'Previous Reflections';

  @override
  String get historyEmptyTitle => 'No reflections yet';

  @override
  String get historyEmptyBody =>
      'Generate something first — your saved items will appear here.';

  @override
  String get historyDelete => 'Delete';

  @override
  String get footerTitle => 'With Wilaya, Iman and Sabr';

  @override
  String get footerSubtitle => 'One prayer at a time';

  @override
  String get genericErrorSnack =>
      'Something went wrong — please try again in a moment.';

  @override
  String get upgradeAccountCta =>
      'Save your reflections across devices – create an account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get exportData => 'Export my data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nAyara needs a moment before the next one…';

  @override
  String get rateDailyLimit =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.';

  @override
  String get rateGraceCreditsExhausted =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya unlocks premium features, future categories, and a special badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Your reflections are empty right now. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Couldn\'t check your reflections: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Something went wrong while checking your reflections.';

  @override
  String get aiFallbackGeneric =>
      'Something went wrong — please try again in a moment.';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'Usage';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Remaining reflections: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Loading…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'Usage';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Remaining reflections: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Loading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get settingsDeleteTitle => 'Delete account';

  @override
  String get settingsDeleteDescription =>
      'Permanently delete your account and all associated data.';

  @override
  String get settingsDeleteButtonLabel => 'Delete my account';

  @override
  String get settingsDeleteDialogTitle => 'Delete account?';

  @override
  String get settingsDeleteDialogBody =>
      'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel';

  @override
  String get settingsDeleteDialogConfirm => 'Delete';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter reflections used';

  @override
  String get settingsFreeLimitUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter reflections used';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get deviceBoundError =>
      'This device is already linked to another account. Please sign in with the original account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'Unlock the full Ayara experience.';

  @override
  String get premiumSubtitlePremium =>
      'You\'re on Wilaya. Need more reflections?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Current plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Purchases are not available right now.';

  @override
  String get premiumSignInToPurchase =>
      'Sign in to buy reflections or unlock Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restore purchases';

  @override
  String get premiumProcessing => 'Processing…';

  @override
  String get premiumRestoreHintTitle =>
      'Already purchased Wilaya or reflections on this device or another one?';

  @override
  String get premiumRestoreHintBody =>
      'Restore your purchases if they\'re not showing up.';

  @override
  String get premiumBuyCredits200 => 'Buy 200 reflections';

  @override
  String get premiumBuyCredits400 => 'Buy 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade to Wilaya mode';

  @override
  String get premiumTopupHint =>
      'With Wilaya, you can top up with extra reflections whenever you need.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.';

  @override
  String get premiumBenefitsPremium =>
      'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.';

  @override
  String get premiumButtonBecomePremium => 'Unlock Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Add 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya active';

  @override
  String get premiumLoadingStore => 'Loading store…';

  @override
  String get premiumProductNotAvailable =>
      'This product isn\'t available in the store yet. Please try again later.';

  @override
  String get premiumPurchaseError =>
      'Something went wrong with the purchase. Please try again.';

  @override
  String get premiumBuyCredits100 => 'Add 100 reflections';

  @override
  String get premiumFeatureLocked => 'Unlock Wilaya to access this feature.';

  @override
  String get lockedCategoriesHint =>
      'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.';

  @override
  String get freePlanBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get freePlanBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get graceBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get graceBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get rateGuestMustSignIn =>
      'Sign in to use Ayara and your reflections.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.';

  @override
  String get guestDialogContinue => 'Continue';

  @override
  String get guestDialogLoginInstead => 'Log in instead';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Account deleted';

  @override
  String get accountDeleteSuccessBody =>
      'Your account and associated data have been deleted successfully.';

  @override
  String get accountDeleteSuccessClose => 'Close';

  @override
  String get accountDeleteErrorTitle => 'Could not delete account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-authentication was cancelled. Please sign in again and retry deletion.';

  @override
  String get accountDeleteReauthRequired =>
      'Account deletion requires a recent login. Please sign out, sign in again, and retry.';

  @override
  String get settingsDeletePermanentWarning =>
      'This action is permanent and cannot be undone. All data associated with your account will be deleted.';

  @override
  String get dailyGraceTitle => 'Daily Guidance';

  @override
  String get dailyGraceScriptureLabel => 'VERSE OF THE DAY';

  @override
  String get dailyGraceSaintLabel => 'SCHOLAR OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'EVENING REFLECTION';

  @override
  String get dailyGraceCopiedToast => 'Verse copied to clipboard';

  @override
  String get locationConsentLabel =>
      'Allow Ayara to use my location for Qibla direction and prayer times';

  @override
  String get locationConsentHint =>
      'Used only for these features. Your location is never shared or stored.';

  @override
  String get askPageTitle => 'Ask Ayara';

  @override
  String get askPageDescription =>
      'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Type your question here…';

  @override
  String get askPageSubmitCta => 'Ask';

  @override
  String get askPageInputEmptyError => 'Please write a question first.';

  @override
  String get askResultYourQuestion => 'Your question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Facing Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal is weak. Move outdoors and tap Retry.';

  @override
  String get qiblaRetry => 'Retry';

  @override
  String get qiblaTitle => 'Qibla Direction';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km to Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Location required';

  @override
  String get qiblaLocationNeededBody =>
      'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.';

  @override
  String get qiblaOpenSettings => 'Open Settings';

  @override
  String get qiblaCompassLoading => 'Finding your position…';

  @override
  String get qiblaTowardMecca => 'Toward Makkah';

  @override
  String get prayerTimesTitle => 'Prayer Times';

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
  String get prayerTimesLocationNeededTitle => 'Location required';

  @override
  String get prayerTimesLocationNeededBody =>
      'Allow location access so Ayara can calculate accurate prayer times for your city.';

  @override
  String get prayerTimesNextLabel => 'Next';

  @override
  String get prayerTimesDoneLabel => 'Done';

  @override
  String get monthlyPrayerTimesTitle => 'Monthly Prayer Times';

  @override
  String get monthlyPrayerTimesViewButton => 'View Full Month';

  @override
  String get monthlyPrayerTimesNextMonth => 'Next month';

  @override
  String get monthlyPrayerTimesDayHeader => 'Day';

  @override
  String get sharePrayerTimes => 'Share prayer times';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Prayer reminders, calendar events & more';

  @override
  String get dailyReflectionReminderTitle => 'Daily Reflection';

  @override
  String get dailyReflectionReminderDescription =>
      'A gentle daily reminder to open Ayara and connect with your faith.';

  @override
  String get dailyReflectionReminderEnable => 'Enable daily reminder';

  @override
  String get dailyReflectionReminderTimeLabel => 'Reminder time';

  @override
  String get prayerNotificationsTitle => 'Prayer Reminders';

  @override
  String get prayerNotificationsDescription =>
      'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.';

  @override
  String get prayerNotificationsEnable => 'Enable prayer reminders';

  @override
  String get prayerNotificationsOpenSettings => 'Open notification settings';

  @override
  String get prayerNotificationsDenied => 'Notifications are disabled';

  @override
  String get prayerNotificationsDeniedHint =>
      'Go to Settings and allow notifications for Ayara to receive prayer time reminders.';

  @override
  String get notificationsConsentLabel =>
      'Allow notifications for prayer times';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dawn Prayer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Midday Prayer';

  @override
  String get prayerNotifBodyDhuhr =>
      'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Afternoon Prayer';

  @override
  String get prayerNotifBodyAsr =>
      'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sunset Prayer';

  @override
  String get prayerNotifBodyMaghrib =>
      'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Night Prayer';

  @override
  String get prayerNotifBodyIsha =>
      'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.';

  @override
  String get outOfReflectionsBannerText => 'You\'ve used all your reflections';

  @override
  String get outOfReflectionsBannerCta => 'Get more';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tap the circle to count';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'You have completed 100 remembrances of Allah. May they be a light for your heart.';

  @override
  String get disclaimerTitle => 'About this app\'s guidance';

  @override
  String get disclaimerBody =>
      'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.';

  @override
  String get disclaimerClose => 'I understand';

  @override
  String get disclaimerInfoTooltip => 'About this app\'s guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'For general informational purposes only. Tap to read the full disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Guidance disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflect';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'TODAY';

  @override
  String get dashboardComingUp => 'Coming up';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Quick Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Prayer Times';

  @override
  String get askAyaraTitle => 'Ask Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ask any Islamic question and receive a thoughtful, guided answer.';

  @override
  String get askAyaraHint => 'e.g. What is the significance of Ramadan?';

  @override
  String get askAyaraSubmit => 'Ask';

  @override
  String get wisdomOfTheDayTitle => 'Wisdom of the Day';

  @override
  String get calendarScreenTitle => 'Islamic Calendar';

  @override
  String get calendarUpcomingOccasions => 'Upcoming Occasions';

  @override
  String get calendarOccasionRemindersTitle => 'Occasion Reminders';

  @override
  String get calendarOccasionRemindersHint =>
      'Notified the evening before each occasion';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification permission denied. Enable it in your device settings.';

  @override
  String get calendarNoEvents => 'No upcoming events found.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'TODAY';

  @override
  String get calendarCountdownTomorrow => 'TOMORROW';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days days';
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
      'Days of Muharram — remember Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — days of mourning and reflection';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — forty days of Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'The road to Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — the dawn of revelation';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — the month of the Quran';

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
  String get duasSearchHint => 'Search duas, ziyarat…';

  @override
  String get duasFilterAll => 'All';

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
  String get duasEmpty => 'No duas found.';

  @override
  String get duaCategoryDaily => 'Daily';

  @override
  String get duaCategoryWeekly => 'Weekly';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Birth';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copy translation';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Translation';

  @override
  String get duaAskAiLabel => 'Ask Ayara to explain this dua';

  @override
  String get duaAskAiLockedLabel => 'Ask Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara explanations are available for Wilaya members. Upgrade in Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ask Ayara about \"$name\" — coming soon!';
  }

  @override
  String get duaCopiedToast => 'Dua copied to clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is the Greatest';

  @override
  String get tasbihAlhamdulillahMeaning => 'All praise belongs to Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glory be to Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Complete';

  @override
  String get tasbihCompleteMessage => 'May Allah accept your dhikr.';

  @override
  String get tasbihTapHint => 'Tap anywhere to count';

  @override
  String get tasbihatScreenTitle => 'Prayer Guide';

  @override
  String get tasbihatScreenSubtitle => 'THE PRAYER GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recited during the 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.';

  @override
  String get tasbihatArba3Translation =>
      'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation Complete';

  @override
  String get tasbihatArba3CompleteMessage =>
      'May your prayer be accepted — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tap after each recitation';

  @override
  String get tasbihatZahraSubtitle => 'After every prayer · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Origin';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMENDED DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'After completing your prayer';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'After every obligatory prayer';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'After every prayer · seals all supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'After every prayer · for the Imam of our time';

  @override
  String get tasbihatDuaFarajSource => 'Taught by Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ of Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'After Maghrib & Isha · especially recommended';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.';

  @override
  String get tasbihFatimaGiftPre => 'A gift from the Prophet';

  @override
  String get tasbihFatimaGiftPost => 'recited after every prayer';

  @override
  String get prayerTrackerTitle => 'PRAYER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Prayed';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All prayers completed today. May Allah accept.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completed today';

  @override
  String get dhikrTrackerNotDoneToday => 'Not done today';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Reminder';

  @override
  String get dhikrReminderDescription =>
      'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enable Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Reminder time';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daily Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'TRANSLATION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Share This Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Previous';

  @override
  String get hadithNavNext => 'Next';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam';

  @override
  String get imamLabelBorn => 'Born';

  @override
  String get imamLabelMartyrdom => 'Martyrdom';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAPHY';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'The Final Prophet';

  @override
  String get imamRoleInfallible => 'The Infallible';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Listen to Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Select a dua to listen. Tap the tile to play or pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio for this dua will be available in an upcoming update.';

  @override
  String get duaAudioClose => 'Close';

  @override
  String get duaAudioError =>
      'Could not load audio. Please check your connection.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitted by';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Duration';

  @override
  String get quickActionDailyHadith => 'Daily Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Listen';

  @override
  String get quickActionTasbihat => 'Prayer Guide';

  @override
  String get pilgrimageSectionTitle => 'The Sacred Journey';

  @override
  String get pilgrimageSectionSubtitle =>
      'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'The Fifth Pillar of Islam';

  @override
  String get hajjCardDescription =>
      'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle => 'Step-by-step guide to the grand pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'The Lesser Pilgrimage';

  @override
  String get umrahCardDescription =>
      'A deeply rewarding spiritual journey that can be performed at any time of year';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Step-by-step guide to the lesser pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Rituals & Steps';

  @override
  String get pilgrimageImportantNotesTitle => 'Important Notes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Mark as complete';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.';

  @override
  String get hajjIntro =>
      'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.';
}

/// The translations for English, as used in Australia (`en_AU`).
class AppLocalizationsEnAu extends AppLocalizationsEn {
  AppLocalizationsEnAu() : super('en_AU');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choose your language';

  @override
  String get languageSelectSub => 'You can change this later in Settings';

  @override
  String get actionContinue => 'Continue';

  @override
  String get languageSuggestedHeader => 'Suggested';

  @override
  String get languageAllHeader => 'All languages';

  @override
  String get languageSuggestedBadge => 'Suggested';

  @override
  String get languageSearchHint => 'Search…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daily Guidance';

  @override
  String get categorySlot02 => 'Iman & Trust';

  @override
  String get categorySlot03 => 'Prayer Reflection';

  @override
  String get categorySlot04 => 'Patience Hope';

  @override
  String get categorySlot05 => 'Seek Forgiveness';

  @override
  String get categorySlot06 => 'Mercy Compassion';

  @override
  String get categorySlot07 => 'Faith Strength';

  @override
  String get categorySlot08 => 'Grateful Heart';

  @override
  String get categorySlot09 => 'Life Purpose';

  @override
  String get categorySlot10 => 'Family Ties';

  @override
  String get categorySlot11 => 'Inner Peace';

  @override
  String get categorySlot12 => 'Prophet Wisdom';

  @override
  String get categorySlot13 => 'Good Character';

  @override
  String get categorySlot14 => 'Resist Temptation';

  @override
  String get categorySlot15 => 'Evening Dhikr';

  @override
  String get categoryCustom => 'Personal Reflection';

  @override
  String get dhikrMeaningSubhanallah => 'Glory be to Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All praise is due to Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is the Greatest';

  @override
  String get quranVerseHeartAtRest =>
      'Verily, in the remembrance of Allah do hearts find rest.';

  @override
  String get promptHint => 'Tap a category for Islamic guidance and reflection';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get settingsLanguage => 'Language settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Choose your language';

  @override
  String get continueCta => 'Continue';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '$count word',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'New';

  @override
  String get actionsTitle => 'What would you like to do?';

  @override
  String get copy => 'Copy';

  @override
  String get share => 'Share';

  @override
  String get close => 'Close';

  @override
  String get copiedToast => 'Copied to clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Couldn\'t generate a new reply';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDo you want to try again?';
  }

  @override
  String get cancelCta => 'Cancel';

  @override
  String get retryCta => 'Try again';

  @override
  String get authTitle => 'Create your account';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get signInEmail => 'Sign in with Email';

  @override
  String get upgradeWithApple => 'Continue with Apple';

  @override
  String get mustAccept =>
      'You must accept the Terms and acknowledge the Privacy Policy.';

  @override
  String get termsLabel => 'I accept the Terms of Service';

  @override
  String get privacyLabel => 'I have read the Privacy Policy';

  @override
  String get marketingOptIn => 'I agree to receive news and offers';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Signed in';

  @override
  String get upgradeHint =>
      'Save your reflections across devices by creating an account.';

  @override
  String get upgradeWithGoogle => 'Continue with Google';

  @override
  String get signOut => 'Sign out';

  @override
  String get snackUpgraded => 'Account upgraded with Google ✅';

  @override
  String get snackSignedIn => 'Signed in with Google ✅';

  @override
  String get snackSignedOut => 'Signed out';

  @override
  String get snackSignedInApple => 'Signed in with Apple ✅';

  @override
  String get snackSignedInGoogle => 'Signed in with Google ✅';

  @override
  String get snackUpgradedApple => 'Account upgraded with Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account upgraded with Google ✅';

  @override
  String get historyTitle => 'Previous reflections';

  @override
  String get historyOpenCta => 'Previous reflections';

  @override
  String get historyEmpty => 'No saved reflections yet.';

  @override
  String get historyDeleteTitle => 'Delete reflection?';

  @override
  String get historyDeleteBody =>
      'This will permanently remove the selected item.';

  @override
  String get deleteCta => 'Delete';

  @override
  String get historyButton => 'Previous Reflections';

  @override
  String get historyEmptyTitle => 'No reflections yet';

  @override
  String get historyEmptyBody =>
      'Generate something first — your saved items will appear here.';

  @override
  String get historyDelete => 'Delete';

  @override
  String get footerTitle => 'With Wilaya, Iman and Sabr';

  @override
  String get footerSubtitle => 'One prayer at a time';

  @override
  String get genericErrorSnack =>
      'Something went wrong — please try again in a moment.';

  @override
  String get upgradeAccountCta =>
      'Save your reflections across devices – create an account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get exportData => 'Export my data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nAyara needs a moment before the next one…';

  @override
  String get rateDailyLimit =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.';

  @override
  String get rateGraceCreditsExhausted =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya unlocks premium features, future categories, and a special badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Your reflections are empty right now. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Couldn\'t check your reflections: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Something went wrong while checking your reflections.';

  @override
  String get aiFallbackGeneric =>
      'Something went wrong — please try again in a moment.';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'Usage';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Remaining reflections: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Loading…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'Usage';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Remaining reflections: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Loading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get settingsDeleteTitle => 'Delete account';

  @override
  String get settingsDeleteDescription =>
      'Permanently delete your account and all associated data.';

  @override
  String get settingsDeleteButtonLabel => 'Delete my account';

  @override
  String get settingsDeleteDialogTitle => 'Delete account?';

  @override
  String get settingsDeleteDialogBody =>
      'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel';

  @override
  String get settingsDeleteDialogConfirm => 'Delete';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter reflections used';

  @override
  String get settingsFreeLimitUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter reflections used';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get deviceBoundError =>
      'This device is already linked to another account. Please sign in with the original account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'Unlock the full Ayara experience.';

  @override
  String get premiumSubtitlePremium =>
      'You\'re on Wilaya. Need more reflections?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Current plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Purchases are not available right now.';

  @override
  String get premiumSignInToPurchase =>
      'Sign in to buy reflections or unlock Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restore purchases';

  @override
  String get premiumProcessing => 'Processing…';

  @override
  String get premiumRestoreHintTitle =>
      'Already purchased Wilaya or reflections on this device or another one?';

  @override
  String get premiumRestoreHintBody =>
      'Restore your purchases if they\'re not showing up.';

  @override
  String get premiumBuyCredits200 => 'Buy 200 reflections';

  @override
  String get premiumBuyCredits400 => 'Buy 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade to Wilaya mode';

  @override
  String get premiumTopupHint =>
      'With Wilaya, you can top up with extra reflections whenever you need.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.';

  @override
  String get premiumBenefitsPremium =>
      'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.';

  @override
  String get premiumButtonBecomePremium => 'Unlock Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Add 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya active';

  @override
  String get premiumLoadingStore => 'Loading store…';

  @override
  String get premiumProductNotAvailable =>
      'This product isn\'t available in the store yet. Please try again later.';

  @override
  String get premiumPurchaseError =>
      'Something went wrong with the purchase. Please try again.';

  @override
  String get premiumBuyCredits100 => 'Add 100 reflections';

  @override
  String get premiumFeatureLocked => 'Unlock Wilaya to access this feature.';

  @override
  String get lockedCategoriesHint =>
      'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.';

  @override
  String get freePlanBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get freePlanBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get graceBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get graceBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get rateGuestMustSignIn =>
      'Sign in to use Ayara and your reflections.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.';

  @override
  String get guestDialogContinue => 'Continue';

  @override
  String get guestDialogLoginInstead => 'Log in instead';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Account deleted';

  @override
  String get accountDeleteSuccessBody =>
      'Your account and associated data have been deleted successfully.';

  @override
  String get accountDeleteSuccessClose => 'Close';

  @override
  String get accountDeleteErrorTitle => 'Could not delete account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-authentication was cancelled. Please sign in again and retry deletion.';

  @override
  String get accountDeleteReauthRequired =>
      'Account deletion requires a recent login. Please sign out, sign in again, and retry.';

  @override
  String get settingsDeletePermanentWarning =>
      'This action is permanent and cannot be undone. All data associated with your account will be deleted.';

  @override
  String get dailyGraceTitle => 'Daily Guidance';

  @override
  String get dailyGraceScriptureLabel => 'VERSE OF THE DAY';

  @override
  String get dailyGraceSaintLabel => 'SCHOLAR OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'EVENING REFLECTION';

  @override
  String get dailyGraceCopiedToast => 'Verse copied to clipboard';

  @override
  String get locationConsentLabel =>
      'Allow Ayara to use my location for Qibla direction and prayer times';

  @override
  String get locationConsentHint =>
      'Used only for these features. Your location is never shared or stored.';

  @override
  String get askPageTitle => 'Ask Ayara';

  @override
  String get askPageDescription =>
      'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Type your question here…';

  @override
  String get askPageSubmitCta => 'Ask';

  @override
  String get askPageInputEmptyError => 'Please write a question first.';

  @override
  String get askResultYourQuestion => 'Your question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Facing Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal is weak. Move outdoors and tap Retry.';

  @override
  String get qiblaRetry => 'Retry';

  @override
  String get qiblaTitle => 'Qibla Direction';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km to Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Location required';

  @override
  String get qiblaLocationNeededBody =>
      'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.';

  @override
  String get qiblaOpenSettings => 'Open Settings';

  @override
  String get qiblaCompassLoading => 'Finding your position…';

  @override
  String get qiblaTowardMecca => 'Toward Makkah';

  @override
  String get prayerTimesTitle => 'Prayer Times';

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
  String get prayerTimesLocationNeededTitle => 'Location required';

  @override
  String get prayerTimesLocationNeededBody =>
      'Allow location access so Ayara can calculate accurate prayer times for your city.';

  @override
  String get prayerTimesNextLabel => 'Next';

  @override
  String get prayerTimesDoneLabel => 'Done';

  @override
  String get monthlyPrayerTimesTitle => 'Monthly Prayer Times';

  @override
  String get monthlyPrayerTimesViewButton => 'View Full Month';

  @override
  String get monthlyPrayerTimesNextMonth => 'Next month';

  @override
  String get monthlyPrayerTimesDayHeader => 'Day';

  @override
  String get sharePrayerTimes => 'Share prayer times';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Prayer reminders, calendar events & more';

  @override
  String get dailyReflectionReminderTitle => 'Daily Reflection';

  @override
  String get dailyReflectionReminderDescription =>
      'A gentle daily reminder to open Ayara and connect with your faith.';

  @override
  String get dailyReflectionReminderEnable => 'Enable daily reminder';

  @override
  String get dailyReflectionReminderTimeLabel => 'Reminder time';

  @override
  String get prayerNotificationsTitle => 'Prayer Reminders';

  @override
  String get prayerNotificationsDescription =>
      'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.';

  @override
  String get prayerNotificationsEnable => 'Enable prayer reminders';

  @override
  String get prayerNotificationsOpenSettings => 'Open notification settings';

  @override
  String get prayerNotificationsDenied => 'Notifications are disabled';

  @override
  String get prayerNotificationsDeniedHint =>
      'Go to Settings and allow notifications for Ayara to receive prayer time reminders.';

  @override
  String get notificationsConsentLabel =>
      'Allow notifications for prayer times';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dawn Prayer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Midday Prayer';

  @override
  String get prayerNotifBodyDhuhr =>
      'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Afternoon Prayer';

  @override
  String get prayerNotifBodyAsr =>
      'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sunset Prayer';

  @override
  String get prayerNotifBodyMaghrib =>
      'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Night Prayer';

  @override
  String get prayerNotifBodyIsha =>
      'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.';

  @override
  String get outOfReflectionsBannerText => 'You\'ve used all your reflections';

  @override
  String get outOfReflectionsBannerCta => 'Get more';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tap the circle to count';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'You have completed 100 remembrances of Allah. May they be a light for your heart.';

  @override
  String get disclaimerTitle => 'About this app\'s guidance';

  @override
  String get disclaimerBody =>
      'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.';

  @override
  String get disclaimerClose => 'I understand';

  @override
  String get disclaimerInfoTooltip => 'About this app\'s guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'For general informational purposes only. Tap to read the full disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Guidance disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflect';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'TODAY';

  @override
  String get dashboardComingUp => 'Coming up';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Quick Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Prayer Times';

  @override
  String get askAyaraTitle => 'Ask Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ask any Islamic question and receive a thoughtful, guided answer.';

  @override
  String get askAyaraHint => 'e.g. What is the significance of Ramadan?';

  @override
  String get askAyaraSubmit => 'Ask';

  @override
  String get wisdomOfTheDayTitle => 'Wisdom of the Day';

  @override
  String get calendarScreenTitle => 'Islamic Calendar';

  @override
  String get calendarUpcomingOccasions => 'Upcoming Occasions';

  @override
  String get calendarOccasionRemindersTitle => 'Occasion Reminders';

  @override
  String get calendarOccasionRemindersHint =>
      'Notified the evening before each occasion';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification permission denied. Enable it in your device settings.';

  @override
  String get calendarNoEvents => 'No upcoming events found.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'TODAY';

  @override
  String get calendarCountdownTomorrow => 'TOMORROW';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days days';
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
      'Days of Muharram — remember Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — days of mourning and reflection';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — forty days of Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'The road to Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — the dawn of revelation';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — the month of the Quran';

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
  String get duasSearchHint => 'Search duas, ziyarat…';

  @override
  String get duasFilterAll => 'All';

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
  String get duasEmpty => 'No duas found.';

  @override
  String get duaCategoryDaily => 'Daily';

  @override
  String get duaCategoryWeekly => 'Weekly';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Birth';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copy translation';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Translation';

  @override
  String get duaAskAiLabel => 'Ask Ayara to explain this dua';

  @override
  String get duaAskAiLockedLabel => 'Ask Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara explanations are available for Wilaya members. Upgrade in Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ask Ayara about \"$name\" — coming soon!';
  }

  @override
  String get duaCopiedToast => 'Dua copied to clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is the Greatest';

  @override
  String get tasbihAlhamdulillahMeaning => 'All praise belongs to Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glory be to Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Complete';

  @override
  String get tasbihCompleteMessage => 'May Allah accept your dhikr.';

  @override
  String get tasbihTapHint => 'Tap anywhere to count';

  @override
  String get tasbihatScreenTitle => 'Prayer Guide';

  @override
  String get tasbihatScreenSubtitle => 'THE PRAYER GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recited during the 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.';

  @override
  String get tasbihatArba3Translation =>
      'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation Complete';

  @override
  String get tasbihatArba3CompleteMessage =>
      'May your prayer be accepted — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tap after each recitation';

  @override
  String get tasbihatZahraSubtitle => 'After every prayer · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Origin';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMENDED DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'After completing your prayer';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'After every obligatory prayer';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'After every prayer · seals all supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'After every prayer · for the Imam of our time';

  @override
  String get tasbihatDuaFarajSource => 'Taught by Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ of Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'After Maghrib & Isha · especially recommended';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.';

  @override
  String get tasbihFatimaGiftPre => 'A gift from the Prophet';

  @override
  String get tasbihFatimaGiftPost => 'recited after every prayer';

  @override
  String get prayerTrackerTitle => 'PRAYER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Prayed';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All prayers completed today. May Allah accept.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completed today';

  @override
  String get dhikrTrackerNotDoneToday => 'Not done today';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Reminder';

  @override
  String get dhikrReminderDescription =>
      'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enable Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Reminder time';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daily Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'TRANSLATION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Share This Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Previous';

  @override
  String get hadithNavNext => 'Next';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam';

  @override
  String get imamLabelBorn => 'Born';

  @override
  String get imamLabelMartyrdom => 'Martyrdom';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAPHY';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'The Final Prophet';

  @override
  String get imamRoleInfallible => 'The Infallible';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Listen to Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Select a dua to listen. Tap the tile to play or pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio for this dua will be available in an upcoming update.';

  @override
  String get duaAudioClose => 'Close';

  @override
  String get duaAudioError =>
      'Could not load audio. Please check your connection.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitted by';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Duration';

  @override
  String get quickActionDailyHadith => 'Daily Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Listen';

  @override
  String get quickActionTasbihat => 'Prayer Guide';

  @override
  String get pilgrimageSectionTitle => 'The Sacred Journey';

  @override
  String get pilgrimageSectionSubtitle =>
      'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'The Fifth Pillar of Islam';

  @override
  String get hajjCardDescription =>
      'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle => 'Step-by-step guide to the grand pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'The Lesser Pilgrimage';

  @override
  String get umrahCardDescription =>
      'A deeply rewarding spiritual journey that can be performed at any time of year';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Step-by-step guide to the lesser pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Rituals & Steps';

  @override
  String get pilgrimageImportantNotesTitle => 'Important Notes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Mark as complete';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.';

  @override
  String get hajjIntro =>
      'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.';
}

/// The translations for English, as used in Canada (`en_CA`).
class AppLocalizationsEnCa extends AppLocalizationsEn {
  AppLocalizationsEnCa() : super('en_CA');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choose your language';

  @override
  String get languageSelectSub => 'You can change this later in Settings';

  @override
  String get actionContinue => 'Continue';

  @override
  String get languageSuggestedHeader => 'Suggested';

  @override
  String get languageAllHeader => 'All languages';

  @override
  String get languageSuggestedBadge => 'Suggested';

  @override
  String get languageSearchHint => 'Search…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daily Guidance';

  @override
  String get categorySlot02 => 'Iman & Trust';

  @override
  String get categorySlot03 => 'Prayer Reflection';

  @override
  String get categorySlot04 => 'Patience Hope';

  @override
  String get categorySlot05 => 'Seek Forgiveness';

  @override
  String get categorySlot06 => 'Mercy Compassion';

  @override
  String get categorySlot07 => 'Faith Strength';

  @override
  String get categorySlot08 => 'Grateful Heart';

  @override
  String get categorySlot09 => 'Life Purpose';

  @override
  String get categorySlot10 => 'Family Ties';

  @override
  String get categorySlot11 => 'Inner Peace';

  @override
  String get categorySlot12 => 'Prophet Wisdom';

  @override
  String get categorySlot13 => 'Good Character';

  @override
  String get categorySlot14 => 'Resist Temptation';

  @override
  String get categorySlot15 => 'Evening Dhikr';

  @override
  String get categoryCustom => 'Personal Reflection';

  @override
  String get dhikrMeaningSubhanallah => 'Glory be to Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All praise is due to Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is the Greatest';

  @override
  String get quranVerseHeartAtRest =>
      'Verily, in the remembrance of Allah do hearts find rest.';

  @override
  String get promptHint => 'Tap a category for Islamic guidance and reflection';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get settingsLanguage => 'Language settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Choose your language';

  @override
  String get continueCta => 'Continue';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '$count word',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'New';

  @override
  String get actionsTitle => 'What would you like to do?';

  @override
  String get copy => 'Copy';

  @override
  String get share => 'Share';

  @override
  String get close => 'Close';

  @override
  String get copiedToast => 'Copied to clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Couldn\'t generate a new reply';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDo you want to try again?';
  }

  @override
  String get cancelCta => 'Cancel';

  @override
  String get retryCta => 'Try again';

  @override
  String get authTitle => 'Create your account';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get signInEmail => 'Sign in with Email';

  @override
  String get upgradeWithApple => 'Continue with Apple';

  @override
  String get mustAccept =>
      'You must accept the Terms and acknowledge the Privacy Policy.';

  @override
  String get termsLabel => 'I accept the Terms of Service';

  @override
  String get privacyLabel => 'I have read the Privacy Policy';

  @override
  String get marketingOptIn => 'I agree to receive news and offers';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Signed in';

  @override
  String get upgradeHint =>
      'Save your reflections across devices by creating an account.';

  @override
  String get upgradeWithGoogle => 'Continue with Google';

  @override
  String get signOut => 'Sign out';

  @override
  String get snackUpgraded => 'Account upgraded with Google ✅';

  @override
  String get snackSignedIn => 'Signed in with Google ✅';

  @override
  String get snackSignedOut => 'Signed out';

  @override
  String get snackSignedInApple => 'Signed in with Apple ✅';

  @override
  String get snackSignedInGoogle => 'Signed in with Google ✅';

  @override
  String get snackUpgradedApple => 'Account upgraded with Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account upgraded with Google ✅';

  @override
  String get historyTitle => 'Previous reflections';

  @override
  String get historyOpenCta => 'Previous reflections';

  @override
  String get historyEmpty => 'No saved reflections yet.';

  @override
  String get historyDeleteTitle => 'Delete reflection?';

  @override
  String get historyDeleteBody =>
      'This will permanently remove the selected item.';

  @override
  String get deleteCta => 'Delete';

  @override
  String get historyButton => 'Previous Reflections';

  @override
  String get historyEmptyTitle => 'No reflections yet';

  @override
  String get historyEmptyBody =>
      'Generate something first — your saved items will appear here.';

  @override
  String get historyDelete => 'Delete';

  @override
  String get footerTitle => 'With Wilaya, Iman and Sabr';

  @override
  String get footerSubtitle => 'One prayer at a time';

  @override
  String get genericErrorSnack =>
      'Something went wrong — please try again in a moment.';

  @override
  String get upgradeAccountCta =>
      'Save your reflections across devices – create an account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get exportData => 'Export my data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nAyara needs a moment before the next one…';

  @override
  String get rateDailyLimit =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.';

  @override
  String get rateGraceCreditsExhausted =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya unlocks premium features, future categories, and a special badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Your reflections are empty right now. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Couldn\'t check your reflections: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Something went wrong while checking your reflections.';

  @override
  String get aiFallbackGeneric =>
      'Something went wrong — please try again in a moment.';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'Usage';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Remaining reflections: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Loading…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'Usage';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Remaining reflections: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Loading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get settingsDeleteTitle => 'Delete account';

  @override
  String get settingsDeleteDescription =>
      'Permanently delete your account and all associated data.';

  @override
  String get settingsDeleteButtonLabel => 'Delete my account';

  @override
  String get settingsDeleteDialogTitle => 'Delete account?';

  @override
  String get settingsDeleteDialogBody =>
      'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel';

  @override
  String get settingsDeleteDialogConfirm => 'Delete';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter reflections used';

  @override
  String get settingsFreeLimitUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter reflections used';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get deviceBoundError =>
      'This device is already linked to another account. Please sign in with the original account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'Unlock the full Ayara experience.';

  @override
  String get premiumSubtitlePremium =>
      'You\'re on Wilaya. Need more reflections?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Current plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Purchases are not available right now.';

  @override
  String get premiumSignInToPurchase =>
      'Sign in to buy reflections or unlock Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restore purchases';

  @override
  String get premiumProcessing => 'Processing…';

  @override
  String get premiumRestoreHintTitle =>
      'Already purchased Wilaya or reflections on this device or another one?';

  @override
  String get premiumRestoreHintBody =>
      'Restore your purchases if they\'re not showing up.';

  @override
  String get premiumBuyCredits200 => 'Buy 200 reflections';

  @override
  String get premiumBuyCredits400 => 'Buy 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade to Wilaya mode';

  @override
  String get premiumTopupHint =>
      'With Wilaya, you can top up with extra reflections whenever you need.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.';

  @override
  String get premiumBenefitsPremium =>
      'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.';

  @override
  String get premiumButtonBecomePremium => 'Unlock Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Add 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya active';

  @override
  String get premiumLoadingStore => 'Loading store…';

  @override
  String get premiumProductNotAvailable =>
      'This product isn\'t available in the store yet. Please try again later.';

  @override
  String get premiumPurchaseError =>
      'Something went wrong with the purchase. Please try again.';

  @override
  String get premiumBuyCredits100 => 'Add 100 reflections';

  @override
  String get premiumFeatureLocked => 'Unlock Wilaya to access this feature.';

  @override
  String get lockedCategoriesHint =>
      'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.';

  @override
  String get freePlanBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get freePlanBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get graceBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get graceBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get rateGuestMustSignIn =>
      'Sign in to use Ayara and your reflections.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.';

  @override
  String get guestDialogContinue => 'Continue';

  @override
  String get guestDialogLoginInstead => 'Log in instead';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Account deleted';

  @override
  String get accountDeleteSuccessBody =>
      'Your account and associated data have been deleted successfully.';

  @override
  String get accountDeleteSuccessClose => 'Close';

  @override
  String get accountDeleteErrorTitle => 'Could not delete account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-authentication was cancelled. Please sign in again and retry deletion.';

  @override
  String get accountDeleteReauthRequired =>
      'Account deletion requires a recent login. Please sign out, sign in again, and retry.';

  @override
  String get settingsDeletePermanentWarning =>
      'This action is permanent and cannot be undone. All data associated with your account will be deleted.';

  @override
  String get dailyGraceTitle => 'Daily Guidance';

  @override
  String get dailyGraceScriptureLabel => 'VERSE OF THE DAY';

  @override
  String get dailyGraceSaintLabel => 'SCHOLAR OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'EVENING REFLECTION';

  @override
  String get dailyGraceCopiedToast => 'Verse copied to clipboard';

  @override
  String get locationConsentLabel =>
      'Allow Ayara to use my location for Qibla direction and prayer times';

  @override
  String get locationConsentHint =>
      'Used only for these features. Your location is never shared or stored.';

  @override
  String get askPageTitle => 'Ask Ayara';

  @override
  String get askPageDescription =>
      'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Type your question here…';

  @override
  String get askPageSubmitCta => 'Ask';

  @override
  String get askPageInputEmptyError => 'Please write a question first.';

  @override
  String get askResultYourQuestion => 'Your question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Facing Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal is weak. Move outdoors and tap Retry.';

  @override
  String get qiblaRetry => 'Retry';

  @override
  String get qiblaTitle => 'Qibla Direction';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km to Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Location required';

  @override
  String get qiblaLocationNeededBody =>
      'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.';

  @override
  String get qiblaOpenSettings => 'Open Settings';

  @override
  String get qiblaCompassLoading => 'Finding your position…';

  @override
  String get qiblaTowardMecca => 'Toward Makkah';

  @override
  String get prayerTimesTitle => 'Prayer Times';

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
  String get prayerTimesLocationNeededTitle => 'Location required';

  @override
  String get prayerTimesLocationNeededBody =>
      'Allow location access so Ayara can calculate accurate prayer times for your city.';

  @override
  String get prayerTimesNextLabel => 'Next';

  @override
  String get prayerTimesDoneLabel => 'Done';

  @override
  String get monthlyPrayerTimesTitle => 'Monthly Prayer Times';

  @override
  String get monthlyPrayerTimesViewButton => 'View Full Month';

  @override
  String get monthlyPrayerTimesNextMonth => 'Next month';

  @override
  String get monthlyPrayerTimesDayHeader => 'Day';

  @override
  String get sharePrayerTimes => 'Share prayer times';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Prayer reminders, calendar events & more';

  @override
  String get dailyReflectionReminderTitle => 'Daily Reflection';

  @override
  String get dailyReflectionReminderDescription =>
      'A gentle daily reminder to open Ayara and connect with your faith.';

  @override
  String get dailyReflectionReminderEnable => 'Enable daily reminder';

  @override
  String get dailyReflectionReminderTimeLabel => 'Reminder time';

  @override
  String get prayerNotificationsTitle => 'Prayer Reminders';

  @override
  String get prayerNotificationsDescription =>
      'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.';

  @override
  String get prayerNotificationsEnable => 'Enable prayer reminders';

  @override
  String get prayerNotificationsOpenSettings => 'Open notification settings';

  @override
  String get prayerNotificationsDenied => 'Notifications are disabled';

  @override
  String get prayerNotificationsDeniedHint =>
      'Go to Settings and allow notifications for Ayara to receive prayer time reminders.';

  @override
  String get notificationsConsentLabel =>
      'Allow notifications for prayer times';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dawn Prayer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Midday Prayer';

  @override
  String get prayerNotifBodyDhuhr =>
      'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Afternoon Prayer';

  @override
  String get prayerNotifBodyAsr =>
      'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sunset Prayer';

  @override
  String get prayerNotifBodyMaghrib =>
      'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Night Prayer';

  @override
  String get prayerNotifBodyIsha =>
      'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.';

  @override
  String get outOfReflectionsBannerText => 'You\'ve used all your reflections';

  @override
  String get outOfReflectionsBannerCta => 'Get more';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tap the circle to count';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'You have completed 100 remembrances of Allah. May they be a light for your heart.';

  @override
  String get disclaimerTitle => 'About this app\'s guidance';

  @override
  String get disclaimerBody =>
      'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.';

  @override
  String get disclaimerClose => 'I understand';

  @override
  String get disclaimerInfoTooltip => 'About this app\'s guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'For general informational purposes only. Tap to read the full disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Guidance disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflect';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'TODAY';

  @override
  String get dashboardComingUp => 'Coming up';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Quick Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Prayer Times';

  @override
  String get askAyaraTitle => 'Ask Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ask any Islamic question and receive a thoughtful, guided answer.';

  @override
  String get askAyaraHint => 'e.g. What is the significance of Ramadan?';

  @override
  String get askAyaraSubmit => 'Ask';

  @override
  String get wisdomOfTheDayTitle => 'Wisdom of the Day';

  @override
  String get calendarScreenTitle => 'Islamic Calendar';

  @override
  String get calendarUpcomingOccasions => 'Upcoming Occasions';

  @override
  String get calendarOccasionRemindersTitle => 'Occasion Reminders';

  @override
  String get calendarOccasionRemindersHint =>
      'Notified the evening before each occasion';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification permission denied. Enable it in your device settings.';

  @override
  String get calendarNoEvents => 'No upcoming events found.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'TODAY';

  @override
  String get calendarCountdownTomorrow => 'TOMORROW';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days days';
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
      'Days of Muharram — remember Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — days of mourning and reflection';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — forty days of Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'The road to Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — the dawn of revelation';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — the month of the Quran';

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
  String get duasSearchHint => 'Search duas, ziyarat…';

  @override
  String get duasFilterAll => 'All';

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
  String get duasEmpty => 'No duas found.';

  @override
  String get duaCategoryDaily => 'Daily';

  @override
  String get duaCategoryWeekly => 'Weekly';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Birth';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copy translation';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Translation';

  @override
  String get duaAskAiLabel => 'Ask Ayara to explain this dua';

  @override
  String get duaAskAiLockedLabel => 'Ask Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara explanations are available for Wilaya members. Upgrade in Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ask Ayara about \"$name\" — coming soon!';
  }

  @override
  String get duaCopiedToast => 'Dua copied to clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is the Greatest';

  @override
  String get tasbihAlhamdulillahMeaning => 'All praise belongs to Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glory be to Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Complete';

  @override
  String get tasbihCompleteMessage => 'May Allah accept your dhikr.';

  @override
  String get tasbihTapHint => 'Tap anywhere to count';

  @override
  String get tasbihatScreenTitle => 'Prayer Guide';

  @override
  String get tasbihatScreenSubtitle => 'THE PRAYER GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recited during the 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.';

  @override
  String get tasbihatArba3Translation =>
      'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation Complete';

  @override
  String get tasbihatArba3CompleteMessage =>
      'May your prayer be accepted — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tap after each recitation';

  @override
  String get tasbihatZahraSubtitle => 'After every prayer · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Origin';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMENDED DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'After completing your prayer';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'After every obligatory prayer';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'After every prayer · seals all supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'After every prayer · for the Imam of our time';

  @override
  String get tasbihatDuaFarajSource => 'Taught by Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ of Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'After Maghrib & Isha · especially recommended';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.';

  @override
  String get tasbihFatimaGiftPre => 'A gift from the Prophet';

  @override
  String get tasbihFatimaGiftPost => 'recited after every prayer';

  @override
  String get prayerTrackerTitle => 'PRAYER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Prayed';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All prayers completed today. May Allah accept.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completed today';

  @override
  String get dhikrTrackerNotDoneToday => 'Not done today';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Reminder';

  @override
  String get dhikrReminderDescription =>
      'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enable Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Reminder time';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daily Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'TRANSLATION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Share This Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Previous';

  @override
  String get hadithNavNext => 'Next';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam';

  @override
  String get imamLabelBorn => 'Born';

  @override
  String get imamLabelMartyrdom => 'Martyrdom';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAPHY';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'The Final Prophet';

  @override
  String get imamRoleInfallible => 'The Infallible';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Listen to Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Select a dua to listen. Tap the tile to play or pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio for this dua will be available in an upcoming update.';

  @override
  String get duaAudioClose => 'Close';

  @override
  String get duaAudioError =>
      'Could not load audio. Please check your connection.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitted by';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Duration';

  @override
  String get quickActionDailyHadith => 'Daily Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Listen';

  @override
  String get quickActionTasbihat => 'Prayer Guide';

  @override
  String get pilgrimageSectionTitle => 'The Sacred Journey';

  @override
  String get pilgrimageSectionSubtitle =>
      'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'The Fifth Pillar of Islam';

  @override
  String get hajjCardDescription =>
      'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle => 'Step-by-step guide to the grand pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'The Lesser Pilgrimage';

  @override
  String get umrahCardDescription =>
      'A deeply rewarding spiritual journey that can be performed at any time of year';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Step-by-step guide to the lesser pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Rituals & Steps';

  @override
  String get pilgrimageImportantNotesTitle => 'Important Notes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Mark as complete';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.';

  @override
  String get hajjIntro =>
      'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.';
}

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choose your language';

  @override
  String get languageSelectSub => 'You can change this later in Settings';

  @override
  String get actionContinue => 'Continue';

  @override
  String get languageSuggestedHeader => 'Suggested';

  @override
  String get languageAllHeader => 'All languages';

  @override
  String get languageSuggestedBadge => 'Suggested';

  @override
  String get languageSearchHint => 'Search…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daily Guidance';

  @override
  String get categorySlot02 => 'Iman & Trust';

  @override
  String get categorySlot03 => 'Prayer Reflection';

  @override
  String get categorySlot04 => 'Patience Hope';

  @override
  String get categorySlot05 => 'Seek Forgiveness';

  @override
  String get categorySlot06 => 'Mercy Compassion';

  @override
  String get categorySlot07 => 'Faith Strength';

  @override
  String get categorySlot08 => 'Grateful Heart';

  @override
  String get categorySlot09 => 'Life Purpose';

  @override
  String get categorySlot10 => 'Family Ties';

  @override
  String get categorySlot11 => 'Inner Peace';

  @override
  String get categorySlot12 => 'Prophet Wisdom';

  @override
  String get categorySlot13 => 'Good Character';

  @override
  String get categorySlot14 => 'Resist Temptation';

  @override
  String get categorySlot15 => 'Evening Dhikr';

  @override
  String get categoryCustom => 'Personal Reflection';

  @override
  String get dhikrMeaningSubhanallah => 'Glory be to Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All praise is due to Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is the Greatest';

  @override
  String get quranVerseHeartAtRest =>
      'Verily, in the remembrance of Allah do hearts find rest.';

  @override
  String get promptHint => 'Tap a category for Islamic guidance and reflection';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get settingsLanguage => 'Language settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Choose your language';

  @override
  String get continueCta => 'Continue';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '$count word',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'New';

  @override
  String get actionsTitle => 'What would you like to do?';

  @override
  String get copy => 'Copy';

  @override
  String get share => 'Share';

  @override
  String get close => 'Close';

  @override
  String get copiedToast => 'Copied to clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Couldn\'t generate a new reply';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDo you want to try again?';
  }

  @override
  String get cancelCta => 'Cancel';

  @override
  String get retryCta => 'Try again';

  @override
  String get authTitle => 'Create your account';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get signInEmail => 'Sign in with Email';

  @override
  String get upgradeWithApple => 'Continue with Apple';

  @override
  String get mustAccept =>
      'You must accept the Terms and acknowledge the Privacy Policy.';

  @override
  String get termsLabel => 'I accept the Terms of Service';

  @override
  String get privacyLabel => 'I have read the Privacy Policy';

  @override
  String get marketingOptIn => 'I agree to receive news and offers';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Signed in';

  @override
  String get upgradeHint =>
      'Save your reflections across devices by creating an account.';

  @override
  String get upgradeWithGoogle => 'Continue with Google';

  @override
  String get signOut => 'Sign out';

  @override
  String get snackUpgraded => 'Account upgraded with Google ✅';

  @override
  String get snackSignedIn => 'Signed in with Google ✅';

  @override
  String get snackSignedOut => 'Signed out';

  @override
  String get snackSignedInApple => 'Signed in with Apple ✅';

  @override
  String get snackSignedInGoogle => 'Signed in with Google ✅';

  @override
  String get snackUpgradedApple => 'Account upgraded with Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account upgraded with Google ✅';

  @override
  String get historyTitle => 'Previous reflections';

  @override
  String get historyOpenCta => 'Previous reflections';

  @override
  String get historyEmpty => 'No saved reflections yet.';

  @override
  String get historyDeleteTitle => 'Delete reflection?';

  @override
  String get historyDeleteBody =>
      'This will permanently remove the selected item.';

  @override
  String get deleteCta => 'Delete';

  @override
  String get historyButton => 'Previous Reflections';

  @override
  String get historyEmptyTitle => 'No reflections yet';

  @override
  String get historyEmptyBody =>
      'Generate something first — your saved items will appear here.';

  @override
  String get historyDelete => 'Delete';

  @override
  String get footerTitle => 'With Wilaya, Iman and Sabr';

  @override
  String get footerSubtitle => 'One prayer at a time';

  @override
  String get genericErrorSnack =>
      'Something went wrong — please try again in a moment.';

  @override
  String get upgradeAccountCta =>
      'Save your reflections across devices – create an account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get exportData => 'Export my data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nAyara needs a moment before the next one…';

  @override
  String get rateDailyLimit =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.';

  @override
  String get rateGraceCreditsExhausted =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya unlocks premium features, future categories, and a special badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Your reflections are empty right now. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Couldn\'t check your reflections: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Something went wrong while checking your reflections.';

  @override
  String get aiFallbackGeneric =>
      'Something went wrong — please try again in a moment.';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'Usage';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Remaining reflections: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Loading…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'Usage';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Remaining reflections: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Loading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get settingsDeleteTitle => 'Delete account';

  @override
  String get settingsDeleteDescription =>
      'Permanently delete your account and all associated data.';

  @override
  String get settingsDeleteButtonLabel => 'Delete my account';

  @override
  String get settingsDeleteDialogTitle => 'Delete account?';

  @override
  String get settingsDeleteDialogBody =>
      'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel';

  @override
  String get settingsDeleteDialogConfirm => 'Delete';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter reflections used';

  @override
  String get settingsFreeLimitUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter reflections used';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get deviceBoundError =>
      'This device is already linked to another account. Please sign in with the original account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'Unlock the full Ayara experience.';

  @override
  String get premiumSubtitlePremium =>
      'You\'re on Wilaya. Need more reflections?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Current plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Purchases are not available right now.';

  @override
  String get premiumSignInToPurchase =>
      'Sign in to buy reflections or unlock Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restore purchases';

  @override
  String get premiumProcessing => 'Processing…';

  @override
  String get premiumRestoreHintTitle =>
      'Already purchased Wilaya or reflections on this device or another one?';

  @override
  String get premiumRestoreHintBody =>
      'Restore your purchases if they\'re not showing up.';

  @override
  String get premiumBuyCredits200 => 'Buy 200 reflections';

  @override
  String get premiumBuyCredits400 => 'Buy 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade to Wilaya mode';

  @override
  String get premiumTopupHint =>
      'With Wilaya, you can top up with extra reflections whenever you need.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.';

  @override
  String get premiumBenefitsPremium =>
      'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.';

  @override
  String get premiumButtonBecomePremium => 'Unlock Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Add 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya active';

  @override
  String get premiumLoadingStore => 'Loading store…';

  @override
  String get premiumProductNotAvailable =>
      'This product isn\'t available in the store yet. Please try again later.';

  @override
  String get premiumPurchaseError =>
      'Something went wrong with the purchase. Please try again.';

  @override
  String get premiumBuyCredits100 => 'Add 100 reflections';

  @override
  String get premiumFeatureLocked => 'Unlock Wilaya to access this feature.';

  @override
  String get lockedCategoriesHint =>
      'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.';

  @override
  String get freePlanBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get freePlanBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get graceBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get graceBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get rateGuestMustSignIn =>
      'Sign in to use Ayara and your reflections.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.';

  @override
  String get guestDialogContinue => 'Continue';

  @override
  String get guestDialogLoginInstead => 'Log in instead';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Account deleted';

  @override
  String get accountDeleteSuccessBody =>
      'Your account and associated data have been deleted successfully.';

  @override
  String get accountDeleteSuccessClose => 'Close';

  @override
  String get accountDeleteErrorTitle => 'Could not delete account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-authentication was cancelled. Please sign in again and retry deletion.';

  @override
  String get accountDeleteReauthRequired =>
      'Account deletion requires a recent login. Please sign out, sign in again, and retry.';

  @override
  String get settingsDeletePermanentWarning =>
      'This action is permanent and cannot be undone. All data associated with your account will be deleted.';

  @override
  String get dailyGraceTitle => 'Daily Guidance';

  @override
  String get dailyGraceScriptureLabel => 'VERSE OF THE DAY';

  @override
  String get dailyGraceSaintLabel => 'SCHOLAR OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'EVENING REFLECTION';

  @override
  String get dailyGraceCopiedToast => 'Verse copied to clipboard';

  @override
  String get locationConsentLabel =>
      'Allow Ayara to use my location for Qibla direction and prayer times';

  @override
  String get locationConsentHint =>
      'Used only for these features. Your location is never shared or stored.';

  @override
  String get askPageTitle => 'Ask Ayara';

  @override
  String get askPageDescription =>
      'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Type your question here…';

  @override
  String get askPageSubmitCta => 'Ask';

  @override
  String get askPageInputEmptyError => 'Please write a question first.';

  @override
  String get askResultYourQuestion => 'Your question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Facing Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal is weak. Move outdoors and tap Retry.';

  @override
  String get qiblaRetry => 'Retry';

  @override
  String get qiblaTitle => 'Qibla Direction';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km to Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Location required';

  @override
  String get qiblaLocationNeededBody =>
      'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.';

  @override
  String get qiblaOpenSettings => 'Open Settings';

  @override
  String get qiblaCompassLoading => 'Finding your position…';

  @override
  String get qiblaTowardMecca => 'Toward Makkah';

  @override
  String get prayerTimesTitle => 'Prayer Times';

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
  String get prayerTimesLocationNeededTitle => 'Location required';

  @override
  String get prayerTimesLocationNeededBody =>
      'Allow location access so Ayara can calculate accurate prayer times for your city.';

  @override
  String get prayerTimesNextLabel => 'Next';

  @override
  String get prayerTimesDoneLabel => 'Done';

  @override
  String get monthlyPrayerTimesTitle => 'Monthly Prayer Times';

  @override
  String get monthlyPrayerTimesViewButton => 'View Full Month';

  @override
  String get monthlyPrayerTimesNextMonth => 'Next month';

  @override
  String get monthlyPrayerTimesDayHeader => 'Day';

  @override
  String get sharePrayerTimes => 'Share prayer times';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Prayer reminders, calendar events & more';

  @override
  String get dailyReflectionReminderTitle => 'Daily Reflection';

  @override
  String get dailyReflectionReminderDescription =>
      'A gentle daily reminder to open Ayara and connect with your faith.';

  @override
  String get dailyReflectionReminderEnable => 'Enable daily reminder';

  @override
  String get dailyReflectionReminderTimeLabel => 'Reminder time';

  @override
  String get prayerNotificationsTitle => 'Prayer Reminders';

  @override
  String get prayerNotificationsDescription =>
      'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.';

  @override
  String get prayerNotificationsEnable => 'Enable prayer reminders';

  @override
  String get prayerNotificationsOpenSettings => 'Open notification settings';

  @override
  String get prayerNotificationsDenied => 'Notifications are disabled';

  @override
  String get prayerNotificationsDeniedHint =>
      'Go to Settings and allow notifications for Ayara to receive prayer time reminders.';

  @override
  String get notificationsConsentLabel =>
      'Allow notifications for prayer times';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dawn Prayer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Midday Prayer';

  @override
  String get prayerNotifBodyDhuhr =>
      'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Afternoon Prayer';

  @override
  String get prayerNotifBodyAsr =>
      'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sunset Prayer';

  @override
  String get prayerNotifBodyMaghrib =>
      'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Night Prayer';

  @override
  String get prayerNotifBodyIsha =>
      'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.';

  @override
  String get outOfReflectionsBannerText => 'You\'ve used all your reflections';

  @override
  String get outOfReflectionsBannerCta => 'Get more';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tap the circle to count';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'You have completed 100 remembrances of Allah. May they be a light for your heart.';

  @override
  String get disclaimerTitle => 'About this app\'s guidance';

  @override
  String get disclaimerBody =>
      'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.';

  @override
  String get disclaimerClose => 'I understand';

  @override
  String get disclaimerInfoTooltip => 'About this app\'s guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'For general informational purposes only. Tap to read the full disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Guidance disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflect';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'TODAY';

  @override
  String get dashboardComingUp => 'Coming up';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Quick Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Prayer Times';

  @override
  String get askAyaraTitle => 'Ask Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ask any Islamic question and receive a thoughtful, guided answer.';

  @override
  String get askAyaraHint => 'e.g. What is the significance of Ramadan?';

  @override
  String get askAyaraSubmit => 'Ask';

  @override
  String get wisdomOfTheDayTitle => 'Wisdom of the Day';

  @override
  String get calendarScreenTitle => 'Islamic Calendar';

  @override
  String get calendarUpcomingOccasions => 'Upcoming Occasions';

  @override
  String get calendarOccasionRemindersTitle => 'Occasion Reminders';

  @override
  String get calendarOccasionRemindersHint =>
      'Notified the evening before each occasion';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification permission denied. Enable it in your device settings.';

  @override
  String get calendarNoEvents => 'No upcoming events found.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'TODAY';

  @override
  String get calendarCountdownTomorrow => 'TOMORROW';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days days';
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
      'Days of Muharram — remember Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — days of mourning and reflection';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — forty days of Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'The road to Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — the dawn of revelation';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — the month of the Quran';

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
  String get duasSearchHint => 'Search duas, ziyarat…';

  @override
  String get duasFilterAll => 'All';

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
  String get duasEmpty => 'No duas found.';

  @override
  String get duaCategoryDaily => 'Daily';

  @override
  String get duaCategoryWeekly => 'Weekly';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Birth';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copy translation';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Translation';

  @override
  String get duaAskAiLabel => 'Ask Ayara to explain this dua';

  @override
  String get duaAskAiLockedLabel => 'Ask Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara explanations are available for Wilaya members. Upgrade in Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ask Ayara about \"$name\" — coming soon!';
  }

  @override
  String get duaCopiedToast => 'Dua copied to clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is the Greatest';

  @override
  String get tasbihAlhamdulillahMeaning => 'All praise belongs to Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glory be to Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Complete';

  @override
  String get tasbihCompleteMessage => 'May Allah accept your dhikr.';

  @override
  String get tasbihTapHint => 'Tap anywhere to count';

  @override
  String get tasbihatScreenTitle => 'Prayer Guide';

  @override
  String get tasbihatScreenSubtitle => 'THE PRAYER GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recited during the 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.';

  @override
  String get tasbihatArba3Translation =>
      'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation Complete';

  @override
  String get tasbihatArba3CompleteMessage =>
      'May your prayer be accepted — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tap after each recitation';

  @override
  String get tasbihatZahraSubtitle => 'After every prayer · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Origin';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMENDED DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'After completing your prayer';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'After every obligatory prayer';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'After every prayer · seals all supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'After every prayer · for the Imam of our time';

  @override
  String get tasbihatDuaFarajSource => 'Taught by Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ of Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'After Maghrib & Isha · especially recommended';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.';

  @override
  String get tasbihFatimaGiftPre => 'A gift from the Prophet';

  @override
  String get tasbihFatimaGiftPost => 'recited after every prayer';

  @override
  String get prayerTrackerTitle => 'PRAYER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Prayed';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All prayers completed today. May Allah accept.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completed today';

  @override
  String get dhikrTrackerNotDoneToday => 'Not done today';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Reminder';

  @override
  String get dhikrReminderDescription =>
      'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enable Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Reminder time';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daily Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'TRANSLATION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Share This Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Previous';

  @override
  String get hadithNavNext => 'Next';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam';

  @override
  String get imamLabelBorn => 'Born';

  @override
  String get imamLabelMartyrdom => 'Martyrdom';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAPHY';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'The Final Prophet';

  @override
  String get imamRoleInfallible => 'The Infallible';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Listen to Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Select a dua to listen. Tap the tile to play or pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio for this dua will be available in an upcoming update.';

  @override
  String get duaAudioClose => 'Close';

  @override
  String get duaAudioError =>
      'Could not load audio. Please check your connection.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitted by';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Duration';

  @override
  String get quickActionDailyHadith => 'Daily Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Listen';

  @override
  String get quickActionTasbihat => 'Prayer Guide';

  @override
  String get pilgrimageSectionTitle => 'The Sacred Journey';

  @override
  String get pilgrimageSectionSubtitle =>
      'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'The Fifth Pillar of Islam';

  @override
  String get hajjCardDescription =>
      'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle => 'Step-by-step guide to the grand pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'The Lesser Pilgrimage';

  @override
  String get umrahCardDescription =>
      'A deeply rewarding spiritual journey that can be performed at any time of year';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Step-by-step guide to the lesser pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Rituals & Steps';

  @override
  String get pilgrimageImportantNotesTitle => 'Important Notes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Mark as complete';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.';

  @override
  String get hajjIntro =>
      'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.';
}

/// The translations for English, as used in Ireland (`en_IE`).
class AppLocalizationsEnIe extends AppLocalizationsEn {
  AppLocalizationsEnIe() : super('en_IE');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choose your language';

  @override
  String get languageSelectSub => 'You can change this later in Settings';

  @override
  String get actionContinue => 'Continue';

  @override
  String get languageSuggestedHeader => 'Suggested';

  @override
  String get languageAllHeader => 'All languages';

  @override
  String get languageSuggestedBadge => 'Suggested';

  @override
  String get languageSearchHint => 'Search…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daily Guidance';

  @override
  String get categorySlot02 => 'Iman & Trust';

  @override
  String get categorySlot03 => 'Prayer Reflection';

  @override
  String get categorySlot04 => 'Patience Hope';

  @override
  String get categorySlot05 => 'Seek Forgiveness';

  @override
  String get categorySlot06 => 'Mercy Compassion';

  @override
  String get categorySlot07 => 'Faith Strength';

  @override
  String get categorySlot08 => 'Grateful Heart';

  @override
  String get categorySlot09 => 'Life Purpose';

  @override
  String get categorySlot10 => 'Family Ties';

  @override
  String get categorySlot11 => 'Inner Peace';

  @override
  String get categorySlot12 => 'Prophet Wisdom';

  @override
  String get categorySlot13 => 'Good Character';

  @override
  String get categorySlot14 => 'Resist Temptation';

  @override
  String get categorySlot15 => 'Evening Dhikr';

  @override
  String get categoryCustom => 'Personal Reflection';

  @override
  String get dhikrMeaningSubhanallah => 'Glory be to Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All praise is due to Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is the Greatest';

  @override
  String get quranVerseHeartAtRest =>
      'Verily, in the remembrance of Allah do hearts find rest.';

  @override
  String get promptHint => 'Tap a category for Islamic guidance and reflection';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get settingsLanguage => 'Language settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Choose your language';

  @override
  String get continueCta => 'Continue';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '$count word',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'New';

  @override
  String get actionsTitle => 'What would you like to do?';

  @override
  String get copy => 'Copy';

  @override
  String get share => 'Share';

  @override
  String get close => 'Close';

  @override
  String get copiedToast => 'Copied to clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Couldn\'t generate a new reply';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDo you want to try again?';
  }

  @override
  String get cancelCta => 'Cancel';

  @override
  String get retryCta => 'Try again';

  @override
  String get authTitle => 'Create your account';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get signInEmail => 'Sign in with Email';

  @override
  String get upgradeWithApple => 'Continue with Apple';

  @override
  String get mustAccept =>
      'You must accept the Terms and acknowledge the Privacy Policy.';

  @override
  String get termsLabel => 'I accept the Terms of Service';

  @override
  String get privacyLabel => 'I have read the Privacy Policy';

  @override
  String get marketingOptIn => 'I agree to receive news and offers';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Signed in';

  @override
  String get upgradeHint =>
      'Save your reflections across devices by creating an account.';

  @override
  String get upgradeWithGoogle => 'Continue with Google';

  @override
  String get signOut => 'Sign out';

  @override
  String get snackUpgraded => 'Account upgraded with Google ✅';

  @override
  String get snackSignedIn => 'Signed in with Google ✅';

  @override
  String get snackSignedOut => 'Signed out';

  @override
  String get snackSignedInApple => 'Signed in with Apple ✅';

  @override
  String get snackSignedInGoogle => 'Signed in with Google ✅';

  @override
  String get snackUpgradedApple => 'Account upgraded with Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account upgraded with Google ✅';

  @override
  String get historyTitle => 'Previous reflections';

  @override
  String get historyOpenCta => 'Previous reflections';

  @override
  String get historyEmpty => 'No saved reflections yet.';

  @override
  String get historyDeleteTitle => 'Delete reflection?';

  @override
  String get historyDeleteBody =>
      'This will permanently remove the selected item.';

  @override
  String get deleteCta => 'Delete';

  @override
  String get historyButton => 'Previous Reflections';

  @override
  String get historyEmptyTitle => 'No reflections yet';

  @override
  String get historyEmptyBody =>
      'Generate something first — your saved items will appear here.';

  @override
  String get historyDelete => 'Delete';

  @override
  String get footerTitle => 'With Wilaya, Iman and Sabr';

  @override
  String get footerSubtitle => 'One prayer at a time';

  @override
  String get genericErrorSnack =>
      'Something went wrong — please try again in a moment.';

  @override
  String get upgradeAccountCta =>
      'Save your reflections across devices – create an account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get exportData => 'Export my data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nAyara needs a moment before the next one…';

  @override
  String get rateDailyLimit =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.';

  @override
  String get rateGraceCreditsExhausted =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya unlocks premium features, future categories, and a special badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Your reflections are empty right now. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Couldn\'t check your reflections: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Something went wrong while checking your reflections.';

  @override
  String get aiFallbackGeneric =>
      'Something went wrong — please try again in a moment.';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'Usage';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Remaining reflections: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Loading…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'Usage';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Remaining reflections: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Loading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get settingsDeleteTitle => 'Delete account';

  @override
  String get settingsDeleteDescription =>
      'Permanently delete your account and all associated data.';

  @override
  String get settingsDeleteButtonLabel => 'Delete my account';

  @override
  String get settingsDeleteDialogTitle => 'Delete account?';

  @override
  String get settingsDeleteDialogBody =>
      'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel';

  @override
  String get settingsDeleteDialogConfirm => 'Delete';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter reflections used';

  @override
  String get settingsFreeLimitUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter reflections used';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get deviceBoundError =>
      'This device is already linked to another account. Please sign in with the original account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'Unlock the full Ayara experience.';

  @override
  String get premiumSubtitlePremium =>
      'You\'re on Wilaya. Need more reflections?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Current plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Purchases are not available right now.';

  @override
  String get premiumSignInToPurchase =>
      'Sign in to buy reflections or unlock Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restore purchases';

  @override
  String get premiumProcessing => 'Processing…';

  @override
  String get premiumRestoreHintTitle =>
      'Already purchased Wilaya or reflections on this device or another one?';

  @override
  String get premiumRestoreHintBody =>
      'Restore your purchases if they\'re not showing up.';

  @override
  String get premiumBuyCredits200 => 'Buy 200 reflections';

  @override
  String get premiumBuyCredits400 => 'Buy 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade to Wilaya mode';

  @override
  String get premiumTopupHint =>
      'With Wilaya, you can top up with extra reflections whenever you need.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.';

  @override
  String get premiumBenefitsPremium =>
      'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.';

  @override
  String get premiumButtonBecomePremium => 'Unlock Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Add 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya active';

  @override
  String get premiumLoadingStore => 'Loading store…';

  @override
  String get premiumProductNotAvailable =>
      'This product isn\'t available in the store yet. Please try again later.';

  @override
  String get premiumPurchaseError =>
      'Something went wrong with the purchase. Please try again.';

  @override
  String get premiumBuyCredits100 => 'Add 100 reflections';

  @override
  String get premiumFeatureLocked => 'Unlock Wilaya to access this feature.';

  @override
  String get lockedCategoriesHint =>
      'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.';

  @override
  String get freePlanBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get freePlanBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get graceBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get graceBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get rateGuestMustSignIn =>
      'Sign in to use Ayara and your reflections.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.';

  @override
  String get guestDialogContinue => 'Continue';

  @override
  String get guestDialogLoginInstead => 'Log in instead';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Account deleted';

  @override
  String get accountDeleteSuccessBody =>
      'Your account and associated data have been deleted successfully.';

  @override
  String get accountDeleteSuccessClose => 'Close';

  @override
  String get accountDeleteErrorTitle => 'Could not delete account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-authentication was cancelled. Please sign in again and retry deletion.';

  @override
  String get accountDeleteReauthRequired =>
      'Account deletion requires a recent login. Please sign out, sign in again, and retry.';

  @override
  String get settingsDeletePermanentWarning =>
      'This action is permanent and cannot be undone. All data associated with your account will be deleted.';

  @override
  String get dailyGraceTitle => 'Daily Guidance';

  @override
  String get dailyGraceScriptureLabel => 'VERSE OF THE DAY';

  @override
  String get dailyGraceSaintLabel => 'SCHOLAR OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'EVENING REFLECTION';

  @override
  String get dailyGraceCopiedToast => 'Verse copied to clipboard';

  @override
  String get locationConsentLabel =>
      'Allow Ayara to use my location for Qibla direction and prayer times';

  @override
  String get locationConsentHint =>
      'Used only for these features. Your location is never shared or stored.';

  @override
  String get askPageTitle => 'Ask Ayara';

  @override
  String get askPageDescription =>
      'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Type your question here…';

  @override
  String get askPageSubmitCta => 'Ask';

  @override
  String get askPageInputEmptyError => 'Please write a question first.';

  @override
  String get askResultYourQuestion => 'Your question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Facing Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal is weak. Move outdoors and tap Retry.';

  @override
  String get qiblaRetry => 'Retry';

  @override
  String get qiblaTitle => 'Qibla Direction';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km to Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Location required';

  @override
  String get qiblaLocationNeededBody =>
      'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.';

  @override
  String get qiblaOpenSettings => 'Open Settings';

  @override
  String get qiblaCompassLoading => 'Finding your position…';

  @override
  String get qiblaTowardMecca => 'Toward Makkah';

  @override
  String get prayerTimesTitle => 'Prayer Times';

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
  String get prayerTimesLocationNeededTitle => 'Location required';

  @override
  String get prayerTimesLocationNeededBody =>
      'Allow location access so Ayara can calculate accurate prayer times for your city.';

  @override
  String get prayerTimesNextLabel => 'Next';

  @override
  String get prayerTimesDoneLabel => 'Done';

  @override
  String get monthlyPrayerTimesTitle => 'Monthly Prayer Times';

  @override
  String get monthlyPrayerTimesViewButton => 'View Full Month';

  @override
  String get monthlyPrayerTimesNextMonth => 'Next month';

  @override
  String get monthlyPrayerTimesDayHeader => 'Day';

  @override
  String get sharePrayerTimes => 'Share prayer times';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Prayer reminders, calendar events & more';

  @override
  String get dailyReflectionReminderTitle => 'Daily Reflection';

  @override
  String get dailyReflectionReminderDescription =>
      'A gentle daily reminder to open Ayara and connect with your faith.';

  @override
  String get dailyReflectionReminderEnable => 'Enable daily reminder';

  @override
  String get dailyReflectionReminderTimeLabel => 'Reminder time';

  @override
  String get prayerNotificationsTitle => 'Prayer Reminders';

  @override
  String get prayerNotificationsDescription =>
      'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.';

  @override
  String get prayerNotificationsEnable => 'Enable prayer reminders';

  @override
  String get prayerNotificationsOpenSettings => 'Open notification settings';

  @override
  String get prayerNotificationsDenied => 'Notifications are disabled';

  @override
  String get prayerNotificationsDeniedHint =>
      'Go to Settings and allow notifications for Ayara to receive prayer time reminders.';

  @override
  String get notificationsConsentLabel =>
      'Allow notifications for prayer times';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dawn Prayer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Midday Prayer';

  @override
  String get prayerNotifBodyDhuhr =>
      'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Afternoon Prayer';

  @override
  String get prayerNotifBodyAsr =>
      'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sunset Prayer';

  @override
  String get prayerNotifBodyMaghrib =>
      'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Night Prayer';

  @override
  String get prayerNotifBodyIsha =>
      'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.';

  @override
  String get outOfReflectionsBannerText => 'You\'ve used all your reflections';

  @override
  String get outOfReflectionsBannerCta => 'Get more';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tap the circle to count';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'You have completed 100 remembrances of Allah. May they be a light for your heart.';

  @override
  String get disclaimerTitle => 'About this app\'s guidance';

  @override
  String get disclaimerBody =>
      'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.';

  @override
  String get disclaimerClose => 'I understand';

  @override
  String get disclaimerInfoTooltip => 'About this app\'s guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'For general informational purposes only. Tap to read the full disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Guidance disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflect';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'TODAY';

  @override
  String get dashboardComingUp => 'Coming up';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Quick Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Prayer Times';

  @override
  String get askAyaraTitle => 'Ask Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ask any Islamic question and receive a thoughtful, guided answer.';

  @override
  String get askAyaraHint => 'e.g. What is the significance of Ramadan?';

  @override
  String get askAyaraSubmit => 'Ask';

  @override
  String get wisdomOfTheDayTitle => 'Wisdom of the Day';

  @override
  String get calendarScreenTitle => 'Islamic Calendar';

  @override
  String get calendarUpcomingOccasions => 'Upcoming Occasions';

  @override
  String get calendarOccasionRemindersTitle => 'Occasion Reminders';

  @override
  String get calendarOccasionRemindersHint =>
      'Notified the evening before each occasion';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification permission denied. Enable it in your device settings.';

  @override
  String get calendarNoEvents => 'No upcoming events found.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'TODAY';

  @override
  String get calendarCountdownTomorrow => 'TOMORROW';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days days';
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
      'Days of Muharram — remember Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — days of mourning and reflection';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — forty days of Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'The road to Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — the dawn of revelation';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — the month of the Quran';

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
  String get duasSearchHint => 'Search duas, ziyarat…';

  @override
  String get duasFilterAll => 'All';

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
  String get duasEmpty => 'No duas found.';

  @override
  String get duaCategoryDaily => 'Daily';

  @override
  String get duaCategoryWeekly => 'Weekly';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Birth';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copy translation';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Translation';

  @override
  String get duaAskAiLabel => 'Ask Ayara to explain this dua';

  @override
  String get duaAskAiLockedLabel => 'Ask Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara explanations are available for Wilaya members. Upgrade in Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ask Ayara about \"$name\" — coming soon!';
  }

  @override
  String get duaCopiedToast => 'Dua copied to clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is the Greatest';

  @override
  String get tasbihAlhamdulillahMeaning => 'All praise belongs to Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glory be to Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Complete';

  @override
  String get tasbihCompleteMessage => 'May Allah accept your dhikr.';

  @override
  String get tasbihTapHint => 'Tap anywhere to count';

  @override
  String get tasbihatScreenTitle => 'Prayer Guide';

  @override
  String get tasbihatScreenSubtitle => 'THE PRAYER GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recited during the 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.';

  @override
  String get tasbihatArba3Translation =>
      'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation Complete';

  @override
  String get tasbihatArba3CompleteMessage =>
      'May your prayer be accepted — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tap after each recitation';

  @override
  String get tasbihatZahraSubtitle => 'After every prayer · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Origin';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMENDED DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'After completing your prayer';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'After every obligatory prayer';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'After every prayer · seals all supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'After every prayer · for the Imam of our time';

  @override
  String get tasbihatDuaFarajSource => 'Taught by Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ of Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'After Maghrib & Isha · especially recommended';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.';

  @override
  String get tasbihFatimaGiftPre => 'A gift from the Prophet';

  @override
  String get tasbihFatimaGiftPost => 'recited after every prayer';

  @override
  String get prayerTrackerTitle => 'PRAYER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Prayed';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All prayers completed today. May Allah accept.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completed today';

  @override
  String get dhikrTrackerNotDoneToday => 'Not done today';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Reminder';

  @override
  String get dhikrReminderDescription =>
      'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enable Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Reminder time';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daily Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'TRANSLATION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Share This Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Previous';

  @override
  String get hadithNavNext => 'Next';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam';

  @override
  String get imamLabelBorn => 'Born';

  @override
  String get imamLabelMartyrdom => 'Martyrdom';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAPHY';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'The Final Prophet';

  @override
  String get imamRoleInfallible => 'The Infallible';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Listen to Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Select a dua to listen. Tap the tile to play or pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio for this dua will be available in an upcoming update.';

  @override
  String get duaAudioClose => 'Close';

  @override
  String get duaAudioError =>
      'Could not load audio. Please check your connection.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitted by';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Duration';

  @override
  String get quickActionDailyHadith => 'Daily Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Listen';

  @override
  String get quickActionTasbihat => 'Prayer Guide';

  @override
  String get pilgrimageSectionTitle => 'The Sacred Journey';

  @override
  String get pilgrimageSectionSubtitle =>
      'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'The Fifth Pillar of Islam';

  @override
  String get hajjCardDescription =>
      'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle => 'Step-by-step guide to the grand pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'The Lesser Pilgrimage';

  @override
  String get umrahCardDescription =>
      'A deeply rewarding spiritual journey that can be performed at any time of year';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Step-by-step guide to the lesser pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Rituals & Steps';

  @override
  String get pilgrimageImportantNotesTitle => 'Important Notes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Mark as complete';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.';

  @override
  String get hajjIntro =>
      'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.';
}

/// The translations for English, as used in New Zealand (`en_NZ`).
class AppLocalizationsEnNz extends AppLocalizationsEn {
  AppLocalizationsEnNz() : super('en_NZ');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choose your language';

  @override
  String get languageSelectSub => 'You can change this later in Settings';

  @override
  String get actionContinue => 'Continue';

  @override
  String get languageSuggestedHeader => 'Suggested';

  @override
  String get languageAllHeader => 'All languages';

  @override
  String get languageSuggestedBadge => 'Suggested';

  @override
  String get languageSearchHint => 'Search…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daily Guidance';

  @override
  String get categorySlot02 => 'Iman & Trust';

  @override
  String get categorySlot03 => 'Prayer Reflection';

  @override
  String get categorySlot04 => 'Patience Hope';

  @override
  String get categorySlot05 => 'Seek Forgiveness';

  @override
  String get categorySlot06 => 'Mercy Compassion';

  @override
  String get categorySlot07 => 'Faith Strength';

  @override
  String get categorySlot08 => 'Grateful Heart';

  @override
  String get categorySlot09 => 'Life Purpose';

  @override
  String get categorySlot10 => 'Family Ties';

  @override
  String get categorySlot11 => 'Inner Peace';

  @override
  String get categorySlot12 => 'Prophet Wisdom';

  @override
  String get categorySlot13 => 'Good Character';

  @override
  String get categorySlot14 => 'Resist Temptation';

  @override
  String get categorySlot15 => 'Evening Dhikr';

  @override
  String get categoryCustom => 'Personal Reflection';

  @override
  String get dhikrMeaningSubhanallah => 'Glory be to Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All praise is due to Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is the Greatest';

  @override
  String get quranVerseHeartAtRest =>
      'Verily, in the remembrance of Allah do hearts find rest.';

  @override
  String get promptHint => 'Tap a category for Islamic guidance and reflection';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get settingsLanguage => 'Language settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Choose your language';

  @override
  String get continueCta => 'Continue';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '$count word',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'New';

  @override
  String get actionsTitle => 'What would you like to do?';

  @override
  String get copy => 'Copy';

  @override
  String get share => 'Share';

  @override
  String get close => 'Close';

  @override
  String get copiedToast => 'Copied to clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Couldn\'t generate a new reply';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDo you want to try again?';
  }

  @override
  String get cancelCta => 'Cancel';

  @override
  String get retryCta => 'Try again';

  @override
  String get authTitle => 'Create your account';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get signInEmail => 'Sign in with Email';

  @override
  String get upgradeWithApple => 'Continue with Apple';

  @override
  String get mustAccept =>
      'You must accept the Terms and acknowledge the Privacy Policy.';

  @override
  String get termsLabel => 'I accept the Terms of Service';

  @override
  String get privacyLabel => 'I have read the Privacy Policy';

  @override
  String get marketingOptIn => 'I agree to receive news and offers';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Signed in';

  @override
  String get upgradeHint =>
      'Save your reflections across devices by creating an account.';

  @override
  String get upgradeWithGoogle => 'Continue with Google';

  @override
  String get signOut => 'Sign out';

  @override
  String get snackUpgraded => 'Account upgraded with Google ✅';

  @override
  String get snackSignedIn => 'Signed in with Google ✅';

  @override
  String get snackSignedOut => 'Signed out';

  @override
  String get snackSignedInApple => 'Signed in with Apple ✅';

  @override
  String get snackSignedInGoogle => 'Signed in with Google ✅';

  @override
  String get snackUpgradedApple => 'Account upgraded with Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account upgraded with Google ✅';

  @override
  String get historyTitle => 'Previous reflections';

  @override
  String get historyOpenCta => 'Previous reflections';

  @override
  String get historyEmpty => 'No saved reflections yet.';

  @override
  String get historyDeleteTitle => 'Delete reflection?';

  @override
  String get historyDeleteBody =>
      'This will permanently remove the selected item.';

  @override
  String get deleteCta => 'Delete';

  @override
  String get historyButton => 'Previous Reflections';

  @override
  String get historyEmptyTitle => 'No reflections yet';

  @override
  String get historyEmptyBody =>
      'Generate something first — your saved items will appear here.';

  @override
  String get historyDelete => 'Delete';

  @override
  String get footerTitle => 'With Wilaya, Iman and Sabr';

  @override
  String get footerSubtitle => 'One prayer at a time';

  @override
  String get genericErrorSnack =>
      'Something went wrong — please try again in a moment.';

  @override
  String get upgradeAccountCta =>
      'Save your reflections across devices – create an account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get exportData => 'Export my data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nAyara needs a moment before the next one…';

  @override
  String get rateDailyLimit =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.';

  @override
  String get rateGraceCreditsExhausted =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya unlocks premium features, future categories, and a special badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Your reflections are empty right now. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Couldn\'t check your reflections: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Something went wrong while checking your reflections.';

  @override
  String get aiFallbackGeneric =>
      'Something went wrong — please try again in a moment.';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'Usage';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Remaining reflections: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Loading…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'Usage';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Remaining reflections: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Loading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get settingsDeleteTitle => 'Delete account';

  @override
  String get settingsDeleteDescription =>
      'Permanently delete your account and all associated data.';

  @override
  String get settingsDeleteButtonLabel => 'Delete my account';

  @override
  String get settingsDeleteDialogTitle => 'Delete account?';

  @override
  String get settingsDeleteDialogBody =>
      'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel';

  @override
  String get settingsDeleteDialogConfirm => 'Delete';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter reflections used';

  @override
  String get settingsFreeLimitUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter reflections used';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get deviceBoundError =>
      'This device is already linked to another account. Please sign in with the original account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'Unlock the full Ayara experience.';

  @override
  String get premiumSubtitlePremium =>
      'You\'re on Wilaya. Need more reflections?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Current plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Purchases are not available right now.';

  @override
  String get premiumSignInToPurchase =>
      'Sign in to buy reflections or unlock Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restore purchases';

  @override
  String get premiumProcessing => 'Processing…';

  @override
  String get premiumRestoreHintTitle =>
      'Already purchased Wilaya or reflections on this device or another one?';

  @override
  String get premiumRestoreHintBody =>
      'Restore your purchases if they\'re not showing up.';

  @override
  String get premiumBuyCredits200 => 'Buy 200 reflections';

  @override
  String get premiumBuyCredits400 => 'Buy 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade to Wilaya mode';

  @override
  String get premiumTopupHint =>
      'With Wilaya, you can top up with extra reflections whenever you need.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.';

  @override
  String get premiumBenefitsPremium =>
      'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.';

  @override
  String get premiumButtonBecomePremium => 'Unlock Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Add 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya active';

  @override
  String get premiumLoadingStore => 'Loading store…';

  @override
  String get premiumProductNotAvailable =>
      'This product isn\'t available in the store yet. Please try again later.';

  @override
  String get premiumPurchaseError =>
      'Something went wrong with the purchase. Please try again.';

  @override
  String get premiumBuyCredits100 => 'Add 100 reflections';

  @override
  String get premiumFeatureLocked => 'Unlock Wilaya to access this feature.';

  @override
  String get lockedCategoriesHint =>
      'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.';

  @override
  String get freePlanBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get freePlanBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get graceBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get graceBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get rateGuestMustSignIn =>
      'Sign in to use Ayara and your reflections.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.';

  @override
  String get guestDialogContinue => 'Continue';

  @override
  String get guestDialogLoginInstead => 'Log in instead';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Account deleted';

  @override
  String get accountDeleteSuccessBody =>
      'Your account and associated data have been deleted successfully.';

  @override
  String get accountDeleteSuccessClose => 'Close';

  @override
  String get accountDeleteErrorTitle => 'Could not delete account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-authentication was cancelled. Please sign in again and retry deletion.';

  @override
  String get accountDeleteReauthRequired =>
      'Account deletion requires a recent login. Please sign out, sign in again, and retry.';

  @override
  String get settingsDeletePermanentWarning =>
      'This action is permanent and cannot be undone. All data associated with your account will be deleted.';

  @override
  String get dailyGraceTitle => 'Daily Guidance';

  @override
  String get dailyGraceScriptureLabel => 'VERSE OF THE DAY';

  @override
  String get dailyGraceSaintLabel => 'SCHOLAR OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'EVENING REFLECTION';

  @override
  String get dailyGraceCopiedToast => 'Verse copied to clipboard';

  @override
  String get locationConsentLabel =>
      'Allow Ayara to use my location for Qibla direction and prayer times';

  @override
  String get locationConsentHint =>
      'Used only for these features. Your location is never shared or stored.';

  @override
  String get askPageTitle => 'Ask Ayara';

  @override
  String get askPageDescription =>
      'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Type your question here…';

  @override
  String get askPageSubmitCta => 'Ask';

  @override
  String get askPageInputEmptyError => 'Please write a question first.';

  @override
  String get askResultYourQuestion => 'Your question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Facing Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal is weak. Move outdoors and tap Retry.';

  @override
  String get qiblaRetry => 'Retry';

  @override
  String get qiblaTitle => 'Qibla Direction';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km to Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Location required';

  @override
  String get qiblaLocationNeededBody =>
      'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.';

  @override
  String get qiblaOpenSettings => 'Open Settings';

  @override
  String get qiblaCompassLoading => 'Finding your position…';

  @override
  String get qiblaTowardMecca => 'Toward Makkah';

  @override
  String get prayerTimesTitle => 'Prayer Times';

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
  String get prayerTimesLocationNeededTitle => 'Location required';

  @override
  String get prayerTimesLocationNeededBody =>
      'Allow location access so Ayara can calculate accurate prayer times for your city.';

  @override
  String get prayerTimesNextLabel => 'Next';

  @override
  String get prayerTimesDoneLabel => 'Done';

  @override
  String get monthlyPrayerTimesTitle => 'Monthly Prayer Times';

  @override
  String get monthlyPrayerTimesViewButton => 'View Full Month';

  @override
  String get monthlyPrayerTimesNextMonth => 'Next month';

  @override
  String get monthlyPrayerTimesDayHeader => 'Day';

  @override
  String get sharePrayerTimes => 'Share prayer times';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Prayer reminders, calendar events & more';

  @override
  String get dailyReflectionReminderTitle => 'Daily Reflection';

  @override
  String get dailyReflectionReminderDescription =>
      'A gentle daily reminder to open Ayara and connect with your faith.';

  @override
  String get dailyReflectionReminderEnable => 'Enable daily reminder';

  @override
  String get dailyReflectionReminderTimeLabel => 'Reminder time';

  @override
  String get prayerNotificationsTitle => 'Prayer Reminders';

  @override
  String get prayerNotificationsDescription =>
      'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.';

  @override
  String get prayerNotificationsEnable => 'Enable prayer reminders';

  @override
  String get prayerNotificationsOpenSettings => 'Open notification settings';

  @override
  String get prayerNotificationsDenied => 'Notifications are disabled';

  @override
  String get prayerNotificationsDeniedHint =>
      'Go to Settings and allow notifications for Ayara to receive prayer time reminders.';

  @override
  String get notificationsConsentLabel =>
      'Allow notifications for prayer times';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dawn Prayer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Midday Prayer';

  @override
  String get prayerNotifBodyDhuhr =>
      'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Afternoon Prayer';

  @override
  String get prayerNotifBodyAsr =>
      'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sunset Prayer';

  @override
  String get prayerNotifBodyMaghrib =>
      'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Night Prayer';

  @override
  String get prayerNotifBodyIsha =>
      'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.';

  @override
  String get outOfReflectionsBannerText => 'You\'ve used all your reflections';

  @override
  String get outOfReflectionsBannerCta => 'Get more';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tap the circle to count';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'You have completed 100 remembrances of Allah. May they be a light for your heart.';

  @override
  String get disclaimerTitle => 'About this app\'s guidance';

  @override
  String get disclaimerBody =>
      'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.';

  @override
  String get disclaimerClose => 'I understand';

  @override
  String get disclaimerInfoTooltip => 'About this app\'s guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'For general informational purposes only. Tap to read the full disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Guidance disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflect';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'TODAY';

  @override
  String get dashboardComingUp => 'Coming up';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Quick Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Prayer Times';

  @override
  String get askAyaraTitle => 'Ask Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ask any Islamic question and receive a thoughtful, guided answer.';

  @override
  String get askAyaraHint => 'e.g. What is the significance of Ramadan?';

  @override
  String get askAyaraSubmit => 'Ask';

  @override
  String get wisdomOfTheDayTitle => 'Wisdom of the Day';

  @override
  String get calendarScreenTitle => 'Islamic Calendar';

  @override
  String get calendarUpcomingOccasions => 'Upcoming Occasions';

  @override
  String get calendarOccasionRemindersTitle => 'Occasion Reminders';

  @override
  String get calendarOccasionRemindersHint =>
      'Notified the evening before each occasion';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification permission denied. Enable it in your device settings.';

  @override
  String get calendarNoEvents => 'No upcoming events found.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'TODAY';

  @override
  String get calendarCountdownTomorrow => 'TOMORROW';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days days';
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
      'Days of Muharram — remember Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — days of mourning and reflection';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — forty days of Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'The road to Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — the dawn of revelation';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — the month of the Quran';

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
  String get duasSearchHint => 'Search duas, ziyarat…';

  @override
  String get duasFilterAll => 'All';

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
  String get duasEmpty => 'No duas found.';

  @override
  String get duaCategoryDaily => 'Daily';

  @override
  String get duaCategoryWeekly => 'Weekly';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Birth';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copy translation';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Translation';

  @override
  String get duaAskAiLabel => 'Ask Ayara to explain this dua';

  @override
  String get duaAskAiLockedLabel => 'Ask Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara explanations are available for Wilaya members. Upgrade in Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ask Ayara about \"$name\" — coming soon!';
  }

  @override
  String get duaCopiedToast => 'Dua copied to clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is the Greatest';

  @override
  String get tasbihAlhamdulillahMeaning => 'All praise belongs to Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glory be to Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Complete';

  @override
  String get tasbihCompleteMessage => 'May Allah accept your dhikr.';

  @override
  String get tasbihTapHint => 'Tap anywhere to count';

  @override
  String get tasbihatScreenTitle => 'Prayer Guide';

  @override
  String get tasbihatScreenSubtitle => 'THE PRAYER GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recited during the 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.';

  @override
  String get tasbihatArba3Translation =>
      'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation Complete';

  @override
  String get tasbihatArba3CompleteMessage =>
      'May your prayer be accepted — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tap after each recitation';

  @override
  String get tasbihatZahraSubtitle => 'After every prayer · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Origin';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMENDED DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'After completing your prayer';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'After every obligatory prayer';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'After every prayer · seals all supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'After every prayer · for the Imam of our time';

  @override
  String get tasbihatDuaFarajSource => 'Taught by Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ of Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'After Maghrib & Isha · especially recommended';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.';

  @override
  String get tasbihFatimaGiftPre => 'A gift from the Prophet';

  @override
  String get tasbihFatimaGiftPost => 'recited after every prayer';

  @override
  String get prayerTrackerTitle => 'PRAYER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Prayed';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All prayers completed today. May Allah accept.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completed today';

  @override
  String get dhikrTrackerNotDoneToday => 'Not done today';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Reminder';

  @override
  String get dhikrReminderDescription =>
      'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enable Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Reminder time';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daily Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'TRANSLATION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Share This Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Previous';

  @override
  String get hadithNavNext => 'Next';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam';

  @override
  String get imamLabelBorn => 'Born';

  @override
  String get imamLabelMartyrdom => 'Martyrdom';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAPHY';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'The Final Prophet';

  @override
  String get imamRoleInfallible => 'The Infallible';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Listen to Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Select a dua to listen. Tap the tile to play or pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio for this dua will be available in an upcoming update.';

  @override
  String get duaAudioClose => 'Close';

  @override
  String get duaAudioError =>
      'Could not load audio. Please check your connection.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitted by';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Duration';

  @override
  String get quickActionDailyHadith => 'Daily Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Listen';

  @override
  String get quickActionTasbihat => 'Prayer Guide';

  @override
  String get pilgrimageSectionTitle => 'The Sacred Journey';

  @override
  String get pilgrimageSectionSubtitle =>
      'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'The Fifth Pillar of Islam';

  @override
  String get hajjCardDescription =>
      'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle => 'Step-by-step guide to the grand pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'The Lesser Pilgrimage';

  @override
  String get umrahCardDescription =>
      'A deeply rewarding spiritual journey that can be performed at any time of year';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Step-by-step guide to the lesser pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Rituals & Steps';

  @override
  String get pilgrimageImportantNotesTitle => 'Important Notes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Mark as complete';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.';

  @override
  String get hajjIntro =>
      'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.';
}

/// The translations for English, as used in Singapore (`en_SG`).
class AppLocalizationsEnSg extends AppLocalizationsEn {
  AppLocalizationsEnSg() : super('en_SG');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choose your language';

  @override
  String get languageSelectSub => 'You can change this later in Settings';

  @override
  String get actionContinue => 'Continue';

  @override
  String get languageSuggestedHeader => 'Suggested';

  @override
  String get languageAllHeader => 'All languages';

  @override
  String get languageSuggestedBadge => 'Suggested';

  @override
  String get languageSearchHint => 'Search…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daily Guidance';

  @override
  String get categorySlot02 => 'Iman & Trust';

  @override
  String get categorySlot03 => 'Prayer Reflection';

  @override
  String get categorySlot04 => 'Patience Hope';

  @override
  String get categorySlot05 => 'Seek Forgiveness';

  @override
  String get categorySlot06 => 'Mercy Compassion';

  @override
  String get categorySlot07 => 'Faith Strength';

  @override
  String get categorySlot08 => 'Grateful Heart';

  @override
  String get categorySlot09 => 'Life Purpose';

  @override
  String get categorySlot10 => 'Family Ties';

  @override
  String get categorySlot11 => 'Inner Peace';

  @override
  String get categorySlot12 => 'Prophet Wisdom';

  @override
  String get categorySlot13 => 'Good Character';

  @override
  String get categorySlot14 => 'Resist Temptation';

  @override
  String get categorySlot15 => 'Evening Dhikr';

  @override
  String get categoryCustom => 'Personal Reflection';

  @override
  String get dhikrMeaningSubhanallah => 'Glory be to Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All praise is due to Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is the Greatest';

  @override
  String get quranVerseHeartAtRest =>
      'Verily, in the remembrance of Allah do hearts find rest.';

  @override
  String get promptHint => 'Tap a category for Islamic guidance and reflection';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get settingsLanguage => 'Language settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Choose your language';

  @override
  String get continueCta => 'Continue';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '$count word',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'New';

  @override
  String get actionsTitle => 'What would you like to do?';

  @override
  String get copy => 'Copy';

  @override
  String get share => 'Share';

  @override
  String get close => 'Close';

  @override
  String get copiedToast => 'Copied to clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Couldn\'t generate a new reply';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDo you want to try again?';
  }

  @override
  String get cancelCta => 'Cancel';

  @override
  String get retryCta => 'Try again';

  @override
  String get authTitle => 'Create your account';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get signInEmail => 'Sign in with Email';

  @override
  String get upgradeWithApple => 'Continue with Apple';

  @override
  String get mustAccept =>
      'You must accept the Terms and acknowledge the Privacy Policy.';

  @override
  String get termsLabel => 'I accept the Terms of Service';

  @override
  String get privacyLabel => 'I have read the Privacy Policy';

  @override
  String get marketingOptIn => 'I agree to receive news and offers';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Signed in';

  @override
  String get upgradeHint =>
      'Save your reflections across devices by creating an account.';

  @override
  String get upgradeWithGoogle => 'Continue with Google';

  @override
  String get signOut => 'Sign out';

  @override
  String get snackUpgraded => 'Account upgraded with Google ✅';

  @override
  String get snackSignedIn => 'Signed in with Google ✅';

  @override
  String get snackSignedOut => 'Signed out';

  @override
  String get snackSignedInApple => 'Signed in with Apple ✅';

  @override
  String get snackSignedInGoogle => 'Signed in with Google ✅';

  @override
  String get snackUpgradedApple => 'Account upgraded with Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account upgraded with Google ✅';

  @override
  String get historyTitle => 'Previous reflections';

  @override
  String get historyOpenCta => 'Previous reflections';

  @override
  String get historyEmpty => 'No saved reflections yet.';

  @override
  String get historyDeleteTitle => 'Delete reflection?';

  @override
  String get historyDeleteBody =>
      'This will permanently remove the selected item.';

  @override
  String get deleteCta => 'Delete';

  @override
  String get historyButton => 'Previous Reflections';

  @override
  String get historyEmptyTitle => 'No reflections yet';

  @override
  String get historyEmptyBody =>
      'Generate something first — your saved items will appear here.';

  @override
  String get historyDelete => 'Delete';

  @override
  String get footerTitle => 'With Wilaya, Iman and Sabr';

  @override
  String get footerSubtitle => 'One prayer at a time';

  @override
  String get genericErrorSnack =>
      'Something went wrong — please try again in a moment.';

  @override
  String get upgradeAccountCta =>
      'Save your reflections across devices – create an account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get exportData => 'Export my data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nAyara needs a moment before the next one…';

  @override
  String get rateDailyLimit =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.';

  @override
  String get rateGraceCreditsExhausted =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya unlocks premium features, future categories, and a special badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Your reflections are empty right now. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Couldn\'t check your reflections: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Something went wrong while checking your reflections.';

  @override
  String get aiFallbackGeneric =>
      'Something went wrong — please try again in a moment.';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'Usage';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Remaining reflections: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Loading…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'Usage';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Remaining reflections: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Loading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get settingsDeleteTitle => 'Delete account';

  @override
  String get settingsDeleteDescription =>
      'Permanently delete your account and all associated data.';

  @override
  String get settingsDeleteButtonLabel => 'Delete my account';

  @override
  String get settingsDeleteDialogTitle => 'Delete account?';

  @override
  String get settingsDeleteDialogBody =>
      'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel';

  @override
  String get settingsDeleteDialogConfirm => 'Delete';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter reflections used';

  @override
  String get settingsFreeLimitUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter reflections used';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get deviceBoundError =>
      'This device is already linked to another account. Please sign in with the original account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'Unlock the full Ayara experience.';

  @override
  String get premiumSubtitlePremium =>
      'You\'re on Wilaya. Need more reflections?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Current plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Purchases are not available right now.';

  @override
  String get premiumSignInToPurchase =>
      'Sign in to buy reflections or unlock Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restore purchases';

  @override
  String get premiumProcessing => 'Processing…';

  @override
  String get premiumRestoreHintTitle =>
      'Already purchased Wilaya or reflections on this device or another one?';

  @override
  String get premiumRestoreHintBody =>
      'Restore your purchases if they\'re not showing up.';

  @override
  String get premiumBuyCredits200 => 'Buy 200 reflections';

  @override
  String get premiumBuyCredits400 => 'Buy 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade to Wilaya mode';

  @override
  String get premiumTopupHint =>
      'With Wilaya, you can top up with extra reflections whenever you need.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.';

  @override
  String get premiumBenefitsPremium =>
      'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.';

  @override
  String get premiumButtonBecomePremium => 'Unlock Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Add 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya active';

  @override
  String get premiumLoadingStore => 'Loading store…';

  @override
  String get premiumProductNotAvailable =>
      'This product isn\'t available in the store yet. Please try again later.';

  @override
  String get premiumPurchaseError =>
      'Something went wrong with the purchase. Please try again.';

  @override
  String get premiumBuyCredits100 => 'Add 100 reflections';

  @override
  String get premiumFeatureLocked => 'Unlock Wilaya to access this feature.';

  @override
  String get lockedCategoriesHint =>
      'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.';

  @override
  String get freePlanBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get freePlanBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get graceBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get graceBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get rateGuestMustSignIn =>
      'Sign in to use Ayara and your reflections.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.';

  @override
  String get guestDialogContinue => 'Continue';

  @override
  String get guestDialogLoginInstead => 'Log in instead';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Account deleted';

  @override
  String get accountDeleteSuccessBody =>
      'Your account and associated data have been deleted successfully.';

  @override
  String get accountDeleteSuccessClose => 'Close';

  @override
  String get accountDeleteErrorTitle => 'Could not delete account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-authentication was cancelled. Please sign in again and retry deletion.';

  @override
  String get accountDeleteReauthRequired =>
      'Account deletion requires a recent login. Please sign out, sign in again, and retry.';

  @override
  String get settingsDeletePermanentWarning =>
      'This action is permanent and cannot be undone. All data associated with your account will be deleted.';

  @override
  String get dailyGraceTitle => 'Daily Guidance';

  @override
  String get dailyGraceScriptureLabel => 'VERSE OF THE DAY';

  @override
  String get dailyGraceSaintLabel => 'SCHOLAR OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'EVENING REFLECTION';

  @override
  String get dailyGraceCopiedToast => 'Verse copied to clipboard';

  @override
  String get locationConsentLabel =>
      'Allow Ayara to use my location for Qibla direction and prayer times';

  @override
  String get locationConsentHint =>
      'Used only for these features. Your location is never shared or stored.';

  @override
  String get askPageTitle => 'Ask Ayara';

  @override
  String get askPageDescription =>
      'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Type your question here…';

  @override
  String get askPageSubmitCta => 'Ask';

  @override
  String get askPageInputEmptyError => 'Please write a question first.';

  @override
  String get askResultYourQuestion => 'Your question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Facing Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal is weak. Move outdoors and tap Retry.';

  @override
  String get qiblaRetry => 'Retry';

  @override
  String get qiblaTitle => 'Qibla Direction';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km to Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Location required';

  @override
  String get qiblaLocationNeededBody =>
      'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.';

  @override
  String get qiblaOpenSettings => 'Open Settings';

  @override
  String get qiblaCompassLoading => 'Finding your position…';

  @override
  String get qiblaTowardMecca => 'Toward Makkah';

  @override
  String get prayerTimesTitle => 'Prayer Times';

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
  String get prayerTimesLocationNeededTitle => 'Location required';

  @override
  String get prayerTimesLocationNeededBody =>
      'Allow location access so Ayara can calculate accurate prayer times for your city.';

  @override
  String get prayerTimesNextLabel => 'Next';

  @override
  String get prayerTimesDoneLabel => 'Done';

  @override
  String get monthlyPrayerTimesTitle => 'Monthly Prayer Times';

  @override
  String get monthlyPrayerTimesViewButton => 'View Full Month';

  @override
  String get monthlyPrayerTimesNextMonth => 'Next month';

  @override
  String get monthlyPrayerTimesDayHeader => 'Day';

  @override
  String get sharePrayerTimes => 'Share prayer times';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Prayer reminders, calendar events & more';

  @override
  String get dailyReflectionReminderTitle => 'Daily Reflection';

  @override
  String get dailyReflectionReminderDescription =>
      'A gentle daily reminder to open Ayara and connect with your faith.';

  @override
  String get dailyReflectionReminderEnable => 'Enable daily reminder';

  @override
  String get dailyReflectionReminderTimeLabel => 'Reminder time';

  @override
  String get prayerNotificationsTitle => 'Prayer Reminders';

  @override
  String get prayerNotificationsDescription =>
      'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.';

  @override
  String get prayerNotificationsEnable => 'Enable prayer reminders';

  @override
  String get prayerNotificationsOpenSettings => 'Open notification settings';

  @override
  String get prayerNotificationsDenied => 'Notifications are disabled';

  @override
  String get prayerNotificationsDeniedHint =>
      'Go to Settings and allow notifications for Ayara to receive prayer time reminders.';

  @override
  String get notificationsConsentLabel =>
      'Allow notifications for prayer times';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dawn Prayer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Midday Prayer';

  @override
  String get prayerNotifBodyDhuhr =>
      'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Afternoon Prayer';

  @override
  String get prayerNotifBodyAsr =>
      'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sunset Prayer';

  @override
  String get prayerNotifBodyMaghrib =>
      'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Night Prayer';

  @override
  String get prayerNotifBodyIsha =>
      'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.';

  @override
  String get outOfReflectionsBannerText => 'You\'ve used all your reflections';

  @override
  String get outOfReflectionsBannerCta => 'Get more';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tap the circle to count';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'You have completed 100 remembrances of Allah. May they be a light for your heart.';

  @override
  String get disclaimerTitle => 'About this app\'s guidance';

  @override
  String get disclaimerBody =>
      'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.';

  @override
  String get disclaimerClose => 'I understand';

  @override
  String get disclaimerInfoTooltip => 'About this app\'s guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'For general informational purposes only. Tap to read the full disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Guidance disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflect';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'TODAY';

  @override
  String get dashboardComingUp => 'Coming up';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Quick Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Prayer Times';

  @override
  String get askAyaraTitle => 'Ask Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ask any Islamic question and receive a thoughtful, guided answer.';

  @override
  String get askAyaraHint => 'e.g. What is the significance of Ramadan?';

  @override
  String get askAyaraSubmit => 'Ask';

  @override
  String get wisdomOfTheDayTitle => 'Wisdom of the Day';

  @override
  String get calendarScreenTitle => 'Islamic Calendar';

  @override
  String get calendarUpcomingOccasions => 'Upcoming Occasions';

  @override
  String get calendarOccasionRemindersTitle => 'Occasion Reminders';

  @override
  String get calendarOccasionRemindersHint =>
      'Notified the evening before each occasion';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification permission denied. Enable it in your device settings.';

  @override
  String get calendarNoEvents => 'No upcoming events found.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'TODAY';

  @override
  String get calendarCountdownTomorrow => 'TOMORROW';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days days';
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
      'Days of Muharram — remember Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — days of mourning and reflection';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — forty days of Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'The road to Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — the dawn of revelation';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — the month of the Quran';

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
  String get duasSearchHint => 'Search duas, ziyarat…';

  @override
  String get duasFilterAll => 'All';

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
  String get duasEmpty => 'No duas found.';

  @override
  String get duaCategoryDaily => 'Daily';

  @override
  String get duaCategoryWeekly => 'Weekly';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Birth';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copy translation';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Translation';

  @override
  String get duaAskAiLabel => 'Ask Ayara to explain this dua';

  @override
  String get duaAskAiLockedLabel => 'Ask Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara explanations are available for Wilaya members. Upgrade in Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ask Ayara about \"$name\" — coming soon!';
  }

  @override
  String get duaCopiedToast => 'Dua copied to clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is the Greatest';

  @override
  String get tasbihAlhamdulillahMeaning => 'All praise belongs to Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glory be to Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Complete';

  @override
  String get tasbihCompleteMessage => 'May Allah accept your dhikr.';

  @override
  String get tasbihTapHint => 'Tap anywhere to count';

  @override
  String get tasbihatScreenTitle => 'Prayer Guide';

  @override
  String get tasbihatScreenSubtitle => 'THE PRAYER GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recited during the 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.';

  @override
  String get tasbihatArba3Translation =>
      'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation Complete';

  @override
  String get tasbihatArba3CompleteMessage =>
      'May your prayer be accepted — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tap after each recitation';

  @override
  String get tasbihatZahraSubtitle => 'After every prayer · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Origin';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMENDED DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'After completing your prayer';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'After every obligatory prayer';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'After every prayer · seals all supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'After every prayer · for the Imam of our time';

  @override
  String get tasbihatDuaFarajSource => 'Taught by Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ of Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'After Maghrib & Isha · especially recommended';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.';

  @override
  String get tasbihFatimaGiftPre => 'A gift from the Prophet';

  @override
  String get tasbihFatimaGiftPost => 'recited after every prayer';

  @override
  String get prayerTrackerTitle => 'PRAYER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Prayed';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All prayers completed today. May Allah accept.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completed today';

  @override
  String get dhikrTrackerNotDoneToday => 'Not done today';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Reminder';

  @override
  String get dhikrReminderDescription =>
      'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enable Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Reminder time';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daily Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'TRANSLATION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Share This Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Previous';

  @override
  String get hadithNavNext => 'Next';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam';

  @override
  String get imamLabelBorn => 'Born';

  @override
  String get imamLabelMartyrdom => 'Martyrdom';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAPHY';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'The Final Prophet';

  @override
  String get imamRoleInfallible => 'The Infallible';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Listen to Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Select a dua to listen. Tap the tile to play or pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio for this dua will be available in an upcoming update.';

  @override
  String get duaAudioClose => 'Close';

  @override
  String get duaAudioError =>
      'Could not load audio. Please check your connection.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitted by';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Duration';

  @override
  String get quickActionDailyHadith => 'Daily Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Listen';

  @override
  String get quickActionTasbihat => 'Prayer Guide';

  @override
  String get pilgrimageSectionTitle => 'The Sacred Journey';

  @override
  String get pilgrimageSectionSubtitle =>
      'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'The Fifth Pillar of Islam';

  @override
  String get hajjCardDescription =>
      'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle => 'Step-by-step guide to the grand pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'The Lesser Pilgrimage';

  @override
  String get umrahCardDescription =>
      'A deeply rewarding spiritual journey that can be performed at any time of year';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Step-by-step guide to the lesser pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Rituals & Steps';

  @override
  String get pilgrimageImportantNotesTitle => 'Important Notes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Mark as complete';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.';

  @override
  String get hajjIntro =>
      'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.';
}

/// The translations for English, as used in the United States (`en_US`).
class AppLocalizationsEnUs extends AppLocalizationsEn {
  AppLocalizationsEnUs() : super('en_US');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Choose your language';

  @override
  String get languageSelectSub => 'You can change this later in Settings';

  @override
  String get actionContinue => 'Continue';

  @override
  String get languageSuggestedHeader => 'Suggested';

  @override
  String get languageAllHeader => 'All languages';

  @override
  String get languageSuggestedBadge => 'Suggested';

  @override
  String get languageSearchHint => 'Search…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daily Guidance';

  @override
  String get categorySlot02 => 'Iman & Trust';

  @override
  String get categorySlot03 => 'Prayer Reflection';

  @override
  String get categorySlot04 => 'Patience Hope';

  @override
  String get categorySlot05 => 'Seek Forgiveness';

  @override
  String get categorySlot06 => 'Mercy Compassion';

  @override
  String get categorySlot07 => 'Faith Strength';

  @override
  String get categorySlot08 => 'Grateful Heart';

  @override
  String get categorySlot09 => 'Life Purpose';

  @override
  String get categorySlot10 => 'Family Ties';

  @override
  String get categorySlot11 => 'Inner Peace';

  @override
  String get categorySlot12 => 'Prophet Wisdom';

  @override
  String get categorySlot13 => 'Good Character';

  @override
  String get categorySlot14 => 'Resist Temptation';

  @override
  String get categorySlot15 => 'Evening Dhikr';

  @override
  String get categoryCustom => 'Personal Reflection';

  @override
  String get dhikrMeaningSubhanallah => 'Glory be to Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All praise is due to Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is the Greatest';

  @override
  String get quranVerseHeartAtRest =>
      'Verily, in the remembrance of Allah do hearts find rest.';

  @override
  String get promptHint => 'Tap a category for Islamic guidance and reflection';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get settingsLanguage => 'Language settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get chooseLanguage => 'Choose your language';

  @override
  String get continueCta => 'Continue';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '$count word',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Options';

  @override
  String get newCta => 'New';

  @override
  String get actionsTitle => 'What would you like to do?';

  @override
  String get copy => 'Copy';

  @override
  String get share => 'Share';

  @override
  String get close => 'Close';

  @override
  String get copiedToast => 'Copied to clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Couldn\'t generate a new reply';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDo you want to try again?';
  }

  @override
  String get cancelCta => 'Cancel';

  @override
  String get retryCta => 'Try again';

  @override
  String get authTitle => 'Create your account';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get signInEmail => 'Sign in with Email';

  @override
  String get upgradeWithApple => 'Continue with Apple';

  @override
  String get mustAccept =>
      'You must accept the Terms and acknowledge the Privacy Policy.';

  @override
  String get termsLabel => 'I accept the Terms of Service';

  @override
  String get privacyLabel => 'I have read the Privacy Policy';

  @override
  String get marketingOptIn => 'I agree to receive news and offers';

  @override
  String get openTerms => 'Terms of Service';

  @override
  String get openPrivacy => 'Privacy Policy';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Guest mode';

  @override
  String get signedIn => 'Signed in';

  @override
  String get upgradeHint =>
      'Save your reflections across devices by creating an account.';

  @override
  String get upgradeWithGoogle => 'Continue with Google';

  @override
  String get signOut => 'Sign out';

  @override
  String get snackUpgraded => 'Account upgraded with Google ✅';

  @override
  String get snackSignedIn => 'Signed in with Google ✅';

  @override
  String get snackSignedOut => 'Signed out';

  @override
  String get snackSignedInApple => 'Signed in with Apple ✅';

  @override
  String get snackSignedInGoogle => 'Signed in with Google ✅';

  @override
  String get snackUpgradedApple => 'Account upgraded with Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account upgraded with Google ✅';

  @override
  String get historyTitle => 'Previous reflections';

  @override
  String get historyOpenCta => 'Previous reflections';

  @override
  String get historyEmpty => 'No saved reflections yet.';

  @override
  String get historyDeleteTitle => 'Delete reflection?';

  @override
  String get historyDeleteBody =>
      'This will permanently remove the selected item.';

  @override
  String get deleteCta => 'Delete';

  @override
  String get historyButton => 'Previous Reflections';

  @override
  String get historyEmptyTitle => 'No reflections yet';

  @override
  String get historyEmptyBody =>
      'Generate something first — your saved items will appear here.';

  @override
  String get historyDelete => 'Delete';

  @override
  String get footerTitle => 'With Wilaya, Iman and Sabr';

  @override
  String get footerSubtitle => 'One prayer at a time';

  @override
  String get genericErrorSnack =>
      'Something went wrong — please try again in a moment.';

  @override
  String get upgradeAccountCta =>
      'Save your reflections across devices – create an account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get exportData => 'Export my data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Easy tiger 🐯\nAyara needs a moment before the next one…';

  @override
  String get rateDailyLimit =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.';

  @override
  String get rateGraceCreditsExhausted =>
      'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya unlocks premium features, future categories, and a special badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Your reflections are empty right now. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Couldn\'t check your reflections: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Something went wrong while checking your reflections.';

  @override
  String get aiFallbackGeneric =>
      'Something went wrong — please try again in a moment.';

  @override
  String get limitSectionTitle => 'Reflections';

  @override
  String get limitTodayLabel => 'Usage';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Remaining reflections: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Loading…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Reflections';

  @override
  String get aiLimitSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get creditsSectionTitle => 'Reflections';

  @override
  String get creditsUsageLabel => 'Usage';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Remaining reflections: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Loading…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Reflections';

  @override
  String get creditsSubtitle =>
      'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflections used';
  }

  @override
  String get settingsDeleteTitle => 'Delete account';

  @override
  String get settingsDeleteDescription =>
      'Permanently delete your account and all associated data.';

  @override
  String get settingsDeleteButtonLabel => 'Delete my account';

  @override
  String get settingsDeleteDialogTitle => 'Delete account?';

  @override
  String get settingsDeleteDialogBody =>
      'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.';

  @override
  String get settingsDeleteDialogCancel => 'Cancel';

  @override
  String get settingsDeleteDialogConfirm => 'Delete';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter reflections used';

  @override
  String get settingsFreeLimitUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Starter reflections used';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.';

  @override
  String get deviceBoundError =>
      'This device is already linked to another account. Please sign in with the original account.';

  @override
  String get premiumTitle => 'Wilaya mode';

  @override
  String get premiumSubtitleBasic => 'Unlock the full Ayara experience.';

  @override
  String get premiumSubtitlePremium =>
      'You\'re on Wilaya. Need more reflections?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Current plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflections: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Purchases are not available right now.';

  @override
  String get premiumSignInToPurchase =>
      'Sign in to buy reflections or unlock Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restore purchases';

  @override
  String get premiumProcessing => 'Processing…';

  @override
  String get premiumRestoreHintTitle =>
      'Already purchased Wilaya or reflections on this device or another one?';

  @override
  String get premiumRestoreHintBody =>
      'Restore your purchases if they\'re not showing up.';

  @override
  String get premiumBuyCredits200 => 'Buy 200 reflections';

  @override
  String get premiumBuyCredits400 => 'Buy 400 reflections';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade to Wilaya mode';

  @override
  String get premiumTopupHint =>
      'With Wilaya, you can top up with extra reflections whenever you need.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.';

  @override
  String get premiumBenefitsBasic =>
      'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.';

  @override
  String get premiumBenefitsPremium =>
      'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.';

  @override
  String get premiumButtonBecomePremium => 'Unlock Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Add 1000 reflections';

  @override
  String get premiumBadge => 'Wilaya active';

  @override
  String get premiumLoadingStore => 'Loading store…';

  @override
  String get premiumProductNotAvailable =>
      'This product isn\'t available in the store yet. Please try again later.';

  @override
  String get premiumPurchaseError =>
      'Something went wrong with the purchase. Please try again.';

  @override
  String get premiumBuyCredits100 => 'Add 100 reflections';

  @override
  String get premiumFeatureLocked => 'Unlock Wilaya to access this feature.';

  @override
  String get lockedCategoriesHint =>
      'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.';

  @override
  String get freePlanBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get freePlanBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get graceBlockedTitle => 'You\'ve used up your starter reflections';

  @override
  String get graceBlockedBody =>
      'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'See Wilaya options below';

  @override
  String get rateGuestMustSignIn =>
      'Sign in to use Ayara and your reflections.';

  @override
  String get guestNoCreditsTitle => 'Guest mode';

  @override
  String get guestNoCreditsBody =>
      'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.';

  @override
  String get guestDialogContinue => 'Continue';

  @override
  String get guestDialogLoginInstead => 'Log in instead';

  @override
  String get optionalLabel => 'optional';

  @override
  String get accountDeleteSuccessTitle => 'Account deleted';

  @override
  String get accountDeleteSuccessBody =>
      'Your account and associated data have been deleted successfully.';

  @override
  String get accountDeleteSuccessClose => 'Close';

  @override
  String get accountDeleteErrorTitle => 'Could not delete account';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-authentication was cancelled. Please sign in again and retry deletion.';

  @override
  String get accountDeleteReauthRequired =>
      'Account deletion requires a recent login. Please sign out, sign in again, and retry.';

  @override
  String get settingsDeletePermanentWarning =>
      'This action is permanent and cannot be undone. All data associated with your account will be deleted.';

  @override
  String get dailyGraceTitle => 'Daily Guidance';

  @override
  String get dailyGraceScriptureLabel => 'VERSE OF THE DAY';

  @override
  String get dailyGraceSaintLabel => 'SCHOLAR OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'EVENING REFLECTION';

  @override
  String get dailyGraceCopiedToast => 'Verse copied to clipboard';

  @override
  String get locationConsentLabel =>
      'Allow Ayara to use my location for Qibla direction and prayer times';

  @override
  String get locationConsentHint =>
      'Used only for these features. Your location is never shared or stored.';

  @override
  String get askPageTitle => 'Ask Ayara';

  @override
  String get askPageDescription =>
      'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Type your question here…';

  @override
  String get askPageSubmitCta => 'Ask';

  @override
  String get askPageInputEmptyError => 'Please write a question first.';

  @override
  String get askResultYourQuestion => 'Your question';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Facing Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signal is weak. Move outdoors and tap Retry.';

  @override
  String get qiblaRetry => 'Retry';

  @override
  String get qiblaTitle => 'Qibla Direction';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km to Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Location required';

  @override
  String get qiblaLocationNeededBody =>
      'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.';

  @override
  String get qiblaOpenSettings => 'Open Settings';

  @override
  String get qiblaCompassLoading => 'Finding your position…';

  @override
  String get qiblaTowardMecca => 'Toward Makkah';

  @override
  String get prayerTimesTitle => 'Prayer Times';

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
  String get prayerTimesLocationNeededTitle => 'Location required';

  @override
  String get prayerTimesLocationNeededBody =>
      'Allow location access so Ayara can calculate accurate prayer times for your city.';

  @override
  String get prayerTimesNextLabel => 'Next';

  @override
  String get prayerTimesDoneLabel => 'Done';

  @override
  String get monthlyPrayerTimesTitle => 'Monthly Prayer Times';

  @override
  String get monthlyPrayerTimesViewButton => 'View Full Month';

  @override
  String get monthlyPrayerTimesNextMonth => 'Next month';

  @override
  String get monthlyPrayerTimesDayHeader => 'Day';

  @override
  String get sharePrayerTimes => 'Share prayer times';

  @override
  String get notificationsSectionTitle => 'Notifications';

  @override
  String get notificationsSectionSubtitle =>
      'Prayer reminders, calendar events & more';

  @override
  String get dailyReflectionReminderTitle => 'Daily Reflection';

  @override
  String get dailyReflectionReminderDescription =>
      'A gentle daily reminder to open Ayara and connect with your faith.';

  @override
  String get dailyReflectionReminderEnable => 'Enable daily reminder';

  @override
  String get dailyReflectionReminderTimeLabel => 'Reminder time';

  @override
  String get prayerNotificationsTitle => 'Prayer Reminders';

  @override
  String get prayerNotificationsDescription =>
      'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.';

  @override
  String get prayerNotificationsEnable => 'Enable prayer reminders';

  @override
  String get prayerNotificationsOpenSettings => 'Open notification settings';

  @override
  String get prayerNotificationsDenied => 'Notifications are disabled';

  @override
  String get prayerNotificationsDeniedHint =>
      'Go to Settings and allow notifications for Ayara to receive prayer time reminders.';

  @override
  String get notificationsConsentLabel =>
      'Allow notifications for prayer times';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Dawn Prayer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Midday Prayer';

  @override
  String get prayerNotifBodyDhuhr =>
      'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Afternoon Prayer';

  @override
  String get prayerNotifBodyAsr =>
      'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sunset Prayer';

  @override
  String get prayerNotifBodyMaghrib =>
      'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Night Prayer';

  @override
  String get prayerNotifBodyIsha =>
      'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.';

  @override
  String get outOfReflectionsBannerText => 'You\'ve used all your reflections';

  @override
  String get outOfReflectionsBannerCta => 'Get more';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tap the circle to count';

  @override
  String get dhikrResetButton => 'Reset';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'You have completed 100 remembrances of Allah. May they be a light for your heart.';

  @override
  String get disclaimerTitle => 'About this app\'s guidance';

  @override
  String get disclaimerBody =>
      'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.';

  @override
  String get disclaimerClose => 'I understand';

  @override
  String get disclaimerInfoTooltip => 'About this app\'s guidance';

  @override
  String get disclaimerSettingsSubtitle =>
      'For general informational purposes only. Tap to read the full disclaimer.';

  @override
  String get disclaimerSectionHeader => 'Guidance disclaimer';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflect';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'TODAY';

  @override
  String get dashboardComingUp => 'Coming up';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Quick Access';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Guidance';

  @override
  String get quickActionPrayerTimes => 'Prayer Times';

  @override
  String get askAyaraTitle => 'Ask Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ask any Islamic question and receive a thoughtful, guided answer.';

  @override
  String get askAyaraHint => 'e.g. What is the significance of Ramadan?';

  @override
  String get askAyaraSubmit => 'Ask';

  @override
  String get wisdomOfTheDayTitle => 'Wisdom of the Day';

  @override
  String get calendarScreenTitle => 'Islamic Calendar';

  @override
  String get calendarUpcomingOccasions => 'Upcoming Occasions';

  @override
  String get calendarOccasionRemindersTitle => 'Occasion Reminders';

  @override
  String get calendarOccasionRemindersHint =>
      'Notified the evening before each occasion';

  @override
  String get calendarNotifPermissionDenied =>
      'Notification permission denied. Enable it in your device settings.';

  @override
  String get calendarNoEvents => 'No upcoming events found.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'TODAY';

  @override
  String get calendarCountdownTomorrow => 'TOMORROW';

  @override
  String calendarCountdownDays(int days) {
    return 'in $days days';
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
      'Days of Muharram — remember Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — days of mourning and reflection';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — forty days of Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'The road to Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — the dawn of revelation';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — the month of the Quran';

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
  String get duasSearchHint => 'Search duas, ziyarat…';

  @override
  String get duasFilterAll => 'All';

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
  String get duasEmpty => 'No duas found.';

  @override
  String get duaCategoryDaily => 'Daily';

  @override
  String get duaCategoryWeekly => 'Weekly';

  @override
  String get duaCategoryOccasions => 'Occasions';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Birth';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Occasion';

  @override
  String get duaCopyTooltip => 'Copy translation';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Translation';

  @override
  String get duaAskAiLabel => 'Ask Ayara to explain this dua';

  @override
  String get duaAskAiLockedLabel => 'Ask Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara explanations are available for Wilaya members. Upgrade in Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ask Ayara about \"$name\" — coming soon!';
  }

  @override
  String get duaCopiedToast => 'Dua copied to clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is the Greatest';

  @override
  String get tasbihAlhamdulillahMeaning => 'All praise belongs to Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glory be to Allah';

  @override
  String get tasbihResetTooltip => 'Reset';

  @override
  String get tasbihCompleteTitle => 'Tasbih Complete';

  @override
  String get tasbihCompleteMessage => 'May Allah accept your dhikr.';

  @override
  String get tasbihTapHint => 'Tap anywhere to count';

  @override
  String get tasbihatScreenTitle => 'Prayer Guide';

  @override
  String get tasbihatScreenSubtitle => 'THE PRAYER GLORIFICATIONS';

  @override
  String get tasbihatScreenDescription =>
      'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recited during the 3rd & 4th rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.';

  @override
  String get tasbihatArba3Translation =>
      'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation Complete';

  @override
  String get tasbihatArba3CompleteMessage =>
      'May your prayer be accepted — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tap after each recitation';

  @override
  String get tasbihatZahraSubtitle => 'After every prayer · 100 beads';

  @override
  String get tasbihatZahraOriginLabel => 'Origin';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ Counter';

  @override
  String get tasbihatDuasTitle => 'RECOMMENDED DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'After completing your prayer';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'After every obligatory prayer';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'After every prayer · seals all supplications';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'After every prayer · for the Imam of our time';

  @override
  String get tasbihatDuaFarajSource => 'Taught by Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ of Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'After Maghrib & Isha · especially recommended';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.';

  @override
  String get tasbihFatimaGiftPre => 'A gift from the Prophet';

  @override
  String get tasbihFatimaGiftPost => 'recited after every prayer';

  @override
  String get prayerTrackerTitle => 'PRAYER TRACKER';

  @override
  String get prayerTrackerPrayed => 'Prayed';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get prayerTrackerAllComplete =>
      'All prayers completed today. May Allah accept.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completed today';

  @override
  String get dhikrTrackerNotDoneToday => 'Not done today';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count day streak';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ Reminder';

  @override
  String get dhikrReminderDescription =>
      'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Enable Tasbīḥ reminder';

  @override
  String get dhikrReminderTimeLabel => 'Reminder time';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daily Hadith';

  @override
  String get hadithLabelArabic => 'ARABIC';

  @override
  String get hadithLabelTranslation => 'TRANSLATION';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Share This Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Previous';

  @override
  String get hadithNavNext => 'Next';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam';

  @override
  String get imamLabelBorn => 'Born';

  @override
  String get imamLabelMartyrdom => 'Martyrdom';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAPHY';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'The Final Prophet';

  @override
  String get imamRoleInfallible => 'The Infallible';

  @override
  String get imamOrdinal1 => '1st Imam';

  @override
  String get imamOrdinal2 => '2nd Imam';

  @override
  String get imamOrdinal3 => '3rd Imam';

  @override
  String get imamOrdinal4 => '4th Imam';

  @override
  String get imamOrdinal5 => '5th Imam';

  @override
  String get imamOrdinal6 => '6th Imam';

  @override
  String get imamOrdinal7 => '7th Imam';

  @override
  String get imamOrdinal8 => '8th Imam';

  @override
  String get imamOrdinal9 => '9th Imam';

  @override
  String get imamOrdinal10 => '10th Imam';

  @override
  String get imamOrdinal11 => '11th Imam';

  @override
  String get imamOrdinal12 => '12th Imam';

  @override
  String get duaAudioScreenTitle => 'Listen to Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Select a dua to listen. Tap the tile to play or pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio for this dua will be available in an upcoming update.';

  @override
  String get duaAudioClose => 'Close';

  @override
  String get duaAudioError =>
      'Could not load audio. Please check your connection.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitted by';

  @override
  String get duaAudioMetaOccasion => 'Occasion';

  @override
  String get duaAudioMetaDuration => 'Duration';

  @override
  String get quickActionDailyHadith => 'Daily Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Listen';

  @override
  String get quickActionTasbihat => 'Prayer Guide';

  @override
  String get pilgrimageSectionTitle => 'The Sacred Journey';

  @override
  String get pilgrimageSectionSubtitle =>
      'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'The Fifth Pillar of Islam';

  @override
  String get hajjCardDescription =>
      'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim';

  @override
  String get hajjScreenTitle => 'Hajj Guide';

  @override
  String get hajjScreenSubtitle => 'Step-by-step guide to the grand pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'The Lesser Pilgrimage';

  @override
  String get umrahCardDescription =>
      'A deeply rewarding spiritual journey that can be performed at any time of year';

  @override
  String get umrahScreenTitle => 'Umrah Guide';

  @override
  String get umrahScreenSubtitle =>
      'Step-by-step guide to the lesser pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Rituals & Steps';

  @override
  String get pilgrimageImportantNotesTitle => 'Important Notes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Mark as complete';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia Pilgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.';

  @override
  String get hajjIntro =>
      'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.';
}
