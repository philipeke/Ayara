// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Elige tu idioma';

  @override
  String get languageSelectSub =>
      'Puedes cambiar esto más tarde en Configuración';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos los idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Buscar…';

  @override
  String get planBasic => 'Estándar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientación diaria';

  @override
  String get categorySlot02 => 'Fe y confianza';

  @override
  String get categorySlot03 => 'Reflexión sobre la oración';

  @override
  String get categorySlot04 => 'Paciencia y esperanza';

  @override
  String get categorySlot05 => 'Busca el perdón';

  @override
  String get categorySlot06 => 'Misericordia y compasión';

  @override
  String get categorySlot07 => 'Fe y fortaleza';

  @override
  String get categorySlot08 => 'Corazón agradecido';

  @override
  String get categorySlot09 => 'Propósito de vida';

  @override
  String get categorySlot10 => 'Vínculos familiares';

  @override
  String get categorySlot11 => 'Paz interior';

  @override
  String get categorySlot12 => 'Sabiduría profética';

  @override
  String get categorySlot13 => 'Buen carácter';

  @override
  String get categorySlot14 => 'Resiste la tentación';

  @override
  String get categorySlot15 => 'Dhikr vespertino';

  @override
  String get categoryCustom => 'Reflexión personal';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria sea a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toda la alabanza es para Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah es el más grande';

  @override
  String get quranVerseHeartAtRest =>
      'Ciertamente, en el recuerdo de Allah encuentran descanso los corazones.';

  @override
  String get promptHint =>
      'Toca una categoría para obtener orientación y reflexión islámica';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get settingsLanguage => 'Configuración de idioma';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get chooseLanguage => 'Elige tu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '$count palabra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opciones';

  @override
  String get newCta => 'Nuevo';

  @override
  String get actionsTitle => '¿Qué te gustaría hacer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartir';

  @override
  String get close => 'Cerrar';

  @override
  String get copiedToast => 'Copiado al portapapeles';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No se pudo generar una nueva respuesta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n¿Deseas intentarlo de nuevo?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Intentar de nuevo';

  @override
  String get authTitle => 'Crear tu cuenta';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get signInEmail => 'Iniciar sesión con correo electrónico';

  @override
  String get upgradeWithApple => 'Continuar con Apple';

  @override
  String get mustAccept =>
      'Debes aceptar los Términos y reconocer la Política de Privacidad.';

  @override
  String get termsLabel => 'Acepto los Términos de Servicio';

  @override
  String get privacyLabel => 'He leído la Política de Privacidad';

  @override
  String get marketingOptIn => 'Acepto recibir noticias y ofertas';

  @override
  String get openTerms => 'Términos de Servicio';

  @override
  String get openPrivacy => 'Política de Privacidad';

  @override
  String get accountSection => 'Cuenta';

  @override
  String get guestMode => 'Modo invitado';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get upgradeHint =>
      'Guarda tus reflexiones en todos los dispositivos creando una cuenta.';

  @override
  String get upgradeWithGoogle => 'Continuar con Google';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get snackUpgraded => 'Cuenta mejorada con Google ✅';

  @override
  String get snackSignedIn => 'Sesión iniciada con Google ✅';

  @override
  String get snackSignedOut => 'Sesión cerrada';

  @override
  String get snackSignedInApple => 'Sesión iniciada con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sesión iniciada con Google ✅';

  @override
  String get snackUpgradedApple => 'Cuenta mejorada con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cuenta mejorada con Google ✅';

  @override
  String get historyTitle => 'Reflexiones anteriores';

  @override
  String get historyOpenCta => 'Reflexiones anteriores';

  @override
  String get historyEmpty => 'Sin reflexiones guardadas aún.';

  @override
  String get historyDeleteTitle => '¿Eliminar reflexión?';

  @override
  String get historyDeleteBody =>
      'Esto eliminará permanentemente el elemento seleccionado.';

  @override
  String get deleteCta => 'Eliminar';

  @override
  String get historyButton => 'Reflexiones anteriores';

  @override
  String get historyEmptyTitle => 'Sin reflexiones aún';

  @override
  String get historyEmptyBody =>
      'Genera algo primero — tus elementos guardados aparecerán aquí.';

  @override
  String get historyDelete => 'Eliminar';

  @override
  String get footerTitle => 'Con Wilaya, Iman y Sabr';

  @override
  String get footerSubtitle => 'Una oración a la vez';

  @override
  String get genericErrorSnack =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get upgradeAccountCta =>
      'Guarda tus reflexiones en todos los dispositivos – crea una cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get exportData => 'Exportar mis datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      '¡Vamos! 🐯\nAyara necesita un momento antes del siguiente…';

  @override
  String get rateDailyLimit =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has usado todas tus reflexiones.\nRecarga o actualiza a Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloquea características premium, categorías futuras y una insignia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tus reflexiones se acabaron ahora. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No se pudo verificar tus reflexiones: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo salió mal al verificar tus reflexiones.';

  @override
  String get aiFallbackGeneric =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get limitSectionTitle => 'Reflexiones';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexiones restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Cargando…';

  @override
  String get limitLoadingLabelDescription =>
      'Se muestra en la tarjeta de reflexiones mientras se obtienen las estadísticas de uso.';

  @override
  String get aiLimitTitle => 'Reflexiones';

  @override
  String get aiLimitSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexiones';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexiones restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Cargando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Se muestra mientras se obtienen las estadísticas de reflexiones.';

  @override
  String get creditsTitle => 'Reflexiones';

  @override
  String get creditsSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get settingsDeleteTitle => 'Eliminar cuenta';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente tu cuenta y todos los datos asociados.';

  @override
  String get settingsDeleteButtonLabel => 'Eliminar mi cuenta';

  @override
  String get settingsDeleteDialogTitle => '¿Eliminar cuenta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta acción es permanente y no se puede deshacer.\n\nTodos tus chats, historial e información de cuenta serán eliminados.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Eliminar';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo ya está vinculado a otra cuenta. Por favor inicia sesión con la cuenta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloquea la experiencia completa de Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Estás en Wilaya. ¿Necesitas más reflexiones?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiones: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Las compras no están disponibles en este momento.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sesión para comprar reflexiones o desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Procesando…';

  @override
  String get premiumRestoreHintTitle =>
      '¿Ya compraste Wilaya o reflexiones en este dispositivo u otro?';

  @override
  String get premiumRestoreHintBody => 'Restaura tus compras si no aparecen.';

  @override
  String get premiumBuyCredits200 => 'Comprar 200 reflexiones';

  @override
  String get premiumBuyCredits400 => 'Comprar 400 reflexiones';

  @override
  String get premiumBecomePremiumOneTime => 'Actualizar al modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puedes recargar con reflexiones adicionales cuando las necesites.';

  @override
  String get premiumUpgradeCta => 'Actualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoría solo está disponible para usuarios de Wilaya. Actualiza en Configuración para desbloquear todo el contenido premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloquea Wilaya para obtener reflexiones adicionales, acceder a categorías premium y continuar cuando necesites orientación.';

  @override
  String get premiumBenefitsPremium =>
      'Estás en modo Wilaya. Si te estás quedando corto, agrega reflexiones adicionales y continúa sin interrupciones.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Agregar 1000 reflexiones';

  @override
  String get premiumBadge => 'Wilaya activo';

  @override
  String get premiumLoadingStore => 'Cargando tienda…';

  @override
  String get premiumProductNotAvailable =>
      'Este producto aún no está disponible en la tienda. Intenta más tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo salió mal con la compra. Por favor intenta de nuevo.';

  @override
  String get premiumBuyCredits100 => 'Agregar 100 reflexiones';

  @override
  String get premiumFeatureLocked =>
      'Desbloquea Wilaya para acceder a esta función.';

  @override
  String get lockedCategoriesHint =>
      'Algunas categorías están reservadas para miembros de Wilaya. Desbloquéalas para explorar cada reflexión en tu viaje.';

  @override
  String get freePlanBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get freePlanBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get graceBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get graceBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sesión para usar Ayara y tus reflexiones.';

  @override
  String get guestNoCreditsTitle => 'Modo invitado';

  @override
  String get guestNoCreditsBody =>
      'Como invitado puedes explorar la aplicación, pero no puedes usar reflexiones. Inicia sesión más tarde en Configuración para usar reflexiones y desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Iniciar sesión en su lugar';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Cuenta eliminada';

  @override
  String get accountDeleteSuccessBody =>
      'Tu cuenta y los datos asociados han sido eliminados exitosamente.';

  @override
  String get accountDeleteSuccessClose => 'Cerrar';

  @override
  String get accountDeleteErrorTitle => 'No se pudo eliminar la cuenta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticación fue cancelada. Por favor inicia sesión de nuevo e intenta la eliminación.';

  @override
  String get accountDeleteReauthRequired =>
      'La eliminación de cuenta requiere un inicio de sesión reciente. Por favor cierra sesión, inicia sesión de nuevo, e intenta de nuevo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta acción es permanente y no se puede deshacer. Todos los datos asociados a tu cuenta serán eliminados.';

  @override
  String get dailyGraceTitle => 'Orientación diaria';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DEL DÍA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓN VESPERTINA';

  @override
  String get dailyGraceCopiedToast => 'Verso copiado al portapapeles';

  @override
  String get locationConsentLabel =>
      'Permitir que Ayara use mi ubicación para la dirección de la Qibla y horarios de oración';

  @override
  String get locationConsentHint =>
      'Se usa solo para estas funciones. Tu ubicación nunca se comparte ni se almacena.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta cualquier cosa sobre fe, oración, vida o práctica islámica y recibe orientación enraizada en el Corán y las enseñanzas de Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Escribe tu pregunta aquí…';

  @override
  String get askPageSubmitCta => 'Preguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor escribe una pregunta primero.';

  @override
  String get askResultYourQuestion => 'Tu pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Enfrentando la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira tu teléfono hasta que la aguja dorada apunte hacia arriba.\nEsa dirección apunta a la Qibla (La Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'La señal GPS es débil. Ve al exterior e intenta de nuevo.';

  @override
  String get qiblaRetry => 'Intentar de nuevo';

  @override
  String get qiblaTitle => 'Dirección de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ubicación requerida';

  @override
  String get qiblaLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular la dirección de la Kaaba en la Meca desde donde estés.';

  @override
  String get qiblaOpenSettings => 'Abrir configuración';

  @override
  String get qiblaCompassLoading => 'Encontrando tu posición…';

  @override
  String get qiblaTowardMecca => 'Hacia la Meca';

  @override
  String get prayerTimesTitle => 'Horarios de oración';

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
  String get prayerTimesLocationNeededTitle => 'Ubicación requerida';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular los horarios de oración precisos para tu ciudad.';

  @override
  String get prayerTimesNextLabel => 'Siguiente';

  @override
  String get prayerTimesDoneLabel => 'Listo';

  @override
  String get monthlyPrayerTimesTitle => 'Horarios de oración mensuales';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver mes completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mes';

  @override
  String get monthlyPrayerTimesDayHeader => 'Día';

  @override
  String get sharePrayerTimes => 'Compartir horarios de oración';

  @override
  String get notificationsSectionTitle => 'Notificaciones';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatorios de oración, eventos del calendario y más';

  @override
  String get dailyReflectionReminderTitle => 'Reflexión diaria';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatorio diario suave para abrir Ayara y conectar con tu fe.';

  @override
  String get dailyReflectionReminderEnable => 'Habilitar recordatorio diario';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatorio';

  @override
  String get prayerNotificationsTitle => 'Recordatorios de oración';

  @override
  String get prayerNotificationsDescription =>
      'Recibe un recordatorio suave antes de cada hora de oración para mantenerte conectado durante el día.';

  @override
  String get prayerNotificationsEnable => 'Habilitar recordatorios de oración';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configuración de notificaciones';

  @override
  String get prayerNotificationsDenied =>
      'Las notificaciones están deshabilitadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ve a Configuración y permite notificaciones para Ayara para recibir recordatorios de horarios de oración.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificaciones para horarios de oración';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oración del alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr es la oración de las mañanas de Ahlul Bayt. El Imam Ali (AS) dijo: Protege la oración del alba como proteges tu bien más preciado. Levántate, purifícate, y ponte ante Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oración del mediodía';

  @override
  String get prayerNotifBodyDhuhr =>
      'Los Imames de Ahlul Bayt apreciaban cada momento de recordatorio. Pausa tu día, combina Dhuhr con Asr si es necesario, y devuelve tu corazón a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oración de la tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Protege la oración, es el pacto entre tú y Allah. Ha llegado la hora de Asr — no dejes que pase sin recordatorio.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oración del atardecer';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol se ha puesto — un momento que Ahlul Bayt consideraba sagrado para la súplica. Ofrece Maghrib y abre tus manos a Allah en dua antes de que comience la noche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oración de la noche';

  @override
  String get prayerNotifBodyIsha =>
      'Termina tu día en compañía de Allah. Los Imames alentaban Salat al-Layl después de Isha — pero primero, completa tu Isha y cierra el día con Su recordatorio.';

  @override
  String get outOfReflectionsBannerText => 'Has usado todas tus reflexiones';

  @override
  String get outOfReflectionsBannerCta => 'Obtener más';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completado 100 recordatorios de Allah. Que sean una luz para tu corazón.';

  @override
  String get disclaimerTitle => 'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerBody =>
      'Ayara proporciona reflexiones islámicas, recordatorios y contenido espiritual para apoyar tu viaje personal de fe, enraizado en el Corán y las enseñanzas de Ahlul Bayt. Este contenido se ofrece únicamente con propósitos informativos e inspiradores.\n\nAyara no reemplaza la erudición calificada.\nLa orientación en esta aplicación no es un sustituto de un erudito islámico competente, marja\', o maestro teológicamente capacitado. En el Islam Shia, la orientación religiosa está enraizada en la escuela Ja\'fari de jurisprudencia (fiqh) y la tradición de seguir a un Marja\' viviente (fuente de emulación) — un jurista calificado cuyas decisiones guían a los creyentes en la práctica religiosa. Si tienes preguntas sobre decisiones religiosas, asuntos halal e haram, u obligaciones religiosas personales, por favor busca consejo de un Marja\' calificado o un erudito en tu comunidad.\n\nEsta aplicación no emite decisiones religiosas.\nAyara no hace determinaciones autorizadas sobre asuntos de fiqh u obligaciones religiosas personales. Nada aquí debe ser tratado como una fatwa o instrucción religiosa vinculante.\n\nLa centralidad de Ahlul Bayt.\nEn el Islam Shia, el Profeta Muhammad ﷺ y su Familia Purificada — Ahlul Bayt — son los guías autorizados de la comunidad islámica después del Corán. Los doce Imames de Ahlul Bayt son los intérpretes divinamente designados de la enseñanza islámica. El contenido en esta aplicación refleja esta tradición y busca honrarla fielmente.\n\nAsuntos de la comunidad.\nEsta aplicación busca alentar tu compromiso con la fe mientras respeta profundamente el papel vital de tu mezquita local, centro islámico y comunidad religiosa. Te alentamos a mantenerte conectado y aprender de maestros calificados cerca de ti.';

  @override
  String get disclaimerClose => 'Entiendo';

  @override
  String get disclaimerInfoTooltip =>
      'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo para propósitos informativos. Toca para leer el descargo completo.';

  @override
  String get disclaimerSectionHeader =>
      'Descargo de responsabilidad sobre orientación';

  @override
  String get navHome => 'Inicio';

  @override
  String get navReflect => 'Reflexionar';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'HOY';

  @override
  String get dashboardComingUp => 'Próximamente';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acceso rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientación';

  @override
  String get quickActionPrayerTimes => 'Horarios de oración';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Haz cualquier pregunta islámica y recibe una respuesta reflexiva y guiada.';

  @override
  String get askAyaraHint => 'p.ej. ¿Cuál es el significado del Ramadán?';

  @override
  String get askAyaraSubmit => 'Preguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabiduría del día';

  @override
  String get calendarScreenTitle => 'Calendario islámico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiones próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatorios de ocasiones';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado la noche anterior a cada ocasión';

  @override
  String get calendarNotifPermissionDenied =>
      'Permiso de notificación denegado. Habilítalo en la configuración de tu dispositivo.';

  @override
  String get calendarNoEvents => 'No se encontraron eventos próximos.';

  @override
  String get calendarAddToPhone => 'Agregar al Calendario del Teléfono';

  @override
  String get calendarAddedToPhone => 'Agregado al Calendario';

  @override
  String get calendarCountdownToday => 'HOY';

  @override
  String get calendarCountdownTomorrow => 'MAÑANA';

  @override
  String calendarCountdownDays(int days) {
    return 'en $days días';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Días de Muharram — recuerda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — días de luto y reflexión';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — cuarenta días de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camino a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — el amanecer de la revelación';

  @override
  String get calendarSeasonMidShaban =>
      'Mitad de Sha\'ban — cumpleaños del Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadán Mubarak — el mes del Corán';

  @override
  String get calendarSeasonGhadir => '¡Eid al-Ghadir Mubarak!';

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
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas y Ziyarat';

  @override
  String get duasSearchHint => 'Buscar duas, ziyarat…';

  @override
  String get duasFilterAll => 'Todo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas y ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No se encontraron duas.';

  @override
  String get duaCategoryDaily => 'Diaria';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiones';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nacimiento';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ocasión';

  @override
  String get duaCopyTooltip => 'Copiar traducción';

  @override
  String get duaToggleTransliteration => 'Transliteración';

  @override
  String get duaToggleTranslation => 'Traducción';

  @override
  String get duaAskAiLabel => 'Pide a Ayara que explique esta dua';

  @override
  String get duaAskAiLockedLabel => 'Pide a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Las explicaciones de Ayara están disponibles para miembros de Wilaya. Actualiza en Configuración.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pide a Ayara que explique \"$name\" — ¡próximamente!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada al portapapeles.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah es el más grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toda la alabanza pertenece a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria sea a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah acepte tu dhikr.';

  @override
  String get tasbihTapHint => 'Toca en cualquier lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guía de oración';

  @override
  String get tasbihatScreenSubtitle => 'LAS GLORIFICACIONES DE LA ORACIÓN';

  @override
  String get tasbihatScreenDescription =>
      'Una guía completa de las glorificaciones recitadas durante y después de las oraciones diarias — siguiendo la tradición de Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante el 3º y 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudencia Shia, el Tasbiḥāt al-Arbaʿa reemplaza la Surah al-Fatiha en el 3º y 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. Es obligatorio (wājib) recitarlo una vez, y recomendado (mustaḥabb) recitarlo tres veces.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria sea a Allah · Toda la alabanza es para Allah\nNo hay dios sino Allah · Allah es el más grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitación completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que tu oración sea aceptada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toca después de cada recitación';

  @override
  String get tasbihatZahraSubtitle => 'Después de cada oración · 100 cuentas';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La Señora Fátima al-Zahra (sa) pidió al Profeta ﷺ un sirviente. Él dijo: \"¿No te guío a algo mejor? Recita Subḥānallāh 33 veces, Alḥamdulillāh 33 veces, y Allāhu Akbar 34 veces después de cada oración. Eso es mejor para ti que un sirviente.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Después de completar tu oración';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Después de cada oración obligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quien recita Āyat al-Kursī después de cada oración obligatoria, nada se interpone entre él y el paraíso excepto la muerte. El Imam al-Bāqir (a) dijo que es uno de los versículos más grandes del Corán.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Después de cada oración · sella todas las súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saludos al Profeta ﷺ y su familia purificada (Āl Muḥammad) se recomienda para sellar cada dua. El Imam al-Ṣādiq (a) dijo: \"Cualquier dua se suspende hasta que envíes ṣalawāt sobre Muḥammad y su familia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Después de cada oración · por el Imam de nuestro tiempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseñado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua por la reaparición del Imam al-Mahdī (af), el duodécimo Imam, enseñada por su padre. A menudo es recitada por muchos musulmanes chiítas después de la oración como un acto de devoción al Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la Señora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Después de Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'El Imam al-Bāqir (a) dijo que recitar Tasbīḥ al-Zahrā después de Isha antes de dormir es mejor que 1000 rakʿahs de oración opcional. Su luz asciende a los cielos.';

  @override
  String get tasbihFatimaGiftPre => 'Un regalo del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado después de cada oración';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORACIONES';

  @override
  String get prayerTrackerPrayed => 'Orado';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas las oraciones completadas hoy. Que Allah acepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completado hoy';

  @override
  String get dhikrTrackerNotDoneToday => 'No hecho hoy';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get dhikrReminderTitle => 'Recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatorio diario suave para recitar tu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Habilitar recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatorio';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith diario';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartir este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVía Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Siguiente';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Los Catorce Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Señora Fátima y los Doce Imames — los guías purificados e infalibles en el Islam chiíta duodecimano';

  @override
  String get imamLabelBorn => 'Nacido';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Estado';

  @override
  String get imamSectionBiography => 'BIOGRAFÍA';

  @override
  String get imamSectionFamousSaying => 'DICHO FAMOSO';

  @override
  String get imamRoleProphet => 'El Profeta Final';

  @override
  String get imamRoleInfallible => 'El Infalible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3er Imam';

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
  String get duaAudioScreenTitle => 'Escuchar Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una dua para escuchar. Toca el mosaico para reproducir o pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'El audio para esta dua estará disponible en una próxima actualización.';

  @override
  String get duaAudioClose => 'Cerrar';

  @override
  String get duaAudioError =>
      'No se pudo cargar el audio. Por favor verifica tu conexión.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasión';

  @override
  String get duaAudioMetaDuration => 'Duración';

  @override
  String get quickActionDailyHadith => 'Hadith diario';

  @override
  String get quickAction14Masumeen => 'Catorce Infallibles';

  @override
  String get quickActionListenDuas => 'Escuchar';

  @override
  String get quickActionTasbihat => 'Guía de oración';

  @override
  String get pilgrimageSectionTitle => 'El viaje sagrado';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guías completas para el Hajj y la Umrah — la peregrinación a la Casa Sagrada de Allah en La Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El quinto pilar del Islam';

  @override
  String get hajjCardDescription =>
      'La gran peregrinación anual — obligatoria una vez en la vida para cada musulmán capaz';

  @override
  String get hajjScreenTitle => 'Guía de Hajj';

  @override
  String get hajjScreenSubtitle => 'Guía paso a paso de la gran peregrinación';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'La peregrinación menor';

  @override
  String get umrahCardDescription =>
      'Un viaje espiritual profundamente gratificante que se puede realizar en cualquier época del año';

  @override
  String get umrahScreenTitle => 'Guía de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guía paso a paso de la peregrinación menor';

  @override
  String get pilgrimageStepsTitle => 'Rituales y pasos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para este paso';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total pasos';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Muchos peregrinos chiítas también viajan a Medina para la ziyarat del Profeta Muhammad (SAW) en la Masjid al-Nabawi y las tumbas en Jannat al-Baqi. Estas visitas tienen un profundo significado espiritual, aunque no son en sí mismas ritos de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj es el quinto pilar del Islam, obligatorio una vez en la vida para todo musulmán que sea física y financieramente capaz. Para la mayoría de los peregrinos chiítas duodecimanos hoy en día, esto significa Hajj al-Tamattu\', realizado en el mes de Dhul Hijjah siguiendo los pasos del Profeta Ibrahim (AS), su hijo Ismail (AS) y la Señora Hajar. Esta guía sigue el esquema jafari de los ritos, mientras que la ziyarat en Medina sigue siendo un viaje profundamente apreciado antes o después del Hajj.';

  @override
  String get umrahIntro =>
      'La Umrah es la peregrinación menor a La Meca y, a diferencia del Hajj, se puede realizar en cualquier época del año. Aunque no es obligatoria, tiene una recompensa espiritual inmensa y se considera un acto de adoración altamente recomendado. Comparte varios rituales con el Hajj pero es más corta, consistiendo en cuatro ritos principales.';

  @override
  String get voiceInputTitle => 'Entrada de voz';

  @override
  String get voiceInputMicTitle => 'Micrófono';

  @override
  String get voiceInputMicSubtitle =>
      'Habla tu entrada para Ask Ayara en lugar de escribir.';

  @override
  String get voiceInputMicDenied => 'Se denegó el acceso al micrófono.';

  @override
  String get voiceInputSpeak => 'Hablar en su lugar';

  @override
  String get voiceInputListening => 'Escuchando…';

  @override
  String get voiceInputPermissionDenied =>
      'Se requiere acceso al micrófono para la entrada de voz.';
}

/// The translations for Spanish Castilian, as used in Latin America and the Caribbean (`es_419`).
class AppLocalizationsEs419 extends AppLocalizationsEs {
  AppLocalizationsEs419() : super('es_419');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Elige tu idioma';

  @override
  String get languageSelectSub =>
      'Puedes cambiar esto más tarde en Configuración';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos los idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Buscar…';

  @override
  String get planBasic => 'Estándar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientación diaria';

  @override
  String get categorySlot02 => 'Fe y confianza';

  @override
  String get categorySlot03 => 'Reflexión sobre la oración';

  @override
  String get categorySlot04 => 'Paciencia y esperanza';

  @override
  String get categorySlot05 => 'Busca el perdón';

  @override
  String get categorySlot06 => 'Misericordia y compasión';

  @override
  String get categorySlot07 => 'Fe y fortaleza';

  @override
  String get categorySlot08 => 'Corazón agradecido';

  @override
  String get categorySlot09 => 'Propósito de vida';

  @override
  String get categorySlot10 => 'Vínculos familiares';

  @override
  String get categorySlot11 => 'Paz interior';

  @override
  String get categorySlot12 => 'Sabiduría profética';

