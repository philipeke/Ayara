// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Escolha seu idioma';

  @override
  String get languageSelectSub =>
      'Você pode alterar isso depois em Configurações';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos os idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Pesquisar…';

  @override
  String get planBasic => 'Padrão';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientação Diária';

  @override
  String get categorySlot02 => 'Fé e Confiança';

  @override
  String get categorySlot03 => 'Reflexão da Oração';

  @override
  String get categorySlot04 => 'Paciência e Esperança';

  @override
  String get categorySlot05 => 'Buscar Perdão';

  @override
  String get categorySlot06 => 'Misericórdia e Compaixão';

  @override
  String get categorySlot07 => 'Fé e Força';

  @override
  String get categorySlot08 => 'Coração Grato';

  @override
  String get categorySlot09 => 'Propósito da Vida';

  @override
  String get categorySlot10 => 'Laços Familiares';

  @override
  String get categorySlot11 => 'Paz Interior';

  @override
  String get categorySlot12 => 'Sabedoria do Profeta';

  @override
  String get categorySlot13 => 'Bom Caráter';

  @override
  String get categorySlot14 => 'Resistir à Tentação';

  @override
  String get categorySlot15 => 'Dhikr Noturno';

  @override
  String get categoryCustom => 'Reflexão Pessoal';

  @override
  String get dhikrMeaningSubhanallah => 'Glória a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Todo louvor é devido a Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah é o Maior';

  @override
  String get quranVerseHeartAtRest =>
      'Veramente, na lembrança de Allah os corações encontram repouso.';

  @override
  String get promptHint =>
      'Toque uma categoria para orientação e reflexão islâmica';

  @override
  String get currentLanguage => 'Idioma atual';

  @override
  String get settingsLanguage => 'Configurações de idioma';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get chooseLanguage => 'Escolha seu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palavras',
      one: '$count palavra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opções';

  @override
  String get newCta => 'Novo';

  @override
  String get actionsTitle => 'O que você gostaria de fazer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartilhar';

  @override
  String get close => 'Fechar';

  @override
  String get copiedToast => 'Copiado para a área de transferência';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Não foi possível gerar uma nova resposta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVocê quer tentar novamente?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Tentar novamente';

  @override
  String get authTitle => 'Crie sua conta';

  @override
  String get continueAsGuest => 'Continuar como convidado';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get signInEmail => 'Entrar com E-mail';

  @override
  String get upgradeWithApple => 'Continuar com Apple';

  @override
  String get mustAccept =>
      'Você deve aceitar os Termos e reconhecer a Política de Privacidade.';

  @override
  String get termsLabel => 'Aceito os Termos de Serviço';

  @override
  String get privacyLabel => 'Li a Política de Privacidade';

  @override
  String get marketingOptIn => 'Concordo em receber notícias e ofertas';

  @override
  String get openTerms => 'Termos de Serviço';

  @override
  String get openPrivacy => 'Política de Privacidade';

  @override
  String get accountSection => 'Conta';

  @override
  String get guestMode => 'Modo convidado';

  @override
  String get signedIn => 'Conectado';

  @override
  String get upgradeHint =>
      'Salve suas reflexões em todos os dispositivos criando uma conta.';

  @override
  String get upgradeWithGoogle => 'Continuar com Google';

  @override
  String get signOut => 'Sair';

  @override
  String get snackUpgraded => 'Conta atualizada com Google ✅';

  @override
  String get snackSignedIn => 'Conectado com Google ✅';

  @override
  String get snackSignedOut => 'Desconectado';

  @override
  String get snackSignedInApple => 'Conectado com Apple ✅';

  @override
  String get snackSignedInGoogle => 'Conectado com Google ✅';

  @override
  String get snackUpgradedApple => 'Conta atualizada com Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Conta atualizada com Google ✅';

  @override
  String get historyTitle => 'Reflexões anteriores';

  @override
  String get historyOpenCta => 'Reflexões anteriores';

  @override
  String get historyEmpty => 'Nenhuma reflexão salva ainda.';

  @override
  String get historyDeleteTitle => 'Excluir reflexão?';

  @override
  String get historyDeleteBody =>
      'Isso removerá permanentemente o item selecionado.';

  @override
  String get deleteCta => 'Excluir';

  @override
  String get historyButton => 'Reflexões Anteriores';

  @override
  String get historyEmptyTitle => 'Nenhuma reflexão ainda';

  @override
  String get historyEmptyBody =>
      'Gere algo primeiro — seus itens salvos aparecerão aqui.';

  @override
  String get historyDelete => 'Excluir';

  @override
  String get footerTitle => 'Com Wilaya, Iman e Sabr';

  @override
  String get footerSubtitle => 'Uma oração de cada vez';

  @override
  String get genericErrorSnack =>
      'Algo deu errado — tente novamente em alguns momentos.';

  @override
  String get upgradeAccountCta =>
      'Salve suas reflexões em todos os dispositivos – crie uma conta';

  @override
  String get deleteAccount => 'Excluir conta';

  @override
  String get exportData => 'Exportar meus dados';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Com calma 🐯\nAyara precisa de um momento antes da próxima…';

  @override
  String get rateDailyLimit =>
      'Você acabou suas reflexões por enquanto.\nConsiga mais reflexões ou atualize para Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Você usou todas as suas reflexões.\nRecarregue ou atualize para Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Você acabou suas reflexões por enquanto.\nConsiga mais reflexões ou atualize para Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloqueia recursos premium, categorias futuras e um crachá especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Suas reflexões estão vazias agora. Plano: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Não foi possível verificar suas reflexões: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo deu errado ao verificar suas reflexões.';

  @override
  String get aiFallbackGeneric =>
      'Algo deu errado — tente novamente em alguns momentos.';

  @override
  String get limitSectionTitle => 'Reflexões';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexões restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get limitLoadingLabel => 'Carregando…';

  @override
  String get limitLoadingLabelDescription =>
      'Mostrado no cartão de reflexões enquanto as estatísticas de uso estão sendo buscadas.';

  @override
  String get aiLimitTitle => 'Reflexões';

  @override
  String get aiLimitSubtitle =>
      'Cada resposta usa 1 reflexão. Padrão inclui reflexões iniciais. Wilaya desbloqueia categorias premium e permite recarga.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexões usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexões';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexões restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Carregando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Mostrado enquanto as estatísticas de reflexão estão sendo buscadas.';

  @override
  String get creditsTitle => 'Reflexões';

  @override
  String get creditsSubtitle =>
      'Cada resposta usa 1 reflexão. Padrão inclui reflexões iniciais. Wilaya desbloqueia categorias premium e permite recarga.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexões usadas';
  }

  @override
  String get settingsDeleteTitle => 'Excluir conta';

  @override
  String get settingsDeleteDescription =>
      'Exclua permanentemente sua conta e todos os dados associados.';

  @override
  String get settingsDeleteButtonLabel => 'Excluir minha conta';

  @override
  String get settingsDeleteDialogTitle => 'Excluir conta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta ação é permanente e não pode ser desfeita.\n\nTodos os seus chats, histórico e informações da conta serão excluídos.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Excluir';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexões iniciais usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'As reflexões iniciais para este dispositivo foram usadas. Atualize para Wilaya ou compre mais reflexões para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexões iniciais usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'As reflexões iniciais para este dispositivo foram usadas. Atualize para Wilaya ou compre mais reflexões para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo já está vinculado a outra conta. Faça login com a conta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloqueie a experiência completa do Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Você está em Wilaya. Precisa de mais reflexões?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plano atual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexões: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'As compras não estão disponíveis no momento.';

  @override
  String get premiumSignInToPurchase =>
      'Faça login para comprar reflexões ou desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Processando…';

  @override
  String get premiumRestoreHintTitle =>
      'Já comprou Wilaya ou reflexões neste dispositivo ou em outro?';

  @override
  String get premiumRestoreHintBody =>
      'Restaure suas compras se elas não estiverem aparecendo.';

  @override
  String get premiumBuyCredits200 => 'Compre 200 reflexões';

  @override
  String get premiumBuyCredits400 => 'Compre 400 reflexões';

  @override
  String get premiumBecomePremiumOneTime => 'Atualize para modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Com Wilaya, você pode recarregar com reflexões extras sempre que precisar.';

  @override
  String get premiumUpgradeCta => 'Atualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoria está disponível apenas para usuários de Wilaya. Atualize em Configurações para desbloquear todo o conteúdo premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloqueie Wilaya para obter reflexões extras, acesso a categorias premium e continue sempre que precisar de orientação.';

  @override
  String get premiumBenefitsPremium =>
      'Você está em modo Wilaya. Se está baixo, adicione reflexões extras e continue sem interrupções.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Adicionar 1000 reflexões';

  @override
  String get premiumBadge => 'Wilaya ativo';

  @override
  String get premiumLoadingStore => 'Carregando loja…';

  @override
  String get premiumProductNotAvailable =>
      'Este produto ainda não está disponível na loja. Tente novamente mais tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo deu errado com a compra. Tente novamente.';

  @override
  String get premiumBuyCredits100 => 'Adicionar 100 reflexões';

  @override
  String get premiumFeatureLocked =>
      'Desbloqueie Wilaya para acessar este recurso.';

  @override
  String get lockedCategoriesHint =>
      'Algumas categorias estão reservadas para membros de Wilaya. Desbloqueie-as para explorar cada reflexão em sua jornada.';

  @override
  String get freePlanBlockedTitle => 'Você usou suas reflexões iniciais';

  @override
  String get freePlanBlockedBody =>
      'Você está no plano Padrão com reflexões iniciais e atingiu o limite. Para continuar — e desbloquear categorias premium — atualize para Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Veja as opções de Wilaya abaixo';

  @override
  String get graceBlockedTitle => 'Você usou suas reflexões iniciais';

  @override
  String get graceBlockedBody =>
      'Você está no plano Padrão com reflexões iniciais e atingiu o limite. Para continuar — e desbloquear categorias premium — atualize para Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Veja as opções de Wilaya abaixo';

  @override
  String get rateGuestMustSignIn =>
      'Faça login para usar o Ayara e suas reflexões.';

  @override
  String get guestNoCreditsTitle => 'Modo convidado';

  @override
  String get guestNoCreditsBody =>
      'Como convidado, você pode explorar o aplicativo, mas não pode usar reflexões. Faça login mais tarde em Configurações para usar reflexões e desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Fazer login';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Conta excluída';

  @override
  String get accountDeleteSuccessBody =>
      'Sua conta e dados associados foram excluídos com sucesso.';

  @override
  String get accountDeleteSuccessClose => 'Fechar';

  @override
  String get accountDeleteErrorTitle => 'Não foi possível excluir a conta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'A re-autenticação foi cancelada. Faça login novamente e tente excluir.';

  @override
  String get accountDeleteReauthRequired =>
      'A exclusão da conta requer um login recente. Faça logout, faça login novamente e tente.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta ação é permanente e não pode ser desfeita. Todos os dados associados à sua conta serão excluídos.';

  @override
  String get dailyGraceTitle => 'Orientação Diária';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DO DIA';

  @override
  String get dailyGraceSaintLabel => 'ERUDITO DA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXÃO NOTURNA';

  @override
  String get dailyGraceCopiedToast =>
      'Verso copiado para a área de transferência';

  @override
  String get locationConsentLabel =>
      'Permitir que o Ayara use minha localização para direção da Qibla e horários de oração';

  @override
  String get locationConsentHint =>
      'Usado apenas para esses recursos. Sua localização nunca é compartilhada ou armazenada.';

  @override
  String get askPageTitle => 'Pergunte ao Ayara';

  @override
  String get askPageDescription =>
      'Pergunte qualquer coisa sobre fé, oração, vida ou prática islâmica e receba orientação enraizada no Alcorão e nos ensinamentos de Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Digite sua pergunta aqui…';

  @override
  String get askPageSubmitCta => 'Perguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor, escreva uma pergunta primeiro.';

  @override
  String get askResultYourQuestion => 'Sua pergunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Voltado para Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gire seu telefone até a agulha dourada apontar para cima.\nEssa direção aponta para a Qibla (Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sinal GPS fraco. Saia para fora e toque em Repetir.';

  @override
  String get qiblaRetry => 'Repetir';

  @override
  String get qiblaTitle => 'Direção da Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km para Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Localização necessária';

  @override
  String get qiblaLocationNeededBody =>
      'Permita acesso à localização para que o Ayara possa calcular a direção da Kaaba em Meca de onde quer que você esteja.';

  @override
  String get qiblaOpenSettings => 'Abrir Configurações';

  @override
  String get qiblaCompassLoading => 'Encontrando sua posição…';

  @override
  String get qiblaTowardMecca => 'Rumo a Meca';

  @override
  String get prayerTimesTitle => 'Horários de Oração';

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
  String get prayerTimesLocationNeededTitle => 'Localização necessária';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permita acesso à localização para que o Ayara possa calcular os horários de oração precisos para sua cidade.';

  @override
  String get prayerTimesNextLabel => 'Próxima';

  @override
  String get prayerTimesDoneLabel => 'Concluída';

  @override
  String get monthlyPrayerTimesTitle => 'Horários de Oração Mensais';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver Mês Completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mês';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dia';

  @override
  String get sharePrayerTimes => 'Compartilhar horários de oração';

  @override
  String get notificationsSectionTitle => 'Notificações';

  @override
  String get notificationsSectionSubtitle =>
      'Lembretes de oração, eventos de calendário e mais';

  @override
  String get dailyReflectionReminderTitle => 'Reflexão Diária';

  @override
  String get dailyReflectionReminderDescription =>
      'Um lembrete diário suave para abrir o Ayara e se conectar com sua fé.';

  @override
  String get dailyReflectionReminderEnable => 'Ativar lembrete diário';

  @override
  String get dailyReflectionReminderTimeLabel => 'Horário do lembrete';

  @override
  String get prayerNotificationsTitle => 'Lembretes de Oração';

  @override
  String get prayerNotificationsDescription =>
      'Receba um lembrete suave antes de cada horário de oração para ajudá-lo a permanecer conectado ao longo do dia.';

  @override
  String get prayerNotificationsEnable => 'Ativar lembretes de oração';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configurações de notificação';

  @override
  String get prayerNotificationsDenied => 'Notificações desativadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Vá para Configurações e permita notificações para o Ayara receber lembretes de horários de oração.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificações para horários de oração';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oração do Amanhecer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr é a oração dos amanheceres de Ahl al-Bayt. Imam Ali (AS) disse: Guarde a oração do amanhecer como você guarda seu bem mais precioso. Levante-se, purifique-se e fique de pé diante de Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oração do Meio do Dia';

  @override
  String get prayerNotifBodyDhuhr =>
      'Os Imames de Ahl al-Bayt apreciavam cada momento de lembrança. Pause seu dia, combine Dhuhr com Asr se necessário, e retorne seu coração a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oração da Tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Guarde a oração, pois é a aliança entre você e Allah. O momento de Asr chegou — não a deixe passar sem lembrança.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oração do Pôr do Sol';

  @override
  String get prayerNotifBodyMaghrib =>
      'O sol se pôs — um momento que Ahl al-Bayt considerou sagrado para súplica. Ofereça Maghrib e abra suas mãos a Allah em dua antes da noite começar.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oração Noturna';

  @override
  String get prayerNotifBodyIsha =>
      'Termine seu dia em companhia de Allah. Os Imames encorajavam Salat al-Layl após Isha — mas primeiro, complete seu Isha e feche o dia com Sua lembrança.';

  @override
  String get outOfReflectionsBannerText => 'Você usou todas as suas reflexões';

  @override
  String get outOfReflectionsBannerCta => 'Obter mais';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toque o círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Você completou 100 lembranças de Allah. Que sejam uma luz para seu coração.';

  @override
  String get disclaimerTitle => 'Sobre a orientação deste aplicativo';

  @override
  String get disclaimerBody =>
      'O Ayara fornece reflexões islâmicas, lembretes e conteúdo espiritual para apoiar sua jornada pessoal de fé, enraizada no Alcorão e nos ensinamentos de Ahl al-Bayt. Este conteúdo é oferecido apenas para fins informacionais e inspiracionais gerais.\n\nO Ayara não substitui bolsas de estudo qualificadas.\nA orientação neste aplicativo não é um substituto para um erudito islâmico aprendido, marja\', ou professor treinado teologicamente. No islamismo xiita, a orientação religiosa é enraizada na escola de jurisprudência Ja\'fari (fiqh) e na tradição de seguir um Marja\' vivo (fonte de emulação) — um jurista qualificado cujas decisões guiam os crentes na prática religiosa. Se você tem perguntas sobre decisões religiosas, questões de halal e haram, ou obrigações religiosas pessoais, procure orientação de um Marja\' qualificado ou de um erudito em sua comunidade.\n\nEste aplicativo não emite decisões religiosas.\nO Ayara não faz determinações autoritárias em questões de fiqh ou obrigações religiosas pessoais. Nada aqui deve ser tratado como uma fatwa ou instrução religiosa vinculante.\n\nA centralidade de Ahl al-Bayt.\nNo islamismo xiita, o Profeta Muhammad ﷺ e sua família purificada — Ahl al-Bayt — são os guias autorizados da comunidade islâmica após o Alcorão. Os doze Imames de Ahl al-Bayt são os intérpretes divinamente apontados do ensinamento islâmico. O conteúdo neste aplicativo reflete esta tradição e procura honrá-la fielmente.\n\nAssuntos comunitários.\nEste aplicativo visa encorajar seu engajamento com a fé, respeitando profundamente o papel vital de sua mesquita local, centro islâmico e comunidade religiosa. Encorajamos você a permanecer conectado com e aprender de professores qualificados perto de você.';

  @override
  String get disclaimerClose => 'Compreendo';

  @override
  String get disclaimerInfoTooltip => 'Sobre a orientação deste aplicativo';

  @override
  String get disclaimerSettingsSubtitle =>
      'Para fins informativos gerais apenas. Toque para ler o aviso completo.';

  @override
  String get disclaimerSectionHeader => 'Aviso de orientação';

  @override
  String get navHome => 'Inicial';

  @override
  String get navReflect => 'Refletir';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendário';

  @override
  String get dashboardToday => 'HOJE';

  @override
  String get dashboardComingUp => 'Próximo';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dias',
      one: 'dia',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acesso Rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientação';

  @override
  String get quickActionPrayerTimes => 'Horários de Oração';

  @override
  String get askAyaraTitle => 'Pergunte ao Ayara';

  @override
  String get askAyaraSubtitle =>
      'Faça qualquer pergunta islâmica e receba uma resposta atenciosa e orientada.';

  @override
  String get askAyaraHint => 'ex: Qual é o significado do Ramadã?';

  @override
  String get askAyaraSubmit => 'Perguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabedoria do Dia';

  @override
  String get calendarScreenTitle => 'Calendário Islâmico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiões Próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Lembretes de Ocasião';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado na noite anterior de cada ocasião';

  @override
  String get calendarNotifPermissionDenied =>
      'Permissão de notificação negada. Ative-a nas configurações do seu dispositivo.';

  @override
  String get calendarNoEvents => 'Nenhum evento futuro encontrado.';

  @override
  String get calendarAddToPhone => 'Adicionar ao Calendário do Telefone';

  @override
  String get calendarAddedToPhone => 'Adicionado ao Calendário';

  @override
  String get calendarCountdownToday => 'HOJE';

  @override
  String get calendarCountdownTomorrow => 'AMANHÃ';

  @override
  String calendarCountdownDays(int days) {
    return 'em $days dias';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fev';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Set';

  @override
  String get calendarMonthOct => 'Out';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dez';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dias de Muharram — lembrar de Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — dias de luto e reflexão';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quarenta dias de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'O caminho para Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — o amanhecer da revelação';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — aniversário de Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadã Mubarak — o mês do Alcorão';

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
  String get hijriMonth9 => 'Ramadã';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas e Ziyarat';

  @override
  String get duasSearchHint => 'Pesquise duas, ziyarat…';

  @override
  String get duasFilterAll => 'Tudo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas e ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nenhuma dua encontrada.';

  @override
  String get duaCategoryDaily => 'Diária';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiões';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nascimento';

  @override
  String get eventTypeMartyrdom => 'Martírio';

  @override
  String get eventTypeOccasion => 'Ocasião';

  @override
  String get duaCopyTooltip => 'Copiar tradução';

  @override
  String get duaToggleTransliteration => 'Transliteração';

  @override
  String get duaToggleTranslation => 'Tradução';

  @override
  String get duaAskAiLabel => 'Peça ao Ayara para explicar esta dua';

  @override
  String get duaAskAiLockedLabel => 'Peça ao Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'As explicações do Ayara estão disponíveis para membros de Wilaya. Atualize em Configurações.';

  @override
  String duaAiComingSoon(String name) {
    return 'Peça ao Ayara sobre \"$name\" — em breve!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada para a área de transferência.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah é o Maior';

  @override
  String get tasbihAlhamdulillahMeaning => 'Todo louvor pertence a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glória a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih Completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah aceite seu dhikr.';

  @override
  String get tasbihTapHint => 'Toque em qualquer lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guia de Oração';

  @override
  String get tasbihatScreenSubtitle => 'AS GLORIFICAÇÕES DA ORAÇÃO';

  @override
  String get tasbihatScreenDescription =>
      'Um guia completo das glorificações recitadas durante e após as orações diárias — seguindo a tradição de Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante o 3º e 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Na jurisprudência xiita, o Tasbiḥāt al-Arbaʿa substitui Surah al-Fatiha no 3º e 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. É obrigatório (wājib) recitá-lo uma vez, e recomendado (mustaḥabb) recitá-lo três vezes.';

  @override
  String get tasbihatArba3Translation =>
      'Glória a Allah · Todo louvor é para Allah\nNão há deus senão Allah · Allah é o Maior';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitação Completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que sua oração seja aceita — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toque após cada recitação';

  @override
  String get tasbihatZahraSubtitle => 'Após cada oração · 100 contas';

  @override
  String get tasbihatZahraOriginLabel => 'Origem';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) pediu ao Profeta ﷺ por um servo. Ele disse: \"Não devo guiá-la a algo melhor? Recite Subḥānallāh 33 vezes, Alḥamdulillāh 33 vezes e Allāhu Akbar 34 vezes após cada oração. Isso é melhor para você do que um servo.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir Contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Após completar sua oração';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Após cada oração obrigatória';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quem recita Āyat al-Kursī após cada oração obrigatória, nada fica entre ele e o paraíso senão a morte. Imam al-Bāqir (a) disse que está entre os maiores versos do Alcorão.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Após cada oração · sela todas as súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saudações ao Profeta ﷺ e sua família purificada (Āl Muḥammad) é recomendado para selar cada dua. Imam al-Ṣādiq (a) disse: \"Qualquer dua é suspensa até você enviar ṣalawāt sobre Muḥammad e sua família.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Após cada oração · para o Imam de nosso tempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Ensinado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Uma dua para o reaparecimento de Imam al-Mahdī (af), o décimo segundo Imam, ensinada por seu pai. Recitada diariamente pelos xiitas devotos após cada oração como um ato de devoção ao Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Após Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) disse que recitar Tasbīḥ al-Zahrā após Isha antes de dormir é melhor do que 1000 rakʿahs de oração opcional. Sua luz sobe aos céus.';

  @override
  String get tasbihFatimaGiftPre => 'Um presente do Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado após cada oração';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORAÇÃO';

  @override
  String get prayerTrackerPrayed => 'Orou';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dia de sequência';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas as orações completadas hoje. Que Allah aceite.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completo hoje';

  @override
  String get dhikrTrackerNotDoneToday => 'Não feito hoje';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dia de sequência';
  }

  @override
  String get dhikrReminderTitle => 'Lembrete de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Um lembrete diário suave para recitar seu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Ativar lembrete de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Horário do lembrete';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Diário';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUÇÃO';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartilhar Este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Próxima';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Os 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'O Profeta, Lady Fatima e os Doze Imames — os guias infalíveis do Islã';

  @override
  String get imamLabelBorn => 'Nascido';

  @override
  String get imamLabelMartyrdom => 'Martírio';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIA';

  @override
  String get imamSectionFamousSaying => 'DITO FAMOSO';

  @override
  String get imamRoleProphet => 'O Profeta Final';

  @override
  String get imamRoleInfallible => 'O Infalível';

  @override
  String get imamOrdinal1 => '1º Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3º Imam';

  @override
  String get imamOrdinal4 => '4º Imam';

  @override
  String get imamOrdinal5 => '5º Imam';

  @override
  String get imamOrdinal6 => '6º Imam';

  @override
  String get imamOrdinal7 => '7º Imam';

  @override
  String get imamOrdinal8 => '8º Imam';

  @override
  String get imamOrdinal9 => '9º Imam';

  @override
  String get imamOrdinal10 => '10º Imam';

  @override
  String get imamOrdinal11 => '11º Imam';

  @override
  String get imamOrdinal12 => '12º Imam';

  @override
  String get duaAudioScreenTitle => 'Ouça Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecione uma dua para ouvir. Toque no tile para reproduzir ou pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'O áudio para esta dua estará disponível em uma atualização próxima.';

  @override
  String get duaAudioClose => 'Fechar';

  @override
  String get duaAudioError =>
      'Não foi possível carregar o áudio. Verifique sua conexão.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasião';

  @override
  String get duaAudioMetaDuration => 'Duração';

  @override
  String get quickActionDailyHadith => 'Hadith Diário';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Ouvir';

  @override
  String get quickActionTasbihat => 'Guia de Oração';

  @override
  String get pilgrimageSectionTitle => 'A Jornada Sagrada';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guias completos de Hajj e Umrah — a peregrinação à Casa Sagrada de Allah em Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'O Quinto Pilar do Islã';

  @override
  String get hajjCardDescription =>
      'A grande peregrinação anual — obrigatória uma vez na vida para todo muçulmano capaz';

  @override
  String get hajjScreenTitle => 'Guia de Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Guia passo a passo para a grande peregrinação';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'A Peregrinação Menor';

  @override
  String get umrahCardDescription =>
      'Uma jornada espiritual profundamente gratificante que pode ser realizada a qualquer momento do ano';

  @override
  String get umrahScreenTitle => 'Guia de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guia passo a passo para a peregrinação menor';

  @override
  String get pilgrimageStepsTitle => 'Rituais e Etapas';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas Importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para esta etapa';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total etapas';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Xiitas';

  @override
  String get pilgrimageShiaNoteBody =>
      'Os peregrinos xiitas tradicionalmente também viajam para Medina para visitar o túmulo do Profeta Muhammad (SAW) na Masjid al-Nabawi e os túmulos dos Imames em Jannat al-Baqi. Essas visitas têm imensa significância espiritual e são consideradas uma parte integral da jornada para a maioria dos muçulmanos xiitas.';

  @override
  String get hajjIntro =>
      'Hajj é o quinto pilar do Islã, obrigatório uma vez na vida para todo muçulmano que seja física e financeiramente capaz. Realizado no mês de Dhul Hijjah, retorna os passos do Profeta Ibrahim (AS), seu filho Ismail (AS) e Lady Hajar. Para muçulmanos xiitas, Hajj também inclui a bênção profunda de visitar os locais de repouso do Profeta (SAW) e Ahlul Bayt em Medina.';

  @override
  String get umrahIntro =>
      'Umrah é a peregrinação menor a Meca e, ao contrário de Hajj, pode ser realizada a qualquer momento do ano. Embora não seja obrigatória, carrega uma recompensa espiritual imensa e é considerada um ato de adoração altamente recomendado. Compartilha vários rituais com Hajj, mas é mais curta, consistindo em quatro ritos principais.';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Escolha seu idioma';

  @override
  String get languageSelectSub =>
      'Você pode alterar isso depois em Configurações';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos os idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Pesquisar…';

  @override
  String get planBasic => 'Padrão';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientação Diária';

  @override
  String get categorySlot02 => 'Fé e Confiança';

  @override
  String get categorySlot03 => 'Reflexão da Oração';

  @override
  String get categorySlot04 => 'Paciência e Esperança';

  @override
  String get categorySlot05 => 'Buscar Perdão';

  @override
  String get categorySlot06 => 'Misericórdia e Compaixão';

  @override
  String get categorySlot07 => 'Fé e Força';

  @override
  String get categorySlot08 => 'Coração Grato';

  @override
  String get categorySlot09 => 'Propósito da Vida';

  @override
  String get categorySlot10 => 'Laços Familiares';

  @override
  String get categorySlot11 => 'Paz Interior';

  @override
  String get categorySlot12 => 'Sabedoria do Profeta';

  @override
  String get categorySlot13 => 'Bom Caráter';

  @override
  String get categorySlot14 => 'Resistir à Tentação';

  @override
  String get categorySlot15 => 'Dhikr Noturno';

  @override
  String get categoryCustom => 'Reflexão Pessoal';

  @override
  String get dhikrMeaningSubhanallah => 'Glória a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Todo louvor é devido a Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah é o Maior';

  @override
  String get quranVerseHeartAtRest =>
      'Veramente, na lembrança de Allah os corações encontram repouso.';

  @override
  String get promptHint =>
      'Toque uma categoria para orientação e reflexão islâmica';

  @override
  String get currentLanguage => 'Idioma atual';

  @override
  String get settingsLanguage => 'Configurações de idioma';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get chooseLanguage => 'Escolha seu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palavras',
      one: '$count palavra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opções';

  @override
  String get newCta => 'Novo';

  @override
  String get actionsTitle => 'O que você gostaria de fazer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartilhar';

  @override
  String get close => 'Fechar';

  @override
  String get copiedToast => 'Copiado para a área de transferência';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Não foi possível gerar uma nova resposta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVocê quer tentar novamente?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Tentar novamente';

  @override
  String get authTitle => 'Crie sua conta';

  @override
  String get continueAsGuest => 'Continuar como convidado';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get signInEmail => 'Entrar com E-mail';

  @override
  String get upgradeWithApple => 'Continuar com Apple';

  @override
  String get mustAccept =>
      'Você deve aceitar os Termos e reconhecer a Política de Privacidade.';

  @override
  String get termsLabel => 'Aceito os Termos de Serviço';

  @override
  String get privacyLabel => 'Li a Política de Privacidade';

  @override
  String get marketingOptIn => 'Concordo em receber notícias e ofertas';

  @override
  String get openTerms => 'Termos de Serviço';

  @override
  String get openPrivacy => 'Política de Privacidade';

  @override
  String get accountSection => 'Conta';

  @override
  String get guestMode => 'Modo convidado';

  @override
  String get signedIn => 'Conectado';

  @override
  String get upgradeHint =>
      'Salve suas reflexões em todos os dispositivos criando uma conta.';

  @override
  String get upgradeWithGoogle => 'Continuar com Google';

  @override
  String get signOut => 'Sair';

  @override
  String get snackUpgraded => 'Conta atualizada com Google ✅';

  @override
  String get snackSignedIn => 'Conectado com Google ✅';

  @override
  String get snackSignedOut => 'Desconectado';

  @override
  String get snackSignedInApple => 'Conectado com Apple ✅';

  @override
  String get snackSignedInGoogle => 'Conectado com Google ✅';

  @override
  String get snackUpgradedApple => 'Conta atualizada com Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Conta atualizada com Google ✅';

  @override
  String get historyTitle => 'Reflexões anteriores';

  @override
  String get historyOpenCta => 'Reflexões anteriores';

  @override
  String get historyEmpty => 'Nenhuma reflexão salva ainda.';

  @override
  String get historyDeleteTitle => 'Excluir reflexão?';

  @override
  String get historyDeleteBody =>
      'Isso removerá permanentemente o item selecionado.';

  @override
  String get deleteCta => 'Excluir';

  @override
  String get historyButton => 'Reflexões Anteriores';

  @override
  String get historyEmptyTitle => 'Nenhuma reflexão ainda';

  @override
  String get historyEmptyBody =>
      'Gere algo primeiro — seus itens salvos aparecerão aqui.';

  @override
  String get historyDelete => 'Excluir';

  @override
  String get footerTitle => 'Com Wilaya, Iman e Sabr';

  @override
  String get footerSubtitle => 'Uma oração de cada vez';

  @override
  String get genericErrorSnack =>
      'Algo deu errado — tente novamente em alguns momentos.';

  @override
  String get upgradeAccountCta =>
      'Salve suas reflexões em todos os dispositivos – crie uma conta';

  @override
  String get deleteAccount => 'Excluir conta';

  @override
  String get exportData => 'Exportar meus dados';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Com calma 🐯\nAyara precisa de um momento antes da próxima…';

  @override
  String get rateDailyLimit =>
      'Você acabou suas reflexões por enquanto.\nConsiga mais reflexões ou atualize para Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Você usou todas as suas reflexões.\nRecarregue ou atualize para Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Você acabou suas reflexões por enquanto.\nConsiga mais reflexões ou atualize para Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloqueia recursos premium, categorias futuras e um crachá especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Suas reflexões estão vazias agora. Plano: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Não foi possível verificar suas reflexões: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo deu errado ao verificar suas reflexões.';

  @override
  String get aiFallbackGeneric =>
      'Algo deu errado — tente novamente em alguns momentos.';

  @override
  String get limitSectionTitle => 'Reflexões';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexões restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get limitLoadingLabel => 'Carregando…';

  @override
  String get limitLoadingLabelDescription =>
      'Mostrado no cartão de reflexões enquanto as estatísticas de uso estão sendo buscadas.';

  @override
  String get aiLimitTitle => 'Reflexões';

  @override
  String get aiLimitSubtitle =>
      'Cada resposta usa 1 reflexão. Padrão inclui reflexões iniciais. Wilaya desbloqueia categorias premium e permite recarga.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexões usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexões';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexões restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Carregando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Mostrado enquanto as estatísticas de reflexão estão sendo buscadas.';

  @override
  String get creditsTitle => 'Reflexões';

  @override
  String get creditsSubtitle =>
      'Cada resposta usa 1 reflexão. Padrão inclui reflexões iniciais. Wilaya desbloqueia categorias premium e permite recarga.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexões usadas';
  }

  @override
  String get settingsDeleteTitle => 'Excluir conta';

  @override
  String get settingsDeleteDescription =>
      'Exclua permanentemente sua conta e todos os dados associados.';

  @override
  String get settingsDeleteButtonLabel => 'Excluir minha conta';

  @override
  String get settingsDeleteDialogTitle => 'Excluir conta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta ação é permanente e não pode ser desfeita.\n\nTodos os seus chats, histórico e informações da conta serão excluídos.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Excluir';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexões iniciais usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'As reflexões iniciais para este dispositivo foram usadas. Atualize para Wilaya ou compre mais reflexões para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexões iniciais usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'As reflexões iniciais para este dispositivo foram usadas. Atualize para Wilaya ou compre mais reflexões para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo já está vinculado a outra conta. Faça login com a conta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloqueie a experiência completa do Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Você está em Wilaya. Precisa de mais reflexões?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plano atual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexões: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'As compras não estão disponíveis no momento.';

  @override
  String get premiumSignInToPurchase =>
      'Faça login para comprar reflexões ou desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Processando…';

  @override
  String get premiumRestoreHintTitle =>
      'Já comprou Wilaya ou reflexões neste dispositivo ou em outro?';

  @override
  String get premiumRestoreHintBody =>
      'Restaure suas compras se elas não estiverem aparecendo.';

  @override
  String get premiumBuyCredits200 => 'Compre 200 reflexões';

  @override
  String get premiumBuyCredits400 => 'Compre 400 reflexões';

  @override
  String get premiumBecomePremiumOneTime => 'Atualize para modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Com Wilaya, você pode recarregar com reflexões extras sempre que precisar.';

  @override
  String get premiumUpgradeCta => 'Atualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoria está disponível apenas para usuários de Wilaya. Atualize em Configurações para desbloquear todo o conteúdo premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloqueie Wilaya para obter reflexões extras, acesso a categorias premium e continue sempre que precisar de orientação.';

  @override
  String get premiumBenefitsPremium =>
      'Você está em modo Wilaya. Se está baixo, adicione reflexões extras e continue sem interrupções.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Adicionar 1000 reflexões';

  @override
  String get premiumBadge => 'Wilaya ativo';

  @override
  String get premiumLoadingStore => 'Carregando loja…';

  @override
  String get premiumProductNotAvailable =>
      'Este produto ainda não está disponível na loja. Tente novamente mais tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo deu errado com a compra. Tente novamente.';

  @override
  String get premiumBuyCredits100 => 'Adicionar 100 reflexões';

  @override
  String get premiumFeatureLocked =>
      'Desbloqueie Wilaya para acessar este recurso.';

  @override
  String get lockedCategoriesHint =>
      'Algumas categorias estão reservadas para membros de Wilaya. Desbloqueie-as para explorar cada reflexão em sua jornada.';

  @override
  String get freePlanBlockedTitle => 'Você usou suas reflexões iniciais';

  @override
  String get freePlanBlockedBody =>
      'Você está no plano Padrão com reflexões iniciais e atingiu o limite. Para continuar — e desbloquear categorias premium — atualize para Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Veja as opções de Wilaya abaixo';

  @override
  String get graceBlockedTitle => 'Você usou suas reflexões iniciais';

  @override
  String get graceBlockedBody =>
      'Você está no plano Padrão com reflexões iniciais e atingiu o limite. Para continuar — e desbloquear categorias premium — atualize para Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Veja as opções de Wilaya abaixo';

  @override
  String get rateGuestMustSignIn =>
      'Faça login para usar o Ayara e suas reflexões.';

  @override
  String get guestNoCreditsTitle => 'Modo convidado';

  @override
  String get guestNoCreditsBody =>
      'Como convidado, você pode explorar o aplicativo, mas não pode usar reflexões. Faça login mais tarde em Configurações para usar reflexões e desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Fazer login';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Conta excluída';

  @override
  String get accountDeleteSuccessBody =>
      'Sua conta e dados associados foram excluídos com sucesso.';

  @override
  String get accountDeleteSuccessClose => 'Fechar';

  @override
  String get accountDeleteErrorTitle => 'Não foi possível excluir a conta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'A re-autenticação foi cancelada. Faça login novamente e tente excluir.';

  @override
  String get accountDeleteReauthRequired =>
      'A exclusão da conta requer um login recente. Faça logout, faça login novamente e tente.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta ação é permanente e não pode ser desfeita. Todos os dados associados à sua conta serão excluídos.';

  @override
  String get dailyGraceTitle => 'Orientação Diária';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DO DIA';

  @override
  String get dailyGraceSaintLabel => 'ERUDITO DA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXÃO NOTURNA';

  @override
  String get dailyGraceCopiedToast =>
      'Verso copiado para a área de transferência';

  @override
  String get locationConsentLabel =>
      'Permitir que o Ayara use minha localização para direção da Qibla e horários de oração';

  @override
  String get locationConsentHint =>
      'Usado apenas para esses recursos. Sua localização nunca é compartilhada ou armazenada.';

  @override
  String get askPageTitle => 'Pergunte ao Ayara';

  @override
  String get askPageDescription =>
      'Pergunte qualquer coisa sobre fé, oração, vida ou prática islâmica e receba orientação enraizada no Alcorão e nos ensinamentos de Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Digite sua pergunta aqui…';

  @override
  String get askPageSubmitCta => 'Perguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor, escreva uma pergunta primeiro.';

  @override
  String get askResultYourQuestion => 'Sua pergunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Voltado para Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gire seu telefone até a agulha dourada apontar para cima.\nEssa direção aponta para a Qibla (Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sinal GPS fraco. Saia para fora e toque em Repetir.';

  @override
  String get qiblaRetry => 'Repetir';

  @override
  String get qiblaTitle => 'Direção da Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km para Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Localização necessária';

  @override
  String get qiblaLocationNeededBody =>
      'Permita acesso à localização para que o Ayara possa calcular a direção da Kaaba em Meca de onde quer que você esteja.';

  @override
  String get qiblaOpenSettings => 'Abrir Configurações';

  @override
  String get qiblaCompassLoading => 'Encontrando sua posição…';

  @override
  String get qiblaTowardMecca => 'Rumo a Meca';

  @override
  String get prayerTimesTitle => 'Horários de Oração';

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
  String get prayerTimesLocationNeededTitle => 'Localização necessária';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permita acesso à localização para que o Ayara possa calcular os horários de oração precisos para sua cidade.';

  @override
  String get prayerTimesNextLabel => 'Próxima';

  @override
  String get prayerTimesDoneLabel => 'Concluída';

  @override
  String get monthlyPrayerTimesTitle => 'Horários de Oração Mensais';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver Mês Completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mês';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dia';

  @override
  String get sharePrayerTimes => 'Compartilhar horários de oração';

  @override
  String get notificationsSectionTitle => 'Notificações';

  @override
  String get notificationsSectionSubtitle =>
      'Lembretes de oração, eventos de calendário e mais';

  @override
  String get dailyReflectionReminderTitle => 'Reflexão Diária';

  @override
  String get dailyReflectionReminderDescription =>
      'Um lembrete diário suave para abrir o Ayara e se conectar com sua fé.';

  @override
  String get dailyReflectionReminderEnable => 'Ativar lembrete diário';

  @override
  String get dailyReflectionReminderTimeLabel => 'Horário do lembrete';

  @override
  String get prayerNotificationsTitle => 'Lembretes de Oração';

  @override
  String get prayerNotificationsDescription =>
      'Receba um lembrete suave antes de cada horário de oração para ajudá-lo a permanecer conectado ao longo do dia.';

  @override
  String get prayerNotificationsEnable => 'Ativar lembretes de oração';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configurações de notificação';

  @override
  String get prayerNotificationsDenied => 'Notificações desativadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Vá para Configurações e permita notificações para o Ayara receber lembretes de horários de oração.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificações para horários de oração';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oração do Amanhecer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr é a oração dos amanheceres de Ahl al-Bayt. Imam Ali (AS) disse: Guarde a oração do amanhecer como você guarda seu bem mais precioso. Levante-se, purifique-se e fique de pé diante de Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oração do Meio do Dia';

  @override
  String get prayerNotifBodyDhuhr =>
      'Os Imames de Ahl al-Bayt apreciavam cada momento de lembrança. Pause seu dia, combine Dhuhr com Asr se necessário, e retorne seu coração a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oração da Tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Guarde a oração, pois é a aliança entre você e Allah. O momento de Asr chegou — não a deixe passar sem lembrança.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oração do Pôr do Sol';

  @override
  String get prayerNotifBodyMaghrib =>
      'O sol se pôs — um momento que Ahl al-Bayt considerou sagrado para súplica. Ofereça Maghrib e abra suas mãos a Allah em dua antes da noite começar.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oração Noturna';

  @override
  String get prayerNotifBodyIsha =>
      'Termine seu dia em companhia de Allah. Os Imames encorajavam Salat al-Layl após Isha — mas primeiro, complete seu Isha e feche o dia com Sua lembrança.';

  @override
  String get outOfReflectionsBannerText => 'Você usou todas as suas reflexões';

  @override
  String get outOfReflectionsBannerCta => 'Obter mais';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toque o círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Você completou 100 lembranças de Allah. Que sejam uma luz para seu coração.';

  @override
  String get disclaimerTitle => 'Sobre a orientação deste aplicativo';

  @override
  String get disclaimerBody =>
      'O Ayara fornece reflexões islâmicas, lembretes e conteúdo espiritual para apoiar sua jornada pessoal de fé, enraizada no Alcorão e nos ensinamentos de Ahl al-Bayt. Este conteúdo é oferecido apenas para fins informacionais e inspiracionais gerais.\n\nO Ayara não substitui bolsas de estudo qualificadas.\nA orientação neste aplicativo não é um substituto para um erudito islâmico aprendido, marja\', ou professor treinado teologicamente. No islamismo xiita, a orientação religiosa é enraizada na escola de jurisprudência Ja\'fari (fiqh) e na tradição de seguir um Marja\' vivo (fonte de emulação) — um jurista qualificado cujas decisões guiam os crentes na prática religiosa. Se você tem perguntas sobre decisões religiosas, questões de halal e haram, ou obrigações religiosas pessoais, procure orientação de um Marja\' qualificado ou de um erudito em sua comunidade.\n\nEste aplicativo não emite decisões religiosas.\nO Ayara não faz determinações autoritárias em questões de fiqh ou obrigações religiosas pessoais. Nada aqui deve ser tratado como uma fatwa ou instrução religiosa vinculante.\n\nA centralidade de Ahl al-Bayt.\nNo islamismo xiita, o Profeta Muhammad ﷺ e sua família purificada — Ahl al-Bayt — são os guias autorizados da comunidade islâmica após o Alcorão. Os doze Imames de Ahl al-Bayt são os intérpretes divinamente apontados do ensinamento islâmico. O conteúdo neste aplicativo reflete esta tradição e procura honrá-la fielmente.\n\nAssuntos comunitários.\nEste aplicativo visa encorajar seu engajamento com a fé, respeitando profundamente o papel vital de sua mesquita local, centro islâmico e comunidade religiosa. Encorajamos você a permanecer conectado com e aprender de professores qualificados perto de você.';

  @override
  String get disclaimerClose => 'Compreendo';

  @override
  String get disclaimerInfoTooltip => 'Sobre a orientação deste aplicativo';

  @override
  String get disclaimerSettingsSubtitle =>
      'Para fins informativos gerais apenas. Toque para ler o aviso completo.';

  @override
  String get disclaimerSectionHeader => 'Aviso de orientação';

  @override
  String get navHome => 'Inicial';

  @override
  String get navReflect => 'Refletir';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendário';

  @override
  String get dashboardToday => 'HOJE';

  @override
  String get dashboardComingUp => 'Próximo';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dias',
      one: 'dia',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acesso Rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientação';

  @override
  String get quickActionPrayerTimes => 'Horários de Oração';

  @override
  String get askAyaraTitle => 'Pergunte ao Ayara';

  @override
  String get askAyaraSubtitle =>
      'Faça qualquer pergunta islâmica e receba uma resposta atenciosa e orientada.';

  @override
  String get askAyaraHint => 'ex: Qual é o significado do Ramadã?';

  @override
  String get askAyaraSubmit => 'Perguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabedoria do Dia';

  @override
  String get calendarScreenTitle => 'Calendário Islâmico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiões Próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Lembretes de Ocasião';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado na noite anterior de cada ocasião';

  @override
  String get calendarNotifPermissionDenied =>
      'Permissão de notificação negada. Ative-a nas configurações do seu dispositivo.';

  @override
  String get calendarNoEvents => 'Nenhum evento futuro encontrado.';

  @override
  String get calendarAddToPhone => 'Adicionar ao Calendário do Telefone';

  @override
  String get calendarAddedToPhone => 'Adicionado ao Calendário';

  @override
  String get calendarCountdownToday => 'HOJE';

  @override
  String get calendarCountdownTomorrow => 'AMANHÃ';

  @override
  String calendarCountdownDays(int days) {
    return 'em $days dias';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fev';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Set';

  @override
  String get calendarMonthOct => 'Out';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dez';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dias de Muharram — lembrar de Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — dias de luto e reflexão';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quarenta dias de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'O caminho para Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — o amanhecer da revelação';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — aniversário de Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadã Mubarak — o mês do Alcorão';

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
  String get hijriMonth9 => 'Ramadã';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas e Ziyarat';

  @override
  String get duasSearchHint => 'Pesquise duas, ziyarat…';

  @override
  String get duasFilterAll => 'Tudo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas e ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nenhuma dua encontrada.';

  @override
  String get duaCategoryDaily => 'Diária';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiões';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nascimento';

  @override
  String get eventTypeMartyrdom => 'Martírio';

  @override
  String get eventTypeOccasion => 'Ocasião';

  @override
  String get duaCopyTooltip => 'Copiar tradução';

  @override
  String get duaToggleTransliteration => 'Transliteração';

  @override
  String get duaToggleTranslation => 'Tradução';

  @override
  String get duaAskAiLabel => 'Peça ao Ayara para explicar esta dua';

  @override
  String get duaAskAiLockedLabel => 'Peça ao Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'As explicações do Ayara estão disponíveis para membros de Wilaya. Atualize em Configurações.';

  @override
  String duaAiComingSoon(String name) {
    return 'Peça ao Ayara sobre \"$name\" — em breve!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada para a área de transferência.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah é o Maior';

  @override
  String get tasbihAlhamdulillahMeaning => 'Todo louvor pertence a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glória a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih Completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah aceite seu dhikr.';

  @override
  String get tasbihTapHint => 'Toque em qualquer lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guia de Oração';

  @override
  String get tasbihatScreenSubtitle => 'AS GLORIFICAÇÕES DA ORAÇÃO';

  @override
  String get tasbihatScreenDescription =>
      'Um guia completo das glorificações recitadas durante e após as orações diárias — seguindo a tradição de Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante o 3º e 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Na jurisprudência xiita, o Tasbiḥāt al-Arbaʿa substitui Surah al-Fatiha no 3º e 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. É obrigatório (wājib) recitá-lo uma vez, e recomendado (mustaḥabb) recitá-lo três vezes.';

  @override
  String get tasbihatArba3Translation =>
      'Glória a Allah · Todo louvor é para Allah\nNão há deus senão Allah · Allah é o Maior';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitação Completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que sua oração seja aceita — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toque após cada recitação';

  @override
  String get tasbihatZahraSubtitle => 'Após cada oração · 100 contas';

  @override
  String get tasbihatZahraOriginLabel => 'Origem';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) pediu ao Profeta ﷺ por um servo. Ele disse: \"Não devo guiá-la a algo melhor? Recite Subḥānallāh 33 vezes, Alḥamdulillāh 33 vezes e Allāhu Akbar 34 vezes após cada oração. Isso é melhor para você do que um servo.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir Contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Após completar sua oração';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Após cada oração obrigatória';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quem recita Āyat al-Kursī após cada oração obrigatória, nada fica entre ele e o paraíso senão a morte. Imam al-Bāqir (a) disse que está entre os maiores versos do Alcorão.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Após cada oração · sela todas as súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saudações ao Profeta ﷺ e sua família purificada (Āl Muḥammad) é recomendado para selar cada dua. Imam al-Ṣādiq (a) disse: \"Qualquer dua é suspensa até você enviar ṣalawāt sobre Muḥammad e sua família.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Após cada oração · para o Imam de nosso tempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Ensinado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Uma dua para o reaparecimento de Imam al-Mahdī (af), o décimo segundo Imam, ensinada por seu pai. Recitada diariamente pelos xiitas devotos após cada oração como um ato de devoção ao Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Após Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) disse que recitar Tasbīḥ al-Zahrā após Isha antes de dormir é melhor do que 1000 rakʿahs de oração opcional. Sua luz sobe aos céus.';

  @override
  String get tasbihFatimaGiftPre => 'Um presente do Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado após cada oração';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORAÇÃO';

  @override
  String get prayerTrackerPrayed => 'Orou';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dia de sequência';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas as orações completadas hoje. Que Allah aceite.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completo hoje';

  @override
  String get dhikrTrackerNotDoneToday => 'Não feito hoje';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dia de sequência';
  }

  @override
  String get dhikrReminderTitle => 'Lembrete de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Um lembrete diário suave para recitar seu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Ativar lembrete de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Horário do lembrete';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Diário';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUÇÃO';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartilhar Este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Próxima';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Os 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'O Profeta, Lady Fatima e os Doze Imames — os guias infalíveis do Islã';

  @override
  String get imamLabelBorn => 'Nascido';

  @override
  String get imamLabelMartyrdom => 'Martírio';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIA';

  @override
  String get imamSectionFamousSaying => 'DITO FAMOSO';

  @override
  String get imamRoleProphet => 'O Profeta Final';

  @override
  String get imamRoleInfallible => 'O Infalível';

  @override
  String get imamOrdinal1 => '1º Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3º Imam';

  @override
  String get imamOrdinal4 => '4º Imam';

  @override
  String get imamOrdinal5 => '5º Imam';

  @override
  String get imamOrdinal6 => '6º Imam';

  @override
  String get imamOrdinal7 => '7º Imam';

  @override
  String get imamOrdinal8 => '8º Imam';

  @override
  String get imamOrdinal9 => '9º Imam';

  @override
  String get imamOrdinal10 => '10º Imam';

  @override
  String get imamOrdinal11 => '11º Imam';

  @override
  String get imamOrdinal12 => '12º Imam';

  @override
  String get duaAudioScreenTitle => 'Ouça Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecione uma dua para ouvir. Toque no tile para reproduzir ou pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'O áudio para esta dua estará disponível em uma atualização próxima.';

  @override
  String get duaAudioClose => 'Fechar';

  @override
  String get duaAudioError =>
      'Não foi possível carregar o áudio. Verifique sua conexão.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasião';

  @override
  String get duaAudioMetaDuration => 'Duração';

  @override
  String get quickActionDailyHadith => 'Hadith Diário';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Ouvir';

  @override
  String get quickActionTasbihat => 'Guia de Oração';

  @override
  String get pilgrimageSectionTitle => 'A Jornada Sagrada';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guias completos de Hajj e Umrah — a peregrinação à Casa Sagrada de Allah em Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'O Quinto Pilar do Islã';

  @override
  String get hajjCardDescription =>
      'A grande peregrinação anual — obrigatória uma vez na vida para todo muçulmano capaz';

  @override
  String get hajjScreenTitle => 'Guia de Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Guia passo a passo para a grande peregrinação';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'A Peregrinação Menor';

  @override
  String get umrahCardDescription =>
      'Uma jornada espiritual profundamente gratificante que pode ser realizada a qualquer momento do ano';

  @override
  String get umrahScreenTitle => 'Guia de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guia passo a passo para a peregrinação menor';

  @override
  String get pilgrimageStepsTitle => 'Rituais e Etapas';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas Importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para esta etapa';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total etapas';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Xiitas';

  @override
  String get pilgrimageShiaNoteBody =>
      'Os peregrinos xiitas tradicionalmente também viajam para Medina para visitar o túmulo do Profeta Muhammad (SAW) na Masjid al-Nabawi e os túmulos dos Imames em Jannat al-Baqi. Essas visitas têm imensa significância espiritual e são consideradas uma parte integral da jornada para a maioria dos muçulmanos xiitas.';

  @override
  String get hajjIntro =>
      'Hajj é o quinto pilar do Islã, obrigatório uma vez na vida para todo muçulmano que seja física e financeiramente capaz. Realizado no mês de Dhul Hijjah, retorna os passos do Profeta Ibrahim (AS), seu filho Ismail (AS) e Lady Hajar. Para muçulmanos xiitas, Hajj também inclui a bênção profunda de visitar os locais de repouso do Profeta (SAW) e Ahlul Bayt em Medina.';

  @override
  String get umrahIntro =>
      'Umrah é a peregrinação menor a Meca e, ao contrário de Hajj, pode ser realizada a qualquer momento do ano. Embora não seja obrigatória, carrega uma recompensa espiritual imensa e é considerada um ato de adoração altamente recomendado. Compartilha vários rituais com Hajj, mas é mais curta, consistindo em quatro ritos principais.';
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Escolha seu idioma';

  @override
  String get languageSelectSub =>
      'Você pode alterar isso depois em Configurações';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos os idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Pesquisar…';

  @override
  String get planBasic => 'Padrão';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientação Diária';

  @override
  String get categorySlot02 => 'Fé e Confiança';

  @override
  String get categorySlot03 => 'Reflexão da Oração';

  @override
  String get categorySlot04 => 'Paciência e Esperança';

  @override
  String get categorySlot05 => 'Buscar Perdão';

  @override
  String get categorySlot06 => 'Misericórdia e Compaixão';

  @override
  String get categorySlot07 => 'Fé e Força';

  @override
  String get categorySlot08 => 'Coração Grato';

  @override
  String get categorySlot09 => 'Propósito da Vida';

  @override
  String get categorySlot10 => 'Laços Familiares';

  @override
  String get categorySlot11 => 'Paz Interior';

  @override
  String get categorySlot12 => 'Sabedoria do Profeta';

  @override
  String get categorySlot13 => 'Bom Caráter';

  @override
  String get categorySlot14 => 'Resistir à Tentação';

  @override
  String get categorySlot15 => 'Dhikr Noturno';

  @override
  String get categoryCustom => 'Reflexão Pessoal';

  @override
  String get dhikrMeaningSubhanallah => 'Glória a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Todo louvor é devido a Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah é o Maior';

  @override
  String get quranVerseHeartAtRest =>
      'Veramente, na lembrança de Allah os corações encontram repouso.';

  @override
  String get promptHint =>
      'Toque uma categoria para orientação e reflexão islâmica';

  @override
  String get currentLanguage => 'Idioma atual';

  @override
  String get settingsLanguage => 'Configurações de idioma';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get chooseLanguage => 'Escolha seu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palavras',
      one: '$count palavra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opções';

  @override
  String get newCta => 'Novo';

  @override
  String get actionsTitle => 'O que você gostaria de fazer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartilhar';

  @override
  String get close => 'Fechar';

  @override
  String get copiedToast => 'Copiado para a área de transferência';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Não foi possível gerar uma nova resposta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVocê quer tentar novamente?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Tentar novamente';

  @override
  String get authTitle => 'Crie sua conta';

  @override
  String get continueAsGuest => 'Continuar como convidado';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get signInEmail => 'Entrar com E-mail';

  @override
  String get upgradeWithApple => 'Continuar com Apple';

  @override
  String get mustAccept =>
      'Você deve aceitar os Termos e reconhecer a Política de Privacidade.';

  @override
  String get termsLabel => 'Aceito os Termos de Serviço';

  @override
  String get privacyLabel => 'Li a Política de Privacidade';

  @override
  String get marketingOptIn => 'Concordo em receber notícias e ofertas';

  @override
  String get openTerms => 'Termos de Serviço';

  @override
  String get openPrivacy => 'Política de Privacidade';

  @override
  String get accountSection => 'Conta';

  @override
  String get guestMode => 'Modo convidado';

  @override
  String get signedIn => 'Conectado';

  @override
  String get upgradeHint =>
      'Salve suas reflexões em todos os dispositivos criando uma conta.';

  @override
  String get upgradeWithGoogle => 'Continuar com Google';

  @override
  String get signOut => 'Sair';

  @override
  String get snackUpgraded => 'Conta atualizada com Google ✅';

  @override
  String get snackSignedIn => 'Conectado com Google ✅';

  @override
  String get snackSignedOut => 'Desconectado';

  @override
  String get snackSignedInApple => 'Conectado com Apple ✅';

  @override
  String get snackSignedInGoogle => 'Conectado com Google ✅';

  @override
  String get snackUpgradedApple => 'Conta atualizada com Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Conta atualizada com Google ✅';

  @override
  String get historyTitle => 'Reflexões anteriores';

  @override
  String get historyOpenCta => 'Reflexões anteriores';

  @override
  String get historyEmpty => 'Nenhuma reflexão salva ainda.';

  @override
  String get historyDeleteTitle => 'Excluir reflexão?';

  @override
  String get historyDeleteBody =>
      'Isso removerá permanentemente o item selecionado.';

  @override
  String get deleteCta => 'Excluir';

  @override
  String get historyButton => 'Reflexões Anteriores';

  @override
  String get historyEmptyTitle => 'Nenhuma reflexão ainda';

  @override
  String get historyEmptyBody =>
      'Gere algo primeiro — seus itens salvos aparecerão aqui.';

  @override
  String get historyDelete => 'Excluir';

  @override
  String get footerTitle => 'Com Wilaya, Iman e Sabr';

  @override
  String get footerSubtitle => 'Uma oração de cada vez';

  @override
  String get genericErrorSnack =>
      'Algo deu errado — tente novamente em alguns momentos.';

  @override
  String get upgradeAccountCta =>
      'Salve suas reflexões em todos os dispositivos – crie uma conta';

  @override
  String get deleteAccount => 'Excluir conta';

  @override
  String get exportData => 'Exportar meus dados';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Com calma 🐯\nAyara precisa de um momento antes da próxima…';

  @override
  String get rateDailyLimit =>
      'Você acabou suas reflexões por enquanto.\nConsiga mais reflexões ou atualize para Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Você usou todas as suas reflexões.\nRecarregue ou atualize para Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Você acabou suas reflexões por enquanto.\nConsiga mais reflexões ou atualize para Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloqueia recursos premium, categorias futuras e um crachá especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Suas reflexões estão vazias agora. Plano: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Não foi possível verificar suas reflexões: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo deu errado ao verificar suas reflexões.';

  @override
  String get aiFallbackGeneric =>
      'Algo deu errado — tente novamente em alguns momentos.';

  @override
  String get limitSectionTitle => 'Reflexões';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexões restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get limitLoadingLabel => 'Carregando…';

  @override
  String get limitLoadingLabelDescription =>
      'Mostrado no cartão de reflexões enquanto as estatísticas de uso estão sendo buscadas.';

  @override
  String get aiLimitTitle => 'Reflexões';

  @override
  String get aiLimitSubtitle =>
      'Cada resposta usa 1 reflexão. Padrão inclui reflexões iniciais. Wilaya desbloqueia categorias premium e permite recarga.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexões usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexões';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexões restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plano: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Carregando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Mostrado enquanto as estatísticas de reflexão estão sendo buscadas.';

  @override
  String get creditsTitle => 'Reflexões';

  @override
  String get creditsSubtitle =>
      'Cada resposta usa 1 reflexão. Padrão inclui reflexões iniciais. Wilaya desbloqueia categorias premium e permite recarga.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexões usadas';
  }

  @override
  String get settingsDeleteTitle => 'Excluir conta';

  @override
  String get settingsDeleteDescription =>
      'Exclua permanentemente sua conta e todos os dados associados.';

  @override
  String get settingsDeleteButtonLabel => 'Excluir minha conta';

  @override
  String get settingsDeleteDialogTitle => 'Excluir conta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta ação é permanente e não pode ser desfeita.\n\nTodos os seus chats, histórico e informações da conta serão excluídos.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Excluir';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexões iniciais usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'As reflexões iniciais para este dispositivo foram usadas. Atualize para Wilaya ou compre mais reflexões para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexões iniciais usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'As reflexões iniciais para este dispositivo foram usadas. Atualize para Wilaya ou compre mais reflexões para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo já está vinculado a outra conta. Faça login com a conta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloqueie a experiência completa do Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Você está em Wilaya. Precisa de mais reflexões?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plano atual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexões: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'As compras não estão disponíveis no momento.';

  @override
  String get premiumSignInToPurchase =>
      'Faça login para comprar reflexões ou desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Processando…';

  @override
  String get premiumRestoreHintTitle =>
      'Já comprou Wilaya ou reflexões neste dispositivo ou em outro?';

  @override
  String get premiumRestoreHintBody =>
      'Restaure suas compras se elas não estiverem aparecendo.';

  @override
  String get premiumBuyCredits200 => 'Compre 200 reflexões';

  @override
  String get premiumBuyCredits400 => 'Compre 400 reflexões';

  @override
  String get premiumBecomePremiumOneTime => 'Atualize para modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Com Wilaya, você pode recarregar com reflexões extras sempre que precisar.';

  @override
  String get premiumUpgradeCta => 'Atualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoria está disponível apenas para usuários de Wilaya. Atualize em Configurações para desbloquear todo o conteúdo premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloqueie Wilaya para obter reflexões extras, acesso a categorias premium e continue sempre que precisar de orientação.';

  @override
  String get premiumBenefitsPremium =>
      'Você está em modo Wilaya. Se está baixo, adicione reflexões extras e continue sem interrupções.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Adicionar 1000 reflexões';

  @override
  String get premiumBadge => 'Wilaya ativo';

  @override
  String get premiumLoadingStore => 'Carregando loja…';

  @override
  String get premiumProductNotAvailable =>
      'Este produto ainda não está disponível na loja. Tente novamente mais tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo deu errado com a compra. Tente novamente.';

  @override
  String get premiumBuyCredits100 => 'Adicionar 100 reflexões';

  @override
  String get premiumFeatureLocked =>
      'Desbloqueie Wilaya para acessar este recurso.';

  @override
  String get lockedCategoriesHint =>
      'Algumas categorias estão reservadas para membros de Wilaya. Desbloqueie-as para explorar cada reflexão em sua jornada.';

  @override
  String get freePlanBlockedTitle => 'Você usou suas reflexões iniciais';

  @override
  String get freePlanBlockedBody =>
      'Você está no plano Padrão com reflexões iniciais e atingiu o limite. Para continuar — e desbloquear categorias premium — atualize para Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Veja as opções de Wilaya abaixo';

  @override
  String get graceBlockedTitle => 'Você usou suas reflexões iniciais';

  @override
  String get graceBlockedBody =>
      'Você está no plano Padrão com reflexões iniciais e atingiu o limite. Para continuar — e desbloquear categorias premium — atualize para Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Veja as opções de Wilaya abaixo';

  @override
  String get rateGuestMustSignIn =>
      'Faça login para usar o Ayara e suas reflexões.';

  @override
  String get guestNoCreditsTitle => 'Modo convidado';

  @override
  String get guestNoCreditsBody =>
      'Como convidado, você pode explorar o aplicativo, mas não pode usar reflexões. Faça login mais tarde em Configurações para usar reflexões e desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Fazer login';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Conta excluída';

  @override
  String get accountDeleteSuccessBody =>
      'Sua conta e dados associados foram excluídos com sucesso.';

  @override
  String get accountDeleteSuccessClose => 'Fechar';

  @override
  String get accountDeleteErrorTitle => 'Não foi possível excluir a conta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'A re-autenticação foi cancelada. Faça login novamente e tente excluir.';

  @override
  String get accountDeleteReauthRequired =>
      'A exclusão da conta requer um login recente. Faça logout, faça login novamente e tente.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta ação é permanente e não pode ser desfeita. Todos os dados associados à sua conta serão excluídos.';

  @override
  String get dailyGraceTitle => 'Orientação Diária';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DO DIA';

  @override
  String get dailyGraceSaintLabel => 'ERUDITO DA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXÃO NOTURNA';

  @override
  String get dailyGraceCopiedToast =>
      'Verso copiado para a área de transferência';

  @override
  String get locationConsentLabel =>
      'Permitir que o Ayara use minha localização para direção da Qibla e horários de oração';

  @override
  String get locationConsentHint =>
      'Usado apenas para esses recursos. Sua localização nunca é compartilhada ou armazenada.';

  @override
  String get askPageTitle => 'Pergunte ao Ayara';

  @override
  String get askPageDescription =>
      'Pergunte qualquer coisa sobre fé, oração, vida ou prática islâmica e receba orientação enraizada no Alcorão e nos ensinamentos de Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Digite sua pergunta aqui…';

  @override
  String get askPageSubmitCta => 'Perguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor, escreva uma pergunta primeiro.';

  @override
  String get askResultYourQuestion => 'Sua pergunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Voltado para Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gire seu telefone até a agulha dourada apontar para cima.\nEssa direção aponta para a Qibla (Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sinal GPS fraco. Saia para fora e toque em Repetir.';

  @override
  String get qiblaRetry => 'Repetir';

  @override
  String get qiblaTitle => 'Direção da Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km para Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Localização necessária';

  @override
  String get qiblaLocationNeededBody =>
      'Permita acesso à localização para que o Ayara possa calcular a direção da Kaaba em Meca de onde quer que você esteja.';

  @override
  String get qiblaOpenSettings => 'Abrir Configurações';

  @override
  String get qiblaCompassLoading => 'Encontrando sua posição…';

  @override
  String get qiblaTowardMecca => 'Rumo a Meca';

  @override
  String get prayerTimesTitle => 'Horários de Oração';

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
  String get prayerTimesLocationNeededTitle => 'Localização necessária';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permita acesso à localização para que o Ayara possa calcular os horários de oração precisos para sua cidade.';

  @override
  String get prayerTimesNextLabel => 'Próxima';

  @override
  String get prayerTimesDoneLabel => 'Concluída';

  @override
  String get monthlyPrayerTimesTitle => 'Horários de Oração Mensais';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver Mês Completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mês';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dia';

  @override
  String get sharePrayerTimes => 'Compartilhar horários de oração';

  @override
  String get notificationsSectionTitle => 'Notificações';

  @override
  String get notificationsSectionSubtitle =>
      'Lembretes de oração, eventos de calendário e mais';

  @override
  String get dailyReflectionReminderTitle => 'Reflexão Diária';

  @override
  String get dailyReflectionReminderDescription =>
      'Um lembrete diário suave para abrir o Ayara e se conectar com sua fé.';

  @override
  String get dailyReflectionReminderEnable => 'Ativar lembrete diário';

  @override
  String get dailyReflectionReminderTimeLabel => 'Horário do lembrete';

  @override
  String get prayerNotificationsTitle => 'Lembretes de Oração';

  @override
  String get prayerNotificationsDescription =>
      'Receba um lembrete suave antes de cada horário de oração para ajudá-lo a permanecer conectado ao longo do dia.';

  @override
  String get prayerNotificationsEnable => 'Ativar lembretes de oração';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configurações de notificação';

  @override
  String get prayerNotificationsDenied => 'Notificações desativadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Vá para Configurações e permita notificações para o Ayara receber lembretes de horários de oração.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificações para horários de oração';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oração do Amanhecer';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr é a oração dos amanheceres de Ahl al-Bayt. Imam Ali (AS) disse: Guarde a oração do amanhecer como você guarda seu bem mais precioso. Levante-se, purifique-se e fique de pé diante de Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oração do Meio do Dia';

  @override
  String get prayerNotifBodyDhuhr =>
      'Os Imames de Ahl al-Bayt apreciavam cada momento de lembrança. Pause seu dia, combine Dhuhr com Asr se necessário, e retorne seu coração a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oração da Tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Guarde a oração, pois é a aliança entre você e Allah. O momento de Asr chegou — não a deixe passar sem lembrança.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oração do Pôr do Sol';

  @override
  String get prayerNotifBodyMaghrib =>
      'O sol se pôs — um momento que Ahl al-Bayt considerou sagrado para súplica. Ofereça Maghrib e abra suas mãos a Allah em dua antes da noite começar.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oração Noturna';

  @override
  String get prayerNotifBodyIsha =>
      'Termine seu dia em companhia de Allah. Os Imames encorajavam Salat al-Layl após Isha — mas primeiro, complete seu Isha e feche o dia com Sua lembrança.';

  @override
  String get outOfReflectionsBannerText => 'Você usou todas as suas reflexões';

  @override
  String get outOfReflectionsBannerCta => 'Obter mais';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toque o círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Você completou 100 lembranças de Allah. Que sejam uma luz para seu coração.';

  @override
  String get disclaimerTitle => 'Sobre a orientação deste aplicativo';

  @override
  String get disclaimerBody =>
      'O Ayara fornece reflexões islâmicas, lembretes e conteúdo espiritual para apoiar sua jornada pessoal de fé, enraizada no Alcorão e nos ensinamentos de Ahl al-Bayt. Este conteúdo é oferecido apenas para fins informacionais e inspiracionais gerais.\n\nO Ayara não substitui bolsas de estudo qualificadas.\nA orientação neste aplicativo não é um substituto para um erudito islâmico aprendido, marja\', ou professor treinado teologicamente. No islamismo xiita, a orientação religiosa é enraizada na escola de jurisprudência Ja\'fari (fiqh) e na tradição de seguir um Marja\' vivo (fonte de emulação) — um jurista qualificado cujas decisões guiam os crentes na prática religiosa. Se você tem perguntas sobre decisões religiosas, questões de halal e haram, ou obrigações religiosas pessoais, procure orientação de um Marja\' qualificado ou de um erudito em sua comunidade.\n\nEste aplicativo não emite decisões religiosas.\nO Ayara não faz determinações autoritárias em questões de fiqh ou obrigações religiosas pessoais. Nada aqui deve ser tratado como uma fatwa ou instrução religiosa vinculante.\n\nA centralidade de Ahl al-Bayt.\nNo islamismo xiita, o Profeta Muhammad ﷺ e sua família purificada — Ahl al-Bayt — são os guias autorizados da comunidade islâmica após o Alcorão. Os doze Imames de Ahl al-Bayt são os intérpretes divinamente apontados do ensinamento islâmico. O conteúdo neste aplicativo reflete esta tradição e procura honrá-la fielmente.\n\nAssuntos comunitários.\nEste aplicativo visa encorajar seu engajamento com a fé, respeitando profundamente o papel vital de sua mesquita local, centro islâmico e comunidade religiosa. Encorajamos você a permanecer conectado com e aprender de professores qualificados perto de você.';

  @override
  String get disclaimerClose => 'Compreendo';

  @override
  String get disclaimerInfoTooltip => 'Sobre a orientação deste aplicativo';

  @override
  String get disclaimerSettingsSubtitle =>
      'Para fins informativos gerais apenas. Toque para ler o aviso completo.';

  @override
  String get disclaimerSectionHeader => 'Aviso de orientação';

  @override
  String get navHome => 'Inicial';

  @override
  String get navReflect => 'Refletir';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendário';

  @override
  String get dashboardToday => 'HOJE';

  @override
  String get dashboardComingUp => 'Próximo';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dias',
      one: 'dia',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acesso Rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientação';

  @override
  String get quickActionPrayerTimes => 'Horários de Oração';

  @override
  String get askAyaraTitle => 'Pergunte ao Ayara';

  @override
  String get askAyaraSubtitle =>
      'Faça qualquer pergunta islâmica e receba uma resposta atenciosa e orientada.';

  @override
  String get askAyaraHint => 'ex: Qual é o significado do Ramadã?';

  @override
  String get askAyaraSubmit => 'Perguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabedoria do Dia';

  @override
  String get calendarScreenTitle => 'Calendário Islâmico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiões Próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Lembretes de Ocasião';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado na noite anterior de cada ocasião';

  @override
  String get calendarNotifPermissionDenied =>
      'Permissão de notificação negada. Ative-a nas configurações do seu dispositivo.';

  @override
  String get calendarNoEvents => 'Nenhum evento futuro encontrado.';

  @override
  String get calendarAddToPhone => 'Adicionar ao Calendário do Telefone';

  @override
  String get calendarAddedToPhone => 'Adicionado ao Calendário';

  @override
  String get calendarCountdownToday => 'HOJE';

  @override
  String get calendarCountdownTomorrow => 'AMANHÃ';

  @override
  String calendarCountdownDays(int days) {
    return 'em $days dias';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Fev';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Set';

  @override
  String get calendarMonthOct => 'Out';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dez';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dias de Muharram — lembrar de Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — dias de luto e reflexão';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — quarenta dias de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'O caminho para Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — o amanhecer da revelação';

  @override
  String get calendarSeasonMidShaban =>
      'Mid-Sha\'ban — aniversário de Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadã Mubarak — o mês do Alcorão';

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
  String get hijriMonth9 => 'Ramadã';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas e Ziyarat';

  @override
  String get duasSearchHint => 'Pesquise duas, ziyarat…';

  @override
  String get duasFilterAll => 'Tudo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas e ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nenhuma dua encontrada.';

  @override
  String get duaCategoryDaily => 'Diária';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiões';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nascimento';

  @override
  String get eventTypeMartyrdom => 'Martírio';

  @override
  String get eventTypeOccasion => 'Ocasião';

  @override
  String get duaCopyTooltip => 'Copiar tradução';

  @override
  String get duaToggleTransliteration => 'Transliteração';

  @override
  String get duaToggleTranslation => 'Tradução';

  @override
  String get duaAskAiLabel => 'Peça ao Ayara para explicar esta dua';

  @override
  String get duaAskAiLockedLabel => 'Peça ao Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'As explicações do Ayara estão disponíveis para membros de Wilaya. Atualize em Configurações.';

  @override
  String duaAiComingSoon(String name) {
    return 'Peça ao Ayara sobre \"$name\" — em breve!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada para a área de transferência.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah é o Maior';

  @override
  String get tasbihAlhamdulillahMeaning => 'Todo louvor pertence a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glória a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih Completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah aceite seu dhikr.';

  @override
  String get tasbihTapHint => 'Toque em qualquer lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guia de Oração';

  @override
  String get tasbihatScreenSubtitle => 'AS GLORIFICAÇÕES DA ORAÇÃO';

  @override
  String get tasbihatScreenDescription =>
      'Um guia completo das glorificações recitadas durante e após as orações diárias — seguindo a tradição de Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante o 3º e 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'Na jurisprudência xiita, o Tasbiḥāt al-Arbaʿa substitui Surah al-Fatiha no 3º e 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. É obrigatório (wājib) recitá-lo uma vez, e recomendado (mustaḥabb) recitá-lo três vezes.';

  @override
  String get tasbihatArba3Translation =>
      'Glória a Allah · Todo louvor é para Allah\nNão há deus senão Allah · Allah é o Maior';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitação Completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que sua oração seja aceita — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toque após cada recitação';

  @override
  String get tasbihatZahraSubtitle => 'Após cada oração · 100 contas';

  @override
  String get tasbihatZahraOriginLabel => 'Origem';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) pediu ao Profeta ﷺ por um servo. Ele disse: \"Não devo guiá-la a algo melhor? Recite Subḥānallāh 33 vezes, Alḥamdulillāh 33 vezes e Allāhu Akbar 34 vezes após cada oração. Isso é melhor para você do que um servo.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir Contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Após completar sua oração';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Após cada oração obrigatória';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quem recita Āyat al-Kursī após cada oração obrigatória, nada fica entre ele e o paraíso senão a morte. Imam al-Bāqir (a) disse que está entre os maiores versos do Alcorão.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Após cada oração · sela todas as súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saudações ao Profeta ﷺ e sua família purificada (Āl Muḥammad) é recomendado para selar cada dua. Imam al-Ṣādiq (a) disse: \"Qualquer dua é suspensa até você enviar ṣalawāt sobre Muḥammad e sua família.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Após cada oração · para o Imam de nosso tempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Ensinado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Uma dua para o reaparecimento de Imam al-Mahdī (af), o décimo segundo Imam, ensinada por seu pai. Recitada diariamente pelos xiitas devotos após cada oração como um ato de devoção ao Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Após Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) disse que recitar Tasbīḥ al-Zahrā após Isha antes de dormir é melhor do que 1000 rakʿahs de oração opcional. Sua luz sobe aos céus.';

  @override
  String get tasbihFatimaGiftPre => 'Um presente do Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado após cada oração';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORAÇÃO';

  @override
  String get prayerTrackerPrayed => 'Orou';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dia de sequência';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas as orações completadas hoje. Que Allah aceite.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completo hoje';

  @override
  String get dhikrTrackerNotDoneToday => 'Não feito hoje';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dia de sequência';
  }

  @override
  String get dhikrReminderTitle => 'Lembrete de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Um lembrete diário suave para recitar seu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Ativar lembrete de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Horário do lembrete';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Diário';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUÇÃO';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartilhar Este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Próxima';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Os 14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'O Profeta, Lady Fatima e os Doze Imames — os guias infalíveis do Islã';

  @override
  String get imamLabelBorn => 'Nascido';

  @override
  String get imamLabelMartyrdom => 'Martírio';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIA';

  @override
  String get imamSectionFamousSaying => 'DITO FAMOSO';

  @override
  String get imamRoleProphet => 'O Profeta Final';

  @override
  String get imamRoleInfallible => 'O Infalível';

  @override
  String get imamOrdinal1 => '1º Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3º Imam';

  @override
  String get imamOrdinal4 => '4º Imam';

  @override
  String get imamOrdinal5 => '5º Imam';

  @override
  String get imamOrdinal6 => '6º Imam';

  @override
  String get imamOrdinal7 => '7º Imam';

  @override
  String get imamOrdinal8 => '8º Imam';

  @override
  String get imamOrdinal9 => '9º Imam';

  @override
  String get imamOrdinal10 => '10º Imam';

  @override
  String get imamOrdinal11 => '11º Imam';

  @override
  String get imamOrdinal12 => '12º Imam';

  @override
  String get duaAudioScreenTitle => 'Ouça Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecione uma dua para ouvir. Toque no tile para reproduzir ou pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'O áudio para esta dua estará disponível em uma atualização próxima.';

  @override
  String get duaAudioClose => 'Fechar';

  @override
  String get duaAudioError =>
      'Não foi possível carregar o áudio. Verifique sua conexão.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasião';

  @override
  String get duaAudioMetaDuration => 'Duração';

  @override
  String get quickActionDailyHadith => 'Hadith Diário';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Ouvir';

  @override
  String get quickActionTasbihat => 'Guia de Oração';

  @override
  String get pilgrimageSectionTitle => 'A Jornada Sagrada';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guias completos de Hajj e Umrah — a peregrinação à Casa Sagrada de Allah em Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'O Quinto Pilar do Islã';

  @override
  String get hajjCardDescription =>
      'A grande peregrinação anual — obrigatória uma vez na vida para todo muçulmano capaz';

  @override
  String get hajjScreenTitle => 'Guia de Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Guia passo a passo para a grande peregrinação';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'A Peregrinação Menor';

  @override
  String get umrahCardDescription =>
      'Uma jornada espiritual profundamente gratificante que pode ser realizada a qualquer momento do ano';

  @override
  String get umrahScreenTitle => 'Guia de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guia passo a passo para a peregrinação menor';

  @override
  String get pilgrimageStepsTitle => 'Rituais e Etapas';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas Importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para esta etapa';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total etapas';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Xiitas';

  @override
  String get pilgrimageShiaNoteBody =>
      'Os peregrinos xiitas tradicionalmente também viajam para Medina para visitar o túmulo do Profeta Muhammad (SAW) na Masjid al-Nabawi e os túmulos dos Imames em Jannat al-Baqi. Essas visitas têm imensa significância espiritual e são consideradas uma parte integral da jornada para a maioria dos muçulmanos xiitas.';

  @override
  String get hajjIntro =>
      'Hajj é o quinto pilar do Islã, obrigatório uma vez na vida para todo muçulmano que seja física e financeiramente capaz. Realizado no mês de Dhul Hijjah, retorna os passos do Profeta Ibrahim (AS), seu filho Ismail (AS) e Lady Hajar. Para muçulmanos xiitas, Hajj também inclui a bênção profunda de visitar os locais de repouso do Profeta (SAW) e Ahlul Bayt em Medina.';

  @override
  String get umrahIntro =>
      'Umrah é a peregrinação menor a Meca e, ao contrário de Hajj, pode ser realizada a qualquer momento do ano. Embora não seja obrigatória, carrega uma recompensa espiritual imensa e é considerada um ato de adoração altamente recomendado. Compartilha vários rituais com Hajj, mas é mais curta, consistindo em quatro ritos principais.';
}
