// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Plataforma de Pádel';

  @override
  String get navHome => 'Inicio';

  @override
  String get navTournaments => 'Torneos';

  @override
  String get navRankings => 'Rankings';

  @override
  String get navCasual => 'Amistosos';

  @override
  String get navProfile => 'Perfil';

  @override
  String get actionRetry => 'Reintentar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionSend => 'Enviar';

  @override
  String get actionCreate => 'Crear';

  @override
  String get actionCreateOne => 'Crear uno';

  @override
  String get filterAll => 'Todos';

  @override
  String get premiumLabel => 'Premium';

  @override
  String get tieBreakLabel => 'TIE-BREAK';

  @override
  String get ptsLabel => 'pts';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageArabic => 'Árabe';

  @override
  String get settingsLanguageEnglish => 'Inglés';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get themeSystem => 'Predeterminado del sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get settingsLogOut => 'Cerrar sesión';

  @override
  String get deleteAccountTitle => 'Eliminar cuenta';

  @override
  String get deleteAccountConfirm =>
      '¿Seguro que quieres eliminar tu cuenta para siempre? Es inmediato y no se puede deshacer: se borrarán todos tus datos y partidos.';

  @override
  String get deleteAccountSuccess => 'Tu cuenta se ha eliminado correctamente.';

  @override
  String get deleteAccountLoading => 'Eliminando la cuenta...';

  @override
  String homeWelcomeBack(String name) {
    return 'Bienvenido de nuevo, $name';
  }

  @override
  String get homeUnranked => 'Sin ranking';

  @override
  String homeLevelPoints(String level, int points) {
    return '$level • $points pts de temporada';
  }

  @override
  String get homeLiveNow => 'En directo';

  @override
  String get homeSeeAll => 'Ver todo';

  @override
  String get homeNoLiveTournaments => 'No hay torneos en directo ahora mismo.';

  @override
  String get fieldPassword => 'Contraseña';

  @override
  String get errorPasswordRequired => 'La contraseña es obligatoria';

  @override
  String get actionLogIn => 'Iniciar sesión';

  @override
  String get fieldFullName => 'Nombre completo';

  @override
  String get errorNameRequired => 'El nombre es obligatorio';

  @override
  String get fieldPhoneOptional => 'Teléfono (opcional)';

  @override
  String get errorPasswordLength => 'Al menos 8 caracteres';

  @override
  String get fieldConfirmPassword => 'Confirmar contraseña';

  @override
  String get errorPasswordsMismatch => 'Las contraseñas no coinciden';

  @override
  String get notificationsTitle => 'Notificaciones';

  @override
  String get emptyNotificationsTitle => 'Aún no hay notificaciones';

  @override
  String get emptyNotificationsMessage =>
      'Estás al día: las nuevas notificaciones aparecerán aquí.';

  @override
  String get casualMatchesTitle => 'Partidos amistosos';

  @override
  String get casualFilterLookingForMatch => 'Busco partido';

  @override
  String get casualFilterLookingForPartner => 'Busco compañero';

  @override
  String get casualFilterNeed1 => 'Falta 1';

  @override
  String get casualFilterNeed2 => 'Faltan 2';

  @override
  String get casualFilterNeed3 => 'Faltan 3';

  @override
  String get emptyCasualTitle => 'No hay partidos amistosos cerca';

  @override
  String get emptyCasualMessage =>
      'Sé el primero en organizar uno e invita a otros jugadores.';

  @override
  String get joinRequestSent => 'Solicitud enviada.';

  @override
  String get statusClosed => 'Cerrado';

  @override
  String labelLevel(String level) {
    return 'Nivel $level';
  }

  @override
  String labelSide(String side) {
    return 'Lado: $side';
  }

  @override
  String byCreator(String name) {
    return 'Por $name';
  }

  @override
  String get actionRequested => 'Solicitado';

  @override
  String get actionJoin => 'Unirse';

  @override
  String get createMatchTitle => 'Crear partido amistoso';

  @override
  String get fieldMatchType => 'Tipo de partido';

  @override
  String get fieldDateTime => 'Fecha y hora';

  @override
  String get selectFutureDateTime => 'Elige una fecha y hora futuras';

  @override
  String get errorPickFutureDateTime => 'Elige una fecha y hora en el futuro';

  @override
  String get fieldRequiredLevelOptional => 'Nivel requerido (opcional)';

  @override
  String get fieldPreferredSideOptional => 'Lado preferido (opcional)';

  @override
  String get fieldNotesOptional => 'Notas (opcional)';

  @override
  String get actionCreateMatch => 'Crear partido';

  @override
  String get coachesTitle => 'Entrenadores';

  @override
  String get emptyCoachesTitle => 'No hay entrenadores disponibles';

  @override
  String get emptyCoachesMessage =>
      'Vuelve pronto para ver entrenadores disponibles.';

  @override
  String coachPricePerHourLong(String price) {
    return '$price / hora';
  }

  @override
  String coachPricePerHourShort(String price) {
    return '$price/h';
  }

  @override
  String get statusUnavailable => 'No disponible';

  @override
  String get sectionAbout => 'Sobre mí';

  @override
  String get sectionSpecialties => 'Especialidades';

  @override
  String get rankingsTitle => 'Rankings';

  @override
  String get emptyRankingsTitle => 'Aún no hay rankings';

  @override
  String get emptyRankingsMessage =>
      'Los rankings aparecerán aquí cuando los jugadores empiecen a sumar puntos.';

  @override
  String get liveMatchTitle => 'Partido en directo';

  @override
  String get vsLabel => 'vs';

  @override
  String get currentGame => 'Juego actual';

  @override
  String gamesScore(int teamOne, int teamTwo) {
    return '$teamOne - $teamTwo juegos';
  }

  @override
  String setsScore(int teamOne, int teamTwo) {
    return '$teamOne - $teamTwo sets';
  }

  @override
  String get matchCompleted => 'Partido finalizado';

  @override
  String teamWon(String team) {
    return 'Ganó $team';
  }

  @override
  String get rankingEligible => 'Puntúa para el ranking';

  @override
  String get venueTba => 'Sede por confirmar';

  @override
  String get categoriesSection => 'Categorías';

  @override
  String teamsCount(int active, int max) {
    return '$active/$max equipos';
  }

  @override
  String feeSuffix(String fee) {
    return ' • cuota $fee';
  }

  @override
  String get statusFull => 'Completo';

  @override
  String get tournamentsTitle => 'Torneos';

  @override
  String get filterOpen => 'Abiertos';

  @override
  String get filterLive => 'En directo';

  @override
  String get filterCompleted => 'Finalizados';

  @override
  String get emptyTournamentsTitle => 'No hay torneos aquí';

  @override
  String get emptyTournamentsMessage => 'Prueba otro filtro o vuelve pronto.';

  @override
  String get statusDraft => 'Borrador';

  @override
  String get statusRegistrationOpen => 'Inscripciones abiertas';

  @override
  String get statusRegistrationClosed => 'Inscripciones cerradas';

  @override
  String get statusOngoing => 'En curso';

  @override
  String get statusCompleted => 'Finalizado';

  @override
  String get statusCancelled => 'Cancelado';

  @override
  String get achievementsSection => 'Logros';

  @override
  String get statLevel => 'Nivel';

  @override
  String get statRating => 'Rating';

  @override
  String get statSeasonPts => 'Pts temporada';

  @override
  String get statXp => 'XP';

  @override
  String get actionFollowing => 'Siguiendo';

  @override
  String get actionFollow => 'Seguir';

  @override
  String get tooltipRespect => 'Respeto';

  @override
  String get tooltipChallenge => 'Retar';

  @override
  String challengeSentTo(String name) {
    return 'Reto enviado a $name';
  }

  @override
  String challengeTitle(String name) {
    return 'Retar a $name';
  }

  @override
  String get hintAddMessage => 'Añade un mensaje (opcional)';

  @override
  String get failureSessionExpired => 'La sesión ha caducado.';

  @override
  String get failureNoInternet => 'Sin conexión a internet.';

  @override
  String get failureServerError => 'Algo ha fallado por nuestra parte.';

  @override
  String get failureUnknown => 'Ha ocurrido un error inesperado.';

  @override
  String get failureRequestCancelled => 'Solicitud cancelada.';

  @override
  String get failureSecureConnectionFailed => 'Falló la conexión segura.';

  @override
  String get failureValidationFailed => 'Error de validación.';

  @override
  String get failureRequestFailed => 'La solicitud falló.';

  @override
  String get failureInvalidCredentials => 'Correo o contraseña incorrectos.';

  @override
  String get failurePremiumRequired => 'Esta es una función Premium.';

  @override
  String get failureCoachOnly =>
      'Solo las cuentas de entrenador pueden hacer esto.';

  @override
  String get failurePlayerProfileRequired => 'Necesitas un perfil de jugador.';

  @override
  String get failureStaffOnly =>
      'Solo el personal del torneo puede hacer esto.';

  @override
  String get failureForbidden => 'No tienes acceso a esto.';

  @override
  String get failureAccountInactive => 'Esta cuenta está inactiva.';

  @override
  String get failureNotFound => 'No lo hemos encontrado.';

  @override
  String get failureRateLimited =>
      'Demasiados intentos. Inténtalo en un momento.';

  @override
  String get failureProviderUnavailable => 'Aún no disponible.';

  @override
  String get actionClose => 'Cerrar';

  @override
  String get actionConfirm => 'Confirmar';

  @override
  String get actionSave => 'Guardar';

  @override
  String get actionEdit => 'Editar';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get actionAccept => 'Aceptar';

  @override
  String get actionDecline => 'Rechazar';

  @override
  String get actionRefresh => 'Actualizar';

  @override
  String get actionViewAll => 'Ver todo';

  @override
  String get actionLearnMore => 'Saber más';

  @override
  String get actionGoPremium => 'Hazte Premium';

  @override
  String get actionBack => 'Atrás';

  @override
  String get actionSearch => 'Buscar';

  @override
  String get actionApply => 'Aplicar';

  @override
  String get actionReset => 'Restablecer';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get actionLeave => 'Salir';

  @override
  String get actionOpen => 'Abrir';

  @override
  String get stateEmptyTitle => 'Aún no hay nada';

  @override
  String get stateOfflineTitle => 'Sin conexión';

  @override
  String get stateOfflineMessage => 'Revisa tu conexión e inténtalo de nuevo.';

  @override
  String get stateOfflineBanner => 'Sin conexión: mostrando lo que tenemos';

  @override
  String get stateErrorTitle => 'Algo ha fallado';

  @override
  String get stateComingSoonTitle => 'Muy pronto';

  @override
  String get stateComingSoonPayments =>
      'Los pagos online llegan pronto. No se ha cobrado nada.';

  @override
  String get stateComingSoon3d =>
      'La identidad 3D aún no está disponible. Te avisaremos cuando lo esté.';

  @override
  String get stateInsufficientDataTitle => 'Aún no hay datos suficientes';

  @override
  String get statePremiumTitle => 'Desbloquéalo con Premium';

  @override
  String get statePremiumMessage =>
      'Premium añade análisis y estadísticas. Nunca afecta a tu rating ni a tu ranking.';

  @override
  String progressOf(int current, int target) {
    return '$current/$target';
  }

  @override
  String get valueDash => '—';

  @override
  String get liveBadge => 'EN DIRECTO';

  @override
  String get liveRealtime => 'En directo · tiempo real';

  @override
  String liveUpdatingEvery(int seconds) {
    return 'En directo · se actualiza cada $seconds s';
  }

  @override
  String get correctedToast => 'El anotador corrigió el marcador';

  @override
  String get metricSkillRating => 'Skill Rating';

  @override
  String get metricSeasonPoints => 'Puntos de temporada';

  @override
  String get metricXp => 'XP';

  @override
  String metricPosition(int position) {
    return '#$position';
  }

  @override
  String get metricLevel => 'Nivel';

  @override
  String get metricUnranked => 'Sin ranking';

  @override
  String movementUp(int n) {
    return 'Sube $n';
  }

  @override
  String movementDown(int n) {
    return 'Baja $n';
  }

  @override
  String get movementSame => 'Sin cambios';

  @override
  String get competitionRanked => 'VERIFICADO · PUNTUABLE';

  @override
  String get competitionCertified => 'OFICIAL';

  @override
  String get competitionSocial => 'SOCIAL';

  @override
  String get officialNote =>
      'Solo los resultados verificados de torneos puntuables cambian tu Skill Rating y tu ranking de temporada.';

  @override
  String get casualNote =>
      'Los partidos amistosos nunca afectan a tu rating ni a tu ranking.';

  @override
  String get rarityCommon => 'Común';

  @override
  String get rarityRare => 'Raro';

  @override
  String get rarityEpic => 'Épico';

  @override
  String get rarityLegendary => 'Legendario';

  @override
  String xpReward(int xp) {
    return '+$xp XP';
  }

  @override
  String get newCoach => 'Nuevo entrenador';

  @override
  String reviewsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valoraciones',
      one: '1 valoración',
    );
    return '$_temp0';
  }

  @override
  String get timeNow => 'ahora';

  @override
  String timeInMinutes(int n) {
    return 'en $n min';
  }

  @override
  String timeMinutesAgo(int n) {
    return 'hace $n min';
  }

  @override
  String timeInHours(int n) {
    return 'en $n h';
  }

  @override
  String timeHoursAgo(int n) {
    return 'hace $n h';
  }

  @override
  String timeInDays(int n) {
    return 'en $n d';
  }

  @override
  String timeDaysAgo(int n) {
    return 'hace $n d';
  }

  @override
  String get dayToday => 'Hoy';

  @override
  String get dayYesterday => 'Ayer';

  @override
  String get navCompete => 'Competir';

  @override
  String get navPlay => 'Jugar';

  @override
  String homeGreeting(String name) {
    return 'Hola, $name';
  }

  @override
  String get homeLiveYouAreIn => 'Estás en pista';

  @override
  String get homeNextMatch => 'Tu próximo partido';

  @override
  String get homeLiveFollowing => 'Jugadores que sigues';

  @override
  String get homeMyTournaments => 'Mis torneos';

  @override
  String get homeYourSeason => 'Tu temporada';

  @override
  String get homeStats => 'Tus números';

  @override
  String get homeLatestAchievement => 'Último logro';

  @override
  String get homeRecommendedTournaments => 'Torneos para ti';

  @override
  String get homeCasualOpportunities => 'Partidos que buscan jugadores';

  @override
  String get homeRecommendedPartner => 'Compañero sugerido';

  @override
  String get homeRecommendedCoach => 'Entrenador para ti';

  @override
  String get homeUpcomingTraining => 'Próximos entrenamientos';

  @override
  String homePendingRequests(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count solicitudes de compañero pendientes',
      one: '1 solicitud de compañero pendiente',
    );
    return '$_temp0';
  }

  @override
  String get homeReviewRequests => 'Revisar';

  @override
  String get homeAiDailyBrief => 'Resumen diario';

  @override
  String get homePremiumTeaserTitle => 'Tu juego, explicado';

  @override
  String get homePremiumTeaserBody =>
      'Resúmenes diarios, estadísticas avanzadas e identidad 3D de atleta, creados solo con tus partidos reales.';

  @override
  String get homeInsufficientRanking =>
      'Juega partidos puntuables verificados para aparecer en el ranking de temporada.';

  @override
  String get homeInsufficientGeneric =>
      'Lo completaremos cuando haya suficientes datos reales.';

  @override
  String get homeEmptyTitle => 'Tu temporada empieza aquí';

  @override
  String get homeEmptyMessage =>
      'Únete a un torneo o a un amistoso para llenar tu inicio.';

  @override
  String get homeFindTournament => 'Buscar un torneo';

  @override
  String get matchVs => 'vs';

  @override
  String get matchTbd => 'Por decidir';

  @override
  String get matchBye => 'Exento';

  @override
  String matchCourt(String name) {
    return 'Pista $name';
  }

  @override
  String matchSetLabel(int n) {
    return 'Set $n';
  }

  @override
  String get matchWinner => 'Ganador';

  @override
  String get matchScheduled => 'Programado';

  @override
  String matchStartsAt(String time) {
    return 'Empieza $time';
  }

  @override
  String get matchWalkover => 'Walkover';

  @override
  String get matchPendingVerification => 'Pendiente de verificación';

  @override
  String get matchVerified => 'Verificado';

  @override
  String get matchServing => 'Saca';

  @override
  String get matchGames => 'Juegos';

  @override
  String get matchPoints => 'Puntos';

  @override
  String tournamentSpotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Quedan $count plazas',
      one: 'Queda 1 plaza',
      zero: 'Completo',
    );
    return '$_temp0';
  }

  @override
  String tournamentLiveCount(int count) {
    return '$count en directo';
  }

  @override
  String get tournamentFree => 'Gratis';

  @override
  String tournamentFee(String amount) {
    return 'Cuota $amount';
  }

  @override
  String get reasonComplementarySide => 'Lado complementario';

  @override
  String get reasonSimilarRating => 'Skill Rating similar';

  @override
  String get reasonPreviousPartnership => 'Ya jugasteis juntos';

  @override
  String get reasonActiveRecently => 'Activo recientemente';

  @override
  String get reasonSameCountry => 'Mismo país';

  @override
  String coachPerHour(String price) {
    return '$price / hora';
  }

  @override
  String coachNextAvailable(String time) {
    return 'Próximo: $time';
  }

  @override
  String coachYearsExperience(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count años',
      one: '1 año',
    );
    return '$_temp0';
  }

  @override
  String casualSpotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Quedan $count plazas',
      one: 'Queda 1 plaza',
      zero: 'Completo',
    );
    return '$_temp0';
  }

  @override
  String get casualRequestPending => 'Solicitud pendiente';

  @override
  String get casualYouAreIn => 'Estás dentro';

  @override
  String get casualYourGame => 'Tu partido';

  @override
  String bookingWith(String name) {
    return 'con $name';
  }

  @override
  String get achievementLocked => 'Bloqueado';

  @override
  String achievementUnlockedOn(String date) {
    return 'Desbloqueado el $date';
  }

  @override
  String get statMatches => 'Partidos';

  @override
  String get statWins => 'Victorias';

  @override
  String get statLosses => 'Derrotas';

  @override
  String get statWinRate => '% victorias';

  @override
  String get statStreak => 'Racha';

  @override
  String get statTitles => 'Títulos';

  @override
  String get statFinals => 'Finales';

  @override
  String get statTournaments => 'Torneos';

  @override
  String get statSets => 'Sets ganados–perdidos';

  @override
  String get statGames => 'Juegos ganados–perdidos';

  @override
  String get statBestStreak => 'Mejor racha';

  @override
  String get statWalkovers => 'Walkovers G–P';

  @override
  String streakWins(int n) {
    return '${n}V';
  }

  @override
  String streakLosses(int n) {
    return '${n}D';
  }

  @override
  String statLastPlayed(String date) {
    return 'Último partido: $date';
  }

  @override
  String get partnerMain => 'Compañero principal';

  @override
  String get partnerBestHistorical => 'Mejor compañero histórico';

  @override
  String get partnerMostPlayed => 'Con quien más has jugado';

  @override
  String get partnerRecommended => 'Compañeros recomendados';

  @override
  String get partnerNotSet => 'Aún sin compañero principal';

  @override
  String get partnerNotSetHint =>
      'Envía una solicitud: será oficial cuando la acepte.';

  @override
  String partnerUnlockHint(int count) {
    return 'Juega $count partidos verificados con el mismo compañero para desbloquearlo.';
  }

  @override
  String get partnerNoHistory =>
      'Aún no hay partidos verificados con un compañero.';

  @override
  String partnerRecord(int won, int played) {
    return '$won V · $played jugados';
  }

  @override
  String get partnerHistory => 'Historial de la pareja';

  @override
  String get partnerRequestAsMain => 'Pedir como compañero principal';

  @override
  String get partnerRequestSent => 'Solicitud de compañero enviada';

  @override
  String get partnerRemoveMain => 'Terminar la pareja';

  @override
  String get partnerRemoveMainConfirm =>
      'Dejará de ser tu compañero principal. Puedes enviar otra solicitud más adelante.';

  @override
  String get partnerRequestsTitle => 'Solicitudes de compañero';

  @override
  String get partnerRequestsIncoming => 'Recibidas';

  @override
  String get partnerRequestsOutgoing => 'Enviadas';

  @override
  String get partnerRequestsEmpty =>
      'No hay solicitudes de compañero ahora mismo.';

  @override
  String partnerRequestFrom(String name) {
    return '$name te quiere como compañero principal';
  }

  @override
  String partnerRequestTo(String name) {
    return 'Esperando a $name';
  }

  @override
  String get partnerRequestAccepted => 'Ya sois compañeros principales';

  @override
  String get partnerRecommendedEmpty =>
      'Juega algunos partidos verificados y te sugeriremos compañeros que encajen con tu juego.';

  @override
  String partnerRecommendedBasis(String rating, int matches) {
    return 'Según tu rating $rating y $matches partidos verificados';
  }

  @override
  String factRatingDiff(String value) {
    return 'Diferencia de rating $value';
  }

  @override
  String factTogether(int wins, int matches) {
    return '$wins/$matches victorias juntos';
  }

  @override
  String factVerifiedMatches(int count) {
    return '$count partidos verificados';
  }

  @override
  String factWinRate(String value) {
    return '% victorias $value';
  }

  @override
  String factLastPlayed(String when) {
    return 'Jugó $when';
  }

  @override
  String get profileTabOverview => 'Resumen';

  @override
  String get profileTabResults => 'Resultados';

  @override
  String get profileTabAchievements => 'Logros';

  @override
  String get profileTabPartners => 'Compañeros';

  @override
  String get profileTabStats => 'Estadísticas';

  @override
  String profileMemberSince(String date) {
    return 'Miembro desde $date';
  }

  @override
  String get profileFollowers => 'Seguidores';

  @override
  String get profileFollowing => 'Siguiendo';

  @override
  String get profileRespects => 'Respetos';

  @override
  String get profileEdit => 'Editar perfil';

  @override
  String get profileContact => 'Contacto (solo lo ves tú)';

  @override
  String get profileRecentResults => 'Resultados recientes';

  @override
  String get profileTournamentHistory => 'Historial de torneos';

  @override
  String get profileNoResults => 'Aún no hay resultados verificados';

  @override
  String get profileNoResultsHint =>
      'Los resultados oficiales aparecerán aquí cuando el personal los verifique.';

  @override
  String get profile3dIdentity => 'Identidad 3D';

  @override
  String get profileRatingHistory => 'Historial de rating';

  @override
  String get profileSeasonHistory => 'Puntos de temporada';

  @override
  String get profileRespectSent => 'Respeto enviado';

  @override
  String get resultWon => 'V';

  @override
  String get resultLost => 'D';

  @override
  String get resultRanked => 'Puntuable';

  @override
  String get resultUnranked => 'No puntuable';

  @override
  String resultWithPartner(String name) {
    return 'con $name';
  }

  @override
  String get placementChampion => 'Campeón';

  @override
  String get placementFinalist => 'Finalista';

  @override
  String get achievementsTitle => 'Logros';

  @override
  String achievementsProgress(int unlocked, int total) {
    return '$unlocked de $total desbloqueados';
  }

  @override
  String get achievementsCompetitive => 'Competitivos';

  @override
  String get achievementsSocial => 'Sociales';

  @override
  String get achievementsPremiumShelf => 'Insignias Premium';

  @override
  String get achievementsPremiumNote =>
      'Las insignias Premium son estéticas: nunca afectan al rating ni al ranking.';

  @override
  String get achievementsEmpty => 'Aún no hay logros';

  @override
  String get achievementAutomatic => 'Se desbloquea automáticamente';

  @override
  String get statsAdvanced => 'Estadísticas avanzadas';

  @override
  String get statsByStage => 'Por fase';

  @override
  String get statsGroupStage => 'Fase de grupos';

  @override
  String get statsKnockout => 'Eliminatoria';

  @override
  String get statsDecidingSets => 'Sets decisivos';

  @override
  String get statsByCompetition => 'Puntuable vs no puntuable';

  @override
  String get statsPointAnalytics => 'Análisis de puntos';

  @override
  String statsCoverage(String value) {
    return 'Cobertura $value';
  }

  @override
  String get statsLimitedData => 'Datos limitados';

  @override
  String get statsWinnersByShot => 'Winners por golpe';

  @override
  String get statsErrorsByType => 'Errores por tipo';

  @override
  String get statsRatingTimeline => 'Evolución del rating';

  @override
  String get statsAdvancedLocked =>
      'Las estadísticas avanzadas están disponibles para miembros Premium en su propio perfil.';

  @override
  String statsRecord(int wins, int matches) {
    return '$wins/$matches';
  }

  @override
  String get followersTitle => 'Seguidores';

  @override
  String get followingTitle => 'Siguiendo';

  @override
  String get followersEmpty => 'Aún no hay nadie';

  @override
  String get ratingHistoryTitle => 'Historial de rating';

  @override
  String get ratingReasonOfficial => 'Resultado oficial';

  @override
  String get ratingReasonCorrection => 'Reversión por corrección';

  @override
  String get ratingReasonInactivity => 'Inactividad';

  @override
  String get ratingBreakdown => 'Cómo se calculó';

  @override
  String get ratingExpected => 'Resultado esperado';

  @override
  String get ratingKFactor => 'K efectivo';

  @override
  String get ratingOwnStrength => 'Fuerza de tu equipo';

  @override
  String get ratingOpponentStrength => 'Fuerza del rival';

  @override
  String get ratingUpset => 'Sorpresa';

  @override
  String get ratingStage => 'Fase';

  @override
  String get ratingHistoryEmpty => 'Aún no hay cambios de rating';

  @override
  String get seasonPointsTitle => 'Puntos de temporada';

  @override
  String get seasonBestStageNote =>
      'Cada categoría cuenta una vez: la mejor fase que alcanzaste.';

  @override
  String get challengesTitle => 'Retos';

  @override
  String get challengesIncoming => 'Recibidos';

  @override
  String get challengesOutgoing => 'Enviados';

  @override
  String get challengesEmpty => 'No hay retos';

  @override
  String challengeFrom(String name) {
    return '$name te ha retado';
  }

  @override
  String challengeTo(String name) {
    return 'Has retado a $name';
  }

  @override
  String get searchPlayersTitle => 'Buscar jugadores';

  @override
  String get searchPlayersHint => 'Nombre o ID de jugador';

  @override
  String get searchPlayersEmpty => 'Ningún jugador coincide con tu búsqueda';

  @override
  String get editProfileTitle => 'Editar perfil';

  @override
  String get editProfileCompetitiveNote =>
      'El rating, nivel, puntos y XP vienen de resultados verificados y no se pueden editar.';

  @override
  String get editProfilePhoto => 'Cambiar foto';

  @override
  String get editProfilePhotoHint =>
      'JPG, PNG o WebP · hasta 4 MB. También se usa para tu identidad 3D.';

  @override
  String get editProfileSaved => 'Perfil guardado';

  @override
  String get fieldBio => 'Biografía';

  @override
  String get fieldDateOfBirth => 'Fecha de nacimiento';

  @override
  String get fieldGender => 'Género';

  @override
  String get fieldSide => 'Lado de juego';

  @override
  String get changePasswordTitle => 'Cambiar contraseña';

  @override
  String get fieldCurrentPassword => 'Contraseña actual';

  @override
  String get fieldNewPassword => 'Nueva contraseña';

  @override
  String get passwordChanged =>
      'Contraseña cambiada. Se cerraron las demás sesiones.';

  @override
  String get premiumTitle => 'Premium';

  @override
  String get premiumHeadline => 'Entrena mejor. Compite igual.';

  @override
  String get premiumSubhead =>
      'Análisis y estadísticas creados solo con tus partidos reales y verificados.';

  @override
  String premiumNeverAffects(String items) {
    return 'Premium nunca afecta a tu $items.';
  }

  @override
  String get premiumNeverAffectsDefault =>
      'Premium nunca afecta a tu Skill Rating, ranking de temporada, cabezas de serie ni elegibilidad.';

  @override
  String get neverSkillRating => 'Skill Rating';

  @override
  String get neverSeasonRanking => 'ranking de temporada';

  @override
  String get neverSeeding => 'cabezas de serie';

  @override
  String get neverEligibility => 'elegibilidad para torneos';

  @override
  String get neverOfficialResults => 'resultados oficiales';

  @override
  String get premiumFeatureAi => 'Análisis con IA';

  @override
  String get premiumFeatureAiBody =>
      'Resúmenes diarios, informes de rendimiento y recomendaciones.';

  @override
  String get premiumFeatureAnalytics => 'Estadísticas avanzadas';

  @override
  String get premiumFeatureAnalyticsBody =>
      'Por fases, sets decisivos, golpes y errores.';

  @override
  String get premiumFeature3d => 'Identidad 3D de atleta';

  @override
  String get premiumFeature3dBody =>
      'Un avatar 3D giratorio creado a partir de tu foto de perfil.';

  @override
  String get premiumFeatureBadges => 'Insignias Premium';

  @override
  String get premiumFeatureBadgesBody =>
      'Insignias estéticas, claramente separadas de las medallas competitivas.';

  @override
  String get premiumPlansTitle => 'Elige un plan';

  @override
  String premiumPlanMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meses',
      one: '1 mes',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlansUnavailable =>
      'Los planes aparecerán aquí cuando se publiquen los precios.';

  @override
  String get premiumCheckoutSoon => 'Pagos online muy pronto';

  @override
  String get premiumSubscribe => 'Continuar al pago';

  @override
  String get premiumActive => 'Eres Premium';

  @override
  String premiumActiveUntil(String date) {
    return 'Activo hasta el $date';
  }

  @override
  String get premiumOpenAi => 'Abrir análisis con IA';

  @override
  String get premiumOpen3d => 'Abrir identidad 3D';

  @override
  String get paymentsTitle => 'Pagos';

  @override
  String get paymentsEmpty => 'Aún no hay pagos';

  @override
  String get paymentStatusTitle => 'Estado del pago';

  @override
  String get paymentWaiting =>
      'Esperando la confirmación del proveedor de pago…';

  @override
  String get paymentOpenCheckout => 'Abrir la página de pago';

  @override
  String get paymentSecureTitle => 'Pago seguro';

  @override
  String get paymentSucceeded => 'Pago confirmado';

  @override
  String get paymentFailedTitle => 'El pago no se completó';

  @override
  String paymentReference(String ref) {
    return 'Referencia $ref';
  }

  @override
  String get paymentOnlyBackend =>
      'Solo marcamos un pago como pagado cuando el servidor lo confirma.';

  @override
  String get aiTitle => 'Análisis con IA';

  @override
  String get aiGenerate => 'Generar';

  @override
  String get aiRefresh => 'Actualizar';

  @override
  String get aiWorking => 'Analizando tus partidos…';

  @override
  String get aiFailed => 'No se pudo generar este análisis.';

  @override
  String get aiNotGenerated => 'Aún no generado';

  @override
  String aiCoverage(String level) {
    return 'Cobertura de datos: $level';
  }

  @override
  String get aiCoverageNone => 'ninguna';

  @override
  String get aiCoverageLow => 'baja';

  @override
  String get aiCoverageMedium => 'media';

  @override
  String get aiCoverageHigh => 'alta';

  @override
  String aiMatchesUsed(int count) {
    return '$count partidos usados';
  }

  @override
  String get aiHighlights => 'Lo más destacado';

  @override
  String get aiRecommendations => 'Recomendaciones';

  @override
  String get aiFacts => 'Los datos';

  @override
  String aiGeneratedAt(String when) {
    return 'Generado $when';
  }

  @override
  String get aiTypePlayerInsights => 'Análisis del jugador';

  @override
  String get aiTypePerformanceSummary => 'Resumen de rendimiento';

  @override
  String get aiTypePartnerRecommendation => 'Recomendación de compañero';

  @override
  String get aiTypeTournamentRecommendation => 'Recomendación de torneo';

  @override
  String get aiTypeCoachRecommendation => 'Recomendación de entrenador';

  @override
  String get aiTypeDevelopmentRecommendation => 'Plan de mejora';

  @override
  String get aiTypeDailyBrief => 'Resumen diario';

  @override
  String get threeDTitle => 'Identidad 3D';

  @override
  String get threeDGenerate => 'Generar mi identidad 3D';

  @override
  String get threeDRegenerate => 'Generar de nuevo';

  @override
  String get threeDProcessing =>
      'Creando tu identidad 3D. Puede tardar unos minutos.';

  @override
  String get threeDNeedsPhoto =>
      'Sube primero una foto de perfil: tu identidad 3D se genera a partir de ella.';

  @override
  String get threeDUploadPhoto => 'Subir foto';

  @override
  String get threeDFailed => 'La generación falló. Puedes intentarlo de nuevo.';

  @override
  String get threeDEmpty => 'Aún no tienes identidad 3D';

  @override
  String get bookingStatus => 'Estado';

  @override
  String get bookingPrice => 'Precio';

  @override
  String get bookingDuration => 'Duración';

  @override
  String get bookingLocation => 'Lugar';

  @override
  String get bookingTrainingType => 'Tipo de entrenamiento';

  @override
  String get bookingNotes => 'Notas';

  @override
  String get bookingFeedback => 'Comentarios del entrenador';

  @override
  String bookingXpAwarded(int xp) {
    return '+$xp XP ganados';
  }

  @override
  String get bookingCancel => 'Cancelar reserva';

  @override
  String get bookingCancelReason => 'Motivo (opcional)';

  @override
  String get bookingCancelled => 'Reserva cancelada';

  @override
  String get bookingCancelWindow =>
      'Las reservas confirmadas se pueden cancelar hasta 24 horas antes del inicio.';

  @override
  String get bookingReview => 'Valora esta sesión';

  @override
  String get bookingReviewComment => 'Comentario (opcional)';

  @override
  String get bookingReviewThanks => 'Gracias por tu valoración';

  @override
  String get bookingYourReview => 'Tu valoración';

  @override
  String bookingRejectedReason(String reason) {
    return 'Rechazada: $reason';
  }

  @override
  String bookingCancelledBy(String who) {
    return 'Cancelada por $who';
  }

  @override
  String get bookingByPlayer => 'el jugador';

  @override
  String get bookingByCoach => 'el entrenador';

  @override
  String get bookingProgressRecorded => 'Progreso registrado';

  @override
  String get bookingDetailTitle => 'Sesión de entrenamiento';

  @override
  String get competeTitle => 'Competir';

  @override
  String get competeTabTournaments => 'Torneos';

  @override
  String get competeTabLive => 'En directo';

  @override
  String get competeSearchHint => 'Buscar torneos';

  @override
  String get filterRanked => 'Puntuables';

  @override
  String get filterCertified => 'Oficiales';

  @override
  String get filterSocial => 'Sociales';

  @override
  String get filterUpcoming => 'Próximos';

  @override
  String get liveNowEmptyTitle => 'No hay partidos en pista ahora mismo';

  @override
  String get liveNowEmptyMessage =>
      'Los partidos en directo aparecen aquí en cuanto un anotador empieza uno.';

  @override
  String get tournamentTabOverview => 'Resumen';

  @override
  String get tournamentTabLive => 'En directo';

  @override
  String get tournamentTabSchedule => 'Horario';

  @override
  String get tournamentTabResults => 'Resultados';

  @override
  String get tournamentRules => 'Reglas';

  @override
  String get tournamentAbout => 'Información';

  @override
  String get tournamentOpenMap => 'Abrir en mapas';

  @override
  String tournamentRegistrationWindow(String from, String to) {
    return 'Inscripción $from – $to';
  }

  @override
  String get tournamentChampion => 'Campeón';

  @override
  String get tournamentNoLive =>
      'No hay partidos en directo en este torneo ahora mismo.';

  @override
  String get tournamentNoSchedule => 'El horario aún no se ha publicado.';

  @override
  String get tournamentNoResults => 'Aún no hay resultados verificados.';

  @override
  String get tournamentRankedNote =>
      'Los resultados verificados de aquí cambian el Skill Rating y los puntos de temporada.';

  @override
  String get tournamentUnrankedNote =>
      'Los resultados de aquí no afectan al Skill Rating ni al ranking de temporada.';

  @override
  String get categoryRegister => 'Inscribirse';

  @override
  String get categoryJoinWaitlist => 'Entrar en lista de espera';

  @override
  String get categoryRegistered => 'Inscrito';

  @override
  String get categoryView => 'Equipos, grupos y cuadro';

  @override
  String categoryWaitlist(int count) {
    return '$count en lista de espera';
  }

  @override
  String get categoryTabTeams => 'Equipos';

  @override
  String get categoryTabGroups => 'Grupos';

  @override
  String get categoryTabBracket => 'Cuadro';

  @override
  String get categoryNoTeams => 'Aún no hay equipos';

  @override
  String get categoryNoGroups => 'Los grupos aparecerán tras el sorteo.';

  @override
  String get categoryNoBracket =>
      'El cuadro se genera después de la fase de grupos.';

  @override
  String get teamWithdrawn => 'Retirado';

  @override
  String get teamDisqualified => 'Descalificado';

  @override
  String teamSeed(int seed) {
    return 'Cabeza de serie $seed';
  }

  @override
  String get standingsPlayed => 'PJ';

  @override
  String get standingsWins => 'G';

  @override
  String get standingsLosses => 'P';

  @override
  String get standingsSetDiff => 'DS';

  @override
  String get standingsGameDiff => 'DJ';

  @override
  String get standingsPoints => 'Pts';

  @override
  String get standingsTeam => 'Equipo';

  @override
  String get groupFinished => 'Finalizado';

  @override
  String registerTitle2(String category) {
    return 'Inscripción en $category';
  }

  @override
  String get registerPartner => 'Compañero';

  @override
  String get registerPickPartner => 'Elegir compañero';

  @override
  String get registerChangePartner => 'Cambiar compañero';

  @override
  String get registerCheckEligibility => 'Comprobando requisitos…';

  @override
  String get registerEligible => 'Cumples los requisitos';

  @override
  String get registerYourIssues => 'Tú';

  @override
  String get registerPartnerIssues => 'Tu compañero';

  @override
  String get registerClosed => 'Las inscripciones están cerradas';

  @override
  String get registerFullWaitlist =>
      'Esta categoría está completa: entrarás en la lista de espera y subirás automáticamente si se libera una plaza.';

  @override
  String registerFeeNote(String amount) {
    return 'Cuota de inscripción $amount. El sistema del organizador confirma el pago.';
  }

  @override
  String get registerSubmit => 'Confirmar inscripción';

  @override
  String get registerDone => 'Estás inscrito';

  @override
  String get registerWaitlisted => 'Estás en la lista de espera';

  @override
  String get myRegistrationsTitle => 'Mis inscripciones';

  @override
  String get myRegistrationsEmpty => 'Aún no te has inscrito en ningún torneo';

  @override
  String get registrationCancel => 'Cancelar inscripción';

  @override
  String get statsForm => 'Forma (últimos 10 partidos)';

  @override
  String get statsLast10 => 'Últimos 10';

  @override
  String get statsOverall => 'En total';

  @override
  String get statsByRound => 'Por ronda';

  @override
  String get statsSetsAnalysis => 'Sets';

  @override
  String get statsWonFirstSet => 'Tras ganar el primer set';

  @override
  String get statsLostFirstSet => 'Tras perder el primer set';

  @override
  String get statsTiebreaks => 'Sets con tie-break';

  @override
  String get statsComebacks => 'Victorias remontando';

  @override
  String get statsServeAndPoints => 'Saque y puntos';

  @override
  String get statsAces => 'Aces';

  @override
  String get statsDoubleFaults => 'Dobles faltas';

  @override
  String get statsPointsWon => 'Puntos ganados';

  @override
  String get statsPointsShare => '% de puntos ganados';

  @override
  String get statsByPartner => 'Con cada compañero';

  @override
  String get statsByOpponent => 'Contra rivales';

  @override
  String get statsPerMatch => 'Partido a partido';

  @override
  String get statsSeeAll => 'Todas las estadísticas';

  @override
  String get predictionsTitle => 'Predicciones';

  @override
  String get predictionsTabOpen => 'Partidos';

  @override
  String get predictionsTabMine => 'Mis predicciones';

  @override
  String get predictionsTabLeaderboard => 'Mejores pronosticadores';

  @override
  String predictionsRules(int winner, int exact) {
    return 'Solo torneos certificados. Ganador correcto: $winner puntos · sets exactos: +$exact.';
  }

  @override
  String get predictionsEmpty =>
      'No hay partidos abiertos a predicciones ahora mismo.';

  @override
  String get predictionsMineEmpty => 'Aún no has pronosticado ningún partido.';

  @override
  String get predictionsLeaderboardEmpty => 'Aún no hay pronosticadores.';

  @override
  String get predictionPointsLabel => 'Puntos de predicción';

  @override
  String predictionPosition(int position) {
    return 'Puesto #$position';
  }

  @override
  String predictionWonCount(int won, int settled) {
    return '$won/$settled acertadas';
  }

  @override
  String predictionCrowdCount(int count) {
    return '$count predicciones';
  }

  @override
  String get predictionPredict => 'Pronosticar';

  @override
  String get predictionEdit => 'Cambiar';

  @override
  String get predictionClosed => 'Cerrado';

  @override
  String predictionStatusWon(int points) {
    return 'Acertada +$points';
  }

  @override
  String get predictionStatusLost => 'Fallada';

  @override
  String get predictionStatusVoid => 'Anulada';

  @override
  String get predictionStatusPending => 'Esperando el resultado';

  @override
  String get predictionSaved => 'Predicción guardada';

  @override
  String get predictionPick => '¿Quién gana?';

  @override
  String get predictionExactScore => 'Sets exactos (opcional, puntos extra)';

  @override
  String get predictionSave => 'Guardar predicción';

  @override
  String get coinsTitle => 'Mis puntos';

  @override
  String get coinsBalance => 'Saldo de Playmaker Coins';

  @override
  String get coinsStore => 'Tienda';

  @override
  String coinsRate(int coins) {
    return '$coins B = 1 JOD';
  }

  @override
  String get coinsBuy => 'Comprar';

  @override
  String get coinsHistory => 'Historial';

  @override
  String get coinsHistoryEmpty => 'Aún no hay movimientos.';

  @override
  String get coinsSeparateNote =>
      'Las Playmaker Coins son independientes de las gemas de popularidad.';

  @override
  String get popularityTitle => 'Popularidad';

  @override
  String popularityGems(int count) {
    return '$count gemas';
  }

  @override
  String popularityGifts(int count) {
    return '$count regalos recibidos';
  }

  @override
  String popularityNextRank(int gems, String rank) {
    return '$gems gemas para $rank';
  }

  @override
  String get popularityTopRank => 'Rango máximo alcanzado';

  @override
  String get popularityReceivedTitle => 'Regalos recibidos';

  @override
  String get popularityLatest => 'Últimos regalos';

  @override
  String get popularityEmpty =>
      'Aún no hay regalos: ¡sé el primero en enviar uno!';

  @override
  String get popularityNote =>
      'Las gemas solo muestran popularidad: nunca se gastan ni se convierten.';

  @override
  String get giftsTitle => 'Regalos y popularidad';

  @override
  String get giftsSend => 'Enviar un regalo';

  @override
  String giftsSendTitle(String name) {
    return 'Enviar un regalo a $name';
  }

  @override
  String get giftsDailyClaim => 'Recoger el regalo de hoy';

  @override
  String get giftsDailyClaimed => 'Regalo de hoy recogido';

  @override
  String get giftsDailyClaimedSnack =>
      '¡El regalo de hoy es tuyo: envíaselo a un jugador!';

  @override
  String get giftsMyStock => 'Mis regalos gratis';

  @override
  String get giftsStockEmpty =>
      'Aún no tienes regalos gratis. Recoge el regalo diario, juega partidos verificados o participa en torneos para ganarlos.';

  @override
  String get giftsSendToPlayers => 'Busca un jugador para enviarle regalos';

  @override
  String get giftsCatalog => 'Todos los regalos';

  @override
  String get giftsFree => 'Gratis';

  @override
  String get giftsNoneLeft => 'Agotado';

  @override
  String get giftsPaidSection => 'Regalos premium';

  @override
  String get giftsMinorCantBuy =>
      'Comprar regalos es solo para mayores de 18 años.';

  @override
  String get giftsSent => '¡Regalo enviado!';

  @override
  String get statWinners => 'Winner';

  @override
  String get statWinnersHint => 'Puntos ganados con un golpe ganador directo';

  @override
  String get statErrors => 'Loser';

  @override
  String get statErrorsHint => 'Puntos perdidos por errores propios';

  @override
  String get rankingsFilters => 'Filtros';

  @override
  String get rankingsFilterGender => 'Chicos / Chicas';

  @override
  String get rankingsFilterNationality => 'Nacionalidad';

  @override
  String get rankingsFilterAge => 'Grupo de edad';

  @override
  String get rankingsFiltersApply => 'Aplicar';

  @override
  String get rankingsFiltersClear => 'Borrar todo';

  @override
  String get filterGenderMale => 'Chicos / Hombres';

  @override
  String get filterGenderFemale => 'Chicas / Mujeres';

  @override
  String get filterJordanian => 'Jordano';

  @override
  String get filterForeign => 'No jordano';

  @override
  String ageUnder(int age) {
    return 'Sub-$age';
  }

  @override
  String get ageAdults => 'Adultos (18+)';

  @override
  String ageOver(int age) {
    return '+$age';
  }

  @override
  String tournamentEntryFee(String amount) {
    return 'Cuota de inscripción $amount por equipo';
  }

  @override
  String get registerPaymentMethod => 'Pago';

  @override
  String get registerPayOnline => 'Pagar online ahora';

  @override
  String get registerPayOnlineHint =>
      'Pago con tarjeta mediante MEPS: tu inscripción se completa al instante';

  @override
  String get registerPayCash => 'Efectivo en la sede';

  @override
  String get registerPayCashHint => 'Paga al organizador y él confirma tu pago';

  @override
  String get registerSubmitAndPay => 'Inscribirse y pagar';

  @override
  String registrationCashDue(String amount) {
    return 'Paga $amount en efectivo al organizador.';
  }

  @override
  String get registrationPayOnlineInstead => 'Pagar online en su lugar';

  @override
  String get scoreDeuce => 'Deuce';

  @override
  String get scoreAdvantage => 'ADV';

  @override
  String get scoreGoldenPoint => 'Punto de oro';

  @override
  String get registerTeamName => 'Nombre del equipo';

  @override
  String get registerTeamNameHint => 'Obligatorio, p. ej. Smash Brothers';

  @override
  String get registrationRenameTeam => 'Cambiar nombre del equipo';

  @override
  String get registrationTeamRenamed => 'Nombre del equipo actualizado';

  @override
  String registrationPartnerInvite(String name) {
    return '$name te quiere como compañero en este torneo. Confirma para enviarlo al organizador.';
  }

  @override
  String get registrationPartnerAccept => 'Aceptar';

  @override
  String get registrationPartnerDecline => 'Rechazar';

  @override
  String get registrationPartnerDeclineConfirm =>
      '¿Rechazar jugar en pareja en este torneo?';

  @override
  String get registrationPartnerAcceptedSnack =>
      'Confirmado: el organizador revisará ahora la inscripción';

  @override
  String get registrationPartnerDeclinedSnack => 'Invitación rechazada';

  @override
  String get registrationAwaitingPartnerHint =>
      'Esperando a que tu compañero confirme antes de que el organizador lo revise.';

  @override
  String get registrationPartnerDeclinedHint =>
      'Tu compañero rechazó. Elige otro compañero o cancela la inscripción.';

  @override
  String get registrationCancelConfirm => 'Se liberará tu plaza.';

  @override
  String get registrationCancelled => 'Inscripción cancelada';

  @override
  String get registrationPay => 'Pagar ahora';

  @override
  String get registrationPartnerChanged => 'Compañero actualizado';

  @override
  String registrationPromoted(String date) {
    return 'Salió de la lista de espera el $date';
  }

  @override
  String get liveTitle => 'Centro del partido';

  @override
  String get livePointFeed => 'Punto a punto';

  @override
  String get livePointFeedEmpty => 'Aún no hay puntos registrados.';

  @override
  String get liveTiebreak => 'Tie-break';

  @override
  String get liveMatchOver => 'Partido terminado';

  @override
  String liveWinnerTitle(String team) {
    return '¡Gana $team!';
  }

  @override
  String get liveResultPending => 'Resultado pendiente de verificación';

  @override
  String get livePartialDetail => 'Detalle parcial';

  @override
  String livePointBy(String team) {
    return 'Punto para $team';
  }

  @override
  String get liveNotStarted => 'No ha empezado';

  @override
  String get liveCorrected => 'Corregido';

  @override
  String get rankingsTabSeason => 'Temporada';

  @override
  String get rankingsTabSkill => 'Skill';

  @override
  String get rankingsTabXp => 'XP';

  @override
  String get rankingsYou => 'Tú';

  @override
  String get rankingsSeasonPicker => 'Temporada';

  @override
  String get rankingsSearchHint => 'Buscar en el ranking';

  @override
  String get rankingsXpNote =>
      'La XP premia la actividad. Nunca afecta al ranking ni a las cabezas de serie.';

  @override
  String get rankingsSkillNote =>
      'El Skill Rating solo cambia con resultados verificados de torneos puntuables.';

  @override
  String get rankingsSeasonNote =>
      'Los puntos de temporada cuentan tu mejor fase en cada categoría.';

  @override
  String rankingsLevelPosition(int position, String level) {
    return '#$position en $level';
  }

  @override
  String get playTitle => 'Jugar';

  @override
  String get playTabCasual => 'Amistosos';

  @override
  String get playTabCoaches => 'Entrenadores';

  @override
  String get casualMyMatches => 'Mis partidos';

  @override
  String get casualCreated => 'Creados';

  @override
  String get casualJoined => 'Unido';

  @override
  String get casualDetailTitle => 'Partido amistoso';

  @override
  String get casualParticipants => 'Jugadores';

  @override
  String get casualRequests => 'Solicitudes';

  @override
  String get casualNoRequests => 'No hay solicitudes pendientes';

  @override
  String get casualLeave => 'Salir del partido';

  @override
  String get casualCancelGame => 'Cancelar partido';

  @override
  String get casualCancelConfirm => 'Se avisará a todos los que se unieron.';

  @override
  String get casualLeft => 'Has salido del partido';

  @override
  String get casualCancelled => 'Partido cancelado';

  @override
  String get fieldVenue => 'Sede (opcional)';

  @override
  String get fieldCourt => 'Pista (opcional)';

  @override
  String get venueAny => 'Cualquier sede';

  @override
  String get courtAny => 'Cualquier pista';

  @override
  String get venuesTitle => 'Sedes';

  @override
  String venueCourts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pistas',
      one: '1 pista',
    );
    return '$_temp0';
  }

  @override
  String get venueUpcoming => 'Próximos torneos';

  @override
  String get venuesEmpty => 'No se encontraron sedes';

  @override
  String get coachesFilterAll => 'Todos';

  @override
  String get coachesSortRating => 'Mejor valorados';

  @override
  String get coachesSortPrice => 'Precio';

  @override
  String get coachesSortName => 'Nombre';

  @override
  String get coachesSearchHint => 'Buscar entrenadores o ciudad';

  @override
  String get coachLanguages => 'Idiomas';

  @override
  String get coachExperience => 'Experiencia';

  @override
  String get coachTrainingTypes => 'Tipos de entrenamiento';

  @override
  String get coachAvailability => 'Disponibilidad';

  @override
  String get coachNoSlots => 'No hay horarios libres este día';

  @override
  String get coachReviews => 'Valoraciones';

  @override
  String get coachNoReviews =>
      'Aún no hay valoraciones: sé el primero tras tu sesión.';

  @override
  String get coachBook => 'Reservar sesión';

  @override
  String coachBookSlot(String time) {
    return 'Reservar $time';
  }

  @override
  String get bookingSheetTitle => 'Confirmar reserva';

  @override
  String get bookingPickSlot => 'Elige primero un horario';

  @override
  String get bookingSummary => 'Resumen';

  @override
  String get bookingTotal => 'Total';

  @override
  String get bookingConfirm => 'Solicitar reserva';

  @override
  String get bookingRequested =>
      'Reserva solicitada: el entrenador la confirmará.';

  @override
  String get bookingSlotTaken =>
      'Ese horario se acaba de ocupar. Esta es la disponibilidad actualizada.';

  @override
  String get myBookingsTitle => 'Mis entrenamientos';

  @override
  String get myBookingsUpcoming => 'Próximos';

  @override
  String get myBookingsPast => 'Pasados';

  @override
  String get myBookingsEmpty => 'No hay sesiones';

  @override
  String get trainingProgressTitle => 'Progreso del entrenamiento';

  @override
  String get trainingProgressEmpty =>
      'Las evaluaciones de tu entrenador aparecerán aquí tras las sesiones.';

  @override
  String trainingLatest(int score) {
    return 'Última $score/10';
  }

  @override
  String trainingAssessments(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count evaluaciones',
      one: '1 evaluación',
    );
    return '$_temp0';
  }

  @override
  String get coachPortalTitle => 'Portal del entrenador';

  @override
  String get coachPortalToday => 'Próximas sesiones';

  @override
  String get coachPortalPending => 'Solicitudes por responder';

  @override
  String get coachPortalAvailability => 'Disponibilidad';

  @override
  String get coachPortalBookings => 'Reservas';

  @override
  String get coachPortalProfile => 'Perfil de entrenador';

  @override
  String get coachPortalSwitchToPlayer => 'App de jugador';

  @override
  String get coachPortalOpen => 'Portal del entrenador';

  @override
  String get slotAdd => 'Añadir horarios';

  @override
  String get slotDate => 'Fecha';

  @override
  String get slotStart => 'Inicio';

  @override
  String get slotEnd => 'Fin';

  @override
  String get slotRepeat => 'Repetir cada semana';

  @override
  String slotRepeatWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Durante $count semanas más',
      one: 'Durante 1 semana más',
      zero: 'No repetir',
    );
    return '$_temp0';
  }

  @override
  String get slotActive => 'Reservable';

  @override
  String get slotBooked => 'Reservado';

  @override
  String get slotDeleteConfirm => '¿Eliminar este horario?';

  @override
  String get slotsCreated => 'Horarios añadidos';

  @override
  String get slotsEmptyDay => 'No hay horarios este día';

  @override
  String get bookingConfirmAction => 'Confirmar';

  @override
  String get bookingRejectAction => 'Rechazar';

  @override
  String get bookingCompleteAction => 'Marcar como completada';

  @override
  String get bookingFeedbackAction => 'Enviar comentarios';

  @override
  String get bookingProgressAction => 'Registrar progreso';

  @override
  String get bookingReasonOptional => 'Motivo (opcional)';

  @override
  String get bookingFeedbackHint => 'Qué fue bien y qué trabajar';

  @override
  String get bookingUpdated => 'Reserva actualizada';

  @override
  String get progressSkill => 'Habilidad';

  @override
  String get progressScore => 'Nota (1–10)';

  @override
  String get progressAddSkill => 'Añadir habilidad';

  @override
  String get progressSaved => 'Progreso guardado';

  @override
  String get coachFieldCity => 'Ciudad';

  @override
  String get coachFieldPrice => 'Precio por hora';

  @override
  String get coachFieldYears => 'Años de experiencia';

  @override
  String get coachFieldSpecialties => 'Especialidades';

  @override
  String get coachFieldLanguages => 'Idiomas (separados por comas)';

  @override
  String get coachProfileSaved => 'Perfil de entrenador guardado';

  @override
  String get notificationsMarkAllRead => 'Marcar todo como leído';

  @override
  String get notificationsFilterUnread => 'No leídas';

  @override
  String get notificationsFilterAll => 'Todas';

  @override
  String get settingsNotifications => 'Notificaciones';

  @override
  String get settingsPushEnabled => 'Las notificaciones push están activadas';

  @override
  String get settingsPushDisabled =>
      'Las notificaciones push están desactivadas';

  @override
  String get settingsPushUnavailable =>
      'Push no está configurado en esta versión';

  @override
  String get settingsPushEnable => 'Activar';

  @override
  String get settingsAccount => 'Cuenta';

  @override
  String get settingsPremium => 'Premium';

  @override
  String get settingsPayments => 'Pagos';

  @override
  String get settingsMyTraining => 'Mis entrenamientos';

  @override
  String get settingsStaff => 'Anotación (personal)';

  @override
  String settingsVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get settingsLogOutConfirm => 'Tendrás que iniciar sesión de nuevo.';

  @override
  String get scorekeeperTitle => 'Anotador';

  @override
  String get scorekeeperLogin => 'Acceso del personal';

  @override
  String get scorekeeperLoginField => 'Usuario del personal';

  @override
  String get scorekeeperMatches => 'Partidos asignados';

  @override
  String get scorekeeperNoMatches =>
      'No tienes partidos asignados ahora mismo.';

  @override
  String get scorekeeperPointTo => 'Punto';

  @override
  String get scorekeeperUndo => 'Deshacer último punto';

  @override
  String get scorekeeperEndMatch => 'Finalizar partido';

  @override
  String get scorekeeperEndMatchTitle => 'Finalizar el partido: ¿quién ganó?';

  @override
  String get scorekeeperEndMatchHelp =>
      'El partido termina ahora con el marcador actual (límite de tiempo, pista necesaria...). Puedes reabrirlo con deshacer.';

  @override
  String get scorekeeperEndReason => 'Motivo (opcional)';

  @override
  String get scorekeeperMatchEnded => 'Partido finalizado';

  @override
  String get scorekeeperReopen => 'Reabrir partido';

  @override
  String get scorekeeperAddDetail => 'Añadir detalle';

  @override
  String get scorekeeperDetailOptional =>
      'Opcional: el punto ya está registrado.';

  @override
  String get scorekeeperEndingType => 'Cómo terminó';

  @override
  String get scorekeeperShot => 'Golpe';

  @override
  String get scorekeeperError => 'Error';

  @override
  String get scorekeeperServe => 'Saque';

  @override
  String get scorekeeperPlayer => 'Jugador';

  @override
  String get scorekeeperSaved => 'Detalle guardado';

  @override
  String get scorekeeperRecordPoint => 'Registrar punto';

  @override
  String get scorekeeperEditLastPoint => 'Editar último punto';

  @override
  String get scorekeeperReasonHelp =>
      'Elige cómo terminó el punto y los detalles necesarios.';

  @override
  String get scorekeeperPlayerWinning => 'Jugador (equipo que ganó el punto)';

  @override
  String get scorekeeperPlayerLosing => 'Jugador (equipo que perdió el punto)';

  @override
  String get scorekeeperLogout => 'Salir del modo anotador';

  @override
  String get pmPhoneKicker => 'Bienvenido a la comunidad';

  @override
  String get pmPhoneTitle => 'Salta a la pista';

  @override
  String get pmPhoneSubtitle =>
      'Inicia sesión con tu número de teléfono y empieza a construir tu identidad deportiva.';

  @override
  String get pmPhoneLabel => 'Número de teléfono';

  @override
  String get pmPhoneHint => 'Te enviaremos un código de verificación por SMS';

  @override
  String get pmPhoneInvalid => 'El número debe empezar por 77, 78 o 79';

  @override
  String get pmContinue => 'Continuar';

  @override
  String get pmOrContinueWith => 'O continúa con';

  @override
  String get pmLegalPrefix => 'Al continuar aceptas los ';

  @override
  String get pmLegalTerms => 'Términos de uso';

  @override
  String get pmLegalAnd => ' y la ';

  @override
  String get pmLegalPrivacy => 'Política de privacidad';

  @override
  String get pmStaffSignIn => 'Acceso de anotadores';

  @override
  String get pmBack => 'Atrás';

  @override
  String get pmOtpKicker => 'Último paso';

  @override
  String get pmOtpTitle => 'Introduce el código de verificación';

  @override
  String get pmOtpSentTo => 'Hemos enviado un código de 6 dígitos a';

  @override
  String get pmOtpEdit => 'Editar';

  @override
  String get pmOtpLabel => 'Código de verificación';

  @override
  String get pmOtpNotReceived => '¿No te llegó el código?';

  @override
  String get pmOtpResend => 'Reenviar';

  @override
  String get pmOtpConfirm => 'Confirmar e iniciar sesión';

  @override
  String get pmWelcomeTitle => 'Tu identidad está lista';

  @override
  String get pmWelcomeSubtitle => 'Bienvenido a Playmaker: la pista te espera';

  @override
  String get failureInvalidPhone => 'Introduce un móvil jordano válido.';

  @override
  String get failureOtpExpired => 'El código ha caducado. Solicita uno nuevo.';

  @override
  String get failureOtpSessionInvalid =>
      'Esta verificación ya no es válida. Solicita un código nuevo.';

  @override
  String get failureOtpResendTooSoon =>
      'Espera un momento antes de pedir un código nuevo.';

  @override
  String get failureOtpResendLimit =>
      'Has alcanzado el límite de reenvíos. Inténtalo más tarde.';

  @override
  String get failureOtpTooManyAttempts =>
      'Demasiados intentos incorrectos. Solicita un código nuevo.';

  @override
  String get failureOtpProviderUnavailable =>
      'El servicio de SMS no está disponible temporalmente. Inténtalo en breve.';

  @override
  String get failureSocialTokenInvalid =>
      'No pudimos verificar tu cuenta. Inténtalo de nuevo.';

  @override
  String get failureSocialUnavailable =>
      'Esta opción de inicio de sesión no está disponible ahora mismo.';

  @override
  String get fieldCountry => 'País';

  @override
  String get partnerEnded => 'Pareja finalizada';

  @override
  String get duo3dTitle => 'Identidad 3D de dúo';

  @override
  String get duo3dBody =>
      'Una escena 3D tuya y de tu compañero juntos en la pista.';

  @override
  String get duo3dGenerate => 'Crear nuestra escena';

  @override
  String get duo3dRegenerate => 'Crear una nueva';

  @override
  String get duo3dProcessing =>
      'Creando vuestra escena… puede tardar unos minutos.';

  @override
  String get duo3dFailed => 'El último intento falló. Inténtalo de nuevo.';

  @override
  String get duo3dNeedsPhotos =>
      'Tú y tu compañero necesitáis una foto de perfil.';

  @override
  String get duo3dComingSoon => 'Las escenas de dúo llegan pronto.';

  @override
  String get duo3dPremium => 'Las escenas de dúo forman parte de Premium.';

  @override
  String get casualMatchName => 'Nombre del partido (opcional)';

  @override
  String get casualMatchNameHint => 'p. ej. Pádel del viernes por la tarde';

  @override
  String get casualEditMatch => 'Editar partido';

  @override
  String get casualEditHint =>
      'Se avisa a los jugadores cuando cambias la hora o la pista.';

  @override
  String get casualInvitePlayer => 'Invitar a un jugador';

  @override
  String get casualInviteSearchHint => 'Busca por nombre o ID de jugador';

  @override
  String get casualInvite => 'Invitar';

  @override
  String get casualInvitationSent => 'Invitación enviada';

  @override
  String get casualCancelledNotFull =>
      'Este partido se canceló automáticamente: no tenía suficientes jugadores 2 horas antes del inicio.';

  @override
  String get casualCancelledByCreator => 'El organizador canceló este partido.';

  @override
  String get casualUpdated => 'Partido actualizado';

  @override
  String get casualInvitedStatus => 'Invitado';

  @override
  String casualYouAreInvited(String name) {
    return '$name te invitó a este partido';
  }

  @override
  String get casualInvitationAccepted =>
      '¡Estás dentro! Nos vemos en la pista.';

  @override
  String get notificationSettingsTitle => 'Ajustes de notificaciones';

  @override
  String get notificationSettingsHint =>
      'Elige qué notificaciones recibes. Los anuncios de la plataforma siempre se envían.';

  @override
  String get myRegistrationsShort => 'Mis inscripciones';

  @override
  String get myTrainingsShort => 'Mis entrenamientos';

  @override
  String get registrationOrganizerNote => 'Nota del organizador';

  @override
  String get registrationChangesHint =>
      'Actualiza tu inscripción (p. ej. cambia de compañero) y volverá a revisión.';

  @override
  String get openInGoogleMaps => 'Abrir en Google Maps';

  @override
  String get premiumPlanMonthly => 'Mensual';

  @override
  String get premiumPlanYearly => 'Anual';

  @override
  String premiumDaysLeft(int count) {
    return 'Quedan $count días';
  }

  @override
  String get findPartner => 'Buscar compañero';

  @override
  String get findPartnerHint =>
      'Busca por nombre o ID, abre el perfil del jugador y pulsa \"Pedir como compañero principal\".';

  @override
  String get characterTitle => 'Personaje 3D';

  @override
  String get characterChange => 'Cambiar';

  @override
  String get characterPick => 'Elige tu personaje 3D gratis';

  @override
  String get characterPickHint =>
      'Gratis para todos. Los miembros Premium también pueden convertir su foto en un personaje 3D propio.';

  @override
  String get characterEmpty => 'Aún no hay personajes';

  @override
  String get characterSaved => 'Tu personaje se ha guardado.';

  @override
  String get characterCurrent => 'Tu personaje';

  @override
  String get characterUse => 'Usar este personaje';

  @override
  String get characterRemove => 'Quitar personaje';
}