  @override
  String get categorySlot13 => 'Buen carácter';

  @override
  String get categorySlot14 => 'Resiste la tentación';

  @override
  String get categorySlot15 => 'Dhikr vespertino';

  @override
  String get categoryCustom => 'Reflexión personal';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria sea a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toda la alabanza es para Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah es el más grande';

  @override
  String get quranVerseHeartAtRest =>
      'Ciertamente, en el recuerdo de Allah encuentran descanso los corazones.';

  @override
  String get promptHint =>
      'Toca una categoría para obtener orientación y reflexión islámica';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get settingsLanguage => 'Configuración de idioma';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get chooseLanguage => 'Elige tu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '$count palabra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opciones';

  @override
  String get newCta => 'Nuevo';

  @override
  String get actionsTitle => '¿Qué te gustaría hacer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartir';

  @override
  String get close => 'Cerrar';

  @override
  String get copiedToast => 'Copiado al portapapeles';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No se pudo generar una nueva respuesta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n¿Deseas intentarlo de nuevo?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Intentar de nuevo';

  @override
  String get authTitle => 'Crear tu cuenta';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get signInEmail => 'Iniciar sesión con correo electrónico';

  @override
  String get upgradeWithApple => 'Continuar con Apple';

  @override
  String get mustAccept =>
      'Debes aceptar los Términos y reconocer la Política de Privacidad.';

  @override
  String get termsLabel => 'Acepto los Términos de Servicio';

  @override
  String get privacyLabel => 'He leído la Política de Privacidad';

  @override
  String get marketingOptIn => 'Acepto recibir noticias y ofertas';

  @override
  String get openTerms => 'Términos de Servicio';

  @override
  String get openPrivacy => 'Política de Privacidad';

  @override
  String get accountSection => 'Cuenta';

  @override
  String get guestMode => 'Modo invitado';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get upgradeHint =>
      'Guarda tus reflexiones en todos los dispositivos creando una cuenta.';

  @override
  String get upgradeWithGoogle => 'Continuar con Google';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get snackUpgraded => 'Cuenta mejorada con Google ✅';

  @override
  String get snackSignedIn => 'Sesión iniciada con Google ✅';

  @override
  String get snackSignedOut => 'Sesión cerrada';

  @override
  String get snackSignedInApple => 'Sesión iniciada con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sesión iniciada con Google ✅';

  @override
  String get snackUpgradedApple => 'Cuenta mejorada con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cuenta mejorada con Google ✅';

  @override
  String get historyTitle => 'Reflexiones anteriores';

  @override
  String get historyOpenCta => 'Reflexiones anteriores';

  @override
  String get historyEmpty => 'Sin reflexiones guardadas aún.';

  @override
  String get historyDeleteTitle => '¿Eliminar reflexión?';

  @override
  String get historyDeleteBody =>
      'Esto eliminará permanentemente el elemento seleccionado.';

  @override
  String get deleteCta => 'Eliminar';

  @override
  String get historyButton => 'Reflexiones anteriores';

  @override
  String get historyEmptyTitle => 'Sin reflexiones aún';

  @override
  String get historyEmptyBody =>
      'Genera algo primero — tus elementos guardados aparecerán aquí.';

  @override
  String get historyDelete => 'Eliminar';

  @override
  String get footerTitle => 'Con Wilaya, Iman y Sabr';

  @override
  String get footerSubtitle => 'Una oración a la vez';

  @override
  String get genericErrorSnack =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get upgradeAccountCta =>
      'Guarda tus reflexiones en todos los dispositivos – crea una cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get exportData => 'Exportar mis datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      '¡Vamos! 🐯\nAyara necesita un momento antes del siguiente…';

  @override
  String get rateDailyLimit =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has usado todas tus reflexiones.\nRecarga o actualiza a Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloquea características premium, categorías futuras y una insignia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tus reflexiones se acabaron ahora. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No se pudo verificar tus reflexiones: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo salió mal al verificar tus reflexiones.';

  @override
  String get aiFallbackGeneric =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get limitSectionTitle => 'Reflexiones';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexiones restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Cargando…';

  @override
  String get limitLoadingLabelDescription =>
      'Se muestra en la tarjeta de reflexiones mientras se obtienen las estadísticas de uso.';

  @override
  String get aiLimitTitle => 'Reflexiones';

  @override
  String get aiLimitSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexiones';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexiones restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Cargando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Se muestra mientras se obtienen las estadísticas de reflexiones.';

  @override
  String get creditsTitle => 'Reflexiones';

  @override
  String get creditsSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get settingsDeleteTitle => 'Eliminar cuenta';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente tu cuenta y todos los datos asociados.';

  @override
  String get settingsDeleteButtonLabel => 'Eliminar mi cuenta';

  @override
  String get settingsDeleteDialogTitle => '¿Eliminar cuenta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta acción es permanente y no se puede deshacer.\n\nTodos tus chats, historial e información de cuenta serán eliminados.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Eliminar';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo ya está vinculado a otra cuenta. Por favor inicia sesión con la cuenta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloquea la experiencia completa de Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Estás en Wilaya. ¿Necesitas más reflexiones?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiones: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Las compras no están disponibles en este momento.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sesión para comprar reflexiones o desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Procesando…';

  @override
  String get premiumRestoreHintTitle =>
      '¿Ya compraste Wilaya o reflexiones en este dispositivo u otro?';

  @override
  String get premiumRestoreHintBody => 'Restaura tus compras si no aparecen.';

  @override
  String get premiumBuyCredits200 => 'Comprar 200 reflexiones';

  @override
  String get premiumBuyCredits400 => 'Comprar 400 reflexiones';

  @override
  String get premiumBecomePremiumOneTime => 'Actualizar al modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puedes recargar con reflexiones adicionales cuando las necesites.';

  @override
  String get premiumUpgradeCta => 'Actualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoría solo está disponible para usuarios de Wilaya. Actualiza en Configuración para desbloquear todo el contenido premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloquea Wilaya para obtener reflexiones adicionales, acceder a categorías premium y continuar cuando necesites orientación.';

  @override
  String get premiumBenefitsPremium =>
      'Estás en modo Wilaya. Si te estás quedando corto, agrega reflexiones adicionales y continúa sin interrupciones.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Agregar 1000 reflexiones';

  @override
  String get premiumBadge => 'Wilaya activo';

  @override
  String get premiumLoadingStore => 'Cargando tienda…';

  @override
  String get premiumProductNotAvailable =>
      'Este producto aún no está disponible en la tienda. Intenta más tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo salió mal con la compra. Por favor intenta de nuevo.';

  @override
  String get premiumBuyCredits100 => 'Agregar 100 reflexiones';

  @override
  String get premiumFeatureLocked =>
      'Desbloquea Wilaya para acceder a esta función.';

  @override
  String get lockedCategoriesHint =>
      'Algunas categorías están reservadas para miembros de Wilaya. Desbloquéalas para explorar cada reflexión en tu viaje.';

  @override
  String get freePlanBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get freePlanBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get graceBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get graceBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sesión para usar Ayara y tus reflexiones.';

  @override
  String get guestNoCreditsTitle => 'Modo invitado';

  @override
  String get guestNoCreditsBody =>
      'Como invitado puedes explorar la aplicación, pero no puedes usar reflexiones. Inicia sesión más tarde en Configuración para usar reflexiones y desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Iniciar sesión en su lugar';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Cuenta eliminada';

  @override
  String get accountDeleteSuccessBody =>
      'Tu cuenta y los datos asociados han sido eliminados exitosamente.';

  @override
  String get accountDeleteSuccessClose => 'Cerrar';

  @override
  String get accountDeleteErrorTitle => 'No se pudo eliminar la cuenta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticación fue cancelada. Por favor inicia sesión de nuevo e intenta la eliminación.';

  @override
  String get accountDeleteReauthRequired =>
      'La eliminación de cuenta requiere un inicio de sesión reciente. Por favor cierra sesión, inicia sesión de nuevo, e intenta de nuevo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta acción es permanente y no se puede deshacer. Todos los datos asociados a tu cuenta serán eliminados.';

  @override
  String get dailyGraceTitle => 'Orientación diaria';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DEL DÍA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓN VESPERTINA';

  @override
  String get dailyGraceCopiedToast => 'Verso copiado al portapapeles';

  @override
  String get locationConsentLabel =>
      'Permitir que Ayara use mi ubicación para la dirección de la Qibla y horarios de oración';

  @override
  String get locationConsentHint =>
      'Se usa solo para estas funciones. Tu ubicación nunca se comparte ni se almacena.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta cualquier cosa sobre fe, oración, vida o práctica islámica y recibe orientación enraizada en el Corán y las enseñanzas de Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Escribe tu pregunta aquí…';

  @override
  String get askPageSubmitCta => 'Preguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor escribe una pregunta primero.';

  @override
  String get askResultYourQuestion => 'Tu pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Enfrentando la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira tu teléfono hasta que la aguja dorada apunte hacia arriba.\nEsa dirección apunta a la Qibla (La Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'La señal GPS es débil. Ve al exterior e intenta de nuevo.';

  @override
  String get qiblaRetry => 'Intentar de nuevo';

  @override
  String get qiblaTitle => 'Dirección de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ubicación requerida';

  @override
  String get qiblaLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular la dirección de la Kaaba en la Meca desde donde estés.';

  @override
  String get qiblaOpenSettings => 'Abrir configuración';

  @override
  String get qiblaCompassLoading => 'Encontrando tu posición…';

  @override
  String get qiblaTowardMecca => 'Hacia la Meca';

  @override
  String get prayerTimesTitle => 'Horarios de oración';

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
  String get prayerTimesLocationNeededTitle => 'Ubicación requerida';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular los horarios de oración precisos para tu ciudad.';

  @override
  String get prayerTimesNextLabel => 'Siguiente';

  @override
  String get prayerTimesDoneLabel => 'Listo';

  @override
  String get monthlyPrayerTimesTitle => 'Horarios de oración mensuales';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver mes completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mes';

  @override
  String get monthlyPrayerTimesDayHeader => 'Día';

  @override
  String get sharePrayerTimes => 'Compartir horarios de oración';

  @override
  String get notificationsSectionTitle => 'Notificaciones';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatorios de oración, eventos del calendario y más';

  @override
  String get dailyReflectionReminderTitle => 'Reflexión diaria';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatorio diario suave para abrir Ayara y conectar con tu fe.';

  @override
  String get dailyReflectionReminderEnable => 'Habilitar recordatorio diario';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatorio';

  @override
  String get prayerNotificationsTitle => 'Recordatorios de oración';

  @override
  String get prayerNotificationsDescription =>
      'Recibe un recordatorio suave antes de cada hora de oración para mantenerte conectado durante el día.';

  @override
  String get prayerNotificationsEnable => 'Habilitar recordatorios de oración';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configuración de notificaciones';

  @override
  String get prayerNotificationsDenied =>
      'Las notificaciones están deshabilitadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ve a Configuración y permite notificaciones para Ayara para recibir recordatorios de horarios de oración.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificaciones para horarios de oración';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oración del alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr es la oración de las mañanas de Ahlul Bayt. El Imam Ali (AS) dijo: Protege la oración del alba como proteges tu bien más preciado. Levántate, purifícate, y ponte ante Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oración del mediodía';

  @override
  String get prayerNotifBodyDhuhr =>
      'Los Imames de Ahlul Bayt apreciaban cada momento de recordatorio. Pausa tu día, combina Dhuhr con Asr si es necesario, y devuelve tu corazón a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oración de la tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Protege la oración, es el pacto entre tú y Allah. Ha llegado la hora de Asr — no dejes que pase sin recordatorio.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oración del atardecer';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol se ha puesto — un momento que Ahlul Bayt consideraba sagrado para la súplica. Ofrece Maghrib y abre tus manos a Allah en dua antes de que comience la noche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oración de la noche';

  @override
  String get prayerNotifBodyIsha =>
      'Termina tu día en compañía de Allah. Los Imames alentaban Salat al-Layl después de Isha — pero primero, completa tu Isha y cierra el día con Su recordatorio.';

  @override
  String get outOfReflectionsBannerText => 'Has usado todas tus reflexiones';

  @override
  String get outOfReflectionsBannerCta => 'Obtener más';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completado 100 recordatorios de Allah. Que sean una luz para tu corazón.';

  @override
  String get disclaimerTitle => 'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerBody =>
      'Ayara proporciona reflexiones islámicas, recordatorios y contenido espiritual para apoyar tu viaje personal de fe, enraizado en el Corán y las enseñanzas de Ahlul Bayt. Este contenido se ofrece únicamente con propósitos informativos e inspiradores.\n\nAyara no reemplaza la erudición calificada.\nLa orientación en esta aplicación no es un sustituto de un erudito islámico competente, marja\', o maestro teológicamente capacitado. En el Islam Shia, la orientación religiosa está enraizada en la escuela Ja\'fari de jurisprudencia (fiqh) y la tradición de seguir a un Marja\' viviente (fuente de emulación) — un jurista calificado cuyas decisiones guían a los creyentes en la práctica religiosa. Si tienes preguntas sobre decisiones religiosas, asuntos halal e haram, u obligaciones religiosas personales, por favor busca consejo de un Marja\' calificado o un erudito en tu comunidad.\n\nEsta aplicación no emite decisiones religiosas.\nAyara no hace determinaciones autorizadas sobre asuntos de fiqh u obligaciones religiosas personales. Nada aquí debe ser tratado como una fatwa o instrucción religiosa vinculante.\n\nLa centralidad de Ahlul Bayt.\nEn el Islam Shia, el Profeta Muhammad ﷺ y su Familia Purificada — Ahlul Bayt — son los guías autorizados de la comunidad islámica después del Corán. Los doce Imames de Ahlul Bayt son los intérpretes divinamente designados de la enseñanza islámica. El contenido en esta aplicación refleja esta tradición y busca honrarla fielmente.\n\nAsuntos de la comunidad.\nEsta aplicación busca alentar tu compromiso con la fe mientras respeta profundamente el papel vital de tu mezquita local, centro islámico y comunidad religiosa. Te alentamos a mantenerte conectado y aprender de maestros calificados cerca de ti.';

  @override
  String get disclaimerClose => 'Entiendo';

  @override
  String get disclaimerInfoTooltip =>
      'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo para propósitos informativos. Toca para leer el descargo completo.';

  @override
  String get disclaimerSectionHeader =>
      'Descargo de responsabilidad sobre orientación';

  @override
  String get navHome => 'Inicio';

  @override
  String get navReflect => 'Reflexionar';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'HOY';

  @override
  String get dashboardComingUp => 'Próximamente';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acceso rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientación';

  @override
  String get quickActionPrayerTimes => 'Horarios de oración';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Haz cualquier pregunta islámica y recibe una respuesta reflexiva y guiada.';

  @override
  String get askAyaraHint => 'p.ej. ¿Cuál es el significado del Ramadán?';

  @override
  String get askAyaraSubmit => 'Preguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabiduría del día';

  @override
  String get calendarScreenTitle => 'Calendario islámico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiones próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatorios de ocasiones';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado la noche anterior a cada ocasión';

  @override
  String get calendarNotifPermissionDenied =>
      'Permiso de notificación denegado. Habilítalo en la configuración de tu dispositivo.';

  @override
  String get calendarNoEvents => 'No se encontraron eventos próximos.';

  @override
  String get calendarAddToPhone => 'Agregar al Calendario del Teléfono';

  @override
  String get calendarAddedToPhone => 'Agregado al Calendario';

  @override
  String get calendarCountdownToday => 'HOY';

  @override
  String get calendarCountdownTomorrow => 'MAÑANA';

  @override
  String calendarCountdownDays(int days) {
    return 'en $days días';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Días de Muharram — recuerda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — días de luto y reflexión';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — cuarenta días de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camino a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — el amanecer de la revelación';

  @override
  String get calendarSeasonMidShaban =>
      'Mitad de Sha\'ban — cumpleaños del Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadán Mubarak — el mes del Corán';

  @override
  String get calendarSeasonGhadir => '¡Eid al-Ghadir Mubarak!';

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
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas y Ziyarat';

  @override
  String get duasSearchHint => 'Buscar duas, ziyarat…';

  @override
  String get duasFilterAll => 'Todo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas y ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No se encontraron duas.';

  @override
  String get duaCategoryDaily => 'Diaria';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiones';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nacimiento';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ocasión';

  @override
  String get duaCopyTooltip => 'Copiar traducción';

  @override
  String get duaToggleTransliteration => 'Transliteración';

  @override
  String get duaToggleTranslation => 'Traducción';

  @override
  String get duaAskAiLabel => 'Pide a Ayara que explique esta dua';

  @override
  String get duaAskAiLockedLabel => 'Pide a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Las explicaciones de Ayara están disponibles para miembros de Wilaya. Actualiza en Configuración.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pide a Ayara que explique \"$name\" — ¡próximamente!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada al portapapeles.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah es el más grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toda la alabanza pertenece a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria sea a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah acepte tu dhikr.';

  @override
  String get tasbihTapHint => 'Toca en cualquier lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guía de oración';

  @override
  String get tasbihatScreenSubtitle => 'LAS GLORIFICACIONES DE LA ORACIÓN';

  @override
  String get tasbihatScreenDescription =>
      'Una guía completa de las glorificaciones recitadas durante y después de las oraciones diarias — siguiendo la tradición de Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante el 3º y 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudencia Shia, el Tasbiḥāt al-Arbaʿa reemplaza la Surah al-Fatiha en el 3º y 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. Es obligatorio (wājib) recitarlo una vez, y recomendado (mustaḥabb) recitarlo tres veces.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria sea a Allah · Toda la alabanza es para Allah\nNo hay dios sino Allah · Allah es el más grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitación completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que tu oración sea aceptada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toca después de cada recitación';

  @override
  String get tasbihatZahraSubtitle => 'Después de cada oración · 100 cuentas';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La Señora Fátima al-Zahra (sa) pidió al Profeta ﷺ un sirviente. Él dijo: \"¿No te guío a algo mejor? Recita Subḥānallāh 33 veces, Alḥamdulillāh 33 veces, y Allāhu Akbar 34 veces después de cada oración. Eso es mejor para ti que un sirviente.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Después de completar tu oración';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Después de cada oración obligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quien recita Āyat al-Kursī después de cada oración obligatoria, nada se interpone entre él y el paraíso excepto la muerte. El Imam al-Bāqir (a) dijo que es uno de los versículos más grandes del Corán.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Después de cada oración · sella todas las súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saludos al Profeta ﷺ y su familia purificada (Āl Muḥammad) se recomienda para sellar cada dua. El Imam al-Ṣādiq (a) dijo: \"Cualquier dua se suspende hasta que envíes ṣalawāt sobre Muḥammad y su familia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Después de cada oración · por el Imam de nuestro tiempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseñado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua por la reaparición del Imam al-Mahdī (af), el duodécimo Imam, enseñada por su padre. A menudo es recitada por muchos musulmanes chiitas después de la oración como un acto de devoción al Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la Señora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Después de Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'El Imam al-Bāqir (a) dijo que recitar Tasbīḥ al-Zahrā después de Isha antes de dormir es mejor que 1000 rakʿahs de oración opcional. Su luz asciende a los cielos.';

  @override
  String get tasbihFatimaGiftPre => 'Un regalo del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado después de cada oración';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORACIONES';

  @override
  String get prayerTrackerPrayed => 'Orado';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas las oraciones completadas hoy. Que Allah acepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completado hoy';

  @override
  String get dhikrTrackerNotDoneToday => 'No hecho hoy';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get dhikrReminderTitle => 'Recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatorio diario suave para recitar tu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Habilitar recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatorio';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith diario';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartir este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVía Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Siguiente';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Los Catorce Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Señora Fátima y los Doce Imames — los guías purificados e infalibles en el Islam chiita duodecimano';

  @override
  String get imamLabelBorn => 'Nacido';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Estado';

  @override
  String get imamSectionBiography => 'BIOGRAFÍA';

  @override
  String get imamSectionFamousSaying => 'DICHO FAMOSO';

  @override
  String get imamRoleProphet => 'El Profeta Final';

  @override
  String get imamRoleInfallible => 'El Infalible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3er Imam';

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
  String get duaAudioScreenTitle => 'Escuchar Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una dua para escuchar. Toca el mosaico para reproducir o pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'El audio para esta dua estará disponible en una próxima actualización.';

  @override
  String get duaAudioClose => 'Cerrar';

  @override
  String get duaAudioError =>
      'No se pudo cargar el audio. Por favor verifica tu conexión.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasión';

  @override
  String get duaAudioMetaDuration => 'Duración';

  @override
  String get quickActionDailyHadith => 'Hadith diario';

  @override
  String get quickAction14Masumeen => 'Catorce Infallibles';

  @override
  String get quickActionListenDuas => 'Escuchar';

  @override
  String get quickActionTasbihat => 'Guía de oración';

  @override
  String get pilgrimageSectionTitle => 'El viaje sagrado';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guías completas para el Hajj y la Umrah — la peregrinación a la Casa Sagrada de Allah en La Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El quinto pilar del Islam';

  @override
  String get hajjCardDescription =>
      'La gran peregrinación anual — obligatoria una vez en la vida para cada musulmán capaz';

  @override
  String get hajjScreenTitle => 'Guía de Hajj';

  @override
  String get hajjScreenSubtitle => 'Guía paso a paso de la gran peregrinación';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'La peregrinación menor';

  @override
  String get umrahCardDescription =>
      'Un viaje espiritual profundamente gratificante que se puede realizar en cualquier época del año';

  @override
  String get umrahScreenTitle => 'Guía de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guía paso a paso de la peregrinación menor';

  @override
  String get pilgrimageStepsTitle => 'Rituales y pasos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para este paso';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total pasos';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Muchos peregrinos chiitas también viajan a Medina para la ziyarat del Profeta Muhammad (SAW) en la Masjid al-Nabawi y las tumbas en Jannat al-Baqi. Estas visitas tienen un profundo significado espiritual, aunque no son en sí mismas ritos de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj es el quinto pilar del Islam, obligatorio una vez en la vida para todo musulmán que sea física y financieramente capaz. Para la mayoría de los peregrinos chiitas duodecimanos hoy en día, esto significa Hajj al-Tamattu\', realizado en el mes de Dhul Hijjah siguiendo los pasos del Profeta Ibrahim (AS), su hijo Ismail (AS) y la Señora Hajar. Esta guía sigue el esquema jafari de los ritos, mientras que la ziyarat en Medina sigue siendo un viaje profundamente apreciado antes o después del Hajj.';

  @override
  String get umrahIntro =>
      'La Umrah es la peregrinación menor a La Meca y, a diferencia del Hajj, se puede realizar en cualquier época del año. Aunque no es obligatoria, tiene una recompensa espiritual inmensa y se considera un acto de adoración altamente recomendado. Comparte varios rituales con el Hajj pero es más corta, consistiendo en cuatro ritos principales.';

  @override
  String get voiceInputTitle => 'Entrada de voz';

  @override
  String get voiceInputMicTitle => 'Micrófono';

  @override
  String get voiceInputMicSubtitle =>
      'Habla tu entrada a Ask Ayara en lugar de escribir.';

  @override
  String get voiceInputMicDenied => 'Se denegó el acceso al micrófono.';

  @override
  String get voiceInputSpeak => 'Hablar en su lugar';

  @override
  String get voiceInputListening => 'Escuchando…';

  @override
  String get voiceInputPermissionDenied =>
      'Se requiere acceso al micrófono para la entrada de voz.';
}

/// The translations for Spanish Castilian, as used in Argentina (`es_AR`).
class AppLocalizationsEsAr extends AppLocalizationsEs {
  AppLocalizationsEsAr() : super('es_AR');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Elige tu idioma';

  @override
  String get languageSelectSub =>
      'Puedes cambiar esto más tarde en Configuración';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos los idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Buscar…';

  @override
  String get planBasic => 'Estándar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientación diaria';

  @override
  String get categorySlot02 => 'Fe y confianza';

  @override
  String get categorySlot03 => 'Reflexión sobre la oración';

  @override
  String get categorySlot04 => 'Paciencia y esperanza';

  @override
  String get categorySlot05 => 'Busca el perdón';

  @override
  String get categorySlot06 => 'Misericordia y compasión';

  @override
  String get categorySlot07 => 'Fe y fortaleza';

  @override
  String get categorySlot08 => 'Corazón agradecido';

  @override
  String get categorySlot09 => 'Propósito de vida';

  @override
  String get categorySlot10 => 'Vínculos familiares';

  @override
  String get categorySlot11 => 'Paz interior';

  @override
  String get categorySlot12 => 'Sabiduría profética';

  @override
  String get categorySlot13 => 'Buen carácter';

  @override
  String get categorySlot14 => 'Resiste la tentación';

  @override
  String get categorySlot15 => 'Dhikr vespertino';

  @override
  String get categoryCustom => 'Reflexión personal';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria sea a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toda la alabanza es para Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah es el más grande';

  @override
  String get quranVerseHeartAtRest =>
      'Ciertamente, en el recuerdo de Allah encuentran descanso los corazones.';

  @override
  String get promptHint =>
      'Toca una categoría para obtener orientación y reflexión islámica';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get settingsLanguage => 'Configuración de idioma';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get chooseLanguage => 'Elige tu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '$count palabra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opciones';

  @override
  String get newCta => 'Nuevo';

  @override
  String get actionsTitle => '¿Qué te gustaría hacer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartir';

  @override
  String get close => 'Cerrar';

