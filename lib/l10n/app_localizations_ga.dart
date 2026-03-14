// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Roghnaigh do theanga';

  @override
  String get languageSelectSub =>
      'Is féidir leat é seo a athrú níos déanaí sna Socruithe';

  @override
  String get actionContinue => 'Lean ar aghaidh';

  @override
  String get languageSuggestedHeader => 'Molta';

  @override
  String get languageAllHeader => 'Gach teanga';

  @override
  String get languageSuggestedBadge => 'Molta';

  @override
  String get languageSearchHint => 'Cuardaigh…';

  @override
  String get planBasic => 'Caighdeánach';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Treoir Laethúil';

  @override
  String get categorySlot02 => 'Iman agus Iontaobhas';

  @override
  String get categorySlot03 => 'Machnamh ar an bPaidir';

  @override
  String get categorySlot04 => 'Foighne agus Dóchas';

  @override
  String get categorySlot05 => 'Iarr Maithiúnas';

  @override
  String get categorySlot06 => 'Trócaire agus Comhbhá';

  @override
  String get categorySlot07 => 'Neart an Chreidimh';

  @override
  String get categorySlot08 => 'Croí Buíoch';

  @override
  String get categorySlot09 => 'Cuspóir na Beatha';

  @override
  String get categorySlot10 => 'Ceangail Teaghlaigh';

  @override
  String get categorySlot11 => 'Síocháin Istigh';

  @override
  String get categorySlot12 => 'Eagna an Fháidh';

  @override
  String get categorySlot13 => 'Dea-charachtar';

  @override
  String get categorySlot14 => 'Cuir i gcoinne an Chatha';

  @override
  String get categorySlot15 => 'Dhikr na Tráthnóna';

  @override
  String get categoryCustom => 'Machnamh Pearsanta';

  @override
  String get dhikrMeaningSubhanallah => 'Glóir do Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Is le Allah gach moladh';

  @override
  String get dhikrMeaningAllahuAkbar => 'Is é Allah is Mó';

  @override
  String get quranVerseHeartAtRest =>
      'Go deimhin, i gcuimhne Allah a fhaigheann croíthe suaimhneas.';

  @override
  String get promptHint =>
      'Tapáil catagóir le haghaidh treorach agus machnaimh Ioslamaigh';

  @override
  String get currentLanguage => 'Teanga reatha';

  @override
  String get settingsLanguage => 'Socruithe teanga';

  @override
  String get settingsTitle => 'Socruithe';

  @override
  String get chooseLanguage => 'Roghnaigh do theanga';

  @override
  String get continueCta => 'Lean ar aghaidh';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count focal',
      one: '$count focal',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Roghanna';

  @override
  String get newCta => 'Nua';

  @override
  String get actionsTitle => 'Cad ba mhaith leat a dhéanamh?';

  @override
  String get copy => 'Cóipeáil';

  @override
  String get share => 'Comhroinn';

  @override
  String get close => 'Dún';

  @override
  String get copiedToast => 'Cóipeáilte chuig an ngearrthaisce';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Níorbh fhéidir freagra nua a ghiniúint';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nAr mhaith leat triail eile a bhaint as?';
  }

  @override
  String get cancelCta => 'Cealaigh';

  @override
  String get retryCta => 'Bain triail eile as';

  @override
  String get authTitle => 'Cruthaigh do chuntas';

  @override
  String get continueAsGuest => 'Lean ar aghaidh mar aoi';

  @override
  String get signInGoogle => 'Sínigh isteach le Google';

  @override
  String get signInApple => 'Sínigh isteach le Apple';

  @override
  String get signInEmail => 'Sínigh isteach le ríomhphost';

  @override
  String get upgradeWithApple => 'Lean ar aghaidh le Apple';

  @override
  String get mustAccept =>
      'Ní mór duit glacadh leis na Téarmaí agus admháil a thabhairt don Pholasaí Príobháideachais.';

  @override
  String get termsLabel => 'Glacaim leis na Téarmaí Seirbhíse';

  @override
  String get privacyLabel => 'Tá an Polasaí Príobháideachais léite agam';

  @override
  String get marketingOptIn => 'Aontaím nuacht agus tairiscintí a fháil';

  @override
  String get openTerms => 'Téarmaí Seirbhíse';

  @override
  String get openPrivacy => 'Polasaí Príobháideachais';

  @override
  String get accountSection => 'Cuntas';

  @override
  String get guestMode => 'Mód aoi';

  @override
  String get signedIn => 'Sínithe isteach';

  @override
  String get upgradeHint =>
      'Sábháil do mhachnaimh ar fud gléasanna trí chuntas a chruthú.';

  @override
  String get upgradeWithGoogle => 'Lean ar aghaidh le Google';

  @override
  String get signOut => 'Sínigh amach';

  @override
  String get snackUpgraded => 'Uasghrádaíodh an cuntas le Google ✅';

  @override
  String get snackSignedIn => 'Sínithe isteach le Google ✅';

  @override
  String get snackSignedOut => 'Sínithe amach';

  @override
  String get snackSignedInApple => 'Sínithe isteach le Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sínithe isteach le Google ✅';

  @override
  String get snackUpgradedApple => 'Uasghrádaíodh an cuntas le Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Uasghrádaíodh an cuntas le Google ✅';

  @override
  String get historyTitle => 'Machnaimh roimhe seo';

  @override
  String get historyOpenCta => 'Machnaimh roimhe seo';

  @override
  String get historyEmpty => 'Níl aon mhachnaimh sábháilte fós.';

  @override
  String get historyDeleteTitle => 'Scrios an machnamh?';

  @override
  String get historyDeleteBody => 'Bainfidh sé seo an mhír roghnaithe go buan.';

  @override
  String get deleteCta => 'Scrios';

  @override
  String get historyButton => 'Machnaimh Roimhe Seo';

  @override
  String get historyEmptyTitle => 'Níl aon mhachnaimh fós';

  @override
  String get historyEmptyBody =>
      'Gin rud éigin ar dtús — beidh do chuid míreanna sábháilte le feiceáil anseo.';

  @override
  String get historyDelete => 'Scrios';

  @override
  String get footerTitle => 'Le Wilaya, Iman agus Sabr';

  @override
  String get footerSubtitle => 'Paidir amháin ag an am';

  @override
  String get genericErrorSnack =>
      'Chuaigh rud éigin mícheart — bain triail eile as i gceann tamaill.';

  @override
  String get upgradeAccountCta =>
      'Sábháil do mhachnaimh ar fud gléasanna – cruthaigh cuntas';

  @override
  String get deleteAccount => 'Scrios cuntas';

  @override
  String get exportData => 'Easpórtáil mo chuid sonraí';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Go réidh 🐯\nTeastaíonn nóiméad ó Ayara roimh an gcéad cheann eile…';

  @override
  String get rateDailyLimit =>
      'Tá tú as machnaimh faoi láthair.\nFaigh tuilleadh machnaimh nó uasghrádaigh go Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'D\'úsáid tú do chuid machnaimh go léir.\nCuir leis nó uasghrádaigh go Wilaya chun leanúint ar aghaidh.';

  @override
  String get rateGraceCreditsExhausted =>
      'Tá tú as machnaimh faoi láthair.\nFaigh tuilleadh machnaimh nó uasghrádaigh go Wilaya.';

  @override
  String get premiumDescription =>
      'Díghlasálann Wilaya gnéithe préimhe, catagóirí amach anseo, agus suaitheantas speisialta.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tá do chuid machnaimh folamh faoi láthair. Plean: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Níorbh fhéidir do chuid machnaimh a sheiceáil: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Chuaigh rud éigin mícheart agus do chuid machnaimh á seiceáil.';

  @override
  String get aiFallbackGeneric =>
      'Chuaigh rud éigin mícheart — bain triail eile as i gceann tamaill.';

  @override
  String get limitSectionTitle => 'Machnaimh';

  @override
  String get limitTodayLabel => 'Úsáid';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Machnaimh fágtha: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plean: $plan';
  }

  @override
  String get limitLoadingLabel => 'Á lódáil…';

  @override
  String get limitLoadingLabelDescription =>
      'Taispeántar sa chárta machnaimh agus staitisticí úsáide á bhfáil.';

  @override
  String get aiLimitTitle => 'Machnaimh';

  @override
  String get aiLimitSubtitle =>
      'Úsáideann gach freagra 1 machnamh. Cuimsíonn an plean Caighdeánach machnaimh tosaigh. Díghlasálann Wilaya catagóirí préimhe agus cumasaíonn sé breis-líonadh.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total machnamh úsáidte';
  }

  @override
  String get creditsSectionTitle => 'Machnaimh';

  @override
  String get creditsUsageLabel => 'Úsáid';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Machnaimh fágtha: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plean: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Á lódáil…';

  @override
  String get creditsLoadingLabelDescription =>
      'Taispeántar agus staitisticí machnaimh á bhfáil.';

  @override
  String get creditsTitle => 'Machnaimh';

  @override
  String get creditsSubtitle =>
      'Úsáideann gach freagra 1 machnamh. Cuimsíonn an plean Caighdeánach machnaimh tosaigh. Díghlasálann Wilaya catagóirí préimhe agus cumasaíonn sé breis-líonadh.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total machnamh úsáidte';
  }

  @override
  String get settingsDeleteTitle => 'Scrios cuntas';

  @override
  String get settingsDeleteDescription =>
      'Scrios do chuntas agus na sonraí bainteacha go léir go buan.';

  @override
  String get settingsDeleteButtonLabel => 'Scrios mo chuntas';

  @override
  String get settingsDeleteDialogTitle => 'Scrios an cuntas?';

  @override
  String get settingsDeleteDialogBody =>
      'Tá an gníomh seo buan agus ní féidir é a chealú.\n\nScriosfar do chuid comhráite, stair agus eolas cuntais go léir.';

  @override
  String get settingsDeleteDialogCancel => 'Cealaigh';

  @override
  String get settingsDeleteDialogConfirm => 'Scrios';

  @override
  String get settingsFreeLimitUsedTitle => 'Machnaimh tosaigh úsáidte';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Úsáideadh na machnaimh tosaigh don ghléas seo. Uasghrádaigh go Wilaya nó ceannaigh tuilleadh machnaimh chun leanúint ar aghaidh.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Machnaimh tosaigh úsáidte';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Úsáideadh na machnaimh tosaigh don ghléas seo. Uasghrádaigh go Wilaya nó ceannaigh tuilleadh machnaimh chun leanúint ar aghaidh.';

  @override
  String get deviceBoundError =>
      'Tá an gléas seo nasctha le cuntas eile cheana féin. Sínigh isteach leis an gcuntas bunaidh, le do thoil.';

  @override
  String get premiumTitle => 'Mód Wilaya';

  @override
  String get premiumSubtitleBasic => 'Díghlasáil an t-eispéireas iomlán Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Tá tú ar Wilaya. An bhfuil tuilleadh machnaimh uait?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plean reatha: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Machnaimh: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Níl ceannacháin ar fáil faoi láthair.';

  @override
  String get premiumSignInToPurchase =>
      'Sínigh isteach chun machnaimh a cheannach nó Wilaya a dhíghlasáil.';

  @override
  String get premiumRestorePurchases => 'Athchóirigh ceannacháin';

  @override
  String get premiumProcessing => 'Á phróiseáil…';

  @override
  String get premiumRestoreHintTitle =>
      'Ar cheannaigh tú Wilaya nó machnaimh cheana ar an ngléas seo nó ar ghléas eile?';

  @override
  String get premiumRestoreHintBody =>
      'Athchóirigh do cheannacháin mura bhfuil siad le feiceáil.';

  @override
  String get premiumBuyCredits200 => 'Ceannaigh 200 machnamh';

  @override
  String get premiumBuyCredits400 => 'Ceannaigh 400 machnamh';

  @override
  String get premiumBecomePremiumOneTime => 'Uasghrádaigh go mód Wilaya';

  @override
  String get premiumTopupHint =>
      'Le Wilaya, is féidir leat breis machnaimh a chur leis aon uair a theastaíonn siad uait.';

  @override
  String get premiumUpgradeCta => 'Uasghrádaigh';

  @override
  String get premiumRequiredForCategory =>
      'Níl an chatagóir seo ar fáil ach d\'úsáideoirí Wilaya. Uasghrádaigh sna Socruithe chun gach ábhar préimhe a dhíghlasáil.';

  @override
  String get premiumBenefitsBasic =>
      'Díghlasáil Wilaya chun tuilleadh machnaimh a fháil, rochtain ar chatagóirí préimhe, agus leanúint ar aghaidh aon uair a theastaíonn treoir uait.';

  @override
  String get premiumBenefitsPremium =>
      'Tá tú i mód Wilaya. Má tá tú ag éirí íseal, cuir roinnt machnaimh breise leis agus lean ar aghaidh gan bhriseadh.';

  @override
  String get premiumButtonBecomePremium => 'Díghlasáil Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Cuir 1000 machnamh leis';

  @override
  String get premiumBadge => 'Wilaya gníomhach';

  @override
  String get premiumLoadingStore => 'Siopa á lódáil…';

  @override
  String get premiumProductNotAvailable =>
      'Níl an táirge seo ar fáil sa siopa fós. Bain triail eile as níos déanaí.';

  @override
  String get premiumPurchaseError =>
      'Chuaigh rud éigin mícheart leis an gceannachán. Bain triail eile as.';

  @override
  String get premiumBuyCredits100 => 'Cuir 100 machnamh leis';

  @override
  String get premiumFeatureLocked =>
      'Díghlasáil Wilaya chun an ghné seo a rochtain.';

  @override
  String get lockedCategoriesHint =>
      'Tá roinnt catagóirí curtha in áirithe do bhaill Wilaya. Díghlasáil iad chun gach machnamh ar do thuras a iniúchadh.';

  @override
  String get freePlanBlockedTitle =>
      'D\'úsáid tú do chuid machnaimh tosaigh go léir';

  @override
  String get freePlanBlockedBody =>
      'Tá tú ar an bplean Caighdeánach le machnaimh tosaigh, agus tá an teorainn sroichte agat. Chun leanúint ar aghaidh — agus catagóirí préimhe a dhíghlasáil — uasghrádaigh go Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Féach ar roghanna Wilaya thíos';

  @override
  String get graceBlockedTitle =>
      'D\'úsáid tú do chuid machnaimh tosaigh go léir';

  @override
  String get graceBlockedBody =>
      'Tá tú ar an bplean Caighdeánach le machnaimh tosaigh, agus tá an teorainn sroichte agat. Chun leanúint ar aghaidh — agus catagóirí préimhe a dhíghlasáil — uasghrádaigh go Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Féach ar roghanna Wilaya thíos';

  @override
  String get rateGuestMustSignIn =>
      'Sínigh isteach chun Ayara agus do chuid machnaimh a úsáid.';

  @override
  String get guestNoCreditsTitle => 'Mód aoi';

  @override
  String get guestNoCreditsBody =>
      'Mar aoi is féidir leat brabhsáil tríd an aip, ach ní féidir leat machnaimh a úsáid. Logáil isteach níos déanaí sna Socruithe chun machnaimh a úsáid agus ceannacháin a dhíghlasáil.';

  @override
  String get guestDialogContinue => 'Lean ar aghaidh';

  @override
  String get guestDialogLoginInstead => 'Logáil isteach ina ionad';

  @override
  String get optionalLabel => 'roghnach';

  @override
  String get accountDeleteSuccessTitle => 'Scriosadh an cuntas';

  @override
  String get accountDeleteSuccessBody =>
      'Scriosadh do chuntas agus na sonraí bainteacha go rathúil.';

  @override
  String get accountDeleteSuccessClose => 'Dún';

  @override
  String get accountDeleteErrorTitle => 'Níorbh fhéidir an cuntas a scriosadh';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Cealaíodh an fíordheimhniú arís. Sínigh isteach arís agus déan iarracht an scriosadh arís.';

  @override
  String get accountDeleteReauthRequired =>
      'Éilíonn scriosadh an chuntais logáil isteach le déanaí. Sínigh amach, sínigh isteach arís, agus bain triail eile as.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tá an gníomh seo buan agus ní féidir é a chealú. Scriosfar na sonraí go léir a bhaineann le do chuntas.';

  @override
  String get dailyGraceTitle => 'Treoir Laethúil';

  @override
  String get dailyGraceScriptureLabel => 'RANN AN LAE';

  @override
  String get dailyGraceSaintLabel => 'AN SAOI SEACHTAINE';

  @override
  String get dailyGraceReflectionLabel => 'MACHNAMH NA TRÁTHNÓNA';

  @override
  String get dailyGraceCopiedToast =>
      'Cóipeáladh an rann chuig an ngearrthaisce';

  @override
  String get locationConsentLabel =>
      'Ceadaigh do Ayara mo shuíomh a úsáid le haghaidh treo Qibla agus amanna paidir';

  @override
  String get locationConsentHint =>
      'Úsáidtear é seo do na gnéithe seo amháin. Ní roinntear ná ní stóráiltear do shuíomh riamh.';

  @override
  String get askPageTitle => 'Cuir ceist ar Ayara';

  @override
  String get askPageDescription =>
      'Cuir aon cheist faoi chreideamh, paidir, an saol nó cleachtas Ioslamach agus faigh treoir bunaithe ar an gQur\'an agus ar theagasc Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Clóscríobh do cheist anseo…';

  @override
  String get askPageSubmitCta => 'Fiafraigh';

  @override
  String get askPageInputEmptyError => 'Scríobh ceist ar dtús, le do thoil.';

  @override
  String get askResultYourQuestion => 'Do cheist';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Ag tabhairt aghaidh ar Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Cas do ghuthán go dtí go mbeidh an tsnáthaid órga ag pointeáil suas.\nPointeálann an treo sin chuig an Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Tá an comhartha GPS lag. Téigh amach agus tapáil Bain triail eile as.';

  @override
  String get qiblaRetry => 'Bain triail eile as';

  @override
  String get qiblaTitle => 'Treo an Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km go Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Tá suíomh ag teastáil';

  @override
  String get qiblaLocationNeededBody =>
      'Ceadaigh rochtain suímh ionas gur féidir le Ayara treo na Kaaba i Makkah a ríomh ó cibé áit ina bhfuil tú.';

  @override
  String get qiblaOpenSettings => 'Oscail Socruithe';

  @override
  String get qiblaCompassLoading => 'Do shuíomh á aimsiú…';

  @override
  String get qiblaTowardMecca => 'I dtreo Makkah';

  @override
  String get prayerTimesTitle => 'Amanna Paidir';

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
  String get prayerTimesLocationNeededTitle => 'Tá suíomh ag teastáil';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ceadaigh rochtain suímh ionas gur féidir le Ayara amanna paidir cruinne a ríomh do do chathair.';

  @override
  String get prayerTimesNextLabel => 'Ar Aghaidh';

  @override
  String get prayerTimesDoneLabel => 'Déanta';

  @override
  String get monthlyPrayerTimesTitle => 'Amanna Paidir Míosúla';

  @override
  String get monthlyPrayerTimesViewButton => 'Féach ar an Mí Iomlán';

  @override
  String get monthlyPrayerTimesNextMonth => 'An mhí seo chugainn';

  @override
  String get monthlyPrayerTimesDayHeader => 'Lá';

  @override
  String get sharePrayerTimes => 'Comhroinn amanna paidir';

  @override
  String get notificationsSectionTitle => 'Fógraí';

  @override
  String get notificationsSectionSubtitle =>
      'Meabhrúcháin paidir, imeachtaí féilire agus níos mó';

  @override
  String get dailyReflectionReminderTitle => 'Machnamh Laethúil';

  @override
  String get dailyReflectionReminderDescription =>
      'Meabhrúchán mín laethúil chun Ayara a oscailt agus nascadh le do chreideamh.';

  @override
  String get dailyReflectionReminderEnable => 'Cumasaigh meabhrúchán laethúil';

  @override
  String get dailyReflectionReminderTimeLabel => 'Am meabhrúcháin';

  @override
  String get prayerNotificationsTitle => 'Meabhrúcháin Paidir';

  @override
  String get prayerNotificationsDescription =>
      'Faigh meabhrúchán mín roimh gach am paidir chun cabhrú leat fanacht ceangailte i rith an lae.';

  @override
  String get prayerNotificationsEnable => 'Cumasaigh meabhrúcháin paidir';

  @override
  String get prayerNotificationsOpenSettings => 'Oscail socruithe fógraí';

  @override
  String get prayerNotificationsDenied => 'Tá fógraí díchumasaithe';

  @override
  String get prayerNotificationsDeniedHint =>
      'Téigh go Socruithe agus ceadaigh fógraí do Ayara chun meabhrúcháin amanna paidir a fháil.';

  @override
  String get notificationsConsentLabel => 'Ceadaigh fógraí d\'amanna paidir';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Paidir an Lae';

  @override
  String get prayerNotifBodyFajr =>
      'Is í Fajr paidir maidine Ahl al-Bayt. Dúirt Imam Ali (AS): Caomhnaigh paidir an lae mar a chaomhnaíonn tú do mhuinín is luachmhaire. Éirigh, glan tú féin, agus seas os comhair Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Paidir an Mheánlae';

  @override
  String get prayerNotifBodyDhuhr =>
      'Bhí meas ag Imamaí Ahl al-Bayt ar gach nóiméad cuimhneacháin. Cuir sos ar do lá, comhcheangail Dhuhr le Asr más gá, agus tabhair do chroí ar ais chuig Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Paidir an Tráthnóna';

  @override
  String get prayerNotifBodyAsr =>
      'Caomhnaigh an phaidir, mar is í an conradh idir tú féin agus Allah í. Tá am Asr tagtha — ná lig dó imeacht gan cuimhneachán.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Paidir Luí na Gréine';

  @override
  String get prayerNotifBodyMaghrib =>
      'Tá an ghrian imithe faoi — nóiméad a mheas Ahl al-Bayt mar nóiméad naofa d\'urnaí. Déan Maghrib agus ardaigh do lámha chuig Allah i dua sula dtosaíonn an oíche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Paidir na hOíche';

  @override
  String get prayerNotifBodyIsha =>
      'Críochnaigh do lá i gcuideachta Allah. Mhol na hImamaí Salat al-Layl i ndiaidh Isha — ach ar dtús, críochnaigh d\'Isha agus dún an lá lena chuimhne.';

  @override
  String get outOfReflectionsBannerText =>
      'D\'úsáid tú do chuid machnaimh go léir';

  @override
  String get outOfReflectionsBannerCta => 'Faigh níos mó';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tapáil an ciorcal chun comhaireamh';

  @override
  String get dhikrResetButton => 'Athshocraigh';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Tá 100 cuimhne Allah curtha i gcrích agat. Go raibh siad ina solas do do chroí.';

  @override
  String get disclaimerTitle => 'Maidir le treoir na haipe seo';

  @override
  String get disclaimerBody =>
      'Cuireann Ayara machnaimh Ioslamacha, meabhrúcháin agus ábhar spioradálta ar fáil chun tacú le do thuras pearsanta creidimh, fréamhaithe sa Qur\'an agus i dteagasc Ahl al-Bayt. Cuirtear an t-ábhar seo ar fáil chun críocha ginearálta faisnéise agus inspioráide amháin.\n\nNí ghlacann Ayara áit scoláireachta cáilithe.\nNí hionann an treoir san aip seo agus scoláire Ioslamach, marja\', nó múinteoir oilte go diagachta. I Shi\'a Islam, tá treoir reiligiúnach fréamhaithe sa scoil Ja\'fari dlí-eolaíochta (fiqh) agus sa traidisiún maidir le Marja\' beo (foinse aithrise) a leanúint — giúróir cáilithe a threoraíonn a bhreithiúnais creidmhigh i gcleachtas reiligiúnach. Má tá ceisteanna agat faoi rialuithe reiligiúnacha, cúrsaí halal agus haram, nó dualgais phearsanta reiligiúnacha, iarr comhairle ó Marja\' cáilithe nó ó scoláire i do phobal.\n\nNí eisíonn an aip seo rialuithe reiligiúnacha.\nNí dhéanann Ayara cinntí údarásacha ar ábhair fiqh ná ar dualgais phearsanta reiligiúnacha. Níor cheart aon rud anseo a mheas mar fatwa ná mar threoir reiligiúnach cheangailteach.\n\nLárnacht Ahl al-Bayt.\nI Shi\'a Islam, is iad an Fáidh Muhammad ﷺ agus a theaghlach íon — Ahl al-Bayt — treoraithe údarásacha an phobail Ioslamaigh i ndiaidh an Qur\'an. Is iad dhá Imam déag Ahl al-Bayt na léirmhínitheoirí diaga ceaptha ar theagasc Ioslamach. Léiríonn ábhar na haipe seo an traidisiún sin agus déanann sé iarracht onóir dílis a thabhairt dó.\n\nTábhacht an phobail.\nTá sé mar aidhm ag an aip seo do rannpháirtíocht sa chreideamh a spreagadh agus meas domhain a léiriú ar ról ríthábhachtach do mhosc áitiúil, d\'ionad Ioslamach agus do phobal reiligiúnach. Molaimid duit fanacht i dteagmháil le múinteoirí cáilithe atá gar duit agus foghlaim uathu.';

  @override
  String get disclaimerClose => 'Tuigim';

  @override
  String get disclaimerInfoTooltip => 'Maidir le treoir na haipe seo';

  @override
  String get disclaimerSettingsSubtitle =>
      'Do chuspóirí faisnéise ginearálta amháin. Tapáil chun an séanadh iomlán a léamh.';

  @override
  String get disclaimerSectionHeader => 'Séanadh treorach';

  @override
  String get navHome => 'Baile';

  @override
  String get navReflect => 'Machnamh';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Féilire';

  @override
  String get dashboardToday => 'INNIU';

  @override
  String get dashboardComingUp => 'Ag teacht suas';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'laethanta',
      one: 'lá',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Rochtain Thapa';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Treoir';

  @override
  String get quickActionPrayerTimes => 'Amanna Paidir';

  @override
  String get askAyaraTitle => 'Cuir ceist ar Ayara';

  @override
  String get askAyaraSubtitle =>
      'Cuir aon cheist Ioslamach agus faigh freagra machnamhach treorach.';

  @override
  String get askAyaraHint => 'm.sh. Cad é tábhacht Ramadan?';

  @override
  String get askAyaraSubmit => 'Fiafraigh';

  @override
  String get wisdomOfTheDayTitle => 'Eagna an Lae';

  @override
  String get calendarScreenTitle => 'Féilire Ioslamach';

  @override
  String get calendarUpcomingOccasions => 'Ócáidí atá le teacht';

  @override
  String get calendarOccasionRemindersTitle => 'Meabhrúcháin Ócáide';

  @override
  String get calendarOccasionRemindersHint =>
      'Cuirfear ar an eolas tú an oíche roimh gach ócáid';

  @override
  String get calendarNotifPermissionDenied =>
      'Diúltaíodh cead fógraí. Cumasaigh é i socruithe do ghléis.';

  @override
  String get calendarNoEvents => 'Níor aimsíodh aon imeachtaí atá le teacht.';

  @override
  String get calendarAddToPhone => 'Cuir le Calendár gutháin';

  @override
  String get calendarAddedToPhone => 'Curtha leis an gCalandar';

  @override
  String get calendarCountdownToday => 'INNIU';

  @override
  String get calendarCountdownTomorrow => 'AMÁRACH';

  @override
  String calendarCountdownDays(int days) {
    return 'i gceann $days lá';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ean';

  @override
  String get calendarMonthFeb => 'Fea';

  @override
  String get calendarMonthMar => 'Már';

  @override
  String get calendarMonthApr => 'Aib';

  @override
  String get calendarMonthMay => 'Bea';

  @override
  String get calendarMonthJun => 'Mei';

  @override
  String get calendarMonthJul => 'Iúil';

  @override
  String get calendarMonthAug => 'Lún';

  @override
  String get calendarMonthSep => 'MF';

  @override
  String get calendarMonthOct => 'DF';

  @override
  String get calendarMonthNov => 'Samh';

  @override
  String get calendarMonthDec => 'Noll';

  @override
  String get calendarSeasonMuharramEarly =>
      'Laethanta Muharram — cuimhnigh ar Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — laethanta caoineadh agus machnaimh';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — daichead lá Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'An bóthar go hArbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — breacadh an nochtaithe';

  @override
  String get calendarSeasonMidShaban =>
      'Lár Sha\'ban — breithlá Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — mí an Qur\'an';

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
  String get duasSearchHint => 'Cuardaigh duas, ziyarat…';

  @override
  String get duasFilterAll => 'Uile';

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
  String get duasEmpty => 'Níor aimsíodh aon duas.';

  @override
  String get duaCategoryDaily => 'Laethúil';

  @override
  String get duaCategoryWeekly => 'Seachtainiúil';

  @override
  String get duaCategoryOccasions => 'Ócáidí';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Breith';

  @override
  String get eventTypeMartyrdom => 'Martyrdom';

  @override
  String get eventTypeOccasion => 'Ócáid';

  @override
  String get duaCopyTooltip => 'Cóipeáil an t-aistriúchán';

  @override
  String get duaToggleTransliteration => 'Traslitriú';

  @override
  String get duaToggleTranslation => 'Aistriúchán';

  @override
  String get duaAskAiLabel => 'Iarr ar Ayara an dua seo a mhíniú';

  @override
  String get duaAskAiLockedLabel => 'Iarr ar Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Tá míniúcháin Ayara ar fáil do bhaill Wilaya amháin. Uasghrádaigh sna Socruithe.';

  @override
  String duaAiComingSoon(String name) {
    return 'Cuir ceist ar Ayara faoi \"$name\" — ag teacht go luath!';
  }

  @override
  String get duaCopiedToast => 'Cóipeáladh an dua chuig an ngearrthaisce.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Is é Allah is Mó';

  @override
  String get tasbihAlhamdulillahMeaning => 'Is le Allah gach moladh';

  @override
  String get tasbihSubhanallahMeaning => 'Glóir do Allah';

  @override
  String get tasbihResetTooltip => 'Athshocraigh';

  @override
  String get tasbihCompleteTitle => 'Tasbih Críochnaithe';

  @override
  String get tasbihCompleteMessage => 'Go nglacfadh Allah le do dhikr.';

  @override
  String get tasbihTapHint => 'Tapáil áit ar bith chun comhaireamh';

  @override
  String get tasbihatScreenTitle => 'Treoir Paidir';

  @override
  String get tasbihatScreenSubtitle => 'GLÓRTHAÍ NA PAIDRE';

  @override
  String get tasbihatScreenDescription =>
      'Treoir iomlán ar na glórthaí a deirtear le linn agus i ndiaidh na bpaidreacha laethúla — de réir thraidisiún Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Aithristear sa 3ú & 4ú rakʿah';

  @override
  String get tasbihatArba3Info =>
      'I ndlí-eolaíocht Shi\'a, tagann Tasbiḥāt al-Arbaʿa in áit Surah al-Fatiha sa 3ú agus 4ú rakʿah de Dhuhr, Asr, Maghrib, agus Isha. Tá sé éigeantach (wājib) é a aithris uair amháin, agus moltar (mustaḥabb) é a aithris trí huaire.';

  @override
  String get tasbihatArba3Translation =>
      'Glóir do Allah · Is le Allah gach moladh\nNíl dia ar bith ach Allah · Is é Allah is Mó';

  @override
  String get tasbihatArba3CompleteTitle => 'Aithris Críochnaithe';

  @override
  String get tasbihatArba3CompleteMessage => 'Go nglacfaí le do phaidir — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tapáil tar éis gach aithrise';

  @override
  String get tasbihatZahraSubtitle => 'Tar éis gach paidir · 100 coirnín';

  @override
  String get tasbihatZahraOriginLabel => 'Bunús';

  @override
  String get tasbihatZahraHadith =>
      'D\'iarr Bantiarna Fatima al-Zahra (sa) ar an bhFáidh ﷺ seirbhíseach. Dúirt sé: \"Nach dtreoróinn thú chuig rud éigin níos fearr? Aithris Subḥānallāh 33 uair, Alḥamdulillāh 33 uair, agus Allāhu Akbar 34 uair tar éis gach paidir. Is fearr sin duit ná seirbhíseach.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Iml. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Oscail an Cuntar Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS MOLTA';

  @override
  String get tasbihatDuasSubtitle => 'Tar éis do phaidir a chríochnú';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Tar éis gach paidir éigeantaí';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Duine ar bith a aithríonn Āyat al-Kursī tar éis gach paidir éigeantaí, ní sheasann tada idir é agus an pharáidís ach an bás. Dúirt Imam al-Bāqir (a) go bhfuil sé ar cheann de na véarsaí is mó sa Qur\'an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Tar éis gach paidir · séalaíonn sé gach dua';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Moltar beannachtaí a chur ar an bhFáidh ﷺ agus ar a theaghlach íon (Āl Muḥammad) chun gach dua a shéalú. Dúirt Imam al-Ṣādiq (a): \"Tá gach dua ar fionraí go dtí go gcuireann tú ṣalawāt ar Muḥammad agus ar a theaghlach.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Tar éis gach paidir · do Imam ár linne';

  @override
  String get tasbihatDuaFarajSource => 'Múinte ag Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua d\'aththeacht Imam al-Mahdī (af), an dara hImam déag, múinte ag a athair. Aithrítear é go laethúil ag dílisigh Shi\'a i ndiaidh gach paidir mar ghníomh dílseachta don Imam beo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Bantiarna Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Tar éis Maghrib & Isha · moltar go háirithe';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Dúirt Imam al-Bāqir (a) go bhfuil aithris Tasbīḥ al-Zahrā tar éis Isha roimh chodladh níos fearr ná 1000 rakʿah de phaidir roghnach. Éiríonn a sholas suas chuig na flaithis.';

  @override
  String get tasbihFatimaGiftPre => 'Bronntanas ón bhFáidh';

  @override
  String get tasbihFatimaGiftPost => 'aithristear tar éis gach paidir';

  @override
  String get prayerTrackerTitle => 'LORGÚ PAIDIR';

  @override
  String get prayerTrackerPrayed => 'Guíodh';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'sraith $count lá';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Tá gach paidir críochnaithe inniu. Go nglacfadh Allah leis.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Críochnaithe inniu';

  @override
  String get dhikrTrackerNotDoneToday => 'Ní dhearnadh inniu';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'sraith $count lá';
  }

  @override
  String get dhikrReminderTitle => 'Meabhrúchán Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Meabhrúchán mín laethúil chun do Tasbīḥ al-Zahrā (SA) a aithris.';

  @override
  String get dhikrReminderEnable => 'Cumasaigh meabhrúchán Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Am meabhrúcháin';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith an Lae';

  @override
  String get hadithLabelArabic => 'ARAIBIS';

  @override
  String get hadithLabelTranslation => 'AISTRIÚCHÁN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Comhroinn an Hadith Seo';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nTrí Ayara';
  }

  @override
  String get hadithNavPrevious => 'Roimhe';

  @override
  String get hadithNavNext => 'Ar Aghaidh';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Na 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'An Fáidh, Bantiarna Fatima, agus an Dáréag Imam — treoraithe doshamhlacha an Ioslaim';

  @override
  String get imamLabelBorn => 'Rugadh';

  @override
  String get imamLabelMartyrdom => 'Mairtíreacht';

  @override
  String get imamLabelStatus => 'Stádas';

  @override
  String get imamSectionBiography => 'BEATHAISNÉIS';

  @override
  String get imamSectionFamousSaying => 'ABAIRTE CHLÚITEACH';

  @override
  String get imamRoleProphet => 'An Fáidh Deireanach';

  @override
  String get imamRoleInfallible => 'An Doshmálach';

  @override
  String get imamOrdinal1 => '1ú Imam';

  @override
  String get imamOrdinal2 => '2ú Imam';

  @override
  String get imamOrdinal3 => '3ú Imam';

  @override
  String get imamOrdinal4 => '4ú Imam';

  @override
  String get imamOrdinal5 => '5ú Imam';

  @override
  String get imamOrdinal6 => '6ú Imam';

  @override
  String get imamOrdinal7 => '7ú Imam';

  @override
  String get imamOrdinal8 => '8ú Imam';

  @override
  String get imamOrdinal9 => '9ú Imam';

  @override
  String get imamOrdinal10 => '10ú Imam';

  @override
  String get imamOrdinal11 => '11ú Imam';

  @override
  String get imamOrdinal12 => '12ú Imam';

  @override
  String get duaAudioScreenTitle => 'Éist le Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Roghnaigh dua le héisteacht leis. Tapáil an tíl chun seinm nó sos a chur air.';

  @override
  String get duaAudioComingSoonMessage =>
      'Beidh fuaim don dua seo ar fáil i nuashonrú atá le teacht.';

  @override
  String get duaAudioClose => 'Dún';

  @override
  String get duaAudioError =>
      'Níorbh fhéidir an fuaim a luchtú. Seiceáil do nasc, le do thoil.';

  @override
  String get duaAudioMetaTransmittedBy => 'Tarchurtha ag';

  @override
  String get duaAudioMetaOccasion => 'Ócáid';

  @override
  String get duaAudioMetaDuration => 'Fad';

  @override
  String get quickActionDailyHadith => 'Hadith an Lae';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Éist';

  @override
  String get quickActionTasbihat => 'Treoir Paidir';

  @override
  String get pilgrimageSectionTitle => 'An Turas Naofa';

  @override
  String get pilgrimageSectionSubtitle =>
      'Treoracha iomlána ar Hajj & Umrah — an oilithreacht chuig Teach Naofa Allah i Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'An Cúigiú Colún den Ioslam';

  @override
  String get hajjCardDescription =>
      'An oilithreacht mhór bhliantúil — éigeantach uair amháin sa saol do gach Moslamach atá in ann';

  @override
  String get hajjScreenTitle => 'Treoir Hajj';

  @override
  String get hajjScreenSubtitle => 'Treoir céim ar chéim don oilithreacht mhór';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'An Oilithreacht Bheag';

  @override
  String get umrahCardDescription =>
      'Turas spioradálta fíorluachmhar is féidir a dhéanamh ag aon am den bhliain';

  @override
  String get umrahScreenTitle => 'Treoir Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Treoir céim ar chéim don oilithreacht bheag';

  @override
  String get pilgrimageStepsTitle => 'Deasghnátha & Céimeanna';

  @override
  String get pilgrimageImportantNotesTitle => 'Nótaí Tábhachtacha';

  @override
  String get pilgrimageDuaTitle => 'Dua don chéim seo';

  @override
  String get pilgrimageJafariNoteTitle => 'Nóta Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Críochnaithe';

  @override
  String get pilgrimageMarkDone => 'Marcáil mar críochnaithe';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total céimeanna';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Oilithrigh Shi\'a';

  @override
  String get pilgrimageShiaNoteBody =>
      'Go traidisiúnta téann oilithrigh Shi\'a go Medina freisin chun cuairt a thabhairt ar uaigh an Fháidh Muhammad (SAW) i Masjid al-Nabawi, agus ar uaigheanna na nImam i Jannat al-Baqi. Tá tábhacht spioradálta ollmhór ag baint leis na cuairteanna seo agus meastar gur cuid lárnach den turas iad do fhormhór na Moslamach Shi\'a.';

  @override
  String get hajjIntro =>
      'Is é Hajj an cúigiú colún den Ioslam, éigeantach uair amháin sa saol do gach Moslamach atá in ann go fisiciúil agus go hairgeadais. Déantar é i mí Dhul Hijjah, agus leanann sé cosáin an Fháidh Ibrahim (AS), a mhic Ismail (AS), agus Bantiarna Hajar. Do Mhoslamaigh Shi\'a, cuimsíonn Hajj freisin an bheannacht dhomhain a bhaineann le cuairt a thabhairt ar áiteanna sosa an Fháidh (SAW) agus Ahlul Bayt i Medina.';

  @override
  String get umrahIntro =>
      'Is í Umrah an oilithreacht bheag go Mecca agus, murab ionann agus Hajj, is féidir í a dhéanamh ag aon am den bhliain. Cé nach bhfuil sí éigeantach, tá luach saothair spioradálta ollmhór ag baint léi agus meastar gur gníomh adhrtha an-mholta í. Roinneann sí roinnt deasghnátha le Hajj ach tá sí níos giorra, agus tá ceithre phríomhghné inti.';
}
