// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => '選擇你的語言';

  @override
  String get languageSelectSub => '你稍後可以在設定中更改';

  @override
  String get actionContinue => '繼續';

  @override
  String get languageSuggestedHeader => '推薦';

  @override
  String get languageAllHeader => '所有語言';

  @override
  String get languageSuggestedBadge => '推薦';

  @override
  String get languageSearchHint => '搜尋…';

  @override
  String get planBasic => '標準版';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => '每日指引';

  @override
  String get categorySlot02 => '信仰與信賴';

  @override
  String get categorySlot03 => '禮拜沉思';

  @override
  String get categorySlot04 => '忍耐與希望';

  @override
  String get categorySlot05 => '祈求寬恕';

  @override
  String get categorySlot06 => '仁慈與憐憫';

  @override
  String get categorySlot07 => '信仰的力量';

  @override
  String get categorySlot08 => '感恩之心';

  @override
  String get categorySlot09 => '生命的意義';

  @override
  String get categorySlot10 => '家庭紐帶';

  @override
  String get categorySlot11 => '內心平靜';

  @override
  String get categorySlot12 => '先知的智慧';

  @override
  String get categorySlot13 => '高尚品格';

  @override
  String get categorySlot14 => '抵禦誘惑';

  @override
  String get categorySlot15 => '夜晚迪克爾';

  @override
  String get categoryCustom => '個人沉思';

  @override
  String get dhikrMeaningSubhanallah => '讚頌真主超絕萬物';

  @override
  String get dhikrMeaningAlhamdulillah => '一切讚頌全歸真主';

  @override
  String get dhikrMeaningAllahuAkbar => '真主至大';

  @override
  String get quranVerseHeartAtRest => '真的，唯有記念真主，心靈才得安寧。';

  @override
  String get promptHint => '點按一個類別，獲取伊斯蘭指引與沉思';

  @override
  String get currentLanguage => '目前語言';

  @override
  String get settingsLanguage => '語言設定';

  @override
  String get settingsTitle => '設定';

  @override
  String get chooseLanguage => '選擇你的語言';

  @override
  String get continueCta => '繼續';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個詞',
      one: '$count 個詞',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => '選項';

  @override
  String get newCta => '新增';

  @override
  String get actionsTitle => '你想做什麼？';

  @override
  String get copy => '複製';

  @override
  String get share => '分享';

  @override
  String get close => '關閉';

  @override
  String get copiedToast => '已複製到剪貼簿';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => '無法產生新的回覆';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n你想再試一次嗎？';
  }

  @override
  String get cancelCta => '取消';

  @override
  String get retryCta => '重試';

  @override
  String get authTitle => '建立你的帳戶';

  @override
  String get continueAsGuest => '以訪客身分繼續';

  @override
  String get signInGoogle => '使用 Google 登入';

  @override
  String get signInApple => '使用 Apple 登入';

  @override
  String get signInEmail => '使用電子郵件登入';

  @override
  String get upgradeWithApple => '使用 Apple 繼續';

  @override
  String get mustAccept => '你必須接受服務條款並確認隱私政策。';

  @override
  String get termsLabel => '我接受服務條款';

  @override
  String get privacyLabel => '我已閱讀隱私政策';

  @override
  String get marketingOptIn => '我同意接收新聞與優惠資訊';

  @override
  String get openTerms => '服務條款';

  @override
  String get openPrivacy => '隱私政策';

  @override
  String get accountSection => '帳戶';

  @override
  String get guestMode => '訪客模式';

  @override
  String get signedIn => '已登入';

  @override
  String get upgradeHint => '建立帳戶後，可在多個裝置之間儲存你的沉思內容。';

  @override
  String get upgradeWithGoogle => '使用 Google 繼續';

  @override
  String get signOut => '登出';

  @override
  String get snackUpgraded => '已透過 Google 升級帳戶 ✅';

  @override
  String get snackSignedIn => '已透過 Google 登入 ✅';

  @override
  String get snackSignedOut => '已登出';

  @override
  String get snackSignedInApple => '已透過 Apple 登入 ✅';

  @override
  String get snackSignedInGoogle => '已透過 Google 登入 ✅';

  @override
  String get snackUpgradedApple => '已透過 Apple 升級帳戶 ✅';

  @override
  String get snackUpgradedGoogle => '已透過 Google 升級帳戶 ✅';

  @override
  String get historyTitle => '過往沉思';

  @override
  String get historyOpenCta => '過往沉思';

  @override
  String get historyEmpty => '目前尚無已儲存的沉思內容。';

  @override
  String get historyDeleteTitle => '刪除此沉思？';

  @override
  String get historyDeleteBody => '此操作將永久移除所選項目。';

  @override
  String get deleteCta => '刪除';

  @override
  String get historyButton => '過往沉思';

  @override
  String get historyEmptyTitle => '目前尚無沉思內容';

  @override
  String get historyEmptyBody => '先產生一些內容——你儲存的內容會顯示在這裡。';

  @override
  String get historyDelete => '刪除';

  @override
  String get footerTitle => '與 Wilaya、伊瑪尼與薩布爾同行';

  @override
  String get footerSubtitle => '一次一段祈禱';

  @override
  String get genericErrorSnack => '出了點問題——請稍後再試。';

  @override
  String get upgradeAccountCta => '在多個裝置之間儲存你的沉思內容 – 建立帳戶';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get exportData => '匯出我的資料';

  @override
  String userUidLabel(String uid) {
    return 'UID：$uid';
  }

  @override
  String get rateLocalThrottle => '慢一點 🐯\nAyara 需要一點時間才能進行下一次回覆…';

  @override
  String get rateDailyLimit => '你目前的沉思次數已用完。\n取得更多沉思次數，或升級到 Wilaya。';

  @override
  String get rateCreditsExhausted => '你已用完所有沉思次數。\n請儲值或升級到 Wilaya 以繼續。';

  @override
  String get rateGraceCreditsExhausted => '你目前的沉思次數已用完。\n取得更多沉思次數，或升級到 Wilaya。';

  @override
  String get premiumDescription => 'Wilaya 可解鎖進階功能、未來類別以及專屬徽章。';

  @override
  String ratePlanExhausted(String plan) {
    return '你目前沒有可用沉思次數。方案：$plan。';
  }

  @override
  String rateCheckFailed(String message) {
    return '無法檢查你的沉思次數：$message';
  }

  @override
  String get rateCheckGenericError => '檢查你的沉思次數時發生問題。';

  @override
  String get aiFallbackGeneric => '出了點問題——請稍後再試。';

  @override
  String get limitSectionTitle => '沉思次數';

  @override
  String get limitTodayLabel => '使用情況';

  @override
  String limitCreditsLabel(Object credits) {
    return '剩餘沉思次數：$credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return '方案：$plan';
  }

  @override
  String get limitLoadingLabel => '載入中…';

  @override
  String get limitLoadingLabelDescription => '在取得沉思統計時顯示於沉思卡片中。';

  @override
  String get aiLimitTitle => '沉思次數';

  @override
  String get aiLimitSubtitle =>
      '每次回覆會消耗 1 次沉思。標準版包含起始沉思次數。Wilaya 可解鎖進階類別並支援儲值。';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '已使用 $used / $total 次沉思';
  }

  @override
  String get creditsSectionTitle => '沉思次數';

  @override
  String get creditsUsageLabel => '使用情況';

  @override
  String creditsRemainingLabel(Object reflections) {
    return '剩餘沉思次數：$reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return '方案：$plan';
  }

  @override
  String get creditsLoadingLabel => '載入中…';

  @override
  String get creditsLoadingLabelDescription => '在取得沉思統計時顯示。';

  @override
  String get creditsTitle => '沉思次數';

  @override
  String get creditsSubtitle =>
      '每次回覆會消耗 1 次沉思。標準版包含起始沉思次數。Wilaya 可解鎖進階類別並支援儲值。';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '已使用 $used / $total 次沉思';
  }

  @override
  String get settingsDeleteTitle => '刪除帳戶';

  @override
  String get settingsDeleteDescription => '永久刪除你的帳戶及所有相關資料。';

  @override
  String get settingsDeleteButtonLabel => '刪除我的帳戶';

  @override
  String get settingsDeleteDialogTitle => '刪除帳戶？';

  @override
  String get settingsDeleteDialogBody =>
      '此操作為永久操作，無法復原。\n\n你的所有對話、歷史記錄與帳戶資訊都將被刪除。';

  @override
  String get settingsDeleteDialogCancel => '取消';

  @override
  String get settingsDeleteDialogConfirm => '刪除';

  @override
  String get settingsFreeLimitUsedTitle => '起始沉思次數已用完';

  @override
  String get settingsFreeLimitUsedDescription =>
      '此裝置上的起始沉思次數已用完。請升級到 Wilaya 或購買更多沉思次數以繼續。';

  @override
  String get settingsStarterCreditsUsedTitle => '起始沉思次數已用完';

  @override
  String get settingsStarterCreditsUsedDescription =>
      '此裝置上的起始沉思次數已用完。請升級到 Wilaya 或購買更多沉思次數以繼續。';

  @override
  String get deviceBoundError => '此裝置已綁定至另一個帳戶。請使用原始帳戶登入。';

  @override
  String get premiumTitle => 'Wilaya 模式';

  @override
  String get premiumSubtitleBasic => '解鎖完整的 Ayara 體驗。';

  @override
  String get premiumSubtitlePremium => '你目前使用 Wilaya。還需要更多沉思次數嗎？';

  @override
  String premiumCurrentPlan(Object plan) {
    return '目前方案：$plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return '沉思次數：$remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => '目前無法進行購買。';

  @override
  String get premiumSignInToPurchase => '請登入以購買沉思次數或解鎖 Wilaya。';

  @override
  String get premiumRestorePurchases => '還原購買';

  @override
  String get premiumProcessing => '處理中…';

  @override
  String get premiumRestoreHintTitle => '你是否曾在此裝置或其他裝置上購買過 Wilaya 或沉思次數？';

  @override
  String get premiumRestoreHintBody => '如果沒有顯示，請還原你的購買記錄。';

  @override
  String get premiumBuyCredits200 => '購買 200 次沉思';

  @override
  String get premiumBuyCredits400 => '購買 400 次沉思';

  @override
  String get premiumBecomePremiumOneTime => '升級到 Wilaya 模式';

  @override
  String get premiumTopupHint => '使用 Wilaya 後，你可以隨時按需額外儲值沉思次數。';

  @override
  String get premiumUpgradeCta => '升級';

  @override
  String get premiumRequiredForCategory =>
      '此類別僅對 Wilaya 使用者開放。請在設定中升級以解鎖所有進階內容。';

  @override
  String get premiumBenefitsBasic => '解鎖 Wilaya，以獲得更多沉思次數、存取進階類別，並在需要指引時隨時繼續。';

  @override
  String get premiumBenefitsPremium =>
      '你目前處於 Wilaya 模式。如果沉思次數快用完了，可以補充更多並不中斷地繼續。';

  @override
  String get premiumButtonBecomePremium => '解鎖 Wilaya';

  @override
  String get premiumButtonTopup1000 => '增加 1000 次沉思';

  @override
  String get premiumBadge => 'Wilaya 已啟用';

  @override
  String get premiumLoadingStore => '正在載入商店…';

  @override
  String get premiumProductNotAvailable => '此商品目前尚未在商店中提供。請稍後再試。';

  @override
  String get premiumPurchaseError => '購買時出了點問題。請重試。';

  @override
  String get premiumBuyCredits100 => '增加 100 次沉思';

  @override
  String get premiumFeatureLocked => '請解鎖 Wilaya 以存取此功能。';

  @override
  String get lockedCategoriesHint => '某些類別僅對 Wilaya 會員開放。解鎖它們，以探索你旅程中的每一次沉思。';

  @override
  String get freePlanBlockedTitle => '你的起始沉思次數已用完';

  @override
  String get freePlanBlockedBody =>
      '你目前使用的是包含起始沉思次數的標準版，並且已達到使用上限。若要繼續——並解鎖進階類別——請升級到 Wilaya。';

  @override
  String get freePlanBlockedCtaGoPremium => '查看下方的 Wilaya 選項';

  @override
  String get graceBlockedTitle => '你的起始沉思次數已用完';

  @override
  String get graceBlockedBody =>
      '你目前使用的是包含起始沉思次數的標準版，並且已達到使用上限。若要繼續——並解鎖進階類別——請升級到 Wilaya。';

  @override
  String get graceBlockedCtaGoPremium => '查看下方的 Wilaya 選項';

  @override
  String get rateGuestMustSignIn => '請登入以使用 Ayara 和你的沉思次數。';

  @override
  String get guestNoCreditsTitle => '訪客模式';

  @override
  String get guestNoCreditsBody =>
      '作為訪客，你可以瀏覽應用程式，但無法使用沉思功能。稍後可在設定中登入，以使用沉思功能並解鎖購買選項。';

  @override
  String get guestDialogContinue => '繼續';

  @override
  String get guestDialogLoginInstead => '改為登入';

  @override
  String get optionalLabel => '選填';

  @override
  String get accountDeleteSuccessTitle => '帳戶已刪除';

  @override
  String get accountDeleteSuccessBody => '你的帳戶及相關資料已成功刪除。';

  @override
  String get accountDeleteSuccessClose => '關閉';

  @override
  String get accountDeleteErrorTitle => '無法刪除帳戶';

  @override
  String get accountDeleteErrorClose => '確定';

  @override
  String get accountDeleteReauthCancelled => '重新驗證已取消。請重新登入後再次嘗試刪除。';

  @override
  String get accountDeleteReauthRequired => '刪除帳戶需要近期登入。請先登出，再重新登入後重試。';

  @override
  String get settingsDeletePermanentWarning =>
      '此操作為永久性操作，無法撤銷。與你帳戶相關的所有資料都將被刪除。';

  @override
  String get dailyGraceTitle => '每日指引';

  @override
  String get dailyGraceScriptureLabel => '今日經文';

  @override
  String get dailyGraceSaintLabel => '本周人物';

  @override
  String get dailyGraceReflectionLabel => '夜間沉思';

  @override
  String get dailyGraceCopiedToast => '經文已複製到剪貼簿';

  @override
  String get locationConsentLabel => '允許 Ayara 使用我的位置來提供朝向和禮拜時間';

  @override
  String get locationConsentHint => '僅用於這些功能。你的位置不會被分享或保存。';

  @override
  String get askPageTitle => '問問 Ayara';

  @override
  String get askPageDescription =>
      '你可以詢問任何有關信仰、禮拜、生活或伊斯蘭實踐的問題，並獲得基於《古蘭經》和聖裔教導的指引。';

  @override
  String get askPageInputHint => '在這裡輸入你的問題…';

  @override
  String get askPageSubmitCta => '提問';

  @override
  String get askPageInputEmptyError => '請先輸入一個問題。';

  @override
  String get askResultYourQuestion => '你的問題';

  @override
  String get guidancePageTitle => '朝向';

  @override
  String get qiblaFacingMecca => '朝向麥加';

  @override
  String get qiblaCompassInstruction => '旋轉你的手機，直到金色指針朝上。\n那個方向就是朝向（麥加）。';

  @override
  String get qiblaGpsUnavailableBody => 'GPS 訊號較弱。請到室外並點擊「重試」。';

  @override
  String get qiblaRetry => '重試';

  @override
  String get qiblaTitle => '朝向方向';

  @override
  String qiblaDistanceLabel(String km) {
    return '距麥加 $km 公里';
  }

  @override
  String get qiblaLocationNeededTitle => '需要位置權限';

  @override
  String get qiblaLocationNeededBody =>
      '請允許存取位置，以便 Ayara 根據你當前所在位置計算朝向麥加天房的方向。';

  @override
  String get qiblaOpenSettings => '開啟設定';

  @override
  String get qiblaCompassLoading => '正在確定你的位置…';

  @override
  String get qiblaTowardMecca => '朝向麥加';

  @override
  String get prayerTimesTitle => '禮拜時間';

  @override
  String get prayerTimesFajr => '晨禮';

  @override
  String get prayerTimesDhuhr => '晌禮';

  @override
  String get prayerTimesAsr => '晡禮';

  @override
  String get prayerTimesMaghrib => '昏禮';

  @override
  String get prayerTimesIsha => '宵禮';

  @override
  String get prayerTimesLocationNeededTitle => '需要位置權限';

  @override
  String get prayerTimesLocationNeededBody =>
      '請允許存取位置，以便 Ayara 為你的城市計算精確的禮拜時間。';

  @override
  String get prayerTimesNextLabel => '下一個';

  @override
  String get prayerTimesDoneLabel => '完成';

  @override
  String get monthlyPrayerTimesTitle => '月度禮拜時間';

  @override
  String get monthlyPrayerTimesViewButton => '查看整月';

  @override
  String get monthlyPrayerTimesNextMonth => '下個月';

  @override
  String get monthlyPrayerTimesDayHeader => '日期';

  @override
  String get sharePrayerTimes => '分享禮拜時間';

  @override
  String get notificationsSectionTitle => '通知';

  @override
  String get notificationsSectionSubtitle => '禮拜提醒、行事曆事件及更多';

  @override
  String get dailyReflectionReminderTitle => '每日沉思';

  @override
  String get dailyReflectionReminderDescription =>
      '一個溫和的每日提醒，提醒你打開 Ayara，與信仰重新連結。';

  @override
  String get dailyReflectionReminderEnable => '啟用每日提醒';

  @override
  String get dailyReflectionReminderTimeLabel => '提醒時間';

  @override
  String get prayerNotificationsTitle => '禮拜提醒';

  @override
  String get prayerNotificationsDescription => '在每次禮拜時間前收到溫和提醒，幫助你整日保持與信仰的連結。';

  @override
  String get prayerNotificationsEnable => '啟用禮拜提醒';

  @override
  String get prayerNotificationsOpenSettings => '開啟通知設定';

  @override
  String get prayerNotificationsDenied => '通知已停用';

  @override
  String get prayerNotificationsDeniedHint => '請前往設定，允許 Ayara 的通知，以接收禮拜時間提醒。';

  @override
  String get notificationsConsentLabel => '允許禮拜時間通知';

  @override
  String get prayerNotifTitleFajr => '🌅 晨禮 — 黎明禮拜';

  @override
  String get prayerNotifBodyFajr =>
      '晨禮是聖裔清晨的禮拜。伊瑪目阿里（AS）說：像守護你最寶貴的託付一樣守護晨禮。起身、潔淨，然後站立在真主面前。';

  @override
  String get prayerNotifTitleDhuhr => '☀️ 晌禮 — 正午禮拜';

  @override
  String get prayerNotifBodyDhuhr =>
      '聖裔的伊瑪目們珍視每一個紀念真主的時刻。暫停你的一天，若有需要可將晌禮與晡禮合併，然後讓你的心重新歸向真主。';

  @override
  String get prayerNotifTitleAsr => '🌤️ 晡禮 — 午後禮拜';

  @override
  String get prayerNotifBodyAsr => '守護禮拜，因為它是你與真主之間的盟約。晡禮時間已經到了——不要讓它在沒有紀念中逝去。';

  @override
  String get prayerNotifTitleMaghrib => '🌇 昏禮 — 日落禮拜';

  @override
  String get prayerNotifBodyMaghrib =>
      '太陽已經落下——這是聖裔視為祈禱神聖時刻的時分。完成昏禮，在夜幕降臨前向真主舉手祈禱。';

  @override
  String get prayerNotifTitleIsha => '🌙 宵禮 — 夜間禮拜';

  @override
  String get prayerNotifBodyIsha =>
      '在真主的陪伴中結束你的一天。伊瑪目們鼓勵在宵禮之後禮夜功拜——但首先，請完成你的宵禮，並以紀念真主結束一天。';

  @override
  String get outOfReflectionsBannerText => '你已用完所有沉思次數';

  @override
  String get outOfReflectionsBannerCta => '取得更多';

  @override
  String get dhikrPageTitle => '迪克爾';

  @override
  String get dhikrTapToCount => '點擊圓圈進行計數';

  @override
  String get dhikrResetButton => '重設';

  @override
  String get dhikrComplete => '真主至善';

  @override
  String get dhikrCompleteMessage => '你已完成 100 次對真主的紀念。願它們成為你心中的光明。';

  @override
  String get disclaimerTitle => '關於本應用的指引';

  @override
  String get disclaimerBody =>
      'Ayara 提供以《古蘭經》和聖裔教導為基礎的伊斯蘭沉思、提醒與靈性內容，以支持你個人的信仰旅程。這些內容僅供一般性資訊與啟發之用。\n\nAyara 不能替代合格的學者。\n本應用中的指引不能代替有學識的伊斯蘭學者、馬爾賈、或受過神學訓練的老師。在什葉派伊斯蘭中，宗教指引根植於賈法里法學體系，以及追隨現世馬爾賈（效法源泉）的傳統——即以其裁決指導信眾宗教實踐的合格法學家。如果你對宗教律例、清真與禁忌事項，或個人宗教義務有疑問，請向合格的馬爾賈或你所在社區的學者請教。\n\n本應用不發布宗教裁決。\nAyara 不會就法學問題或個人宗教義務作出權威性的決定。此處任何內容都不應被視為教法裁決或具有約束力的宗教指示。\n\n聖裔的核心地位。\n在什葉派伊斯蘭中，先知穆罕默德 ﷺ 及其純潔的家眷——聖裔——是繼《古蘭經》之後伊斯蘭共同體的權威向導。聖裔中的十二位伊瑪目是由真主所委任的伊斯蘭教導闡釋者。本應用中的內容反映了這一傳統，並努力忠實地尊崇它。\n\n社群的重要性。\n本應用旨在鼓勵你更深入地投身信仰，同時深切尊重你所在地清真寺、伊斯蘭中心以及宗教社群所發揮的重要作用。我們鼓勵你與附近合格的教師保持聯繫，並向他們學習。';

  @override
  String get disclaimerClose => '我明白了';

  @override
  String get disclaimerInfoTooltip => '關於本應用的指引';

  @override
  String get disclaimerSettingsSubtitle => '僅供一般資訊參考。點擊閱讀完整聲明。';

  @override
  String get disclaimerSectionHeader => '指引免責聲明';

  @override
  String get navHome => '首頁';

  @override
  String get navReflect => '沉思';

  @override
  String get navDuas => '杜阿';

  @override
  String get navCalendar => '日曆';

  @override
  String get dashboardToday => '今天';

  @override
  String get dashboardComingUp => '即將到來';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '天',
      one: '天',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => '快速入口';

  @override
  String get quickActionQibla => '朝向';

  @override
  String get quickActionDhikr => '迪克爾';

  @override
  String get quickActionDailyGrace => '指引';

  @override
  String get quickActionPrayerTimes => '禮拜時間';

  @override
  String get askAyaraTitle => '問問 Ayara';

  @override
  String get askAyaraSubtitle => '提出任何伊斯蘭問題，並獲得一則深思熟慮的引導式回答。';

  @override
  String get askAyaraHint => '例如：齋月的重要意義是什麼？';

  @override
  String get askAyaraSubmit => '提問';

  @override
  String get wisdomOfTheDayTitle => '今日智慧';

  @override
  String get calendarScreenTitle => '伊斯蘭日曆';

  @override
  String get calendarUpcomingOccasions => '即將到來的紀念日';

  @override
  String get calendarOccasionRemindersTitle => '紀念日提醒';

  @override
  String get calendarOccasionRemindersHint => '會在每個紀念日前一晚提醒你';

  @override
  String get calendarNotifPermissionDenied => '通知權限被拒絕。請在裝置設定中啟用。';

  @override
  String get calendarNoEvents => '未找到即將到來的事件。';

  @override
  String get calendarAddToPhone => '添加到手机日历';

  @override
  String get calendarAddedToPhone => '已添加到日历';

  @override
  String get calendarCountdownToday => '今天';

  @override
  String get calendarCountdownTomorrow => '明天';

  @override
  String calendarCountdownDays(int days) {
    return '$days 天後';
  }

  @override
  String get calendarAH => '回曆';

  @override
  String get calendarMonthJan => '1月';

  @override
  String get calendarMonthFeb => '2月';

  @override
  String get calendarMonthMar => '3月';

  @override
  String get calendarMonthApr => '4月';

  @override
  String get calendarMonthMay => '5月';

  @override
  String get calendarMonthJun => '6月';

  @override
  String get calendarMonthJul => '7月';

  @override
  String get calendarMonthAug => '8月';

  @override
  String get calendarMonthSep => '9月';

  @override
  String get calendarMonthOct => '10月';

  @override
  String get calendarMonthNov => '11月';

  @override
  String get calendarMonthDec => '12月';

  @override
  String get calendarSeasonMuharramEarly => '穆哈蘭月的日子——銘記卡爾巴拉';

  @override
  String get calendarSeasonAshura => '阿舒拉——呀，侯賽因（AS）';

  @override
  String get calendarSeasonMuharramLate => '穆哈蘭月——哀悼與沉思的日子';

  @override
  String get calendarSeasonArbaeen => '阿爾巴因——侯賽因的四十日';

  @override
  String get calendarSeasonRoadToArbaeen => '通往阿爾巴因之路';

  @override
  String get calendarSeasonMabath => '馬巴阿斯·穆巴拉克——啟示的黎明';

  @override
  String get calendarSeasonMidShaban => '舍爾邦中旬——伊瑪目馬赫迪（AJ）的誕辰';

  @override
  String get calendarSeasonRamadan => '齋月吉慶——古蘭經之月';

  @override
  String get calendarSeasonGhadir => '蓋迪爾節吉慶！';

  @override
  String get hijriMonth1 => '穆哈蘭月';

  @override
  String get hijriMonth2 => '賽法爾月';

  @override
  String get hijriMonth3 => '賴比·歐瓦魯月';

  @override
  String get hijriMonth4 => '賴比·阿希魯月';

  @override
  String get hijriMonth5 => '主馬達·歐拉月';

  @override
  String get hijriMonth6 => '主馬達·阿希拉月';

  @override
  String get hijriMonth7 => '拉哲卜月';

  @override
  String get hijriMonth8 => '舍爾邦月';

  @override
  String get hijriMonth9 => '齋月';

  @override
  String get hijriMonth10 => '閃瓦魯月';

  @override
  String get hijriMonth11 => '都·蓋爾德月';

  @override
  String get hijriMonth12 => '都·希哲月';

  @override
  String get duasScreenTitle => '杜阿與瞻禮詞';

  @override
  String get duasSearchHint => '搜尋杜阿、瞻禮詞…';

  @override
  String get duasFilterAll => '全部';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 則杜阿與瞻禮詞',
      one: '$count 則杜阿',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => '未找到杜阿。';

  @override
  String get duaCategoryDaily => '每日';

  @override
  String get duaCategoryWeekly => '每週';

  @override
  String get duaCategoryOccasions => '紀念日';

  @override
  String get duaCategoryZiyarat => '瞻禮詞';

  @override
  String get duaCategoryTasbih => '讚詞';

  @override
  String get eventTypeBirth => '誕辰';

  @override
  String get eventTypeMartyrdom => '殉難';

  @override
  String get eventTypeOccasion => '紀念日';

  @override
  String get duaCopyTooltip => '複製翻譯';

  @override
  String get duaToggleTransliteration => '音譯';

  @override
  String get duaToggleTranslation => '翻譯';

  @override
  String get duaAskAiLabel => '請 Ayara 解釋這段杜阿';

  @override
  String get duaAskAiLockedLabel => '問 Ayara（Wilaya）';

  @override
  String get duaAiLockedMessage => 'Ayara 解釋功能僅對 Wilaya 會員開放。請在設定中升級。';

  @override
  String duaAiComingSoon(String name) {
    return '向 Ayara 詢問「$name」——即將推出！';
  }

  @override
  String get duaCopiedToast => '杜阿已複製到剪貼簿。';

  @override
  String get tasbihAllahuAkbarMeaning => '真主至大';

  @override
  String get tasbihAlhamdulillahMeaning => '一切讚頌全歸真主';

  @override
  String get tasbihSubhanallahMeaning => '讚頌真主超絕萬物';

  @override
  String get tasbihResetTooltip => '重設';

  @override
  String get tasbihCompleteTitle => '讚詞已完成';

  @override
  String get tasbihCompleteMessage => '願真主接受你的讚頌。';

  @override
  String get tasbihTapHint => '點擊任意位置進行計數';

  @override
  String get tasbihatScreenTitle => '禮拜指南';

  @override
  String get tasbihatScreenSubtitle => '禮拜中的讚頌詞';

  @override
  String get tasbihatScreenDescription =>
      '這是一份完整的指南，介紹每日禮拜中及禮拜後所誦讀的讚頌詞——遵循聖裔（a）的傳統。';

  @override
  String get tasbihatArba3Title => '四句讚詞';

  @override
  String get tasbihatArba3Subtitle => '在第三與第四拜中誦讀';

  @override
  String get tasbihatArba3Info =>
      '在什葉派法學中，四句讚詞在晌禮、晡禮、昏禮和宵禮的第三、第四拜中取代《開端章》。誦讀一次是主命，誦讀三次則是可嘉行為。';

  @override
  String get tasbihatArba3Translation =>
      '讚頌真主超絕萬物 · 一切讚頌全歸真主\n除真主外絕無應受崇拜者 · 真主至大';

  @override
  String get tasbihatArba3CompleteTitle => '誦讀完成';

  @override
  String get tasbihatArba3CompleteMessage => '願你的禮拜被接受——阿敏';

  @override
  String get tasbihatArba3TapHint => '每次誦讀後點擊';

  @override
  String get tasbihatZahraSubtitle => '每次禮拜後 · 100 顆念珠';

  @override
  String get tasbihatZahraOriginLabel => '來源';

  @override
  String get tasbihatZahraHadith =>
      '法蒂瑪·宰赫拉夫人（sa）曾向先知 ﷺ 請求一位僕人。先知說：「我不是要告訴你比這更好的嗎？每次禮拜後念『蘇卜哈南拉』33次，『艾勒哈姆杜利拉』33次，『安拉乎艾克拜爾』34次。這比僕人對你更好。」';

  @override
  String get tasbihatZahraHadithSource => '——《比哈爾·安瓦爾》第85卷';

  @override
  String get tasbihatZahraOpenCounter => '打開讚詞計數器';

  @override
  String get tasbihatDuasTitle => '推薦杜阿';

  @override
  String get tasbihatDuasSubtitle => '完成禮拜後';

  @override
  String get tasbihatDuaAyatKursiTitle => '寶座經文';

  @override
  String get tasbihatDuaAyatKursiWhen => '每次主命禮拜之後';

  @override
  String get tasbihatDuaAyatKursiSource => '《黃牛章》2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      '誰在每次主命禮拜後誦讀寶座經文，他與天堂之間只隔著死亡。伊瑪目巴基爾（a）說它是《古蘭經》中最偉大的經文之一。';

  @override
  String get tasbihatDuaSalawatTitle => '祝福讚詞';

  @override
  String get tasbihatDuaSalawatWhen => '每次禮拜後 · 封緘所有杜阿';

  @override
  String get tasbihatDuaSalawatSource => '伊瑪目薩迪格（a）——《卡菲》';

  @override
  String get tasbihatDuaSalawatNote =>
      '向先知 ﷺ 及其純潔家屬（穆罕默德的家屬）致祝福，是結束每一段杜阿的推薦做法。伊瑪目薩迪格（a）說：「任何杜阿都會懸而未決，直到你向穆罕默德和他的家屬致祝福。」';

  @override
  String get tasbihatDuaFarajTitle => '解困祈禱';

  @override
  String get tasbihatDuaFarajWhen => '每次禮拜後 · 為我們時代的伊瑪目祈禱';

  @override
  String get tasbihatDuaFarajSource => '由伊瑪目哈桑·阿斯卡里（a）傳授';

  @override
  String get tasbihatDuaFarajNote =>
      '这是为伊玛目马赫迪（af）复现而祈求的祷告，伊玛目马赫迪是第十二位伊玛目，由他的父亲传授。许多什叶派穆斯林在祷告后常常诵念，以表达对活着的伊玛目的虔诚。';

  @override
  String get tasbihatDuaTasbihFatimaTitle => '法蒂瑪夫人的讚詞';

  @override
  String get tasbihatDuaTasbihFatimaWhen => '昏禮與宵禮之後 · 特別推薦';

  @override
  String get tasbihatDuaTasbihFatimaSource => '伊瑪目巴基爾（a）——《比哈爾·安瓦爾》';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      '伊瑪目巴基爾（a）說，在睡前於宵禮後誦讀法蒂瑪讚詞，比一千拜副功拜更為優越。它的光會升向天際。';

  @override
  String get tasbihFatimaGiftPre => '來自先知的禮物';

  @override
  String get tasbihFatimaGiftPost => '每次禮拜後誦讀';

  @override
  String get prayerTrackerTitle => '禮拜追蹤';

  @override
  String get prayerTrackerPrayed => '已禮拜';

  @override
  String prayerTrackerDayStreak(int count) {
    return '連續 $count 天';
  }

  @override
  String get prayerTrackerAllComplete => '今天所有禮拜已完成。願真主接受。';

  @override
  String get dhikrTrackerTitle => '法蒂瑪讚詞';

  @override
  String get dhikrTrackerCompletedToday => '今天已完成';

  @override
  String get dhikrTrackerNotDoneToday => '今天未完成';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '連續 $count 天';
  }

  @override
  String get dhikrReminderTitle => '讚詞提醒';

  @override
  String get dhikrReminderDescription => '一個溫和的每日提醒，提醒你誦念法蒂瑪讚詞（SA）。';

  @override
  String get dhikrReminderEnable => '啟用讚詞提醒';

  @override
  String get dhikrReminderTimeLabel => '提醒時間';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => '每日聖訓';

  @override
  String get hadithLabelArabic => '阿拉伯文';

  @override
  String get hadithLabelTranslation => '翻譯';

  @override
  String get hadithBadge => '聖訓';

  @override
  String get hadithShare => '分享這段聖訓';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\n來自 Ayara';
  }

  @override
  String get hadithNavPrevious => '上一條';

  @override
  String get hadithNavNext => '下一條';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '十四位无误者';

  @override
  String get imamsScreenSubtitle => '先知、法蒂玛女士和十二位伊玛目——在十二伊玛目什叶派伊斯兰教中，纯洁且无误的引导者';

  @override
  String get imamLabelBorn => '出生';

  @override
  String get imamLabelMartyrdom => '殉難';

  @override
  String get imamLabelStatus => '身分';

  @override
  String get imamSectionBiography => '生平';

  @override
  String get imamSectionFamousSaying => '著名語錄';

  @override
  String get imamRoleProphet => '最後的先知';

  @override
  String get imamRoleInfallible => '無過者';

  @override
  String get imamOrdinal1 => '第一伊瑪目';

  @override
  String get imamOrdinal2 => '第二伊瑪目';

  @override
  String get imamOrdinal3 => '第三伊瑪目';

  @override
  String get imamOrdinal4 => '第四伊瑪目';

  @override
  String get imamOrdinal5 => '第五伊瑪目';

  @override
  String get imamOrdinal6 => '第六伊瑪目';

  @override
  String get imamOrdinal7 => '第七伊瑪目';

  @override
  String get imamOrdinal8 => '第八伊瑪目';

  @override
  String get imamOrdinal9 => '第九伊瑪目';

  @override
  String get imamOrdinal10 => '第十伊瑪目';

  @override
  String get imamOrdinal11 => '第十一伊瑪目';

  @override
  String get imamOrdinal12 => '第十二伊瑪目';

  @override
  String get duaAudioScreenTitle => '聆聽杜阿';

  @override
  String get duaAudioScreenSubtitle => '選擇你想聆聽的杜阿。點擊卡片即可播放或暫停。';

  @override
  String get duaAudioComingSoonMessage => '此杜阿的音訊將在未來更新中提供。';

  @override
  String get duaAudioClose => '關閉';

  @override
  String get duaAudioError => '無法載入音訊。請檢查你的網路連線。';

  @override
  String get duaAudioMetaTransmittedBy => '傳述者';

  @override
  String get duaAudioMetaOccasion => '場合';

  @override
  String get duaAudioMetaDuration => '時長';

  @override
  String get quickActionDailyHadith => '每日聖訓';

  @override
  String get quickAction14Masumeen => '十四位无误者';

  @override
  String get quickActionListenDuas => '聆聽';

  @override
  String get quickActionTasbihat => '禮拜指南';

  @override
  String get pilgrimageSectionTitle => '神聖旅程';

  @override
  String get pilgrimageSectionSubtitle => '關於朝覲與副朝的完整指南——前往麥加真主聖殿的朝聖之旅';

  @override
  String get hajjCardTitle => '朝覲';

  @override
  String get hajjCardSubtitle => '伊斯蘭五功之一';

  @override
  String get hajjCardDescription => '宏大的年度朝聖——對每位有能力的穆斯林而言，一生一次為主命';

  @override
  String get hajjScreenTitle => '朝覲指南';

  @override
  String get hajjScreenSubtitle => '大朝覲的分步指南';

  @override
  String get umrahCardTitle => '副朝';

  @override
  String get umrahCardSubtitle => '小朝覲';

  @override
  String get umrahCardDescription => '一段充滿巨大精神回報、可在一年中任何時候進行的旅程';

  @override
  String get umrahScreenTitle => '副朝指南';

  @override
  String get umrahScreenSubtitle => '小朝覲的分步指南';

  @override
  String get pilgrimageStepsTitle => '儀式與步驟';

  @override
  String get pilgrimageImportantNotesTitle => '重要說明';

  @override
  String get pilgrimageDuaTitle => '此步骤的祈祷';

  @override
  String get pilgrimageJafariNoteTitle => '贾法里法学注释';

  @override
  String get pilgrimageComplete => '✓ 完成';

  @override
  String get pilgrimageMarkDone => '标记为完成';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total 步骤';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes 分钟';
  }

  @override
  String get pilgrimageShiaNoteTitle => '什葉派朝聖者';

  @override
  String get pilgrimageShiaNoteBody =>
      '许多什叶派朝圣者还会前往麦地那，朝圣先知穆罕默德（SAW）在纳巴维清真寺的 ziyarat，以及在贾纳特·巴基的墓地。这些访问具有深刻的精神意义，尽管它们本身并不是朝觐的仪式。';

  @override
  String get hajjIntro =>
      '朝觐是伊斯兰教的第五根柱子，对于每个身体和经济条件允许的穆斯林来说，终生只需履行一次。对于大多数今天的十二伊玛目什叶派朝圣者来说，这意味着在杜尔·希贾月进行的朝觐（Hajj al-Tamattu\'），追随先知易卜拉欣（AS）、他的儿子伊斯梅尔（AS）和哈贾尔女士的脚步。本指南遵循贾法里仪式的框架，而在麦地那的 ziyarat 则是朝觐前后深受珍视的旅程。';

  @override
  String get umrahIntro =>
      '副朝是前往麥加的小朝覲，與朝覲不同，它可以在一年中的任何時候進行。儘管它不是主命，但它具有極大的精神回賜，並被視為一項高度被鼓勵的敬拜行為。它與朝覲共享若干儀式，但時間更短，僅由四個主要儀式組成。';

  @override
  String get voiceInputTitle => '语音输入';

  @override
  String get voiceInputMicTitle => '麦克风';

  @override
  String get voiceInputMicSubtitle => '请说出您的输入以向 Ask Ayara 提问，而不是输入文字。';

  @override
  String get voiceInputMicDenied => '麦克风访问被拒绝。';

  @override
  String get voiceInputSpeak => '改为说话';

  @override
  String get voiceInputListening => '正在听取…';

  @override
  String get voiceInputPermissionDenied => '语音输入需要麦克风访问权限。';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => '选择你的语言';

  @override
  String get languageSelectSub => '你稍后可以在设置中更改';

  @override
  String get actionContinue => '继续';

  @override
  String get languageSuggestedHeader => '推荐';

  @override
  String get languageAllHeader => '所有语言';

  @override
  String get languageSuggestedBadge => '推荐';

  @override
  String get languageSearchHint => '搜索…';

  @override
  String get planBasic => '标准版';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => '每日指引';

  @override
  String get categorySlot02 => '信仰与信赖';

  @override
  String get categorySlot03 => '礼拜沉思';

  @override
  String get categorySlot04 => '忍耐与希望';

  @override
  String get categorySlot05 => '祈求宽恕';

  @override
  String get categorySlot06 => '仁慈与怜悯';

  @override
  String get categorySlot07 => '信仰的力量';

  @override
  String get categorySlot08 => '感恩之心';

  @override
  String get categorySlot09 => '生命的意义';

  @override
  String get categorySlot10 => '家庭纽带';

  @override
  String get categorySlot11 => '内心平静';

  @override
  String get categorySlot12 => '先知的智慧';

  @override
  String get categorySlot13 => '高尚品格';

  @override
  String get categorySlot14 => '抵御诱惑';

  @override
  String get categorySlot15 => '夜晚迪克尔';

  @override
  String get categoryCustom => '个人沉思';

  @override
  String get dhikrMeaningSubhanallah => '赞颂真主超绝万物';

  @override
  String get dhikrMeaningAlhamdulillah => '一切赞颂全归真主';

  @override
  String get dhikrMeaningAllahuAkbar => '真主至大';

  @override
  String get quranVerseHeartAtRest => '真的，唯有记念真主，心灵才得安宁。';

  @override
  String get promptHint => '点按一个类别，获取伊斯兰指引与沉思';

  @override
  String get currentLanguage => '当前语言';

  @override
  String get settingsLanguage => '语言设置';

  @override
  String get settingsTitle => '设置';

  @override
  String get chooseLanguage => '选择你的语言';

  @override
  String get continueCta => '继续';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个词',
      one: '$count 个词',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => '选项';

  @override
  String get newCta => '新建';

  @override
  String get actionsTitle => '你想做什么？';

  @override
  String get copy => '复制';

  @override
  String get share => '分享';

  @override
  String get close => '关闭';

  @override
  String get copiedToast => '已复制到剪贴板';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => '无法生成新的回复';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n你想再试一次吗？';
  }

  @override
  String get cancelCta => '取消';

  @override
  String get retryCta => '重试';

  @override
  String get authTitle => '创建你的账户';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get signInEmail => '使用电子邮箱登录';

  @override
  String get upgradeWithApple => '使用 Apple 继续';

  @override
  String get mustAccept => '你必须接受服务条款并确认隐私政策。';

  @override
  String get termsLabel => '我接受服务条款';

  @override
  String get privacyLabel => '我已阅读隐私政策';

  @override
  String get marketingOptIn => '我同意接收新闻和优惠信息';

  @override
  String get openTerms => '服务条款';

  @override
  String get openPrivacy => '隐私政策';

  @override
  String get accountSection => '账户';

  @override
  String get guestMode => '访客模式';

  @override
  String get signedIn => '已登录';

  @override
  String get upgradeHint => '创建账户后，可在多个设备间保存你的沉思内容。';

  @override
  String get upgradeWithGoogle => '使用 Google 继续';

  @override
  String get signOut => '退出登录';

  @override
  String get snackUpgraded => '已通过 Google 升级账户 ✅';

  @override
  String get snackSignedIn => '已通过 Google 登录 ✅';

  @override
  String get snackSignedOut => '已退出登录';

  @override
  String get snackSignedInApple => '已通过 Apple 登录 ✅';

  @override
  String get snackSignedInGoogle => '已通过 Google 登录 ✅';

  @override
  String get snackUpgradedApple => '已通过 Apple 升级账户 ✅';

  @override
  String get snackUpgradedGoogle => '已通过 Google 升级账户 ✅';

  @override
  String get historyTitle => '过往沉思';

  @override
  String get historyOpenCta => '过往沉思';

  @override
  String get historyEmpty => '还没有已保存的沉思内容。';

  @override
  String get historyDeleteTitle => '删除这条沉思？';

  @override
  String get historyDeleteBody => '这将永久移除所选内容。';

  @override
  String get deleteCta => '删除';

  @override
  String get historyButton => '过往沉思';

  @override
  String get historyEmptyTitle => '还没有沉思内容';

  @override
  String get historyEmptyBody => '先生成一些内容——你保存的内容会显示在这里。';

  @override
  String get historyDelete => '删除';

  @override
  String get footerTitle => '与 Wilaya、伊玛尼和萨布尔同行';

  @override
  String get footerSubtitle => '一次一段祈祷';

  @override
  String get genericErrorSnack => '出了点问题——请稍后再试。';

  @override
  String get upgradeAccountCta => '在多个设备间保存你的沉思内容——创建账户';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get exportData => '导出我的数据';

  @override
  String userUidLabel(String uid) {
    return 'UID：$uid';
  }

  @override
  String get rateLocalThrottle => '慢一点 🐯\nAyara 需要一点时间才能进行下一次回复…';

  @override
  String get rateDailyLimit => '你目前的沉思次数已用完。\n获取更多沉思次数，或升级到 Wilaya。';

  @override
  String get rateCreditsExhausted => '你已用完所有沉思次数。\n请充值或升级到 Wilaya 以继续。';

  @override
  String get rateGraceCreditsExhausted => '你目前的沉思次数已用完。\n获取更多沉思次数，或升级到 Wilaya。';

  @override
  String get premiumDescription => 'Wilaya 可解锁高级功能、未来类别以及专属徽章。';

  @override
  String ratePlanExhausted(String plan) {
    return '你目前没有可用沉思次数。当前计划：$plan。';
  }

  @override
  String rateCheckFailed(String message) {
    return '无法检查你的沉思次数：$message';
  }

  @override
  String get rateCheckGenericError => '检查你的沉思次数时出现问题。';

  @override
  String get aiFallbackGeneric => '出了点问题——请稍后再试。';

  @override
  String get limitSectionTitle => '沉思次数';

  @override
  String get limitTodayLabel => '使用情况';

  @override
  String limitCreditsLabel(Object credits) {
    return '剩余沉思次数：$credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return '计划：$plan';
  }

  @override
  String get limitLoadingLabel => '加载中…';

  @override
  String get limitLoadingLabelDescription => '在获取沉思统计时显示于沉思卡片中。';

  @override
  String get aiLimitTitle => '沉思次数';

  @override
  String get aiLimitSubtitle =>
      '每次回复会消耗 1 次沉思。标准版包含初始沉思次数。Wilaya 可解锁高级类别并支持充值。';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '已使用 $used / $total 次沉思';
  }

  @override
  String get creditsSectionTitle => '沉思次数';

  @override
  String get creditsUsageLabel => '使用情况';

  @override
  String creditsRemainingLabel(Object reflections) {
    return '剩余沉思次数：$reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return '计划：$plan';
  }

  @override
  String get creditsLoadingLabel => '加载中…';

  @override
  String get creditsLoadingLabelDescription => '在获取沉思统计时显示。';

  @override
  String get creditsTitle => '沉思次数';

  @override
  String get creditsSubtitle =>
      '每次回复会消耗 1 次沉思。标准版包含初始沉思次数。Wilaya 可解锁高级类别并支持充值。';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '已使用 $used / $total 次沉思';
  }

  @override
  String get settingsDeleteTitle => '删除账户';

  @override
  String get settingsDeleteDescription => '永久删除你的账户及所有相关数据。';

  @override
  String get settingsDeleteButtonLabel => '删除我的账户';

  @override
  String get settingsDeleteDialogTitle => '删除账户？';

  @override
  String get settingsDeleteDialogBody =>
      '此操作为永久操作，无法撤销。\n\n你的所有聊天记录、历史记录和账户信息都将被删除。';

  @override
  String get settingsDeleteDialogCancel => '取消';

  @override
  String get settingsDeleteDialogConfirm => '删除';

  @override
  String get settingsFreeLimitUsedTitle => '初始沉思次数已用完';

  @override
  String get settingsFreeLimitUsedDescription =>
      '此设备上的初始沉思次数已用完。请升级到 Wilaya 或购买更多沉思次数以继续。';

  @override
  String get settingsStarterCreditsUsedTitle => '初始沉思次数已用完';

  @override
  String get settingsStarterCreditsUsedDescription =>
      '此设备上的初始沉思次数已用完。请升级到 Wilaya 或购买更多沉思次数以继续。';

  @override
  String get deviceBoundError => '此设备已绑定到另一个账户。请使用原始账户登录。';

  @override
  String get premiumTitle => 'Wilaya 模式';

  @override
  String get premiumSubtitleBasic => '解锁完整的 Ayara 体验。';

  @override
  String get premiumSubtitlePremium => '你当前使用 Wilaya。还需要更多沉思次数吗？';

  @override
  String premiumCurrentPlan(Object plan) {
    return '当前计划：$plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return '沉思次数：$remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => '当前无法进行购买。';

  @override
  String get premiumSignInToPurchase => '请登录以购买沉思次数或解锁 Wilaya。';

  @override
  String get premiumRestorePurchases => '恢复购买';

  @override
  String get premiumProcessing => '处理中…';

  @override
  String get premiumRestoreHintTitle => '你是否曾在此设备或其他设备上购买过 Wilaya 或沉思次数？';

  @override
  String get premiumRestoreHintBody => '如果没有显示，请恢复你的购买记录。';

  @override
  String get premiumBuyCredits200 => '购买 200 次沉思';

  @override
  String get premiumBuyCredits400 => '购买 400 次沉思';

  @override
  String get premiumBecomePremiumOneTime => '升级到 Wilaya 模式';

  @override
  String get premiumTopupHint => '使用 Wilaya 后，你可以随时按需额外充值沉思次数。';

  @override
  String get premiumUpgradeCta => '升级';

  @override
  String get premiumRequiredForCategory =>
      '此类别仅对 Wilaya 用户开放。请在设置中升级以解锁所有高级内容。';

  @override
  String get premiumBenefitsBasic => '解锁 Wilaya，获取更多沉思次数、访问高级类别，并在需要指引时随时继续。';

  @override
  String get premiumBenefitsPremium =>
      '你当前处于 Wilaya 模式。如果沉思次数快用完了，可以补充更多并不中断地继续。';

  @override
  String get premiumButtonBecomePremium => '解锁 Wilaya';

  @override
  String get premiumButtonTopup1000 => '增加 1000 次沉思';

  @override
  String get premiumBadge => 'Wilaya 已激活';

  @override
  String get premiumLoadingStore => '正在加载商店…';

  @override
  String get premiumProductNotAvailable => '此商品目前尚未在商店中提供。请稍后再试。';

  @override
  String get premiumPurchaseError => '购买时出了点问题。请重试。';

  @override
  String get premiumBuyCredits100 => '增加 100 次沉思';

  @override
  String get premiumFeatureLocked => '请解锁 Wilaya 以访问此功能。';

  @override
  String get lockedCategoriesHint => '某些类别仅对 Wilaya 会员开放。解锁它们，以探索你旅程中的每一次沉思。';

  @override
  String get freePlanBlockedTitle => '你的初始沉思次数已用完';

  @override
  String get freePlanBlockedBody =>
      '你当前使用的是包含初始沉思次数的标准版，并且已达到使用上限。若要继续——并解锁高级类别——请升级到 Wilaya。';

  @override
  String get freePlanBlockedCtaGoPremium => '查看下方的 Wilaya 选项';

  @override
  String get graceBlockedTitle => '你的初始沉思次数已用完';

  @override
  String get graceBlockedBody =>
      '你当前使用的是包含初始沉思次数的标准版，并且已达到使用上限。若要继续——并解锁高级类别——请升级到 Wilaya。';

  @override
  String get graceBlockedCtaGoPremium => '查看下方的 Wilaya 选项';

  @override
  String get rateGuestMustSignIn => '请登录以使用 Ayara 和你的沉思次数。';

  @override
  String get guestNoCreditsTitle => '访客模式';

  @override
  String get guestNoCreditsBody =>
      '作为访客，你可以浏览应用，但无法使用沉思功能。稍后可在设置中登录，以使用沉思功能并解锁购买选项。';

  @override
  String get guestDialogContinue => '继续';

  @override
  String get guestDialogLoginInstead => '改为登录';

  @override
  String get optionalLabel => '可选';

  @override
  String get accountDeleteSuccessTitle => '账户已删除';

  @override
  String get accountDeleteSuccessBody => '你的账户及相关数据已成功删除。';

  @override
  String get accountDeleteSuccessClose => '关闭';

  @override
  String get accountDeleteErrorTitle => '无法删除账户';

  @override
  String get accountDeleteErrorClose => '确定';

  @override
  String get accountDeleteReauthCancelled => '重新验证已取消。请重新登录后再次尝试删除。';

  @override
  String get accountDeleteReauthRequired => '删除账户需要近期登录。请先退出，再重新登录后重试。';

  @override
  String get settingsDeletePermanentWarning =>
      '此操作为永久性操作，无法撤销。与你账户关联的所有数据都将被删除。';

  @override
  String get dailyGraceTitle => '每日指引';

  @override
  String get dailyGraceScriptureLabel => '今日经文';

  @override
  String get dailyGraceSaintLabel => '本周人物';

  @override
  String get dailyGraceReflectionLabel => '夜间沉思';

  @override
  String get dailyGraceCopiedToast => '经文已复制到剪贴板';

  @override
  String get locationConsentLabel => '允许 Ayara 使用我的位置来提供朝向和礼拜时间';

  @override
  String get locationConsentHint => '仅用于这些功能。你的位置不会被分享或保存。';

  @override
  String get askPageTitle => '问问 Ayara';

  @override
  String get askPageDescription =>
      '你可以询问任何关于信仰、礼拜、生活或伊斯兰实践的问题，并获得基于《古兰经》和圣裔教导的指引。';

  @override
  String get askPageInputHint => '在这里输入你的问题…';

  @override
  String get askPageSubmitCta => '提问';

  @override
  String get askPageInputEmptyError => '请先输入一个问题。';

  @override
  String get askResultYourQuestion => '你的问题';

  @override
  String get guidancePageTitle => '朝向';

  @override
  String get qiblaFacingMecca => '朝向麦加';

  @override
  String get qiblaCompassInstruction => '旋转你的手机，直到金色指针朝上。\n那个方向就是朝向（麦加）。';

  @override
  String get qiblaGpsUnavailableBody => 'GPS 信号较弱。请到室外并点击“重试”。';

  @override
  String get qiblaRetry => '重试';

  @override
  String get qiblaTitle => '朝向方向';

  @override
  String qiblaDistanceLabel(String km) {
    return '距麦加 $km 公里';
  }

  @override
  String get qiblaLocationNeededTitle => '需要位置权限';

  @override
  String get qiblaLocationNeededBody =>
      '请允许访问位置，以便 Ayara 根据你当前所在地点计算朝向麦加天房的方向。';

  @override
  String get qiblaOpenSettings => '打开设置';

  @override
  String get qiblaCompassLoading => '正在确定你的位置…';

  @override
  String get qiblaTowardMecca => '朝向麦加';

  @override
  String get prayerTimesTitle => '礼拜时间';

  @override
  String get prayerTimesFajr => '晨礼';

  @override
  String get prayerTimesDhuhr => '晌礼';

  @override
  String get prayerTimesAsr => '晡礼';

  @override
  String get prayerTimesMaghrib => '昏礼';

  @override
  String get prayerTimesIsha => '宵礼';

  @override
  String get prayerTimesLocationNeededTitle => '需要位置权限';

  @override
  String get prayerTimesLocationNeededBody =>
      '请允许访问位置，以便 Ayara 为你的城市计算准确的礼拜时间。';

  @override
  String get prayerTimesNextLabel => '下一个';

  @override
  String get prayerTimesDoneLabel => '完成';

  @override
  String get monthlyPrayerTimesTitle => '月度礼拜时间';

  @override
  String get monthlyPrayerTimesViewButton => '查看整月';

  @override
  String get monthlyPrayerTimesNextMonth => '下个月';

  @override
  String get monthlyPrayerTimesDayHeader => '日期';

  @override
  String get sharePrayerTimes => '分享礼拜时间';

  @override
  String get notificationsSectionTitle => '通知';

  @override
  String get notificationsSectionSubtitle => '礼拜提醒、日历事件及更多';

  @override
  String get dailyReflectionReminderTitle => '每日沉思';

  @override
  String get dailyReflectionReminderDescription =>
      '一个温和的每日提醒，提醒你打开 Ayara，与信仰重新连结。';

  @override
  String get dailyReflectionReminderEnable => '启用每日提醒';

  @override
  String get dailyReflectionReminderTimeLabel => '提醒时间';

  @override
  String get prayerNotificationsTitle => '礼拜提醒';

  @override
  String get prayerNotificationsDescription => '在每次礼拜时间前收到温和提醒，帮助你整日保持与信仰的连结。';

  @override
  String get prayerNotificationsEnable => '启用礼拜提醒';

  @override
  String get prayerNotificationsOpenSettings => '打开通知设置';

  @override
  String get prayerNotificationsDenied => '通知已被禁用';

  @override
  String get prayerNotificationsDeniedHint => '请前往设置，允许 Ayara 的通知，以接收礼拜时间提醒。';

  @override
  String get notificationsConsentLabel => '允许礼拜时间通知';

  @override
  String get prayerNotifTitleFajr => '🌅 晨礼 — 黎明礼拜';

  @override
  String get prayerNotifBodyFajr =>
      '晨礼是圣裔清晨的礼拜。伊玛目阿里（AS）说：像守护你最宝贵的托付一样守护晨礼。起身、洁净，然后站立在真主面前。';

  @override
  String get prayerNotifTitleDhuhr => '☀️ 晌礼 — 正午礼拜';

  @override
  String get prayerNotifBodyDhuhr =>
      '圣裔的伊玛目们珍视每一个纪念真主的时刻。暂停你的一天，若有需要可将晌礼与晡礼合并，然后让你的心重新归向真主。';

  @override
  String get prayerNotifTitleAsr => '🌤️ 晡礼 — 午后礼拜';

  @override
  String get prayerNotifBodyAsr => '守护礼拜，因为它是你与真主之间的盟约。晡礼时间已经到了——不要让它在没有纪念中逝去。';

  @override
  String get prayerNotifTitleMaghrib => '🌇 昏礼 — 日落礼拜';

  @override
  String get prayerNotifBodyMaghrib =>
      '太阳已经落下——这是圣裔视为祈祷神圣时刻的时分。完成昏礼，在夜幕降临前向真主举手祈祷。';

  @override
  String get prayerNotifTitleIsha => '🌙 宵礼 — 夜间礼拜';

  @override
  String get prayerNotifBodyIsha =>
      '在真主的陪伴中结束你的一天。伊玛目们鼓励在宵礼之后礼夜功拜——但首先，请完成你的宵礼，并以纪念真主结束一天。';

  @override
  String get outOfReflectionsBannerText => '你已用完所有沉思次数';

  @override
  String get outOfReflectionsBannerCta => '获取更多';

  @override
  String get dhikrPageTitle => '迪克尔';

  @override
  String get dhikrTapToCount => '点击圆圈进行计数';

  @override
  String get dhikrResetButton => '重置';

  @override
  String get dhikrComplete => '真主至善';

  @override
  String get dhikrCompleteMessage => '你已完成 100 次对真主的纪念。愿它们成为你心中的光明。';

  @override
  String get disclaimerTitle => '关于本应用的指引';

  @override
  String get disclaimerBody =>
      'Ayara 提供以《古兰经》和圣裔教导为基础的伊斯兰沉思、提醒与灵性内容，以支持你个人的信仰旅程。这些内容仅供一般性信息与启发之用。\n\nAyara 不能替代合格的学者。\n本应用中的指引不能代替有学识的伊斯兰学者、马尔贾、或受过神学训练的老师。在什叶派伊斯兰中，宗教指引根植于贾法里法学体系，以及追随现世马尔贾（效法源泉）的传统——即以其裁决指导信众宗教实践的合格法学家。如果你对宗教律例、清真与禁忌事项，或个人宗教义务有疑问，请向合格的马尔贾或你所在社区的学者请教。\n\n本应用不发布宗教裁决。\nAyara 不会就法学问题或个人宗教义务作出权威性的决定。此处任何内容都不应被视为教法裁决或具有约束力的宗教指示。\n\n圣裔的核心地位。\n在什叶派伊斯兰中，先知穆罕默德 ﷺ 及其纯洁的家眷——圣裔——是继《古兰经》之后伊斯兰共同体的权威向导。圣裔中的十二位伊玛目是由真主所委任的伊斯兰教导阐释者。本应用中的内容反映了这一传统，并努力忠实地尊崇它。\n\n社区的重要性。\n本应用旨在鼓励你更深入地投身信仰，同时深切尊重你所在地清真寺、伊斯兰中心以及宗教社区所发挥的重要作用。我们鼓励你与附近合格的教师保持联系，并向他们学习。';

  @override
  String get disclaimerClose => '我明白了';

  @override
  String get disclaimerInfoTooltip => '关于本应用的指引';

  @override
  String get disclaimerSettingsSubtitle => '仅供一般信息参考。点击阅读完整声明。';

  @override
  String get disclaimerSectionHeader => '指引免责声明';

  @override
  String get navHome => '首页';

  @override
  String get navReflect => '沉思';

  @override
  String get navDuas => '杜阿';

  @override
  String get navCalendar => '日历';

  @override
  String get dashboardToday => '今天';

  @override
  String get dashboardComingUp => '即将到来';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '天',
      one: '天',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => '快捷入口';

  @override
  String get quickActionQibla => '朝向';

  @override
  String get quickActionDhikr => '迪克尔';

  @override
  String get quickActionDailyGrace => '指引';

  @override
  String get quickActionPrayerTimes => '礼拜时间';

  @override
  String get askAyaraTitle => '问问 Ayara';

  @override
  String get askAyaraSubtitle => '提出任何伊斯兰问题，并获得一则深思熟虑的引导式回答。';

  @override
  String get askAyaraHint => '例如：斋月的重要意义是什么？';

  @override
  String get askAyaraSubmit => '提问';

  @override
  String get wisdomOfTheDayTitle => '今日智慧';

  @override
  String get calendarScreenTitle => '伊斯兰日历';

  @override
  String get calendarUpcomingOccasions => '即将到来的纪念日';

  @override
  String get calendarOccasionRemindersTitle => '纪念日提醒';

  @override
  String get calendarOccasionRemindersHint => '会在每个纪念日前一晚提醒你';

  @override
  String get calendarNotifPermissionDenied => '通知权限被拒绝。请在设备设置中启用。';

  @override
  String get calendarNoEvents => '未找到即将到来的事件。';

  @override
  String get calendarAddToPhone => '添加到手机日历';

  @override
  String get calendarAddedToPhone => '已添加到日历';

  @override
  String get calendarCountdownToday => '今天';

  @override
  String get calendarCountdownTomorrow => '明天';

  @override
  String calendarCountdownDays(int days) {
    return '$days 天后';
  }

  @override
  String get calendarAH => '回历';

  @override
  String get calendarMonthJan => '1月';

  @override
  String get calendarMonthFeb => '2月';

  @override
  String get calendarMonthMar => '3月';

  @override
  String get calendarMonthApr => '4月';

  @override
  String get calendarMonthMay => '5月';

  @override
  String get calendarMonthJun => '6月';

  @override
  String get calendarMonthJul => '7月';

  @override
  String get calendarMonthAug => '8月';

  @override
  String get calendarMonthSep => '9月';

  @override
  String get calendarMonthOct => '10月';

  @override
  String get calendarMonthNov => '11月';

  @override
  String get calendarMonthDec => '12月';

  @override
  String get calendarSeasonMuharramEarly => '穆哈兰月的日子——铭记卡尔巴拉';

  @override
  String get calendarSeasonAshura => '阿舒拉——呀，侯赛因（AS）';

  @override
  String get calendarSeasonMuharramLate => '穆哈兰月——哀悼与沉思的日子';

  @override
  String get calendarSeasonArbaeen => '阿尔拜因——侯赛因的四十日';

  @override
  String get calendarSeasonRoadToArbaeen => '通往阿尔拜因之路';

  @override
  String get calendarSeasonMabath => '马巴阿斯·穆巴拉克——启示的黎明';

  @override
  String get calendarSeasonMidShaban => '舍尔邦中旬——伊玛目马赫迪（AJ）的诞辰';

  @override
  String get calendarSeasonRamadan => '斋月吉庆——古兰经之月';

  @override
  String get calendarSeasonGhadir => '盖迪尔节吉庆！';

  @override
  String get hijriMonth1 => '穆哈兰月';

  @override
  String get hijriMonth2 => '赛法尔月';

  @override
  String get hijriMonth3 => '赖比·欧瓦鲁月';

  @override
  String get hijriMonth4 => '赖比·阿希鲁月';

  @override
  String get hijriMonth5 => '主马达·欧拉月';

  @override
  String get hijriMonth6 => '主马达·阿希拉月';

  @override
  String get hijriMonth7 => '拉哲卜月';

  @override
  String get hijriMonth8 => '舍尔邦月';

  @override
  String get hijriMonth9 => '斋月';

  @override
  String get hijriMonth10 => '闪瓦鲁月';

  @override
  String get hijriMonth11 => '都·盖尔德月';

  @override
  String get hijriMonth12 => '都·希哲月';

  @override
  String get duasScreenTitle => '杜阿与瞻礼词';

  @override
  String get duasSearchHint => '搜索杜阿、瞻礼词…';

  @override
  String get duasFilterAll => '全部';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 则杜阿与瞻礼词',
      one: '$count 则杜阿',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => '未找到杜阿。';

  @override
  String get duaCategoryDaily => '每日';

  @override
  String get duaCategoryWeekly => '每周';

  @override
  String get duaCategoryOccasions => '纪念日';

  @override
  String get duaCategoryZiyarat => '瞻礼词';

  @override
  String get duaCategoryTasbih => '赞词';

  @override
  String get eventTypeBirth => '诞辰';

  @override
  String get eventTypeMartyrdom => '殉难';

  @override
  String get eventTypeOccasion => '纪念日';

  @override
  String get duaCopyTooltip => '复制翻译';

  @override
  String get duaToggleTransliteration => '音译';

  @override
  String get duaToggleTranslation => '翻译';

  @override
  String get duaAskAiLabel => '请 Ayara 解释这段杜阿';

  @override
  String get duaAskAiLockedLabel => '问 Ayara（Wilaya）';

  @override
  String get duaAiLockedMessage => 'Ayara 解释功能仅对 Wilaya 会员开放。请在设置中升级。';

  @override
  String duaAiComingSoon(String name) {
    return '向 Ayara 询问“$name”——即将推出！';
  }

  @override
  String get duaCopiedToast => '杜阿已复制到剪贴板。';

  @override
  String get tasbihAllahuAkbarMeaning => '真主至大';

  @override
  String get tasbihAlhamdulillahMeaning => '一切赞颂全归真主';

  @override
  String get tasbihSubhanallahMeaning => '赞颂真主超绝万物';

  @override
  String get tasbihResetTooltip => '重置';

  @override
  String get tasbihCompleteTitle => '赞词已完成';

  @override
  String get tasbihCompleteMessage => '愿真主接受你的赞颂。';

  @override
  String get tasbihTapHint => '点击任意位置进行计数';

  @override
  String get tasbihatScreenTitle => '礼拜指南';

  @override
  String get tasbihatScreenSubtitle => '礼拜中的赞颂词';

  @override
  String get tasbihatScreenDescription =>
      '这是一份完整的指南，介绍每日礼拜中及礼拜后所诵读的赞颂词——遵循圣裔（a）的传统。';

  @override
  String get tasbihatArba3Title => '四句赞词';

  @override
  String get tasbihatArba3Subtitle => '在第三与第四拜中诵读';

  @override
  String get tasbihatArba3Info =>
      '在什叶派法学中，四句赞词在晌礼、晡礼、昏礼和宵礼的第三、第四拜中取代《开端章》。诵读一次是主命，诵读三次则是可嘉行为。';

  @override
  String get tasbihatArba3Translation =>
      '赞颂真主超绝万物 · 一切赞颂全归真主\n除真主外绝无应受崇拜者 · 真主至大';

  @override
  String get tasbihatArba3CompleteTitle => '诵读完成';

  @override
  String get tasbihatArba3CompleteMessage => '愿你的礼拜被接受——阿敏';

  @override
  String get tasbihatArba3TapHint => '每次诵读后点击';

  @override
  String get tasbihatZahraSubtitle => '每次礼拜后 · 100 颗念珠';

  @override
  String get tasbihatZahraOriginLabel => '来源';

  @override
  String get tasbihatZahraHadith =>
      '法蒂玛·宰赫拉夫人（sa）曾向先知 ﷺ 请求一位仆人。先知说：“我不是要告诉你比这更好的吗？每次礼拜后念‘苏卜哈南拉’33次，‘艾勒哈姆杜利拉’33次，‘安拉乎艾克拜尔’34次。这比仆人对你更好。”';

  @override
  String get tasbihatZahraHadithSource => '——《比哈尔·安瓦尔》第85卷';

  @override
  String get tasbihatZahraOpenCounter => '打开赞词计数器';

  @override
  String get tasbihatDuasTitle => '推荐杜阿';

  @override
  String get tasbihatDuasSubtitle => '完成礼拜后';

  @override
  String get tasbihatDuaAyatKursiTitle => '宝座经文';

  @override
  String get tasbihatDuaAyatKursiWhen => '每次主命礼拜之后';

  @override
  String get tasbihatDuaAyatKursiSource => '《黄牛章》2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      '谁在每次主命礼拜后诵读宝座经文，他与天堂之间只隔着死亡。伊玛目巴基尔（a）说它是《古兰经》中最伟大的经文之一。';

  @override
  String get tasbihatDuaSalawatTitle => '祝福赞词';

  @override
  String get tasbihatDuaSalawatWhen => '每次礼拜后 · 封缄所有杜阿';

  @override
  String get tasbihatDuaSalawatSource => '伊玛目萨迪格（a）——《卡菲》';

  @override
  String get tasbihatDuaSalawatNote =>
      '向先知 ﷺ 及其纯洁家属（穆罕默德的家属）致祝福，是结束每一段杜阿的推荐做法。伊玛目萨迪格（a）说：“任何杜阿都会悬而未决，直到你向穆罕默德和他的家属致祝福。”';

  @override
  String get tasbihatDuaFarajTitle => '解困祈祷';

  @override
  String get tasbihatDuaFarajWhen => '每次礼拜后 · 为我们时代的伊玛目祈祷';

  @override
  String get tasbihatDuaFarajSource => '由伊玛目哈桑·阿斯卡里（a）传授';

  @override
  String get tasbihatDuaFarajNote =>
      '这是为伊玛目马赫迪（af）——第十二位伊玛目的重现而祈求的祷告，由他的父亲传授。许多什叶派穆斯林在祷告后常常诵念，以表达对活着的伊玛目的虔诚。';

  @override
  String get tasbihatDuaTasbihFatimaTitle => '法蒂玛夫人的赞词';

  @override
  String get tasbihatDuaTasbihFatimaWhen => '昏礼与宵礼之后 · 特别推荐';

  @override
  String get tasbihatDuaTasbihFatimaSource => '伊玛目巴基尔（a）——《比哈尔·安瓦尔》';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      '伊玛目巴基尔（a）说，在睡前于宵礼后诵读法蒂玛赞词，比一千拜副功拜更为优越。它的光会升向天际。';

  @override
  String get tasbihFatimaGiftPre => '来自先知的礼物';

  @override
  String get tasbihFatimaGiftPost => '每次礼拜后诵读';

  @override
  String get prayerTrackerTitle => '礼拜追踪';

  @override
  String get prayerTrackerPrayed => '已礼拜';

  @override
  String prayerTrackerDayStreak(int count) {
    return '连续 $count 天';
  }

  @override
  String get prayerTrackerAllComplete => '今天所有礼拜已完成。愿真主接受。';

  @override
  String get dhikrTrackerTitle => '法蒂玛赞词';

  @override
  String get dhikrTrackerCompletedToday => '今天已完成';

  @override
  String get dhikrTrackerNotDoneToday => '今天未完成';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '连续 $count 天';
  }

  @override
  String get dhikrReminderTitle => '赞词提醒';

  @override
  String get dhikrReminderDescription => '一个温和的每日提醒，提醒你诵念法蒂玛赞词（SA）。';

  @override
  String get dhikrReminderEnable => '启用赞词提醒';

  @override
  String get dhikrReminderTimeLabel => '提醒时间';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => '每日圣训';

  @override
  String get hadithLabelArabic => '阿拉伯文';

  @override
  String get hadithLabelTranslation => '翻译';

  @override
  String get hadithBadge => '圣训';

  @override
  String get hadithShare => '分享这段圣训';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\n来自 Ayara';
  }

  @override
  String get hadithNavPrevious => '上一条';

  @override
  String get hadithNavNext => '下一条';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '十四位无误者';

  @override
  String get imamsScreenSubtitle => '先知、法蒂玛女士和十二位伊玛目——在十二伊玛目什叶派伊斯兰教中纯洁且无误的引导者';

  @override
  String get imamLabelBorn => '出生';

  @override
  String get imamLabelMartyrdom => '殉难';

  @override
  String get imamLabelStatus => '身份';

  @override
  String get imamSectionBiography => '生平';

  @override
  String get imamSectionFamousSaying => '著名语录';

  @override
  String get imamRoleProphet => '最后的先知';

  @override
  String get imamRoleInfallible => '无过者';

  @override
  String get imamOrdinal1 => '第一伊玛目';

  @override
  String get imamOrdinal2 => '第二伊玛目';

  @override
  String get imamOrdinal3 => '第三伊玛目';

  @override
  String get imamOrdinal4 => '第四伊玛目';

  @override
  String get imamOrdinal5 => '第五伊玛目';

  @override
  String get imamOrdinal6 => '第六伊玛目';

  @override
  String get imamOrdinal7 => '第七伊玛目';

  @override
  String get imamOrdinal8 => '第八伊玛目';

  @override
  String get imamOrdinal9 => '第九伊玛目';

  @override
  String get imamOrdinal10 => '第十伊玛目';

  @override
  String get imamOrdinal11 => '第十一伊玛目';

  @override
  String get imamOrdinal12 => '第十二伊玛目';

  @override
  String get duaAudioScreenTitle => '聆听杜阿';

  @override
  String get duaAudioScreenSubtitle => '选择你想聆听的杜阿。点击卡片即可播放或暂停。';

  @override
  String get duaAudioComingSoonMessage => '此杜阿的音频将在未来更新中提供。';

  @override
  String get duaAudioClose => '关闭';

  @override
  String get duaAudioError => '无法加载音频。请检查你的网络连接。';

  @override
  String get duaAudioMetaTransmittedBy => '传述者';

  @override
  String get duaAudioMetaOccasion => '场合';

  @override
  String get duaAudioMetaDuration => '时长';

  @override
  String get quickActionDailyHadith => '每日圣训';

  @override
  String get quickAction14Masumeen => '十四位无误者';

  @override
  String get quickActionListenDuas => '聆听';

  @override
  String get quickActionTasbihat => '礼拜指南';

  @override
  String get pilgrimageSectionTitle => '神圣旅程';

  @override
  String get pilgrimageSectionSubtitle => '关于朝觐与副朝的完整指南——前往麦加真主圣殿的朝圣之旅';

  @override
  String get hajjCardTitle => '朝觐';

  @override
  String get hajjCardSubtitle => '伊斯兰五功之一';

  @override
  String get hajjCardDescription => '宏大的年度朝圣——对每位有能力的穆斯林而言，一生一次为主命';

  @override
  String get hajjScreenTitle => '朝觐指南';

  @override
  String get hajjScreenSubtitle => '大朝觐的分步指南';

  @override
  String get umrahCardTitle => '副朝';

  @override
  String get umrahCardSubtitle => '小朝觐';

  @override
  String get umrahCardDescription => '一段充满巨大精神回报、可在一年中任何时候进行的旅程';

  @override
  String get umrahScreenTitle => '副朝指南';

  @override
  String get umrahScreenSubtitle => '小朝觐的分步指南';

  @override
  String get pilgrimageStepsTitle => '仪式与步骤';

  @override
  String get pilgrimageImportantNotesTitle => '重要说明';

  @override
  String get pilgrimageDuaTitle => '此步骤的祈祷';

  @override
  String get pilgrimageJafariNoteTitle => '贾法里法学注释';

  @override
  String get pilgrimageComplete => '✓ 完成';

  @override
  String get pilgrimageMarkDone => '标记为完成';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total 步骤';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes 分钟';
  }

  @override
  String get pilgrimageShiaNoteTitle => '什叶派朝圣者';

  @override
  String get pilgrimageShiaNoteBody =>
      '许多什叶派朝圣者还会前往麦地那，朝拜先知穆罕默德（SAW）在纳巴维清真寺的遗址以及在贾纳特·巴基的墓地。这些访问具有深刻的精神意义，尽管它们本身并不是朝觐的仪式。';

  @override
  String get hajjIntro =>
      '朝觐是伊斯兰教的第五大支柱，对于每个身体和经济条件允许的穆斯林来说，终生只需履行一次。对于大多数今天的十二伊玛目什叶派朝圣者来说，这意味着在杜尔·希贾月进行的朝觐（Hajj al-Tamattu\'），追随先知易卜拉欣（AS）、他的儿子伊斯梅尔（AS）和哈贾尔女士的足迹。本指南遵循贾法里教义的仪式，而在麦地那的朝拜则是朝觐前后深受珍视的旅程。';

  @override
  String get umrahIntro =>
      '副朝是前往麦加的小朝觐，与朝觐不同，它可以在一年中的任何时间进行。尽管它不是主命，但它具有极大的精神回赐，并被视为一项高度被鼓励的敬拜行为。它与朝觐共享若干仪式，但时间更短，仅由四个主要仪式组成。';

  @override
  String get voiceInputTitle => '语音输入';

  @override
  String get voiceInputMicTitle => '麦克风';

  @override
  String get voiceInputMicSubtitle => '请说出您的输入以向 Ask Ayara 提问，而不是输入文字。';

  @override
  String get voiceInputMicDenied => '麦克风访问被拒绝。';

  @override
  String get voiceInputSpeak => '改为说话';

  @override
  String get voiceInputListening => '正在听取…';

  @override
  String get voiceInputPermissionDenied => '语音输入需要麦克风访问权限。';
}