  @override
  String get copiedToast => 'Copiado al portapapeles';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No se pudo generar una nueva respuesta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n¿Deseas intentarlo de nuevo?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Intentar de nuevo';

  @override
  String get authTitle => 'Crear tu cuenta';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get signInEmail => 'Iniciar sesión con correo electrónico';

  @override
  String get upgradeWithApple => 'Continuar con Apple';

  @override
  String get mustAccept =>
      'Debes aceptar los Términos y reconocer la Política de Privacidad.';

  @override
  String get termsLabel => 'Acepto los Términos de Servicio';

  @override
  String get privacyLabel => 'He leído la Política de Privacidad';

  @override
  String get marketingOptIn => 'Acepto recibir noticias y ofertas';

  @override
  String get openTerms => 'Términos de Servicio';

  @override
  String get openPrivacy => 'Política de Privacidad';

  @override
  String get accountSection => 'Cuenta';

  @override
  String get guestMode => 'Modo invitado';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get upgradeHint =>
      'Guarda tus reflexiones en todos los dispositivos creando una cuenta.';

  @override
  String get upgradeWithGoogle => 'Continuar con Google';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get snackUpgraded => 'Cuenta mejorada con Google ✅';

  @override
  String get snackSignedIn => 'Sesión iniciada con Google ✅';

  @override
  String get snackSignedOut => 'Sesión cerrada';

  @override
  String get snackSignedInApple => 'Sesión iniciada con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sesión iniciada con Google ✅';

  @override
  String get snackUpgradedApple => 'Cuenta mejorada con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cuenta mejorada con Google ✅';

  @override
  String get historyTitle => 'Reflexiones anteriores';

  @override
  String get historyOpenCta => 'Reflexiones anteriores';

  @override
  String get historyEmpty => 'Sin reflexiones guardadas aún.';

  @override
  String get historyDeleteTitle => '¿Eliminar reflexión?';

  @override
  String get historyDeleteBody =>
      'Esto eliminará permanentemente el elemento seleccionado.';

  @override
  String get deleteCta => 'Eliminar';

  @override
  String get historyButton => 'Reflexiones anteriores';

  @override
  String get historyEmptyTitle => 'Sin reflexiones aún';

  @override
  String get historyEmptyBody =>
      'Genera algo primero — tus elementos guardados aparecerán aquí.';

  @override
  String get historyDelete => 'Eliminar';

  @override
  String get footerTitle => 'Con Wilaya, Iman y Sabr';

  @override
  String get footerSubtitle => 'Una oración a la vez';

  @override
  String get genericErrorSnack =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get upgradeAccountCta =>
      'Guarda tus reflexiones en todos los dispositivos – crea una cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get exportData => 'Exportar mis datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      '¡Vamos! 🐯\nAyara necesita un momento antes del siguiente…';

  @override
  String get rateDailyLimit =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has usado todas tus reflexiones.\nRecarga o actualiza a Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloquea características premium, categorías futuras y una insignia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tus reflexiones se acabaron ahora. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No se pudo verificar tus reflexiones: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo salió mal al verificar tus reflexiones.';

  @override
  String get aiFallbackGeneric =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get limitSectionTitle => 'Reflexiones';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexiones restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Cargando…';

  @override
  String get limitLoadingLabelDescription =>
      'Se muestra en la tarjeta de reflexiones mientras se obtienen las estadísticas de uso.';

  @override
  String get aiLimitTitle => 'Reflexiones';

  @override
  String get aiLimitSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexiones';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexiones restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Cargando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Se muestra mientras se obtienen las estadísticas de reflexiones.';

  @override
  String get creditsTitle => 'Reflexiones';

  @override
  String get creditsSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get settingsDeleteTitle => 'Eliminar cuenta';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente tu cuenta y todos los datos asociados.';

  @override
  String get settingsDeleteButtonLabel => 'Eliminar mi cuenta';

  @override
  String get settingsDeleteDialogTitle => '¿Eliminar cuenta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta acción es permanente y no se puede deshacer.\n\nTodos tus chats, historial e información de cuenta serán eliminados.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Eliminar';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo ya está vinculado a otra cuenta. Por favor inicia sesión con la cuenta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloquea la experiencia completa de Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Estás en Wilaya. ¿Necesitas más reflexiones?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiones: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Las compras no están disponibles en este momento.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sesión para comprar reflexiones o desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Procesando…';

  @override
  String get premiumRestoreHintTitle =>
      '¿Ya compraste Wilaya o reflexiones en este dispositivo u otro?';

  @override
  String get premiumRestoreHintBody => 'Restaura tus compras si no aparecen.';

  @override
  String get premiumBuyCredits200 => 'Comprar 200 reflexiones';

  @override
  String get premiumBuyCredits400 => 'Comprar 400 reflexiones';

  @override
  String get premiumBecomePremiumOneTime => 'Actualizar al modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puedes recargar con reflexiones adicionales cuando las necesites.';

  @override
  String get premiumUpgradeCta => 'Actualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoría solo está disponible para usuarios de Wilaya. Actualiza en Configuración para desbloquear todo el contenido premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloquea Wilaya para obtener reflexiones adicionales, acceder a categorías premium y continuar cuando necesites orientación.';

  @override
  String get premiumBenefitsPremium =>
      'Estás en modo Wilaya. Si te estás quedando corto, agrega reflexiones adicionales y continúa sin interrupciones.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Agregar 1000 reflexiones';

  @override
  String get premiumBadge => 'Wilaya activo';

  @override
  String get premiumLoadingStore => 'Cargando tienda…';

  @override
  String get premiumProductNotAvailable =>
      'Este producto aún no está disponible en la tienda. Intenta más tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo salió mal con la compra. Por favor intenta de nuevo.';

  @override
  String get premiumBuyCredits100 => 'Agregar 100 reflexiones';

  @override
  String get premiumFeatureLocked =>
      'Desbloquea Wilaya para acceder a esta función.';

  @override
  String get lockedCategoriesHint =>
      'Algunas categorías están reservadas para miembros de Wilaya. Desbloquéalas para explorar cada reflexión en tu viaje.';

  @override
  String get freePlanBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get freePlanBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get graceBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get graceBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sesión para usar Ayara y tus reflexiones.';

  @override
  String get guestNoCreditsTitle => 'Modo invitado';

  @override
  String get guestNoCreditsBody =>
      'Como invitado puedes explorar la aplicación, pero no puedes usar reflexiones. Inicia sesión más tarde en Configuración para usar reflexiones y desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Iniciar sesión en su lugar';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Cuenta eliminada';

  @override
  String get accountDeleteSuccessBody =>
      'Tu cuenta y los datos asociados han sido eliminados exitosamente.';

  @override
  String get accountDeleteSuccessClose => 'Cerrar';

  @override
  String get accountDeleteErrorTitle => 'No se pudo eliminar la cuenta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticación fue cancelada. Por favor inicia sesión de nuevo e intenta la eliminación.';

  @override
  String get accountDeleteReauthRequired =>
      'La eliminación de cuenta requiere un inicio de sesión reciente. Por favor cierra sesión, inicia sesión de nuevo, e intenta de nuevo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta acción es permanente y no se puede deshacer. Todos los datos asociados a tu cuenta serán eliminados.';

  @override
  String get dailyGraceTitle => 'Orientación diaria';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DEL DÍA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓN VESPERTINA';

  @override
  String get dailyGraceCopiedToast => 'Verso copiado al portapapeles';

  @override
  String get locationConsentLabel =>
      'Permitir que Ayara use mi ubicación para la dirección de la Qibla y horarios de oración';

  @override
  String get locationConsentHint =>
      'Se usa solo para estas funciones. Tu ubicación nunca se comparte ni se almacena.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta cualquier cosa sobre fe, oración, vida o práctica islámica y recibe orientación enraizada en el Corán y las enseñanzas de Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Escribe tu pregunta aquí…';

  @override
  String get askPageSubmitCta => 'Preguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor escribe una pregunta primero.';

  @override
  String get askResultYourQuestion => 'Tu pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Enfrentando la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira tu teléfono hasta que la aguja dorada apunte hacia arriba.\nEsa dirección apunta a la Qibla (La Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'La señal GPS es débil. Ve al exterior e intenta de nuevo.';

  @override
  String get qiblaRetry => 'Intentar de nuevo';

  @override
  String get qiblaTitle => 'Dirección de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ubicación requerida';

  @override
  String get qiblaLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular la dirección de la Kaaba en la Meca desde donde estés.';

  @override
  String get qiblaOpenSettings => 'Abrir configuración';

  @override
  String get qiblaCompassLoading => 'Encontrando tu posición…';

  @override
  String get qiblaTowardMecca => 'Hacia la Meca';

  @override
  String get prayerTimesTitle => 'Horarios de oración';

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
  String get prayerTimesLocationNeededTitle => 'Ubicación requerida';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular los horarios de oración precisos para tu ciudad.';

  @override
  String get prayerTimesNextLabel => 'Siguiente';

  @override
  String get prayerTimesDoneLabel => 'Listo';

  @override
  String get monthlyPrayerTimesTitle => 'Horarios de oración mensuales';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver mes completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mes';

  @override
  String get monthlyPrayerTimesDayHeader => 'Día';

  @override
  String get sharePrayerTimes => 'Compartir horarios de oración';

  @override
  String get notificationsSectionTitle => 'Notificaciones';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatorios de oración, eventos del calendario y más';

  @override
  String get dailyReflectionReminderTitle => 'Reflexión diaria';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatorio diario suave para abrir Ayara y conectar con tu fe.';

  @override
  String get dailyReflectionReminderEnable => 'Habilitar recordatorio diario';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatorio';

  @override
  String get prayerNotificationsTitle => 'Recordatorios de oración';

  @override
  String get prayerNotificationsDescription =>
      'Recibe un recordatorio suave antes de cada hora de oración para mantenerte conectado durante el día.';

  @override
  String get prayerNotificationsEnable => 'Habilitar recordatorios de oración';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configuración de notificaciones';

  @override
  String get prayerNotificationsDenied =>
      'Las notificaciones están deshabilitadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ve a Configuración y permite notificaciones para Ayara para recibir recordatorios de horarios de oración.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificaciones para horarios de oración';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oración del alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr es la oración de las mañanas de Ahlul Bayt. El Imam Ali (AS) dijo: Protege la oración del alba como proteges tu bien más preciado. Levántate, purifícate, y ponte ante Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oración del mediodía';

  @override
  String get prayerNotifBodyDhuhr =>
      'Los Imames de Ahlul Bayt apreciaban cada momento de recordatorio. Pausa tu día, combina Dhuhr con Asr si es necesario, y devuelve tu corazón a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oración de la tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Protege la oración, es el pacto entre tú y Allah. Ha llegado la hora de Asr — no dejes que pase sin recordatorio.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oración del atardecer';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol se ha puesto — un momento que Ahlul Bayt consideraba sagrado para la súplica. Ofrece Maghrib y abre tus manos a Allah en dua antes de que comience la noche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oración de la noche';

  @override
  String get prayerNotifBodyIsha =>
      'Termina tu día en compañía de Allah. Los Imames alentaban Salat al-Layl después de Isha — pero primero, completa tu Isha y cierra el día con Su recordatorio.';

  @override
  String get outOfReflectionsBannerText => 'Has usado todas tus reflexiones';

  @override
  String get outOfReflectionsBannerCta => 'Obtener más';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completado 100 recordatorios de Allah. Que sean una luz para tu corazón.';

  @override
  String get disclaimerTitle => 'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerBody =>
      'Ayara proporciona reflexiones islámicas, recordatorios y contenido espiritual para apoyar tu viaje personal de fe, enraizado en el Corán y las enseñanzas de Ahlul Bayt. Este contenido se ofrece únicamente con propósitos informativos e inspiradores.\n\nAyara no reemplaza la erudición calificada.\nLa orientación en esta aplicación no es un sustituto de un erudito islámico competente, marja\', o maestro teológicamente capacitado. En el Islam Shia, la orientación religiosa está enraizada en la escuela Ja\'fari de jurisprudencia (fiqh) y la tradición de seguir a un Marja\' viviente (fuente de emulación) — un jurista calificado cuyas decisiones guían a los creyentes en la práctica religiosa. Si tienes preguntas sobre decisiones religiosas, asuntos halal e haram, u obligaciones religiosas personales, por favor busca consejo de un Marja\' calificado o un erudito en tu comunidad.\n\nEsta aplicación no emite decisiones religiosas.\nAyara no hace determinaciones autorizadas sobre asuntos de fiqh u obligaciones religiosas personales. Nada aquí debe ser tratado como una fatwa o instrucción religiosa vinculante.\n\nLa centralidad de Ahlul Bayt.\nEn el Islam Shia, el Profeta Muhammad ﷺ y su Familia Purificada — Ahlul Bayt — son los guías autorizados de la comunidad islámica después del Corán. Los doce Imames de Ahlul Bayt son los intérpretes divinamente designados de la enseñanza islámica. El contenido en esta aplicación refleja esta tradición y busca honrarla fielmente.\n\nAsuntos de la comunidad.\nEsta aplicación busca alentar tu compromiso con la fe mientras respeta profundamente el papel vital de tu mezquita local, centro islámico y comunidad religiosa. Te alentamos a mantenerte conectado y aprender de maestros calificados cerca de ti.';

  @override
  String get disclaimerClose => 'Entiendo';

  @override
  String get disclaimerInfoTooltip =>
      'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo para propósitos informativos. Toca para leer el descargo completo.';

  @override
  String get disclaimerSectionHeader =>
      'Descargo de responsabilidad sobre orientación';

  @override
  String get navHome => 'Inicio';

  @override
  String get navReflect => 'Reflexionar';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'HOY';

  @override
  String get dashboardComingUp => 'Próximamente';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acceso rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientación';

  @override
  String get quickActionPrayerTimes => 'Horarios de oración';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Haz cualquier pregunta islámica y recibe una respuesta reflexiva y guiada.';

  @override
  String get askAyaraHint => 'p.ej. ¿Cuál es el significado del Ramadán?';

  @override
  String get askAyaraSubmit => 'Preguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabiduría del día';

  @override
  String get calendarScreenTitle => 'Calendario islámico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiones próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatorios de ocasiones';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado la noche anterior a cada ocasión';

  @override
  String get calendarNotifPermissionDenied =>
      'Permiso de notificación denegado. Habilítalo en la configuración de tu dispositivo.';

  @override
  String get calendarNoEvents => 'No se encontraron eventos próximos.';

  @override
  String get calendarAddToPhone => 'إضافة إلى تقويم الهاتف';

  @override
  String get calendarAddedToPhone => 'تمت الإضافة إلى التقويم';

  @override
  String get calendarCountdownToday => 'HOY';

  @override
  String get calendarCountdownTomorrow => 'MAÑANA';

  @override
  String calendarCountdownDays(int days) {
    return 'en $days días';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Días de Muharram — recuerda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — días de luto y reflexión';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — cuarenta días de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camino a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — el amanecer de la revelación';

  @override
  String get calendarSeasonMidShaban =>
      'Mitad de Sha\'ban — cumpleaños del Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadán Mubarak — el mes del Corán';

  @override
  String get calendarSeasonGhadir => '¡Eid al-Ghadir Mubarak!';

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
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas y Ziyarat';

  @override
  String get duasSearchHint => 'Buscar duas, ziyarat…';

  @override
  String get duasFilterAll => 'Todo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas y ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No se encontraron duas.';

  @override
  String get duaCategoryDaily => 'Diaria';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiones';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nacimiento';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ocasión';

  @override
  String get duaCopyTooltip => 'Copiar traducción';

  @override
  String get duaToggleTransliteration => 'Transliteración';

  @override
  String get duaToggleTranslation => 'Traducción';

  @override
  String get duaAskAiLabel => 'Pide a Ayara que explique esta dua';

  @override
  String get duaAskAiLockedLabel => 'Pide a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Las explicaciones de Ayara están disponibles para miembros de Wilaya. Actualiza en Configuración.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pide a Ayara que explique \"$name\" — ¡próximamente!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada al portapapeles.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah es el más grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toda la alabanza pertenece a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria sea a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah acepte tu dhikr.';

  @override
  String get tasbihTapHint => 'Toca en cualquier lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guía de oración';

  @override
  String get tasbihatScreenSubtitle => 'LAS GLORIFICACIONES DE LA ORACIÓN';

  @override
  String get tasbihatScreenDescription =>
      'Una guía completa de las glorificaciones recitadas durante y después de las oraciones diarias — siguiendo la tradición de Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante el 3º y 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudencia Shia, el Tasbiḥāt al-Arbaʿa reemplaza la Surah al-Fatiha en el 3º y 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. Es obligatorio (wājib) recitarlo una vez, y recomendado (mustaḥabb) recitarlo tres veces.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria sea a Allah · Toda la alabanza es para Allah\nNo hay dios sino Allah · Allah es el más grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitación completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que tu oración sea aceptada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toca después de cada recitación';

  @override
  String get tasbihatZahraSubtitle => 'Después de cada oración · 100 cuentas';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La Señora Fátima al-Zahra (sa) pidió al Profeta ﷺ un sirviente. Él dijo: \"¿No te guío a algo mejor? Recita Subḥānallāh 33 veces, Alḥamdulillāh 33 veces, y Allāhu Akbar 34 veces después de cada oración. Eso es mejor para ti que un sirviente.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Después de completar tu oración';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Después de cada oración obligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quien recita Āyat al-Kursī después de cada oración obligatoria, nada se interpone entre él y el paraíso excepto la muerte. El Imam al-Bāqir (a) dijo que es uno de los versículos más grandes del Corán.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Después de cada oración · sella todas las súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saludos al Profeta ﷺ y su familia purificada (Āl Muḥammad) se recomienda para sellar cada dua. El Imam al-Ṣādiq (a) dijo: \"Cualquier dua se suspende hasta que envíes ṣalawāt sobre Muḥammad y su familia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Después de cada oración · por el Imam de nuestro tiempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseñado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua por la reaparición del Imam al-Mahdī (af), el duodécimo Imam, enseñada por su padre. A menudo es recitada por muchos musulmanes chiítas después de la oración como un acto de devoción hacia el Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la Señora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Después de Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'El Imam al-Bāqir (a) dijo que recitar Tasbīḥ al-Zahrā después de Isha antes de dormir es mejor que 1000 rakʿahs de oración opcional. Su luz asciende a los cielos.';

  @override
  String get tasbihFatimaGiftPre => 'Un regalo del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado después de cada oración';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORACIONES';

  @override
  String get prayerTrackerPrayed => 'Orado';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas las oraciones completadas hoy. Que Allah acepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completado hoy';

  @override
  String get dhikrTrackerNotDoneToday => 'No hecho hoy';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get dhikrReminderTitle => 'Recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatorio diario suave para recitar tu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Habilitar recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatorio';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith diario';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartir este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVía Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Siguiente';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Los Catorce Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Señora Fátima y los Doce Imames — los guías purificados e infalibles en el Islam chiíta duodecimano';

  @override
  String get imamLabelBorn => 'Nacido';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Estado';

  @override
  String get imamSectionBiography => 'BIOGRAFÍA';

  @override
  String get imamSectionFamousSaying => 'DICHO FAMOSO';

  @override
  String get imamRoleProphet => 'El Profeta Final';

  @override
  String get imamRoleInfallible => 'El Infalible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3er Imam';

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
  String get duaAudioScreenTitle => 'Escuchar Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una dua para escuchar. Toca el mosaico para reproducir o pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'El audio para esta dua estará disponible en una próxima actualización.';

  @override
  String get duaAudioClose => 'Cerrar';

  @override
  String get duaAudioError =>
      'No se pudo cargar el audio. Por favor verifica tu conexión.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasión';

  @override
  String get duaAudioMetaDuration => 'Duración';

  @override
  String get quickActionDailyHadith => 'Hadith diario';

  @override
  String get quickAction14Masumeen => 'Catorce Infallibles';

  @override
  String get quickActionListenDuas => 'Escuchar';

  @override
  String get quickActionTasbihat => 'Guía de oración';

  @override
  String get pilgrimageSectionTitle => 'El viaje sagrado';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guías completas para el Hajj y la Umrah — la peregrinación a la Casa Sagrada de Allah en La Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El quinto pilar del Islam';

  @override
  String get hajjCardDescription =>
      'La gran peregrinación anual — obligatoria una vez en la vida para cada musulmán capaz';

  @override
  String get hajjScreenTitle => 'Guía de Hajj';

  @override
  String get hajjScreenSubtitle => 'Guía paso a paso de la gran peregrinación';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'La peregrinación menor';

  @override
  String get umrahCardDescription =>
      'Un viaje espiritual profundamente gratificante que se puede realizar en cualquier época del año';

  @override
  String get umrahScreenTitle => 'Guía de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guía paso a paso de la peregrinación menor';

  @override
  String get pilgrimageStepsTitle => 'Rituales y pasos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas importantes';

  @override
  String get pilgrimageDuaTitle => 'دعاء لهذه الخطوة';

  @override
  String get pilgrimageJafariNoteTitle => 'ملاحظة فقهية جعفرية';

  @override
  String get pilgrimageComplete => '✓ مكتمل';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done من $total خطوات';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes دقيقة';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Muchos peregrinos chiítas también viajan a Medina para la ziyarat del Profeta Muhammad (SAW) en la Masjid al-Nabawi y las tumbas en Jannat al-Baqi. Estas visitas tienen un profundo significado espiritual, aunque no son en sí mismas ritos de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj es el quinto pilar del Islam, obligatorio una vez en la vida para todo musulmán que sea física y financieramente capaz. Para la mayoría de los peregrinos chiítas duodecimanos hoy en día, esto significa Hajj al-Tamattu\', realizado en el mes de Dhul Hijjah siguiendo los pasos del Profeta Ibrahim (AS), su hijo Ismail (AS) y la Señora Hajar. Esta guía sigue el esquema ja\'fari de los ritos, mientras que la ziyarat en Medina sigue siendo un viaje profundamente apreciado antes o después del Hajj.';

  @override
  String get umrahIntro =>
      'La Umrah es la peregrinación menor a La Meca y, a diferencia del Hajj, se puede realizar en cualquier época del año. Aunque no es obligatoria, tiene una recompensa espiritual inmensa y se considera un acto de adoración altamente recomendado. Comparte varios rituales con el Hajj pero es más corta, consistiendo en cuatro ritos principales.';

  @override
  String get voiceInputTitle => 'Entrada de voz';

  @override
  String get voiceInputMicTitle => 'Micrófono';

  @override
  String get voiceInputMicSubtitle =>
      'Habla tu entrada para Ask Ayara en lugar de escribir.';

  @override
  String get voiceInputMicDenied => 'Se denegó el acceso al micrófono.';

  @override
  String get voiceInputSpeak => 'Hablar en su lugar';

  @override
  String get voiceInputListening => 'Escuchando…';

  @override
  String get voiceInputPermissionDenied =>
      'Se requiere acceso al micrófono para la entrada de voz.';
}

/// The translations for Spanish Castilian, as used in Chile (`es_CL`).
class AppLocalizationsEsCl extends AppLocalizationsEs {
  AppLocalizationsEsCl() : super('es_CL');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Elige tu idioma';

  @override
  String get languageSelectSub =>
      'Puedes cambiar esto más tarde en Configuración';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos los idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Buscar…';

  @override
  String get planBasic => 'Estándar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientación diaria';

  @override
  String get categorySlot02 => 'Fe y confianza';

  @override
  String get categorySlot03 => 'Reflexión sobre la oración';

  @override
  String get categorySlot04 => 'Paciencia y esperanza';

  @override
  String get categorySlot05 => 'Busca el perdón';

  @override
  String get categorySlot06 => 'Misericordia y compasión';

  @override
  String get categorySlot07 => 'Fe y fortaleza';

  @override
  String get categorySlot08 => 'Corazón agradecido';

  @override
  String get categorySlot09 => 'Propósito de vida';

  @override
  String get categorySlot10 => 'Vínculos familiares';

  @override
  String get categorySlot11 => 'Paz interior';

  @override
  String get categorySlot12 => 'Sabiduría profética';

  @override
  String get categorySlot13 => 'Buen carácter';

  @override
  String get categorySlot14 => 'Resiste la tentación';

  @override
  String get categorySlot15 => 'Dhikr vespertino';

  @override
  String get categoryCustom => 'Reflexión personal';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria sea a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toda la alabanza es para Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah es el más grande';

  @override
  String get quranVerseHeartAtRest =>
      'Ciertamente, en el recuerdo de Allah encuentran descanso los corazones.';

  @override
  String get promptHint =>
      'Toca una categoría para obtener orientación y reflexión islámica';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get settingsLanguage => 'Configuración de idioma';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get chooseLanguage => 'Elige tu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '$count palabra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opciones';

  @override
  String get newCta => 'Nuevo';

  @override
  String get actionsTitle => '¿Qué te gustaría hacer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartir';

  @override
  String get close => 'Cerrar';

  @override
  String get copiedToast => 'Copiado al portapapeles';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No se pudo generar una nueva respuesta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n¿Deseas intentarlo de nuevo?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Intentar de nuevo';

  @override
  String get authTitle => 'Crear tu cuenta';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get signInEmail => 'Iniciar sesión con correo electrónico';

  @override
  String get upgradeWithApple => 'Continuar con Apple';

  @override
  String get mustAccept =>
      'Debes aceptar los Términos y reconocer la Política de Privacidad.';

  @override
  String get termsLabel => 'Acepto los Términos de Servicio';

  @override
  String get privacyLabel => 'He leído la Política de Privacidad';

  @override
  String get marketingOptIn => 'Acepto recibir noticias y ofertas';

