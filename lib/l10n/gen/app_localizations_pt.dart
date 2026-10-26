// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Plataforma de Padel';

  @override
  String get navHome => 'Início';

  @override
  String get navTournaments => 'Torneios';

  @override
  String get navRankings => 'Rankings';

  @override
  String get navCasual => 'Amigáveis';

  @override
  String get navProfile => 'Perfil';

  @override
  String get actionRetry => 'Tentar novamente';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionSend => 'Enviar';

  @override
  String get actionCreate => 'Criar';

  @override
  String get actionCreateOne => 'Criar um';

  @override
  String get filterAll => 'Todos';

  @override
  String get premiumLabel => 'Premium';

  @override
  String get tieBreakLabel => 'TIE-BREAK';

  @override
  String get ptsLabel => 'pts';

  @override
  String get settingsTitle => 'Definições';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageArabic => 'Árabe';

  @override
  String get settingsLanguageEnglish => 'Inglês';

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get themeSystem => 'Predefinição do sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get settingsLogOut => 'Terminar sessão';

  @override
  String get deleteAccountTitle => 'Eliminar conta';

  @override
  String get deleteAccountConfirm =>
      'Tens a certeza de que queres eliminar a tua conta para sempre? É imediato e não pode ser desfeito: todos os teus dados e jogos serão apagados.';

  @override
  String get deleteAccountSuccess => 'A tua conta foi eliminada.';

  @override
  String get deleteAccountLoading => 'A eliminar a conta...';

  @override
  String homeWelcomeBack(String name) {
    return 'Bem-vindo de volta, $name';
  }

  @override
  String get homeUnranked => 'Sem ranking';

  @override
  String homeLevelPoints(String level, int points) {
    return '$level • $points pts da época';
  }

  @override
  String get homeLiveNow => 'Em direto';

  @override
  String get homeSeeAll => 'Ver tudo';

  @override
  String get homeNoLiveTournaments =>
      'Não há torneios em direto neste momento.';

  @override
  String get fieldPassword => 'Palavra-passe';

  @override
  String get errorPasswordRequired => 'A palavra-passe é obrigatória';

  @override
  String get actionLogIn => 'Entrar';

  @override
  String get fieldFullName => 'Nome completo';

  @override
  String get errorNameRequired => 'O nome é obrigatório';

  @override
  String get fieldPhoneOptional => 'Telemóvel (opcional)';

  @override
  String get errorPasswordLength => 'Pelo menos 8 caracteres';

  @override
  String get fieldConfirmPassword => 'Confirmar palavra-passe';

  @override
  String get errorPasswordsMismatch => 'As palavras-passe não coincidem';

  @override
  String get notificationsTitle => 'Notificações';

  @override
  String get emptyNotificationsTitle => 'Ainda sem notificações';

  @override
  String get emptyNotificationsMessage =>
      'Está tudo em dia — as novas notificações aparecem aqui.';

  @override
  String get casualMatchesTitle => 'Jogos amigáveis';

  @override
  String get casualFilterLookingForMatch => 'Procuro jogo';

  @override
  String get casualFilterLookingForPartner => 'Procuro parceiro';

  @override
  String get casualFilterNeed1 => 'Falta 1';

  @override
  String get casualFilterNeed2 => 'Faltam 2';

  @override
  String get casualFilterNeed3 => 'Faltam 3';

  @override
  String get emptyCasualTitle => 'Não há jogos amigáveis por perto';

  @override
  String get emptyCasualMessage =>
      'Sê o primeiro a criar um e convida jogadores.';

  @override
  String get joinRequestSent => 'Pedido enviado.';

  @override
  String get statusClosed => 'Fechado';

  @override
  String labelLevel(String level) {
    return 'Nível $level';
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
  String get actionRequested => 'Pedido';

  @override
  String get actionJoin => 'Entrar';

  @override
  String get createMatchTitle => 'Criar jogo amigável';

  @override
  String get fieldMatchType => 'Tipo de jogo';

  @override
  String get fieldDateTime => 'Data e hora';

  @override
  String get selectFutureDateTime => 'Escolhe uma data e hora futuras';

  @override
  String get errorPickFutureDateTime => 'Escolhe uma data e hora no futuro';

  @override
  String get fieldRequiredLevelOptional => 'Nível exigido (opcional)';

  @override
  String get fieldPreferredSideOptional => 'Lado preferido (opcional)';

  @override
  String get fieldNotesOptional => 'Notas (opcional)';

  @override
  String get actionCreateMatch => 'Criar jogo';

  @override
  String get coachesTitle => 'Treinadores';

  @override
  String get emptyCoachesTitle => 'Sem treinadores disponíveis';

  @override
  String get emptyCoachesMessage =>
      'Volta em breve para ver treinadores disponíveis.';

  @override
  String coachPricePerHourLong(String price) {
    return '$price / hora';
  }

  @override
  String coachPricePerHourShort(String price) {
    return '$price/h';
  }

  @override
  String get statusUnavailable => 'Indisponível';

  @override
  String get sectionAbout => 'Sobre';

  @override
  String get sectionSpecialties => 'Especialidades';

  @override
  String get rankingsTitle => 'Rankings';

  @override
  String get emptyRankingsTitle => 'Ainda sem rankings';

  @override
  String get emptyRankingsMessage =>
      'Os rankings aparecem aqui quando os jogadores começarem a somar pontos.';

  @override
  String get liveMatchTitle => 'Jogo em direto';

  @override
  String get vsLabel => 'vs';

  @override
  String get currentGame => 'Jogo atual';

  @override
  String gamesScore(int teamOne, int teamTwo) {
    return '$teamOne - $teamTwo jogos';
  }

  @override
  String setsScore(int teamOne, int teamTwo) {
    return '$teamOne - $teamTwo sets';
  }

  @override
  String get matchCompleted => 'Jogo terminado';

  @override
  String teamWon(String team) {
    return '$team venceu';
  }

  @override
  String get rankingEligible => 'Conta para o ranking';

  @override
  String get venueTba => 'Local a definir';

  @override
  String get categoriesSection => 'Categorias';

  @override
  String teamsCount(int active, int max) {
    return '$active/$max equipas';
  }

  @override
  String feeSuffix(String fee) {
    return ' • taxa $fee';
  }

  @override
  String get statusFull => 'Completo';

  @override
  String get tournamentsTitle => 'Torneios';

  @override
  String get filterOpen => 'Abertos';

  @override
  String get filterLive => 'Em direto';

  @override
  String get filterCompleted => 'Terminados';

  @override
  String get emptyTournamentsTitle => 'Sem torneios aqui';

  @override
  String get emptyTournamentsMessage =>
      'Experimenta outro filtro ou volta em breve.';

  @override
  String get statusDraft => 'Rascunho';

  @override
  String get statusRegistrationOpen => 'Inscrições abertas';

  @override
  String get statusRegistrationClosed => 'Inscrições fechadas';

  @override
  String get statusOngoing => 'A decorrer';

  @override
  String get statusCompleted => 'Concluído';

  @override
  String get statusCancelled => 'Cancelado';

  @override
  String get achievementsSection => 'Conquistas';

  @override
  String get statLevel => 'Nível';

  @override
  String get statRating => 'Rating';

  @override
  String get statSeasonPts => 'Pts da época';

  @override
  String get statXp => 'XP';

  @override
  String get actionFollowing => 'A seguir';

  @override
  String get actionFollow => 'Seguir';

  @override
  String get tooltipRespect => 'Respeito';

  @override
  String get tooltipChallenge => 'Desafiar';

  @override
  String challengeSentTo(String name) {
    return 'Desafio enviado a $name';
  }

  @override
  String challengeTitle(String name) {
    return 'Desafiar $name';
  }

  @override
  String get hintAddMessage => 'Adiciona uma mensagem (opcional)';

  @override
  String get failureSessionExpired => 'A sessão expirou.';

  @override
  String get failureNoInternet => 'Sem ligação à internet.';

  @override
  String get failureServerError => 'Algo correu mal do nosso lado.';

  @override
  String get failureUnknown => 'Ocorreu um erro inesperado.';

  @override
  String get failureRequestCancelled => 'Pedido cancelado.';

  @override
  String get failureSecureConnectionFailed => 'A ligação segura falhou.';

  @override
  String get failureValidationFailed => 'Falha na validação.';

  @override
  String get failureRequestFailed => 'O pedido falhou.';

  @override
  String get failureInvalidCredentials => 'Email ou palavra-passe errados.';

  @override
  String get failurePremiumRequired => 'Esta é uma funcionalidade Premium.';

  @override
  String get failureCoachOnly => 'Só contas de treinador podem fazer isto.';

  @override
  String get failurePlayerProfileRequired => 'É preciso um perfil de jogador.';

  @override
  String get failureStaffOnly => 'Só a equipa do torneio pode fazer isto.';

  @override
  String get failureForbidden => 'Não tens acesso a isto.';

  @override
  String get failureAccountInactive => 'Esta conta está inativa.';

  @override
  String get failureNotFound => 'Não encontrámos isso.';

  @override
  String get failureRateLimited =>
      'Demasiadas tentativas. Tenta daqui a pouco.';

  @override
  String get failureProviderUnavailable => 'Ainda não disponível.';

  @override
  String get actionClose => 'Fechar';

  @override
  String get actionConfirm => 'Confirmar';

  @override
  String get actionSave => 'Guardar';

  @override
  String get actionEdit => 'Editar';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get actionAccept => 'Aceitar';

  @override
  String get actionDecline => 'Recusar';

  @override
  String get actionRefresh => 'Atualizar';

  @override
  String get actionViewAll => 'Ver tudo';

  @override
  String get actionLearnMore => 'Saber mais';

  @override
  String get actionGoPremium => 'Aderir ao Premium';

  @override
  String get actionBack => 'Voltar';

  @override
  String get actionSearch => 'Pesquisar';

  @override
  String get actionApply => 'Aplicar';

  @override
  String get actionReset => 'Repor';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get actionLeave => 'Sair';

  @override
  String get actionOpen => 'Abrir';

  @override
  String get stateEmptyTitle => 'Ainda não há nada';

  @override
  String get stateOfflineTitle => 'Estás offline';

  @override
  String get stateOfflineMessage => 'Verifica a ligação e tenta novamente.';

  @override
  String get stateOfflineBanner => 'Offline — a mostrar o que temos';

  @override
  String get stateErrorTitle => 'Algo correu mal';

  @override
  String get stateComingSoonTitle => 'Em breve';

  @override
  String get stateComingSoonPayments =>
      'Os pagamentos online chegam em breve. Nada foi cobrado.';

  @override
  String get stateComingSoon3d =>
      'A identidade 3D ainda não está disponível. Avisamos-te quando estiver.';

  @override
  String get stateInsufficientDataTitle => 'Ainda não há dados suficientes';

  @override
  String get statePremiumTitle => 'Desbloqueia com Premium';

  @override
  String get statePremiumMessage =>
      'O Premium acrescenta análises e estatísticas. Nunca afeta o teu rating ou ranking.';

  @override
  String progressOf(int current, int target) {
    return '$current/$target';
  }

  @override
  String get valueDash => '—';

  @override
  String get liveBadge => 'EM DIRETO';

  @override
  String get liveRealtime => 'Em direto · tempo real';

  @override
  String liveUpdatingEvery(int seconds) {
    return 'Em direto · atualiza a cada $seconds s';
  }

  @override
  String get correctedToast => 'O marcador corrigiu o resultado';

  @override
  String get metricSkillRating => 'Skill Rating';

  @override
  String get metricSeasonPoints => 'Pontos da época';

  @override
  String get metricXp => 'XP';

  @override
  String metricPosition(int position) {
    return '#$position';
  }

  @override
  String get metricLevel => 'Nível';

  @override
  String get metricUnranked => 'Sem ranking';

  @override
  String movementUp(int n) {
    return 'Sobe $n';
  }

  @override
  String movementDown(int n) {
    return 'Desce $n';
  }

  @override
  String get movementSame => 'Sem alteração';

  @override
  String get competitionRanked => 'VERIFICADO · PONTUÁVEL';

  @override
  String get competitionCertified => 'OFICIAL';

  @override
  String get competitionSocial => 'SOCIAL';

  @override
  String get officialNote =>
      'Só os resultados verificados de torneios pontuáveis alteram o teu Skill Rating e o ranking da época.';

  @override
  String get casualNote =>
      'Os jogos amigáveis nunca afetam o teu rating ou ranking.';

  @override
  String get rarityCommon => 'Comum';

  @override
  String get rarityRare => 'Rara';

  @override
  String get rarityEpic => 'Épica';

  @override
  String get rarityLegendary => 'Lendária';

  @override
  String xpReward(int xp) {
    return '+$xp XP';
  }

  @override
  String get newCoach => 'Novo treinador';

  @override
  String reviewsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avaliações',
      one: '1 avaliação',
    );
    return '$_temp0';
  }

  @override
  String get timeNow => 'agora';

  @override
  String timeInMinutes(int n) {
    return 'daqui a $n min';
  }

  @override
  String timeMinutesAgo(int n) {
    return 'há $n min';
  }

  @override
  String timeInHours(int n) {
    return 'daqui a $n h';
  }

  @override
  String timeHoursAgo(int n) {
    return 'há $n h';
  }

  @override
  String timeInDays(int n) {
    return 'daqui a $n d';
  }

  @override
  String timeDaysAgo(int n) {
    return 'há $n d';
  }

  @override
  String get dayToday => 'Hoje';

  @override
  String get dayYesterday => 'Ontem';

  @override
  String get navCompete => 'Competir';

  @override
  String get navPlay => 'Jogar';

  @override
  String homeGreeting(String name) {
    return 'Olá, $name';
  }

  @override
  String get homeLiveYouAreIn => 'Estás em campo';

  @override
  String get homeNextMatch => 'O teu próximo jogo';

  @override
  String get homeLiveFollowing => 'Jogadores que segues';

  @override
  String get homeMyTournaments => 'Os meus torneios';

  @override
  String get homeYourSeason => 'A tua época';

  @override
  String get homeStats => 'Os teus números';

  @override
  String get homeLatestAchievement => 'Última conquista';

  @override
  String get homeRecommendedTournaments => 'Torneios para ti';

  @override
  String get homeCasualOpportunities => 'Jogos à procura de jogadores';

  @override
  String get homeRecommendedPartner => 'Parceiro sugerido';

  @override
  String get homeRecommendedCoach => 'Treinador para ti';

  @override
  String get homeUpcomingTraining => 'Próximos treinos';

  @override
  String homePendingRequests(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pedidos de parceiro pendentes',
      one: '1 pedido de parceiro pendente',
    );
    return '$_temp0';
  }

  @override
  String get homeReviewRequests => 'Ver';

  @override
  String get homeAiDailyBrief => 'Resumo diário';

  @override
  String get homePremiumTeaserTitle => 'O teu jogo, explicado';

  @override
  String get homePremiumTeaserBody =>
      'Resumos diários, estatísticas avançadas e identidade 3D de atleta — criados apenas com os teus jogos reais.';

  @override
  String get homeInsufficientRanking =>
      'Joga jogos pontuáveis verificados para apareceres no ranking da época.';

  @override
  String get homeInsufficientGeneric =>
      'Vamos preencher isto quando houver dados reais suficientes.';

  @override
  String get homeEmptyTitle => 'A tua época começa aqui';

  @override
  String get homeEmptyMessage =>
      'Entra num torneio ou num jogo amigável para encher o teu início.';

  @override
  String get homeFindTournament => 'Encontrar um torneio';

  @override
  String get matchVs => 'vs';

  @override
  String get matchTbd => 'A definir';

  @override
  String get matchBye => 'Isento';

  @override
  String matchCourt(String name) {
    return 'Campo $name';
  }

  @override
  String matchSetLabel(int n) {
    return 'Set $n';
  }

  @override
  String get matchWinner => 'Vencedor';

  @override
  String get matchScheduled => 'Agendado';

  @override
  String matchStartsAt(String time) {
    return 'Começa $time';
  }

  @override
  String get matchWalkover => 'Walkover';

  @override
  String get matchPendingVerification => 'A aguardar verificação';

  @override
  String get matchVerified => 'Verificado';

  @override
  String get matchServing => 'A servir';

  @override
  String get matchGames => 'Jogos';

  @override
  String get matchPoints => 'Pontos';

  @override
  String tournamentSpotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Restam $count vagas',
      one: 'Resta 1 vaga',
      zero: 'Completo',
    );
    return '$_temp0';
  }

  @override
  String tournamentLiveCount(int count) {
    return '$count em direto';
  }

  @override
  String get tournamentFree => 'Grátis';

  @override
  String tournamentFee(String amount) {
    return 'Taxa $amount';
  }

  @override
  String get reasonComplementarySide => 'Lado complementar';

  @override
  String get reasonSimilarRating => 'Skill Rating semelhante';

  @override
  String get reasonPreviousPartnership => 'Já jogaram juntos';

  @override
  String get reasonActiveRecently => 'Ativo recentemente';

  @override
  String get reasonSameCountry => 'Mesmo país';

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
      other: '$count anos',
      one: '1 ano',
    );
    return '$_temp0';
  }

  @override
  String casualSpotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Restam $count vagas',
      one: 'Resta 1 vaga',
      zero: 'Completo',
    );
    return '$_temp0';
  }

  @override
  String get casualRequestPending => 'Pedido pendente';

  @override
  String get casualYouAreIn => 'Estás dentro';

  @override
  String get casualYourGame => 'O teu jogo';

  @override
  String bookingWith(String name) {
    return 'com $name';
  }

  @override
  String get achievementLocked => 'Bloqueada';

  @override
  String achievementUnlockedOn(String date) {
    return 'Desbloqueada a $date';
  }

  @override
  String get statMatches => 'Jogos';

  @override
  String get statWins => 'Vitórias';

  @override
  String get statLosses => 'Derrotas';

  @override
  String get statWinRate => '% vitórias';

  @override
  String get statStreak => 'Série';

  @override
  String get statTitles => 'Títulos';

  @override
  String get statFinals => 'Finais';

  @override
  String get statTournaments => 'Torneios';

  @override
  String get statSets => 'Sets ganhos–perdidos';

  @override
  String get statGames => 'Jogos ganhos–perdidos';

  @override
  String get statBestStreak => 'Melhor série';

  @override
  String get statWalkovers => 'Walkovers V–D';

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
    return 'Último jogo: $date';
  }

  @override
  String get partnerMain => 'Parceiro principal';

  @override
  String get partnerBestHistorical => 'Melhor parceiro histórico';

  @override
  String get partnerMostPlayed => 'Com quem mais jogaste';

  @override
  String get partnerRecommended => 'Parceiros recomendados';

  @override
  String get partnerNotSet => 'Ainda sem parceiro principal';

  @override
  String get partnerNotSetHint =>
      'Envia um pedido — fica oficial quando ele aceitar.';

  @override
  String partnerUnlockHint(int count) {
    return 'Joga $count jogos verificados com o mesmo parceiro para desbloquear.';
  }

  @override
  String get partnerNoHistory => 'Ainda sem jogos verificados com um parceiro.';

  @override
  String partnerRecord(int won, int played) {
    return '$won V · $played jogados';
  }

  @override
  String get partnerHistory => 'Histórico da parceria';

  @override
  String get partnerRequestAsMain => 'Pedir como parceiro principal';

  @override
  String get partnerRequestSent => 'Pedido de parceiro enviado';

  @override
  String get partnerRemoveMain => 'Terminar parceria';

  @override
  String get partnerRemoveMainConfirm =>
      'Deixa de ser o teu parceiro principal. Podes enviar um novo pedido mais tarde.';

  @override
  String get partnerRequestsTitle => 'Pedidos de parceiro';

  @override
  String get partnerRequestsIncoming => 'Recebidos';

  @override
  String get partnerRequestsOutgoing => 'Enviados';

  @override
  String get partnerRequestsEmpty => 'Sem pedidos de parceiro neste momento.';

  @override
  String partnerRequestFrom(String name) {
    return '$name quer-te como parceiro principal';
  }

  @override
  String partnerRequestTo(String name) {
    return 'À espera de $name';
  }

  @override
  String get partnerRequestAccepted => 'Agora são parceiros principais';

  @override
  String get partnerRecommendedEmpty =>
      'Joga alguns jogos verificados e sugerimos parceiros que combinam com o teu jogo.';

  @override
  String partnerRecommendedBasis(String rating, int matches) {
    return 'Com base no teu rating $rating e em $matches jogos verificados';
  }

  @override
  String factRatingDiff(String value) {
    return 'Diferença de rating $value';
  }

  @override
  String factTogether(int wins, int matches) {
    return '$wins/$matches vitórias juntos';
  }

  @override
  String factVerifiedMatches(int count) {
    return '$count jogos verificados';
  }

  @override
  String factWinRate(String value) {
    return '% vitórias $value';
  }

  @override
  String factLastPlayed(String when) {
    return 'Jogou $when';
  }

  @override
  String get profileTabOverview => 'Visão geral';

  @override
  String get profileTabResults => 'Resultados';

  @override
  String get profileTabAchievements => 'Conquistas';

  @override
  String get profileTabPartners => 'Parceiros';

  @override
  String get profileTabStats => 'Estatísticas';

  @override
  String profileMemberSince(String date) {
    return 'Membro desde $date';
  }

  @override
  String get profileFollowers => 'Seguidores';

  @override
  String get profileFollowing => 'A seguir';

  @override
  String get profileRespects => 'Respeitos';

  @override
  String get profileEdit => 'Editar perfil';

  @override
  String get profileContact => 'Contacto (só tu vês)';

  @override
  String get profileRecentResults => 'Resultados recentes';

  @override
  String get profileTournamentHistory => 'Histórico de torneios';

  @override
  String get profileNoResults => 'Ainda sem resultados verificados';

  @override
  String get profileNoResultsHint =>
      'Os resultados oficiais aparecem aqui quando a equipa os verificar.';

  @override
  String get profile3dIdentity => 'Identidade 3D';

  @override
  String get profileRatingHistory => 'Histórico de rating';

  @override
  String get profileSeasonHistory => 'Pontos da época';

  @override
  String get profileRespectSent => 'Respeito enviado';

  @override
  String get resultWon => 'V';

  @override
  String get resultLost => 'D';

  @override
  String get resultRanked => 'Pontuável';

  @override
  String get resultUnranked => 'Não pontuável';

  @override
  String resultWithPartner(String name) {
    return 'com $name';
  }

  @override
  String get placementChampion => 'Campeão';

  @override
  String get placementFinalist => 'Finalista';

  @override
  String get achievementsTitle => 'Conquistas';

  @override
  String achievementsProgress(int unlocked, int total) {
    return '$unlocked de $total desbloqueadas';
  }

  @override
  String get achievementsCompetitive => 'Competitivas';

  @override
  String get achievementsSocial => 'Sociais';

  @override
  String get achievementsPremiumShelf => 'Distintivos Premium';

  @override
  String get achievementsPremiumNote =>
      'Os distintivos Premium são estéticos — nunca afetam o rating ou o ranking.';

  @override
  String get achievementsEmpty => 'Ainda sem conquistas';

  @override
  String get achievementAutomatic => 'Desbloqueia automaticamente';

  @override
  String get statsAdvanced => 'Estatísticas avançadas';

  @override
  String get statsByStage => 'Por fase';

  @override
  String get statsGroupStage => 'Fase de grupos';

  @override
  String get statsKnockout => 'Eliminatórias';

  @override
  String get statsDecidingSets => 'Sets decisivos';

  @override
  String get statsByCompetition => 'Pontuável vs não pontuável';

  @override
  String get statsPointAnalytics => 'Análise de pontos';

  @override
  String statsCoverage(String value) {
    return 'Cobertura $value';
  }

  @override
  String get statsLimitedData => 'Dados limitados';

  @override
  String get statsWinnersByShot => 'Winners por pancada';

  @override
  String get statsErrorsByType => 'Erros por tipo';

  @override
  String get statsRatingTimeline => 'Evolução do rating';

  @override
  String get statsAdvancedLocked =>
      'As estatísticas avançadas estão disponíveis para membros Premium no seu próprio perfil.';

  @override
  String statsRecord(int wins, int matches) {
    return '$wins/$matches';
  }

  @override
  String get followersTitle => 'Seguidores';

  @override
  String get followingTitle => 'A seguir';

  @override
  String get followersEmpty => 'Ainda não há ninguém';

  @override
  String get ratingHistoryTitle => 'Histórico de rating';

  @override
  String get ratingReasonOfficial => 'Resultado oficial';

  @override
  String get ratingReasonCorrection => 'Reversão por correção';

  @override
  String get ratingReasonInactivity => 'Inatividade';

  @override
  String get ratingBreakdown => 'Como foi calculado';

  @override
  String get ratingExpected => 'Resultado esperado';

  @override
  String get ratingKFactor => 'K efetivo';

  @override
  String get ratingOwnStrength => 'Força da tua equipa';

  @override
  String get ratingOpponentStrength => 'Força do adversário';

  @override
  String get ratingUpset => 'Surpresa';

  @override
  String get ratingStage => 'Fase';

  @override
  String get ratingHistoryEmpty => 'Ainda sem alterações de rating';

  @override
  String get seasonPointsTitle => 'Pontos da época';

  @override
  String get seasonBestStageNote =>
      'Cada categoria conta uma vez — a melhor fase que alcançaste.';

  @override
  String get challengesTitle => 'Desafios';

  @override
  String get challengesIncoming => 'Recebidos';

  @override
  String get challengesOutgoing => 'Enviados';

  @override
  String get challengesEmpty => 'Sem desafios';

  @override
  String challengeFrom(String name) {
    return '$name desafiou-te';
  }

  @override
  String challengeTo(String name) {
    return 'Desafiaste $name';
  }

  @override
  String get searchPlayersTitle => 'Encontrar jogadores';

  @override
  String get searchPlayersHint => 'Nome ou ID de jogador';

  @override
  String get searchPlayersEmpty => 'Nenhum jogador corresponde à pesquisa';

  @override
  String get editProfileTitle => 'Editar perfil';

  @override
  String get editProfileCompetitiveNote =>
      'Rating, nível, pontos e XP vêm de resultados verificados e não podem ser editados.';

  @override
  String get editProfilePhoto => 'Mudar foto';

  @override
  String get editProfilePhotoHint =>
      'JPG, PNG ou WebP · até 4 MB. Também é usada para a tua identidade 3D.';

  @override
  String get editProfileSaved => 'Perfil guardado';

  @override
  String get fieldBio => 'Biografia';

  @override
  String get fieldDateOfBirth => 'Data de nascimento';

  @override
  String get fieldGender => 'Género';

  @override
  String get fieldSide => 'Lado de jogo';

  @override
  String get changePasswordTitle => 'Mudar palavra-passe';

  @override
  String get fieldCurrentPassword => 'Palavra-passe atual';

  @override
  String get fieldNewPassword => 'Nova palavra-passe';

  @override
  String get passwordChanged =>
      'Palavra-passe alterada. As outras sessões foram terminadas.';

  @override
  String get premiumTitle => 'Premium';

  @override
  String get premiumHeadline => 'Treina melhor. Compete igual.';

  @override
  String get premiumSubhead =>
      'Análises e estatísticas criadas apenas com os teus jogos reais e verificados.';

  @override
  String premiumNeverAffects(String items) {
    return 'O Premium nunca afeta o teu $items.';
  }

  @override
  String get premiumNeverAffectsDefault =>
      'O Premium nunca afeta o teu Skill Rating, ranking da época, cabeças de série ou elegibilidade.';

  @override
  String get neverSkillRating => 'Skill Rating';

  @override
  String get neverSeasonRanking => 'ranking da época';

  @override
  String get neverSeeding => 'cabeças de série';

  @override
  String get neverEligibility => 'elegibilidade para torneios';

  @override
  String get neverOfficialResults => 'resultados oficiais';

  @override
  String get premiumFeatureAi => 'Análises com IA';

  @override
  String get premiumFeatureAiBody =>
      'Resumos diários, relatórios de desempenho e recomendações.';

  @override
  String get premiumFeatureAnalytics => 'Estatísticas avançadas';

  @override
  String get premiumFeatureAnalyticsBody =>
      'Por fases, sets decisivos, pancadas e erros.';

  @override
  String get premiumFeature3d => 'Identidade 3D de atleta';

  @override
  String get premiumFeature3dBody =>
      'Um avatar 3D giratório criado a partir da tua foto de perfil.';

  @override
  String get premiumFeatureBadges => 'Distintivos Premium';

  @override
  String get premiumFeatureBadgesBody =>
      'Distintivos estéticos, claramente separados das medalhas competitivas.';

  @override
  String get premiumPlansTitle => 'Escolhe um plano';

  @override
  String premiumPlanMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meses',
      one: '1 mês',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlansUnavailable =>
      'Os planos aparecem aqui quando os preços forem publicados.';

  @override
  String get premiumCheckoutSoon => 'Pagamentos online em breve';

  @override
  String get premiumSubscribe => 'Continuar para o pagamento';

  @override
  String get premiumActive => 'És Premium';

  @override
  String premiumActiveUntil(String date) {
    return 'Ativo até $date';
  }

  @override
  String get premiumOpenAi => 'Abrir análises com IA';

  @override
  String get premiumOpen3d => 'Abrir identidade 3D';

  @override
  String get paymentsTitle => 'Pagamentos';

  @override
  String get paymentsEmpty => 'Ainda sem pagamentos';

  @override
  String get paymentStatusTitle => 'Estado do pagamento';

  @override
  String get paymentWaiting =>
      'A aguardar confirmação do fornecedor de pagamento…';

  @override
  String get paymentOpenCheckout => 'Abrir página de pagamento';

  @override
  String get paymentSecureTitle => 'Pagamento seguro';

  @override
  String get paymentSucceeded => 'Pagamento confirmado';

  @override
  String get paymentFailedTitle => 'O pagamento não foi concluído';

  @override
  String paymentReference(String ref) {
    return 'Referência $ref';
  }

  @override
  String get paymentOnlyBackend =>
      'Só marcamos um pagamento como pago quando o servidor o confirma.';

  @override
  String get aiTitle => 'Análises com IA';

  @override
  String get aiGenerate => 'Gerar';

  @override
  String get aiRefresh => 'Atualizar';

  @override
  String get aiWorking => 'A analisar os teus jogos…';

  @override
  String get aiFailed => 'Não foi possível gerar esta análise.';

  @override
  String get aiNotGenerated => 'Ainda não gerada';

  @override
  String aiCoverage(String level) {
    return 'Cobertura de dados: $level';
  }

  @override
  String get aiCoverageNone => 'nenhuma';

  @override
  String get aiCoverageLow => 'baixa';

  @override
  String get aiCoverageMedium => 'média';

  @override
  String get aiCoverageHigh => 'alta';

  @override
  String aiMatchesUsed(int count) {
    return '$count jogos usados';
  }

  @override
  String get aiHighlights => 'Destaques';

  @override
  String get aiRecommendations => 'Recomendações';

  @override
  String get aiFacts => 'Os factos';

  @override
  String aiGeneratedAt(String when) {
    return 'Gerado $when';
  }

  @override
  String get aiTypePlayerInsights => 'Análise do jogador';

  @override
  String get aiTypePerformanceSummary => 'Resumo de desempenho';

  @override
  String get aiTypePartnerRecommendation => 'Recomendação de parceiro';

  @override
  String get aiTypeTournamentRecommendation => 'Recomendação de torneio';

  @override
  String get aiTypeCoachRecommendation => 'Recomendação de treinador';

  @override
  String get aiTypeDevelopmentRecommendation => 'Plano de evolução';

  @override
  String get aiTypeDailyBrief => 'Resumo diário';

  @override
  String get threeDTitle => 'Identidade 3D';

  @override
  String get threeDGenerate => 'Gerar a minha identidade 3D';

  @override
  String get threeDRegenerate => 'Gerar novamente';

  @override
  String get threeDProcessing =>
      'A criar a tua identidade 3D. Pode demorar alguns minutos.';

  @override
  String get threeDNeedsPhoto =>
      'Carrega primeiro uma foto de perfil — a tua identidade 3D é gerada a partir dela.';

  @override
  String get threeDUploadPhoto => 'Carregar foto';

  @override
  String get threeDFailed => 'A geração falhou. Podes tentar novamente.';

  @override
  String get threeDEmpty => 'Ainda sem identidade 3D';

  @override
  String get bookingStatus => 'Estado';

  @override
  String get bookingPrice => 'Preço';

  @override
  String get bookingDuration => 'Duração';

  @override
  String get bookingLocation => 'Local';

  @override
  String get bookingTrainingType => 'Tipo de treino';

  @override
  String get bookingNotes => 'Notas';

  @override
  String get bookingFeedback => 'Feedback do treinador';

  @override
  String bookingXpAwarded(int xp) {
    return '+$xp XP ganhos';
  }

  @override
  String get bookingCancel => 'Cancelar marcação';

  @override
  String get bookingCancelReason => 'Motivo (opcional)';

  @override
  String get bookingCancelled => 'Marcação cancelada';

  @override
  String get bookingCancelWindow =>
      'As marcações confirmadas podem ser canceladas até 24 horas antes do início.';

  @override
  String get bookingReview => 'Avalia esta sessão';

  @override
  String get bookingReviewComment => 'Comentário (opcional)';

  @override
  String get bookingReviewThanks => 'Obrigado pela avaliação';

  @override
  String get bookingYourReview => 'A tua avaliação';

  @override
  String bookingRejectedReason(String reason) {
    return 'Recusada: $reason';
  }

  @override
  String bookingCancelledBy(String who) {
    return 'Cancelada por $who';
  }

  @override
  String get bookingByPlayer => 'jogador';

  @override
  String get bookingByCoach => 'treinador';

  @override
  String get bookingProgressRecorded => 'Progresso registado';

  @override
  String get bookingDetailTitle => 'Sessão de treino';

  @override
  String get competeTitle => 'Competir';

  @override
  String get competeTabTournaments => 'Torneios';

  @override
  String get competeTabLive => 'Em direto';

  @override
  String get competeSearchHint => 'Pesquisar torneios';

  @override
  String get filterRanked => 'Pontuáveis';

  @override
  String get filterCertified => 'Oficiais';

  @override
  String get filterSocial => 'Sociais';

  @override
  String get filterUpcoming => 'Próximos';

  @override
  String get liveNowEmptyTitle => 'Não há jogos em campo neste momento';

  @override
  String get liveNowEmptyMessage =>
      'Os jogos em direto aparecem aqui assim que um marcador começa um.';

  @override
  String get tournamentTabOverview => 'Visão geral';

  @override
  String get tournamentTabLive => 'Em direto';

  @override
  String get tournamentTabSchedule => 'Calendário';

  @override
  String get tournamentTabResults => 'Resultados';

  @override
  String get tournamentRules => 'Regras';

  @override
  String get tournamentAbout => 'Sobre';

  @override
  String get tournamentOpenMap => 'Abrir no mapa';

  @override
  String tournamentRegistrationWindow(String from, String to) {
    return 'Inscrição $from – $to';
  }

  @override
  String get tournamentChampion => 'Campeão';

  @override
  String get tournamentNoLive => 'Não há jogos em direto neste torneio agora.';

  @override
  String get tournamentNoSchedule => 'O calendário ainda não foi publicado.';

  @override
  String get tournamentNoResults => 'Ainda sem resultados verificados.';

  @override
  String get tournamentRankedNote =>
      'Os resultados verificados aqui alteram o Skill Rating e os pontos da época.';

  @override
  String get tournamentUnrankedNote =>
      'Os resultados aqui não afetam o Skill Rating nem o ranking da época.';

  @override
  String get categoryRegister => 'Inscrever';

  @override
  String get categoryJoinWaitlist => 'Entrar na lista de espera';

  @override
  String get categoryRegistered => 'Inscrito';

  @override
  String get categoryView => 'Equipas, grupos e quadro';

  @override
  String categoryWaitlist(int count) {
    return '$count em lista de espera';
  }

  @override
  String get categoryTabTeams => 'Equipas';

  @override
  String get categoryTabGroups => 'Grupos';

  @override
  String get categoryTabBracket => 'Quadro';

  @override
  String get categoryNoTeams => 'Ainda sem equipas';

  @override
  String get categoryNoGroups => 'Os grupos aparecem depois do sorteio.';

  @override
  String get categoryNoBracket => 'O quadro é gerado depois da fase de grupos.';

  @override
  String get teamWithdrawn => 'Desistiu';

  @override
  String get teamDisqualified => 'Desqualificada';

  @override
  String teamSeed(int seed) {
    return 'Cabeça de série $seed';
  }

  @override
  String get standingsPlayed => 'J';

  @override
  String get standingsWins => 'V';

  @override
  String get standingsLosses => 'D';

  @override
  String get standingsSetDiff => 'DS';

  @override
  String get standingsGameDiff => 'DJ';

  @override
  String get standingsPoints => 'Pts';

  @override
  String get standingsTeam => 'Equipa';

  @override
  String get groupFinished => 'Concluído';

  @override
  String registerTitle2(String category) {
    return 'Inscrição em $category';
  }

  @override
  String get registerPartner => 'Parceiro';

  @override
  String get registerPickPartner => 'Escolher parceiro';

  @override
  String get registerChangePartner => 'Mudar parceiro';

  @override
  String get registerCheckEligibility => 'A verificar requisitos…';

  @override
  String get registerEligible => 'Cumpres os requisitos';

  @override
  String get registerYourIssues => 'Tu';

  @override
  String get registerPartnerIssues => 'O teu parceiro';

  @override
  String get registerClosed => 'As inscrições estão fechadas';

  @override
  String get registerFullWaitlist =>
      'Esta categoria está completa — entras na lista de espera e sobes automaticamente se abrir uma vaga.';

  @override
  String registerFeeNote(String amount) {
    return 'Taxa de inscrição $amount. O pagamento é confirmado pelo sistema do organizador.';
  }

  @override
  String get registerSubmit => 'Confirmar inscrição';

  @override
  String get registerDone => 'Estás inscrito';

  @override
  String get registerWaitlisted => 'Estás na lista de espera';

  @override
  String get myRegistrationsTitle => 'As minhas inscrições';

  @override
  String get myRegistrationsEmpty =>
      'Ainda não te inscreveste em nenhum torneio';

  @override
  String get registrationCancel => 'Cancelar inscrição';

  @override
  String get statsForm => 'Forma (últimos 10 jogos)';

  @override
  String get statsLast10 => 'Últimos 10';

  @override
  String get statsOverall => 'No total';

  @override
  String get statsByRound => 'Por ronda';

  @override
  String get statsSetsAnalysis => 'Sets';

  @override
  String get statsWonFirstSet => 'Depois de ganhar o primeiro set';

  @override
  String get statsLostFirstSet => 'Depois de perder o primeiro set';

  @override
  String get statsTiebreaks => 'Sets com tie-break';

  @override
  String get statsComebacks => 'Vitórias de reviravolta';

  @override
  String get statsServeAndPoints => 'Serviço e pontos';

  @override
  String get statsAces => 'Ases';

  @override
  String get statsDoubleFaults => 'Duplas faltas';

  @override
  String get statsPointsWon => 'Pontos ganhos';

  @override
  String get statsPointsShare => '% de pontos ganhos';

  @override
  String get statsByPartner => 'Com cada parceiro';

  @override
  String get statsByOpponent => 'Contra adversários';

  @override
  String get statsPerMatch => 'Jogo a jogo';

  @override
  String get statsSeeAll => 'Todas as estatísticas';

  @override
  String get predictionsTitle => 'Previsões';

  @override
  String get predictionsTabOpen => 'Jogos';

  @override
  String get predictionsTabMine => 'As minhas previsões';

  @override
  String get predictionsTabLeaderboard => 'Melhores apostadores';

  @override
  String predictionsRules(int winner, int exact) {
    return 'Só torneios certificados. Vencedor certo: $winner pontos · sets exatos: +$exact.';
  }

  @override
  String get predictionsEmpty =>
      'Não há jogos abertos a previsões neste momento.';

  @override
  String get predictionsMineEmpty => 'Ainda não fizeste nenhuma previsão.';

  @override
  String get predictionsLeaderboardEmpty => 'Ainda não há apostadores.';

  @override
  String get predictionPointsLabel => 'Pontos de previsão';

  @override
  String predictionPosition(int position) {
    return 'Posição #$position';
  }

  @override
  String predictionWonCount(int won, int settled) {
    return '$won/$settled certas';
  }

  @override
  String predictionCrowdCount(int count) {
    return '$count previsões';
  }

  @override
  String get predictionPredict => 'Prever';

  @override
  String get predictionEdit => 'Alterar';

  @override
  String get predictionClosed => 'Fechado';

  @override
  String predictionStatusWon(int points) {
    return 'Certa +$points';
  }

  @override
  String get predictionStatusLost => 'Errada';

  @override
  String get predictionStatusVoid => 'Anulada';

  @override
  String get predictionStatusPending => 'À espera do resultado';

  @override
  String get predictionSaved => 'Previsão guardada';

  @override
  String get predictionPick => 'Quem ganha?';

  @override
  String get predictionExactScore => 'Sets exatos (opcional, pontos extra)';

  @override
  String get predictionSave => 'Guardar previsão';

  @override
  String get coinsTitle => 'Os meus pontos';

  @override
  String get coinsBalance => 'Saldo de Playmaker Coins';

  @override
  String get coinsStore => 'Loja';

  @override
  String coinsRate(int coins) {
    return '$coins B = 1 JOD';
  }

  @override
  String get coinsBuy => 'Comprar';

  @override
  String get coinsHistory => 'Histórico';

  @override
  String get coinsHistoryEmpty => 'Ainda sem movimentos.';

  @override
  String get coinsSeparateNote =>
      'As Playmaker Coins são separadas das gemas de popularidade.';

  @override
  String get popularityTitle => 'Popularidade';

  @override
  String popularityGems(int count) {
    return '$count gemas';
  }

  @override
  String popularityGifts(int count) {
    return '$count presentes recebidos';
  }

  @override
  String popularityNextRank(int gems, String rank) {
    return '$gems gemas até $rank';
  }

  @override
  String get popularityTopRank => 'Posto máximo alcançado';

  @override
  String get popularityReceivedTitle => 'Presentes recebidos';

  @override
  String get popularityLatest => 'Últimos presentes';

  @override
  String get popularityEmpty =>
      'Ainda sem presentes — sê o primeiro a enviar um!';

  @override
  String get popularityNote =>
      'As gemas só mostram popularidade — nunca são gastas nem convertidas.';

  @override
  String get giftsTitle => 'Presentes e popularidade';

  @override
  String get giftsSend => 'Enviar presente';

  @override
  String giftsSendTitle(String name) {
    return 'Enviar um presente a $name';
  }

  @override
  String get giftsDailyClaim => 'Receber o presente de hoje';

  @override
  String get giftsDailyClaimed => 'Presente de hoje recebido';

  @override
  String get giftsDailyClaimedSnack =>
      'O presente de hoje é teu — envia-o a um jogador!';

  @override
  String get giftsMyStock => 'Os meus presentes grátis';

  @override
  String get giftsStockEmpty =>
      'Ainda sem presentes grátis. Recebe o presente diário, joga jogos verificados ou participa em torneios para os ganhar.';

  @override
  String get giftsSendToPlayers =>
      'Encontra um jogador para lhe enviar presentes';

  @override
  String get giftsCatalog => 'Todos os presentes';

  @override
  String get giftsFree => 'Grátis';

  @override
  String get giftsNoneLeft => 'Esgotado';

  @override
  String get giftsPaidSection => 'Presentes premium';

  @override
  String get giftsMinorCantBuy =>
      'Comprar presentes é só para maiores de 18 anos.';

  @override
  String get giftsSent => 'Presente enviado!';

  @override
  String get statWinners => 'Winner';

  @override
  String get statWinnersHint =>
      'Pontos ganhos com uma pancada vencedora direta';

  @override
  String get statErrors => 'Loser';

  @override
  String get statErrorsHint => 'Pontos perdidos por erros próprios';

  @override
  String get rankingsFilters => 'Filtros';

  @override
  String get rankingsFilterGender => 'Rapazes / Raparigas';

  @override
  String get rankingsFilterNationality => 'Nacionalidade';

  @override
  String get rankingsFilterAge => 'Escalão etário';

  @override
  String get rankingsFiltersApply => 'Aplicar';

  @override
  String get rankingsFiltersClear => 'Limpar tudo';

  @override
  String get filterGenderMale => 'Rapazes / Homens';

  @override
  String get filterGenderFemale => 'Raparigas / Mulheres';

  @override
  String get filterJordanian => 'Jordano';

  @override
  String get filterForeign => 'Não jordano';

  @override
  String ageUnder(int age) {
    return 'Sub-$age';
  }

  @override
  String get ageAdults => 'Adultos (18+)';

  @override
  String ageOver(int age) {
    return '$age+';
  }

  @override
  String tournamentEntryFee(String amount) {
    return 'Taxa de inscrição $amount por equipa';
  }

  @override
  String get registerPaymentMethod => 'Pagamento';

  @override
  String get registerPayOnline => 'Pagar online agora';

  @override
  String get registerPayOnlineHint =>
      'Pagamento com cartão via MEPS — a tua inscrição fica concluída de imediato';

  @override
  String get registerPayCash => 'Dinheiro no local';

  @override
  String get registerPayCashHint =>
      'Paga ao organizador e ele confirma o pagamento';

  @override
  String get registerSubmitAndPay => 'Inscrever e pagar';

  @override
  String registrationCashDue(String amount) {
    return 'Paga $amount em dinheiro ao organizador.';
  }

  @override
  String get registrationPayOnlineInstead => 'Pagar online em vez disso';

  @override
  String get scoreDeuce => 'Deuce';

  @override
  String get scoreAdvantage => 'ADV';

  @override
  String get scoreGoldenPoint => 'Ponto de ouro';

  @override
  String get registerTeamName => 'Nome da equipa';

  @override
  String get registerTeamNameHint => 'Obrigatório — ex.: Smash Brothers';

  @override
  String get registrationRenameTeam => 'Mudar nome da equipa';

  @override
  String get registrationTeamRenamed => 'Nome da equipa atualizado';

  @override
  String registrationPartnerInvite(String name) {
    return '$name quer-te como parceiro neste torneio. Confirma para enviar ao organizador.';
  }

  @override
  String get registrationPartnerAccept => 'Aceitar';

  @override
  String get registrationPartnerDecline => 'Recusar';

  @override
  String get registrationPartnerDeclineConfirm =>
      'Recusar jogar em dupla neste torneio?';

  @override
  String get registrationPartnerAcceptedSnack =>
      'Confirmado — o organizador vai rever a inscrição';

  @override
  String get registrationPartnerDeclinedSnack => 'Convite recusado';

  @override
  String get registrationAwaitingPartnerHint =>
      'À espera da confirmação do teu parceiro antes da revisão do organizador.';

  @override
  String get registrationPartnerDeclinedHint =>
      'O teu parceiro recusou. Escolhe outro parceiro ou cancela a inscrição.';

  @override
  String get registrationCancelConfirm => 'A tua vaga será libertada.';

  @override
  String get registrationCancelled => 'Inscrição cancelada';

  @override
  String get registrationPay => 'Pagar agora';

  @override
  String get registrationPartnerChanged => 'Parceiro atualizado';

  @override
  String registrationPromoted(String date) {
    return 'Saiu da lista de espera a $date';
  }

  @override
  String get liveTitle => 'Centro do jogo';

  @override
  String get livePointFeed => 'Ponto a ponto';

  @override
  String get livePointFeedEmpty => 'Ainda sem pontos registados.';

  @override
  String get liveTiebreak => 'Tie-break';

  @override
  String get liveMatchOver => 'Jogo terminado';

  @override
  String liveWinnerTitle(String team) {
    return '$team vence!';
  }

  @override
  String get liveResultPending => 'Resultado a aguardar verificação';

  @override
  String get livePartialDetail => 'Detalhe parcial';

  @override
  String livePointBy(String team) {
    return 'Ponto para $team';
  }

  @override
  String get liveNotStarted => 'Não começou';

  @override
  String get liveCorrected => 'Corrigido';

  @override
  String get rankingsTabSeason => 'Época';

  @override
  String get rankingsTabSkill => 'Skill';

  @override
  String get rankingsTabXp => 'XP';

  @override
  String get rankingsYou => 'Tu';

  @override
  String get rankingsSeasonPicker => 'Época';

  @override
  String get rankingsSearchHint => 'Pesquisar no ranking';

  @override
  String get rankingsXpNote =>
      'A XP recompensa a atividade. Nunca afeta o ranking ou as cabeças de série.';

  @override
  String get rankingsSkillNote =>
      'O Skill Rating só muda com resultados verificados de torneios pontuáveis.';

  @override
  String get rankingsSeasonNote =>
      'Os pontos da época contam a tua melhor fase por categoria.';

  @override
  String rankingsLevelPosition(int position, String level) {
    return '#$position em $level';
  }

  @override
  String get playTitle => 'Jogar';

  @override
  String get playTabCasual => 'Amigáveis';

  @override
  String get playTabCoaches => 'Treinadores';

  @override
  String get casualMyMatches => 'Os meus jogos';

  @override
  String get casualCreated => 'Criados';

  @override
  String get casualJoined => 'Entrei';

  @override
  String get casualDetailTitle => 'Jogo amigável';

  @override
  String get casualParticipants => 'Jogadores';

  @override
  String get casualRequests => 'Pedidos para entrar';

  @override
  String get casualNoRequests => 'Sem pedidos pendentes';

  @override
  String get casualLeave => 'Sair do jogo';

  @override
  String get casualCancelGame => 'Cancelar jogo';

  @override
  String get casualCancelConfirm => 'Todos os que entraram serão avisados.';

  @override
  String get casualLeft => 'Saíste do jogo';

  @override
  String get casualCancelled => 'Jogo cancelado';

  @override
  String get fieldVenue => 'Local (opcional)';

  @override
  String get fieldCourt => 'Campo (opcional)';

  @override
  String get venueAny => 'Qualquer local';

  @override
  String get courtAny => 'Qualquer campo';

  @override
  String get venuesTitle => 'Locais';

  @override
  String venueCourts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count campos',
      one: '1 campo',
    );
    return '$_temp0';
  }

  @override
  String get venueUpcoming => 'Próximos torneios';

  @override
  String get venuesEmpty => 'Nenhum local encontrado';

  @override
  String get coachesFilterAll => 'Todos';

  @override
  String get coachesSortRating => 'Mais bem avaliados';

  @override
  String get coachesSortPrice => 'Preço';

  @override
  String get coachesSortName => 'Nome';

  @override
  String get coachesSearchHint => 'Pesquisar treinadores ou cidade';

  @override
  String get coachLanguages => 'Idiomas';

  @override
  String get coachExperience => 'Experiência';

  @override
  String get coachTrainingTypes => 'Tipos de treino';

  @override
  String get coachAvailability => 'Disponibilidade';

  @override
  String get coachNoSlots => 'Sem horários livres neste dia';

  @override
  String get coachReviews => 'Avaliações';

  @override
  String get coachNoReviews =>
      'Ainda sem avaliações — sê o primeiro depois da tua sessão.';

  @override
  String get coachBook => 'Marcar sessão';

  @override
  String coachBookSlot(String time) {
    return 'Marcar $time';
  }

  @override
  String get bookingSheetTitle => 'Confirmar marcação';

  @override
  String get bookingPickSlot => 'Escolhe primeiro um horário';

  @override
  String get bookingSummary => 'Resumo';

  @override
  String get bookingTotal => 'Total';

  @override
  String get bookingConfirm => 'Pedir marcação';

  @override
  String get bookingRequested =>
      'Marcação pedida — o treinador vai confirmá-la.';

  @override
  String get bookingSlotTaken =>
      'Esse horário acabou de ser ocupado. Aqui está a disponibilidade atualizada.';

  @override
  String get myBookingsTitle => 'Os meus treinos';

  @override
  String get myBookingsUpcoming => 'Próximos';

  @override
  String get myBookingsPast => 'Anteriores';

  @override
  String get myBookingsEmpty => 'Sem sessões aqui';

  @override
  String get trainingProgressTitle => 'Progresso do treino';

  @override
  String get trainingProgressEmpty =>
      'As avaliações do teu treinador aparecem aqui depois das sessões.';

  @override
  String trainingLatest(int score) {
    return 'Última $score/10';
  }

  @override
  String trainingAssessments(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avaliações',
      one: '1 avaliação',
    );
    return '$_temp0';
  }

  @override
  String get coachPortalTitle => 'Portal do treinador';

  @override
  String get coachPortalToday => 'Próximas sessões';

  @override
  String get coachPortalPending => 'Pedidos por responder';

  @override
  String get coachPortalAvailability => 'Disponibilidade';

  @override
  String get coachPortalBookings => 'Marcações';

  @override
  String get coachPortalProfile => 'Perfil de treinador';

  @override
  String get coachPortalSwitchToPlayer => 'App de jogador';

  @override
  String get coachPortalOpen => 'Portal do treinador';

  @override
  String get slotAdd => 'Adicionar horários';

  @override
  String get slotDate => 'Data';

  @override
  String get slotStart => 'Início';

  @override
  String get slotEnd => 'Fim';

  @override
  String get slotRepeat => 'Repetir semanalmente';

  @override
  String slotRepeatWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Durante mais $count semanas',
      one: 'Durante mais 1 semana',
      zero: 'Não repetir',
    );
    return '$_temp0';
  }

  @override
  String get slotActive => 'Disponível';

  @override
  String get slotBooked => 'Marcado';

  @override
  String get slotDeleteConfirm => 'Eliminar este horário?';

  @override
  String get slotsCreated => 'Horários adicionados';

  @override
  String get slotsEmptyDay => 'Sem horários neste dia';

  @override
  String get bookingConfirmAction => 'Confirmar';

  @override
  String get bookingRejectAction => 'Recusar';

  @override
  String get bookingCompleteAction => 'Marcar como concluída';

  @override
  String get bookingFeedbackAction => 'Enviar feedback';

  @override
  String get bookingProgressAction => 'Registar progresso';

  @override
  String get bookingReasonOptional => 'Motivo (opcional)';

  @override
  String get bookingFeedbackHint => 'O que correu bem e o que trabalhar';

  @override
  String get bookingUpdated => 'Marcação atualizada';

  @override
  String get progressSkill => 'Competência';

  @override
  String get progressScore => 'Nota (1–10)';

  @override
  String get progressAddSkill => 'Adicionar competência';

  @override
  String get progressSaved => 'Progresso guardado';

  @override
  String get coachFieldCity => 'Cidade';

  @override
  String get coachFieldPrice => 'Preço por hora';

  @override
  String get coachFieldYears => 'Anos de experiência';

  @override
  String get coachFieldSpecialties => 'Especialidades';

  @override
  String get coachFieldLanguages => 'Idiomas (separados por vírgulas)';

  @override
  String get coachProfileSaved => 'Perfil de treinador guardado';

  @override
  String get notificationsMarkAllRead => 'Marcar tudo como lido';

  @override
  String get notificationsFilterUnread => 'Não lidas';

  @override
  String get notificationsFilterAll => 'Todas';

  @override
  String get settingsNotifications => 'Notificações';

  @override
  String get settingsPushEnabled => 'As notificações push estão ativas';

  @override
  String get settingsPushDisabled => 'As notificações push estão desativadas';

  @override
  String get settingsPushUnavailable =>
      'O push não está configurado nesta versão';

  @override
  String get settingsPushEnable => 'Ativar';

  @override
  String get settingsAccount => 'Conta';

  @override
  String get settingsPremium => 'Premium';

  @override
  String get settingsPayments => 'Pagamentos';

  @override
  String get settingsMyTraining => 'Os meus treinos';

  @override
  String get settingsStaff => 'Marcação (equipa)';

  @override
  String settingsVersion(String version) {
    return 'Versão $version';
  }

  @override
  String get settingsLogOutConfirm => 'Terás de iniciar sessão novamente.';

  @override
  String get scorekeeperTitle => 'Marcador';

  @override
  String get scorekeeperLogin => 'Acesso da equipa';

  @override
  String get scorekeeperLoginField => 'Utilizador da equipa';

  @override
  String get scorekeeperMatches => 'Jogos atribuídos';

  @override
  String get scorekeeperNoMatches => 'Sem jogos atribuídos neste momento.';

  @override
  String get scorekeeperPointTo => 'Ponto';

  @override
  String get scorekeeperUndo => 'Anular último ponto';

  @override
  String get scorekeeperEndMatch => 'Terminar jogo';

  @override
  String get scorekeeperEndMatchTitle => 'Terminar o jogo — quem ganhou?';

  @override
  String get scorekeeperEndMatchHelp =>
      'O jogo termina agora com o resultado atual (limite de tempo, campo necessário...). Podes reabri-lo com anular.';

  @override
  String get scorekeeperEndReason => 'Motivo (opcional)';

  @override
  String get scorekeeperMatchEnded => 'Jogo terminado';

  @override
  String get scorekeeperReopen => 'Reabrir jogo';

  @override
  String get scorekeeperAddDetail => 'Adicionar detalhe';

  @override
  String get scorekeeperDetailOptional =>
      'Opcional — o ponto já está registado.';

  @override
  String get scorekeeperEndingType => 'Como terminou';

  @override
  String get scorekeeperShot => 'Pancada';

  @override
  String get scorekeeperError => 'Erro';

  @override
  String get scorekeeperServe => 'Serviço';

  @override
  String get scorekeeperPlayer => 'Jogador';

  @override
  String get scorekeeperSaved => 'Detalhe guardado';

  @override
  String get scorekeeperRecordPoint => 'Registar ponto';

  @override
  String get scorekeeperEditLastPoint => 'Editar último ponto';

  @override
  String get scorekeeperReasonHelp =>
      'Escolhe como terminou o ponto e os detalhes necessários.';

  @override
  String get scorekeeperPlayerWinning => 'Jogador (equipa que ganhou o ponto)';

  @override
  String get scorekeeperPlayerLosing => 'Jogador (equipa que perdeu o ponto)';

  @override
  String get scorekeeperLogout => 'Sair do modo marcador';

  @override
  String get pmPhoneKicker => 'Bem-vindo à comunidade';

  @override
  String get pmPhoneTitle => 'Entra em campo';

  @override
  String get pmPhoneSubtitle =>
      'Entra com o teu número de telemóvel e começa a construir a tua identidade desportiva.';

  @override
  String get pmPhoneLabel => 'Número de telemóvel';

  @override
  String get pmPhoneHint => 'Vamos enviar-te um código de verificação por SMS';

  @override
  String get pmPhoneInvalid => 'O número tem de começar por 77, 78 ou 79';

  @override
  String get pmContinue => 'Continuar';

  @override
  String get pmOrContinueWith => 'Ou continua com';

  @override
  String get pmLegalPrefix => 'Ao continuar, aceitas os ';

  @override
  String get pmLegalTerms => 'Termos de Utilização';

  @override
  String get pmLegalAnd => ' e a ';

  @override
  String get pmLegalPrivacy => 'Política de Privacidade';

  @override
  String get pmStaffSignIn => 'Acesso de marcadores';

  @override
  String get pmBack => 'Voltar';

  @override
  String get pmOtpKicker => 'Último passo';

  @override
  String get pmOtpTitle => 'Introduz o código de verificação';

  @override
  String get pmOtpSentTo => 'Enviámos um código de 6 dígitos para';

  @override
  String get pmOtpEdit => 'Editar';

  @override
  String get pmOtpLabel => 'Código de verificação';

  @override
  String get pmOtpNotReceived => 'Não recebeste o código?';

  @override
  String get pmOtpResend => 'Reenviar';

  @override
  String get pmOtpConfirm => 'Confirmar e entrar';

  @override
  String get pmWelcomeTitle => 'A tua identidade está pronta';

  @override
  String get pmWelcomeSubtitle =>
      'Bem-vindo ao Playmaker — o campo espera por ti';

  @override
  String get failureInvalidPhone =>
      'Introduz um número de telemóvel jordano válido.';

  @override
  String get failureOtpExpired => 'O código expirou. Pede um novo.';

  @override
  String get failureOtpSessionInvalid =>
      'Esta verificação já não é válida. Pede um novo código.';

  @override
  String get failureOtpResendTooSoon =>
      'Aguarda um momento antes de pedir um novo código.';

  @override
  String get failureOtpResendLimit =>
      'Atingiste o limite de reenvios. Tenta mais tarde.';

  @override
  String get failureOtpTooManyAttempts =>
      'Demasiadas tentativas erradas. Pede um novo código.';

  @override
  String get failureOtpProviderUnavailable =>
      'O serviço de SMS está temporariamente indisponível. Tenta daqui a pouco.';

  @override
  String get failureSocialTokenInvalid =>
      'Não conseguimos verificar a tua conta. Tenta novamente.';

  @override
  String get failureSocialUnavailable =>
      'Esta opção de início de sessão não está disponível neste momento.';

  @override
  String get fieldCountry => 'País';

  @override
  String get partnerEnded => 'Parceria terminada';

  @override
  String get duo3dTitle => 'Identidade 3D de dupla';

  @override
  String get duo3dBody =>
      'Uma cena 3D de ti e do teu parceiro juntos em campo.';

  @override
  String get duo3dGenerate => 'Criar a nossa cena';

  @override
  String get duo3dRegenerate => 'Criar uma nova';

  @override
  String get duo3dProcessing =>
      'A criar a vossa cena… pode demorar alguns minutos.';

  @override
  String get duo3dFailed => 'A última tentativa falhou. Tenta novamente.';

  @override
  String get duo3dNeedsPhotos =>
      'Tu e o teu parceiro precisam de ter foto de perfil.';

  @override
  String get duo3dComingSoon => 'As cenas de dupla chegam em breve.';

  @override
  String get duo3dPremium => 'As cenas de dupla fazem parte do Premium.';

  @override
  String get casualMatchName => 'Nome do jogo (opcional)';

  @override
  String get casualMatchNameHint => 'ex.: Padel de sexta à noite';

  @override
  String get casualEditMatch => 'Editar jogo';

  @override
  String get casualEditHint =>
      'Os jogadores são avisados quando mudas a hora ou o campo.';

  @override
  String get casualInvitePlayer => 'Convidar um jogador';

  @override
  String get casualInviteSearchHint => 'Pesquisa por nome ou ID de jogador';

  @override
  String get casualInvite => 'Convidar';

  @override
  String get casualInvitationSent => 'Convite enviado';

  @override
  String get casualCancelledNotFull =>
      'Este jogo foi cancelado automaticamente: não tinha jogadores suficientes 2 horas antes do início.';

  @override
  String get casualCancelledByCreator => 'O organizador cancelou este jogo.';

  @override
  String get casualUpdated => 'Jogo atualizado';

  @override
  String get casualInvitedStatus => 'Convidado';

  @override
  String casualYouAreInvited(String name) {
    return '$name convidou-te para este jogo';
  }

  @override
  String get casualInvitationAccepted => 'Estás dentro! Vemo-nos em campo.';

  @override
  String get notificationSettingsTitle => 'Definições de notificações';

  @override
  String get notificationSettingsHint =>
      'Escolhe que notificações recebes. Os anúncios da plataforma são sempre enviados.';

  @override
  String get myRegistrationsShort => 'As minhas inscrições';

  @override
  String get myTrainingsShort => 'Os meus treinos';

  @override
  String get registrationOrganizerNote => 'Nota do organizador';

  @override
  String get registrationChangesHint =>
      'Atualiza a tua inscrição (ex.: muda de parceiro) e ela volta para revisão.';

  @override
  String get openInGoogleMaps => 'Abrir no Google Maps';

  @override
  String get premiumPlanMonthly => 'Mensal';

  @override
  String get premiumPlanYearly => 'Anual';

  @override
  String premiumDaysLeft(int count) {
    return 'Faltam $count dias';
  }

  @override
  String get findPartner => 'Encontrar parceiro';

  @override
  String get findPartnerHint =>
      'Pesquisa por nome ou ID, abre o perfil do jogador e toca em \"Pedir como parceiro principal\".';

  @override
  String get characterTitle => 'Personagem 3D';

  @override
  String get characterChange => 'Mudar';

  @override
  String get characterPick => 'Escolhe o teu personagem 3D grátis';

  @override
  String get characterPickHint =>
      'Grátis para todos. Os membros Premium também podem transformar a sua foto num personagem 3D próprio.';

  @override
  String get characterEmpty => 'Ainda não há personagens';

  @override
  String get characterSaved => 'O teu personagem foi guardado.';

  @override
  String get characterCurrent => 'O teu personagem';

  @override
  String get characterUse => 'Usar este personagem';

  @override
  String get characterRemove => 'Remover personagem';
}