/// The translations for Chinese, as used in Hong Kong (`zh_HK`).
class AppLocalizationsZhHk extends AppLocalizationsZh {
  AppLocalizationsZhHk() : super('zh_HK');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => '選擇你的語言';

  @override
  String get languageSelectSub => '你可以稍後在設定中更改';

  @override
  String get actionContinue => '繼續';

  @override
  String get languageSuggestedHeader => '建議';

  @override
  String get languageAllHeader => '所有語言';

  @override
  String get languageSuggestedBadge => '建議';

  @override
  String get languageSearchHint => '搜尋…';

  @override
  String get planBasic => '標準';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => '每日指引';

  @override
  String get categorySlot02 => '信仰與信賴';

  @override
  String get categorySlot03 => '禮拜省思';

  @override
  String get categorySlot04 => '忍耐與希望';

  @override
  String get categorySlot05 => '祈求寬恕';

  @override
  String get categorySlot06 => '慈憫與憐憫';

  @override
  String get categorySlot07 => '信仰力量';

  @override
  String get categorySlot08 => '感恩之心';

  @override
  String get categorySlot09 => '人生目的';

  @override
  String get categorySlot10 => '家庭聯繫';

  @override
  String get categorySlot11 => '內心平靜';

  @override
  String get categorySlot12 => '先知的智慧';