  @override
  String get openTerms => 'Términos de Servicio';

  @override
  String get openPrivacy => 'Política de Privacidad';

  @override
  String get accountSection => 'Cuenta';

  @override
  String get guestMode => 'Modo invitado';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get upgradeHint =>
      'Guarda tus reflexiones en todos los dispositivos creando una cuenta.';

  @override
  String get upgradeWithGoogle => 'Continuar con Google';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get snackUpgraded => 'Cuenta mejorada con Google ✅';

  @override
  String get snackSignedIn => 'Sesión iniciada con Google ✅';

  @override
  String get snackSignedOut => 'Sesión cerrada';

  @override
  String get snackSignedInApple => 'Sesión iniciada con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sesión iniciada con Google ✅';

  @override
  String get snackUpgradedApple => 'Cuenta mejorada con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cuenta mejorada con Google ✅';

  @override
  String get historyTitle => 'Reflexiones anteriores';

  @override
  String get historyOpenCta => 'Reflexiones anteriores';

  @override
  String get historyEmpty => 'Sin reflexiones guardadas aún.';

  @override
  String get historyDeleteTitle => '¿Eliminar reflexión?';

  @override
  String get historyDeleteBody =>
      'Esto eliminará permanentemente el elemento seleccionado.';

  @override
  String get deleteCta => 'Eliminar';

  @override
  String get historyButton => 'Reflexiones anteriores';

  @override
  String get historyEmptyTitle => 'Sin reflexiones aún';

  @override
  String get historyEmptyBody =>
      'Genera algo primero — tus elementos guardados aparecerán aquí.';

  @override
  String get historyDelete => 'Eliminar';

  @override
  String get footerTitle => 'Con Wilaya, Iman y Sabr';

  @override
  String get footerSubtitle => 'Una oración a la vez';

  @override
  String get genericErrorSnack =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get upgradeAccountCta =>
      'Guarda tus reflexiones en todos los dispositivos – crea una cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get exportData => 'Exportar mis datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      '¡Vamos! 🐯\nAyara necesita un momento antes del siguiente…';

  @override
  String get rateDailyLimit =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has usado todas tus reflexiones.\nRecarga o actualiza a Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloquea características premium, categorías futuras y una insignia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tus reflexiones se acabaron ahora. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No se pudo verificar tus reflexiones: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo salió mal al verificar tus reflexiones.';

  @override
  String get aiFallbackGeneric =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get limitSectionTitle => 'Reflexiones';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexiones restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Cargando…';

  @override
  String get limitLoadingLabelDescription =>
      'Se muestra en la tarjeta de reflexiones mientras se obtienen las estadísticas de uso.';

  @override
  String get aiLimitTitle => 'Reflexiones';

  @override
  String get aiLimitSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexiones';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexiones restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Cargando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Se muestra mientras se obtienen las estadísticas de reflexiones.';

  @override
  String get creditsTitle => 'Reflexiones';

  @override
  String get creditsSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get settingsDeleteTitle => 'Eliminar cuenta';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente tu cuenta y todos los datos asociados.';

  @override
  String get settingsDeleteButtonLabel => 'Eliminar mi cuenta';

  @override
  String get settingsDeleteDialogTitle => '¿Eliminar cuenta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta acción es permanente y no se puede deshacer.\n\nTodos tus chats, historial e información de cuenta serán eliminados.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Eliminar';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo ya está vinculado a otra cuenta. Por favor inicia sesión con la cuenta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloquea la experiencia completa de Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Estás en Wilaya. ¿Necesitas más reflexiones?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiones: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Las compras no están disponibles en este momento.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sesión para comprar reflexiones o desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Procesando…';

  @override
  String get premiumRestoreHintTitle =>
      '¿Ya compraste Wilaya o reflexiones en este dispositivo u otro?';

  @override
  String get premiumRestoreHintBody => 'Restaura tus compras si no aparecen.';

  @override
  String get premiumBuyCredits200 => 'Comprar 200 reflexiones';

  @override
  String get premiumBuyCredits400 => 'Comprar 400 reflexiones';

  @override
  String get premiumBecomePremiumOneTime => 'Actualizar al modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puedes recargar con reflexiones adicionales cuando las necesites.';

  @override
  String get premiumUpgradeCta => 'Actualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoría solo está disponible para usuarios de Wilaya. Actualiza en Configuración para desbloquear todo el contenido premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloquea Wilaya para obtener reflexiones adicionales, acceder a categorías premium y continuar cuando necesites orientación.';

  @override
  String get premiumBenefitsPremium =>
      'Estás en modo Wilaya. Si te estás quedando corto, agrega reflexiones adicionales y continúa sin interrupciones.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Agregar 1000 reflexiones';

  @override
  String get premiumBadge => 'Wilaya activo';

  @override
  String get premiumLoadingStore => 'Cargando tienda…';

  @override
  String get premiumProductNotAvailable =>
      'Este producto aún no está disponible en la tienda. Intenta más tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo salió mal con la compra. Por favor intenta de nuevo.';

  @override
  String get premiumBuyCredits100 => 'Agregar 100 reflexiones';

  @override
  String get premiumFeatureLocked =>
      'Desbloquea Wilaya para acceder a esta función.';

  @override
  String get lockedCategoriesHint =>
      'Algunas categorías están reservadas para miembros de Wilaya. Desbloquéalas para explorar cada reflexión en tu viaje.';

  @override
  String get freePlanBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get freePlanBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get graceBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get graceBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sesión para usar Ayara y tus reflexiones.';

  @override
  String get guestNoCreditsTitle => 'Modo invitado';

  @override
  String get guestNoCreditsBody =>
      'Como invitado puedes explorar la aplicación, pero no puedes usar reflexiones. Inicia sesión más tarde en Configuración para usar reflexiones y desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Iniciar sesión en su lugar';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Cuenta eliminada';

  @override
  String get accountDeleteSuccessBody =>
      'Tu cuenta y los datos asociados han sido eliminados exitosamente.';

  @override
  String get accountDeleteSuccessClose => 'Cerrar';

  @override
  String get accountDeleteErrorTitle => 'No se pudo eliminar la cuenta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticación fue cancelada. Por favor inicia sesión de nuevo e intenta la eliminación.';

  @override
  String get accountDeleteReauthRequired =>
      'La eliminación de cuenta requiere un inicio de sesión reciente. Por favor cierra sesión, inicia sesión de nuevo, e intenta de nuevo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta acción es permanente y no se puede deshacer. Todos los datos asociados a tu cuenta serán eliminados.';

  @override
  String get dailyGraceTitle => 'Orientación diaria';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DEL DÍA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓN VESPERTINA';

  @override
  String get dailyGraceCopiedToast => 'Verso copiado al portapapeles';

  @override
  String get locationConsentLabel =>
      'Permitir que Ayara use mi ubicación para la dirección de la Qibla y horarios de oración';

  @override
  String get locationConsentHint =>
      'Se usa solo para estas funciones. Tu ubicación nunca se comparte ni se almacena.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta cualquier cosa sobre fe, oración, vida o práctica islámica y recibe orientación enraizada en el Corán y las enseñanzas de Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Escribe tu pregunta aquí…';

  @override
  String get askPageSubmitCta => 'Preguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor escribe una pregunta primero.';

  @override
  String get askResultYourQuestion => 'Tu pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Enfrentando la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira tu teléfono hasta que la aguja dorada apunte hacia arriba.\nEsa dirección apunta a la Qibla (La Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'La señal GPS es débil. Ve al exterior e intenta de nuevo.';

  @override
  String get qiblaRetry => 'Intentar de nuevo';

  @override
  String get qiblaTitle => 'Dirección de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ubicación requerida';

  @override
  String get qiblaLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular la dirección de la Kaaba en la Meca desde donde estés.';

  @override
  String get qiblaOpenSettings => 'Abrir configuración';

  @override
  String get qiblaCompassLoading => 'Encontrando tu posición…';

  @override
  String get qiblaTowardMecca => 'Hacia la Meca';

  @override
  String get prayerTimesTitle => 'Horarios de oración';

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
  String get prayerTimesLocationNeededTitle => 'Ubicación requerida';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular los horarios de oración precisos para tu ciudad.';

  @override
  String get prayerTimesNextLabel => 'Siguiente';

  @override
  String get prayerTimesDoneLabel => 'Listo';

  @override
  String get monthlyPrayerTimesTitle => 'Horarios de oración mensuales';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver mes completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mes';

  @override
  String get monthlyPrayerTimesDayHeader => 'Día';

  @override
  String get sharePrayerTimes => 'Compartir horarios de oración';

  @override
  String get notificationsSectionTitle => 'Notificaciones';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatorios de oración, eventos del calendario y más';

  @override
  String get dailyReflectionReminderTitle => 'Reflexión diaria';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatorio diario suave para abrir Ayara y conectar con tu fe.';

  @override
  String get dailyReflectionReminderEnable => 'Habilitar recordatorio diario';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatorio';

  @override
  String get prayerNotificationsTitle => 'Recordatorios de oración';

  @override
  String get prayerNotificationsDescription =>
      'Recibe un recordatorio suave antes de cada hora de oración para mantenerte conectado durante el día.';

  @override
  String get prayerNotificationsEnable => 'Habilitar recordatorios de oración';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configuración de notificaciones';

  @override
  String get prayerNotificationsDenied =>
      'Las notificaciones están deshabilitadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ve a Configuración y permite notificaciones para Ayara para recibir recordatorios de horarios de oración.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificaciones para horarios de oración';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oración del alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr es la oración de las mañanas de Ahlul Bayt. El Imam Ali (AS) dijo: Protege la oración del alba como proteges tu bien más preciado. Levántate, purifícate, y ponte ante Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oración del mediodía';

  @override
  String get prayerNotifBodyDhuhr =>
      'Los Imames de Ahlul Bayt apreciaban cada momento de recordatorio. Pausa tu día, combina Dhuhr con Asr si es necesario, y devuelve tu corazón a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oración de la tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Protege la oración, es el pacto entre tú y Allah. Ha llegado la hora de Asr — no dejes que pase sin recordatorio.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oración del atardecer';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol se ha puesto — un momento que Ahlul Bayt consideraba sagrado para la súplica. Ofrece Maghrib y abre tus manos a Allah en dua antes de que comience la noche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oración de la noche';

  @override
  String get prayerNotifBodyIsha =>
      'Termina tu día en compañía de Allah. Los Imames alentaban Salat al-Layl después de Isha — pero primero, completa tu Isha y cierra el día con Su recordatorio.';

  @override
  String get outOfReflectionsBannerText => 'Has usado todas tus reflexiones';

  @override
  String get outOfReflectionsBannerCta => 'Obtener más';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completado 100 recordatorios de Allah. Que sean una luz para tu corazón.';

  @override
  String get disclaimerTitle => 'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerBody =>
      'Ayara proporciona reflexiones islámicas, recordatorios y contenido espiritual para apoyar tu viaje personal de fe, enraizado en el Corán y las enseñanzas de Ahlul Bayt. Este contenido se ofrece únicamente con propósitos informativos e inspiradores.\n\nAyara no reemplaza la erudición calificada.\nLa orientación en esta aplicación no es un sustituto de un erudito islámico competente, marja\', o maestro teológicamente capacitado. En el Islam Shia, la orientación religiosa está enraizada en la escuela Ja\'fari de jurisprudencia (fiqh) y la tradición de seguir a un Marja\' viviente (fuente de emulación) — un jurista calificado cuyas decisiones guían a los creyentes en la práctica religiosa. Si tienes preguntas sobre decisiones religiosas, asuntos halal e haram, u obligaciones religiosas personales, por favor busca consejo de un Marja\' calificado o un erudito en tu comunidad.\n\nEsta aplicación no emite decisiones religiosas.\nAyara no hace determinaciones autorizadas sobre asuntos de fiqh u obligaciones religiosas personales. Nada aquí debe ser tratado como una fatwa o instrucción religiosa vinculante.\n\nLa centralidad de Ahlul Bayt.\nEn el Islam Shia, el Profeta Muhammad ﷺ y su Familia Purificada — Ahlul Bayt — son los guías autorizados de la comunidad islámica después del Corán. Los doce Imames de Ahlul Bayt son los intérpretes divinamente designados de la enseñanza islámica. El contenido en esta aplicación refleja esta tradición y busca honrarla fielmente.\n\nAsuntos de la comunidad.\nEsta aplicación busca alentar tu compromiso con la fe mientras respeta profundamente el papel vital de tu mezquita local, centro islámico y comunidad religiosa. Te alentamos a mantenerte conectado y aprender de maestros calificados cerca de ti.';

  @override
  String get disclaimerClose => 'Entiendo';

  @override
  String get disclaimerInfoTooltip =>
      'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo para propósitos informativos. Toca para leer el descargo completo.';

  @override
  String get disclaimerSectionHeader =>
      'Descargo de responsabilidad sobre orientación';

  @override
  String get navHome => 'Inicio';

  @override
  String get navReflect => 'Reflexionar';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'HOY';

  @override
  String get dashboardComingUp => 'Próximamente';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acceso rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientación';

  @override
  String get quickActionPrayerTimes => 'Horarios de oración';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Haz cualquier pregunta islámica y recibe una respuesta reflexiva y guiada.';

  @override
  String get askAyaraHint => 'p.ej. ¿Cuál es el significado del Ramadán?';

  @override
  String get askAyaraSubmit => 'Preguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabiduría del día';

  @override
  String get calendarScreenTitle => 'Calendario islámico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiones próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatorios de ocasiones';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado la noche anterior a cada ocasión';

  @override
  String get calendarNotifPermissionDenied =>
      'Permiso de notificación denegado. Habilítalo en la configuración de tu dispositivo.';

  @override
  String get calendarNoEvents => 'No se encontraron eventos próximos.';

  @override
  String get calendarAddToPhone => 'Agregar al Calendario del Teléfono';

  @override
  String get calendarAddedToPhone => 'Agregado al Calendario';

  @override
  String get calendarCountdownToday => 'HOY';

  @override
  String get calendarCountdownTomorrow => 'MAÑANA';

  @override
  String calendarCountdownDays(int days) {
    return 'en $days días';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Días de Muharram — recuerda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — días de luto y reflexión';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — cuarenta días de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camino a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — el amanecer de la revelación';

  @override
  String get calendarSeasonMidShaban =>
      'Mitad de Sha\'ban — cumpleaños del Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadán Mubarak — el mes del Corán';

  @override
  String get calendarSeasonGhadir => '¡Eid al-Ghadir Mubarak!';

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
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas y Ziyarat';

  @override
  String get duasSearchHint => 'Buscar duas, ziyarat…';

  @override
  String get duasFilterAll => 'Todo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas y ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No se encontraron duas.';

  @override
  String get duaCategoryDaily => 'Diaria';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiones';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nacimiento';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ocasión';

  @override
  String get duaCopyTooltip => 'Copiar traducción';

  @override
  String get duaToggleTransliteration => 'Transliteración';

  @override
  String get duaToggleTranslation => 'Traducción';

  @override
  String get duaAskAiLabel => 'Pide a Ayara que explique esta dua';

  @override
  String get duaAskAiLockedLabel => 'Pide a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Las explicaciones de Ayara están disponibles para miembros de Wilaya. Actualiza en Configuración.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pide a Ayara que explique \"$name\" — ¡próximamente!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada al portapapeles.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah es el más grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toda la alabanza pertenece a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria sea a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah acepte tu dhikr.';

  @override
  String get tasbihTapHint => 'Toca en cualquier lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guía de oración';

  @override
  String get tasbihatScreenSubtitle => 'LAS GLORIFICACIONES DE LA ORACIÓN';

  @override
  String get tasbihatScreenDescription =>
      'Una guía completa de las glorificaciones recitadas durante y después de las oraciones diarias — siguiendo la tradición de Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante el 3º y 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudencia Shia, el Tasbiḥāt al-Arbaʿa reemplaza la Surah al-Fatiha en el 3º y 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. Es obligatorio (wājib) recitarlo una vez, y recomendado (mustaḥabb) recitarlo tres veces.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria sea a Allah · Toda la alabanza es para Allah\nNo hay dios sino Allah · Allah es el más grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitación completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que tu oración sea aceptada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toca después de cada recitación';

  @override
  String get tasbihatZahraSubtitle => 'Después de cada oración · 100 cuentas';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La Señora Fátima al-Zahra (sa) pidió al Profeta ﷺ un sirviente. Él dijo: \"¿No te guío a algo mejor? Recita Subḥānallāh 33 veces, Alḥamdulillāh 33 veces, y Allāhu Akbar 34 veces después de cada oración. Eso es mejor para ti que un sirviente.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Después de completar tu oración';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Después de cada oración obligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quien recita Āyat al-Kursī después de cada oración obligatoria, nada se interpone entre él y el paraíso excepto la muerte. El Imam al-Bāqir (a) dijo que es uno de los versículos más grandes del Corán.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Después de cada oración · sella todas las súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saludos al Profeta ﷺ y su familia purificada (Āl Muḥammad) se recomienda para sellar cada dua. El Imam al-Ṣādiq (a) dijo: \"Cualquier dua se suspende hasta que envíes ṣalawāt sobre Muḥammad y su familia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Después de cada oración · por el Imam de nuestro tiempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseñado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua por la reaparición del Imam al-Mahdī (af), el duodécimo Imam, enseñada por su padre. A menudo es recitada por muchos musulmanes chiítas después de la oración como un acto de devoción al Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la Señora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Después de Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'El Imam al-Bāqir (a) dijo que recitar Tasbīḥ al-Zahrā después de Isha antes de dormir es mejor que 1000 rakʿahs de oración opcional. Su luz asciende a los cielos.';

  @override
  String get tasbihFatimaGiftPre => 'Un regalo del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado después de cada oración';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORACIONES';

  @override
  String get prayerTrackerPrayed => 'Orado';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas las oraciones completadas hoy. Que Allah acepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completado hoy';

  @override
  String get dhikrTrackerNotDoneToday => 'No hecho hoy';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get dhikrReminderTitle => 'Recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatorio diario suave para recitar tu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Habilitar recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatorio';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith diario';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartir este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVía Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Siguiente';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Los Catorce Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Señora Fátima y los Doce Imames — los guías purificados e infalibles en el Islam chiíta duodecimano';

  @override
  String get imamLabelBorn => 'Nacido';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Estado';

  @override
  String get imamSectionBiography => 'BIOGRAFÍA';

  @override
  String get imamSectionFamousSaying => 'DICHO FAMOSO';

  @override
  String get imamRoleProphet => 'El Profeta Final';

  @override
  String get imamRoleInfallible => 'El Infalible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3er Imam';

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
  String get duaAudioScreenTitle => 'Escuchar Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una dua para escuchar. Toca el mosaico para reproducir o pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'El audio para esta dua estará disponible en una próxima actualización.';

  @override
  String get duaAudioClose => 'Cerrar';

  @override
  String get duaAudioError =>
      'No se pudo cargar el audio. Por favor verifica tu conexión.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasión';

  @override
  String get duaAudioMetaDuration => 'Duración';

  @override
  String get quickActionDailyHadith => 'Hadith diario';

  @override
  String get quickAction14Masumeen => 'Catorce Infallibles';

  @override
  String get quickActionListenDuas => 'Escuchar';

  @override
  String get quickActionTasbihat => 'Guía de oración';

  @override
  String get pilgrimageSectionTitle => 'El viaje sagrado';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guías completas para el Hajj y la Umrah — la peregrinación a la Casa Sagrada de Allah en La Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El quinto pilar del Islam';

  @override
  String get hajjCardDescription =>
      'La gran peregrinación anual — obligatoria una vez en la vida para cada musulmán capaz';

  @override
  String get hajjScreenTitle => 'Guía de Hajj';

  @override
  String get hajjScreenSubtitle => 'Guía paso a paso de la gran peregrinación';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'La peregrinación menor';

  @override
  String get umrahCardDescription =>
      'Un viaje espiritual profundamente gratificante que se puede realizar en cualquier época del año';

  @override
  String get umrahScreenTitle => 'Guía de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guía paso a paso de la peregrinación menor';

  @override
  String get pilgrimageStepsTitle => 'Rituales y pasos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para este paso';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total pasos';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Muchos peregrinos chiítas también viajan a Medina para la ziyarat del Profeta Muhammad (SAW) en la Masjid al-Nabawi y las tumbas en Jannat al-Baqi. Estas visitas tienen un profundo significado espiritual, aunque no son en sí mismas ritos de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj es el quinto pilar del Islam, obligatorio una vez en la vida para todo musulmán que sea física y financieramente capaz. Para la mayoría de los peregrinos chiítas duodecimanos hoy en día, esto significa Hajj al-Tamattu\', realizado en el mes de Dhul Hijjah siguiendo los pasos del Profeta Ibrahim (AS), su hijo Ismail (AS) y la Señora Hajar. Esta guía sigue el esquema jafari de los ritos, mientras que la ziyarat en Medina sigue siendo un viaje profundamente apreciado antes o después del Hajj.';

  @override
  String get umrahIntro =>
      'La Umrah es la peregrinación menor a La Meca y, a diferencia del Hajj, se puede realizar en cualquier época del año. Aunque no es obligatoria, tiene una recompensa espiritual inmensa y se considera un acto de adoración altamente recomendado. Comparte varios rituales con el Hajj pero es más corta, consistiendo en cuatro ritos principales.';

  @override
  String get voiceInputTitle => 'Entrada de voz';

  @override
  String get voiceInputMicTitle => 'Micrófono';

  @override
  String get voiceInputMicSubtitle =>
      'Habla tu entrada a Ask Ayara en lugar de escribir.';

  @override
  String get voiceInputMicDenied => 'Se denegó el acceso al micrófono.';

  @override
  String get voiceInputSpeak => 'Hablar en su lugar';

  @override
  String get voiceInputListening => 'Escuchando…';

  @override
  String get voiceInputPermissionDenied =>
      'Se requiere acceso al micrófono para la entrada de voz.';
}

/// The translations for Spanish Castilian, as used in Colombia (`es_CO`).
class AppLocalizationsEsCo extends AppLocalizationsEs {
  AppLocalizationsEsCo() : super('es_CO');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Elige tu idioma';

  @override
  String get languageSelectSub =>
      'Puedes cambiar esto más tarde en Configuración';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos los idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Buscar…';

  @override
  String get planBasic => 'Estándar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientación diaria';

  @override
  String get categorySlot02 => 'Fe y confianza';

  @override
  String get categorySlot03 => 'Reflexión sobre la oración';

  @override
  String get categorySlot04 => 'Paciencia y esperanza';

  @override
  String get categorySlot05 => 'Busca el perdón';

  @override
  String get categorySlot06 => 'Misericordia y compasión';

  @override
  String get categorySlot07 => 'Fe y fortaleza';

  @override
  String get categorySlot08 => 'Corazón agradecido';

  @override
  String get categorySlot09 => 'Propósito de vida';

  @override
  String get categorySlot10 => 'Vínculos familiares';

  @override
  String get categorySlot11 => 'Paz interior';

  @override
  String get categorySlot12 => 'Sabiduría profética';

  @override
  String get categorySlot13 => 'Buen carácter';

  @override
  String get categorySlot14 => 'Resiste la tentación';

  @override
  String get categorySlot15 => 'Dhikr vespertino';

  @override
  String get categoryCustom => 'Reflexión personal';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria sea a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toda la alabanza es para Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah es el más grande';

  @override
  String get quranVerseHeartAtRest =>
      'Ciertamente, en el recuerdo de Allah encuentran descanso los corazones.';

  @override
  String get promptHint =>
      'Toca una categoría para obtener orientación y reflexión islámica';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get settingsLanguage => 'Configuración de idioma';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get chooseLanguage => 'Elige tu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '$count palabra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opciones';

  @override
  String get newCta => 'Nuevo';

  @override
  String get actionsTitle => '¿Qué te gustaría hacer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartir';

  @override
  String get close => 'Cerrar';

  @override
  String get copiedToast => 'Copiado al portapapeles';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No se pudo generar una nueva respuesta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n¿Deseas intentarlo de nuevo?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Intentar de nuevo';

  @override
  String get authTitle => 'Crear tu cuenta';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get signInEmail => 'Iniciar sesión con correo electrónico';

  @override
  String get upgradeWithApple => 'Continuar con Apple';

  @override
  String get mustAccept =>
      'Debes aceptar los Términos y reconocer la Política de Privacidad.';

  @override
  String get termsLabel => 'Acepto los Términos de Servicio';

  @override
  String get privacyLabel => 'He leído la Política de Privacidad';

  @override
  String get marketingOptIn => 'Acepto recibir noticias y ofertas';

  @override
  String get openTerms => 'Términos de Servicio';

  @override
  String get openPrivacy => 'Política de Privacidad';

  @override
  String get accountSection => 'Cuenta';

  @override
  String get guestMode => 'Modo invitado';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get upgradeHint =>
      'Guarda tus reflexiones en todos los dispositivos creando una cuenta.';

  @override
  String get upgradeWithGoogle => 'Continuar con Google';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get snackUpgraded => 'Cuenta mejorada con Google ✅';

  @override
  String get snackSignedIn => 'Sesión iniciada con Google ✅';

  @override
  String get snackSignedOut => 'Sesión cerrada';

  @override
  String get snackSignedInApple => 'Sesión iniciada con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sesión iniciada con Google ✅';

  @override
  String get snackUpgradedApple => 'Cuenta mejorada con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cuenta mejorada con Google ✅';

  @override
  String get historyTitle => 'Reflexiones anteriores';

  @override
  String get historyOpenCta => 'Reflexiones anteriores';

