// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => '언어를 선택하세요';

  @override
  String get languageSelectSub => '나중에 설정에서 변경할 수 있습니다';

  @override
  String get actionContinue => '계속';

  @override
  String get languageSuggestedHeader => '추천';

  @override
  String get languageAllHeader => '모든 언어';

  @override
  String get languageSuggestedBadge => '추천';

  @override
  String get languageSearchHint => '검색…';

  @override
  String get planBasic => '표준';

  @override
  String get planPremium => '윌라야';

  @override
  String get categorySlot01 => '일일 지도';

  @override
  String get categorySlot02 => '믿음과 신뢰';

  @override
  String get categorySlot03 => '기도 명상';

  @override
  String get categorySlot04 => '인내와 희망';

  @override
  String get categorySlot05 => '용서 구하기';

  @override
  String get categorySlot06 => '자비와 연민';

  @override
  String get categorySlot07 => '신앙과 힘';

  @override
  String get categorySlot08 => '감사의 마음';

  @override
  String get categorySlot09 => '삶의 목적';

  @override
  String get categorySlot10 => '가족의 유대';

  @override
  String get categorySlot11 => '내적 평화';

  @override
  String get categorySlot12 => '선지자의 지혜';

  @override
  String get categorySlot13 => '좋은 성품';

  @override
  String get categorySlot14 => '유혹 저항';

  @override
  String get categorySlot15 => '저녁 지크르';

  @override
  String get categoryCustom => '개인 성찰';

  @override
  String get dhikrMeaningSubhanallah => '알라에게 영광을';

  @override
  String get dhikrMeaningAlhamdulillah => '모든 찬양은 알라에게';

  @override
  String get dhikrMeaningAllahuAkbar => '알라는 위대하심';

  @override
  String get quranVerseHeartAtRest => '실로 알라를 기억함으로써 마음이 평온을 찾느니라.';

  @override
  String get promptHint => '카테고리를 눌러 이슬람 지도와 명상을 받으세요';

  @override
  String get currentLanguage => '현재 언어';

  @override
  String get settingsLanguage => '언어 설정';

  @override
  String get settingsTitle => '설정';

  @override
  String get chooseLanguage => '언어를 선택하세요';

  @override
  String get continueCta => '계속';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개 단어',
      one: '$count개 단어',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => '옵션';

  @override
  String get newCta => '새로운';

  @override
  String get actionsTitle => '무엇을 하고 싶으신가요?';

  @override
  String get copy => '복사';

  @override
  String get share => '공유';

  @override
  String get close => '닫기';

  @override
  String get copiedToast => '클립보드에 복사되었습니다';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => '새로운 답변을 생성할 수 없습니다';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n다시 시도하시겠어요?';
  }

  @override
  String get cancelCta => '취소';

  @override
  String get retryCta => '다시 시도';

  @override
  String get authTitle => '계정 생성';

  @override
  String get continueAsGuest => '게스트로 계속';

  @override
  String get signInGoogle => 'Google로 로그인';

  @override
  String get signInApple => 'Apple로 로그인';

  @override
  String get signInEmail => '이메일로 로그인';

  @override
  String get upgradeWithApple => 'Apple로 계속';

  @override
  String get mustAccept => '약관을 수락하고 개인정보 보호정책을 인정해야 합니다.';

  @override
  String get termsLabel => '서비스 약관에 동의합니다';

  @override
  String get privacyLabel => '개인정보 보호정책을 읽었습니다';

  @override
  String get marketingOptIn => '뉴스 및 오퍼 수신에 동의합니다';

  @override
  String get openTerms => '서비스 약관';

  @override
  String get openPrivacy => '개인정보 보호정책';

  @override
  String get accountSection => '계정';

  @override
  String get guestMode => '게스트 모드';

  @override
  String get signedIn => '로그인됨';

  @override
  String get upgradeHint => '계정을 만들어 기기 간에 명상을 저장하세요.';

  @override
  String get upgradeWithGoogle => 'Google로 계속';

  @override
  String get signOut => '로그아웃';

  @override
  String get snackUpgraded => 'Google으로 계정 업그레이드됨 ✅';

  @override
  String get snackSignedIn => 'Google으로 로그인됨 ✅';

  @override
  String get snackSignedOut => '로그아웃됨';

  @override
  String get snackSignedInApple => 'Apple로 로그인됨 ✅';

  @override
  String get snackSignedInGoogle => 'Google로 로그인됨 ✅';

  @override
  String get snackUpgradedApple => 'Apple로 계정 업그레이드됨 ✅';

  @override
  String get snackUpgradedGoogle => 'Google로 계정 업그레이드됨 ✅';

  @override
  String get historyTitle => '이전 명상';

  @override
  String get historyOpenCta => '이전 명상';

  @override
  String get historyEmpty => '저장된 명상이 없습니다.';

  @override
  String get historyDeleteTitle => '명상을 삭제하시겠어요?';

  @override
  String get historyDeleteBody => '선택한 항목이 영구적으로 삭제됩니다.';

  @override
  String get deleteCta => '삭제';

  @override
  String get historyButton => '이전 명상';

  @override
  String get historyEmptyTitle => '명상이 없습니다';

  @override
  String get historyEmptyBody => '먼저 뭔가를 생성하세요 — 저장된 항목이 여기에 나타납니다.';

  @override
  String get historyDelete => '삭제';

  @override
  String get footerTitle => '윌라야, 이만 그리고 사브르와 함께';

  @override
  String get footerSubtitle => '한 번의 기도로';

  @override
  String get genericErrorSnack => '뭔가 잘못되었습니다 — 잠시 후 다시 시도하세요.';

  @override
  String get upgradeAccountCta => '기기 간에 명상을 저장하세요 – 계정을 만드세요';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String get exportData => '내 데이터 내보내기';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => '진정하세요 🐯\nAyara는 다음 것을 위해 시간이 필요합니다…';

  @override
  String get rateDailyLimit => '지금은 명상이 끝났습니다.\n더 많은 명상을 받거나 윌라야로 업그레이드하세요.';

  @override
  String get rateCreditsExhausted =>
      '모든 명상을 사용했습니다.\n계속하려면 충전하거나 윌라야로 업그레이드하세요.';

  @override
  String get rateGraceCreditsExhausted =>
      '지금은 명상이 끝났습니다.\n더 많은 명상을 받거나 윌라야로 업그레이드하세요.';

  @override
  String get premiumDescription => '윌라야는 프리미엄 기능, 향후 카테고리 및 특별 배지를 잠금해제합니다.';

  @override
  String ratePlanExhausted(String plan) {
    return '지금은 명상이 비어있습니다. 플랜: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return '명상을 확인할 수 없습니다: $message';
  }

  @override
  String get rateCheckGenericError => '명상을 확인하는 중에 뭔가 잘못되었습니다.';

  @override
  String get aiFallbackGeneric => '뭔가 잘못되었습니다 — 잠시 후 다시 시도하세요.';

  @override
  String get limitSectionTitle => '명상';

  @override
  String get limitTodayLabel => '사용량';

  @override
  String limitCreditsLabel(Object credits) {
    return '남은 명상: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return '플랜: $plan';
  }

  @override
  String get limitLoadingLabel => '로드 중…';

  @override
  String get limitLoadingLabelDescription => '명상 카드에서 사용 통계를 가져오는 동안 표시됩니다.';

  @override
  String get aiLimitTitle => '명상';

  @override
  String get aiLimitSubtitle =>
      '각 응답은 1개의 명상을 사용합니다. 표준은 초기 명상을 포함합니다. 윌라야는 프리미엄 카테고리를 잠금해제하고 충전을 활성화합니다.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total 명상 사용됨';
  }

  @override
  String get creditsSectionTitle => '명상';

  @override
  String get creditsUsageLabel => '사용량';

  @override
  String creditsRemainingLabel(Object reflections) {
    return '남은 명상: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return '플랜: $plan';
  }

  @override
  String get creditsLoadingLabel => '로드 중…';

  @override
  String get creditsLoadingLabelDescription => '명상 통계를 가져오는 동안 표시됩니다.';

  @override
  String get creditsTitle => '명상';

  @override
  String get creditsSubtitle =>
      '각 응답은 1개의 명상을 사용합니다. 표준은 초기 명상을 포함합니다. 윌라야는 프리미엄 카테고리를 잠금해제하고 충전을 활성화합니다.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total 명상 사용됨';
  }

  @override
  String get settingsDeleteTitle => '계정 삭제';

  @override
  String get settingsDeleteDescription => '계정 및 모든 관련 데이터를 영구적으로 삭제합니다.';

  @override
  String get settingsDeleteButtonLabel => '계정 삭제';

  @override
  String get settingsDeleteDialogTitle => '계정을 삭제하시겠어요?';

  @override
  String get settingsDeleteDialogBody =>
      '이 작업은 영구적이며 실행을 취소할 수 없습니다.\n\n모든 채팅, 기록 및 계정 정보가 삭제됩니다.';

  @override
  String get settingsDeleteDialogCancel => '취소';

  @override
  String get settingsDeleteDialogConfirm => '삭제';

  @override
  String get settingsFreeLimitUsedTitle => '초기 명상 사용됨';

  @override
  String get settingsFreeLimitUsedDescription =>
      '이 기기의 초기 명상이 사용되었습니다. 윌라야로 업그레이드하거나 더 많은 명상을 구매하여 계속하세요.';

  @override
  String get settingsStarterCreditsUsedTitle => '초기 명상 사용됨';

  @override
  String get settingsStarterCreditsUsedDescription =>
      '이 기기의 초기 명상이 사용되었습니다. 윌라야로 업그레이드하거나 더 많은 명상을 구매하여 계속하세요.';

  @override
  String get deviceBoundError => '이 기기는 이미 다른 계정에 연결되어 있습니다. 원래 계정으로 로그인하세요.';

  @override
  String get premiumTitle => '윌라야 모드';

  @override
  String get premiumSubtitleBasic => '전체 Ayara 경험을 잠금해제하세요.';

  @override
  String get premiumSubtitlePremium => '당신은 윌라야에 있습니다. 더 많은 명상이 필요하신가요?';

  @override
  String premiumCurrentPlan(Object plan) {
    return '현재 플랜: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return '명상: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => '지금은 구매할 수 없습니다.';

  @override
  String get premiumSignInToPurchase => '명상을 구매하거나 윌라야를 잠금해제하려면 로그인하세요.';

  @override
  String get premiumRestorePurchases => '구매 복원';

  @override
  String get premiumProcessing => '처리 중…';

  @override
  String get premiumRestoreHintTitle => '이 기기 또는 다른 기기에서 이미 윌라야 또는 명상을 구매했나요?';

  @override
  String get premiumRestoreHintBody => '구매가 표시되지 않으면 복원하세요.';

  @override
  String get premiumBuyCredits200 => '200개 명상 구매';

  @override
  String get premiumBuyCredits400 => '400개 명상 구매';

  @override
  String get premiumBecomePremiumOneTime => '윌라야 모드로 업그레이드';

  @override
  String get premiumTopupHint => '윌라야를 사용하면 필요할 때마다 추가 명상으로 충전할 수 있습니다.';

  @override
  String get premiumUpgradeCta => '업그레이드';

  @override
  String get premiumRequiredForCategory =>
      '이 카테고리는 윌라야 사용자만 사용할 수 있습니다. 설정에서 업그레이드하여 모든 프리미엄 콘텐츠를 잠금해제하세요.';

  @override
  String get premiumBenefitsBasic =>
      '윌라야를 잠금해제하여 추가 명상을 받고, 프리미엄 카테고리에 액세스하고, 필요할 때마다 지도를 받으세요.';

  @override
  String get premiumBenefitsPremium =>
      '당신은 윌라야 모드에 있습니다. 부족하면 추가 명상을 더하고 중단 없이 계속하세요.';

  @override
  String get premiumButtonBecomePremium => '윌라야 잠금해제';

  @override
  String get premiumButtonTopup1000 => '1000개 명상 추가';

  @override
  String get premiumBadge => '윌라야 활성';

  @override
  String get premiumLoadingStore => '스토어 로드 중…';

  @override
  String get premiumProductNotAvailable =>
      '이 상품은 아직 스토어에서 사용할 수 없습니다. 나중에 다시 시도하세요.';

  @override
  String get premiumPurchaseError => '구매 중에 뭔가 잘못되었습니다. 다시 시도하세요.';

  @override
  String get premiumBuyCredits100 => '100개 명상 추가';

  @override
  String get premiumFeatureLocked => '이 기능을 사용하려면 윌라야를 잠금해제하세요.';

  @override
  String get lockedCategoriesHint =>
      '일부 카테고리는 윌라야 회원을 위해 예약되어 있습니다. 당신의 여정에서 모든 명상을 탐색하려면 잠금해제하세요.';

  @override
  String get freePlanBlockedTitle => '초기 명상을 모두 사용했습니다';

  @override
  String get freePlanBlockedBody =>
      '당신은 초기 명상이 있는 표준 플랜에 있으며 한계에 도달했습니다. 계속하고 프리미엄 카테고리를 잠금해제하려면 윌라야로 업그레이드하세요.';

  @override
  String get freePlanBlockedCtaGoPremium => '아래에서 윌라야 옵션 보기';

  @override
  String get graceBlockedTitle => '초기 명상을 모두 사용했습니다';

  @override
  String get graceBlockedBody =>
      '당신은 초기 명상이 있는 표준 플랜에 있으며 한계에 도달했습니다. 계속하고 프리미엄 카테고리를 잠금해제하려면 윌라야로 업그레이드하세요.';

  @override
  String get graceBlockedCtaGoPremium => '아래에서 윌라야 옵션 보기';

  @override
  String get rateGuestMustSignIn => 'Ayara를 사용하고 명상을 하려면 로그인하세요.';

  @override
  String get guestNoCreditsTitle => '게스트 모드';

  @override
  String get guestNoCreditsBody =>
      '게스트로서 앱을 탐색할 수 있지만 명상을 사용할 수 없습니다. 나중에 설정에서 로그인하여 명상을 사용하고 구매를 잠금해제하세요.';

  @override
  String get guestDialogContinue => '계속';

  @override
  String get guestDialogLoginInstead => '대신 로그인';

  @override
  String get optionalLabel => '선택사항';

  @override
  String get accountDeleteSuccessTitle => '계정 삭제됨';

  @override
  String get accountDeleteSuccessBody => '계정 및 관련 데이터가 성공적으로 삭제되었습니다.';

  @override
  String get accountDeleteSuccessClose => '닫기';

  @override
  String get accountDeleteErrorTitle => '계정을 삭제할 수 없습니다';

  @override
  String get accountDeleteErrorClose => '확인';

  @override
  String get accountDeleteReauthCancelled =>
      '재인증이 취소되었습니다. 다시 로그인한 후 삭제를 다시 시도하세요.';

  @override
  String get accountDeleteReauthRequired =>
      '계정 삭제에는 최근 로그인이 필요합니다. 로그아웃하고 다시 로그인한 후 삭제를 다시 시도하세요.';

  @override
  String get settingsDeletePermanentWarning =>
      '이 작업은 영구적이며 실행을 취소할 수 없습니다. 계정과 관련된 모든 데이터가 삭제됩니다.';

  @override
  String get dailyGraceTitle => '일일 지도';

  @override
  String get dailyGraceScriptureLabel => '오늘의 구절';

  @override
  String get dailyGraceSaintLabel => '이주의 학자';

  @override
  String get dailyGraceReflectionLabel => '저녁 명상';

  @override
  String get dailyGraceCopiedToast => '구절이 클립보드에 복사되었습니다';

  @override
  String get locationConsentLabel =>
      'Ayara가 내 위치를 사용하여 키블라 방향과 기도 시간을 결정하도록 허용합니다';

  @override
  String get locationConsentHint => '이 기능에만 사용됩니다. 귀하의 위치는 절대 공유 또는 저장되지 않습니다.';

  @override
  String get askPageTitle => 'Ayara에 물어보기';

  @override
  String get askPageDescription =>
      '믿음, 기도, 삶 또는 이슬람 실천에 대해 뭔가를 물어보고 쿠란과 아흘 알-바이트의 가르침에 근거한 지도를 받으세요.';

  @override
  String get askPageInputHint => '여기에 질문을 입력하세요…';

  @override
  String get askPageSubmitCta => '물어보기';

  @override
  String get askPageInputEmptyError => '먼저 질문을 작성하세요.';

  @override
  String get askResultYourQuestion => '당신의 질문';

  @override
  String get guidancePageTitle => '키블라';

  @override
  String get qiblaFacingMecca => '메카를 향하고 있습니다';

  @override
  String get qiblaCompassInstruction =>
      '금 바늘이 위쪽을 가리킬 때까지 휴대폰을 회전하세요.\n그 방향이 키블라(메카)를 가리킵니다.';

  @override
  String get qiblaGpsUnavailableBody => 'GPS 신호가 약합니다. 실외로 이동하고 재시도를 누르세요.';

  @override
  String get qiblaRetry => '재시도';

  @override
  String get qiblaTitle => '키블라 방향';

  @override
  String qiblaDistanceLabel(String km) {
    return '메카까지 $km km';
  }

  @override
  String get qiblaLocationNeededTitle => '위치 필요';

  @override
  String get qiblaLocationNeededBody =>
      'Ayara가 당신이 어디에 있든 카바 방향을 계산할 수 있도록 위치 액세스를 허용하세요.';

  @override
  String get qiblaOpenSettings => '설정 열기';

  @override
  String get qiblaCompassLoading => '위치 찾는 중…';

  @override
  String get qiblaTowardMecca => '메카를 향해';

  @override
  String get prayerTimesTitle => '기도 시간';

  @override
  String get prayerTimesFajr => '파즈르';

  @override
  String get prayerTimesDhuhr => '주흐르';

  @override
  String get prayerTimesAsr => '아스르';

  @override
  String get prayerTimesMaghrib => '마그립';

  @override
  String get prayerTimesIsha => '이샤';

  @override
  String get prayerTimesLocationNeededTitle => '위치 필요';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara가 도시에 대한 정확한 기도 시간을 계산할 수 있도록 위치 액세스를 허용하세요.';

  @override
  String get prayerTimesNextLabel => '다음';

  @override
  String get prayerTimesDoneLabel => '완료';

  @override
  String get monthlyPrayerTimesTitle => '월간 기도 시간';

  @override
  String get monthlyPrayerTimesViewButton => '전체 월 보기';

  @override
  String get monthlyPrayerTimesNextMonth => '다음 달';

  @override
  String get monthlyPrayerTimesDayHeader => '날짜';

  @override
  String get sharePrayerTimes => '기도 시간 공유';

  @override
  String get notificationsSectionTitle => '알림';

  @override
  String get notificationsSectionSubtitle => '기도 리마인더, 달력 이벤트 등';

  @override
  String get dailyReflectionReminderTitle => '일일 명상';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara를 열고 믿음과 연결하도록 하는 부드러운 일일 리마인더입니다.';

  @override
  String get dailyReflectionReminderEnable => '일일 리마인더 활성화';

  @override
  String get dailyReflectionReminderTimeLabel => '리마인더 시간';

  @override
  String get prayerNotificationsTitle => '기도 리마인더';

  @override
  String get prayerNotificationsDescription =>
      '각 기도 시간 전에 부드러운 리마인더를 받아 하루 종일 연결된 상태를 유지하세요.';

  @override
  String get prayerNotificationsEnable => '기도 리마인더 활성화';

  @override
  String get prayerNotificationsOpenSettings => '알림 설정 열기';

  @override
  String get prayerNotificationsDenied => '알림이 비활성화됨';

  @override
  String get prayerNotificationsDeniedHint =>
      '설정으로 가서 Ayara에 대한 알림을 허용하여 기도 시간 리마인더를 받으세요.';

  @override
  String get notificationsConsentLabel => '기도 시간에 대한 알림 허용';

  @override
  String get prayerNotifTitleFajr => '🌅 파즈르 — 새벽 기도';

  @override
  String get prayerNotifBodyFajr =>
      '파즈르는 아흘 알-바이트의 아침 기도입니다. 이맘 알리(AS)는 말했습니다: \"새벽 기도를 당신의 가장 소중한 신탁처럼 지키십시오. 일어나 몸을 정결히 하고 알라 앞에 서십시오.\"';

  @override
  String get prayerNotifTitleDhuhr => '☀️ 주흐르 — 정오 기도';

  @override
  String get prayerNotifBodyDhuhr =>
      '아흘 알-바이트의 이맘들은 기억의 모든 순간을 소중히 했습니다. 당신의 하루를 멈추고, 필요하면 주흐르를 아스르와 결합한 후 당신의 마음을 알라에게 돌리세요.';

  @override
  String get prayerNotifTitleAsr => '🌤️ 아스르 — 오후 기도';

  @override
  String get prayerNotifBodyAsr =>
      '기도를 지키십시오. 그것은 당신과 알라 사이의 계약입니다. 아스르 시간이 왔습니다 — 그것을 기억 없이 지나가게 하지 마십시오.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 마그립 — 일몰 기도';

  @override
  String get prayerNotifBodyMaghrib =>
      '태양이 졌습니다 — 아흘 알-바이트가 기도와 간청을 위해 신성하게 여기는 순간입니다. 마그립을 드리고 밤이 시작되기 전에 알라에게 두아를 청하기 위해 손을 펼치십시오.';

  @override
  String get prayerNotifTitleIsha => '🌙 이샤 — 저녁 기도';

  @override
  String get prayerNotifBodyIsha =>
      '알라의 동반자 속에서 하루를 마무리하세요. 이맘들은 이샤 후 살랏 알-라일을 권장했습니다 — 하지만 먼저 이샤를 완료하고 그분의 기억으로 하루를 마무리하세요.';

  @override
  String get outOfReflectionsBannerText => '모든 명상을 사용했습니다';

  @override
  String get outOfReflectionsBannerCta => '더 얻기';

  @override
  String get dhikrPageTitle => '지크르';

  @override
  String get dhikrTapToCount => '원을 눌러서 세세요';

  @override
  String get dhikrResetButton => '재설정';

  @override
  String get dhikrComplete => '마샤알라';

  @override
  String get dhikrCompleteMessage =>
      '100번의 알라 기억을 완료했습니다. 당신의 마음의 빛이 되기를 바랍니다.';

  @override
  String get disclaimerTitle => '앱 지도에 대해';

  @override
  String get disclaimerBody =>
      'Ayara는 쿠란과 아흘 알-바이트의 가르침에 근거한 당신의 믿음의 개인적 여정을 지원하기 위해 이슬람 명상, 리마인더 및 영적 콘텐츠를 제공합니다. 이 콘텐츠는 일반적인 정보 및 영감 목적으로만 제공됩니다.\n\nAyara는 자격 있는 학자를 대체하지 않습니다.\n이 앱의 지도는 학자, 마르자, 또는 신학적으로 훈련된 교사 대신 사용할 수 없습니다. 시아 이슬람에서 종교적 지도는 자파리 법학 학파(피크흐)와 자격 있는 법학자의 통치를 지도하는 살아있는 마르자를 따르는 전통에 근거합니다. 종교적 통치, 할랄과 하람 문제 또는 개인 종교적 의무에 관한 질문이 있으시면 자격 있는 마르자나 당신의 공동체의 학자에게 조언을 구하세요.\n\n이 앱은 종교적 통치를 발행하지 않습니다.\nAyara는 피크흐나 개인 종교적 의무 문제에 대해 권위 있는 결정을 내리지 않습니다. 여기의 어떤 것도 파트와나 구속력 있는 종교적 지침으로 취급되어서는 안 됩니다.\n\n아흘 알-바이트의 중앙성.\n시아 이슬람에서 선지자 무함마드 ﷺ와 그의 정결한 가정 — 아흘 알-바이트 — 는 쿠란 이후 이슬람 공동체의 권위 있는 지도자입니다. 아흘 알-바이트의 12명의 이맘은 신적으로 임명된 이슬람 가르침의 해석자입니다. 이 앱의 콘텐츠는 이 전통을 반영하고 충실하게 명예를 주려고 합니다.\n\n공동체 문제.\n이 앱은 당신의 지역 모스크, 이슬람 센터 및 종교 공동체의 중요한 역할을 깊이 존중하면서 믿음에 대한 당신의 참여를 장려하는 것을 목표로 합니다. 우리는 당신이 당신 근처에 있는 자격 있는 교사와 연결되고 배우기를 권장합니다.';

  @override
  String get disclaimerClose => '이해했습니다';

  @override
  String get disclaimerInfoTooltip => '앱 지도에 대해';

  @override
  String get disclaimerSettingsSubtitle => '일반 정보 목적으로만. 전체 고지사항을 읽으려면 탭하세요.';

  @override
  String get disclaimerSectionHeader => '지도 고지사항';

  @override
  String get navHome => '홈';

  @override
  String get navReflect => '명상';

  @override
  String get navDuas => '두아';

  @override
  String get navCalendar => '달력';

  @override
  String get dashboardToday => '오늘';

  @override
  String get dashboardComingUp => '곧 다가올';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '일',
      one: '일',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => '빠른 액세스';

  @override
  String get quickActionQibla => '키블라';

  @override
  String get quickActionDhikr => '지크르';

  @override
  String get quickActionDailyGrace => '지도';

  @override
  String get quickActionPrayerTimes => '기도 시간';

  @override
  String get askAyaraTitle => 'Ayara에 물어보기';

  @override
  String get askAyaraSubtitle => '이슬람 질문을 물어보고 사려 깊은 답변을 받으세요.';

  @override
  String get askAyaraHint => '예: 라마단의 의미는 무엇인가요?';

  @override
  String get askAyaraSubmit => '물어보기';

  @override
  String get wisdomOfTheDayTitle => '오늘의 지혜';

  @override
  String get calendarScreenTitle => '이슬람 달력';

  @override
  String get calendarUpcomingOccasions => '다가올 행사';

  @override
  String get calendarOccasionRemindersTitle => '행사 리마인더';

  @override
  String get calendarOccasionRemindersHint => '각 행사 저녁에 알림';

  @override
  String get calendarNotifPermissionDenied => '알림 권한이 거부되었습니다. 기기 설정에서 활성화하세요.';

  @override
  String get calendarNoEvents => '다가올 이벤트가 없습니다.';

  @override
  String get calendarAddToPhone => '전화 일정에 추가';

  @override
  String get calendarAddedToPhone => '일정에 추가됨';

  @override
  String get calendarCountdownToday => '오늘';

  @override
  String get calendarCountdownTomorrow => '내일';

  @override
  String calendarCountdownDays(int days) {
    return '$days일 후';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => '1월';

  @override
  String get calendarMonthFeb => '2월';

  @override
  String get calendarMonthMar => '3월';

  @override
  String get calendarMonthApr => '4월';

  @override
  String get calendarMonthMay => '5월';

  @override
  String get calendarMonthJun => '6월';

  @override
  String get calendarMonthJul => '7월';

  @override
  String get calendarMonthAug => '8월';

  @override
  String get calendarMonthSep => '9월';

  @override
  String get calendarMonthOct => '10월';

  @override
  String get calendarMonthNov => '11월';

  @override
  String get calendarMonthDec => '12월';

  @override
  String get calendarSeasonMuharramEarly => '무하람의 날들 — 카르발라를 기억하세요';

  @override
  String get calendarSeasonAshura => '아슈라 — 야 후싸인(AS)';

  @override
  String get calendarSeasonMuharramLate => '무하람 — 애도와 성찰의 날들';

  @override
  String get calendarSeasonArbaeen => '아르바인 — 후싸인의 40일';

  @override
  String get calendarSeasonRoadToArbaeen => '아르바인으로 가는 길';

  @override
  String get calendarSeasonMabath => '마바스 무바라크 — 계시의 새벽';

  @override
  String get calendarSeasonMidShaban => '샤반의 중간 — 이맘 알-마흐디(AJ)의 생일';

  @override
  String get calendarSeasonRamadan => '라마단 무바라크 — 쿠란의 달';

  @override
  String get calendarSeasonGhadir => '에이드 알-가디르 무바라크!';

  @override
  String get hijriMonth1 => '무하람';

  @override
  String get hijriMonth2 => '사파르';

  @override
  String get hijriMonth3 => '라비 알-아왈';

  @override
  String get hijriMonth4 => '라비 알-타니';

  @override
  String get hijriMonth5 => '주마다 알-아왈';

  @override
  String get hijriMonth6 => '주마다 알-타니';

  @override
  String get hijriMonth7 => '라자브';

  @override
  String get hijriMonth8 => '샤반';

  @override
  String get hijriMonth9 => '라마단';

  @override
  String get hijriMonth10 => '샤왈';

  @override
  String get hijriMonth11 => '두 알-키다';

  @override
  String get hijriMonth12 => '두 알-히자';

  @override
  String get duasScreenTitle => '두아 및 지야라';

  @override
  String get duasSearchHint => '두아, 지야라 검색…';

  @override
  String get duasFilterAll => '모두';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개의 두아 및 지야라',
      one: '$count개의 두아',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => '두아가 없습니다.';

  @override
  String get duaCategoryDaily => '일일';

  @override
  String get duaCategoryWeekly => '주간';

  @override
  String get duaCategoryOccasions => '행사';

  @override
  String get duaCategoryZiyarat => '지야라';

  @override
  String get duaCategoryTasbih => '타스비흐';

  @override
  String get eventTypeBirth => '생일';

  @override
  String get eventTypeMartyrdom => '순교';

  @override
  String get eventTypeOccasion => '행사';

  @override
  String get duaCopyTooltip => '번역 복사';

  @override
  String get duaToggleTransliteration => '음차 표기';

  @override
  String get duaToggleTranslation => '번역';

  @override
  String get duaAskAiLabel => 'Ayara에 이 두아를 설명하도록 물어보기';

  @override
  String get duaAskAiLockedLabel => 'Ayara에 물어보기(윌라야)';

  @override
  String get duaAiLockedMessage =>
      'Ayara 설명은 윌라야 회원만 사용할 수 있습니다. 설정에서 업그레이드하세요.';

  @override
  String duaAiComingSoon(String name) {
    return '\"$name\"에 대해 Ayara에 물어보기 — 곧 출시!';
  }

  @override
  String get duaCopiedToast => '두아가 클립보드에 복사되었습니다.';

  @override
  String get tasbihAllahuAkbarMeaning => '알라는 위대하심';

  @override
  String get tasbihAlhamdulillahMeaning => '모든 찬양은 알라에게';

  @override
  String get tasbihSubhanallahMeaning => '알라에게 영광을';

  @override
  String get tasbihResetTooltip => '재설정';

  @override
  String get tasbihCompleteTitle => '타스비흐 완료';

  @override
  String get tasbihCompleteMessage => '알라가 당신의 지크르를 받아들이시기를.';

  @override
  String get tasbihTapHint => '어디든지 눌러서 세세요';

  @override
  String get tasbihatScreenTitle => '기도 가이드';

  @override
  String get tasbihatScreenSubtitle => '기도의 영광';

  @override
  String get tasbihatScreenDescription =>
      '일일 기도 중에 그리고 후에 낭송되는 영광에 대한 완전한 가이드 — 아흘 알-바이트(a)의 전통을 따릅니다.';

  @override
  String get tasbihatArba3Title => '타스비하트 알-아르바아';

  @override
  String get tasbihatArba3Subtitle => '3번째와 4번째 라카에서 낭송됨';

  @override
  String get tasbihatArba3Info =>
      '시아 법학에서 타스비하트 알-아르바아는 주흐르, 아스르, 마그립 및 이샤의 3번째와 4번째 라카에서 알-파티하를 대체합니다. 한 번 낭송하는 것은 의무적(와집)이고, 세 번 낭송하는 것은 권장(무스타합)됩니다.';

  @override
  String get tasbihatArba3Translation =>
      '알라에게 영광을 · 모든 찬양은 알라에게\n알라 외에는 신이 없습니다 · 알라는 위대하심';

  @override
  String get tasbihatArba3CompleteTitle => '낭송 완료';

  @override
  String get tasbihatArba3CompleteMessage => '당신의 기도가 받아들여지기를 — 아민';

  @override
  String get tasbihatArba3TapHint => '각 낭송 후에 탭하세요';

  @override
  String get tasbihatZahraSubtitle => '모든 기도 후 · 100개 구슬';

  @override
  String get tasbihatZahraOriginLabel => '출처';

  @override
  String get tasbihatZahraHadith =>
      '파티마 알-자흐라(sa) 숙녀는 선지자 ﷺ에게 종을 요청했습니다. 그는 말했습니다: \"내가 당신에게 더 나은 것을 지시하지 않을까요? 모든 기도 후에 수바나알라를 33번, 알하디를 33번, 알라후 아크바르를 34번 낭송하세요. 그것은 당신을 위해 종보다 낫습니다.\"';

  @override
  String get tasbihatZahraHadithSource => '— 비하르 알-안와르, 권 85';

  @override
  String get tasbihatZahraOpenCounter => '타스비흐 카운터 열기';

  @override
  String get tasbihatDuasTitle => '권장 두아';

  @override
  String get tasbihatDuasSubtitle => '기도를 마친 후';

  @override
  String get tasbihatDuaAyatKursiTitle => '아야트 알-쿠르시';

  @override
  String get tasbihatDuaAyatKursiWhen => '모든 의무 기도 후';

  @override
  String get tasbihatDuaAyatKursiSource => '알-바까라 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      '모든 의무 기도 후에 아야트 알-쿠르시를 낭송하는 자, 죽음 외에 자신과 천국 사이에 아무것도 없습니다. 이맘 알-바키르(a)는 쿠란에서 가장 위대한 구절 중 하나라고 말했습니다.';

  @override
  String get tasbihatDuaSalawatTitle => '살라와트';

  @override
  String get tasbihatDuaSalawatWhen => '모든 기도 후 · 모든 간청을 봉인합니다';

  @override
  String get tasbihatDuaSalawatSource => '이맘 알-사디크(a) — 알-카피';

  @override
  String get tasbihatDuaSalawatNote =>
      '선지자 ﷺ와 그의 정결한 가정(알 무함마드)에게 인사를 보내는 것은 모든 두아를 봉인하기 위해 권장됩니다. 이맘 알-사디크(a)는 \"당신이 무함마드와 그의 가족에게 살라와트를 보낼 때까지 모든 두아는 중단됩니다.\"라고 말했습니다.';

  @override
  String get tasbihatDuaFarajTitle => '두아 알-파라즈';

  @override
  String get tasbihatDuaFarajWhen => '모든 기도 후 · 우리 시대의 이맘을 위해';

  @override
  String get tasbihatDuaFarajSource => '이맘 알-하산 알-아스카리(a)가 가르침';

  @override
  String get tasbihatDuaFarajNote =>
      '이맘 알-마흐디(af), 12번째 이맘의 재출현을 위한 두아로서 그의 아버지가 가르쳤습니다. 시아 신도들이 모든 기도 후 살아있는 이맘에 대한 헌신의 행위로 매일 낭송합니다.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => '파티마 숙녀의 타스비흐';

  @override
  String get tasbihatDuaTasbihFatimaWhen => '마그립과 이샤 후 · 특히 권장';

  @override
  String get tasbihatDuaTasbihFatimaSource => '이맘 알-바키르(a) — 비하르 알-안와르';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      '이맘 알-바키르(a)는 이샤 후 자기 전에 타스비흐 알-자흐라를 낭송하는 것이 1000라카의 선택 기도보다 낫다고 말했습니다. 그것의 빛은 하늘로 올라갑니다.';

  @override
  String get tasbihFatimaGiftPre => '선지자의 선물';

  @override
  String get tasbihFatimaGiftPost => '모든 기도 후에 낭송됨';

  @override
  String get prayerTrackerTitle => '기도 추적기';

  @override
  String get prayerTrackerPrayed => '기도함';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count일 연속';
  }

  @override
  String get prayerTrackerAllComplete => '오늘 모든 기도가 완료되었습니다. 알라가 받으시기를.';

  @override
  String get dhikrTrackerTitle => '타스비하트 알-자흐라';

  @override
  String get dhikrTrackerCompletedToday => '오늘 완료됨';

  @override
  String get dhikrTrackerNotDoneToday => '오늘 미완료';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count일 연속';
  }

  @override
  String get dhikrReminderTitle => '타스비흐 리마인더';

  @override
  String get dhikrReminderDescription =>
      '타스비흐 알-자흐라(SA)를 낭송하도록 하는 부드러운 일일 리마인더입니다.';

  @override
  String get dhikrReminderEnable => '타스비흐 리마인더 활성화';

  @override
  String get dhikrReminderTimeLabel => '리마인더 시간';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => '일일 하디스';

  @override
  String get hadithLabelArabic => '아랍어';

  @override
  String get hadithLabelTranslation => '번역';

  @override
  String get hadithBadge => '하디스';

  @override
  String get hadithShare => '이 하디스 공유';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara를 통해';
  }

  @override
  String get hadithNavPrevious => '이전';

  @override
  String get hadithNavNext => '다음';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14명의 마수민';

  @override
  String get imamsScreenSubtitle => '선지자, 파티마 숙녀 및 12명의 이맘 — 이슬람의 무오류 지도자';

  @override
  String get imamLabelBorn => '출생';

  @override
  String get imamLabelMartyrdom => '순교';

  @override
  String get imamLabelStatus => '상태';

  @override
  String get imamSectionBiography => '전기';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => '최후의 선지자';

  @override
  String get imamRoleInfallible => '무오류';

  @override
  String get imamOrdinal1 => '1번째 이맘';

  @override
  String get imamOrdinal2 => '2번째 이맘';

  @override
  String get imamOrdinal3 => '3번째 이맘';

  @override
  String get imamOrdinal4 => '4번째 이맘';

  @override
  String get imamOrdinal5 => '5번째 이맘';

  @override
  String get imamOrdinal6 => '6번째 이맘';

  @override
  String get imamOrdinal7 => '7번째 이맘';

  @override
  String get imamOrdinal8 => '8번째 이맘';

  @override
  String get imamOrdinal9 => '9번째 이맘';

  @override
  String get imamOrdinal10 => '10번째 이맘';

  @override
  String get imamOrdinal11 => '11번째 이맘';

  @override
  String get imamOrdinal12 => '12번째 이맘';

  @override
  String get duaAudioScreenTitle => '두아 듣기';

  @override
  String get duaAudioScreenSubtitle =>
      '두아를 선택하여 듣습니다. 재생 또는 일시 중지하려면 타일을 탭하세요.';

  @override
  String get duaAudioComingSoonMessage => '이 두아의 오디오는 향후 업데이트에서 사용할 수 있습니다.';

  @override
  String get duaAudioClose => '닫기';

  @override
  String get duaAudioError => '오디오를 로드할 수 없습니다. 연결을 확인하세요.';

  @override
  String get duaAudioMetaTransmittedBy => '전승자';

  @override
  String get duaAudioMetaOccasion => '행사';

  @override
  String get duaAudioMetaDuration => '기간';

  @override
  String get quickActionDailyHadith => '일일 하디스';

  @override
  String get quickAction14Masumeen => '14명의 마수민';

  @override
  String get quickActionListenDuas => '듣기';

  @override
  String get quickActionTasbihat => '기도 가이드';

  @override
  String get pilgrimageSectionTitle => '신성한 순례';

  @override
  String get pilgrimageSectionSubtitle =>
      '하즈와 움라에 대한 완전한 가이드 — 메카의 알라의 성스러운 집으로 가는 순례';

  @override
  String get hajjCardTitle => '하즈';

  @override
  String get hajjCardSubtitle => '이슬람의 다섯 번째 기둥';

  @override
  String get hajjCardDescription => '위대한 연례 순례 — 가능한 모든 무슬림을 위해 평생에 한 번 의무적';

  @override
  String get hajjScreenTitle => '하즈 가이드';

  @override
  String get hajjScreenSubtitle => '위대한 순례에 대한 단계별 가이드';

  @override
  String get umrahCardTitle => '움라';

  @override
  String get umrahCardSubtitle => '소한 순례';

  @override
  String get umrahCardDescription => '1년의 어느 때든 수행할 수 있는 깊은 영적 여정';

  @override
  String get umrahScreenTitle => '움라 가이드';

  @override
  String get umrahScreenSubtitle => '소한 순례에 대한 단계별 가이드';

  @override
  String get pilgrimageStepsTitle => '의식 및 절차';

  @override
  String get pilgrimageImportantNotesTitle => '중요 참고 사항';

  @override
  String get pilgrimageDuaTitle => '이 단계에 대한 두아';

  @override
  String get pilgrimageJafariNoteTitle => '자파리 피크 노트';

  @override
  String get pilgrimageComplete => '✓ 완료';

  @override
  String get pilgrimageMarkDone => '완료로 표시';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total 단계';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes 분';
  }

  @override
  String get pilgrimageShiaNoteTitle => '시아 순례자';

  @override
  String get pilgrimageShiaNoteBody =>
      '시아 순례자들은 전통적으로 마스지드 알-나바위에서 선지자 무함마드(SAW)의 무덤을 방문하기 위해 메디나로도 여행하고, 자나 알-바키에서 이맘들의 무덤을 방문합니다. 이러한 방문은 엄청난 영적 중요성을 지니며 대부분의 시아 무슬림들에게 여정의 필수 부분으로 간주됩니다.';

  @override
  String get hajjIntro =>
      '하즈는 이슬람의 다섯 번째 기둥이며, 신체적으로나 재정적으로 능력이 있는 모든 무슬림을 위해 평생에 한 번 의무적입니다. 둘 히자의 달에 수행되는 이것은 선지자 이브라힘(AS), 그의 아들 이스마일(AS) 및 숙녀 하자르의 발자국을 따릅니다. 시아 무슬림의 경우 하즈는 메디나에서 선지자(SAW)와 아흘 울-바이트의 안식처를 방문하는 깊은 축복도 포함합니다.';

  @override
  String get umrahIntro =>
      '움라는 메카로의 소한 순례이며, 하즈와 달리 연중 언제든지 수행할 수 있습니다. 의무적이지는 않지만 엄청난 영적 보상을 받으며 매우 권장되는 경배 행위로 간주됩니다. 그것은 하즈와 몇 가지 의식을 공유하지만 더 짧으며 4가지 주요 의식으로 구성됩니다.';
}