  @override
  String get categorySlot13 => '良好品格';

  @override
  String get categorySlot14 => '抗拒誘惑';

  @override
  String get categorySlot15 => '晚間 Dhikr';

  @override
  String get categoryCustom => '個人省思';

  @override
  String get dhikrMeaningSubhanallah => '讚頌真主超絕萬物';

  @override
  String get dhikrMeaningAlhamdulillah => '一切讚頌全歸真主';

  @override
  String get dhikrMeaningAllahuAkbar => '真主至大';

  @override
  String get quranVerseHeartAtRest => '的確，心靈唯因記念真主而得安寧。';

  @override
  String get promptHint => '點選一個分類以獲得伊斯蘭指引與省思';

  @override
  String get currentLanguage => '目前語言';

  @override
  String get settingsLanguage => '語言設定';

  @override
  String get settingsTitle => '設定';

  @override
  String get chooseLanguage => '選擇你的語言';

  @override
  String get continueCta => '繼續';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個字',
      one: '$count 個字',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => '選項';

  @override
  String get newCta => '新增';

  @override
  String get actionsTitle => '你想做甚麼？';

  @override
  String get copy => '複製';

  @override
  String get share => '分享';

  @override
  String get close => '關閉';

  @override
  String get copiedToast => '已複製到剪貼簿';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => '無法產生新的回覆';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n你想再試一次嗎？';
  }

  @override
  String get cancelCta => '取消';

  @override
  String get retryCta => '再試一次';

  @override
  String get authTitle => '建立你的帳戶';

  @override
  String get continueAsGuest => '以訪客身分繼續';

  @override
  String get signInGoogle => '使用 Google 登入';

  @override
  String get signInApple => '使用 Apple 登入';

  @override
  String get signInEmail => '使用電郵登入';

  @override
  String get upgradeWithApple => '使用 Apple 繼續';

  @override
  String get mustAccept => '你必須接受服務條款並確認私隱政策。';

  @override
  String get termsLabel => '我接受服務條款';

  @override
  String get privacyLabel => '我已閱讀私隱政策';

  @override
  String get marketingOptIn => '我同意接收新聞及優惠';

  @override
  String get openTerms => '服務條款';

  @override
  String get openPrivacy => '私隱政策';

  @override
  String get accountSection => '帳戶';

  @override
  String get guestMode => '訪客模式';

  @override
  String get signedIn => '已登入';

  @override
  String get upgradeHint => '建立帳戶後，可在不同裝置之間儲存你的省思。';

  @override
  String get upgradeWithGoogle => '使用 Google 繼續';

  @override
  String get signOut => '登出';

  @override
  String get snackUpgraded => '已使用 Google 升級帳戶 ✅';

  @override
  String get snackSignedIn => '已使用 Google 登入 ✅';

  @override
  String get snackSignedOut => '已登出';

  @override
  String get snackSignedInApple => '已使用 Apple 登入 ✅';

  @override
  String get snackSignedInGoogle => '已使用 Google 登入 ✅';

  @override
  String get snackUpgradedApple => '已使用 Apple 升級帳戶 ✅';

  @override
  String get snackUpgradedGoogle => '已使用 Google 升級帳戶 ✅';

  @override
  String get historyTitle => '過往省思';

  @override
  String get historyOpenCta => '過往省思';

  @override
  String get historyEmpty => '尚未有已儲存的省思。';

  @override
  String get historyDeleteTitle => '刪除此省思？';

  @override
  String get historyDeleteBody => '這將永久移除所選項目。';

  @override
  String get deleteCta => '刪除';

  @override
  String get historyButton => '過往省思';

  @override
  String get historyEmptyTitle => '尚未有省思';

  @override
  String get historyEmptyBody => '先產生一些內容——你已儲存的項目會顯示在這裡。';

  @override
  String get historyDelete => '刪除';

  @override
  String get footerTitle => '與 Wilaya、Iman 和 Sabr 同行';

  @override
  String get footerSubtitle => '一次一個祈禱';

  @override
  String get genericErrorSnack => '發生了一點問題——請稍後再試。';

  @override
  String get upgradeAccountCta => '在不同裝置儲存你的省思－建立帳戶';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get exportData => '匯出我的資料';

  @override
  String userUidLabel(String uid) {
    return 'UID：$uid';
  }

  @override
  String get rateLocalThrottle => '慢慢來 🐯\nAyara 需要一點時間才可以進行下一次…';

  @override
  String get rateDailyLimit => '你目前的省思次數已用完。\n獲取更多省思或升級至 Wilaya。';

  @override
  String get rateCreditsExhausted => '你已用完所有省思次數。\n加購或升級至 Wilaya 以繼續使用。';

  @override
  String get rateGraceCreditsExhausted => '你目前的省思次數已用完。\n獲取更多省思或升級至 Wilaya。';

  @override
  String get premiumDescription => 'Wilaya 可解鎖高級功能、未來分類及特別徽章。';

  @override
  String ratePlanExhausted(String plan) {
    return '你目前已沒有省思次數。方案：$plan。';
  }

  @override
  String rateCheckFailed(String message) {
    return '無法檢查你的省思次數：$message';
  }

  @override
  String get rateCheckGenericError => '檢查你的省思次數時發生錯誤。';

  @override
  String get aiFallbackGeneric => '發生了一點問題——請稍後再試。';

  @override
  String get limitSectionTitle => '省思次數';

  @override
  String get limitTodayLabel => '使用情況';

  @override
  String limitCreditsLabel(Object credits) {
    return '剩餘省思次數：$credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return '方案：$plan';
  }

  @override
  String get limitLoadingLabel => '載入中…';

  @override
  String get limitLoadingLabelDescription => '在取得使用統計資料期間於省思卡片中顯示。';

  @override
  String get aiLimitTitle => '省思次數';

  @override
  String get aiLimitSubtitle =>
      '每次回覆會使用 1 次省思。標準方案包含起始省思次數。Wilaya 可解鎖高級分類並支援加購。';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '已使用 $used / $total 次省思';
  }

  @override
  String get creditsSectionTitle => '省思次數';

  @override
  String get creditsUsageLabel => '使用情況';

  @override
  String creditsRemainingLabel(Object reflections) {
    return '剩餘省思次數：$reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return '方案：$plan';
  }

  @override
  String get creditsLoadingLabel => '載入中…';

  @override
  String get creditsLoadingLabelDescription => '在取得省思統計資料期間顯示。';

  @override
  String get creditsTitle => '省思次數';

  @override
  String get creditsSubtitle =>
      '每次回覆會使用 1 次省思。標準方案包含起始省思次數。Wilaya 可解鎖高級分類並支援加購。';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '已使用 $used / $total 次省思';
  }

  @override
  String get settingsDeleteTitle => '刪除帳戶';

  @override
  String get settingsDeleteDescription => '永久刪除你的帳戶及所有相關資料。';

  @override
  String get settingsDeleteButtonLabel => '刪除我的帳戶';

  @override
  String get settingsDeleteDialogTitle => '刪除帳戶？';

  @override
  String get settingsDeleteDialogBody =>
      '此操作屬永久性且無法復原。\n\n你的所有對話、歷史記錄及帳戶資料都會被刪除。';

  @override
  String get settingsDeleteDialogCancel => '取消';

  @override
  String get settingsDeleteDialogConfirm => '刪除';

  @override
  String get settingsFreeLimitUsedTitle => '起始省思次數已用完';

  @override
  String get settingsFreeLimitUsedDescription =>
      '此裝置的起始省思次數已用完。升級至 Wilaya 或購買更多省思次數以繼續使用。';

  @override
  String get settingsStarterCreditsUsedTitle => '起始省思次數已用完';

  @override
  String get settingsStarterCreditsUsedDescription =>
      '此裝置的起始省思次數已用完。升級至 Wilaya 或購買更多省思次數以繼續使用。';

  @override
  String get deviceBoundError => '此裝置已連結至另一個帳戶。請使用原本的帳戶登入。';

  @override
  String get premiumTitle => 'Wilaya 模式';

  @override
  String get premiumSubtitleBasic => '解鎖完整的 Ayara 體驗。';

  @override
  String get premiumSubtitlePremium => '你正在使用 Wilaya。需要更多省思次數嗎？';

  @override
  String premiumCurrentPlan(Object plan) {
    return '目前方案：$plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return '省思次數：$remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => '目前無法購買。';

  @override
  String get premiumSignInToPurchase => '登入以購買省思次數或解鎖 Wilaya。';

  @override
  String get premiumRestorePurchases => '恢復購買項目';

  @override
  String get premiumProcessing => '處理中…';

  @override
  String get premiumRestoreHintTitle => '你是否已在此裝置或其他裝置購買 Wilaya 或省思次數？';

  @override
  String get premiumRestoreHintBody => '如果未顯示，請恢復你的購買項目。';

  @override
  String get premiumBuyCredits200 => '購買 200 次省思';

  @override
  String get premiumBuyCredits400 => '購買 400 次省思';

  @override
  String get premiumBecomePremiumOneTime => '升級至 Wilaya 模式';

  @override
  String get premiumTopupHint => '使用 Wilaya，你可以在需要時隨時加購額外省思次數。';

  @override
  String get premiumUpgradeCta => '升級';

  @override
  String get premiumRequiredForCategory =>
      '此分類僅供 Wilaya 用戶使用。請在設定中升級以解鎖所有高級內容。';

  @override
  String get premiumBenefitsBasic => '解鎖 Wilaya，以獲得更多省思次數、使用高級分類，並在你需要指引時隨時繼續。';

  @override
  String get premiumBenefitsPremium =>
      '你正使用 Wilaya 模式。如果快要用完，可加購額外省思次數，無間斷繼續使用。';

  @override
  String get premiumButtonBecomePremium => '解鎖 Wilaya';

  @override
  String get premiumButtonTopup1000 => '新增 1000 次省思';

  @override
  String get premiumBadge => 'Wilaya 已啟用';

  @override
  String get premiumLoadingStore => '正在載入商店…';

  @override
  String get premiumProductNotAvailable => '此產品尚未在商店上架。請稍後再試。';

  @override
  String get premiumPurchaseError => '購買時發生錯誤。請再試一次。';

  @override
  String get premiumBuyCredits100 => '新增 100 次省思';

  @override
  String get premiumFeatureLocked => '解鎖 Wilaya 以使用此功能。';

  @override
  String get lockedCategoriesHint => '部分分類只供 Wilaya 會員使用。解鎖後即可在你的旅程中探索每一項省思。';

  @override
  String get freePlanBlockedTitle => '你已用完起始省思次數';

  @override
  String get freePlanBlockedBody =>
      '你目前使用的是標準方案，並附有起始省思次數，而你已達到上限。若要繼續使用——並解鎖高級分類——請升級至 Wilaya。';

  @override
  String get freePlanBlockedCtaGoPremium => '查看下方的 Wilaya 選項';

  @override
  String get graceBlockedTitle => '你已用完起始省思次數';

  @override
  String get graceBlockedBody =>
      '你目前使用的是標準方案，並附有起始省思次數，而你已達到上限。若要繼續使用——並解鎖高級分類——請升級至 Wilaya。';

  @override
  String get graceBlockedCtaGoPremium => '查看下方的 Wilaya 選項';

  @override
  String get rateGuestMustSignIn => '請登入以使用 Ayara 及你的省思次數。';

  @override
  String get guestNoCreditsTitle => '訪客模式';

  @override
  String get guestNoCreditsBody =>
      '作為訪客，你可以瀏覽應用程式，但不能使用省思次數。稍後可在設定中登入，以使用省思次數並解鎖購買功能。';

  @override
  String get guestDialogContinue => '繼續';

  @override
  String get guestDialogLoginInstead => '改為登入';

  @override
  String get optionalLabel => '可選';

  @override
  String get accountDeleteSuccessTitle => '帳戶已刪除';

  @override
  String get accountDeleteSuccessBody => '你的帳戶及相關資料已成功刪除。';

  @override
  String get accountDeleteSuccessClose => '關閉';

  @override
  String get accountDeleteErrorTitle => '無法刪除帳戶';

  @override
  String get accountDeleteErrorClose => '確定';

  @override
  String get accountDeleteReauthCancelled => '重新驗證已取消。請重新登入後再試刪除。';

  @override
  String get accountDeleteReauthRequired => '刪除帳戶需要最近一次登入。請先登出，再重新登入後重試。';

  @override
  String get settingsDeletePermanentWarning => '此操作屬永久性且無法復原。與你帳戶相關的所有資料都將被刪除。';

  @override
  String get dailyGraceTitle => '每日指引';

  @override
  String get dailyGraceScriptureLabel => '今日經文';

  @override
  String get dailyGraceSaintLabel => '本週聖人';

  @override
  String get dailyGraceReflectionLabel => '晚間省思';

  @override
  String get dailyGraceCopiedToast => '已將經文複製到剪貼簿';

  @override
  String get locationConsentLabel => '允許 Ayara 使用我的位置以提供朝拜方向及禮拜時間';

  @override
  String get locationConsentHint => '只用於這些功能。你的位置不會被分享或儲存。';

  @override
  String get askPageTitle => '問 Ayara';

  @override
  String get askPageDescription =>
      '就信仰、禮拜、人生或伊斯蘭實踐提出任何問題，並獲得根植於《古蘭經》與 Ahl al-Bayt 教導的指引。';

  @override
  String get askPageInputHint => '在此輸入你的問題…';

  @override
  String get askPageSubmitCta => '提問';

  @override
  String get askPageInputEmptyError => '請先輸入一條問題。';

  @override
  String get askResultYourQuestion => '你的問題';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => '面向麥加';

  @override
  String get qiblaCompassInstruction => '旋轉你的手機，直到金色指針向上。\n該方向就是朝拜方向（麥加）。';

  @override
  String get qiblaGpsUnavailableBody => 'GPS 訊號較弱。請移步到室外並點按「重試」。';

  @override
  String get qiblaRetry => '重試';

  @override
  String get qiblaTitle => '朝拜方向';

  @override
  String qiblaDistanceLabel(String km) {
    return '距離麥加 $km 公里';
  }

  @override
  String get qiblaLocationNeededTitle => '需要位置資訊';

  @override
  String get qiblaLocationNeededBody => '請允許定位，讓 Ayara 能夠從你所在位置計算麥加天房的方向。';

  @override
  String get qiblaOpenSettings => '開啟設定';

  @override
  String get qiblaCompassLoading => '正在尋找你的位置…';

  @override
  String get qiblaTowardMecca => '朝向麥加';

  @override
  String get prayerTimesTitle => '禮拜時間';

  @override
  String get prayerTimesFajr => '晨禮';

  @override
  String get prayerTimesDhuhr => '晌禮';

  @override
  String get prayerTimesAsr => '晡禮';

  @override
  String get prayerTimesMaghrib => '昏禮';

  @override
  String get prayerTimesIsha => '宵禮';

  @override
  String get prayerTimesLocationNeededTitle => '需要位置資訊';

  @override
  String get prayerTimesLocationNeededBody => '請允許定位，讓 Ayara 為你的城市計算準確的禮拜時間。';

  @override
  String get prayerTimesNextLabel => '下一個';

  @override
  String get prayerTimesDoneLabel => '完成';

  @override
  String get monthlyPrayerTimesTitle => '每月禮拜時間';

  @override
  String get monthlyPrayerTimesViewButton => '查看整個月份';

  @override
  String get monthlyPrayerTimesNextMonth => '下個月';

  @override
  String get monthlyPrayerTimesDayHeader => '日';

  @override
  String get sharePrayerTimes => '分享禮拜時間';

  @override
  String get notificationsSectionTitle => '通知';

  @override
  String get notificationsSectionSubtitle => '禮拜提醒、日曆事件及更多';

  @override
  String get dailyReflectionReminderTitle => '每日省思';

  @override
  String get dailyReflectionReminderDescription =>
      '每天一個溫和提醒，打開 Ayara 並與你的信仰重新連結。';

  @override
  String get dailyReflectionReminderEnable => '啟用每日提醒';

  @override
  String get dailyReflectionReminderTimeLabel => '提醒時間';

  @override
  String get prayerNotificationsTitle => '禮拜提醒';

  @override
  String get prayerNotificationsDescription => '在每次禮拜時間前接收溫和提醒，幫助你整天保持與信仰的連結。';

  @override
  String get prayerNotificationsEnable => '啟用禮拜提醒';

  @override
  String get prayerNotificationsOpenSettings => '開啟通知設定';

  @override
  String get prayerNotificationsDenied => '通知已被停用';

  @override
  String get prayerNotificationsDeniedHint => '前往設定，允許 Ayara 發送通知，以接收禮拜時間提醒。';

  @override
  String get notificationsConsentLabel => '允許禮拜時間通知';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — 黎明禮拜';

  @override
  String get prayerNotifBodyFajr =>
      '晨禮是 Ahl al-Bayt 清晨的禮拜。伊瑪目阿里（AS）曾說：守護晨禮，如同守護你最珍貴的託付。起來吧，潔淨自己，然後站立在真主面前。';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — 正午禮拜';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayt 的眾伊瑪目珍視每一刻對真主的記念。暫停你的一天，如有需要可將晌禮與晡禮合併，並讓你的心回歸真主。';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — 下午禮拜';

  @override
  String get prayerNotifBodyAsr => '守護禮拜，因為它是真主與你之間的盟約。晡禮時間已到——不要讓它在沒有記念中流逝。';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — 日落禮拜';

  @override
  String get prayerNotifBodyMaghrib =>
      '太陽已落下——Ahl al-Bayt 視之為祈求的神聖時刻。完成昏禮，並在夜晚開始前向真主舉手祈禱。';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — 夜間禮拜';

  @override
  String get prayerNotifBodyIsha =>
      '在真主的陪伴中結束你的一天。眾伊瑪目鼓勵在宵禮後進行夜間禮拜（Salat al-Layl）——但首先，先完成你的宵禮，並以對祂的記念結束這一天。';

  @override
  String get outOfReflectionsBannerText => '你已用完所有省思次數';

  @override
  String get outOfReflectionsBannerCta => '獲取更多';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => '點按圓圈以計數';

  @override
  String get dhikrResetButton => '重設';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage => '你已完成 100 次對真主的記念。願這成為你心中的光。';

  @override
  String get disclaimerTitle => '關於本應用的指引';

  @override
  String get disclaimerBody =>
      'Ayara 提供伊斯蘭省思、提醒和靈性內容，以支持你個人的信仰旅程，內容根植於《古蘭經》及 Ahl al-Bayt 的教導。這些內容僅供一般資訊及啟發用途。\n\nAyara 不能取代具資格的學者。\n本應用中的指引不能取代有學識的伊斯蘭學者、marja\' 或受過神學訓練的老師。在什葉派伊斯蘭中，宗教指引根植於 Ja\'fari 法學學派（fiqh），以及追隨在世 Marja\'（效法來源）的傳統——即具資格的法學家，其裁決用以指引信徒的宗教實踐。如果你對宗教裁決、清真與非法事項，或個人宗教義務有疑問，請向具資格的 Marja\' 或你社群中的學者請教。\n\n本應用不作宗教裁決。\nAyara 不會對 fiqh 問題或個人宗教義務作出權威判定。這裡的任何內容都不應被視為 fatwa 或具約束力的宗教指示。\n\nAhl al-Bayt 的核心地位。\n在什葉派伊斯蘭中，先知 Muhammad ﷺ 及其潔淨的家族——Ahl al-Bayt——是《古蘭經》之後伊斯蘭社群的權威引導者。Ahl al-Bayt 的十二位伊瑪目是由真主指定的伊斯蘭教義詮釋者。本應用的內容反映了這一傳統，並努力忠實地尊崇它。\n\n社群的重要性。\n本應用旨在鼓勵你更深入地接近信仰，同時深切尊重你本地清真寺、伊斯蘭中心及宗教社群的重要角色。我們鼓勵你與附近具資格的老師保持聯繫並向他們學習。';

  @override
  String get disclaimerClose => '我明白了';

  @override
  String get disclaimerInfoTooltip => '關於本應用的指引';

  @override
  String get disclaimerSettingsSubtitle => '僅供一般資訊用途。點按以閱讀完整免責聲明。';

  @override
  String get disclaimerSectionHeader => '指引免責聲明';

  @override
  String get navHome => '首頁';

  @override
  String get navReflect => '省思';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => '日曆';

  @override
  String get dashboardToday => '今天';

  @override
  String get dashboardComingUp => '即將到來';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '天',
      one: '天',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => '快速存取';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => '指引';

  @override
  String get quickActionPrayerTimes => '禮拜時間';

  @override
  String get askAyaraTitle => '問 Ayara';

  @override
  String get askAyaraSubtitle => '提出任何伊斯蘭問題，並獲得深思熟慮、具指引性的答案。';

  @override
  String get askAyaraHint => '例如：齋戒月有甚麼意義？';

  @override
  String get askAyaraSubmit => '提問';

  @override
  String get wisdomOfTheDayTitle => '今日箴言';

  @override
  String get calendarScreenTitle => '伊斯蘭日曆';

  @override
  String get calendarUpcomingOccasions => '即將到來的節日與日子';

  @override
  String get calendarOccasionRemindersTitle => '節日提醒';

  @override
  String get calendarOccasionRemindersHint => '每個節日前一晚收到通知';

  @override
  String get calendarNotifPermissionDenied => '通知權限被拒絕。請在裝置設定中啟用。';

  @override
  String get calendarNoEvents => '未找到即將到來的事件。';

  @override
  String get calendarAddToPhone => '添加到手機日曆';

  @override
  String get calendarAddedToPhone => '已添加到日曆';

  @override
  String get calendarCountdownToday => '今天';

  @override
  String get calendarCountdownTomorrow => '明天';

  @override
  String calendarCountdownDays(int days) {
    return '$days 天後';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => '1月';

  @override
  String get calendarMonthFeb => '2月';

  @override
  String get calendarMonthMar => '3月';

  @override
  String get calendarMonthApr => '4月';

  @override
  String get calendarMonthMay => '5月';

  @override
  String get calendarMonthJun => '6月';

  @override
  String get calendarMonthJul => '7月';

  @override
  String get calendarMonthAug => '8月';

  @override
  String get calendarMonthSep => '9月';

  @override
  String get calendarMonthOct => '10月';

  @override
  String get calendarMonthNov => '11月';

  @override
  String get calendarMonthDec => '12月';

  @override
  String get calendarSeasonMuharramEarly => '穆哈蘭月的日子——記念卡爾巴拉';

  @override
  String get calendarSeasonAshura => '阿舒拉——Ya Husayn（AS）';

  @override
  String get calendarSeasonMuharramLate => '穆哈蘭——哀悼與省思的日子';

  @override
  String get calendarSeasonArbaeen => '阿爾巴因——侯賽因的四十日';

  @override
  String get calendarSeasonRoadToArbaeen => '前往阿爾巴因之路';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak——啟示的黎明';

  @override
  String get calendarSeasonMidShaban => '沙爾邦月中——伊瑪目馬赫迪（AJ）誕辰';

  @override
  String get calendarSeasonRamadan => '齋戒月吉慶——《古蘭經》之月';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak!';

  @override
  String get hijriMonth1 => '穆哈蘭月';

  @override
  String get hijriMonth2 => '薩法爾月';

  @override
  String get hijriMonth3 => '賴比爾·敖外魯月';

  @override
  String get hijriMonth4 => '賴比爾·薩尼月';

  @override
  String get hijriMonth5 => '主馬達·敖外魯月';

  @override
  String get hijriMonth6 => '主馬達·薩尼月';

  @override
  String get hijriMonth7 => '賴哲卜月';

  @override
  String get hijriMonth8 => '沙爾邦月';

  @override
  String get hijriMonth9 => '齋戒月';

  @override
  String get hijriMonth10 => '閃瓦魯月';

  @override
  String get hijriMonth11 => '杜爾蓋爾德月';

  @override
  String get hijriMonth12 => '杜爾黑哲月';

  @override
  String get duasScreenTitle => 'Dua 與 Ziyarat';

  @override
  String get duasSearchHint => '搜尋 dua、ziyarat…';

  @override
  String get duasFilterAll => '全部';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 篇 dua 與 ziyarat',
      one: '$count 篇 dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => '找不到 dua。';

  @override
  String get duaCategoryDaily => '每日';

  @override
  String get duaCategoryWeekly => '每週';

  @override
  String get duaCategoryOccasions => '節日場合';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => '誕辰';

  @override
  String get eventTypeMartyrdom => '殉難';

  @override
  String get eventTypeOccasion => '節日';

  @override
  String get duaCopyTooltip => '複製翻譯';

  @override
  String get duaToggleTransliteration => '音譯';

  @override
  String get duaToggleTranslation => '翻譯';

  @override
  String get duaAskAiLabel => '請 Ayara 解釋這篇 dua';

  @override
  String get duaAskAiLockedLabel => '問 Ayara（Wilaya）';

  @override
  String get duaAiLockedMessage => 'Ayara 的解釋功能只提供給 Wilaya 會員。請在設定中升級。';

  @override
  String duaAiComingSoon(String name) {
    return '向 Ayara 詢問「$name」——即將推出！';
  }

  @override
  String get duaCopiedToast => 'Dua 已複製到剪貼簿。';

  @override
  String get tasbihAllahuAkbarMeaning => '真主至大';

  @override
  String get tasbihAlhamdulillahMeaning => '一切讚頌全歸真主';

  @override
  String get tasbihSubhanallahMeaning => '讚頌真主超絕萬物';

  @override
  String get tasbihResetTooltip => '重設';

  @override
  String get tasbihCompleteTitle => 'Tasbih 已完成';

  @override
  String get tasbihCompleteMessage => '願真主接受你的 dhikr。';

  @override
  String get tasbihTapHint => '點按任何位置以計數';

  @override
  String get tasbihatScreenTitle => '禮拜指南';

  @override
  String get tasbihatScreenSubtitle => '禮拜中的讚頌';

  @override
  String get tasbihatScreenDescription =>
      '完整指南，介紹在每日禮拜中及禮拜後誦讀的讚頌——依據 Ahl al-Bayt（a）的傳統。';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => '在第 3 與第 4 拜功中誦讀';

  @override
  String get tasbihatArba3Info =>
      '在什葉派法學中，Tasbiḥāt al-Arbaʿa 在晌禮、晡禮、昏禮及宵禮的第 3 與第 4 拜功中取代 Surah al-Fatiha。誦讀一次屬必行（wājib），誦讀三次則屬可嘉（mustaḥabb）。';

  @override
  String get tasbihatArba3Translation =>
      '讚頌真主超絕萬物 · 一切讚頌全歸真主\n除真主外，絕無應受崇拜者 · 真主至大';

  @override
  String get tasbihatArba3CompleteTitle => '誦讀完成';

  @override
  String get tasbihatArba3CompleteMessage => '願你的禮拜獲得接納——Āmīn';

  @override
  String get tasbihatArba3TapHint => '每次誦讀後點按';

  @override
  String get tasbihatZahraSubtitle => '每次禮拜後 · 100 顆珠子';

  @override
  String get tasbihatZahraOriginLabel => '來源';

  @override
  String get tasbihatZahraHadith =>
      '法蒂瑪·宰赫拉女士（sa）曾向先知 ﷺ 要求一名僕人。先知說：「我是否不告訴你一件比那更好的事？在每次禮拜後念 Subḥānallāh 33 次、Alḥamdulillāh 33 次、Allāhu Akbar 34 次。這對你比僕人更好。」';

  @override
  String get tasbihatZahraHadithSource => '—《Biḥār al-Anwār》，第 85 卷';

  @override
  String get tasbihatZahraOpenCounter => '開啟 Tasbīḥ 計數器';

  @override
  String get tasbihatDuasTitle => '推薦的 DUĀS';

  @override
  String get tasbihatDuasSubtitle => '在你完成禮拜之後';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => '每次主命禮拜之後';

  @override
  String get tasbihatDuaAyatKursiSource => '《黃牛章》2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      '凡在每次主命禮拜後誦讀 Āyat al-Kursī 的人，除死亡之外，沒有任何事能阻隔他進入樂園。伊瑪目巴基爾（a）說，這是《古蘭經》中最偉大的經文之一。';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => '每次禮拜後 · 為一切 dua 畫上句號';

  @override
  String get tasbihatDuaSalawatSource => '伊瑪目薩迪格（a）—《Al-Kāfī》';

  @override
  String get tasbihatDuaSalawatNote =>
      '在先知 ﷺ 及其潔淨的家族（Āl Muḥammad）上送上祝福，被推薦作為每篇 dua 的結尾。伊瑪目薩迪格（a）說：「任何 dua 都會停留不前，直到你向穆罕默德及其家人送上 ṣalawāt。」';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => '每次禮拜後 · 為我們這時代的伊瑪目';

  @override
  String get tasbihatDuaFarajSource => '由伊瑪目 Hasan al-ʿAskarī（a）所教導';

  @override
  String get tasbihatDuaFarajNote =>
      '這是一個為伊瑪目馬赫迪（af）重現而祈求的祈禱，這是第十二位伊瑪目的父親所教導的。許多什葉派穆斯林在祈禱後經常誦念，以表達對活著的伊瑪目的虔誠。';

  @override
  String get tasbihatDuaTasbihFatimaTitle => '法蒂瑪女士的 Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen => '昏禮及宵禮後 · 特別推薦';

  @override
  String get tasbihatDuaTasbihFatimaSource => '伊瑪目巴基爾（a）—《Biḥār al-Anwār》';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      '伊瑪目巴基爾（a）說，在宵禮後、睡前誦讀 Tasbīḥ al-Zahrā，勝過 1000 拜自願禮拜。它的光會升向諸天。';

  @override
  String get tasbihFatimaGiftPre => '來自先知的禮物';

  @override
  String get tasbihFatimaGiftPost => '在每次禮拜後誦讀';

  @override
  String get prayerTrackerTitle => '禮拜追蹤';

  @override
  String get prayerTrackerPrayed => '已禮拜';

  @override
  String prayerTrackerDayStreak(int count) {
    return '已連續 $count 天';
  }

  @override
  String get prayerTrackerAllComplete => '今天所有禮拜已完成。願真主接受。';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => '今天已完成';

  @override
  String get dhikrTrackerNotDoneToday => '今天尚未完成';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '已連續 $count 天';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ 提醒';

  @override
  String get dhikrReminderDescription => '每日溫和提醒你誦讀 Tasbīḥ al-Zahrā（SA）。';

  @override
  String get dhikrReminderEnable => '啟用 Tasbīḥ 提醒';

  @override
  String get dhikrReminderTimeLabel => '提醒時間';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => '每日 Hadith';

  @override
  String get hadithLabelArabic => '阿拉伯文';

  @override
  String get hadithLabelTranslation => '翻譯';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => '分享這則 Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\n來自 Ayara';
  }

  @override
  String get hadithNavPrevious => '上一則';

  @override
  String get hadithNavNext => '下一則';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '十四位無誤者';

  @override
  String get imamsScreenSubtitle => '先知、法蒂瑪女士和十二位伊瑪目——在十二伊瑪派伊斯蘭中純潔且無誤的指導者';

  @override
  String get imamLabelBorn => '誕生';

  @override
  String get imamLabelMartyrdom => '殉難';

  @override
  String get imamLabelStatus => '身分';

  @override
  String get imamSectionBiography => '生平';

  @override
  String get imamSectionFamousSaying => '名言';

  @override
  String get imamRoleProphet => '最後的先知';

  @override
  String get imamRoleInfallible => '無誤者';

  @override
  String get imamOrdinal1 => '第一位伊瑪目';

  @override
  String get imamOrdinal2 => '第二位伊瑪目';

  @override
  String get imamOrdinal3 => '第三位伊瑪目';

  @override
  String get imamOrdinal4 => '第四位伊瑪目';

  @override
  String get imamOrdinal5 => '第五位伊瑪目';

  @override
  String get imamOrdinal6 => '第六位伊瑪目';

  @override
  String get imamOrdinal7 => '第七位伊瑪目';

  @override
  String get imamOrdinal8 => '第八位伊瑪目';

  @override
  String get imamOrdinal9 => '第九位伊瑪目';

  @override
  String get imamOrdinal10 => '第十位伊瑪目';

  @override
  String get imamOrdinal11 => '第十一位伊瑪目';

  @override
  String get imamOrdinal12 => '第十二位伊瑪目';

  @override
  String get duaAudioScreenTitle => '收聽 Dua';

  @override
  String get duaAudioScreenSubtitle => '選擇一篇 dua 來收聽。點按卡片即可播放或暫停。';

  @override
  String get duaAudioComingSoonMessage => '此 dua 的音頻將在日後更新中提供。';

  @override
  String get duaAudioClose => '關閉';

  @override
  String get duaAudioError => '無法載入音頻。請檢查你的連線。';

  @override
  String get duaAudioMetaTransmittedBy => '傳述者';

  @override
  String get duaAudioMetaOccasion => '場合';

  @override
  String get duaAudioMetaDuration => '時長';

  @override
  String get quickActionDailyHadith => '每日 Hadith';

  @override
  String get quickAction14Masumeen => '十四位無誤者';

  @override
  String get quickActionListenDuas => '收聽';

  @override
  String get quickActionTasbihat => '禮拜指南';

  @override
  String get pilgrimageSectionTitle => '神聖旅程';

  @override
  String get pilgrimageSectionSubtitle => '完整的 Hajj 與 Umrah 指南——前往麥加真主天房的朝覲之旅';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => '伊斯蘭的第五大支柱';

  @override
  String get hajjCardDescription => '一年一度的偉大朝覲——對每位有能力的穆斯林而言，一生至少一次的主命';

  @override
  String get hajjScreenTitle => 'Hajj 指南';

  @override
  String get hajjScreenSubtitle => '偉大朝覲的逐步指南';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => '小朝覲';

  @override
  String get umrahCardDescription => '一段可在一年任何時間進行、極具回報的靈性旅程';

  @override
  String get umrahScreenTitle => 'Umrah 指南';

  @override
  String get umrahScreenSubtitle => '小朝覲的逐步指南';

  @override
  String get pilgrimageStepsTitle => '儀式與步驟';

  @override
  String get pilgrimageImportantNotesTitle => '重要事項';

  @override
  String get pilgrimageDuaTitle => '此步驟的祈禱';

  @override
  String get pilgrimageJafariNoteTitle => '賈法里法學註解';

  @override
  String get pilgrimageComplete => '✓ 完成';

  @override
  String get pilgrimageMarkDone => '標記為完成';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total 步驟';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes 分鐘';
  }

  @override
  String get pilgrimageShiaNoteTitle => '什葉派朝覲者';

  @override
  String get pilgrimageShiaNoteBody =>
      '許多什葉派朝聖者也會前往麥地那，參拜先知穆罕默德（SAW）在納巴維清真寺的聖地及在詹納特·巴基的墳墓。這些訪問具有深刻的靈性意義，儘管它們本身並不是朝覲的儀式。';

  @override
  String get hajjIntro =>
      '朝覲是伊斯蘭的第五根柱子，對每位身體和經濟上能夠的穆斯林來說，終生必須履行一次。對於今天大多數十二伊瑪派的朝聖者來說，這意味著在杜爾·希賈月進行的朝覲（Hajj al-Tamattu\'），追隨先知易卜拉欣（AS）、他的兒子伊斯馬伊爾（AS）和哈賈女士的腳步。本指南遵循賈法里派的儀式大綱，而在麥地那的朝聖仍然是一段深受珍視的旅程，無論是在朝覲之前還是之後。';

  @override
  String get umrahIntro =>
      'Umrah 是前往麥加的小朝覲，不同於 Hajj，它可在一年任何時間進行。雖然不是主命，但它帶來巨大的靈性回賜，並被視為非常值得鼓勵的崇拜行為。它與 Hajj 共通若干儀式，但更為簡短，由四個主要儀式組成。';

  @override
  String get voiceInputTitle => '語音輸入';

  @override
  String get voiceInputMicTitle => '麥克風';

  @override
  String get voiceInputMicSubtitle => '用語音向 Ask Ayara 提問，而不是打字。';

  @override
  String get voiceInputMicDenied => '麥克風訪問被拒絕。';

  @override
  String get voiceInputSpeak => '改為說話';

  @override
  String get voiceInputListening => '正在聆聽…';

  @override
  String get voiceInputPermissionDenied => '語音輸入需要麥克風訪問權限。';
}