  @override
  String get historyEmpty => 'Sin reflexiones guardadas aún.';

  @override
  String get historyDeleteTitle => '¿Eliminar reflexión?';

  @override
  String get historyDeleteBody =>
      'Esto eliminará permanentemente el elemento seleccionado.';

  @override
  String get deleteCta => 'Eliminar';

  @override
  String get historyButton => 'Reflexiones anteriores';

  @override
  String get historyEmptyTitle => 'Sin reflexiones aún';

  @override
  String get historyEmptyBody =>
      'Genera algo primero — tus elementos guardados aparecerán aquí.';

  @override
  String get historyDelete => 'Eliminar';

  @override
  String get footerTitle => 'Con Wilaya, Iman y Sabr';

  @override
  String get footerSubtitle => 'Una oración a la vez';

  @override
  String get genericErrorSnack =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get upgradeAccountCta =>
      'Guarda tus reflexiones en todos los dispositivos – crea una cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get exportData => 'Exportar mis datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      '¡Vamos! 🐯\nAyara necesita un momento antes del siguiente…';

  @override
  String get rateDailyLimit =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has usado todas tus reflexiones.\nRecarga o actualiza a Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloquea características premium, categorías futuras y una insignia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tus reflexiones se acabaron ahora. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No se pudo verificar tus reflexiones: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo salió mal al verificar tus reflexiones.';

  @override
  String get aiFallbackGeneric =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get limitSectionTitle => 'Reflexiones';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexiones restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Cargando…';

  @override
  String get limitLoadingLabelDescription =>
      'Se muestra en la tarjeta de reflexiones mientras se obtienen las estadísticas de uso.';

  @override
  String get aiLimitTitle => 'Reflexiones';

  @override
  String get aiLimitSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexiones';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexiones restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Cargando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Se muestra mientras se obtienen las estadísticas de reflexiones.';

  @override
  String get creditsTitle => 'Reflexiones';

  @override
  String get creditsSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get settingsDeleteTitle => 'Eliminar cuenta';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente tu cuenta y todos los datos asociados.';

  @override
  String get settingsDeleteButtonLabel => 'Eliminar mi cuenta';

  @override
  String get settingsDeleteDialogTitle => '¿Eliminar cuenta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta acción es permanente y no se puede deshacer.\n\nTodos tus chats, historial e información de cuenta serán eliminados.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Eliminar';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo ya está vinculado a otra cuenta. Por favor inicia sesión con la cuenta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloquea la experiencia completa de Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Estás en Wilaya. ¿Necesitas más reflexiones?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiones: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Las compras no están disponibles en este momento.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sesión para comprar reflexiones o desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Procesando…';

  @override
  String get premiumRestoreHintTitle =>
      '¿Ya compraste Wilaya o reflexiones en este dispositivo u otro?';

  @override
  String get premiumRestoreHintBody => 'Restaura tus compras si no aparecen.';

  @override
  String get premiumBuyCredits200 => 'Comprar 200 reflexiones';

  @override
  String get premiumBuyCredits400 => 'Comprar 400 reflexiones';

  @override
  String get premiumBecomePremiumOneTime => 'Actualizar al modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puedes recargar con reflexiones adicionales cuando las necesites.';

  @override
  String get premiumUpgradeCta => 'Actualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoría solo está disponible para usuarios de Wilaya. Actualiza en Configuración para desbloquear todo el contenido premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloquea Wilaya para obtener reflexiones adicionales, acceder a categorías premium y continuar cuando necesites orientación.';

  @override
  String get premiumBenefitsPremium =>
      'Estás en modo Wilaya. Si te estás quedando corto, agrega reflexiones adicionales y continúa sin interrupciones.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Agregar 1000 reflexiones';

  @override
  String get premiumBadge => 'Wilaya activo';

  @override
  String get premiumLoadingStore => 'Cargando tienda…';

  @override
  String get premiumProductNotAvailable =>
      'Este producto aún no está disponible en la tienda. Intenta más tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo salió mal con la compra. Por favor intenta de nuevo.';

  @override
  String get premiumBuyCredits100 => 'Agregar 100 reflexiones';

  @override
  String get premiumFeatureLocked =>
      'Desbloquea Wilaya para acceder a esta función.';

  @override
  String get lockedCategoriesHint =>
      'Algunas categorías están reservadas para miembros de Wilaya. Desbloquéalas para explorar cada reflexión en tu viaje.';

  @override
  String get freePlanBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get freePlanBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get graceBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get graceBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sesión para usar Ayara y tus reflexiones.';

  @override
  String get guestNoCreditsTitle => 'Modo invitado';

  @override
  String get guestNoCreditsBody =>
      'Como invitado puedes explorar la aplicación, pero no puedes usar reflexiones. Inicia sesión más tarde en Configuración para usar reflexiones y desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Iniciar sesión en su lugar';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Cuenta eliminada';

  @override
  String get accountDeleteSuccessBody =>
      'Tu cuenta y los datos asociados han sido eliminados exitosamente.';

  @override
  String get accountDeleteSuccessClose => 'Cerrar';

  @override
  String get accountDeleteErrorTitle => 'No se pudo eliminar la cuenta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticación fue cancelada. Por favor inicia sesión de nuevo e intenta la eliminación.';

  @override
  String get accountDeleteReauthRequired =>
      'La eliminación de cuenta requiere un inicio de sesión reciente. Por favor cierra sesión, inicia sesión de nuevo, e intenta de nuevo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta acción es permanente y no se puede deshacer. Todos los datos asociados a tu cuenta serán eliminados.';

  @override
  String get dailyGraceTitle => 'Orientación diaria';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DEL DÍA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓN VESPERTINA';

  @override
  String get dailyGraceCopiedToast => 'Verso copiado al portapapeles';

  @override
  String get locationConsentLabel =>
      'Permitir que Ayara use mi ubicación para la dirección de la Qibla y horarios de oración';

  @override
  String get locationConsentHint =>
      'Se usa solo para estas funciones. Tu ubicación nunca se comparte ni se almacena.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta cualquier cosa sobre fe, oración, vida o práctica islámica y recibe orientación enraizada en el Corán y las enseñanzas de Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Escribe tu pregunta aquí…';

  @override
  String get askPageSubmitCta => 'Preguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor escribe una pregunta primero.';

  @override
  String get askResultYourQuestion => 'Tu pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Enfrentando la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira tu teléfono hasta que la aguja dorada apunte hacia arriba.\nEsa dirección apunta a la Qibla (La Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'La señal GPS es débil. Ve al exterior e intenta de nuevo.';

  @override
  String get qiblaRetry => 'Intentar de nuevo';

  @override
  String get qiblaTitle => 'Dirección de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ubicación requerida';

  @override
  String get qiblaLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular la dirección de la Kaaba en la Meca desde donde estés.';

  @override
  String get qiblaOpenSettings => 'Abrir configuración';

  @override
  String get qiblaCompassLoading => 'Encontrando tu posición…';

  @override
  String get qiblaTowardMecca => 'Hacia la Meca';

  @override
  String get prayerTimesTitle => 'Horarios de oración';

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
  String get prayerTimesLocationNeededTitle => 'Ubicación requerida';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular los horarios de oración precisos para tu ciudad.';

  @override
  String get prayerTimesNextLabel => 'Siguiente';

  @override
  String get prayerTimesDoneLabel => 'Listo';

  @override
  String get monthlyPrayerTimesTitle => 'Horarios de oración mensuales';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver mes completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mes';

  @override
  String get monthlyPrayerTimesDayHeader => 'Día';

  @override
  String get sharePrayerTimes => 'Compartir horarios de oración';

  @override
  String get notificationsSectionTitle => 'Notificaciones';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatorios de oración, eventos del calendario y más';

  @override
  String get dailyReflectionReminderTitle => 'Reflexión diaria';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatorio diario suave para abrir Ayara y conectar con tu fe.';

  @override
  String get dailyReflectionReminderEnable => 'Habilitar recordatorio diario';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatorio';

  @override
  String get prayerNotificationsTitle => 'Recordatorios de oración';

  @override
  String get prayerNotificationsDescription =>
      'Recibe un recordatorio suave antes de cada hora de oración para mantenerte conectado durante el día.';

  @override
  String get prayerNotificationsEnable => 'Habilitar recordatorios de oración';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configuración de notificaciones';

  @override
  String get prayerNotificationsDenied =>
      'Las notificaciones están deshabilitadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ve a Configuración y permite notificaciones para Ayara para recibir recordatorios de horarios de oración.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificaciones para horarios de oración';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oración del alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr es la oración de las mañanas de Ahlul Bayt. El Imam Ali (AS) dijo: Protege la oración del alba como proteges tu bien más preciado. Levántate, purifícate, y ponte ante Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oración del mediodía';

  @override
  String get prayerNotifBodyDhuhr =>
      'Los Imames de Ahlul Bayt apreciaban cada momento de recordatorio. Pausa tu día, combina Dhuhr con Asr si es necesario, y devuelve tu corazón a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oración de la tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Protege la oración, es el pacto entre tú y Allah. Ha llegado la hora de Asr — no dejes que pase sin recordatorio.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oración del atardecer';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol se ha puesto — un momento que Ahlul Bayt consideraba sagrado para la súplica. Ofrece Maghrib y abre tus manos a Allah en dua antes de que comience la noche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oración de la noche';

  @override
  String get prayerNotifBodyIsha =>
      'Termina tu día en compañía de Allah. Los Imames alentaban Salat al-Layl después de Isha — pero primero, completa tu Isha y cierra el día con Su recordatorio.';

  @override
  String get outOfReflectionsBannerText => 'Has usado todas tus reflexiones';

  @override
  String get outOfReflectionsBannerCta => 'Obtener más';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completado 100 recordatorios de Allah. Que sean una luz para tu corazón.';

  @override
  String get disclaimerTitle => 'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerBody =>
      'Ayara proporciona reflexiones islámicas, recordatorios y contenido espiritual para apoyar tu viaje personal de fe, enraizado en el Corán y las enseñanzas de Ahlul Bayt. Este contenido se ofrece únicamente con propósitos informativos e inspiradores.\n\nAyara no reemplaza la erudición calificada.\nLa orientación en esta aplicación no es un sustituto de un erudito islámico competente, marja\', o maestro teológicamente capacitado. En el Islam Shia, la orientación religiosa está enraizada en la escuela Ja\'fari de jurisprudencia (fiqh) y la tradición de seguir a un Marja\' viviente (fuente de emulación) — un jurista calificado cuyas decisiones guían a los creyentes en la práctica religiosa. Si tienes preguntas sobre decisiones religiosas, asuntos halal e haram, u obligaciones religiosas personales, por favor busca consejo de un Marja\' calificado o un erudito en tu comunidad.\n\nEsta aplicación no emite decisiones religiosas.\nAyara no hace determinaciones autorizadas sobre asuntos de fiqh u obligaciones religiosas personales. Nada aquí debe ser tratado como una fatwa o instrucción religiosa vinculante.\n\nLa centralidad de Ahlul Bayt.\nEn el Islam Shia, el Profeta Muhammad ﷺ y su Familia Purificada — Ahlul Bayt — son los guías autorizados de la comunidad islámica después del Corán. Los doce Imames de Ahlul Bayt son los intérpretes divinamente designados de la enseñanza islámica. El contenido en esta aplicación refleja esta tradición y busca honrarla fielmente.\n\nAsuntos de la comunidad.\nEsta aplicación busca alentar tu compromiso con la fe mientras respeta profundamente el papel vital de tu mezquita local, centro islámico y comunidad religiosa. Te alentamos a mantenerte conectado y aprender de maestros calificados cerca de ti.';

  @override
  String get disclaimerClose => 'Entiendo';

  @override
  String get disclaimerInfoTooltip =>
      'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo para propósitos informativos. Toca para leer el descargo completo.';

  @override
  String get disclaimerSectionHeader =>
      'Descargo de responsabilidad sobre orientación';

  @override
  String get navHome => 'Inicio';

  @override
  String get navReflect => 'Reflexionar';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'HOY';

  @override
  String get dashboardComingUp => 'Próximamente';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acceso rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientación';

  @override
  String get quickActionPrayerTimes => 'Horarios de oración';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Haz cualquier pregunta islámica y recibe una respuesta reflexiva y guiada.';

  @override
  String get askAyaraHint => 'p.ej. ¿Cuál es el significado del Ramadán?';

  @override
  String get askAyaraSubmit => 'Preguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabiduría del día';

  @override
  String get calendarScreenTitle => 'Calendario islámico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiones próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatorios de ocasiones';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado la noche anterior a cada ocasión';

  @override
  String get calendarNotifPermissionDenied =>
      'Permiso de notificación denegado. Habilítalo en la configuración de tu dispositivo.';

  @override
  String get calendarNoEvents => 'No se encontraron eventos próximos.';

  @override
  String get calendarAddToPhone => 'Agregar al Calendario del Teléfono';

  @override
  String get calendarAddedToPhone => 'Agregado al Calendario';

  @override
  String get calendarCountdownToday => 'HOY';

  @override
  String get calendarCountdownTomorrow => 'MAÑANA';

  @override
  String calendarCountdownDays(int days) {
    return 'en $days días';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Días de Muharram — recuerda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — días de luto y reflexión';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — cuarenta días de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camino a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — el amanecer de la revelación';

  @override
  String get calendarSeasonMidShaban =>
      'Mitad de Sha\'ban — cumpleaños del Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadán Mubarak — el mes del Corán';

  @override
  String get calendarSeasonGhadir => '¡Eid al-Ghadir Mubarak!';

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
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas y Ziyarat';

  @override
  String get duasSearchHint => 'Buscar duas, ziyarat…';

  @override
  String get duasFilterAll => 'Todo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas y ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No se encontraron duas.';

  @override
  String get duaCategoryDaily => 'Diaria';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiones';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nacimiento';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ocasión';

  @override
  String get duaCopyTooltip => 'Copiar traducción';

  @override
  String get duaToggleTransliteration => 'Transliteración';

  @override
  String get duaToggleTranslation => 'Traducción';

  @override
  String get duaAskAiLabel => 'Pide a Ayara que explique esta dua';

  @override
  String get duaAskAiLockedLabel => 'Pide a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Las explicaciones de Ayara están disponibles para miembros de Wilaya. Actualiza en Configuración.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pide a Ayara que explique \"$name\" — ¡próximamente!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada al portapapeles.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah es el más grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toda la alabanza pertenece a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria sea a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah acepte tu dhikr.';

  @override
  String get tasbihTapHint => 'Toca en cualquier lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guía de oración';

  @override
  String get tasbihatScreenSubtitle => 'LAS GLORIFICACIONES DE LA ORACIÓN';

  @override
  String get tasbihatScreenDescription =>
      'Una guía completa de las glorificaciones recitadas durante y después de las oraciones diarias — siguiendo la tradición de Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante el 3º y 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudencia Shia, el Tasbiḥāt al-Arbaʿa reemplaza la Surah al-Fatiha en el 3º y 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. Es obligatorio (wājib) recitarlo una vez, y recomendado (mustaḥabb) recitarlo tres veces.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria sea a Allah · Toda la alabanza es para Allah\nNo hay dios sino Allah · Allah es el más grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitación completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que tu oración sea aceptada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toca después de cada recitación';

  @override
  String get tasbihatZahraSubtitle => 'Después de cada oración · 100 cuentas';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La Señora Fátima al-Zahra (sa) pidió al Profeta ﷺ un sirviente. Él dijo: \"¿No te guío a algo mejor? Recita Subḥānallāh 33 veces, Alḥamdulillāh 33 veces, y Allāhu Akbar 34 veces después de cada oración. Eso es mejor para ti que un sirviente.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Después de completar tu oración';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Después de cada oración obligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quien recita Āyat al-Kursī después de cada oración obligatoria, nada se interpone entre él y el paraíso excepto la muerte. El Imam al-Bāqir (a) dijo que es uno de los versículos más grandes del Corán.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Después de cada oración · sella todas las súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saludos al Profeta ﷺ y su familia purificada (Āl Muḥammad) se recomienda para sellar cada dua. El Imam al-Ṣādiq (a) dijo: \"Cualquier dua se suspende hasta que envíes ṣalawāt sobre Muḥammad y su familia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Después de cada oración · por el Imam de nuestro tiempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseñado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua por la reaparición del Imam al-Mahdī (af), el duodécimo Imam, enseñada por su padre. A menudo es recitada por muchos musulmanes chiitas después de la oración como un acto de devoción al Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la Señora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Después de Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'El Imam al-Bāqir (a) dijo que recitar Tasbīḥ al-Zahrā después de Isha antes de dormir es mejor que 1000 rakʿahs de oración opcional. Su luz asciende a los cielos.';

  @override
  String get tasbihFatimaGiftPre => 'Un regalo del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado después de cada oración';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORACIONES';

  @override
  String get prayerTrackerPrayed => 'Orado';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas las oraciones completadas hoy. Que Allah acepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completado hoy';

  @override
  String get dhikrTrackerNotDoneToday => 'No hecho hoy';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get dhikrReminderTitle => 'Recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatorio diario suave para recitar tu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Habilitar recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatorio';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith diario';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartir este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVía Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Siguiente';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Los Catorce Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Señora Fátima y los Doce Imames — los guías purificados e infalibles en el Islam chiita duodecimano';

  @override
  String get imamLabelBorn => 'Nacido';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Estado';

  @override
  String get imamSectionBiography => 'BIOGRAFÍA';

  @override
  String get imamSectionFamousSaying => 'DICHO FAMOSO';

  @override
  String get imamRoleProphet => 'El Profeta Final';

  @override
  String get imamRoleInfallible => 'El Infalible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3er Imam';

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
  String get duaAudioScreenTitle => 'Escuchar Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una dua para escuchar. Toca el mosaico para reproducir o pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'El audio para esta dua estará disponible en una próxima actualización.';

  @override
  String get duaAudioClose => 'Cerrar';

  @override
  String get duaAudioError =>
      'No se pudo cargar el audio. Por favor verifica tu conexión.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasión';

  @override
  String get duaAudioMetaDuration => 'Duración';

  @override
  String get quickActionDailyHadith => 'Hadith diario';

  @override
  String get quickAction14Masumeen => 'Catorce Infallibles';

  @override
  String get quickActionListenDuas => 'Escuchar';

  @override
  String get quickActionTasbihat => 'Guía de oración';

  @override
  String get pilgrimageSectionTitle => 'El viaje sagrado';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guías completas para el Hajj y la Umrah — la peregrinación a la Casa Sagrada de Allah en La Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El quinto pilar del Islam';

  @override
  String get hajjCardDescription =>
      'La gran peregrinación anual — obligatoria una vez en la vida para cada musulmán capaz';

  @override
  String get hajjScreenTitle => 'Guía de Hajj';

  @override
  String get hajjScreenSubtitle => 'Guía paso a paso de la gran peregrinación';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'La peregrinación menor';

  @override
  String get umrahCardDescription =>
      'Un viaje espiritual profundamente gratificante que se puede realizar en cualquier época del año';

  @override
  String get umrahScreenTitle => 'Guía de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guía paso a paso de la peregrinación menor';

  @override
  String get pilgrimageStepsTitle => 'Rituales y pasos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para este paso';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total pasos';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Muchos peregrinos chiitas también viajan a Medina para la ziyarat del Profeta Muhammad (SAW) en la Masjid al-Nabawi y las tumbas en Jannat al-Baqi. Estas visitas tienen un profundo significado espiritual, aunque no son en sí mismas ritos de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj es el quinto pilar del Islam, obligatorio una vez en la vida para todo musulmán que sea física y financieramente capaz. Para la mayoría de los peregrinos chiitas duodecimanos hoy en día, esto significa Hajj al-Tamattu\', realizado en el mes de Dhul Hijjah siguiendo los pasos del Profeta Ibrahim (AS), su hijo Ismail (AS) y la Señora Hajar. Esta guía sigue el esquema jafari de los ritos, mientras que la ziyarat en Medina sigue siendo un viaje profundamente apreciado antes o después del Hajj.';

  @override
  String get umrahIntro =>
      'La Umrah es la peregrinación menor a La Meca y, a diferencia del Hajj, se puede realizar en cualquier época del año. Aunque no es obligatoria, tiene una recompensa espiritual inmensa y se considera un acto de adoración altamente recomendado. Comparte varios rituales con el Hajj pero es más corta, consistiendo en cuatro ritos principales.';

  @override
  String get voiceInputTitle => 'Entrada de voz';

  @override
  String get voiceInputMicTitle => 'Micrófono';

  @override
  String get voiceInputMicSubtitle =>
      'Habla tu entrada a Ask Ayara en lugar de escribir.';

  @override
  String get voiceInputMicDenied => 'Se denegó el acceso al micrófono.';

  @override
  String get voiceInputSpeak => 'Hablar en su lugar';

  @override
  String get voiceInputListening => 'Escuchando…';

  @override
  String get voiceInputPermissionDenied =>
      'Se requiere acceso al micrófono para la entrada de voz.';
}

/// The translations for Spanish Castilian, as used in Spain (`es_ES`).
class AppLocalizationsEsEs extends AppLocalizationsEs {
  AppLocalizationsEsEs() : super('es_ES');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Elige tu idioma';

  @override
  String get languageSelectSub =>
      'Puedes cambiar esto más tarde en Configuración';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos los idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Buscar…';

  @override
  String get planBasic => 'Estándar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientación diaria';

  @override
  String get categorySlot02 => 'Fe y confianza';

  @override
  String get categorySlot03 => 'Reflexión sobre la oración';

  @override
  String get categorySlot04 => 'Paciencia y esperanza';

  @override
  String get categorySlot05 => 'Busca el perdón';

  @override
  String get categorySlot06 => 'Misericordia y compasión';

  @override
  String get categorySlot07 => 'Fe y fortaleza';

  @override
  String get categorySlot08 => 'Corazón agradecido';

  @override
  String get categorySlot09 => 'Propósito de vida';

  @override
  String get categorySlot10 => 'Vínculos familiares';

  @override
  String get categorySlot11 => 'Paz interior';

  @override
  String get categorySlot12 => 'Sabiduría profética';

  @override
  String get categorySlot13 => 'Buen carácter';

  @override
  String get categorySlot14 => 'Resiste la tentación';

  @override
  String get categorySlot15 => 'Dhikr vespertino';

  @override
  String get categoryCustom => 'Reflexión personal';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria sea a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toda la alabanza es para Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah es el más grande';

  @override
  String get quranVerseHeartAtRest =>
      'Ciertamente, en el recuerdo de Allah encuentran descanso los corazones.';

  @override
  String get promptHint =>
      'Toca una categoría para obtener orientación y reflexión islámica';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get settingsLanguage => 'Configuración de idioma';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get chooseLanguage => 'Elige tu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '$count palabra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opciones';

  @override
  String get newCta => 'Nuevo';

  @override
  String get actionsTitle => '¿Qué te gustaría hacer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartir';

  @override
  String get close => 'Cerrar';

  @override
  String get copiedToast => 'Copiado al portapapeles';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No se pudo generar una nueva respuesta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n¿Deseas intentarlo de nuevo?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Intentar de nuevo';

  @override
  String get authTitle => 'Crear tu cuenta';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get signInEmail => 'Iniciar sesión con correo electrónico';

  @override
  String get upgradeWithApple => 'Continuar con Apple';

  @override
  String get mustAccept =>
      'Debes aceptar los Términos y reconocer la Política de Privacidad.';

  @override
  String get termsLabel => 'Acepto los Términos de Servicio';

  @override
  String get privacyLabel => 'He leído la Política de Privacidad';

  @override
  String get marketingOptIn => 'Acepto recibir noticias y ofertas';

  @override
  String get openTerms => 'Términos de Servicio';

  @override
  String get openPrivacy => 'Política de Privacidad';

  @override
  String get accountSection => 'Cuenta';

  @override
  String get guestMode => 'Modo invitado';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get upgradeHint =>
      'Guarda tus reflexiones en todos los dispositivos creando una cuenta.';

  @override
  String get upgradeWithGoogle => 'Continuar con Google';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get snackUpgraded => 'Cuenta mejorada con Google ✅';

  @override
  String get snackSignedIn => 'Sesión iniciada con Google ✅';

  @override
  String get snackSignedOut => 'Sesión cerrada';

  @override
  String get snackSignedInApple => 'Sesión iniciada con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sesión iniciada con Google ✅';

  @override
  String get snackUpgradedApple => 'Cuenta mejorada con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cuenta mejorada con Google ✅';

  @override
  String get historyTitle => 'Reflexiones anteriores';

  @override
  String get historyOpenCta => 'Reflexiones anteriores';

  @override
  String get historyEmpty => 'Sin reflexiones guardadas aún.';

  @override
  String get historyDeleteTitle => '¿Eliminar reflexión?';

  @override
  String get historyDeleteBody =>
      'Esto eliminará permanentemente el elemento seleccionado.';

  @override
  String get deleteCta => 'Eliminar';

  @override
  String get historyButton => 'Reflexiones anteriores';

  @override
  String get historyEmptyTitle => 'Sin reflexiones aún';

  @override
  String get historyEmptyBody =>
      'Genera algo primero — tus elementos guardados aparecerán aquí.';

  @override
  String get historyDelete => 'Eliminar';

  @override
  String get footerTitle => 'Con Wilaya, Iman y Sabr';

  @override
  String get footerSubtitle => 'Una oración a la vez';

  @override
  String get genericErrorSnack =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get upgradeAccountCta =>
      'Guarda tus reflexiones en todos los dispositivos – crea una cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get exportData => 'Exportar mis datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      '¡Vamos! 🐯\nAyara necesita un momento antes del siguiente…';

