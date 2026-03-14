// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Επιλέξτε τη γλώσσα σας';

  @override
  String get languageSelectSub =>
      'Μπορείτε να το αλλάξετε αργότερα στις Ρυθμίσεις';

  @override
  String get actionContinue => 'Συνέχεια';

  @override
  String get languageSuggestedHeader => 'Προτεινόμενο';

  @override
  String get languageAllHeader => 'Όλες οι γλώσσες';

  @override
  String get languageSuggestedBadge => 'Προτεινόμενο';

  @override
  String get languageSearchHint => 'Αναζήτηση…';

  @override
  String get planBasic => 'Στάνταρ';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Καθημερινή Καθοδήγηση';

  @override
  String get categorySlot02 => 'Πίστη & Εμπιστοσύνη';

  @override
  String get categorySlot03 => 'Προσευχή Στοχασμός';

  @override
  String get categorySlot04 => 'Υπομονή Ελπίδα';

  @override
  String get categorySlot05 => 'Ζητήστε Συγγνώμη';

  @override
  String get categorySlot06 => 'Έλεος Συμπάθεια';

  @override
  String get categorySlot07 => 'Πίστη Δύναμη';

  @override
  String get categorySlot08 => 'Ευγνώμον Καρδιά';

  @override
  String get categorySlot09 => 'Σκοπός της Ζωής';

  @override
  String get categorySlot10 => 'Οικογενειακές Σχέσεις';

  @override
  String get categorySlot11 => 'Εσωτερική Ειρήνη';

  @override
  String get categorySlot12 => 'Σοφία του Προφήτη';

  @override
  String get categorySlot13 => 'Καλός Χαρακτήρας';

  @override
  String get categorySlot14 => 'Αντιστάθμιση Πειρασμού';

  @override
  String get categorySlot15 => 'Βραδινή Dhikr';

  @override
  String get categoryCustom => 'Προσωπικός Στοχασμός';

  @override
  String get dhikrMeaningSubhanallah => 'Δόξα στον Αλλάχ';

  @override
  String get dhikrMeaningAlhamdulillah => 'Πάσα δόξα ανήκει στον Αλλάχ';

  @override
  String get dhikrMeaningAllahuAkbar => 'Ο Αλλάχ είναι ο Μέγιστος';

  @override
  String get quranVerseHeartAtRest =>
      'Ιδού, στη μνήμη του Αλλάχ, οι καρδιές βρίσκουν ηρεμία.';

  @override
  String get promptHint =>
      'Αγγίξτε μια κατηγορία για ισλαμική καθοδήγηση και στοχασμό';

  @override
  String get currentLanguage => 'Τρέχουσα γλώσσα';

  @override
  String get settingsLanguage => 'Ρυθμίσεις γλώσσας';

  @override
  String get settingsTitle => 'Ρυθμίσεις';

  @override
  String get chooseLanguage => 'Επιλέξτε τη γλώσσα σας';

  @override
  String get continueCta => 'Συνέχεια';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count λέξεις',
      one: '$count λέξη',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Επιλογές';

  @override
  String get newCta => 'Νέα';

  @override
  String get actionsTitle => 'Τι θα ήθελες να κάνεις;';

  @override
  String get copy => 'Αντιγραφή';

  @override
  String get share => 'Κοινοποίηση';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get copiedToast => 'Αντιγράφηκε στο πρόχειρο';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle =>
      'Δεν ήταν δυνατή η δημιουργία νέας απάντησης';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nΘέλετε να δοκιμάσετε ξανά;';
  }

  @override
  String get cancelCta => 'Ακύρωση';

  @override
  String get retryCta => 'Δοκιμάστε ξανά';

  @override
  String get authTitle => 'Δημιουργήστε το λογαριασμό σας';

  @override
  String get continueAsGuest => 'Συνέχεια ως επισκέπτης';

  @override
  String get signInGoogle => 'Σύνδεση με Google';

  @override
  String get signInApple => 'Σύνδεση με Apple';

  @override
  String get signInEmail => 'Σύνδεση με Email';

  @override
  String get upgradeWithApple => 'Συνέχεια με Apple';

  @override
  String get mustAccept =>
      'Πρέπει να δεχθείτε τους Όρους και να αναγνωρίσετε την Πολιτική Απορρήτου.';

  @override
  String get termsLabel => 'Αποδέχομαι τους Όρους Παροχής Υπηρεσιών';

  @override
  String get privacyLabel => 'Έχω διαβάσει την Πολιτική Απορρήτου';

  @override
  String get marketingOptIn => 'Συμφωνώ να λαμβάνω ειδήσεις και προσφορές';

  @override
  String get openTerms => 'Όροι Παροχής Υπηρεσιών';

  @override
  String get openPrivacy => 'Πολιτική Απορρήτου';

  @override
  String get accountSection => 'Λογαριασμός';

  @override
  String get guestMode => 'Λειτουργία επισκέπτη';

  @override
  String get signedIn => 'Συνδεδεμένος';

  @override
  String get upgradeHint =>
      'Αποθηκεύστε τους στοχασμούς σας σε όλες τις συσκευές δημιουργώντας ένα λογαριασμό.';

  @override
  String get upgradeWithGoogle => 'Συνέχεια με Google';

  @override
  String get signOut => 'Αποσύνδεση';

  @override
  String get snackUpgraded => 'Ο λογαριασμός αναβαθμίστηκε με Google ✅';

  @override
  String get snackSignedIn => 'Συνδεδεμένος με Google ✅';

  @override
  String get snackSignedOut => 'Αποσυνδεδεμένος';

  @override
  String get snackSignedInApple => 'Συνδεδεμένος με Apple ✅';

  @override
  String get snackSignedInGoogle => 'Συνδεδεμένος με Google ✅';

  @override
  String get snackUpgradedApple => 'Ο λογαριασμός αναβαθμίστηκε με Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Ο λογαριασμός αναβαθμίστηκε με Google ✅';

  @override
  String get historyTitle => 'Προηγούμενοι στοχασμοί';

  @override
  String get historyOpenCta => 'Προηγούμενοι στοχασμοί';

  @override
  String get historyEmpty => 'Δεν υπάρχουν αποθηκευμένοι στοχασμοί ακόμα.';

  @override
  String get historyDeleteTitle => 'Διαγραφή στοχασμού;';

  @override
  String get historyDeleteBody =>
      'Αυτό θα αφαιρέσει μόνιμα το επιλεγμένο στοιχείο.';

  @override
  String get deleteCta => 'Διαγραφή';

  @override
  String get historyButton => 'Προηγούμενοι Στοχασμοί';

  @override
  String get historyEmptyTitle => 'Καμία αντανάκλαση ακόμα';

  @override
  String get historyEmptyBody =>
      'Δημιουργήστε κάτι πρώτα — τα αποθηκευμένα στοιχεία θα εμφανιστούν εδώ.';

  @override
  String get historyDelete => 'Διαγραφή';

  @override
  String get footerTitle => 'Με Wilaya, Iman και Sabr';

  @override
  String get footerSubtitle => 'Μια προσευχή κάθε φορά';

  @override
  String get genericErrorSnack => 'Κάτι πήγε στραβά — δοκιμάστε ξανά σε λίγο.';

  @override
  String get upgradeAccountCta =>
      'Αποθηκεύστε τους στοχασμούς σας σε όλες τις συσκευές – δημιουργήστε ένα λογαριασμό';

  @override
  String get deleteAccount => 'Διαγραφή λογαριασμού';

  @override
  String get exportData => 'Εξαγωγή των δεδομένων μου';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Εύκολα τίγρη 🐯\nΤο Ayara χρειάζεται λίγο χρόνο πριν το επόμενο…';

  @override
  String get rateDailyLimit =>
      'Τελείωσαν οι στοχασμοί σας για τώρα.\nΛάβετε περισσότερους στοχασμούς ή αναβαθμίστε σε Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Χρησιμοποιήσατε όλους τους στοχασμούς σας.\nΤοποθετήστε ή αναβαθμίστε σε Wilaya για να συνεχίσετε.';

  @override
  String get rateGraceCreditsExhausted =>
      'Τελείωσαν οι στοχασμοί σας για τώρα.\nΛάβετε περισσότερους στοχασμούς ή αναβαθμίστε σε Wilaya.';

  @override
  String get premiumDescription =>
      'Το Wilaya ξεκλειδώνει premium χαρακτηριστικά, μελλοντικές κατηγορίες και ένα ειδικό badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Οι στοχασμοί σας είναι κενοί αυτή τη στιγμή. Σχέδιο: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Δεν ήταν δυνατός ο έλεγχος των στοχασμών σας: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Κάτι πήγε στραβά κατά τον έλεγχο των στοχασμών σας.';

  @override
  String get aiFallbackGeneric => 'Κάτι πήγε στραβά — δοκιμάστε ξανά σε λίγο.';

  @override
  String get limitSectionTitle => 'Στοχασμοί';

  @override
  String get limitTodayLabel => 'Χρήση';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Υπολειπόμενοι στοχασμοί: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Σχέδιο: $plan';
  }

  @override
  String get limitLoadingLabel => 'Φόρτωση…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Στοχασμοί';

  @override
  String get aiLimitSubtitle =>
      'Κάθε απάντηση χρησιμοποιεί 1 στοχασμό. Το Standard περιλαμβάνει starter στοχασμούς. Το Wilaya ξεκλειδώνει premium κατηγορίες και επιτρέπει top-ups.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total στοχασμοί χρησιμοποιήθησαν';
  }

  @override
  String get creditsSectionTitle => 'Στοχασμοί';

  @override
  String get creditsUsageLabel => 'Χρήση';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Υπολειπόμενοι στοχασμοί: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Σχέδιο: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Φόρτωση…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Στοχασμοί';

  @override
  String get creditsSubtitle =>
      'Κάθε απάντηση χρησιμοποιεί 1 στοχασμό. Το Standard περιλαμβάνει starter στοχασμούς. Το Wilaya ξεκλειδώνει premium κατηγορίες και επιτρέπει top-ups.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total στοχασμοί χρησιμοποιήθησαν';
  }

  @override
  String get settingsDeleteTitle => 'Διαγραφή λογαριασμού';

  @override
  String get settingsDeleteDescription =>
      'Διαγράψτε μόνιμα το λογαριασμό σας και όλα τα σχετικά δεδομένα.';

  @override
  String get settingsDeleteButtonLabel => 'Διαγραφή του λογαριασμού μου';

  @override
  String get settingsDeleteDialogTitle => 'Διαγραφή λογαριασμού;';

  @override
  String get settingsDeleteDialogBody =>
      'Αυτή η ενέργεια είναι μόνιμη και δεν μπορεί να αναιρεθεί.\n\nΌλες οι συνομιλίες, το ιστορικό και οι πληροφορίες λογαριασμού σας θα διαγραφούν.';

  @override
  String get settingsDeleteDialogCancel => 'Ακύρωση';

  @override
  String get settingsDeleteDialogConfirm => 'Διαγραφή';

  @override
  String get settingsFreeLimitUsedTitle => 'Starter στοχασμοί χρησιμοποιήθησαν';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Οι starter στοχασμοί για αυτή τη συσκευή έχουν χρησιμοποιηθεί. Αναβαθμίστε σε Wilaya ή αγοράστε περισσότερους στοχασμούς για να συνεχίσετε.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Starter στοχασμοί χρησιμοποιήθησαν';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Οι starter στοχασμοί για αυτή τη συσκευή έχουν χρησιμοποιηθεί. Αναβαθμίστε σε Wilaya ή αγοράστε περισσότερους στοχασμούς για να συνεχίσετε.';

  @override
  String get deviceBoundError =>
      'Αυτή η συσκευή είναι ήδη συνδεδεμένη με άλλο λογαριασμό. Παρακαλώ συνδεθείτε με τον αρχικό λογαριασμό.';

  @override
  String get premiumTitle => 'Λειτουργία Wilaya';

  @override
  String get premiumSubtitleBasic => 'Ξεκλειδώστε την πλήρη εμπειρία Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Είστε στο Wilaya. Χρειάζεστε περισσότερους στοχασμούς;';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Τρέχον σχέδιο: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Στοχασμοί: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Οι αγορές δεν είναι διαθέσιμες αυτή τη στιγμή.';

  @override
  String get premiumSignInToPurchase =>
      'Συνδεθείτε για να αγοράσετε στοχασμούς ή ξεκλειδώστε το Wilaya.';

  @override
  String get premiumRestorePurchases => 'Επαναφορά αγορών';

  @override
  String get premiumProcessing => 'Επεξεργασία…';

  @override
  String get premiumRestoreHintTitle =>
      'Έχετε ήδη αγοράσει Wilaya ή στοχασμούς σε αυτή τη συσκευή ή σε άλλη;';

  @override
  String get premiumRestoreHintBody =>
      'Επαναφέρετε τις αγορές σας αν δεν εμφανίζονται.';

  @override
  String get premiumBuyCredits200 => 'Αγορά 200 στοχασμών';

  @override
  String get premiumBuyCredits400 => 'Αγορά 400 στοχασμών';

  @override
  String get premiumBecomePremiumOneTime => 'Αναβάθμιση σε λειτουργία Wilaya';

  @override
  String get premiumTopupHint =>
      'Με το Wilaya, μπορείτε να προσθέσετε επιπλέον στοχασμούς όποτε χρειάζεστε.';

  @override
  String get premiumUpgradeCta => 'Αναβάθμιση';

  @override
  String get premiumRequiredForCategory =>
      'Αυτή η κατηγορία είναι διαθέσιμη μόνο για χρήστες Wilaya. Αναβαθμίστε στις Ρυθμίσεις για να ξεκλειδώσετε όλο το premium περιεχόμενο.';

  @override
  String get premiumBenefitsBasic =>
      'Ξεκλειδώστε το Wilaya για να λάβετε επιπλέον στοχασμούς, πρόσβαση σε premium κατηγορίες και συνέχεια όποτε χρειάζεστε καθοδήγηση.';

  @override
  String get premiumBenefitsPremium =>
      'Είστε σε λειτουργία Wilaya. Αν σας τελειώσουν, προσθέστε κάποιους επιπλέον στοχασμούς και συνεχίστε χωρίς διακοπές.';

  @override
  String get premiumButtonBecomePremium => 'Ξεκλειδώστε το Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Προσθήκη 1000 στοχασμών';

  @override
  String get premiumBadge => 'Wilaya ενεργό';

  @override
  String get premiumLoadingStore => 'Φόρτωση καταστήματος…';

  @override
  String get premiumProductNotAvailable =>
      'Αυτό το προϊόν δεν είναι ακόμα διαθέσιμο στο κατάστημα. Δοκιμάστε ξανά αργότερα.';

  @override
  String get premiumPurchaseError =>
      'Κάτι πήγε στραβά με την αγορά. Δοκιμάστε ξανά.';

  @override
  String get premiumBuyCredits100 => 'Προσθήκη 100 στοχασμών';

  @override
  String get premiumFeatureLocked =>
      'Ξεκλειδώστε το Wilaya για πρόσβαση σε αυτή τη δυνατότητα.';

  @override
  String get lockedCategoriesHint =>
      'Ορισμένες κατηγορίες είναι δεσμευμένες για μέλη Wilaya. Ξεκλειδώστε τες για να εξερευνήσετε κάθε στοχασμό στο ταξίδι σας.';

  @override
  String get freePlanBlockedTitle => 'Εξαντλήσατε τους starter στοχασμούς σας';

  @override
  String get freePlanBlockedBody =>
      'Είστε σε σχέδιο Standard με starter στοχασμούς και έχετε φτάσει το όριο. Για να συνεχίσετε — και να ξεκλειδώσετε premium κατηγορίες — αναβαθμίστε σε Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Δείτε επιλογές Wilaya παρακάτω';

  @override
  String get graceBlockedTitle => 'Εξαντλήσατε τους starter στοχασμούς σας';

  @override
  String get graceBlockedBody =>
      'Είστε σε σχέδιο Standard με starter στοχασμούς και έχετε φτάσει το όριο. Για να συνεχίσετε — και να ξεκλειδώσετε premium κατηγορίες — αναβαθμίστε σε Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Δείτε επιλογές Wilaya παρακάτω';

  @override
  String get rateGuestMustSignIn =>
      'Συνδεθείτε για να χρησιμοποιήσετε το Ayara και τους στοχασμούς σας.';

  @override
  String get guestNoCreditsTitle => 'Λειτουργία επισκέπτη';

  @override
  String get guestNoCreditsBody =>
      'Ως επισκέπτης, μπορείτε να περιηγηθείτε την εφαρμογή, αλλά δεν μπορείτε να χρησιμοποιήσετε στοχασμούς. Συνδεθείτε αργότερα στις Ρυθμίσεις για να χρησιμοποιήσετε στοχασμούς και ξεκλειδώσετε αγορές.';

  @override
  String get guestDialogContinue => 'Συνέχεια';

  @override
  String get guestDialogLoginInstead => 'Σύνδεση αντ\' αυτού';

  @override
  String get optionalLabel => 'προαιρετικό';

  @override
  String get accountDeleteSuccessTitle => 'Ο λογαριασμός διαγράφηκε';

  @override
  String get accountDeleteSuccessBody =>
      'Ο λογαριασμός σας και τα σχετικά δεδομένα έχουν διαγραφεί με επιτυχία.';

  @override
  String get accountDeleteSuccessClose => 'Κλείσιμο';

  @override
  String get accountDeleteErrorTitle =>
      'Δεν ήταν δυνατή η διαγραφή του λογαριασμού';

  @override
  String get accountDeleteErrorClose => 'ΟΚ';

  @override
  String get accountDeleteReauthCancelled =>
      'Η επαναπιστοποίηση ακυρώθηκε. Παρακαλώ συνδεθείτε ξανά και δοκιμάστε ξανά τη διαγραφή.';

  @override
  String get accountDeleteReauthRequired =>
      'Η διαγραφή του λογαριασμού απαιτεί πρόσφατη σύνδεση. Παρακαλώ αποσυνδεθείτε, συνδεθείτε ξανά και δοκιμάστε ξανά.';

  @override
  String get settingsDeletePermanentWarning =>
      'Αυτή η ενέργεια είναι μόνιμη και δεν μπορεί να αναιρεθεί. Όλα τα δεδομένα που σχετίζονται με το λογαριασμό σας θα διαγραφούν.';

  @override
  String get dailyGraceTitle => 'Καθημερινή Καθοδήγηση';

  @override
  String get dailyGraceScriptureLabel => 'ΣΤΙΧΟΣ ΤΗΣ ΗΜΕΡΑΣ';

  @override
  String get dailyGraceSaintLabel => 'ΜΕΛΕΤΗΤΗΣ ΤΗΣ ΕΒΔΟΜΑΔΑΣ';

  @override
  String get dailyGraceReflectionLabel => 'ΒΡΑΔΙΝΗ ΣΚΕΨΗ';

  @override
  String get dailyGraceCopiedToast => 'Στίχος αντιγράφηκε στο πρόχειρο';

  @override
  String get locationConsentLabel =>
      'Επιτρέψτε στο Ayara να χρησιμοποιήσει την τοποθεσία μου για κατεύθυνση Qibla και χρόνους προσευχής';

  @override
  String get locationConsentHint =>
      'Χρησιμοποιείται μόνο για αυτές τις δυνατότητες. Η τοποθεσία σας δεν κοινοποιείται ή αποθηκεύεται ποτέ.';

  @override
  String get askPageTitle => 'Ρωτήστε το Ayara';

  @override
  String get askPageDescription =>
      'Ρωτήστε οτιδήποτε σχετικά με την πίστη, την προσευχή, τη ζωή ή τη δοσομετρία του Ισλάμ και λάβετε καθοδήγηση ριζωμένη στο Κοράνι και τα δίδαγμα του Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Πληκτρολογήστε τη δικική σας ερώτηση εδώ…';

  @override
  String get askPageSubmitCta => 'Ρώτηση';

  @override
  String get askPageInputEmptyError => 'Παρακαλώ γράψτε πρώτα μια ερώτηση.';

  @override
  String get askResultYourQuestion => 'Η ερώτησή σας';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Κοιτάξτε προς την Μέκκα';

  @override
  String get qiblaCompassInstruction =>
      'Περιστρέψτε το τηλέφωνό σας μέχρι η χρυσή βελόνα να δείχνει προς τα πάνω.\nΑυτή η κατεύθυνση δείχνει το Qibla (Μέκκα).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Το σήμα GPS είναι ασθενές. Μετακινηθείτε στο ύπαιθρο και αγγίξτε Δοκιμή ξανά.';

  @override
  String get qiblaRetry => 'Δοκιμή ξανά';

  @override
  String get qiblaTitle => 'Κατεύθυνση Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km χλμ προς τη Μέκκα';
  }

  @override
  String get qiblaLocationNeededTitle => 'Απαιτείται τοποθεσία';

  @override
  String get qiblaLocationNeededBody =>
      'Επιτρέψτε πρόσβαση στη θέση ώστε το Ayara να υπολογίσει την κατεύθυνση της Καάβας στη Μέκκα από όπου κι αν βρίσκεστε.';

  @override
  String get qiblaOpenSettings => 'Άνοιγμα Ρυθμίσεων';

  @override
  String get qiblaCompassLoading => 'Εύρεση της θέσης σας…';

  @override
  String get qiblaTowardMecca => 'Προς τη Μέκκα';

  @override
  String get prayerTimesTitle => 'Χρόνοι Προσευχής';

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
  String get prayerTimesLocationNeededTitle => 'Απαιτείται τοποθεσία';

  @override
  String get prayerTimesLocationNeededBody =>
      'Επιτρέψτε πρόσβαση στη θέση ώστε το Ayara να υπολογίσει ακριβείς χρόνους προσευχής για την πόλη σας.';

  @override
  String get prayerTimesNextLabel => 'Επόμενο';

  @override
  String get prayerTimesDoneLabel => 'Ολοκληρώθηκε';

  @override
  String get monthlyPrayerTimesTitle => 'Μηνιαίες Χρόνοι Προσευχής';

  @override
  String get monthlyPrayerTimesViewButton => 'Προβολή Πλήρους Μήνα';

  @override
  String get monthlyPrayerTimesNextMonth => 'Επόμενος μήνας';

  @override
  String get monthlyPrayerTimesDayHeader => 'Ημέρα';

  @override
  String get sharePrayerTimes => 'Κοινή χρήση χρόνων προσευχής';

  @override
  String get notificationsSectionTitle => 'Ειδοποιήσεις';

  @override
  String get notificationsSectionSubtitle =>
      'Υπενθυμίσεις προσευχής, γεγονότα ημερολογίου και άλλα';

  @override
  String get dailyReflectionReminderTitle => 'Καθημερινή Σκέψη';

  @override
  String get dailyReflectionReminderDescription =>
      'Μια ήπια καθημερινή υπενθύμιση για να ανοίξετε το Ayara και να συνδεθείτε με την πίστη σας.';

  @override
  String get dailyReflectionReminderEnable =>
      'Ενεργοποίηση καθημερινής υπενθύμισης';

  @override
  String get dailyReflectionReminderTimeLabel => 'Χρόνος υπενθύμισης';

  @override
  String get prayerNotificationsTitle => 'Υπενθυμίσεις Προσευχής';

  @override
  String get prayerNotificationsDescription =>
      'Λάβετε μια ήπια υπενθύμιση πριν από κάθε χρόνο προσευχής για να παραμείνετε συνδεδεμένοι καθ\' όλη τη διάρκεια της ημέρας.';

  @override
  String get prayerNotificationsEnable => 'Ενεργοποίηση υπενθυμίσεων προσευχής';

  @override
  String get prayerNotificationsOpenSettings =>
      'Άνοιγμα ρυθμίσεων ειδοποιήσεων';

  @override
  String get prayerNotificationsDenied =>
      'Οι ειδοποιήσεις είναι απενεργοποιημένες';

  @override
  String get prayerNotificationsDeniedHint =>
      'Μεταβείτε στις Ρυθμίσεις και επιτρέψτε τις ειδοποιήσεις για το Ayara για να λάβετε υπενθυμίσεις χρόνου προσευχής.';

  @override
  String get notificationsConsentLabel =>
      'Επιτρέψτε ειδοποιήσεις για χρόνους προσευχής';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Προσευχή της Αυγής';

  @override
  String get prayerNotifBodyFajr =>
      'Το Fajr είναι η προσευχή των πρωινών του Ahl al-Bayt. Ο Ιμάμης Αλί (AS) είπε: Φυλάξτε την προσευχή του φωτός όπως φυλάσσετε το πιο πολύτιμο κατάθεμα. Σηκωθείτε, καθαρίστε τον εαυτό σας και σταθείτε μπροστά στον Αλλάχ.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Προσευχή του Μεσημεριού';

  @override
  String get prayerNotifBodyDhuhr =>
      'Οι Ιμάμιδες του Ahl al-Bayt εκτιμούσαν κάθε στιγμή ανάμνησης. Παύστε την ημέρα σας, συνδυάστε Dhuhr με Asr αν είναι απαραίτητο, και επιστρέψτε την καρδιά σας στον Αλλάχ.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Προσευχή του Απογεύματος';

  @override
  String get prayerNotifBodyAsr =>
      'Φυλάξτε την προσευχή, γιατί είναι η διαθήκη ανάμεσά σας και στον Αλλάχ. Έχει έρθει η ώρα του Asr — μην την αφήσετε να περάσει χωρίς ανάμνηση.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Προσευχή του Ηλιοβασιλέματος';

  @override
  String get prayerNotifBodyMaghrib =>
      'Ο ήλιος έχει δύσει — μια στιγμή που ο Ahl al-Bayt θεωρούσαν ιερή για δέησης. Προσφέρετε Maghrib και ανοίξτε τα χέρια σας στον Αλλάχ σε δέηση πριν ξημερώσει η νύχτα.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Προσευχή της Νύχτας';

  @override
  String get prayerNotifBodyIsha =>
      'Τερματίστε την ημέρα σας στη συντροφιά του Αλλάχ. Οι Ιμάμιδες ενθάρρυναν τη Salat al-Layl μετά το Isha — αλλά πρώτα, ολοκληρώστε το Isha και κλείστε την ημέρα με τη μνήμη Του.';

  @override
  String get outOfReflectionsBannerText =>
      'Χρησιμοποιήσατε όλους τους στοχασμούς';

  @override
  String get outOfReflectionsBannerCta => 'Λάβετε περισσότερα';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Αγγίξτε τον κύκλο για να μετρήσετε';

  @override
  String get dhikrResetButton => 'Επαναφορά';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Έχετε ολοκληρώσει 100 αναμνήσεις του Αλλάχ. Ας είναι φως για την καρδιά σας.';

  @override
  String get disclaimerTitle => 'Σχετικά με την καθοδήγηση αυτής της εφαρμογής';

  @override
  String get disclaimerBody =>
      'Το Ayara παρέχει ισλαμικές αντανακλάσεις, υπενθυμίσεις και πνευματικό περιεχόμενο για να υποστηρίξει το προσωπικό σας ταξίδι πίστης, ριζωμένο στο Κοράνι και τα δίδαγμα του Ahl al-Bayt. Αυτό το περιεχόμενο προσφέρεται αποκλειστικά για γενικές πληροφοριακές και εμπνευστικές σκοπούς.\n\nΤο Ayara δεν αντικαθιστά τη δοσομετρία.\nΗ καθοδήγηση σε αυτή την εφαρμογή δεν αποτελεί υποκατάστατο ενός ειδικευμένου ισλαμικού μελετητή, marja\', ή διδασκάλου με θεολογική κατάρτιση. Στο Σία Ισλάμ, η θρησκευτική καθοδήγηση είναι ριζωμένη στο σχολείο του Ja\'fari fiqh και την παράδοση της ακολουθίας ενός ζωντανού Marja\' (πηγή εξομοίωσης) — ενός ειδικευμένου νομικού του οποίου οι αποφάσεις καθοδηγούν τους πιστούς στη θρησκευτική πρακτική. Αν έχετε ερωτήσεις σχετικά με θρησκευτικές αποφάσεις, halal και haram ζητήματα, ή προσωπικές θρησκευτικές υποχρεώσεις, παρακαλώ ζητήστε συμβουλή από έναν αρμόδιο Marja\' ή έναν μελετητή στη δική σας κοινότητα.\n\nΑυτή η εφαρμογή δεν εκδίδει θρησκευτικές αποφάσεις.\nΤο Ayara δεν κάνει αποφασιστικές προσδιορισμούς για ζητήματα fiqh ή προσωπικές θρησκευτικές υποχρεώσεις. Τίποτα εδώ δεν θα πρέπει να αντιμετωπίζεται ως fatwa ή δεσμευτική θρησκευτική οδηγία.\n\nΤο κεντρικό ρόλο του Ahl al-Bayt.\nΣτο Σία Ισλάμ, ο Προφήτης Μουχάμμαντ ﷺ και ο καθαρισμένος οικογένειά του — ο Ahl al-Bayt — είναι οι αρμόδιες οδηγοί της ισλαμικής κοινότητας μετά το Κοράνι. Οι δώδεκα Ιμάμιδες του Ahl al-Bayt είναι οι θεϊκά προορισμένοι ερμηνευτές της ισλαμικής διδασκαλίας. Το περιεχόμενο σε αυτή την εφαρμογή αντικατοπτρίζει αυτή την παράδοση και προσπαθεί να τη τιμήσει πιστά.\n\nΖητήματα κοινότητας.\nΑυτή η εφαρμογή στοχεύει να ενθαρρύνει την ενασχόλησή σας με την πίστη ενώ σέβεται βαθύτερα το ζωτικό ρόλο του τοπικού μουσουλμανικού κέντρου, ισλαμικού κέντρου και θρησκευτικής κοινότητας. Σας ενθαρρύνουμε να παραμένετε συνδεδεμένοι με και να μαθαίνετε από ειδικευμένους δασκάλους κοντά σας.';

  @override
  String get disclaimerClose => 'Κατανοώ';

  @override
  String get disclaimerInfoTooltip =>
      'Σχετικά με την καθοδήγηση αυτής της εφαρμογής';

  @override
  String get disclaimerSettingsSubtitle =>
      'Για γενικές πληροφοριακές σκοπούς μόνο. Αγγίξτε για να διαβάσετε τη πλήρη αποποίηση ευθύνης.';

  @override
  String get disclaimerSectionHeader => 'Αποποίηση υπεύθυνότητας καθοδήγησης';

  @override
  String get navHome => 'Αρχική σελίδα';

  @override
  String get navReflect => 'Στοχασμός';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Ημερολόγιο';

  @override
  String get dashboardToday => 'ΣΗΜΕΡΑ';

  @override
  String get dashboardComingUp => 'Επερχόμενο';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ημέρες',
      one: 'ημέρα',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Γρήγορη Πρόσβαση';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Καθοδήγηση';

  @override
  String get quickActionPrayerTimes => 'Χρόνοι Προσευχής';

  @override
  String get askAyaraTitle => 'Ρωτήστε το Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ρωτήστε οποιαδήποτε ισλαμική ερώτηση και λάβετε μια σκεπτική, καθοδηγημένη απάντηση.';

  @override
  String get askAyaraHint => 'π.χ. Ποια είναι η σημασία του Ramadan;';

  @override
  String get askAyaraSubmit => 'Ρώτηση';

  @override
  String get wisdomOfTheDayTitle => 'Σοφία της Ημέρας';

  @override
  String get calendarScreenTitle => 'Ισλαμικό Ημερολόγιο';

  @override
  String get calendarUpcomingOccasions => 'Επερχόμενες Περιστάσεις';

  @override
  String get calendarOccasionRemindersTitle => 'Υπενθυμίσεις Περιστάσεων';

  @override
  String get calendarOccasionRemindersHint =>
      'Ενημέρωση το βράδυ πριν από κάθε περίσταση';

  @override
  String get calendarNotifPermissionDenied =>
      'Άδεια ειδοποίησης αρνήθηκε. Ενεργοποιήστε τη στις ρυθμίσεις της συσκευής σας.';

  @override
  String get calendarNoEvents => 'Δεν βρέθησαν επερχόμενα γεγονότα.';

  @override
  String get calendarAddToPhone => 'Προσθήκη στο ημερολόγιο του τηλεφώνου';

  @override
  String get calendarAddedToPhone => 'Προστέθηκε στο ημερολόγιο';

  @override
  String get calendarCountdownToday => 'ΣΗΜΕΡΑ';

  @override
  String get calendarCountdownTomorrow => 'ΑΥΡΙΟ';

  @override
  String calendarCountdownDays(int days) {
    return 'σε $days ημέρες';
  }

  @override
  String get calendarAH => 'ΑΗ';

  @override
  String get calendarMonthJan => 'Ιαν';

  @override
  String get calendarMonthFeb => 'Φεβ';

  @override
  String get calendarMonthMar => 'Μάρ';

  @override
  String get calendarMonthApr => 'Απρ';

  @override
  String get calendarMonthMay => 'Μάι';

  @override
  String get calendarMonthJun => 'Ιουν';

  @override
  String get calendarMonthJul => 'Ιουλ';

  @override
  String get calendarMonthAug => 'Αύγ';

  @override
  String get calendarMonthSep => 'Σεπ';

  @override
  String get calendarMonthOct => 'Οκτ';

  @override
  String get calendarMonthNov => 'Νοε';

  @override
  String get calendarMonthDec => 'Δεκ';

  @override
  String get calendarSeasonMuharramEarly =>
      'Ημέρες του Muharram — ενθυμηθείτε τη Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — ημέρες πένθους και αναλογισμού';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — σαράντα ημέρες του Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Ο δρόμος προς το Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — ο χάραυγος της αποκάλυψης';

  @override
  String get calendarSeasonMidShaban =>
      'Μέσο Sha\'ban — γενέθλια του Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — ο μήνας του Κορανίου';

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
  String get duasSearchHint => 'Αναζήτηση duas, ziyarat…';

  @override
  String get duasFilterAll => 'Όλα';

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
  String get duasEmpty => 'Δεν βρέθησαν duas.';

  @override
  String get duaCategoryDaily => 'Καθημερινά';

  @override
  String get duaCategoryWeekly => 'Εβδομαδιαία';

  @override
  String get duaCategoryOccasions => 'Περιστάσεις';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Γέννηση';

  @override
  String get eventTypeMartyrdom => 'Μαρτύριο';

  @override
  String get eventTypeOccasion => 'Περίσταση';

  @override
  String get duaCopyTooltip => 'Αντιγραφή μετάφρασης';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Μετάφραση';

  @override
  String get duaAskAiLabel => 'Ζητήστε από το Ayara να εξηγήσει αυτή τη dua';

  @override
  String get duaAskAiLockedLabel => 'Ζητήστε από το Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Οι εξηγήσεις του Ayara είναι διαθέσιμες για μέλη Wilaya. Αναβαθμίστε στις Ρυθμίσεις.';

  @override
  String duaAiComingSoon(String name) {
    return 'Ρωτήστε το Ayara σχετικά με το \"$name\" — έρχεται σύντομα!';
  }

  @override
  String get duaCopiedToast => 'Dua αντιγράφηκε στο πρόχειρο.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Ο Αλλάχ είναι ο Μέγιστος';

  @override
  String get tasbihAlhamdulillahMeaning => 'Πάσα δόξα ανήκει στον Αλλάχ';

  @override
  String get tasbihSubhanallahMeaning => 'Δόξα στον Αλλάχ';

  @override
  String get tasbihResetTooltip => 'Επαναφορά';

  @override
  String get tasbihCompleteTitle => 'Tasbih Ολοκληρώθηκε';

  @override
  String get tasbihCompleteMessage => 'Ας δεχθεί ο Αλλάχ το dhikr σας.';

  @override
  String get tasbihTapHint => 'Αγγίξτε οπουδήποτε για να μετρήσετε';

  @override
  String get tasbihatScreenTitle => 'Οδηγός Προσευχής';

  @override
  String get tasbihatScreenSubtitle => 'ΟΙ ΔΟΞΟΛΟΓΙΕΣ ΤΗΣ ΠΡΟΣΕΥΧΗΣ';

  @override
  String get tasbihatScreenDescription =>
      'Ένας πλήρης οδηγός για τις δοξολογίες που απαγγέλλονται κατά και μετά τις καθημερινές προσευχές — ακολουθώντας την παράδοση του Ahl al-Bayt (α).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Απαγγέλλονται κατά το 3ο & 4ο rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Στη Σία δοσομετρία, τα Tasbiḥāt al-Arbaʿa αντικαθιστούν τη Surah al-Fatiha στο 3ο και 4ο rakʿah του Dhuhr, Asr, Maghrib και Isha. Είναι υποχρεωτικό (wājib) να την απαγγείλει μόνο μία φορά, και συνιστάται (mustaḥabb) να την απαγγείλει τρεις φορές.';

  @override
  String get tasbihatArba3Translation =>
      'Δόξα στον Αλλάχ · Πάσα δόξα ανήκει στον Αλλάχ\nΔεν υπάρχει θεός αλλά ο Αλλάχ · Ο Αλλάχ είναι ο Μέγιστος';

  @override
  String get tasbihatArba3CompleteTitle => 'Απαγγελία Ολοκληρώθηκε';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Ας γίνει δεκτή η προσευχή σας — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Αγγίξτε μετά από κάθε απαγγελία';

  @override
  String get tasbihatZahraSubtitle => 'Μετά από κάθε προσευχή · 100 χάντρες';

  @override
  String get tasbihatZahraOriginLabel => 'Προέλευση';

  @override
  String get tasbihatZahraHadith =>
      'Η Κυρία Fatimat al-Zahra (sa) ζήτησε από τον Προφήτη ﷺ έναν υπηρέτη. Είπε: \"Δε θα σας κατευθύνω σε κάτι καλύτερο; Απαγγείλατε Subḥānallāh 33 φορές, Alḥamdulillāh 33 φορές και Allāhu Akbar 34 φορές μετά από κάθε προσευχή. Αυτό είναι καλύτερο για σας από έναν υπηρέτη.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Άνοιγμα Tasbīḥ Μετρητή';

  @override
  String get tasbihatDuasTitle => 'ΣΥΝΙΣΤΩΜΕΝΟΙ DUAS';

  @override
  String get tasbihatDuasSubtitle => 'Μετά την ολοκλήρωση της προσευχής σας';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Μετά από κάθε υποχρεωτική προσευχή';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Όποιος απαγγέλλει το Āyat al-Kursī μετά από κάθε υποχρεωτική προσευχή, τίποτα δεν το αχωρίζει από το Παράδεισο εκτός από το θάνατο. Ο Imam al-Bāqir (a) είπε ότι είναι ανάμεσα στα μεγαλύτερα στίχια στο Κοράνι.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Μετά από κάθε προσευχή · σφραγίζει όλες τις δεήσεις';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Η αποστολή ευχών στον Προφήτη ﷺ και τη καθαρισμένη οικογένειά του (Āl Muḥammad) συνιστάται να σφραγίσει κάθε δέηση. Ο Imam al-Ṣādiq (a) είπε: \"Κάθε δέηση είναι αιωρούμενη μέχρι να αποστείλετε ṣalawāt στον Muḥammad και τη δική του οικογένεια.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Μετά από κάθε προσευχή · για τον Imam του χρόνου μας';

  @override
  String get tasbihatDuaFarajSource =>
      'Διδάχθηκε από τον Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Μια δέηση για την επανεμφάνιση του Imam al-Mahdī (af), του δωδέκατου Imam, που διδάχθηκε από τον πατέρα του. Απαγγέλλεται καθημερινά από τους Σία πιστούς μετά από κάθε προσευχή ως ένα έργο αφοσίωσης στον ζώντα Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ της Κυρίας Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Μετά από Maghrib & Isha · ιδιαίτερα συνιστάται';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Ο Imam al-Bāqir (a) είπε ότι η απαγγελία του Tasbīḥ al-Zahrā μετά το Isha πριν κοιμηθείτε είναι καλύτερη από 1000 rakʿahs προαιρετικής προσευχής. Το φως του ανέρχεται στους ουρανούς.';

  @override
  String get tasbihFatimaGiftPre => 'Ένα δώρο από τον Προφήτη';

  @override
  String get tasbihFatimaGiftPost => 'απαγγέλλονται μετά από κάθε προσευχή';

  @override
  String get prayerTrackerTitle => 'ΠΑΡΑΚΟΛΟΥΘΗΤΗΣ ΠΡΟΣΕΥΧΗΣ';

  @override
  String get prayerTrackerPrayed => 'Προσευχή';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ημερήσια σειρά';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Όλες οι προσευχές ολοκληρώθησαν σήμερα. Ας δεχθεί ο Αλλάχ.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Ολοκληρώθηκε σήμερα';

  @override
  String get dhikrTrackerNotDoneToday => 'Δεν έγινε σήμερα';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ημερήσια σειρά';
  }

  @override
  String get dhikrReminderTitle => 'Υπενθύμιση Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Μια ήπια καθημερινή υπενθύμιση για την απαγγελία του Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Ενεργοποίηση υπενθύμισης Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Χρόνος υπενθύμισης';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Καθημερινό Hadith';

  @override
  String get hadithLabelArabic => 'ΑΡΑΒΙΚΑ';

  @override
  String get hadithLabelTranslation => 'ΜΕΤΑΦΡΑΣΗ';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Κοινή χρήση αυτού του Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nΜέσω Ayara';
  }

  @override
  String get hadithNavPrevious => 'Προηγούμενο';

  @override
  String get hadithNavNext => 'Επόμενο';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Οι 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'Ο Προφήτης, η Κυρία Fatima και οι Δώδεκα Imams — οι άξεπτες οδηγοί του Ισλάμ';

  @override
  String get imamLabelBorn => 'Γεννημένος';

  @override
  String get imamLabelMartyrdom => 'Μαρτύριο';

  @override
  String get imamLabelStatus => 'Κατάσταση';

  @override
  String get imamSectionBiography => 'ΒΙΟΓΡΑΦΙΑ';

  @override
  String get imamSectionFamousSaying => 'ΔΙΆΣΗΜΗ ΦΡΑΣΗ';

  @override
  String get imamRoleProphet => 'Ο Τελικός Προφήτης';

  @override
  String get imamRoleInfallible => 'Η Άξεπτη';

  @override
  String get imamOrdinal1 => '1ος Imam';

  @override
  String get imamOrdinal2 => '2ος Imam';

  @override
  String get imamOrdinal3 => '3ος Imam';

  @override
  String get imamOrdinal4 => '4ος Imam';

  @override
  String get imamOrdinal5 => '5ος Imam';

  @override
  String get imamOrdinal6 => '6ος Imam';

  @override
  String get imamOrdinal7 => '7ος Imam';

  @override
  String get imamOrdinal8 => '8ος Imam';

  @override
  String get imamOrdinal9 => '9ος Imam';

  @override
  String get imamOrdinal10 => '10ος Imam';

  @override
  String get imamOrdinal11 => '11ος Imam';

  @override
  String get imamOrdinal12 => '12ος Imam';

  @override
  String get duaAudioScreenTitle => 'Ακούστε Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Επιλέξτε ένα dua για να ακούσετε. Αγγίξτε το πλακίδιο για αναπαραγωγή ή παύση.';

  @override
  String get duaAudioComingSoonMessage =>
      'Ο ήχος για αυτό το dua θα είναι διαθέσιμος σε μια επερχόμενη ενημέρωση.';

  @override
  String get duaAudioClose => 'Κλείσιμο';

  @override
  String get duaAudioError =>
      'Δεν ήταν δυνατή η φόρτωση του ήχου. Ελέγξτε τη σύνδεσή σας.';

  @override
  String get duaAudioMetaTransmittedBy => 'Μεταδόθηκε από';

  @override
  String get duaAudioMetaOccasion => 'Περίσταση';

  @override
  String get duaAudioMetaDuration => 'Διάρκεια';

  @override
  String get quickActionDailyHadith => 'Καθημερινό Hadith';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Ακούστε';

  @override
  String get quickActionTasbihat => 'Οδηγός Προσευχής';

  @override
  String get pilgrimageSectionTitle => 'Το Ιερό Ταξίδι';

  @override
  String get pilgrimageSectionSubtitle =>
      'Ολοκληρωμένοι οδηγοί για Hajj & Umrah — η προσκύνηση στο Ιερό Σπίτι του Αλλάχ στη Μέκκα';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Ο Πέμπτος Στύλος του Ισλάμ';

  @override
  String get hajjCardDescription =>
      'Η μεγάλη ετήσια προσκύνηση — υποχρεωτική μία φορά στη ζωή για κάθε ικανό Μουσουλμάνο';

  @override
  String get hajjScreenTitle => 'Οδηγός Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Βήμα προς βήμα οδηγός της μεγάλης προσκύνησης';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Η Μικρή Προσκύνηση';

  @override
  String get umrahCardDescription =>
      'Ένα βαθιά ανταmoιβάμενο πνευματικό ταξίδι που μπορεί να πραγματοποιηθεί ανά πάσα ώρα του χρόνου';

  @override
  String get umrahScreenTitle => 'Οδηγός Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Βήμα προς βήμα οδηγός της μικρής προσκύνησης';

  @override
  String get pilgrimageStepsTitle => 'Τελετές & Βήματα';

  @override
  String get pilgrimageImportantNotesTitle => 'Σημαντικές Σημειώσεις';

  @override
  String get pilgrimageDuaTitle => 'Δουά για αυτό το βήμα';

  @override
  String get pilgrimageJafariNoteTitle => 'Σημείωση Φιqh Τζαφάρι';

  @override
  String get pilgrimageComplete => '✓ Ολοκληρώθηκε';

  @override
  String get pilgrimageMarkDone => 'Σημειώστε ως ολοκληρωμένο';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done από $total βήματα';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes λεπτά';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Σία Προσκυνητές';

  @override
  String get pilgrimageShiaNoteBody =>
      'Οι Σία προσκυνητές παραδοσιακά ταξιδεύουν επίσης στη Μεδίνα για να επισκεφθούν το μαυσολείο του Προφήτη Muhammad (SAW) στο Masjid al-Nabawi, και τους τάφους των Imams στο Jannat al-Baqi. Αυτές οι επισκέψεις φέρουν τεράστια πνευματική σημασία και θεωρούνται ένα αναπόσπαστο μέρος του ταξιδιού για τους περισσότερους Σία Μουσουλμάνους.';

  @override
  String get hajjIntro =>
      'Το Hajj είναι ο πέμπτος στύλος του Ισλάμ, υποχρεωτικό μία φορά στη ζωή για κάθε Μουσουλμάνο που είναι σωματικά και χρηματικά ικανός. Πραγματοποιούμενο κατά το μήνα Dhul Hijjah, ξαναζει τα βήματα του Προφήτη Ibrahim (AS), του γιού του Ismail (AS) και της Κυρίας Hajar. Για τους Σία Μουσουλμάνους, το Hajj περιλαμβάνει επίσης την βαθιά ευλογία της επίσκεψης στα τελευταία σημεία αναπαύσεως του Προφήτη (SAW) και του Ahlul Bayt στη Μεδίνα.';

  @override
  String get umrahIntro =>
      'Το Umrah είναι η μικρή προσκύνηση στη Μέκκα και, σε αντίθεση με το Hajj, μπορεί να πραγματοποιηθεί ανά πάσα ώρα του χρόνου. Ενώ δεν είναι υποχρεωτικό, έχει τεράστια πνευματική ανταmoιβή και θεωρείται μια ιδιαίτερα συνιστώμενη πράξη λατρείας. Μοιράζεται αρκετές τελετές με το Hajj αλλά είναι μικρότερη, αποτελούμενη από τέσσερα κύρια τελετουργήματα.';
}