/// The translations for Chinese, as used in Singapore (`zh_SG`).
class AppLocalizationsZhSg extends AppLocalizationsZh {
  AppLocalizationsZhSg() : super('zh_SG');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => '选择您的语言';

  @override
  String get languageSelectSub => '您稍后可以在设置中更改';

  @override
  String get actionContinue => '继续';

  @override
  String get languageSuggestedHeader => '推荐';

  @override
  String get languageAllHeader => '所有语言';

  @override
  String get languageSuggestedBadge => '推荐';

  @override
  String get languageSearchHint => '搜索…';

  @override
  String get planBasic => '标准';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => '每日指引';

  @override
  String get categorySlot02 => '信仰与信任';

  @override
  String get categorySlot03 => '礼拜反思';

  @override
  String get categorySlot04 => '耐心希望';

  @override
  String get categorySlot05 => '寻求宽恕';

  @override
  String get categorySlot06 => '仁慈怜悯';

  @override
  String get categorySlot07 => '信仰力量';

  @override
  String get categorySlot08 => '感恩之心';

  @override
  String get categorySlot09 => '人生目的';

  @override
  String get categorySlot10 => '家庭纽带';

  @override
  String get categorySlot11 => '内心平静';

  @override
  String get categorySlot12 => '先知智慧';