  @override
  String get rateDailyLimit =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has usado todas tus reflexiones.\nRecarga o actualiza a Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloquea características premium, categorías futuras y una insignia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tus reflexiones se acabaron ahora. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No se pudo verificar tus reflexiones: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo salió mal al verificar tus reflexiones.';

  @override
  String get aiFallbackGeneric =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get limitSectionTitle => 'Reflexiones';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexiones restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Cargando…';

  @override
  String get limitLoadingLabelDescription =>
      'Se muestra en la tarjeta de reflexiones mientras se obtienen las estadísticas de uso.';

  @override
  String get aiLimitTitle => 'Reflexiones';

  @override
  String get aiLimitSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexiones';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexiones restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Cargando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Se muestra mientras se obtienen las estadísticas de reflexiones.';

  @override
  String get creditsTitle => 'Reflexiones';

  @override
  String get creditsSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get settingsDeleteTitle => 'Eliminar cuenta';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente tu cuenta y todos los datos asociados.';

  @override
  String get settingsDeleteButtonLabel => 'Eliminar mi cuenta';

  @override
  String get settingsDeleteDialogTitle => '¿Eliminar cuenta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta acción es permanente y no se puede deshacer.\n\nTodos tus chats, historial e información de cuenta serán eliminados.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Eliminar';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo ya está vinculado a otra cuenta. Por favor inicia sesión con la cuenta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloquea la experiencia completa de Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Estás en Wilaya. ¿Necesitas más reflexiones?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiones: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Las compras no están disponibles en este momento.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sesión para comprar reflexiones o desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Procesando…';

  @override
  String get premiumRestoreHintTitle =>
      '¿Ya compraste Wilaya o reflexiones en este dispositivo u otro?';

  @override
  String get premiumRestoreHintBody => 'Restaura tus compras si no aparecen.';

  @override
  String get premiumBuyCredits200 => 'Comprar 200 reflexiones';

  @override
  String get premiumBuyCredits400 => 'Comprar 400 reflexiones';

  @override
  String get premiumBecomePremiumOneTime => 'Actualizar al modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puedes recargar con reflexiones adicionales cuando las necesites.';

  @override
  String get premiumUpgradeCta => 'Actualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoría solo está disponible para usuarios de Wilaya. Actualiza en Configuración para desbloquear todo el contenido premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloquea Wilaya para obtener reflexiones adicionales, acceder a categorías premium y continuar cuando necesites orientación.';

  @override
  String get premiumBenefitsPremium =>
      'Estás en modo Wilaya. Si te estás quedando corto, agrega reflexiones adicionales y continúa sin interrupciones.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Agregar 1000 reflexiones';

  @override
  String get premiumBadge => 'Wilaya activo';

  @override
  String get premiumLoadingStore => 'Cargando tienda…';

  @override
  String get premiumProductNotAvailable =>
      'Este producto aún no está disponible en la tienda. Intenta más tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo salió mal con la compra. Por favor intenta de nuevo.';

  @override
  String get premiumBuyCredits100 => 'Agregar 100 reflexiones';

  @override
  String get premiumFeatureLocked =>
      'Desbloquea Wilaya para acceder a esta función.';

  @override
  String get lockedCategoriesHint =>
      'Algunas categorías están reservadas para miembros de Wilaya. Desbloquéalas para explorar cada reflexión en tu viaje.';

  @override
  String get freePlanBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get freePlanBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get graceBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get graceBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sesión para usar Ayara y tus reflexiones.';

  @override
  String get guestNoCreditsTitle => 'Modo invitado';

  @override
  String get guestNoCreditsBody =>
      'Como invitado puedes explorar la aplicación, pero no puedes usar reflexiones. Inicia sesión más tarde en Configuración para usar reflexiones y desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Iniciar sesión en su lugar';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Cuenta eliminada';

  @override
  String get accountDeleteSuccessBody =>
      'Tu cuenta y los datos asociados han sido eliminados exitosamente.';

  @override
  String get accountDeleteSuccessClose => 'Cerrar';

  @override
  String get accountDeleteErrorTitle => 'No se pudo eliminar la cuenta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticación fue cancelada. Por favor inicia sesión de nuevo e intenta la eliminación.';

  @override
  String get accountDeleteReauthRequired =>
      'La eliminación de cuenta requiere un inicio de sesión reciente. Por favor cierra sesión, inicia sesión de nuevo, e intenta de nuevo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta acción es permanente y no se puede deshacer. Todos los datos asociados a tu cuenta serán eliminados.';

  @override
  String get dailyGraceTitle => 'Orientación diaria';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DEL DÍA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓN VESPERTINA';

  @override
  String get dailyGraceCopiedToast => 'Verso copiado al portapapeles';

  @override
  String get locationConsentLabel =>
      'Permitir que Ayara use mi ubicación para la dirección de la Qibla y horarios de oración';

  @override
  String get locationConsentHint =>
      'Se usa solo para estas funciones. Tu ubicación nunca se comparte ni se almacena.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta cualquier cosa sobre fe, oración, vida o práctica islámica y recibe orientación enraizada en el Corán y las enseñanzas de Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Escribe tu pregunta aquí…';

  @override
  String get askPageSubmitCta => 'Preguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor escribe una pregunta primero.';

  @override
  String get askResultYourQuestion => 'Tu pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Enfrentando la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira tu teléfono hasta que la aguja dorada apunte hacia arriba.\nEsa dirección apunta a la Qibla (La Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'La señal GPS es débil. Ve al exterior e intenta de nuevo.';

  @override
  String get qiblaRetry => 'Intentar de nuevo';

  @override
  String get qiblaTitle => 'Dirección de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ubicación requerida';

  @override
  String get qiblaLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular la dirección de la Kaaba en la Meca desde donde estés.';

  @override
  String get qiblaOpenSettings => 'Abrir configuración';

  @override
  String get qiblaCompassLoading => 'Encontrando tu posición…';

  @override
  String get qiblaTowardMecca => 'Hacia la Meca';

  @override
  String get prayerTimesTitle => 'Horarios de oración';

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
  String get prayerTimesLocationNeededTitle => 'Ubicación requerida';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular los horarios de oración precisos para tu ciudad.';

  @override
  String get prayerTimesNextLabel => 'Siguiente';

  @override
  String get prayerTimesDoneLabel => 'Listo';

  @override
  String get monthlyPrayerTimesTitle => 'Horarios de oración mensuales';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver mes completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mes';

  @override
  String get monthlyPrayerTimesDayHeader => 'Día';

  @override
  String get sharePrayerTimes => 'Compartir horarios de oración';

  @override
  String get notificationsSectionTitle => 'Notificaciones';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatorios de oración, eventos del calendario y más';

  @override
  String get dailyReflectionReminderTitle => 'Reflexión diaria';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatorio diario suave para abrir Ayara y conectar con tu fe.';

  @override
  String get dailyReflectionReminderEnable => 'Habilitar recordatorio diario';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatorio';

  @override
  String get prayerNotificationsTitle => 'Recordatorios de oración';

  @override
  String get prayerNotificationsDescription =>
      'Recibe un recordatorio suave antes de cada hora de oración para mantenerte conectado durante el día.';

  @override
  String get prayerNotificationsEnable => 'Habilitar recordatorios de oración';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configuración de notificaciones';

  @override
  String get prayerNotificationsDenied =>
      'Las notificaciones están deshabilitadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ve a Configuración y permite notificaciones para Ayara para recibir recordatorios de horarios de oración.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificaciones para horarios de oración';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oración del alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr es la oración de las mañanas de Ahlul Bayt. El Imam Ali (AS) dijo: Protege la oración del alba como proteges tu bien más preciado. Levántate, purifícate, y ponte ante Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oración del mediodía';

  @override
  String get prayerNotifBodyDhuhr =>
      'Los Imames de Ahlul Bayt apreciaban cada momento de recordatorio. Pausa tu día, combina Dhuhr con Asr si es necesario, y devuelve tu corazón a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oración de la tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Protege la oración, es el pacto entre tú y Allah. Ha llegado la hora de Asr — no dejes que pase sin recordatorio.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oración del atardecer';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol se ha puesto — un momento que Ahlul Bayt consideraba sagrado para la súplica. Ofrece Maghrib y abre tus manos a Allah en dua antes de que comience la noche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oración de la noche';

  @override
  String get prayerNotifBodyIsha =>
      'Termina tu día en compañía de Allah. Los Imames alentaban Salat al-Layl después de Isha — pero primero, completa tu Isha y cierra el día con Su recordatorio.';

  @override
  String get outOfReflectionsBannerText => 'Has usado todas tus reflexiones';

  @override
  String get outOfReflectionsBannerCta => 'Obtener más';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completado 100 recordatorios de Allah. Que sean una luz para tu corazón.';

  @override
  String get disclaimerTitle => 'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerBody =>
      'Ayara proporciona reflexiones islámicas, recordatorios y contenido espiritual para apoyar tu viaje personal de fe, enraizado en el Corán y las enseñanzas de Ahlul Bayt. Este contenido se ofrece únicamente con propósitos informativos e inspiradores.\n\nAyara no reemplaza la erudición calificada.\nLa orientación en esta aplicación no es un sustituto de un erudito islámico competente, marja\', o maestro teológicamente capacitado. En el Islam Shia, la orientación religiosa está enraizada en la escuela Ja\'fari de jurisprudencia (fiqh) y la tradición de seguir a un Marja\' viviente (fuente de emulación) — un jurista calificado cuyas decisiones guían a los creyentes en la práctica religiosa. Si tienes preguntas sobre decisiones religiosas, asuntos halal e haram, u obligaciones religiosas personales, por favor busca consejo de un Marja\' calificado o un erudito en tu comunidad.\n\nEsta aplicación no emite decisiones religiosas.\nAyara no hace determinaciones autorizadas sobre asuntos de fiqh u obligaciones religiosas personales. Nada aquí debe ser tratado como una fatwa o instrucción religiosa vinculante.\n\nLa centralidad de Ahlul Bayt.\nEn el Islam Shia, el Profeta Muhammad ﷺ y su Familia Purificada — Ahlul Bayt — son los guías autorizados de la comunidad islámica después del Corán. Los doce Imames de Ahlul Bayt son los intérpretes divinamente designados de la enseñanza islámica. El contenido en esta aplicación refleja esta tradición y busca honrarla fielmente.\n\nAsuntos de la comunidad.\nEsta aplicación busca alentar tu compromiso con la fe mientras respeta profundamente el papel vital de tu mezquita local, centro islámico y comunidad religiosa. Te alentamos a mantenerte conectado y aprender de maestros calificados cerca de ti.';

  @override
  String get disclaimerClose => 'Entiendo';

  @override
  String get disclaimerInfoTooltip =>
      'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo para propósitos informativos. Toca para leer el descargo completo.';

  @override
  String get disclaimerSectionHeader =>
      'Descargo de responsabilidad sobre orientación';

  @override
  String get navHome => 'Inicio';

  @override
  String get navReflect => 'Reflexionar';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'HOY';

  @override
  String get dashboardComingUp => 'Próximamente';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acceso rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientación';

  @override
  String get quickActionPrayerTimes => 'Horarios de oración';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Haz cualquier pregunta islámica y recibe una respuesta reflexiva y guiada.';

  @override
  String get askAyaraHint => 'p.ej. ¿Cuál es el significado del Ramadán?';

  @override
  String get askAyaraSubmit => 'Preguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabiduría del día';

  @override
  String get calendarScreenTitle => 'Calendario islámico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiones próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatorios de ocasiones';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado la noche anterior a cada ocasión';

  @override
  String get calendarNotifPermissionDenied =>
      'Permiso de notificación denegado. Habilítalo en la configuración de tu dispositivo.';

  @override
  String get calendarNoEvents => 'No se encontraron eventos próximos.';

  @override
  String get calendarAddToPhone => 'Agregar al Calendario del Teléfono';

  @override
  String get calendarAddedToPhone => 'Agregado al Calendario';

  @override
  String get calendarCountdownToday => 'HOY';

  @override
  String get calendarCountdownTomorrow => 'MAÑANA';

  @override
  String calendarCountdownDays(int days) {
    return 'en $days días';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Días de Muharram — recuerda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — días de luto y reflexión';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — cuarenta días de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camino a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — el amanecer de la revelación';

  @override
  String get calendarSeasonMidShaban =>
      'Mitad de Sha\'ban — cumpleaños del Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadán Mubarak — el mes del Corán';

  @override
  String get calendarSeasonGhadir => '¡Eid al-Ghadir Mubarak!';

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
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas y Ziyarat';

  @override
  String get duasSearchHint => 'Buscar duas, ziyarat…';

  @override
  String get duasFilterAll => 'Todo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas y ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No se encontraron duas.';

  @override
  String get duaCategoryDaily => 'Diaria';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiones';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nacimiento';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ocasión';

  @override
  String get duaCopyTooltip => 'Copiar traducción';

  @override
  String get duaToggleTransliteration => 'Transliteración';

  @override
  String get duaToggleTranslation => 'Traducción';

  @override
  String get duaAskAiLabel => 'Pide a Ayara que explique esta dua';

  @override
  String get duaAskAiLockedLabel => 'Pide a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Las explicaciones de Ayara están disponibles para miembros de Wilaya. Actualiza en Configuración.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pide a Ayara que explique \"$name\" — ¡próximamente!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada al portapapeles.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah es el más grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toda la alabanza pertenece a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria sea a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah acepte tu dhikr.';

  @override
  String get tasbihTapHint => 'Toca en cualquier lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guía de oración';

  @override
  String get tasbihatScreenSubtitle => 'LAS GLORIFICACIONES DE LA ORACIÓN';

  @override
  String get tasbihatScreenDescription =>
      'Una guía completa de las glorificaciones recitadas durante y después de las oraciones diarias — siguiendo la tradición de Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante el 3º y 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudencia Shia, el Tasbiḥāt al-Arbaʿa reemplaza la Surah al-Fatiha en el 3º y 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. Es obligatorio (wājib) recitarlo una vez, y recomendado (mustaḥabb) recitarlo tres veces.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria sea a Allah · Toda la alabanza es para Allah\nNo hay dios sino Allah · Allah es el más grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitación completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que tu oración sea aceptada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toca después de cada recitación';

  @override
  String get tasbihatZahraSubtitle => 'Después de cada oración · 100 cuentas';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La Señora Fátima al-Zahra (sa) pidió al Profeta ﷺ un sirviente. Él dijo: \"¿No te guío a algo mejor? Recita Subḥānallāh 33 veces, Alḥamdulillāh 33 veces, y Allāhu Akbar 34 veces después de cada oración. Eso es mejor para ti que un sirviente.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Después de completar tu oración';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Después de cada oración obligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quien recita Āyat al-Kursī después de cada oración obligatoria, nada se interpone entre él y el paraíso excepto la muerte. El Imam al-Bāqir (a) dijo que es uno de los versículos más grandes del Corán.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Después de cada oración · sella todas las súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saludos al Profeta ﷺ y su familia purificada (Āl Muḥammad) se recomienda para sellar cada dua. El Imam al-Ṣādiq (a) dijo: \"Cualquier dua se suspende hasta que envíes ṣalawāt sobre Muḥammad y su familia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Después de cada oración · por el Imam de nuestro tiempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseñado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua por la reaparición del Imam al-Mahdī (af), el duodécimo Imam, enseñada por su padre. A menudo es recitada por muchos musulmanes chiitas después de la oración como un acto de devoción al Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la Señora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Después de Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'El Imam al-Bāqir (a) dijo que recitar Tasbīḥ al-Zahrā después de Isha antes de dormir es mejor que 1000 rakʿahs de oración opcional. Su luz asciende a los cielos.';

  @override
  String get tasbihFatimaGiftPre => 'Un regalo del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado después de cada oración';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORACIONES';

  @override
  String get prayerTrackerPrayed => 'Orado';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas las oraciones completadas hoy. Que Allah acepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completado hoy';

  @override
  String get dhikrTrackerNotDoneToday => 'No hecho hoy';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get dhikrReminderTitle => 'Recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatorio diario suave para recitar tu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Habilitar recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatorio';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith diario';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartir este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVía Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Siguiente';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Los Catorce Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Señora Fátima y los Doce Imames — los guías purificados e infalibles en el Islam chiita duodecimano';

  @override
  String get imamLabelBorn => 'Nacido';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Estado';

  @override
  String get imamSectionBiography => 'BIOGRAFÍA';

  @override
  String get imamSectionFamousSaying => 'DICHO FAMOSO';

  @override
  String get imamRoleProphet => 'El Profeta Final';

  @override
  String get imamRoleInfallible => 'El Infalible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3er Imam';

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
  String get duaAudioScreenTitle => 'Escuchar Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una dua para escuchar. Toca el mosaico para reproducir o pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'El audio para esta dua estará disponible en una próxima actualización.';

  @override
  String get duaAudioClose => 'Cerrar';

  @override
  String get duaAudioError =>
      'No se pudo cargar el audio. Por favor verifica tu conexión.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasión';

  @override
  String get duaAudioMetaDuration => 'Duración';

  @override
  String get quickActionDailyHadith => 'Hadith diario';

  @override
  String get quickAction14Masumeen => 'Catorce Infallibles';

  @override
  String get quickActionListenDuas => 'Escuchar';

  @override
  String get quickActionTasbihat => 'Guía de oración';

  @override
  String get pilgrimageSectionTitle => 'El viaje sagrado';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guías completas para el Hajj y la Umrah — la peregrinación a la Casa Sagrada de Allah en La Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El quinto pilar del Islam';

  @override
  String get hajjCardDescription =>
      'La gran peregrinación anual — obligatoria una vez en la vida para cada musulmán capaz';

  @override
  String get hajjScreenTitle => 'Guía de Hajj';

  @override
  String get hajjScreenSubtitle => 'Guía paso a paso de la gran peregrinación';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'La peregrinación menor';

  @override
  String get umrahCardDescription =>
      'Un viaje espiritual profundamente gratificante que se puede realizar en cualquier época del año';

  @override
  String get umrahScreenTitle => 'Guía de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guía paso a paso de la peregrinación menor';

  @override
  String get pilgrimageStepsTitle => 'Rituales y pasos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para este paso';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total pasos';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Muchos peregrinos chiitas también viajan a Medina para la ziyarat del Profeta Muhammad (SAW) en la Masjid al-Nabawi y las tumbas en Jannat al-Baqi. Estas visitas tienen un profundo significado espiritual, aunque no son en sí mismas ritos de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj es el quinto pilar del Islam, obligatorio una vez en la vida para todo musulmán que sea física y financieramente capaz. Para la mayoría de los peregrinos chiitas duodecimanos hoy en día, esto significa Hajj al-Tamattu\', realizado en el mes de Dhul Hijjah siguiendo los pasos del Profeta Ibrahim (AS), su hijo Ismail (AS) y la Señora Hajar. Esta guía sigue el esquema jafari de los ritos, mientras que la ziyarat en Medina sigue siendo un viaje profundamente apreciado antes o después del Hajj.';

  @override
  String get umrahIntro =>
      'La Umrah es la peregrinación menor a La Meca y, a diferencia del Hajj, se puede realizar en cualquier época del año. Aunque no es obligatoria, tiene una recompensa espiritual inmensa y se considera un acto de adoración altamente recomendado. Comparte varios rituales con el Hajj pero es más corta, consistiendo en cuatro ritos principales.';

  @override
  String get voiceInputTitle => 'Entrada de voz';

  @override
  String get voiceInputMicTitle => 'Micrófono';

  @override
  String get voiceInputMicSubtitle =>
      'Habla tu entrada a Ask Ayara en lugar de escribir.';

  @override
  String get voiceInputMicDenied => 'Se denegó el acceso al micrófono.';

  @override
  String get voiceInputSpeak => 'Hablar en su lugar';

  @override
  String get voiceInputListening => 'Escuchando…';

  @override
  String get voiceInputPermissionDenied =>
      'Se requiere acceso al micrófono para la entrada de voz.';
}

/// The translations for Spanish Castilian, as used in Mexico (`es_MX`).
class AppLocalizationsEsMx extends AppLocalizationsEs {
  AppLocalizationsEsMx() : super('es_MX');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Elige tu idioma';

  @override
  String get languageSelectSub =>
      'Puedes cambiar esto más tarde en Configuración';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos los idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Buscar…';

  @override
  String get planBasic => 'Estándar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientación diaria';

  @override
  String get categorySlot02 => 'Fe y confianza';

  @override
  String get categorySlot03 => 'Reflexión sobre la oración';

  @override
  String get categorySlot04 => 'Paciencia y esperanza';

  @override
  String get categorySlot05 => 'Busca el perdón';

  @override
  String get categorySlot06 => 'Misericordia y compasión';

  @override
  String get categorySlot07 => 'Fe y fortaleza';

  @override
  String get categorySlot08 => 'Corazón agradecido';

  @override
  String get categorySlot09 => 'Propósito de vida';

  @override
  String get categorySlot10 => 'Vínculos familiares';

  @override
  String get categorySlot11 => 'Paz interior';

  @override
  String get categorySlot12 => 'Sabiduría profética';

  @override
  String get categorySlot13 => 'Buen carácter';

  @override
  String get categorySlot14 => 'Resiste la tentación';

  @override
  String get categorySlot15 => 'Dhikr vespertino';

  @override
  String get categoryCustom => 'Reflexión personal';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria sea a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toda la alabanza es para Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah es el más grande';

  @override
  String get quranVerseHeartAtRest =>
      'Ciertamente, en el recuerdo de Allah encuentran descanso los corazones.';

  @override
  String get promptHint =>
      'Toca una categoría para obtener orientación y reflexión islámica';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get settingsLanguage => 'Configuración de idioma';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get chooseLanguage => 'Elige tu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '$count palabra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opciones';

  @override
  String get newCta => 'Nuevo';

  @override
  String get actionsTitle => '¿Qué te gustaría hacer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartir';

  @override
  String get close => 'Cerrar';

  @override
  String get copiedToast => 'Copiado al portapapeles';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No se pudo generar una nueva respuesta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n¿Deseas intentarlo de nuevo?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Intentar de nuevo';

  @override
  String get authTitle => 'Crear tu cuenta';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get signInEmail => 'Iniciar sesión con correo electrónico';

  @override
  String get upgradeWithApple => 'Continuar con Apple';

  @override
  String get mustAccept =>
      'Debes aceptar los Términos y reconocer la Política de Privacidad.';

  @override
  String get termsLabel => 'Acepto los Términos de Servicio';

  @override
  String get privacyLabel => 'He leído la Política de Privacidad';

  @override
  String get marketingOptIn => 'Acepto recibir noticias y ofertas';

  @override
  String get openTerms => 'Términos de Servicio';

  @override
  String get openPrivacy => 'Política de Privacidad';

  @override
  String get accountSection => 'Cuenta';

  @override
  String get guestMode => 'Modo invitado';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get upgradeHint =>
      'Guarda tus reflexiones en todos los dispositivos creando una cuenta.';

  @override
  String get upgradeWithGoogle => 'Continuar con Google';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get snackUpgraded => 'Cuenta mejorada con Google ✅';

  @override
  String get snackSignedIn => 'Sesión iniciada con Google ✅';

  @override
  String get snackSignedOut => 'Sesión cerrada';

  @override
  String get snackSignedInApple => 'Sesión iniciada con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sesión iniciada con Google ✅';

  @override
  String get snackUpgradedApple => 'Cuenta mejorada con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cuenta mejorada con Google ✅';

  @override
  String get historyTitle => 'Reflexiones anteriores';

  @override
  String get historyOpenCta => 'Reflexiones anteriores';

  @override
  String get historyEmpty => 'Sin reflexiones guardadas aún.';

  @override
  String get historyDeleteTitle => '¿Eliminar reflexión?';

  @override
  String get historyDeleteBody =>
      'Esto eliminará permanentemente el elemento seleccionado.';

  @override
  String get deleteCta => 'Eliminar';

  @override
  String get historyButton => 'Reflexiones anteriores';

  @override
  String get historyEmptyTitle => 'Sin reflexiones aún';

  @override
  String get historyEmptyBody =>
      'Genera algo primero — tus elementos guardados aparecerán aquí.';

  @override
  String get historyDelete => 'Eliminar';

  @override
  String get footerTitle => 'Con Wilaya, Iman y Sabr';

  @override
  String get footerSubtitle => 'Una oración a la vez';

  @override
  String get genericErrorSnack =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get upgradeAccountCta =>
      'Guarda tus reflexiones en todos los dispositivos – crea una cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get exportData => 'Exportar mis datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      '¡Vamos! 🐯\nAyara necesita un momento antes del siguiente…';

  @override
  String get rateDailyLimit =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has usado todas tus reflexiones.\nRecarga o actualiza a Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloquea características premium, categorías futuras y una insignia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tus reflexiones se acabaron ahora. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No se pudo verificar tus reflexiones: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo salió mal al verificar tus reflexiones.';

  @override
  String get aiFallbackGeneric =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get limitSectionTitle => 'Reflexiones';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexiones restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Cargando…';

  @override
  String get limitLoadingLabelDescription =>
      'Se muestra en la tarjeta de reflexiones mientras se obtienen las estadísticas de uso.';

  @override
  String get aiLimitTitle => 'Reflexiones';

  @override
  String get aiLimitSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexiones';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexiones restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Cargando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Se muestra mientras se obtienen las estadísticas de reflexiones.';

  @override
  String get creditsTitle => 'Reflexiones';

  @override
  String get creditsSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get settingsDeleteTitle => 'Eliminar cuenta';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente tu cuenta y todos los datos asociados.';