  @override
  String get categorySlot13 => '品德修养';

  @override
  String get categorySlot14 => '抵抗诱惑';

  @override
  String get categorySlot15 => '晚间念礼';

  @override
  String get categoryCustom => '个人反思';

  @override
  String get dhikrMeaningSubhanallah => '万能真主至高无上';

  @override
  String get dhikrMeaningAlhamdulillah => '一切赞颂都属于真主';

  @override
  String get dhikrMeaningAllahuAkbar => '真主至大';

  @override
  String get quranVerseHeartAtRest => '确实，在对真主的纪念中，心才能获得安宁。';

  @override
  String get promptHint => '点击一个类别获取伊斯兰指引和反思';

  @override
  String get currentLanguage => '当前语言';

  @override
  String get settingsLanguage => '语言设置';

  @override
  String get settingsTitle => '设置';

  @override
  String get chooseLanguage => '选择您的语言';

  @override
  String get continueCta => '继续';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个词',
      one: '$count 个词',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => '选项';

  @override
  String get newCta => '新建';

  @override
  String get actionsTitle => '您想要做什么？';

  @override
  String get copy => '复制';

  @override
  String get share => '分享';

  @override
  String get close => '关闭';

  @override
  String get copiedToast => '已复制到剪贴板';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => '无法生成新的回复';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n您想重试吗？';
  }

  @override
  String get cancelCta => '取消';

  @override
  String get retryCta => '重试';

  @override
  String get authTitle => '创建您的账户';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get signInEmail => '使用电子邮件登录';

  @override
  String get upgradeWithApple => '使用 Apple 继续';

  @override
  String get mustAccept => '您必须接受《服务条款》并确认已阅读《隐私政策》。';

  @override
  String get termsLabel => '我接受《服务条款》';

  @override
  String get privacyLabel => '我已阅读《隐私政策》';

  @override
  String get marketingOptIn => '我同意接收新闻和优惠';

  @override
  String get openTerms => '服务条款';

  @override
  String get openPrivacy => '隐私政策';

  @override
  String get accountSection => '账户';

  @override
  String get guestMode => '访客模式';

  @override
  String get signedIn => '已登录';

  @override
  String get upgradeHint => '通过创建账户，在所有设备上保存您的反思。';

  @override
  String get upgradeWithGoogle => '使用 Google 继续';

  @override
  String get signOut => '登出';

  @override
  String get snackUpgraded => '已使用 Google 升级账户 ✅';

  @override
  String get snackSignedIn => '已使用 Google 登录 ✅';

  @override
  String get snackSignedOut => '已登出';

  @override
  String get snackSignedInApple => '已使用 Apple 登录 ✅';

  @override
  String get snackSignedInGoogle => '已使用 Google 登录 ✅';

  @override
  String get snackUpgradedApple => '已使用 Apple 升级账户 ✅';

  @override
  String get snackUpgradedGoogle => '已使用 Google 升级账户 ✅';

  @override
  String get historyTitle => '以前的反思';

  @override
  String get historyOpenCta => '以前的反思';

  @override
  String get historyEmpty => '还没有保存任何反思。';

  @override
  String get historyDeleteTitle => '删除反思？';

  @override
  String get historyDeleteBody => '这将永久删除选定的项目。';

  @override
  String get deleteCta => '删除';

  @override
  String get historyButton => '以前的反思';

  @override
  String get historyEmptyTitle => '还没有反思';

  @override
  String get historyEmptyBody => '先生成一些内容——您保存的项目将显示在这里。';

  @override
  String get historyDelete => '删除';

  @override
  String get footerTitle => '秉持 Wilaya、信仰和耐心';

  @override
  String get footerSubtitle => '一次一个祈祷';

  @override
  String get genericErrorSnack => '出现问题——请稍后重试。';

  @override
  String get upgradeAccountCta => '在所有设备上保存您的反思——创建一个账户';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get exportData => '导出我的数据';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => '慢一点 🐯\nAyara 需要片刻来准备下一个…';

  @override
  String get rateDailyLimit => '您现在已用完本日反思。\n获取更多反思或升级到 Wilaya。';

  @override
  String get rateCreditsExhausted => '您已用完所有反思。\n充值或升级到 Wilaya 以继续。';

  @override
  String get rateGraceCreditsExhausted => '您现在已用完反思。\n获取更多反思或升级到 Wilaya。';

  @override
  String get premiumDescription => 'Wilaya 解锁高级功能、未来类别和特殊徽章。';

  @override
  String ratePlanExhausted(String plan) {
    return '您的反思现在已用完。方案：$plan。';
  }

  @override
  String rateCheckFailed(String message) {
    return '无法检查您的反思：$message';
  }

  @override
  String get rateCheckGenericError => '检查您的反思时出现问题。';

  @override
  String get aiFallbackGeneric => '出现问题——请稍后重试。';

  @override
  String get limitSectionTitle => '反思';

  @override
  String get limitTodayLabel => '使用情况';

  @override
  String limitCreditsLabel(Object credits) {
    return '剩余反思：$credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return '方案：$plan';
  }

  @override
  String get limitLoadingLabel => '加载中…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => '反思';

  @override
  String get aiLimitSubtitle => '每个回复使用 1 个反思。标准版包含初始反思。Wilaya 解锁高级类别并启用充值。';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total 反思已使用';
  }

  @override
  String get creditsSectionTitle => '反思';

  @override
  String get creditsUsageLabel => '使用情况';

  @override
  String creditsRemainingLabel(Object reflections) {
    return '剩余反思：$reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return '方案：$plan';
  }

  @override
  String get creditsLoadingLabel => '加载中…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => '反思';

  @override
  String get creditsSubtitle => '每个回复使用 1 个反思。标准版包含初始反思。Wilaya 解锁高级类别并启用充值。';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total 反思已使用';
  }

  @override
  String get settingsDeleteTitle => '删除账户';

  @override
  String get settingsDeleteDescription => '永久删除您的账户和所有相关数据。';

  @override
  String get settingsDeleteButtonLabel => '删除我的账户';

  @override
  String get settingsDeleteDialogTitle => '删除账户？';

  @override
  String get settingsDeleteDialogBody =>
      '此操作是永久性的，无法撤销。\n\n您的所有聊天、历史记录和账户信息都将被删除。';

  @override
  String get settingsDeleteDialogCancel => '取消';

  @override
  String get settingsDeleteDialogConfirm => '删除';

  @override
  String get settingsFreeLimitUsedTitle => '初始反思已使用';

  @override
  String get settingsFreeLimitUsedDescription =>
      '此设备的初始反思已使用。升级到 Wilaya 或购买更多反思以继续。';

  @override
  String get settingsStarterCreditsUsedTitle => '初始反思已使用';

  @override
  String get settingsStarterCreditsUsedDescription =>
      '此设备的初始反思已使用。升级到 Wilaya 或购买更多反思以继续。';

  @override
  String get deviceBoundError => '此设备已链接到另一个账户。请使用原始账户登录。';

  @override
  String get premiumTitle => 'Wilaya 模式';

  @override
  String get premiumSubtitleBasic => '解锁完整的 Ayara 体验。';

  @override
  String get premiumSubtitlePremium => '您在 Wilaya。需要更多反思？';

  @override
  String premiumCurrentPlan(Object plan) {
    return '当前方案：$plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return '反思：$remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => '购买现在不可用。';

  @override
  String get premiumSignInToPurchase => '登录以购买反思或解锁 Wilaya。';

  @override
  String get premiumRestorePurchases => '恢复购买';

  @override
  String get premiumProcessing => '处理中…';

  @override
  String get premiumRestoreHintTitle => '已在此设备或其他设备上购买了 Wilaya 或反思？';

  @override
  String get premiumRestoreHintBody => '如果购买未显示，请恢复您的购买。';

  @override
  String get premiumBuyCredits200 => '购买 200 个反思';

  @override
  String get premiumBuyCredits400 => '购买 400 个反思';

  @override
  String get premiumBecomePremiumOneTime => '升级到 Wilaya 模式';

  @override
  String get premiumTopupHint => '使用 Wilaya，您可以在需要时随时充值额外的反思。';

  @override
  String get premiumUpgradeCta => '升级';

  @override
  String get premiumRequiredForCategory => '此类别仅适用于 Wilaya 用户。在设置中升级以解锁所有高级内容。';

  @override
  String get premiumBenefitsBasic => '解锁 Wilaya 以获得额外反思、访问高级类别，并在需要指引时继续使用。';

  @override
  String get premiumBenefitsPremium =>
      '您在 Wilaya 模式中。如果反思不足，添加一些额外反思并继续使用而不中断。';

  @override
  String get premiumButtonBecomePremium => '解锁 Wilaya';

  @override
  String get premiumButtonTopup1000 => '添加 1000 个反思';

  @override
  String get premiumBadge => 'Wilaya 激活';

  @override
  String get premiumLoadingStore => '加载商店中…';

  @override
  String get premiumProductNotAvailable => '此产品在商店中暂未上架。请稍后重试。';

  @override
  String get premiumPurchaseError => '购买出现问题。请重试。';

  @override
  String get premiumBuyCredits100 => '添加 100 个反思';

  @override
  String get premiumFeatureLocked => '解锁 Wilaya 以访问此功能。';

  @override
  String get lockedCategoriesHint => '某些类别仅限 Wilaya 成员使用。解锁它们以在您的信仰之旅中探索每项反思。';

  @override
  String get freePlanBlockedTitle => '您已用完初始反思';

  @override
  String get freePlanBlockedBody =>
      '您在标准方案中有初始反思，并已达到限制。要继续——并解锁高级类别——升级到 Wilaya。';

  @override
  String get freePlanBlockedCtaGoPremium => '查看下面的 Wilaya 选项';

  @override
  String get graceBlockedTitle => '您已用完初始反思';

  @override
  String get graceBlockedBody =>
      '您在标准方案中有初始反思，并已达到限制。要继续——并解锁高级类别——升级到 Wilaya。';

  @override
  String get graceBlockedCtaGoPremium => '查看下面的 Wilaya 选项';

  @override
  String get rateGuestMustSignIn => '登录以使用 Ayara 和您的反思。';

  @override
  String get guestNoCreditsTitle => '访客模式';

  @override
  String get guestNoCreditsBody => '作为访客，您可以浏览应用，但无法使用反思。稍后在设置中登录以使用反思并解锁购买。';

  @override
  String get guestDialogContinue => '继续';

  @override
  String get guestDialogLoginInstead => '改为登录';

  @override
  String get optionalLabel => '可选';

  @override
  String get accountDeleteSuccessTitle => '账户已删除';

  @override
  String get accountDeleteSuccessBody => '您的账户和相关数据已成功删除。';

  @override
  String get accountDeleteSuccessClose => '关闭';

  @override
  String get accountDeleteErrorTitle => '无法删除账户';

  @override
  String get accountDeleteErrorClose => '确定';

  @override
  String get accountDeleteReauthCancelled => '重新认证已取消。请重新登录并重试删除。';

  @override
  String get accountDeleteReauthRequired => '账户删除需要最近登录。请登出、重新登录，然后重试。';

  @override
  String get settingsDeletePermanentWarning =>
      '此操作是永久性的，无法撤销。与您的账户关联的所有数据都将被删除。';

  @override
  String get dailyGraceTitle => '每日指引';

  @override
  String get dailyGraceScriptureLabel => '今日经文';

  @override
  String get dailyGraceSaintLabel => '本周人物';

  @override
  String get dailyGraceReflectionLabel => '晚间反思';

  @override
  String get dailyGraceCopiedToast => '经文已复制到剪贴板';

  @override
  String get locationConsentLabel => '允许 Ayara 使用我的位置进行朝向和礼拜时间计算';

  @override
  String get locationConsentHint => '仅用于这些功能。您的位置永不共享或存储。';

  @override
  String get askPageTitle => '问 Ayara';

  @override
  String get askPageDescription =>
      '询问任何关于信仰、礼拜、生活或伊斯兰实践的问题，获取以《古兰经》和家族领袖教导为根础的指引。';

  @override
  String get askPageInputHint => '在此输入您的问题…';

  @override
  String get askPageSubmitCta => '提问';

  @override
  String get askPageInputEmptyError => '请先写下您的问题。';

  @override
  String get askResultYourQuestion => '您的问题';

  @override
  String get guidancePageTitle => '朝向';

  @override
  String get qiblaFacingMecca => '面向麦加';

  @override
  String get qiblaCompassInstruction => '旋转您的手机，直到金色指针向上。\n该方向指向朝向（麦加）。';

  @override
  String get qiblaGpsUnavailableBody => 'GPS 信号较弱。请移到户外并点击重试。';

  @override
  String get qiblaRetry => '重试';

  @override
  String get qiblaTitle => '朝向方向';

  @override
  String qiblaDistanceLabel(String km) {
    return '距离麦加 $km 公里';
  }

  @override
  String get qiblaLocationNeededTitle => '需要位置';

  @override
  String get qiblaLocationNeededBody => '允许位置访问，以便 Ayara 可以从您所在的任何地方计算克尔白的方向。';

  @override
  String get qiblaOpenSettings => '打开设置';

  @override
  String get qiblaCompassLoading => '正在查找您的位置…';

  @override
  String get qiblaTowardMecca => '指向麦加';

  @override
  String get prayerTimesTitle => '礼拜时间';

  @override
  String get prayerTimesFajr => '晨礼';

  @override
  String get prayerTimesDhuhr => '正午礼';

  @override
  String get prayerTimesAsr => '午后礼';

  @override
  String get prayerTimesMaghrib => '日落礼';

  @override
  String get prayerTimesIsha => '宵礼';

  @override
  String get prayerTimesLocationNeededTitle => '需要位置';

  @override
  String get prayerTimesLocationNeededBody =>
      '允许位置访问，以便 Ayara 可以为您的城市计算准确的礼拜时间。';

  @override
  String get prayerTimesNextLabel => '下一个';

  @override
  String get prayerTimesDoneLabel => '完成';

  @override
  String get monthlyPrayerTimesTitle => '每月礼拜时间';

  @override
  String get monthlyPrayerTimesViewButton => '查看全月';

  @override
  String get monthlyPrayerTimesNextMonth => '下个月';

  @override
  String get monthlyPrayerTimesDayHeader => '日期';

  @override
  String get sharePrayerTimes => '分享礼拜时间';

  @override
  String get notificationsSectionTitle => '通知';

  @override
  String get notificationsSectionSubtitle => '礼拜提醒、日历事件等';

  @override
  String get dailyReflectionReminderTitle => '每日反思';

  @override
  String get dailyReflectionReminderDescription =>
      '一个温和的每日提醒，打开 Ayara 并与您的信仰联系。';

  @override
  String get dailyReflectionReminderEnable => '启用每日提醒';

  @override
  String get dailyReflectionReminderTimeLabel => '提醒时间';

  @override
  String get prayerNotificationsTitle => '礼拜提醒';

  @override
  String get prayerNotificationsDescription => '在每个礼拜时间前收到温和提醒，帮助您全天保持联系。';

  @override
  String get prayerNotificationsEnable => '启用礼拜提醒';

  @override
  String get prayerNotificationsOpenSettings => '打开通知设置';

  @override
  String get prayerNotificationsDenied => '通知已禁用';

  @override
  String get prayerNotificationsDeniedHint => '转到设置并允许 Ayara 的通知以接收礼拜时间提醒。';

  @override
  String get notificationsConsentLabel => '允许礼拜时间通知';

  @override
  String get prayerNotifTitleFajr => '🌅 晨礼——晨祷';

  @override
  String get prayerNotifBodyFajr =>
      '晨礼是家族领袖的早晨礼拜。阿里伊玛目（祝其平安）说：守护晨礼，就如守护您最珍贵的信任。起身、净化自己，站在真主面前。';

  @override
  String get prayerNotifTitleDhuhr => '☀️ 正午礼——正午祷';

  @override
  String get prayerNotifBodyDhuhr =>
      '家族领袖的伊玛目看重每一刻的纪念。暂停您的一天，如果需要可以合并正午礼和午后礼，并将您的心转向真主。';

  @override
  String get prayerNotifTitleAsr => '🌤️ 午后礼——午后祷';

  @override
  String get prayerNotifBodyAsr => '守护礼拜，因为它是您与真主的约定。午后礼时间已到——不要让它在没有纪念的情况下流逝。';

  @override
  String get prayerNotifTitleMaghrib => '🌇 日落礼——日落祷';

  @override
  String get prayerNotifBodyMaghrib =>
      '太阳落下了——一个家族领袖珍视的祈祷时刻。献上日落礼并在夜幕降临前向真主张开双手。';

  @override
  String get prayerNotifTitleIsha => '🌙 宵礼——夜祷';

  @override
  String get prayerNotifBodyIsha =>
      '在真主的陪伴下结束您的一天。伊玛目们鼓励在宵礼后进行夜间礼拜——但首先，完成您的宵礼并以他的纪念结束这一天。';

  @override
  String get outOfReflectionsBannerText => '您已用完所有反思';

  @override
  String get outOfReflectionsBannerCta => '获取更多';

  @override
  String get dhikrPageTitle => '念礼';

  @override
  String get dhikrTapToCount => '点击圆圈进行计数';

  @override
  String get dhikrResetButton => '重置';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage => '您已完成 100 次对真主的纪念。愿它们成为您心的光芒。';

  @override
  String get disclaimerTitle => '关于该应用的指引';

  @override
  String get disclaimerBody =>
      'Ayara 提供伊斯兰反思、提醒和精神内容，以支持您以《古兰经》和家族领袖教导为根础的个人信仰之旅。此内容仅供一般参考和灵感用途。\n\nAyara 不替代合格的学者。\n此应用中的指引不是替代学识渊博的伊斯兰学者、穆罕德思或神学训练教师的替代品。在什叶派伊斯兰中，宗教指引植根于贾法里法学学派（教法）和追随现世穆罕德思（效法来源）的传统——一位合格的法学家，其裁决指导信徒的宗教实践。如果您对宗教裁决、清洁和禁忌事项或个人宗教义务有疑问，请向合格的穆罕德思或社区中的学者寻求建议。\n\n此应用不发布宗教裁决。\nAyara 不对教法或个人宗教义务事项做出权威性裁定。此处的任何内容都不应被视为教法令或具有约束力的宗教指令。\n\n家族领袖的核心地位。\n在什叶派伊斯兰中，先知穆罕默德（祝其平安）及其纯洁的家族——家族领袖——是《古兰经》之后伊斯兰社区的权威指南。家族领袖的十二位伊玛目是伊斯兰教导的神圣任命解释者。此应用中的内容反映并忠实地尊重这一传统。\n\n社区事务。\n此应用旨在鼓励您与信仰的联系，同时深切尊重您当地清真寺、伊斯兰中心和宗教社区的重要作用。我们鼓励您与您附近的合格教师保持联系并向他们学习。';

  @override
  String get disclaimerClose => '我理解';

  @override
  String get disclaimerInfoTooltip => '关于该应用的指引';

  @override
  String get disclaimerSettingsSubtitle => '仅供一般参考。点击阅读完整免责声明。';

  @override
  String get disclaimerSectionHeader => '指引免责声明';

  @override
  String get navHome => '首页';

  @override
  String get navReflect => '反思';

  @override
  String get navDuas => '祈祷文';

  @override
  String get navCalendar => '日历';

  @override
  String get dashboardToday => '今天';

  @override
  String get dashboardComingUp => '即将到来';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '天',
      one: '天',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => '快速访问';

  @override
  String get quickActionQibla => '朝向';

  @override
  String get quickActionDhikr => '念礼';

  @override
  String get quickActionDailyGrace => '指引';

  @override
  String get quickActionPrayerTimes => '礼拜时间';

  @override
  String get askAyaraTitle => '问 Ayara';

  @override
  String get askAyaraSubtitle => '询问任何伊斯兰问题并获得深思熟虑的指引回答。';

  @override
  String get askAyaraHint => '例如 斋月的意义是什么？';

  @override
  String get askAyaraSubmit => '提问';

  @override
  String get wisdomOfTheDayTitle => '每日智慧';

  @override
  String get calendarScreenTitle => '伊斯兰日历';

  @override
  String get calendarUpcomingOccasions => '即将到来的场合';

  @override
  String get calendarOccasionRemindersTitle => '场合提醒';

  @override
  String get calendarOccasionRemindersHint => '在每个场合前晚上通知';

  @override
  String get calendarNotifPermissionDenied => '通知权限被拒。在您的设备设置中启用。';

  @override
  String get calendarNoEvents => '找不到即将到来的事件。';

  @override
  String get calendarAddToPhone => '添加到手机日历';

  @override
  String get calendarAddedToPhone => '已添加到日历';

  @override
  String get calendarCountdownToday => '今天';

  @override
  String get calendarCountdownTomorrow => '明天';

  @override
  String calendarCountdownDays(int days) {
    return '在 $days 天内';
  }

  @override
  String get calendarAH => '伊历';

  @override
  String get calendarMonthJan => '1 月';

  @override
  String get calendarMonthFeb => '2 月';

  @override
  String get calendarMonthMar => '3 月';

  @override
  String get calendarMonthApr => '4 月';

  @override
  String get calendarMonthMay => '5 月';

  @override
  String get calendarMonthJun => '6 月';

  @override
  String get calendarMonthJul => '7 月';

  @override
  String get calendarMonthAug => '8 月';

  @override
  String get calendarMonthSep => '9 月';

  @override
  String get calendarMonthOct => '10 月';

  @override
  String get calendarMonthNov => '11 月';

  @override
  String get calendarMonthDec => '12 月';

  @override
  String get calendarSeasonMuharramEarly => '穆哈兰月日子——纪念卡尔巴拉';

  @override
  String get calendarSeasonAshura => '阿苏拉——雅 侯赛因（祝其平安）';

  @override
  String get calendarSeasonMuharramLate => '穆哈兰月——哀悼和反思日子';

  @override
  String get calendarSeasonArbaeen => '阿尔巴因——侯赛因的四十天';

  @override
  String get calendarSeasonRoadToArbaeen => '通往阿尔巴因之路';

  @override
  String get calendarSeasonMabath => '派遣祝福——启示的曙光';

  @override
  String get calendarSeasonMidShaban => '舍班中旬——伊玛目马赫迪（祝其早日再现）的诞辰';

  @override
  String get calendarSeasonRamadan => '斋月祝福——古兰经之月';

  @override
  String get calendarSeasonGhadir => '漆迪尔节祝福！';

  @override
  String get hijriMonth1 => '穆哈兰月';

  @override
  String get hijriMonth2 => '萨法尔月';

  @override
  String get hijriMonth3 => '赖比月';

  @override
  String get hijriMonth4 => '赖比月二';

  @override
  String get hijriMonth5 => '朱马达月';

  @override
  String get hijriMonth6 => '朱马达月二';

  @override
  String get hijriMonth7 => '拉杰卜月';

  @override
  String get hijriMonth8 => '舍班月';

  @override
  String get hijriMonth9 => '斋月';

  @override
  String get hijriMonth10 => '沙瓦尔月';

  @override
  String get hijriMonth11 => '都勒盖德月';

  @override
  String get hijriMonth12 => '都勒黑及月';

  @override
  String get duasScreenTitle => '祈祷文和朝觐词';

  @override
  String get duasSearchHint => '搜索祈祷文、朝觐词…';

  @override
  String get duasFilterAll => '全部';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个祈祷文和朝觐词',
      one: '$count 个祈祷文',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => '找不到祈祷文。';

  @override
  String get duaCategoryDaily => '每日';

  @override
  String get duaCategoryWeekly => '每周';

  @override
  String get duaCategoryOccasions => '场合';

  @override
  String get duaCategoryZiyarat => '朝觐';

  @override
  String get duaCategoryTasbih => '赞颂';

  @override
  String get eventTypeBirth => '诞生';

  @override
  String get eventTypeMartyrdom => '殉道';

  @override
  String get eventTypeOccasion => '场合';

  @override
  String get duaCopyTooltip => '复制翻译';

  @override
  String get duaToggleTransliteration => '音译';

  @override
  String get duaToggleTranslation => '翻译';

  @override
  String get duaAskAiLabel => '让 Ayara 解释这个祈祷文';

  @override
  String get duaAskAiLockedLabel => '让 Ayara 解释 (Wilaya)';

  @override
  String get duaAiLockedMessage => 'Ayara 解释仅适用于 Wilaya 成员。在设置中升级。';

  @override
  String duaAiComingSoon(String name) {
    return '即将推出 Ayara 对\"$name\"的解释！';
  }

  @override
  String get duaCopiedToast => '祈祷文已复制到剪贴板。';

  @override
  String get tasbihAllahuAkbarMeaning => '真主至大';

  @override
  String get tasbihAlhamdulillahMeaning => '一切赞颂都属于真主';

  @override
  String get tasbihSubhanallahMeaning => '万能真主至高无上';

  @override
  String get tasbihResetTooltip => '重置';

  @override
  String get tasbihCompleteTitle => '赞颂完成';

  @override
  String get tasbihCompleteMessage => '愿真主接纳您的纪念。';

  @override
  String get tasbihTapHint => '点击任何地方进行计数';

  @override
  String get tasbihatScreenTitle => '礼拜指南';

  @override
  String get tasbihatScreenSubtitle => '礼拜中的赞颂';

  @override
  String get tasbihatScreenDescription => '礼拜期间和礼拜后所诵赞颂的完整指南——遵循家族领袖的传统。';

  @override
  String get tasbihatArba3Title => '四重赞颂';

  @override
  String get tasbihatArba3Subtitle => '在第 3 和第 4 拜中诵读';

  @override
  String get tasbihatArba3Info =>
      '在什叶派教法中，四重赞颂在正午礼、午后礼、日落礼和宵礼的第 3 和第 4 拜中代替《开章》。诵读一次是义务（必需），诵读三次是推荐（受欢迎）。';

  @override
  String get tasbihatArba3Translation =>
      '万能真主至高无上 · 一切赞颂都属于真主\n万物非主，唯有真主 · 真主至大';

  @override
  String get tasbihatArba3CompleteTitle => '诵读完成';

  @override
  String get tasbihatArba3CompleteMessage => '愿您的礼拜被接纳——阿闵';

  @override
  String get tasbihatArba3TapHint => '在每次诵读后点击';

  @override
  String get tasbihatZahraSubtitle => '每次礼拜之后 · 100 颗念珠';

  @override
  String get tasbihatZahraOriginLabel => '来源';

  @override
  String get tasbihatZahraHadith =>
      '法蒂玛·扎赫拉夫人（祝其平安）向先知（祝其平安）请求一个仆人。他说：\'我不应该向您指引一些更好的吗？在每次礼拜后诵读万能真主至高无上 33 次，一切赞颂都属于真主 33 次，真主至大 34 次。那对您比一个仆人更好。\'';

  @override
  String get tasbihatZahraHadithSource => '—— 《光辉之书》第 85 卷';

  @override
  String get tasbihatZahraOpenCounter => '打开赞颂计数器';

  @override
  String get tasbihatDuasTitle => '推荐祈祷文';

  @override
  String get tasbihatDuasSubtitle => '在完成您的礼拜后';

  @override
  String get tasbihatDuaAyatKursiTitle => '库尔西经';

  @override
  String get tasbihatDuaAyatKursiWhen => '在每次必须礼拜后';

  @override
  String get tasbihatDuaAyatKursiSource => '《黄牛章》2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      '在每次必须礼拜后诵读库尔西经的人，除了死亡外，没有任何东西能阻止他进入天堂。伊玛目巴基尔（祝其平安）说这是古兰经中最伟大的经文之一。';

  @override
  String get tasbihatDuaSalawatTitle => '赞颂';

  @override
  String get tasbihatDuaSalawatWhen => '在每次礼拜后 · 密封所有祈祷';

  @override
  String get tasbihatDuaSalawatSource => '伊玛目萨迪克（祝其平安）—— 《充足》';

  @override
  String get tasbihatDuaSalawatNote =>
      '向先知（祝其平安）及其纯洁的家族（穆罕默德的家族）发送赞颂是建议在每个祈祷后密封的。伊玛目萨迪克（祝其平安）说：\'任何祈祷都被暂停，直到您向穆罕默德及其家族发送赞颂。\'';

  @override
  String get tasbihatDuaFarajTitle => '拯救祈祷';

  @override
  String get tasbihatDuaFarajWhen => '在每次礼拜后 · 为我们时代的伊玛目';

  @override
  String get tasbihatDuaFarajSource => '由伊玛目哈桑·阿斯卡里（祝其平安）教导';

  @override
  String get tasbihatDuaFarajNote =>
      '这是为伊玛目马赫迪（af）重现而祈求的dua，伊玛目马赫迪是第十二位伊玛目，由他的父亲传授。许多什叶派穆斯林在祷告后常常诵念，以表达对活着的伊玛目的虔诚。';

  @override
  String get tasbihatDuaTasbihFatimaTitle => '法蒂玛夫人的赞颂';

  @override
  String get tasbihatDuaTasbihFatimaWhen => '在日落礼和宵礼之后 · 特别推荐';

  @override
  String get tasbihatDuaTasbihFatimaSource => '伊玛目巴基尔（祝其平安）—— 《光辉之书》';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      '伊玛目巴基尔（祝其平安）说，在宵礼后睡前诵读法蒂玛夫人的赞颂比 1000 拜自愿礼拜更好。其光芒上升到天堂。';

  @override
  String get tasbihFatimaGiftPre => '先知的礼物';

  @override
  String get tasbihFatimaGiftPost => '在每次礼拜后诵读';

  @override
  String get prayerTrackerTitle => '礼拜追踪';

  @override
  String get prayerTrackerPrayed => '已礼拜';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count 天连续';
  }

  @override
  String get prayerTrackerAllComplete => '今天所有礼拜已完成。愿真主接纳。';

  @override
  String get dhikrTrackerTitle => '法蒂玛赞颂';

  @override
  String get dhikrTrackerCompletedToday => '今天已完成';

  @override
  String get dhikrTrackerNotDoneToday => '今天未完成';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count 天连续';
  }

  @override
  String get dhikrReminderTitle => '赞颂提醒';

  @override
  String get dhikrReminderDescription => '一个温和的每日提醒来诵读您的法蒂玛赞颂。';

  @override
  String get dhikrReminderEnable => '启用赞颂提醒';

  @override
  String get dhikrReminderTimeLabel => '提醒时间';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => '每日圣训';

  @override
  String get hadithLabelArabic => '阿拉伯语';

  @override
  String get hadithLabelTranslation => '翻译';

  @override
  String get hadithBadge => '圣训';

  @override
  String get hadithShare => '分享此圣训';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\n通过 Ayara';
  }

  @override
  String get hadithNavPrevious => '上一个';

  @override
  String get hadithNavNext => '下一个';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '十四位无误者';

  @override
  String get imamsScreenSubtitle => '先知、法蒂玛女士和十二位伊玛目——在十二伊玛目什叶派伊斯兰中纯洁且无误的引导者';

  @override
  String get imamLabelBorn => '诞生';

  @override
  String get imamLabelMartyrdom => '殉道';

  @override
  String get imamLabelStatus => '状态';

  @override
  String get imamSectionBiography => '传记';

  @override
  String get imamSectionFamousSaying => '著名论述';

  @override
  String get imamRoleProphet => '最后的先知';

  @override
  String get imamRoleInfallible => '无罪的';

  @override
  String get imamOrdinal1 => '第 1 位伊玛目';

  @override
  String get imamOrdinal2 => '第 2 位伊玛目';

  @override
  String get imamOrdinal3 => '第 3 位伊玛目';

  @override
  String get imamOrdinal4 => '第 4 位伊玛目';

  @override
  String get imamOrdinal5 => '第 5 位伊玛目';

  @override
  String get imamOrdinal6 => '第 6 位伊玛目';

  @override
  String get imamOrdinal7 => '第 7 位伊玛目';

  @override
  String get imamOrdinal8 => '第 8 位伊玛目';

  @override
  String get imamOrdinal9 => '第 9 位伊玛目';

  @override
  String get imamOrdinal10 => '第 10 位伊玛目';

  @override
  String get imamOrdinal11 => '第 11 位伊玛目';

  @override
  String get imamOrdinal12 => '第 12 位伊玛目';

  @override
  String get duaAudioScreenTitle => '聆听祈祷文';

  @override
  String get duaAudioScreenSubtitle => '选择一个祈祷文聆听。点击瓷砖播放或暂停。';

  @override
  String get duaAudioComingSoonMessage => '此祈祷文的音频将在即将推出的更新中提供。';

  @override
  String get duaAudioClose => '关闭';

  @override
  String get duaAudioError => '无法加载音频。请检查您的连接。';

  @override
  String get duaAudioMetaTransmittedBy => '传承者';

  @override
  String get duaAudioMetaOccasion => '场合';

  @override
  String get duaAudioMetaDuration => '时长';

  @override
  String get quickActionDailyHadith => '每日圣训';

  @override
  String get quickAction14Masumeen => '十四位无误者';

  @override
  String get quickActionListenDuas => '聆听';

  @override
  String get quickActionTasbihat => '礼拜指南';

  @override
  String get pilgrimageSectionTitle => '神圣之旅';

  @override
  String get pilgrimageSectionSubtitle => '朝觐和副朝的完整指南——朝向麦加真主圣殿的朝拜';

  @override
  String get hajjCardTitle => '朝觐';

  @override
  String get hajjCardSubtitle => '伊斯兰的第五根支柱';

  @override
  String get hajjCardDescription => '伟大的年度朝觐——对每位身体和经济条件允许的穆斯林来说是一生中一次的义务';

  @override
  String get hajjScreenTitle => '朝觐指南';

  @override
  String get hajjScreenSubtitle => '伟大朝觐的分步指南';

  @override
  String get umrahCardTitle => '副朝';

  @override
  String get umrahCardSubtitle => '小朝觐';

  @override
  String get umrahCardDescription => '一次深刻有益的精神之旅，可在一年中任何时间进行';

  @override
  String get umrahScreenTitle => '副朝指南';

  @override
  String get umrahScreenSubtitle => '小朝觐的分步指南';

  @override
  String get pilgrimageStepsTitle => '仪式和步骤';

  @override
  String get pilgrimageImportantNotesTitle => '重要说明';

  @override
  String get pilgrimageDuaTitle => '此步骤的祈祷';

  @override
  String get pilgrimageJafariNoteTitle => '贾法里法学注释';

  @override
  String get pilgrimageComplete => '✓ 完成';

  @override
  String get pilgrimageMarkDone => '标记为完成';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total 步骤';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes 分钟';
  }

  @override
  String get pilgrimageShiaNoteTitle => '什叶派朝圣者';

  @override
  String get pilgrimageShiaNoteBody =>
      '许多什叶派朝圣者还会前往麦地那，朝拜先知穆罕默德（SAW）在纳巴维清真寺的 ziyarat 以及在巴基花园的墓地。这些访问具有深刻的精神意义，尽管它们本身并不是朝觐的仪式。';

  @override
  String get hajjIntro =>
      '朝觐是伊斯兰的第五大支柱，对于每个身体和经济条件允许的穆斯林来说，终生只需履行一次。对于大多数今天的十二伊玛目什叶派朝圣者来说，这意味着在杜尔希贾月进行的朝觐（Hajj al-Tamattu\'），追随先知易卜拉欣（AS）、他的儿子伊斯梅尔（AS）和哈贾尔女士的脚步。本指南遵循贾法里教义的仪式，而在麦地那的 ziyarat 则是朝觐前后深受珍视的旅程。';

  @override
  String get umrahIntro =>
      '副朝是到麦加的小朝觐，与朝觐不同，可在一年中任何时间进行。虽然不是义务，但它承载着巨大的精神回报，被认为是一种备受推荐的礼拜行为。它与朝觐分享几个仪式，但更短，包括四个主要仪式。';

  @override
  String get voiceInputTitle => '语音输入';

  @override
  String get voiceInputMicTitle => '麦克风';

  @override
  String get voiceInputMicSubtitle => '请说出您的输入以向 Ask Ayara 提问，而不是输入。';

  @override
  String get voiceInputMicDenied => '麦克风访问被拒绝。';

  @override
  String get voiceInputSpeak => '改为说话';

  @override
  String get voiceInputListening => '正在听取…';

  @override
  String get voiceInputPermissionDenied => '语音输入需要麦克风访问权限。';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => '選擇您的語言';

  @override
  String get languageSelectSub => '您稍後可在設定中變更';

  @override
  String get actionContinue => '繼續';

  @override
  String get languageSuggestedHeader => '推薦';

  @override
  String get languageAllHeader => '所有語言';

  @override
  String get languageSuggestedBadge => '推薦';

  @override
  String get languageSearchHint => '搜尋…';

  @override
  String get planBasic => '標準版';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => '每日指引';

  @override
  String get categorySlot02 => '信仰與信任';

  @override
  String get categorySlot03 => '祈禱反思';

  @override
  String get categorySlot04 => '耐心希望';

  @override
  String get categorySlot05 => '尋求寬恕';

  @override
  String get categorySlot06 => '慈悲憐憫';

  @override
  String get categorySlot07 => '信仰力量';

  @override
  String get categorySlot08 => '感恩之心';

  @override
  String get categorySlot09 => '人生目標';

  @override
  String get categorySlot10 => '家庭紐帶';

  @override
  String get categorySlot11 => '內心平靜';

  @override
  String get categorySlot12 => '先知智慧';

  @override
  String get categorySlot13 => '品德高尚';

  @override
  String get categorySlot14 => '抵禦誘惑';

  @override
  String get categorySlot15 => '晚間念誦';

  @override
  String get categoryCustom => '個人反思';

  @override
  String get dhikrMeaningSubhanallah => '讚頌真主的榮光';

  @override
  String get dhikrMeaningAlhamdulillah => '一切讚頌歸於真主';

  @override
  String get dhikrMeaningAllahuAkbar => '真主至大';

  @override
  String get quranVerseHeartAtRest => '確實，在紀念真主中，心靈才能安寧。';

  @override
  String get promptHint => '點選一個類別以獲得伊斯蘭引導和反思';

  @override
  String get currentLanguage => '當前語言';

  @override
  String get settingsLanguage => '語言設定';

  @override
  String get settingsTitle => '設定';

  @override
  String get chooseLanguage => '選擇您的語言';

  @override
  String get continueCta => '繼續';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個字',
      one: '$count 個字',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => '選項';

  @override
  String get newCta => '新增';

  @override
  String get actionsTitle => '您想做什麼？';

  @override
  String get copy => '複製';

  @override
  String get share => '分享';

  @override
  String get close => '關閉';

  @override
  String get copiedToast => '已複製到剪貼簿';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => '無法產生新的回覆';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n您想重試嗎？';
  }

  @override
  String get cancelCta => '取消';

  @override
  String get retryCta => '重試';

  @override
  String get authTitle => '建立您的帳戶';

  @override
  String get continueAsGuest => '以訪客身份繼續';

  @override
  String get signInGoogle => '使用 Google 登入';

  @override
  String get signInApple => '使用 Apple 登入';

  @override
  String get signInEmail => '使用電子郵件登入';

  @override
  String get upgradeWithApple => '使用 Apple 繼續';

  @override
  String get mustAccept => '您必須接受服務條款並承認隱私政策。';

  @override
  String get termsLabel => '我接受服務條款';

  @override
  String get privacyLabel => '我已閱讀隱私政策';

  @override
  String get marketingOptIn => '我同意接收新聞和優惠';

  @override
  String get openTerms => '服務條款';

  @override
  String get openPrivacy => '隱私政策';

  @override
  String get accountSection => '帳戶';

  @override
  String get guestMode => '訪客模式';

  @override
  String get signedIn => '已登入';

  @override
  String get upgradeHint => '透過建立帳戶以在多個裝置上保存您的反思。';

  @override
  String get upgradeWithGoogle => '使用 Google 繼續';

  @override
  String get signOut => '登出';

  @override
  String get snackUpgraded => '帳戶已使用 Google 升級 ✅';

  @override
  String get snackSignedIn => '已使用 Google 登入 ✅';

  @override
  String get snackSignedOut => '已登出';

  @override
  String get snackSignedInApple => '已使用 Apple 登入 ✅';

  @override
  String get snackSignedInGoogle => '已使用 Google 登入 ✅';

  @override
  String get snackUpgradedApple => '帳戶已使用 Apple 升級 ✅';

  @override
  String get snackUpgradedGoogle => '帳戶已使用 Google 升級 ✅';

  @override
  String get historyTitle => '之前的反思';

  @override
  String get historyOpenCta => '之前的反思';

  @override
  String get historyEmpty => '還沒有已保存的反思。';

  @override
  String get historyDeleteTitle => '刪除反思？';

  @override
  String get historyDeleteBody => '這將永久移除選定的項目。';

  @override
  String get deleteCta => '刪除';

  @override
  String get historyButton => '之前的反思';

  @override
  String get historyEmptyTitle => '還沒有反思';

  @override
  String get historyEmptyBody => '先產生一些內容 — 您已保存的項目將顯示在此處。';

  @override
  String get historyDelete => '刪除';

  @override
  String get footerTitle => '與 Wilaya、信仰和忍耐同在';

  @override
  String get footerSubtitle => '一次一個祈禱';

  @override
  String get genericErrorSnack => '發生錯誤 — 請稍後重試。';

  @override
  String get upgradeAccountCta => '在多個裝置上保存您的反思 – 建立帳戶';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get exportData => '匯出我的資料';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => '放慢點 🐯\nAyara 需要一點時間才能進行下一個…';

  @override
  String get rateDailyLimit => '您現在已經用完了反思。\n取得更多反思或升級到 Wilaya。';

  @override
  String get rateCreditsExhausted => '您已使用了所有反思。\n充值或升級到 Wilaya 以繼續。';

  @override
  String get rateGraceCreditsExhausted => '您現在已經用完了反思。\n取得更多反思或升級到 Wilaya。';

  @override
  String get premiumDescription => 'Wilaya 解鎖高級功能、未來類別和特殊徽章。';

  @override
  String ratePlanExhausted(String plan) {
    return '您的反思現在已空。計畫：$plan。';
  }

  @override
  String rateCheckFailed(String message) {
    return '無法檢查您的反思：$message';
  }

  @override
  String get rateCheckGenericError => '檢查您的反思時出錯。';

  @override
  String get aiFallbackGeneric => '發生錯誤 — 請稍後重試。';

  @override
  String get limitSectionTitle => '反思';

  @override
  String get limitTodayLabel => '使用情況';

  @override
  String limitCreditsLabel(Object credits) {
    return '剩餘反思：$credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return '計畫：$plan';
  }

  @override
  String get limitLoadingLabel => '載入中…';

  @override
  String get limitLoadingLabelDescription => '在反思卡片中顯示，同時正在取得使用統計。';

  @override
  String get aiLimitTitle => '反思';

  @override
  String get aiLimitSubtitle => '每個回應使用 1 個反思。標準版包含初級反思。Wilaya 解鎖高級類別並啟用充值。';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '已使用 $used / $total 個反思';
  }

  @override
  String get creditsSectionTitle => '反思';

  @override
  String get creditsUsageLabel => '使用情況';

  @override
  String creditsRemainingLabel(Object reflections) {
    return '剩餘反思：$reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return '計畫：$plan';
  }

  @override
  String get creditsLoadingLabel => '載入中…';

  @override
  String get creditsLoadingLabelDescription => '在正在取得反思統計時顯示。';

  @override
  String get creditsTitle => '反思';

  @override
  String get creditsSubtitle => '每個回應使用 1 個反思。標準版包含初級反思。Wilaya 解鎖高級類別並啟用充值。';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '已使用 $used / $total 個反思';
  }

  @override
  String get settingsDeleteTitle => '刪除帳戶';

  @override
  String get settingsDeleteDescription => '永久刪除您的帳戶及所有相關資料。';

  @override
  String get settingsDeleteButtonLabel => '刪除我的帳戶';

  @override
  String get settingsDeleteDialogTitle => '刪除帳戶？';

  @override
  String get settingsDeleteDialogBody =>
      '此操作是永久的，無法撤銷。\n\n您的所有聊天、歷史記錄和帳戶資訊將被刪除。';

  @override
  String get settingsDeleteDialogCancel => '取消';

  @override
  String get settingsDeleteDialogConfirm => '刪除';

  @override
  String get settingsFreeLimitUsedTitle => '初級反思已使用';

  @override
  String get settingsFreeLimitUsedDescription =>
      '此裝置的初級反思已使用。升級到 Wilaya 或購買更多反思以繼續。';

  @override
  String get settingsStarterCreditsUsedTitle => '初級反思已使用';

  @override
  String get settingsStarterCreditsUsedDescription =>
      '此裝置的初級反思已使用。升級到 Wilaya 或購買更多反思以繼續。';

  @override
  String get deviceBoundError => '此裝置已連結到另一個帳戶。請使用原始帳戶登入。';

  @override
  String get premiumTitle => 'Wilaya 模式';

  @override
  String get premiumSubtitleBasic => '解鎖完整的 Ayara 體驗。';

  @override
  String get premiumSubtitlePremium => '您在 Wilaya。需要更多反思嗎？';

  @override
  String premiumCurrentPlan(Object plan) {
    return '當前計畫：$plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return '反思：$remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => '購買目前不可用。';

  @override
  String get premiumSignInToPurchase => '登入以購買反思或解鎖 Wilaya。';

  @override
  String get premiumRestorePurchases => '恢復購買';

  @override
  String get premiumProcessing => '處理中…';

  @override
  String get premiumRestoreHintTitle => '已在此裝置或其他裝置上購買了 Wilaya 或反思？';

  @override
  String get premiumRestoreHintBody => '如果購買沒有顯示，請恢復您的購買。';

  @override
  String get premiumBuyCredits200 => '購買 200 個反思';

  @override
  String get premiumBuyCredits400 => '購買 400 個反思';

  @override
  String get premiumBecomePremiumOneTime => '升級到 Wilaya 模式';

  @override
  String get premiumTopupHint => '使用 Wilaya，您可以在需要時隨時充值額外的反思。';

  @override
  String get premiumUpgradeCta => '升級';

  @override
  String get premiumRequiredForCategory =>
      '此類別僅對 Wilaya 使用者可用。在設定中升級以解鎖所有高級內容。';

  @override
  String get premiumBenefitsBasic => '解鎖 Wilaya 以獲得額外反思、存取高級類別，並在需要指引時隨時繼續。';

  @override
  String get premiumBenefitsPremium => '您在 Wilaya 模式中。如果快用完了，請新增一些額外反思並繼續使用。';

  @override
  String get premiumButtonBecomePremium => '解鎖 Wilaya';

  @override
  String get premiumButtonTopup1000 => '新增 1000 個反思';

  @override
  String get premiumBadge => 'Wilaya 已啟用';

  @override
  String get premiumLoadingStore => '載入商店中…';

  @override
  String get premiumProductNotAvailable => '此產品目前在商店中不可用。請稍後重試。';

  @override
  String get premiumPurchaseError => '購買過程出錯。請重試。';

  @override
  String get premiumBuyCredits100 => '新增 100 個反思';

  @override
  String get premiumFeatureLocked => '解鎖 Wilaya 以存取此功能。';

  @override
  String get lockedCategoriesHint => '某些類別保留給 Wilaya 成員。解鎖它們以探索您信仰之旅中的每個反思。';

  @override
  String get freePlanBlockedTitle => '您已使用完初級反思';

  @override
  String get freePlanBlockedBody =>
      '您在標準版計畫上有初級反思，已達到限制。要繼續 — 並解鎖高級類別 — 請升級到 Wilaya。';

  @override
  String get freePlanBlockedCtaGoPremium => '查看下方 Wilaya 選項';

  @override
  String get graceBlockedTitle => '您已使用完初級反思';

  @override
  String get graceBlockedBody =>
      '您在標準版計畫上有初級反思，已達到限制。要繼續 — 並解鎖高級類別 — 請升級到 Wilaya。';

  @override
  String get graceBlockedCtaGoPremium => '查看下方 Wilaya 選項';

  @override
  String get rateGuestMustSignIn => '登入以使用 Ayara 和您的反思。';

  @override
  String get guestNoCreditsTitle => '訪客模式';

  @override
  String get guestNoCreditsBody =>
      '作為訪客，您可以瀏覽該應用程式，但無法使用反思。稍後在設定中登入以使用反思並解鎖購買。';

  @override
  String get guestDialogContinue => '繼續';

  @override
  String get guestDialogLoginInstead => '改為登入';

  @override
  String get optionalLabel => '選項';

  @override
  String get accountDeleteSuccessTitle => '帳戶已刪除';

  @override
  String get accountDeleteSuccessBody => '您的帳戶及相關資料已成功刪除。';

  @override
  String get accountDeleteSuccessClose => '關閉';

  @override
  String get accountDeleteErrorTitle => '無法刪除帳戶';

  @override
  String get accountDeleteErrorClose => '確定';

  @override
  String get accountDeleteReauthCancelled => '重新驗證已取消。請再次登入並重試刪除。';

  @override
  String get accountDeleteReauthRequired => '帳戶刪除需要最近的登入。請登出、再次登入並重試。';

  @override
  String get settingsDeletePermanentWarning => '此操作是永久的，無法撤銷。與您的帳戶相關的所有資料將被刪除。';

  @override
  String get dailyGraceTitle => '每日指引';

  @override
  String get dailyGraceScriptureLabel => '本日經文';

  @override
  String get dailyGraceSaintLabel => '本週人物';

  @override
  String get dailyGraceReflectionLabel => '晚間反思';

  @override
  String get dailyGraceCopiedToast => '經文已複製到剪貼簿';

  @override
  String get locationConsentLabel => '允許 Ayara 使用我的位置以確定朝向方向和祈禱時間';

  @override
  String get locationConsentHint => '僅用於這些功能。您的位置永遠不會被分享或儲存。';

  @override
  String get askPageTitle => '問 Ayara';

  @override
  String get askPageDescription =>
      '詢問有關信仰、祈禱、生活或伊斯蘭實踐的任何問題，並根據古蘭經和 Ahl al-Bayt 的教導獲得指引。';

  @override
  String get askPageInputHint => '在此輸入您的問題…';

  @override
  String get askPageSubmitCta => '詢問';

  @override
  String get askPageInputEmptyError => '請先寫下一個問題。';

  @override
  String get askResultYourQuestion => '您的問題';

  @override
  String get guidancePageTitle => '朝向方向';

  @override
  String get qiblaFacingMecca => '面向麥加';

  @override
  String get qiblaCompassInstruction => '旋轉您的手機，直到金色指針指向上方。\n該方向指向朝向方向（麥加）。';

  @override
  String get qiblaGpsUnavailableBody => 'GPS 訊號較弱。請移動到室外並點選重試。';

  @override
  String get qiblaRetry => '重試';

  @override
  String get qiblaTitle => '朝向方向';

  @override
  String qiblaDistanceLabel(String km) {
    return '距麥加 $km 公里';
  }

  @override
  String get qiblaLocationNeededTitle => '需要位置';

  @override
  String get qiblaLocationNeededBody => '允許位置存取，以便 Ayara 可以計算從您所在地到麥加天房的方向。';

  @override
  String get qiblaOpenSettings => '開啟設定';

  @override
  String get qiblaCompassLoading => '正在尋找您的位置…';

  @override
  String get qiblaTowardMecca => '朝向麥加';

  @override
  String get prayerTimesTitle => '祈禱時間';

  @override
  String get prayerTimesFajr => '晨禮';

  @override
  String get prayerTimesDhuhr => '晌禮';

  @override
  String get prayerTimesAsr => '晡禮';

  @override
  String get prayerTimesMaghrib => '昏禮';

  @override
  String get prayerTimesIsha => '宵禮';

  @override
  String get prayerTimesLocationNeededTitle => '需要位置';

  @override
  String get prayerTimesLocationNeededBody =>
      '允許位置存取，以便 Ayara 可以計算您所在城市的準確祈禱時間。';

  @override
  String get prayerTimesNextLabel => '下一個';

  @override
  String get prayerTimesDoneLabel => '完成';

  @override
  String get monthlyPrayerTimesTitle => '每月祈禱時間';

  @override
  String get monthlyPrayerTimesViewButton => '檢視整月';

  @override
  String get monthlyPrayerTimesNextMonth => '下個月';

  @override
  String get monthlyPrayerTimesDayHeader => '日期';

  @override
  String get sharePrayerTimes => '分享祈禱時間';

  @override
  String get notificationsSectionTitle => '通知';

  @override
  String get notificationsSectionSubtitle => '祈禱提醒、日曆事件等';

  @override
  String get dailyReflectionReminderTitle => '每日反思';

  @override
  String get dailyReflectionReminderDescription => '輕輕提醒您打開 Ayara 並連結您的信仰。';

  @override
  String get dailyReflectionReminderEnable => '啟用每日提醒';

  @override
  String get dailyReflectionReminderTimeLabel => '提醒時間';

  @override
  String get prayerNotificationsTitle => '祈禱提醒';

  @override
  String get prayerNotificationsDescription => '在每個祈禱時間之前收到溫和提醒，以幫助您全天保持連結。';

  @override
  String get prayerNotificationsEnable => '啟用祈禱提醒';

  @override
  String get prayerNotificationsOpenSettings => '開啟通知設定';

  @override
  String get prayerNotificationsDenied => '通知已停用';

  @override
  String get prayerNotificationsDeniedHint => '前往設定並允許 Ayara 通知以接收祈禱時間提醒。';

  @override
  String get notificationsConsentLabel => '允許祈禱時間通知';

  @override
  String get prayerNotifTitleFajr => '🌅 晨禮 — 晨間祈禱';

  @override
  String get prayerNotifBodyFajr =>
      '晨禮是 Ahl al-Bayt 早晨的祈禱。艾米爾·穆姆寧（AS）說：「守護晨禮如同守護您最珍貴的信託。起身、淨化自己，並在真主面前站起。」';

  @override
  String get prayerNotifTitleDhuhr => '☀️ 晌禮 — 正午祈禱';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayt 的伊瑪目珍視每一刻的紀念。暫停您的一天，如需要可將晌禮與晡禮合倂，並使您的心回到真主。';

  @override
  String get prayerNotifTitleAsr => '🌤️ 晡禮 — 午後祈禱';

  @override
  String get prayerNotifBodyAsr =>
      '守護祈禱，因為它是您與真主之間的盟約。晡禮時間到了 — 不要讓它在沒有紀念的情況下流逝。';

  @override
  String get prayerNotifTitleMaghrib => '🌇 昏禮 — 日落祈禱';

  @override
  String get prayerNotifBodyMaghrib =>
      '太陽已落下 — Ahl al-Bayt 認為這是神聖的祈願時刻。獻昏禮並在夜幕降臨前在真主面前伸出手臂祈禱。';

  @override
  String get prayerNotifTitleIsha => '🌙 宵禮 — 夜間祈禱';

  @override
  String get prayerNotifBodyIsha =>
      '在真主的陪伴下結束您的一天。伊瑪目們鼓勵宵禮後進行夜間祈禱 — 但首先，完成您的宵禮並在他的紀念中結束一天。';

  @override
  String get outOfReflectionsBannerText => '您已使用完所有反思';

  @override
  String get outOfReflectionsBannerCta => '取得更多';

  @override
  String get dhikrPageTitle => '念誦';

  @override
  String get dhikrTapToCount => '點選圓圈以計數';

  @override
  String get dhikrResetButton => '重設';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage => '您已完成 100 次真主的念誦。願它們成為您心靈的光芒。';

  @override
  String get disclaimerTitle => '關於此應用程式的指引';

  @override
  String get disclaimerBody =>
      'Ayara 提供伊斯蘭反思、提醒和精神內容以支持您個人的信仰之旅，以古蘭經和 Ahl al-Bayt 的教導為基礎。此內容僅出於一般資訊和靈感目的提供。\n\nAyara 不會取代合格的學者。\n此應用程式中的指引不是合格伊斯蘭學者、馬爾吉亞或神學培訓教師的替代品。在什葉派伊斯蘭中，宗教指引植根於賈法里法學派（fiqh）和遵循活的馬爾吉亞（模仿來源） — 一位合格的法學家，其裁決指導信徒進行宗教實踐。如果您對宗教裁決、清真和禁止事項或個人宗教義務有疑問，請尋求合格馬爾吉亞或社區學者的建議。\n\n此應用程式不會發佈宗教裁決。\nAyara 不對教法或個人宗教義務事項做出權威確定。此處任何內容都不應被視為教法令或具有約束力的宗教指示。\n\nAhl al-Bayt 的中心地位。\n在什葉派伊斯蘭中，先知穆罕默德 ﷺ 和他純淨的家族 — Ahl al-Bayt — 是古蘭經之後伊斯蘭社區的權威指南。Ahl al-Bayt 的十二位伊瑪目是伊斯蘭教導的神聖任命的詮釋者。此應用程式中的內容反映了這一傳統，並尋求忠實地尊重它。\n\n社區事務。\n此應用程式旨在鼓勵您對信仰的參與，同時深深尊重您當地清真寺、伊斯蘭中心和宗教社區的重要作用。我們鼓勵您與您身邊的合格教師保持聯繫並向他們學習。';

  @override
  String get disclaimerClose => '我明白';

  @override
  String get disclaimerInfoTooltip => '關於此應用程式的指引';

  @override
  String get disclaimerSettingsSubtitle => '僅供一般資訊之用。點選以閱讀完整免責聲明。';

  @override
  String get disclaimerSectionHeader => '指引免責聲明';

  @override
  String get navHome => '首頁';

  @override
  String get navReflect => '反思';

  @override
  String get navDuas => '祈禱詞';

  @override
  String get navCalendar => '日曆';

  @override
  String get dashboardToday => '今日';

  @override
  String get dashboardComingUp => '即將到來';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '天',
      one: '天',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => '快速存取';

  @override
  String get quickActionQibla => '朝向';

  @override
  String get quickActionDhikr => '念誦';

  @override
  String get quickActionDailyGrace => '指引';

  @override
  String get quickActionPrayerTimes => '祈禱時間';

  @override
  String get askAyaraTitle => '問 Ayara';

  @override
  String get askAyaraSubtitle => '提出任何伊斯蘭問題並獲得深思熟慮的、有指引的答案。';

  @override
  String get askAyaraHint => '例如 齋月的意義是什麼？';

  @override
  String get askAyaraSubmit => '詢問';

  @override
  String get wisdomOfTheDayTitle => '本日智慧';

  @override
  String get calendarScreenTitle => '伊斯蘭日曆';

  @override
  String get calendarUpcomingOccasions => '即將到來的活動';

  @override
  String get calendarOccasionRemindersTitle => '活動提醒';

  @override
  String get calendarOccasionRemindersHint => '在每個活動的前夜通知';

  @override
  String get calendarNotifPermissionDenied => '通知權限被拒。在您的裝置設定中啟用它。';

  @override
  String get calendarNoEvents => '未找到即將到來的活動。';

  @override
  String get calendarAddToPhone => '添加到手機日曆';

  @override
  String get calendarAddedToPhone => '已添加到日曆';

  @override
  String get calendarCountdownToday => '今日';

  @override
  String get calendarCountdownTomorrow => '明天';

  @override
  String calendarCountdownDays(int days) {
    return '在 $days 天後';
  }

  @override
  String get calendarAH => '伊曆';

  @override
  String get calendarMonthJan => '1月';

  @override
  String get calendarMonthFeb => '2月';

  @override
  String get calendarMonthMar => '3月';

  @override
  String get calendarMonthApr => '4月';

  @override
  String get calendarMonthMay => '5月';

  @override
  String get calendarMonthJun => '6月';

  @override
  String get calendarMonthJul => '7月';

  @override
  String get calendarMonthAug => '8月';

  @override
  String get calendarMonthSep => '9月';

  @override
  String get calendarMonthOct => '10月';

  @override
  String get calendarMonthNov => '11月';

  @override
  String get calendarMonthDec => '12月';

  @override
  String get calendarSeasonMuharramEarly => '穆罕默月的日子 — 紀念卡爾巴拉';

  @override
  String get calendarSeasonAshura => '阿舒拉 — 哈桑（AS）';

  @override
  String get calendarSeasonMuharramLate => '穆罕默月 — 哀悼和反思的日子';

  @override
  String get calendarSeasonArbaeen => '阿爾巴因 — 侯賽因四十天';

  @override
  String get calendarSeasonRoadToArbaeen => '通往阿爾巴因的道路';

  @override
  String get calendarSeasonMabath => '宣教吉慶 — 啟示的曙光';

  @override
  String get calendarSeasonMidShaban => '沙班中旬 — 伊瑪目馬赫迪（AJ）生日';

  @override
  String get calendarSeasonRamadan => '齋月吉慶 — 古蘭經的月份';

  @override
  String get calendarSeasonGhadir => '格迪爾節吉慶！';

  @override
  String get hijriMonth1 => '穆罕默月';

  @override
  String get hijriMonth2 => '薩法爾月';

  @override
  String get hijriMonth3 => '賴比月初';

  @override
  String get hijriMonth4 => '賴比月末';

  @override
  String get hijriMonth5 => '主麻月初';

  @override
  String get hijriMonth6 => '主麻月末';

  @override
  String get hijriMonth7 => '賴哲卜月';

  @override
  String get hijriMonth8 => '沙班月';

  @override
  String get hijriMonth9 => '齋月';

  @override
  String get hijriMonth10 => '沙瓦勒月';

  @override
  String get hijriMonth11 => '都勒蓋爾德月';

  @override
  String get hijriMonth12 => '都勒海傑月';

  @override
  String get duasScreenTitle => '祈禱詞和朝覲詞';

  @override
  String get duasSearchHint => '搜尋祈禱詞、朝覲詞…';

  @override
  String get duasFilterAll => '所有';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個祈禱詞和朝覲詞',
      one: '$count 個祈禱詞',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => '未找到祈禱詞。';

  @override
  String get duaCategoryDaily => '每日';

  @override
  String get duaCategoryWeekly => '每週';

  @override
  String get duaCategoryOccasions => '活動';

  @override
  String get duaCategoryZiyarat => '朝覲詞';

  @override
  String get duaCategoryTasbih => '念誦';

  @override
  String get eventTypeBirth => '出生';

  @override
  String get eventTypeMartyrdom => '殉難';

  @override
  String get eventTypeOccasion => '活動';

  @override
  String get duaCopyTooltip => '複製翻譯';

  @override
  String get duaToggleTransliteration => '轉錄';

  @override
  String get duaToggleTranslation => '翻譯';

  @override
  String get duaAskAiLabel => '讓 Ayara 解釋此祈禱詞';

  @override
  String get duaAskAiLockedLabel => '讓 Ayara 解釋（Wilaya）';

  @override
  String get duaAiLockedMessage => 'Ayara 解釋適用於 Wilaya 成員。在設定中升級。';

  @override
  String duaAiComingSoon(String name) {
    return '讓 Ayara 解釋 \"$name\" — 即將推出！';
  }

  @override
  String get duaCopiedToast => '祈禱詞已複製到剪貼簿。';

  @override
  String get tasbihAllahuAkbarMeaning => '真主至大';

  @override
  String get tasbihAlhamdulillahMeaning => '一切讚頌歸於真主';

  @override
  String get tasbihSubhanallahMeaning => '讚頌真主的榮光';

  @override
  String get tasbihResetTooltip => '重設';

  @override
  String get tasbihCompleteTitle => '念誦完成';

  @override
  String get tasbihCompleteMessage => '願真主接受您的念誦。';

  @override
  String get tasbihTapHint => '點選任何地方以計數';

  @override
  String get tasbihatScreenTitle => '祈禱指南';

  @override
  String get tasbihatScreenSubtitle => '祈禱念誦';

  @override
  String get tasbihatScreenDescription =>
      '祈禱中和之後念誦的念誦完整指南 — 遵循 Ahl al-Bayt（a）的傳統。';

  @override
  String get tasbihatArba3Title => '四念誦';

  @override
  String get tasbihatArba3Subtitle => '在第 3 和第 4 磕頭中念誦';

  @override
  String get tasbihatArba3Info =>
      '在什葉派法學中，四念誦替代了晌禮、晡禮、昏禮和宵禮的第 3 和第 4 磕頭中的《開章》。念誦一次是必須（wājib），念誦三次是推薦（mustaḥabb）。';

  @override
  String get tasbihatArba3Translation => '讚頌真主的榮光 · 一切讚頌歸於真主\n萬物非主，唯有真主 · 真主至大';

  @override
  String get tasbihatArba3CompleteTitle => '念誦完成';

  @override
  String get tasbihatArba3CompleteMessage => '願您的祈禱被接受 — 阿民';

  @override
  String get tasbihatArba3TapHint => '每次念誦後點選';

  @override
  String get tasbihatZahraSubtitle => '每次祈禱後 · 100 粒珠';

  @override
  String get tasbihatZahraOriginLabel => '來源';

  @override
  String get tasbihatZahraHadith =>
      '法蒂瑪·扎赫拉夫人（sa）向先知 ﷺ 要求僕人。他說：「我豈不引導您去做更好的事？在每次祈禱後念誦『讚頌真主的榮光』33 次、『一切讚頌歸於真主』33 次和『真主至大』34 次。那對您比有僕人更好。」';

  @override
  String get tasbihatZahraHadithSource => '— 《光輝之海》，第 85 冊';

  @override
  String get tasbihatZahraOpenCounter => '開啟念誦計數器';

  @override
  String get tasbihatDuasTitle => '推薦祈禱詞';

  @override
  String get tasbihatDuasSubtitle => '完成祈禱後';

  @override
  String get tasbihatDuaAyatKursiTitle => '古蘭經寶座經';

  @override
  String get tasbihatDuaAyatKursiWhen => '每次強制祈禱後';

  @override
  String get tasbihatDuaAyatKursiSource => '蘇拉圖勒巴卡拉 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      '誰在每次強制祈禱後念誦古蘭經寶座經，除了死亡外，天堂和他之間沒有什麼東西。伊瑪目·巴基爾（a）說它在古蘭經中最偉大的經文之一。';

  @override
  String get tasbihatDuaSalawatTitle => '祝福';

  @override
  String get tasbihatDuaSalawatWhen => '每次祈禱後 · 封印所有祈禱';

  @override
  String get tasbihatDuaSalawatSource => '伊瑪目·薩迪克（a）— 《充分者》';

  @override
  String get tasbihatDuaSalawatNote =>
      '對先知 ﷺ 和他的純淨家族（穆罕默德之家）發送祝福是推薦的，可以封印每個祈禱。伊瑪目·薩迪克（a）說：「任何祈禱都是懸空的，直到您對穆罕默德和他的家族發送祝福。」';

  @override
  String get tasbihatDuaFarajTitle => '救濟祈禱詞';

  @override
  String get tasbihatDuaFarajWhen => '每次祈禱後 · 為我們時代的伊瑪目';

  @override
  String get tasbihatDuaFarajSource => '由伊瑪目·哈桑·阿斯卡裡（a）傳授';

  @override
  String get tasbihatDuaFarajNote =>
      '這是一個為伊瑪目馬赫迪（af）重現而祈求的祈禱，這是第十二位伊瑪目的父親所教導的。許多什葉派穆斯林在禱告後經常誦念，以表達對活著的伊瑪目的虔誠。';

  @override
  String get tasbihatDuaTasbihFatimaTitle => '法蒂瑪夫人的念誦';

  @override
  String get tasbihatDuaTasbihFatimaWhen => '昏禮和宵禮後 · 特別推薦';

  @override
  String get tasbihatDuaTasbihFatimaSource => '伊瑪目·巴基爾（a）— 《光輝之海》';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      '伊瑪目·巴基爾（a）說，在睡前宵禮後念誦法蒂瑪夫人的念誦比 1000 磕頭的選擇祈禱更好。它的光芒上升到天堂。';

  @override
  String get tasbihFatimaGiftPre => '先知的禮物';

  @override
  String get tasbihFatimaGiftPost => '每次祈禱後念誦';

  @override
  String get prayerTrackerTitle => '祈禱追蹤';

  @override
  String get prayerTrackerPrayed => '已祈禱';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count 天連續';
  }

  @override
  String get prayerTrackerAllComplete => '今天所有祈禱都已完成。願真主接受。';

  @override
  String get dhikrTrackerTitle => '法蒂瑪夫人的念誦';

  @override
  String get dhikrTrackerCompletedToday => '今天完成';

  @override
  String get dhikrTrackerNotDoneToday => '今天未完成';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count 天連續';
  }

  @override
  String get dhikrReminderTitle => '念誦提醒';

  @override
  String get dhikrReminderDescription => '溫和提醒您每天念誦法蒂瑪夫人的念誦（SA）。';

  @override
  String get dhikrReminderEnable => '啟用念誦提醒';

  @override
  String get dhikrReminderTimeLabel => '提醒時間';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => '每日聖訓';

  @override
  String get hadithLabelArabic => '阿拉伯語';

  @override
  String get hadithLabelTranslation => '翻譯';

  @override
  String get hadithBadge => '聖訓';

  @override
  String get hadithShare => '分享此聖訓';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => '上一個';

  @override
  String get hadithNavNext => '下一個';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '十四位無誤者';

  @override
  String get imamsScreenSubtitle => '先知、法蒂瑪女士和十二位伊瑪目——在十二伊瑪目什葉派伊斯蘭中，純潔且無誤的引導者';

  @override
  String get imamLabelBorn => '出生';

  @override
  String get imamLabelMartyrdom => '殉難';

  @override
  String get imamLabelStatus => '狀態';

  @override
  String get imamSectionBiography => '傳記';

  @override
  String get imamSectionFamousSaying => '著名格言';

  @override
  String get imamRoleProphet => '最後的先知';

  @override
  String get imamRoleInfallible => '無誤者';

  @override
  String get imamOrdinal1 => '第 1 位伊瑪目';

  @override
  String get imamOrdinal2 => '第 2 位伊瑪目';

  @override
  String get imamOrdinal3 => '第 3 位伊瑪目';

  @override
  String get imamOrdinal4 => '第 4 位伊瑪目';

  @override
  String get imamOrdinal5 => '第 5 位伊瑪目';

  @override
  String get imamOrdinal6 => '第 6 位伊瑪目';

  @override
  String get imamOrdinal7 => '第 7 位伊瑪目';

  @override
  String get imamOrdinal8 => '第 8 位伊瑪目';

  @override
  String get imamOrdinal9 => '第 9 位伊瑪目';

  @override
  String get imamOrdinal10 => '第 10 位伊瑪目';

  @override
  String get imamOrdinal11 => '第 11 位伊瑪目';

  @override
  String get imamOrdinal12 => '第 12 位伊瑪目';

  @override
  String get duaAudioScreenTitle => '聆聽祈禱詞';

  @override
  String get duaAudioScreenSubtitle => '選擇祈禱詞以聆聽。點選磁貼以播放或暫停。';

  @override
  String get duaAudioComingSoonMessage => '此祈禱詞的音訊將在即將推出的更新中提供。';

  @override
  String get duaAudioClose => '關閉';

  @override
  String get duaAudioError => '無法載入音訊。請檢查您的連線。';

  @override
  String get duaAudioMetaTransmittedBy => '由...傳輸';

  @override
  String get duaAudioMetaOccasion => '活動';

  @override
  String get duaAudioMetaDuration => '期間';

  @override
  String get quickActionDailyHadith => '每日聖訓';

  @override
  String get quickAction14Masumeen => '十四位無誤者';

  @override
  String get quickActionListenDuas => '聆聽';

  @override
  String get quickActionTasbihat => '祈禱指南';

  @override
  String get pilgrimageSectionTitle => '神聖之旅';

  @override
  String get pilgrimageSectionSubtitle => '完整指南麥加朝覲和副朝 — 朝聖到真主在麥加的聖殿';

  @override
  String get hajjCardTitle => '麥加朝覲';

  @override
  String get hajjCardSubtitle => '伊斯蘭的第五支柱';

  @override
  String get hajjCardDescription => '盛大的年度朝覲 — 每個有能力的穆斯林一生中必須進行一次';

  @override
  String get hajjScreenTitle => '麥加朝覲指南';

  @override
  String get hajjScreenSubtitle => '盛大朝覲的分步指南';

  @override
  String get umrahCardTitle => '副朝';

  @override
  String get umrahCardSubtitle => '小朝覲';

  @override
  String get umrahCardDescription => '一次深刻有益的精神旅程，可在全年任何時間進行';

  @override
  String get umrahScreenTitle => '副朝指南';

  @override
  String get umrahScreenSubtitle => '小朝覲的分步指南';

  @override
  String get pilgrimageStepsTitle => '儀式和步驟';

  @override
  String get pilgrimageImportantNotesTitle => '重要注意事項';

  @override
  String get pilgrimageDuaTitle => '此步驟的祈禱';

  @override
  String get pilgrimageJafariNoteTitle => '賈法里法學註解';

  @override
  String get pilgrimageComplete => '✓ 完成';

  @override
  String get pilgrimageMarkDone => '標記為完成';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total 步驟';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes 分鐘';
  }

  @override
  String get pilgrimageShiaNoteTitle => '什葉派朝聖者';

  @override
  String get pilgrimageShiaNoteBody =>
      '許多什葉派朝聖者也會前往麥地那，參拜先知穆罕默德（SAW）在納巴維清真寺的聖地及在詹納特·阿爾·巴基的墳墓。這些訪問具有深刻的靈性意義，儘管它們本身並不是朝覲的儀式。';

  @override
  String get hajjIntro =>
      '朝覲是伊斯蘭的第五根柱子，對每位身體和經濟上能夠的穆斯林來說，終生必須履行一次。對於今天大多數十二伊瑪派的朝聖者來說，這意味著在杜爾·希賈月進行的朝覲（Hajj al-Tamattu\'），追隨先知易卜拉欣（AS）、他的兒子伊斯馬伊爾（AS）和哈賈女士的腳步。本指南遵循賈法里（Ja\'fari）儀式的框架，而在麥地那的朝聖則仍然是一段深受珍視的旅程，無論是在朝覲之前或之後。';

  @override
  String get umrahIntro =>
      '副朝是對麥加的小朝覲，與麥加朝覲不同，可在全年任何時間進行。雖然不是必須的，但它具有巨大的精神獎勵，被認為是一項高度推薦的崇拜行為。它與麥加朝覲分享幾個儀式，但時間較短，包括四個主要儀式。';

  @override
  String get voiceInputTitle => '語音輸入';

  @override
  String get voiceInputMicTitle => '麥克風';

  @override
  String get voiceInputMicSubtitle => '請用語音向 Ask Ayara 提問，而不是打字。';

  @override
  String get voiceInputMicDenied => '麥克風存取被拒絕。';

  @override
  String get voiceInputSpeak => '改用語音';

  @override
  String get voiceInputListening => '正在聆聽…';

  @override
  String get voiceInputPermissionDenied => '語音輸入需要麥克風存取權限。';
}