  @override
  String get settingsDeleteButtonLabel => 'Eliminar mi cuenta';

  @override
  String get settingsDeleteDialogTitle => '¿Eliminar cuenta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta acción es permanente y no se puede deshacer.\n\nTodos tus chats, historial e información de cuenta serán eliminados.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Eliminar';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo ya está vinculado a otra cuenta. Por favor inicia sesión con la cuenta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloquea la experiencia completa de Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Estás en Wilaya. ¿Necesitas más reflexiones?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiones: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Las compras no están disponibles en este momento.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sesión para comprar reflexiones o desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Procesando…';

  @override
  String get premiumRestoreHintTitle =>
      '¿Ya compraste Wilaya o reflexiones en este dispositivo u otro?';

  @override
  String get premiumRestoreHintBody => 'Restaura tus compras si no aparecen.';

  @override
  String get premiumBuyCredits200 => 'Comprar 200 reflexiones';

  @override
  String get premiumBuyCredits400 => 'Comprar 400 reflexiones';

  @override
  String get premiumBecomePremiumOneTime => 'Actualizar al modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puedes recargar con reflexiones adicionales cuando las necesites.';

  @override
  String get premiumUpgradeCta => 'Actualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoría solo está disponible para usuarios de Wilaya. Actualiza en Configuración para desbloquear todo el contenido premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloquea Wilaya para obtener reflexiones adicionales, acceder a categorías premium y continuar cuando necesites orientación.';

  @override
  String get premiumBenefitsPremium =>
      'Estás en modo Wilaya. Si te estás quedando corto, agrega reflexiones adicionales y continúa sin interrupciones.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Agregar 1000 reflexiones';

  @override
  String get premiumBadge => 'Wilaya activo';

  @override
  String get premiumLoadingStore => 'Cargando tienda…';

  @override
  String get premiumProductNotAvailable =>
      'Este producto aún no está disponible en la tienda. Intenta más tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo salió mal con la compra. Por favor intenta de nuevo.';

  @override
  String get premiumBuyCredits100 => 'Agregar 100 reflexiones';

  @override
  String get premiumFeatureLocked =>
      'Desbloquea Wilaya para acceder a esta función.';

  @override
  String get lockedCategoriesHint =>
      'Algunas categorías están reservadas para miembros de Wilaya. Desbloquéalas para explorar cada reflexión en tu viaje.';

  @override
  String get freePlanBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get freePlanBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get graceBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get graceBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sesión para usar Ayara y tus reflexiones.';

  @override
  String get guestNoCreditsTitle => 'Modo invitado';

  @override
  String get guestNoCreditsBody =>
      'Como invitado puedes explorar la aplicación, pero no puedes usar reflexiones. Inicia sesión más tarde en Configuración para usar reflexiones y desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Iniciar sesión en su lugar';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Cuenta eliminada';

  @override
  String get accountDeleteSuccessBody =>
      'Tu cuenta y los datos asociados han sido eliminados exitosamente.';

  @override
  String get accountDeleteSuccessClose => 'Cerrar';

  @override
  String get accountDeleteErrorTitle => 'No se pudo eliminar la cuenta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticación fue cancelada. Por favor inicia sesión de nuevo e intenta la eliminación.';

  @override
  String get accountDeleteReauthRequired =>
      'La eliminación de cuenta requiere un inicio de sesión reciente. Por favor cierra sesión, inicia sesión de nuevo, e intenta de nuevo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta acción es permanente y no se puede deshacer. Todos los datos asociados a tu cuenta serán eliminados.';

  @override
  String get dailyGraceTitle => 'Orientación diaria';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DEL DÍA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓN VESPERTINA';

  @override
  String get dailyGraceCopiedToast => 'Verso copiado al portapapeles';

  @override
  String get locationConsentLabel =>
      'Permitir que Ayara use mi ubicación para la dirección de la Qibla y horarios de oración';

  @override
  String get locationConsentHint =>
      'Se usa solo para estas funciones. Tu ubicación nunca se comparte ni se almacena.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta cualquier cosa sobre fe, oración, vida o práctica islámica y recibe orientación enraizada en el Corán y las enseñanzas de Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Escribe tu pregunta aquí…';

  @override
  String get askPageSubmitCta => 'Preguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor escribe una pregunta primero.';

  @override
  String get askResultYourQuestion => 'Tu pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Enfrentando la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira tu teléfono hasta que la aguja dorada apunte hacia arriba.\nEsa dirección apunta a la Qibla (La Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'La señal GPS es débil. Ve al exterior e intenta de nuevo.';

  @override
  String get qiblaRetry => 'Intentar de nuevo';

  @override
  String get qiblaTitle => 'Dirección de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ubicación requerida';

  @override
  String get qiblaLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular la dirección de la Kaaba en la Meca desde donde estés.';

  @override
  String get qiblaOpenSettings => 'Abrir configuración';

  @override
  String get qiblaCompassLoading => 'Encontrando tu posición…';

  @override
  String get qiblaTowardMecca => 'Hacia la Meca';

  @override
  String get prayerTimesTitle => 'Horarios de oración';

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
  String get prayerTimesLocationNeededTitle => 'Ubicación requerida';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular los horarios de oración precisos para tu ciudad.';

  @override
  String get prayerTimesNextLabel => 'Siguiente';

  @override
  String get prayerTimesDoneLabel => 'Listo';

  @override
  String get monthlyPrayerTimesTitle => 'Horarios de oración mensuales';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver mes completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mes';

  @override
  String get monthlyPrayerTimesDayHeader => 'Día';

  @override
  String get sharePrayerTimes => 'Compartir horarios de oración';

  @override
  String get notificationsSectionTitle => 'Notificaciones';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatorios de oración, eventos del calendario y más';

  @override
  String get dailyReflectionReminderTitle => 'Reflexión diaria';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatorio diario suave para abrir Ayara y conectar con tu fe.';

  @override
  String get dailyReflectionReminderEnable => 'Habilitar recordatorio diario';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatorio';

  @override
  String get prayerNotificationsTitle => 'Recordatorios de oración';

  @override
  String get prayerNotificationsDescription =>
      'Recibe un recordatorio suave antes de cada hora de oración para mantenerte conectado durante el día.';

  @override
  String get prayerNotificationsEnable => 'Habilitar recordatorios de oración';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configuración de notificaciones';

  @override
  String get prayerNotificationsDenied =>
      'Las notificaciones están deshabilitadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ve a Configuración y permite notificaciones para Ayara para recibir recordatorios de horarios de oración.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificaciones para horarios de oración';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oración del alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr es la oración de las mañanas de Ahlul Bayt. El Imam Ali (AS) dijo: Protege la oración del alba como proteges tu bien más preciado. Levántate, purifícate, y ponte ante Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oración del mediodía';

  @override
  String get prayerNotifBodyDhuhr =>
      'Los Imames de Ahlul Bayt apreciaban cada momento de recordatorio. Pausa tu día, combina Dhuhr con Asr si es necesario, y devuelve tu corazón a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oración de la tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Protege la oración, es el pacto entre tú y Allah. Ha llegado la hora de Asr — no dejes que pase sin recordatorio.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oración del atardecer';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol se ha puesto — un momento que Ahlul Bayt consideraba sagrado para la súplica. Ofrece Maghrib y abre tus manos a Allah en dua antes de que comience la noche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oración de la noche';

  @override
  String get prayerNotifBodyIsha =>
      'Termina tu día en compañía de Allah. Los Imames alentaban Salat al-Layl después de Isha — pero primero, completa tu Isha y cierra el día con Su recordatorio.';

  @override
  String get outOfReflectionsBannerText => 'Has usado todas tus reflexiones';

  @override
  String get outOfReflectionsBannerCta => 'Obtener más';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completado 100 recordatorios de Allah. Que sean una luz para tu corazón.';

  @override
  String get disclaimerTitle => 'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerBody =>
      'Ayara proporciona reflexiones islámicas, recordatorios y contenido espiritual para apoyar tu viaje personal de fe, enraizado en el Corán y las enseñanzas de Ahlul Bayt. Este contenido se ofrece únicamente con propósitos informativos e inspiradores.\n\nAyara no reemplaza la erudición calificada.\nLa orientación en esta aplicación no es un sustituto de un erudito islámico competente, marja\', o maestro teológicamente capacitado. En el Islam Shia, la orientación religiosa está enraizada en la escuela Ja\'fari de jurisprudencia (fiqh) y la tradición de seguir a un Marja\' viviente (fuente de emulación) — un jurista calificado cuyas decisiones guían a los creyentes en la práctica religiosa. Si tienes preguntas sobre decisiones religiosas, asuntos halal e haram, u obligaciones religiosas personales, por favor busca consejo de un Marja\' calificado o un erudito en tu comunidad.\n\nEsta aplicación no emite decisiones religiosas.\nAyara no hace determinaciones autorizadas sobre asuntos de fiqh u obligaciones religiosas personales. Nada aquí debe ser tratado como una fatwa o instrucción religiosa vinculante.\n\nLa centralidad de Ahlul Bayt.\nEn el Islam Shia, el Profeta Muhammad ﷺ y su Familia Purificada — Ahlul Bayt — son los guías autorizados de la comunidad islámica después del Corán. Los doce Imames de Ahlul Bayt son los intérpretes divinamente designados de la enseñanza islámica. El contenido en esta aplicación refleja esta tradición y busca honrarla fielmente.\n\nAsuntos de la comunidad.\nEsta aplicación busca alentar tu compromiso con la fe mientras respeta profundamente el papel vital de tu mezquita local, centro islámico y comunidad religiosa. Te alentamos a mantenerte conectado y aprender de maestros calificados cerca de ti.';

  @override
  String get disclaimerClose => 'Entiendo';

  @override
  String get disclaimerInfoTooltip =>
      'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo para propósitos informativos. Toca para leer el descargo completo.';

  @override
  String get disclaimerSectionHeader =>
      'Descargo de responsabilidad sobre orientación';

  @override
  String get navHome => 'Inicio';

  @override
  String get navReflect => 'Reflexionar';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'HOY';

  @override
  String get dashboardComingUp => 'Próximamente';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acceso rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientación';

  @override
  String get quickActionPrayerTimes => 'Horarios de oración';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Haz cualquier pregunta islámica y recibe una respuesta reflexiva y guiada.';

  @override
  String get askAyaraHint => 'p.ej. ¿Cuál es el significado del Ramadán?';

  @override
  String get askAyaraSubmit => 'Preguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabiduría del día';

  @override
  String get calendarScreenTitle => 'Calendario islámico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiones próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatorios de ocasiones';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado la noche anterior a cada ocasión';

  @override
  String get calendarNotifPermissionDenied =>
      'Permiso de notificación denegado. Habilítalo en la configuración de tu dispositivo.';

  @override
  String get calendarNoEvents => 'No se encontraron eventos próximos.';

  @override
  String get calendarAddToPhone => 'Agregar al Calendario del Teléfono';

  @override
  String get calendarAddedToPhone => 'Agregado al Calendario';

  @override
  String get calendarCountdownToday => 'HOY';

  @override
  String get calendarCountdownTomorrow => 'MAÑANA';

  @override
  String calendarCountdownDays(int days) {
    return 'en $days días';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Días de Muharram — recuerda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — días de luto y reflexión';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — cuarenta días de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camino a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — el amanecer de la revelación';

  @override
  String get calendarSeasonMidShaban =>
      'Mitad de Sha\'ban — cumpleaños del Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadán Mubarak — el mes del Corán';

  @override
  String get calendarSeasonGhadir => '¡Eid al-Ghadir Mubarak!';

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
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas y Ziyarat';

  @override
  String get duasSearchHint => 'Buscar duas, ziyarat…';

  @override
  String get duasFilterAll => 'Todo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas y ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No se encontraron duas.';

  @override
  String get duaCategoryDaily => 'Diaria';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiones';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nacimiento';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ocasión';

  @override
  String get duaCopyTooltip => 'Copiar traducción';

  @override
  String get duaToggleTransliteration => 'Transliteración';

  @override
  String get duaToggleTranslation => 'Traducción';

  @override
  String get duaAskAiLabel => 'Pide a Ayara que explique esta dua';

  @override
  String get duaAskAiLockedLabel => 'Pide a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Las explicaciones de Ayara están disponibles para miembros de Wilaya. Actualiza en Configuración.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pide a Ayara que explique \"$name\" — ¡próximamente!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada al portapapeles.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah es el más grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toda la alabanza pertenece a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria sea a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah acepte tu dhikr.';

  @override
  String get tasbihTapHint => 'Toca en cualquier lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guía de oración';

  @override
  String get tasbihatScreenSubtitle => 'LAS GLORIFICACIONES DE LA ORACIÓN';

  @override
  String get tasbihatScreenDescription =>
      'Una guía completa de las glorificaciones recitadas durante y después de las oraciones diarias — siguiendo la tradición de Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante el 3º y 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudencia Shia, el Tasbiḥāt al-Arbaʿa reemplaza la Surah al-Fatiha en el 3º y 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. Es obligatorio (wājib) recitarlo una vez, y recomendado (mustaḥabb) recitarlo tres veces.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria sea a Allah · Toda la alabanza es para Allah\nNo hay dios sino Allah · Allah es el más grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitación completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que tu oración sea aceptada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toca después de cada recitación';

  @override
  String get tasbihatZahraSubtitle => 'Después de cada oración · 100 cuentas';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La Señora Fátima al-Zahra (sa) pidió al Profeta ﷺ un sirviente. Él dijo: \"¿No te guío a algo mejor? Recita Subḥānallāh 33 veces, Alḥamdulillāh 33 veces, y Allāhu Akbar 34 veces después de cada oración. Eso es mejor para ti que un sirviente.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Después de completar tu oración';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Después de cada oración obligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quien recita Āyat al-Kursī después de cada oración obligatoria, nada se interpone entre él y el paraíso excepto la muerte. El Imam al-Bāqir (a) dijo que es uno de los versículos más grandes del Corán.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Después de cada oración · sella todas las súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saludos al Profeta ﷺ y su familia purificada (Āl Muḥammad) se recomienda para sellar cada dua. El Imam al-Ṣādiq (a) dijo: \"Cualquier dua se suspende hasta que envíes ṣalawāt sobre Muḥammad y su familia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Después de cada oración · por el Imam de nuestro tiempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseñado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua por la reaparición del Imam al-Mahdī (af), el duodécimo Imam, enseñada por su padre. A menudo es recitada por muchos musulmanes chiitas después de la oración como un acto de devoción al Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la Señora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Después de Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'El Imam al-Bāqir (a) dijo que recitar Tasbīḥ al-Zahrā después de Isha antes de dormir es mejor que 1000 rakʿahs de oración opcional. Su luz asciende a los cielos.';

  @override
  String get tasbihFatimaGiftPre => 'Un regalo del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado después de cada oración';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORACIONES';

  @override
  String get prayerTrackerPrayed => 'Orado';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas las oraciones completadas hoy. Que Allah acepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completado hoy';

  @override
  String get dhikrTrackerNotDoneToday => 'No hecho hoy';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get dhikrReminderTitle => 'Recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatorio diario suave para recitar tu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Habilitar recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatorio';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith diario';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartir este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVía Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Siguiente';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Los Catorce Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Señora Fátima y los Doce Imames — los guías purificados e infalibles en el Islam chiita duodecimano';

  @override
  String get imamLabelBorn => 'Nacido';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Estado';

  @override
  String get imamSectionBiography => 'BIOGRAFÍA';

  @override
  String get imamSectionFamousSaying => 'DICHO FAMOSO';

  @override
  String get imamRoleProphet => 'El Profeta Final';

  @override
  String get imamRoleInfallible => 'El Infalible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3er Imam';

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
  String get duaAudioScreenTitle => 'Escuchar Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una dua para escuchar. Toca el mosaico para reproducir o pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'El audio para esta dua estará disponible en una próxima actualización.';

  @override
  String get duaAudioClose => 'Cerrar';

  @override
  String get duaAudioError =>
      'No se pudo cargar el audio. Por favor verifica tu conexión.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasión';

  @override
  String get duaAudioMetaDuration => 'Duración';

  @override
  String get quickActionDailyHadith => 'Hadith diario';

  @override
  String get quickAction14Masumeen => 'Catorce Infallibles';

  @override
  String get quickActionListenDuas => 'Escuchar';

  @override
  String get quickActionTasbihat => 'Guía de oración';

  @override
  String get pilgrimageSectionTitle => 'El viaje sagrado';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guías completas para el Hajj y la Umrah — la peregrinación a la Casa Sagrada de Allah en La Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El quinto pilar del Islam';

  @override
  String get hajjCardDescription =>
      'La gran peregrinación anual — obligatoria una vez en la vida para cada musulmán capaz';

  @override
  String get hajjScreenTitle => 'Guía de Hajj';

  @override
  String get hajjScreenSubtitle => 'Guía paso a paso de la gran peregrinación';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'La peregrinación menor';

  @override
  String get umrahCardDescription =>
      'Un viaje espiritual profundamente gratificante que se puede realizar en cualquier época del año';

  @override
  String get umrahScreenTitle => 'Guía de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guía paso a paso de la peregrinación menor';

  @override
  String get pilgrimageStepsTitle => 'Rituales y pasos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua para este paso';

  @override
  String get pilgrimageJafariNoteTitle => 'Nota de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Completo';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done de $total pasos';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Muchos peregrinos chiitas también viajan a Medina para la ziyarat del Profeta Muhammad (SAW) en la Masjid al-Nabawi y las tumbas en Jannat al-Baqi. Estas visitas tienen un profundo significado espiritual, aunque no son en sí mismas ritos de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj es el quinto pilar del Islam, obligatorio una vez en la vida para todo musulmán que sea física y financieramente capaz. Para la mayoría de los peregrinos chiitas duodecimanos hoy en día, esto significa Hajj al-Tamattu\', realizado en el mes de Dhul Hijjah siguiendo los pasos del Profeta Ibrahim (AS), su hijo Ismail (AS) y la Señora Hajar. Esta guía sigue el esquema jafari de los ritos, mientras que la ziyarat en Medina sigue siendo un viaje profundamente apreciado antes o después del Hajj.';

  @override
  String get umrahIntro =>
      'La Umrah es la peregrinación menor a La Meca y, a diferencia del Hajj, se puede realizar en cualquier época del año. Aunque no es obligatoria, tiene una recompensa espiritual inmensa y se considera un acto de adoración altamente recomendado. Comparte varios rituales con el Hajj pero es más corta, consistiendo en cuatro ritos principales.';

  @override
  String get voiceInputTitle => 'Entrada de voz';

  @override
  String get voiceInputMicTitle => 'Micrófono';

  @override
  String get voiceInputMicSubtitle =>
      'Habla tu entrada para Ask Ayara en lugar de escribir.';

  @override
  String get voiceInputMicDenied => 'Se denegó el acceso al micrófono.';

  @override
  String get voiceInputSpeak => 'Hablar en su lugar';

  @override
  String get voiceInputListening => 'Escuchando…';

  @override
  String get voiceInputPermissionDenied =>
      'Se requiere acceso al micrófono para la entrada de voz.';
}

/// The translations for Spanish Castilian, as used in the United States (`es_US`).
class AppLocalizationsEsUs extends AppLocalizationsEs {
  AppLocalizationsEsUs() : super('es_US');

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Elige tu idioma';

  @override
  String get languageSelectSub =>
      'Puedes cambiar esto más tarde en Configuración';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get languageSuggestedHeader => 'Sugerido';

  @override
  String get languageAllHeader => 'Todos los idiomas';

  @override
  String get languageSuggestedBadge => 'Sugerido';

  @override
  String get languageSearchHint => 'Buscar…';

  @override
  String get planBasic => 'Estándar';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Orientación diaria';

  @override
  String get categorySlot02 => 'Fe y confianza';

  @override
  String get categorySlot03 => 'Reflexión sobre la oración';

  @override
  String get categorySlot04 => 'Paciencia y esperanza';

  @override
  String get categorySlot05 => 'Busca el perdón';

  @override
  String get categorySlot06 => 'Misericordia y compasión';

  @override
  String get categorySlot07 => 'Fe y fortaleza';

  @override
  String get categorySlot08 => 'Corazón agradecido';

  @override
  String get categorySlot09 => 'Propósito de vida';

  @override
  String get categorySlot10 => 'Vínculos familiares';

  @override
  String get categorySlot11 => 'Paz interior';

  @override
  String get categorySlot12 => 'Sabiduría profética';

  @override
  String get categorySlot13 => 'Buen carácter';

  @override
  String get categorySlot14 => 'Resiste la tentación';

  @override
  String get categorySlot15 => 'Dhikr vespertino';

  @override
  String get categoryCustom => 'Reflexión personal';

  @override
  String get dhikrMeaningSubhanallah => 'Gloria sea a Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toda la alabanza es para Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah es el más grande';

  @override
  String get quranVerseHeartAtRest =>
      'Ciertamente, en el recuerdo de Allah encuentran descanso los corazones.';

  @override
  String get promptHint =>
      'Toca una categoría para obtener orientación y reflexión islámica';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get settingsLanguage => 'Configuración de idioma';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get chooseLanguage => 'Elige tu idioma';

  @override
  String get continueCta => 'Continuar';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '$count palabra',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opciones';

  @override
  String get newCta => 'Nuevo';

  @override
  String get actionsTitle => '¿Qué te gustaría hacer?';

  @override
  String get copy => 'Copiar';

  @override
  String get share => 'Compartir';

  @override
  String get close => 'Cerrar';

  @override
  String get copiedToast => 'Copiado al portapapeles';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'No se pudo generar una nueva respuesta';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n¿Deseas intentarlo de nuevo?';
  }

  @override
  String get cancelCta => 'Cancelar';

  @override
  String get retryCta => 'Intentar de nuevo';

  @override
  String get authTitle => 'Crear tu cuenta';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get signInEmail => 'Iniciar sesión con correo electrónico';

  @override
  String get upgradeWithApple => 'Continuar con Apple';

  @override
  String get mustAccept =>
      'Debes aceptar los Términos y reconocer la Política de Privacidad.';

  @override
  String get termsLabel => 'Acepto los Términos de Servicio';

  @override
  String get privacyLabel => 'He leído la Política de Privacidad';

  @override
  String get marketingOptIn => 'Acepto recibir noticias y ofertas';

  @override
  String get openTerms => 'Términos de Servicio';

  @override
  String get openPrivacy => 'Política de Privacidad';

  @override
  String get accountSection => 'Cuenta';

  @override
  String get guestMode => 'Modo invitado';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get upgradeHint =>
      'Guarda tus reflexiones en todos los dispositivos creando una cuenta.';

  @override
  String get upgradeWithGoogle => 'Continuar con Google';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get snackUpgraded => 'Cuenta mejorada con Google ✅';

  @override
  String get snackSignedIn => 'Sesión iniciada con Google ✅';

  @override
  String get snackSignedOut => 'Sesión cerrada';

  @override
  String get snackSignedInApple => 'Sesión iniciada con Apple ✅';

  @override
  String get snackSignedInGoogle => 'Sesión iniciada con Google ✅';

  @override
  String get snackUpgradedApple => 'Cuenta mejorada con Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cuenta mejorada con Google ✅';

  @override
  String get historyTitle => 'Reflexiones anteriores';

  @override
  String get historyOpenCta => 'Reflexiones anteriores';

  @override
  String get historyEmpty => 'Sin reflexiones guardadas aún.';

  @override
  String get historyDeleteTitle => '¿Eliminar reflexión?';

  @override
  String get historyDeleteBody =>
      'Esto eliminará permanentemente el elemento seleccionado.';

  @override
  String get deleteCta => 'Eliminar';

  @override
  String get historyButton => 'Reflexiones anteriores';

  @override
  String get historyEmptyTitle => 'Sin reflexiones aún';

  @override
  String get historyEmptyBody =>
      'Genera algo primero — tus elementos guardados aparecerán aquí.';

  @override
  String get historyDelete => 'Eliminar';

  @override
  String get footerTitle => 'Con Wilaya, Iman y Sabr';

  @override
  String get footerSubtitle => 'Una oración a la vez';

  @override
  String get genericErrorSnack =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get upgradeAccountCta =>
      'Guarda tus reflexiones en todos los dispositivos – crea una cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get exportData => 'Exportar mis datos';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      '¡Vamos! 🐯\nAyara necesita un momento antes del siguiente…';

  @override
  String get rateDailyLimit =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Has usado todas tus reflexiones.\nRecarga o actualiza a Wilaya para continuar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Se acabaron tus reflexiones por ahora.\nObtén más reflexiones o actualiza a Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya desbloquea características premium, categorías futuras y una insignia especial.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Tus reflexiones se acabaron ahora. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'No se pudo verificar tus reflexiones: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Algo salió mal al verificar tus reflexiones.';

  @override
  String get aiFallbackGeneric =>
      'Algo salió mal — intenta de nuevo en un momento.';

  @override
  String get limitSectionTitle => 'Reflexiones';

  @override
  String get limitTodayLabel => 'Uso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflexiones restantes: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Cargando…';

  @override
  String get limitLoadingLabelDescription =>
      'Se muestra en la tarjeta de reflexiones mientras se obtienen las estadísticas de uso.';

  @override
  String get aiLimitTitle => 'Reflexiones';

  @override
  String get aiLimitSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get creditsSectionTitle => 'Reflexiones';

  @override
  String get creditsUsageLabel => 'Uso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflexiones restantes: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Cargando…';

  @override
  String get creditsLoadingLabelDescription =>
      'Se muestra mientras se obtienen las estadísticas de reflexiones.';

  @override
  String get creditsTitle => 'Reflexiones';

  @override
  String get creditsSubtitle =>
      'Cada respuesta usa 1 reflexión. Estándar incluye reflexiones iniciales. Wilaya desbloquea categorías premium y permite recargas.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflexiones usadas';
  }

  @override
  String get settingsDeleteTitle => 'Eliminar cuenta';

  @override
  String get settingsDeleteDescription =>
      'Elimina permanentemente tu cuenta y todos los datos asociados.';

  @override
  String get settingsDeleteButtonLabel => 'Eliminar mi cuenta';

  @override
  String get settingsDeleteDialogTitle => '¿Eliminar cuenta?';

  @override
  String get settingsDeleteDialogBody =>
      'Esta acción es permanente y no se puede deshacer.\n\nTodos tus chats, historial e información de cuenta serán eliminados.';

  @override
  String get settingsDeleteDialogCancel => 'Cancelar';

  @override
  String get settingsDeleteDialogConfirm => 'Eliminar';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflexiones iniciales usadas';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Las reflexiones iniciales para este dispositivo han sido usadas. Actualiza a Wilaya o compra más reflexiones para continuar.';

  @override
  String get deviceBoundError =>
      'Este dispositivo ya está vinculado a otra cuenta. Por favor inicia sesión con la cuenta original.';

  @override
  String get premiumTitle => 'Modo Wilaya';

  @override
  String get premiumSubtitleBasic =>
      'Desbloquea la experiencia completa de Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Estás en Wilaya. ¿Necesitas más reflexiones?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan actual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflexiones: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Las compras no están disponibles en este momento.';

  @override
  String get premiumSignInToPurchase =>
      'Inicia sesión para comprar reflexiones o desbloquear Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurar compras';

  @override
  String get premiumProcessing => 'Procesando…';

  @override
  String get premiumRestoreHintTitle =>
      '¿Ya compraste Wilaya o reflexiones en este dispositivo u otro?';

  @override
  String get premiumRestoreHintBody => 'Restaura tus compras si no aparecen.';

  @override
  String get premiumBuyCredits200 => 'Comprar 200 reflexiones';

  @override
  String get premiumBuyCredits400 => 'Comprar 400 reflexiones';

  @override
  String get premiumBecomePremiumOneTime => 'Actualizar al modo Wilaya';

  @override
  String get premiumTopupHint =>
      'Con Wilaya, puedes recargar con reflexiones adicionales cuando las necesites.';

  @override
  String get premiumUpgradeCta => 'Actualizar';

  @override
  String get premiumRequiredForCategory =>
      'Esta categoría solo está disponible para usuarios de Wilaya. Actualiza en Configuración para desbloquear todo el contenido premium.';

  @override
  String get premiumBenefitsBasic =>
      'Desbloquea Wilaya para obtener reflexiones adicionales, acceder a categorías premium y continuar cuando necesites orientación.';

  @override
  String get premiumBenefitsPremium =>
      'Estás en modo Wilaya. Si te estás quedando corto, agrega reflexiones adicionales y continúa sin interrupciones.';

  @override
  String get premiumButtonBecomePremium => 'Desbloquear Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Agregar 1000 reflexiones';

  @override
  String get premiumBadge => 'Wilaya activo';

  @override
  String get premiumLoadingStore => 'Cargando tienda…';

  @override
  String get premiumProductNotAvailable =>
      'Este producto aún no está disponible en la tienda. Intenta más tarde.';

  @override
  String get premiumPurchaseError =>
      'Algo salió mal con la compra. Por favor intenta de nuevo.';

  @override
  String get premiumBuyCredits100 => 'Agregar 100 reflexiones';

  @override
  String get premiumFeatureLocked =>
      'Desbloquea Wilaya para acceder a esta función.';

  @override
  String get lockedCategoriesHint =>
      'Algunas categorías están reservadas para miembros de Wilaya. Desbloquéalas para explorar cada reflexión en tu viaje.';

  @override
  String get freePlanBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get freePlanBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get graceBlockedTitle => 'Has agotado tus reflexiones iniciales';

  @override
  String get graceBlockedBody =>
      'Estás en el plan Estándar con reflexiones iniciales, y has alcanzado el límite. Para continuar — y desbloquear categorías premium — actualiza a Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Ver opciones de Wilaya abajo';

  @override
  String get rateGuestMustSignIn =>
      'Inicia sesión para usar Ayara y tus reflexiones.';

  @override
  String get guestNoCreditsTitle => 'Modo invitado';

  @override
  String get guestNoCreditsBody =>
      'Como invitado puedes explorar la aplicación, pero no puedes usar reflexiones. Inicia sesión más tarde en Configuración para usar reflexiones y desbloquear compras.';

  @override
  String get guestDialogContinue => 'Continuar';

  @override
  String get guestDialogLoginInstead => 'Iniciar sesión en su lugar';

  @override
  String get optionalLabel => 'opcional';

  @override
  String get accountDeleteSuccessTitle => 'Cuenta eliminada';

  @override
  String get accountDeleteSuccessBody =>
      'Tu cuenta y los datos asociados han sido eliminados exitosamente.';

  @override
  String get accountDeleteSuccessClose => 'Cerrar';

  @override
  String get accountDeleteErrorTitle => 'No se pudo eliminar la cuenta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'La reautenticación fue cancelada. Por favor inicia sesión de nuevo e intenta la eliminación.';

  @override
  String get accountDeleteReauthRequired =>
      'La eliminación de cuenta requiere un inicio de sesión reciente. Por favor cierra sesión, inicia sesión de nuevo, e intenta de nuevo.';

  @override
  String get settingsDeletePermanentWarning =>
      'Esta acción es permanente y no se puede deshacer. Todos los datos asociados a tu cuenta serán eliminados.';

  @override
  String get dailyGraceTitle => 'Orientación diaria';

  @override
  String get dailyGraceScriptureLabel => 'VERSO DEL DÍA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA DE LA SEMANA';

  @override
  String get dailyGraceReflectionLabel => 'REFLEXIÓN VESPERTINA';

  @override
  String get dailyGraceCopiedToast => 'Verso copiado al portapapeles';

  @override
  String get locationConsentLabel =>
      'Permitir que Ayara use mi ubicación para la dirección de la Qibla y horarios de oración';

  @override
  String get locationConsentHint =>
      'Se usa solo para estas funciones. Tu ubicación nunca se comparte ni se almacena.';

  @override
  String get askPageTitle => 'Pregunta a Ayara';

  @override
  String get askPageDescription =>
      'Pregunta cualquier cosa sobre fe, oración, vida o práctica islámica y recibe orientación enraizada en el Corán y las enseñanzas de Ahlul Bayt.';

  @override
  String get askPageInputHint => 'Escribe tu pregunta aquí…';

  @override
  String get askPageSubmitCta => 'Preguntar';

  @override
  String get askPageInputEmptyError =>
      'Por favor escribe una pregunta primero.';

  @override
  String get askResultYourQuestion => 'Tu pregunta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Enfrentando la Meca';

  @override
  String get qiblaCompassInstruction =>
      'Gira tu teléfono hasta que la aguja dorada apunte hacia arriba.\nEsa dirección apunta a la Qibla (La Meca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'La señal GPS es débil. Ve al exterior e intenta de nuevo.';

  @override
  String get qiblaRetry => 'Intentar de nuevo';

  @override
  String get qiblaTitle => 'Dirección de la Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km a la Meca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ubicación requerida';

  @override
  String get qiblaLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular la dirección de la Kaaba en la Meca desde donde estés.';

  @override
  String get qiblaOpenSettings => 'Abrir configuración';

  @override
  String get qiblaCompassLoading => 'Encontrando tu posición…';

  @override
  String get qiblaTowardMecca => 'Hacia la Meca';

  @override
  String get prayerTimesTitle => 'Horarios de oración';

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
  String get prayerTimesLocationNeededTitle => 'Ubicación requerida';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite acceso a la ubicación para que Ayara pueda calcular los horarios de oración precisos para tu ciudad.';

  @override
  String get prayerTimesNextLabel => 'Siguiente';

  @override
  String get prayerTimesDoneLabel => 'Listo';

  @override
  String get monthlyPrayerTimesTitle => 'Horarios de oración mensuales';

  @override
  String get monthlyPrayerTimesViewButton => 'Ver mes completo';

  @override
  String get monthlyPrayerTimesNextMonth => 'Próximo mes';

  @override
  String get monthlyPrayerTimesDayHeader => 'Día';

  @override
  String get sharePrayerTimes => 'Compartir horarios de oración';

  @override
  String get notificationsSectionTitle => 'Notificaciones';

  @override
  String get notificationsSectionSubtitle =>
      'Recordatorios de oración, eventos del calendario y más';

  @override
  String get dailyReflectionReminderTitle => 'Reflexión diaria';

  @override
  String get dailyReflectionReminderDescription =>
      'Un recordatorio diario suave para abrir Ayara y conectar con tu fe.';

  @override
  String get dailyReflectionReminderEnable => 'Habilitar recordatorio diario';

  @override
  String get dailyReflectionReminderTimeLabel => 'Hora del recordatorio';

  @override
  String get prayerNotificationsTitle => 'Recordatorios de oración';

  @override
  String get prayerNotificationsDescription =>
      'Recibe un recordatorio suave antes de cada hora de oración para mantenerte conectado durante el día.';

  @override
  String get prayerNotificationsEnable => 'Habilitar recordatorios de oración';

  @override
  String get prayerNotificationsOpenSettings =>
      'Abrir configuración de notificaciones';

  @override
  String get prayerNotificationsDenied =>
      'Las notificaciones están deshabilitadas';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ve a Configuración y permite notificaciones para Ayara para recibir recordatorios de horarios de oración.';

  @override
  String get notificationsConsentLabel =>
      'Permitir notificaciones para horarios de oración';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oración del alba';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr es la oración de las mañanas de Ahlul Bayt. El Imam Ali (AS) dijo: Protege la oración del alba como proteges tu bien más preciado. Levántate, purifícate, y ponte ante Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Oración del mediodía';

  @override
  String get prayerNotifBodyDhuhr =>
      'Los Imames de Ahlul Bayt apreciaban cada momento de recordatorio. Pausa tu día, combina Dhuhr con Asr si es necesario, y devuelve tu corazón a Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Oración de la tarde';

  @override
  String get prayerNotifBodyAsr =>
      'Protege la oración, es el pacto entre tú y Allah. Ha llegado la hora de Asr — no dejes que pase sin recordatorio.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Oración del atardecer';

  @override
  String get prayerNotifBodyMaghrib =>
      'El sol se ha puesto — un momento que Ahlul Bayt consideraba sagrado para la súplica. Ofrece Maghrib y abre tus manos a Allah en dua antes de que comience la noche.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Oración de la noche';

  @override
  String get prayerNotifBodyIsha =>
      'Termina tu día en compañía de Allah. Los Imames alentaban Salat al-Layl después de Isha — pero primero, completa tu Isha y cierra el día con Su recordatorio.';

  @override
  String get outOfReflectionsBannerText => 'Has usado todas tus reflexiones';

  @override
  String get outOfReflectionsBannerCta => 'Obtener más';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Toca el círculo para contar';

  @override
  String get dhikrResetButton => 'Reiniciar';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Has completado 100 recordatorios de Allah. Que sean una luz para tu corazón.';

  @override
  String get disclaimerTitle => 'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerBody =>
      'Ayara proporciona reflexiones islámicas, recordatorios y contenido espiritual para apoyar tu viaje personal de fe, enraizado en el Corán y las enseñanzas de Ahlul Bayt. Este contenido se ofrece únicamente con propósitos informativos e inspiradores.\n\nAyara no reemplaza la erudición calificada.\nLa orientación en esta aplicación no es un sustituto de un erudito islámico competente, marja\', o maestro teológicamente capacitado. En el Islam Shia, la orientación religiosa está enraizada en la escuela Ja\'fari de jurisprudencia (fiqh) y la tradición de seguir a un Marja\' viviente (fuente de emulación) — un jurista calificado cuyas decisiones guían a los creyentes en la práctica religiosa. Si tienes preguntas sobre decisiones religiosas, asuntos halal e haram, u obligaciones religiosas personales, por favor busca consejo de un Marja\' calificado o un erudito en tu comunidad.\n\nEsta aplicación no emite decisiones religiosas.\nAyara no hace determinaciones autorizadas sobre asuntos de fiqh u obligaciones religiosas personales. Nada aquí debe ser tratado como una fatwa o instrucción religiosa vinculante.\n\nLa centralidad de Ahlul Bayt.\nEn el Islam Shia, el Profeta Muhammad ﷺ y su Familia Purificada — Ahlul Bayt — son los guías autorizados de la comunidad islámica después del Corán. Los doce Imames de Ahlul Bayt son los intérpretes divinamente designados de la enseñanza islámica. El contenido en esta aplicación refleja esta tradición y busca honrarla fielmente.\n\nAsuntos de la comunidad.\nEsta aplicación busca alentar tu compromiso con la fe mientras respeta profundamente el papel vital de tu mezquita local, centro islámico y comunidad religiosa. Te alentamos a mantenerte conectado y aprender de maestros calificados cerca de ti.';

  @override
  String get disclaimerClose => 'Entiendo';

  @override
  String get disclaimerInfoTooltip =>
      'Acerca de la orientación de esta aplicación';

  @override
  String get disclaimerSettingsSubtitle =>
      'Solo para propósitos informativos. Toca para leer el descargo completo.';

  @override
  String get disclaimerSectionHeader =>
      'Descargo de responsabilidad sobre orientación';

  @override
  String get navHome => 'Inicio';

  @override
  String get navReflect => 'Reflexionar';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get dashboardToday => 'HOY';

  @override
  String get dashboardComingUp => 'Próximamente';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acceso rápido';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Orientación';

  @override
  String get quickActionPrayerTimes => 'Horarios de oración';

  @override
  String get askAyaraTitle => 'Pregunta a Ayara';

  @override
  String get askAyaraSubtitle =>
      'Haz cualquier pregunta islámica y recibe una respuesta reflexiva y guiada.';

  @override
  String get askAyaraHint => 'p.ej. ¿Cuál es el significado del Ramadán?';

  @override
  String get askAyaraSubmit => 'Preguntar';

  @override
  String get wisdomOfTheDayTitle => 'Sabiduría del día';

  @override
  String get calendarScreenTitle => 'Calendario islámico';

  @override
  String get calendarUpcomingOccasions => 'Ocasiones próximas';

  @override
  String get calendarOccasionRemindersTitle => 'Recordatorios de ocasiones';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificado la noche anterior a cada ocasión';

  @override
  String get calendarNotifPermissionDenied =>
      'Permiso de notificación denegado. Habilítalo en la configuración de tu dispositivo.';

  @override
  String get calendarNoEvents => 'No se encontraron eventos próximos.';

  @override
  String get calendarAddToPhone => 'Add to Phone Calendar';

  @override
  String get calendarAddedToPhone => 'Added to Calendar';

  @override
  String get calendarCountdownToday => 'HOY';

  @override
  String get calendarCountdownTomorrow => 'MAÑANA';

  @override
  String calendarCountdownDays(int days) {
    return 'en $days días';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ene';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dic';

  @override
  String get calendarSeasonMuharramEarly =>
      'Días de Muharram — recuerda Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — días de luto y reflexión';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — cuarenta días de Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'El camino a Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — el amanecer de la revelación';

  @override
  String get calendarSeasonMidShaban =>
      'Mitad de Sha\'ban — cumpleaños del Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadán Mubarak — el mes del Corán';

  @override
  String get calendarSeasonGhadir => '¡Eid al-Ghadir Mubarak!';

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
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas y Ziyarat';

  @override
  String get duasSearchHint => 'Buscar duas, ziyarat…';

  @override
  String get duasFilterAll => 'Todo';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas y ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'No se encontraron duas.';

  @override
  String get duaCategoryDaily => 'Diaria';

  @override
  String get duaCategoryWeekly => 'Semanal';

  @override
  String get duaCategoryOccasions => 'Ocasiones';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Nacimiento';

  @override
  String get eventTypeMartyrdom => 'Martirio';

  @override
  String get eventTypeOccasion => 'Ocasión';

  @override
  String get duaCopyTooltip => 'Copiar traducción';

  @override
  String get duaToggleTransliteration => 'Transliteración';

  @override
  String get duaToggleTranslation => 'Traducción';

  @override
  String get duaAskAiLabel => 'Pide a Ayara que explique esta dua';

  @override
  String get duaAskAiLockedLabel => 'Pide a Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Las explicaciones de Ayara están disponibles para miembros de Wilaya. Actualiza en Configuración.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pide a Ayara que explique \"$name\" — ¡próximamente!';
  }

  @override
  String get duaCopiedToast => 'Dua copiada al portapapeles.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah es el más grande';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toda la alabanza pertenece a Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Gloria sea a Allah';

  @override
  String get tasbihResetTooltip => 'Reiniciar';

  @override
  String get tasbihCompleteTitle => 'Tasbih completo';

  @override
  String get tasbihCompleteMessage => 'Que Allah acepte tu dhikr.';

  @override
  String get tasbihTapHint => 'Toca en cualquier lugar para contar';

  @override
  String get tasbihatScreenTitle => 'Guía de oración';

  @override
  String get tasbihatScreenSubtitle => 'LAS GLORIFICACIONES DE LA ORACIÓN';

  @override
  String get tasbihatScreenDescription =>
      'Una guía completa de las glorificaciones recitadas durante y después de las oraciones diarias — siguiendo la tradición de Ahlul Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitado durante el 3º y 4º rakʿah';

  @override
  String get tasbihatArba3Info =>
      'En la jurisprudencia Shia, el Tasbiḥāt al-Arbaʿa reemplaza la Surah al-Fatiha en el 3º y 4º rakʿah de Dhuhr, Asr, Maghrib e Isha. Es obligatorio (wājib) recitarlo una vez, y recomendado (mustaḥabb) recitarlo tres veces.';

  @override
  String get tasbihatArba3Translation =>
      'Gloria sea a Allah · Toda la alabanza es para Allah\nNo hay dios sino Allah · Allah es el más grande';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitación completa';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Que tu oración sea aceptada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Toca después de cada recitación';

  @override
  String get tasbihatZahraSubtitle => 'Después de cada oración · 100 cuentas';

  @override
  String get tasbihatZahraOriginLabel => 'Origen';

  @override
  String get tasbihatZahraHadith =>
      'La Señora Fátima al-Zahra (sa) pidió al Profeta ﷺ un sirviente. Él dijo: \"¿No te guío a algo mejor? Recita Subḥānallāh 33 veces, Alḥamdulillāh 33 veces, y Allāhu Akbar 34 veces después de cada oración. Eso es mejor para ti que un sirviente.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Abrir contador de Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMENDADAS';

  @override
  String get tasbihatDuasSubtitle => 'Después de completar tu oración';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Después de cada oración obligatoria';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Quien recita Āyat al-Kursī después de cada oración obligatoria, nada se interpone entre él y el paraíso excepto la muerte. El Imam al-Bāqir (a) dijo que es uno de los versículos más grandes del Corán.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Después de cada oración · sella todas las súplicas';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Enviar saludos al Profeta ﷺ y su familia purificada (Āl Muḥammad) se recomienda para sellar cada dua. El Imam al-Ṣādiq (a) dijo: \"Cualquier dua se suspende hasta que envíes ṣalawāt sobre Muḥammad y su familia.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Después de cada oración · por el Imam de nuestro tiempo';

  @override
  String get tasbihatDuaFarajSource =>
      'Enseñado por Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Una dua por la reaparición del Imam al-Mahdī (af), el duodécimo Imam, enseñada por su padre. A menudo es recitada por muchos musulmanes chiitas después de la oración como un acto de devoción al Imam vivo.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ de la Señora Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Después de Maghrib e Isha · especialmente recomendado';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'El Imam al-Bāqir (a) dijo que recitar Tasbīḥ al-Zahrā después de Isha antes de dormir es mejor que 1000 rakʿahs de oración opcional. Su luz asciende a los cielos.';

  @override
  String get tasbihFatimaGiftPre => 'Un regalo del Profeta';

  @override
  String get tasbihFatimaGiftPost => 'recitado después de cada oración';

  @override
  String get prayerTrackerTitle => 'RASTREADOR DE ORACIONES';

  @override
  String get prayerTrackerPrayed => 'Orado';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Todas las oraciones completadas hoy. Que Allah acepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completado hoy';

  @override
  String get dhikrTrackerNotDoneToday => 'No hecho hoy';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'Racha de $count días';
  }

  @override
  String get dhikrReminderTitle => 'Recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un recordatorio diario suave para recitar tu Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Habilitar recordatorio de Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Hora del recordatorio';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith diario';

  @override
  String get hadithLabelArabic => 'ÁRABE';

  @override
  String get hadithLabelTranslation => 'TRADUCCIÓN';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Compartir este Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVía Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Siguiente';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Los Catorce Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'El Profeta, la Señora Fátima y los Doce Imames — los guías purificados e infalibles en el Islam chiita duodecimano';

  @override
  String get imamLabelBorn => 'Nacido';

  @override
  String get imamLabelMartyrdom => 'Martirio';

  @override
  String get imamLabelStatus => 'Estado';

  @override
  String get imamSectionBiography => 'BIOGRAFÍA';

  @override
  String get imamSectionFamousSaying => 'DICHO FAMOSO';

  @override
  String get imamRoleProphet => 'El Profeta Final';

  @override
  String get imamRoleInfallible => 'El Infalible';

  @override
  String get imamOrdinal1 => '1er Imam';

  @override
  String get imamOrdinal2 => '2º Imam';

  @override
  String get imamOrdinal3 => '3er Imam';

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
  String get duaAudioScreenTitle => 'Escuchar Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecciona una dua para escuchar. Toca el mosaico para reproducir o pausar.';

  @override
  String get duaAudioComingSoonMessage =>
      'El audio para esta dua estará disponible en una próxima actualización.';

  @override
  String get duaAudioClose => 'Cerrar';

  @override
  String get duaAudioError =>
      'No se pudo cargar el audio. Por favor verifica tu conexión.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmitido por';

  @override
  String get duaAudioMetaOccasion => 'Ocasión';

  @override
  String get duaAudioMetaDuration => 'Duración';

  @override
  String get quickActionDailyHadith => 'Hadith diario';

  @override
  String get quickAction14Masumeen => 'Catorce Infallibles';

  @override
  String get quickActionListenDuas => 'Escuchar';

  @override
  String get quickActionTasbihat => 'Guía de oración';

  @override
  String get pilgrimageSectionTitle => 'El viaje sagrado';

  @override
  String get pilgrimageSectionSubtitle =>
      'Guías completas para el Hajj y la Umrah — la peregrinación a la Casa Sagrada de Allah en La Meca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'El quinto pilar del Islam';

  @override
  String get hajjCardDescription =>
      'La gran peregrinación anual — obligatoria una vez en la vida para cada musulmán capaz';

  @override
  String get hajjScreenTitle => 'Guía de Hajj';

  @override
  String get hajjScreenSubtitle => 'Guía paso a paso de la gran peregrinación';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'La peregrinación menor';

  @override
  String get umrahCardDescription =>
      'Un viaje espiritual profundamente gratificante que se puede realizar en cualquier época del año';

  @override
  String get umrahScreenTitle => 'Guía de Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Guía paso a paso de la peregrinación menor';

  @override
  String get pilgrimageStepsTitle => 'Rituales y pasos';

  @override
  String get pilgrimageImportantNotesTitle => 'Notas importantes';

  @override
  String get pilgrimageDuaTitle => 'Dua for this step';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Note';

  @override
  String get pilgrimageComplete => '✓ Complete';

  @override
  String get pilgrimageMarkDone => 'Marcar como completo';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done of $total steps';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Peregrinos Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Muchos peregrinos chiitas también viajan a Medina para la ziyarat del Profeta Muhammad (SAW) en la Masjid al-Nabawi y las tumbas en Jannat al-Baqi. Estas visitas tienen un profundo significado espiritual, aunque no son en sí mismas ritos de Hajj.';

  @override
  String get hajjIntro =>
      'El Hajj es el quinto pilar del Islam, obligatorio una vez en la vida para todo musulmán que sea física y financieramente capaz. Para la mayoría de los peregrinos chiitas duodecimanos hoy en día, esto significa Hajj al-Tamattu\', realizado en el mes de Dhul Hijjah siguiendo los pasos del Profeta Ibrahim (AS), su hijo Ismail (AS) y la Señora Hajar. Esta guía sigue el esquema jafari de los ritos, mientras que la ziyarat en Medina sigue siendo un viaje profundamente apreciado antes o después del Hajj.';

  @override
  String get umrahIntro =>
      'La Umrah es la peregrinación menor a La Meca y, a diferencia del Hajj, se puede realizar en cualquier época del año. Aunque no es obligatoria, tiene una recompensa espiritual inmensa y se considera un acto de adoración altamente recomendado. Comparte varios rituales con el Hajj pero es más corta, consistiendo en cuatro ritos principales.';

  @override
  String get voiceInputTitle => 'Entrada de voz';

  @override
  String get voiceInputMicTitle => 'Micrófono';

  @override
  String get voiceInputMicSubtitle =>
      'Habla tu entrada para Ask Ayara en lugar de escribir.';

  @override
  String get voiceInputMicDenied => 'Se denegó el acceso al micrófono.';

  @override
  String get voiceInputSpeak => 'Hablar en su lugar';

  @override
  String get voiceInputListening => 'Escuchando…';

  @override
  String get voiceInputPermissionDenied =>
      'Se requiere acceso al micrófono para la entrada de voz.';
}
