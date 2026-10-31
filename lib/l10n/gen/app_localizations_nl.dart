// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Playmaker Padel';

  @override
  String get navHome => 'Home';

  @override
  String get navTournaments => 'Toernooien';

  @override
  String get navRankings => 'Rankings';

  @override
  String get navCasual => 'Vriendschappelijk';

  @override
  String get navProfile => 'Profiel';

  @override
  String get actionRetry => 'Opnieuw';

  @override
  String get actionCancel => 'Annuleren';

  @override
  String get actionSend => 'Versturen';

  @override
  String get actionCreate => 'Aanmaken';

  @override
  String get actionCreateOne => 'Maak er een';

  @override
  String get filterAll => 'Alle';

  @override
  String get premiumLabel => 'Premium';

  @override
  String get tieBreakLabel => 'TIEBREAK';

  @override
  String get ptsLabel => 'ptn';

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get settingsLanguage => 'Taal';

  @override
  String get settingsLanguageArabic => 'Arabisch';

  @override
  String get settingsLanguageEnglish => 'Engels';

  @override
  String get settingsAppearance => 'Weergave';

  @override
  String get themeSystem => 'Systeemstandaard';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get settingsLogOut => 'Uitloggen';

  @override
  String get deleteAccountTitle => 'Account verwijderen';

  @override
  String get deleteAccountConfirm =>
      'Weet je zeker dat je je account definitief wilt verwijderen? Dit gebeurt meteen en kan niet ongedaan worden gemaakt: al je gegevens en wedstrijden worden gewist.';

  @override
  String get deleteAccountSuccess => 'Je account is verwijderd.';

  @override
  String get deleteAccountLoading => 'Account wordt verwijderd...';

  @override
  String homeWelcomeBack(String name) {
    return 'Welkom terug, $name';
  }

  @override
  String get homeUnranked => 'Geen ranking';

  @override
  String homeLevelPoints(String level, int points) {
    return '$level • $points seizoenspunten';
  }

  @override
  String get homeLiveNow => 'Nu live';

  @override
  String get homeSeeAll => 'Alles bekijken';

  @override
  String get homeNoLiveTournaments => 'Er zijn nu geen toernooien live.';

  @override
  String get fieldPassword => 'Wachtwoord';

  @override
  String get errorPasswordRequired => 'Wachtwoord is verplicht';

  @override
  String get actionLogIn => 'Inloggen';

  @override
  String get fieldFullName => 'Volledige naam';

  @override
  String get errorNameRequired => 'Naam is verplicht';

  @override
  String get fieldPhoneOptional => 'Telefoon (optioneel)';

  @override
  String get errorPasswordLength => 'Minstens 8 tekens';

  @override
  String get fieldConfirmPassword => 'Bevestig wachtwoord';

  @override
  String get errorPasswordsMismatch => 'Wachtwoorden komen niet overeen';

  @override
  String get notificationsTitle => 'Meldingen';

  @override
  String get emptyNotificationsTitle => 'Nog geen meldingen';

  @override
  String get emptyNotificationsMessage =>
      'Je bent helemaal bij — nieuwe meldingen verschijnen hier.';

  @override
  String get casualMatchesTitle => 'Vriendschappelijke wedstrijden';

  @override
  String get casualFilterLookingForMatch => 'Zoek een wedstrijd';

  @override
  String get casualFilterLookingForPartner => 'Zoek een partner';

  @override
  String get casualFilterNeed1 => 'Nog 1 nodig';

  @override
  String get casualFilterNeed2 => 'Nog 2 nodig';

  @override
  String get casualFilterNeed3 => 'Nog 3 nodig';

  @override
  String get emptyCasualTitle => 'Geen wedstrijden in de buurt';

  @override
  String get emptyCasualMessage =>
      'Organiseer als eerste een wedstrijd en nodig spelers uit.';

  @override
  String get joinRequestSent => 'Verzoek verstuurd.';

  @override
  String get statusClosed => 'Gesloten';

  @override
  String labelLevel(String level) {
    return 'Niveau $level';
  }

  @override
  String labelSide(String side) {
    return 'Kant: $side';
  }

  @override
  String byCreator(String name) {
    return 'Door $name';
  }

  @override
  String get actionRequested => 'Aangevraagd';

  @override
  String get actionJoin => 'Meedoen';

  @override
  String get createMatchTitle => 'Vriendschappelijke wedstrijd maken';

  @override
  String get fieldMatchType => 'Type wedstrijd';

  @override
  String get fieldDateTime => 'Datum en tijd';

  @override
  String get selectFutureDateTime => 'Kies een datum en tijd in de toekomst';

  @override
  String get errorPickFutureDateTime => 'Kies een datum en tijd in de toekomst';

  @override
  String get fieldRequiredLevelOptional => 'Vereist niveau (optioneel)';

  @override
  String get fieldPreferredSideOptional => 'Voorkeurskant (optioneel)';

  @override
  String get fieldNotesOptional => 'Notities (optioneel)';

  @override
  String get actionCreateMatch => 'Wedstrijd maken';

  @override
  String get coachesTitle => 'Trainers';

  @override
  String get emptyCoachesTitle => 'Geen trainers beschikbaar';

  @override
  String get emptyCoachesMessage => 'Kom snel terug voor beschikbare trainers.';

  @override
  String coachPricePerHourLong(String price) {
    return '$price / uur';
  }

  @override
  String coachPricePerHourShort(String price) {
    return '$price/u';
  }

  @override
  String get statusUnavailable => 'Niet beschikbaar';

  @override
  String get sectionAbout => 'Over';

  @override
  String get sectionSpecialties => 'Specialiteiten';

  @override
  String get rankingsTitle => 'Rankings';

  @override
  String get emptyRankingsTitle => 'Nog geen rankings';

  @override
  String get emptyRankingsMessage =>
      'Rankings verschijnen hier zodra spelers punten gaan verdienen.';

  @override
  String get liveMatchTitle => 'Live wedstrijd';

  @override
  String get vsLabel => 'vs';

  @override
  String get currentGame => 'Huidige game';

  @override
  String gamesScore(int teamOne, int teamTwo) {
    return '$teamOne - $teamTwo games';
  }

  @override
  String setsScore(int teamOne, int teamTwo) {
    return '$teamOne - $teamTwo sets';
  }

  @override
  String get matchCompleted => 'Wedstrijd afgelopen';

  @override
  String teamWon(String team) {
    return '$team won';
  }

  @override
  String get rankingEligible => 'Telt voor ranking';

  @override
  String get venueTba => 'Locatie volgt';

  @override
  String get categoriesSection => 'Categorieën';

  @override
  String teamsCount(int active, int max) {
    return '$active/$max teams';
  }

  @override
  String feeSuffix(String fee) {
    return ' • $fee inschrijfgeld';
  }

  @override
  String get statusFull => 'Vol';

  @override
  String get tournamentsTitle => 'Toernooien';

  @override
  String get filterOpen => 'Open';

  @override
  String get filterLive => 'Live';

  @override
  String get filterCompleted => 'Afgerond';

  @override
  String get emptyTournamentsTitle => 'Hier geen toernooien';

  @override
  String get emptyTournamentsMessage =>
      'Probeer een ander filter of kom snel terug.';

  @override
  String get statusDraft => 'Concept';

  @override
  String get statusRegistrationOpen => 'Inschrijving open';

  @override
  String get statusRegistrationClosed => 'Inschrijving gesloten';

  @override
  String get statusOngoing => 'Bezig';

  @override
  String get statusCompleted => 'Afgerond';

  @override
  String get statusCancelled => 'Geannuleerd';

  @override
  String get achievementsSection => 'Prestaties';

  @override
  String get statLevel => 'Niveau';

  @override
  String get statRating => 'Rating';

  @override
  String get statSeasonPts => 'Seizoenspunten';

  @override
  String get statXp => 'XP';

  @override
  String get actionFollowing => 'Volgend';

  @override
  String get actionFollow => 'Volgen';

  @override
  String get tooltipRespect => 'Respect';

  @override
  String get tooltipChallenge => 'Uitdagen';

  @override
  String challengeSentTo(String name) {
    return 'Uitdaging verstuurd naar $name';
  }

  @override
  String challengeTitle(String name) {
    return '$name uitdagen';
  }

  @override
  String get hintAddMessage => 'Voeg een bericht toe (optioneel)';

  @override
  String get failureSessionExpired => 'Sessie verlopen.';

  @override
  String get failureNoInternet => 'Geen internetverbinding.';

  @override
  String get failureServerError => 'Er ging bij ons iets mis.';

  @override
  String get failureUnknown => 'Er is een onverwachte fout opgetreden.';

  @override
  String get failureRequestCancelled => 'Verzoek geannuleerd.';

  @override
  String get failureSecureConnectionFailed => 'Beveiligde verbinding mislukt.';

  @override
  String get failureValidationFailed => 'Validatie mislukt.';

  @override
  String get failureRequestFailed => 'Verzoek mislukt.';

  @override
  String get failureInvalidCredentials => 'Verkeerd e-mailadres of wachtwoord.';

  @override
  String get failurePremiumRequired => 'Dit is een Premium-functie.';

  @override
  String get failureCoachOnly => 'Alleen traineraccounts kunnen dit.';

  @override
  String get failurePlayerProfileRequired =>
      'Hiervoor is een spelersprofiel nodig.';

  @override
  String get failureStaffOnly => 'Alleen toernooipersoneel kan dit.';

  @override
  String get failureForbidden => 'Je hebt hier geen toegang toe.';

  @override
  String get failureAccountInactive => 'Dit account is inactief.';

  @override
  String get failureNotFound => 'We konden dat niet vinden.';

  @override
  String get failureRateLimited => 'Te veel pogingen. Probeer het zo opnieuw.';

  @override
  String get failureProviderUnavailable => 'Nog niet beschikbaar.';

  @override
  String get actionClose => 'Sluiten';

  @override
  String get actionConfirm => 'Bevestigen';

  @override
  String get actionSave => 'Opslaan';

  @override
  String get actionEdit => 'Bewerken';

  @override
  String get actionDelete => 'Verwijderen';

  @override
  String get actionAccept => 'Accepteren';

  @override
  String get actionDecline => 'Weigeren';

  @override
  String get actionRefresh => 'Vernieuwen';

  @override
  String get actionViewAll => 'Alles bekijken';

  @override
  String get actionLearnMore => 'Meer weten';

  @override
  String get actionGoPremium => 'Word Premium';

  @override
  String get actionBack => 'Terug';

  @override
  String get actionSearch => 'Zoeken';

  @override
  String get actionApply => 'Toepassen';

  @override
  String get actionReset => 'Resetten';

  @override
  String get actionContinue => 'Doorgaan';

  @override
  String get actionLeave => 'Verlaten';

  @override
  String get actionOpen => 'Openen';

  @override
  String get stateEmptyTitle => 'Nog niets te zien';

  @override
  String get stateOfflineTitle => 'Je bent offline';

  @override
  String get stateOfflineMessage =>
      'Controleer je verbinding en probeer het opnieuw.';

  @override
  String get stateOfflineBanner => 'Offline — we tonen wat we hebben';

  @override
  String get stateErrorTitle => 'Er ging iets mis';

  @override
  String get stateComingSoonTitle => 'Binnenkort';

  @override
  String get stateComingSoonPayments =>
      'Online betalen komt binnenkort. Er is niets afgeschreven.';

  @override
  String get stateComingSoon3d =>
      '3D-identiteit is nog niet beschikbaar. We laten het je weten zodra het kan.';

  @override
  String get stateInsufficientDataTitle => 'Nog niet genoeg gegevens';

  @override
  String get statePremiumTitle => 'Ontgrendel met Premium';

  @override
  String get statePremiumMessage =>
      'Premium voegt analyses en statistieken toe. Het heeft nooit invloed op je rating of ranking.';

  @override
  String progressOf(int current, int target) {
    return '$current/$target';
  }

  @override
  String get valueDash => '—';

  @override
  String get liveBadge => 'LIVE';

  @override
  String get liveRealtime => 'Live · realtime';

  @override
  String liveUpdatingEvery(int seconds) {
    return 'Live · elke $seconds s bijgewerkt';
  }

  @override
  String get correctedToast => 'Score gecorrigeerd door de scoreteller';

  @override
  String get metricSkillRating => 'Skill Rating';

  @override
  String get metricSeasonPoints => 'Seizoenspunten';

  @override
  String get metricXp => 'XP';

  @override
  String metricPosition(int position) {
    return '#$position';
  }

  @override
  String get metricLevel => 'Niveau';

  @override
  String get metricUnranked => 'Geen ranking';

  @override
  String movementUp(int n) {
    return '$n omhoog';
  }

  @override
  String movementDown(int n) {
    return '$n omlaag';
  }

  @override
  String get movementSame => 'Geen verandering';

  @override
  String get competitionRanked => 'GEVERIFIEERD · RANKING';

  @override
  String get competitionCertified => 'OFFICIEEL';

  @override
  String get competitionSocial => 'SOCIAAL';

  @override
  String get officialNote =>
      'Alleen geverifieerde uitslagen van rankingtoernooien veranderen je Skill Rating en seizoensranking.';

  @override
  String get casualNote =>
      'Vriendschappelijke wedstrijden hebben nooit invloed op je rating of ranking.';

  @override
  String get rarityCommon => 'Gewoon';

  @override
  String get rarityRare => 'Zeldzaam';

  @override
  String get rarityEpic => 'Episch';

  @override
  String get rarityLegendary => 'Legendarisch';

  @override
  String xpReward(int xp) {
    return '+$xp XP';
  }

  @override
  String get newCoach => 'Nieuwe trainer';

  @override
  String reviewsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count beoordelingen',
      one: '1 beoordeling',
    );
    return '$_temp0';
  }

  @override
  String get timeNow => 'nu';

  @override
  String timeInMinutes(int n) {
    return 'over $n min';
  }

  @override
  String timeMinutesAgo(int n) {
    return '$n min geleden';
  }

  @override
  String timeInHours(int n) {
    return 'over $n u';
  }

  @override
  String timeHoursAgo(int n) {
    return '$n u geleden';
  }

  @override
  String timeInDays(int n) {
    return 'over $n d';
  }

  @override
  String timeDaysAgo(int n) {
    return '$n d geleden';
  }

  @override
  String get dayToday => 'Vandaag';

  @override
  String get dayYesterday => 'Gisteren';

  @override
  String get navCompete => 'Competitie';

  @override
  String get navPlay => 'Spelen';

  @override
  String homeGreeting(String name) {
    return 'Hoi, $name';
  }

  @override
  String get homeLiveYouAreIn => 'Je staat op de baan';

  @override
  String get homeNextMatch => 'Je volgende wedstrijd';

  @override
  String get homeLiveFollowing => 'Spelers die je volgt';

  @override
  String get homeMyTournaments => 'Mijn toernooien';

  @override
  String get homeYourSeason => 'Jouw seizoen';

  @override
  String get homeStats => 'Jouw cijfers';

  @override
  String get homeLatestAchievement => 'Laatste prestatie';

  @override
  String get homeRecommendedTournaments => 'Toernooien voor jou';

  @override
  String get homeCasualOpportunities => 'Wedstrijden die spelers zoeken';

  @override
  String get homeRecommendedPartner => 'Voorgestelde partner';

  @override
  String get homeRecommendedCoach => 'Trainer voor jou';

  @override
  String get homeUpcomingTraining => 'Komende trainingen';

  @override
  String homePendingRequests(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count partnerverzoeken wachten',
      one: '1 partnerverzoek wacht',
    );
    return '$_temp0';
  }

  @override
  String get homeReviewRequests => 'Bekijken';

  @override
  String get homeAiDailyBrief => 'Dagoverzicht';

  @override
  String get homePremiumTeaserTitle => 'Jouw spel, uitgelegd';

  @override
  String get homePremiumTeaserBody =>
      'Dagoverzichten, geavanceerde statistieken en een 3D-atleetidentiteit — alleen gebaseerd op je echte wedstrijden.';

  @override
  String get homeInsufficientRanking =>
      'Speel geverifieerde rankingwedstrijden om in de seizoensranking te komen.';

  @override
  String get homeInsufficientGeneric =>
      'We vullen dit in zodra er genoeg echte gegevens zijn.';

  @override
  String get homeEmptyTitle => 'Je seizoen begint hier';

  @override
  String get homeEmptyMessage =>
      'Doe mee aan een toernooi of vriendschappelijke wedstrijd om je overzicht te vullen.';

  @override
  String get homeFindTournament => 'Toernooi zoeken';

  @override
  String get matchVs => 'vs';

  @override
  String get matchTbd => 'Nog te bepalen';

  @override
  String get matchBye => 'Bye';

  @override
  String matchCourt(String name) {
    return 'Baan $name';
  }

  @override
  String matchSetLabel(int n) {
    return 'Set $n';
  }

  @override
  String get matchWinner => 'Winnaar';

  @override
  String get matchScheduled => 'Gepland';

  @override
  String matchStartsAt(String time) {
    return 'Begint $time';
  }

  @override
  String get matchWalkover => 'Walkover';

  @override
  String get matchPendingVerification => 'Wacht op verificatie';

  @override
  String get matchVerified => 'Geverifieerd';

  @override
  String get matchServing => 'Serveert';

  @override
  String get matchGames => 'Games';

  @override
  String get matchPoints => 'Punten';

  @override
  String tournamentSpotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nog $count plekken',
      one: 'Nog 1 plek',
      zero: 'Vol',
    );
    return '$_temp0';
  }

  @override
  String tournamentLiveCount(int count) {
    return '$count live';
  }

  @override
  String get tournamentFree => 'Gratis';

  @override
  String tournamentFee(String amount) {
    return 'Inschrijfgeld $amount';
  }

  @override
  String get reasonComplementarySide => 'Aanvullende kant';

  @override
  String get reasonSimilarRating => 'Vergelijkbare Skill Rating';

  @override
  String get reasonPreviousPartnership => 'Samen gespeeld';

  @override
  String get reasonActiveRecently => 'Recent actief';

  @override
  String get reasonSameCountry => 'Zelfde land';

  @override
  String coachPerHour(String price) {
    return '$price / uur';
  }

  @override
  String coachNextAvailable(String time) {
    return 'Volgende: $time';
  }

  @override
  String coachYearsExperience(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jaar',
      one: '1 jaar',
    );
    return '$_temp0';
  }

  @override
  String casualSpotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nog $count plekken',
      one: 'Nog 1 plek',
      zero: 'Vol',
    );
    return '$_temp0';
  }

  @override
  String get casualRequestPending => 'Verzoek in behandeling';

  @override
  String get casualYouAreIn => 'Je doet mee';

  @override
  String get casualYourGame => 'Jouw wedstrijd';

  @override
  String bookingWith(String name) {
    return 'met $name';
  }

  @override
  String get achievementLocked => 'Vergrendeld';

  @override
  String achievementUnlockedOn(String date) {
    return 'Ontgrendeld op $date';
  }

  @override
  String get statMatches => 'Wedstrijden';

  @override
  String get statWins => 'Overwinningen';

  @override
  String get statLosses => 'Nederlagen';

  @override
  String get statWinRate => 'Winstpercentage';

  @override
  String get statStreak => 'Reeks';

  @override
  String get statTitles => 'Titels';

  @override
  String get statFinals => 'Finales';

  @override
  String get statTournaments => 'Toernooien';

  @override
  String get statSets => 'Sets gewonnen–verloren';

  @override
  String get statGames => 'Games gewonnen–verloren';

  @override
  String get statBestStreak => 'Langste winreeks';

  @override
  String get statWalkovers => 'Walkovers W–V';

  @override
  String streakWins(int n) {
    return '${n}W';
  }

  @override
  String streakLosses(int n) {
    return '${n}V';
  }

  @override
  String statLastPlayed(String date) {
    return 'Laatst gespeeld $date';
  }

  @override
  String get partnerMain => 'Vaste partner';

  @override
  String get partnerBestHistorical => 'Beste partner ooit';

  @override
  String get partnerMostPlayed => 'Meest mee gespeeld';

  @override
  String get partnerRecommended => 'Aanbevolen partners';

  @override
  String get partnerNotSet => 'Nog geen vaste partner';

  @override
  String get partnerNotSetHint =>
      'Stuur een verzoek — het wordt officieel zodra de ander accepteert.';

  @override
  String partnerUnlockHint(int count) {
    return 'Speel $count geverifieerde wedstrijden met dezelfde partner om dit te ontgrendelen.';
  }

  @override
  String get partnerNoHistory =>
      'Nog geen geverifieerde wedstrijden met een partner.';

  @override
  String partnerRecord(int won, int played) {
    return '$won W · $played gespeeld';
  }

  @override
  String get partnerHistory => 'Geschiedenis partnerschap';

  @override
  String get partnerRequestAsMain => 'Vragen als vaste partner';

  @override
  String get partnerRequestSent => 'Partnerverzoek verstuurd';

  @override
  String get partnerRemoveMain => 'Partnerschap beëindigen';

  @override
  String get partnerRemoveMainConfirm =>
      'Diegene is dan niet meer je vaste partner. Je kunt later een nieuw verzoek sturen.';

  @override
  String get partnerRequestsTitle => 'Partnerverzoeken';

  @override
  String get partnerRequestsIncoming => 'Ontvangen';

  @override
  String get partnerRequestsOutgoing => 'Verstuurd';

  @override
  String get partnerRequestsEmpty => 'Nu geen partnerverzoeken.';

  @override
  String partnerRequestFrom(String name) {
    return '$name wil je vaste partner worden';
  }

  @override
  String partnerRequestTo(String name) {
    return 'Wacht op $name';
  }

  @override
  String get partnerRequestAccepted => 'Jullie zijn nu vaste partners';

  @override
  String get partnerRecommendedEmpty =>
      'Speel een paar geverifieerde wedstrijden en we stellen partners voor die bij je spel passen.';

  @override
  String partnerRecommendedBasis(String rating, int matches) {
    return 'Op basis van je rating $rating en $matches geverifieerde wedstrijden';
  }

  @override
  String factRatingDiff(String value) {
    return 'Ratingverschil $value';
  }

  @override
  String factTogether(int wins, int matches) {
    return '$wins/$matches samen gewonnen';
  }

  @override
  String factVerifiedMatches(int count) {
    return '$count geverifieerde wedstrijden';
  }

  @override
  String factWinRate(String value) {
    return 'Winstpercentage $value';
  }

  @override
  String factLastPlayed(String when) {
    return 'Speelde $when';
  }

  @override
  String get profileTabOverview => 'Overzicht';

  @override
  String get profileTabResults => 'Uitslagen';

  @override
  String get profileTabAchievements => 'Prestaties';

  @override
  String get profileTabPartners => 'Partners';

  @override
  String get profileTabStats => 'Statistieken';

  @override
  String profileMemberSince(String date) {
    return 'Lid sinds $date';
  }

  @override
  String get profileFollowers => 'Volgers';

  @override
  String get profileFollowing => 'Volgend';

  @override
  String get profileRespects => 'Respect';

  @override
  String get profileEdit => 'Profiel bewerken';

  @override
  String get profileContact => 'Contact (alleen jij ziet dit)';

  @override
  String get profileRecentResults => 'Recente uitslagen';

  @override
  String get profileTournamentHistory => 'Toernooigeschiedenis';

  @override
  String get profileNoResults => 'Nog geen geverifieerde uitslagen';

  @override
  String get profileNoResultsHint =>
      'Officiële uitslagen verschijnen hier zodra het personeel ze verifieert.';

  @override
  String get profile3dIdentity => '3D-identiteit';

  @override
  String get profileRatingHistory => 'Ratinggeschiedenis';

  @override
  String get profileSeasonHistory => 'Seizoenspunten';

  @override
  String get profileRespectSent => 'Respect verstuurd';

  @override
  String get resultWon => 'W';

  @override
  String get resultLost => 'V';

  @override
  String get resultRanked => 'Ranking';

  @override
  String get resultUnranked => 'Geen ranking';

  @override
  String resultWithPartner(String name) {
    return 'met $name';
  }

  @override
  String get placementChampion => 'Kampioen';

  @override
  String get placementFinalist => 'Finalist';

  @override
  String get achievementsTitle => 'Prestaties';

  @override
  String achievementsProgress(int unlocked, int total) {
    return '$unlocked van $total ontgrendeld';
  }

  @override
  String get achievementsCompetitive => 'Competitief';

  @override
  String get achievementsSocial => 'Sociaal';

  @override
  String get achievementsPremiumShelf => 'Premium-badges';

  @override
  String get achievementsPremiumNote =>
      'Premium-badges zijn cosmetisch — ze hebben nooit invloed op rating of ranking.';

  @override
  String get achievementsEmpty => 'Nog geen prestaties';

  @override
  String get achievementAutomatic => 'Wordt automatisch ontgrendeld';

  @override
  String get statsAdvanced => 'Geavanceerde statistieken';

  @override
  String get statsByStage => 'Per fase';

  @override
  String get statsGroupStage => 'Poulefase';

  @override
  String get statsKnockout => 'Knock-out';

  @override
  String get statsDecidingSets => 'Beslissende sets';

  @override
  String get statsByCompetition => 'Ranking vs geen ranking';

  @override
  String get statsPointAnalytics => 'Puntanalyse';

  @override
  String statsCoverage(String value) {
    return 'Dekking $value';
  }

  @override
  String get statsLimitedData => 'Beperkte gegevens';

  @override
  String get statsWinnersByShot => 'Winners per slag';

  @override
  String get statsErrorsByType => 'Fouten per type';

  @override
  String get statsRatingTimeline => 'Ratingverloop';

  @override
  String get statsAdvancedLocked =>
      'Geavanceerde statistieken zijn beschikbaar voor Premium-leden op hun eigen profiel.';

  @override
  String statsRecord(int wins, int matches) {
    return '$wins/$matches';
  }

  @override
  String get followersTitle => 'Volgers';

  @override
  String get followingTitle => 'Volgend';

  @override
  String get followersEmpty => 'Nog niemand';

  @override
  String get ratingHistoryTitle => 'Ratinggeschiedenis';

  @override
  String get ratingReasonOfficial => 'Officiële uitslag';

  @override
  String get ratingReasonCorrection => 'Terugdraaiing na correctie';

  @override
  String get ratingReasonInactivity => 'Inactiviteit';

  @override
  String get ratingBreakdown => 'Hoe het is berekend';

  @override
  String get ratingExpected => 'Verwachte score';

  @override
  String get ratingKFactor => 'Effectieve K';

  @override
  String get ratingOwnStrength => 'Sterkte van je team';

  @override
  String get ratingOpponentStrength => 'Sterkte tegenstander';

  @override
  String get ratingUpset => 'Verrassing';

  @override
  String get ratingStage => 'Fase';

  @override
  String get ratingHistoryEmpty => 'Nog geen ratingwijzigingen';

  @override
  String get seasonPointsTitle => 'Seizoenspunten';

  @override
  String get seasonBestStageNote =>
      'Elke categorie telt één keer — de beste fase die je bereikte.';

  @override
  String get challengesTitle => 'Uitdagingen';

  @override
  String get challengesIncoming => 'Ontvangen';

  @override
  String get challengesOutgoing => 'Verstuurd';

  @override
  String get challengesEmpty => 'Geen uitdagingen';

  @override
  String challengeFrom(String name) {
    return '$name heeft je uitgedaagd';
  }

  @override
  String challengeTo(String name) {
    return 'Je hebt $name uitgedaagd';
  }

  @override
  String get searchPlayersTitle => 'Spelers zoeken';

  @override
  String get searchPlayersHint => 'Naam of speler-ID';

  @override
  String get searchPlayersEmpty => 'Geen spelers gevonden';

  @override
  String get editProfileTitle => 'Profiel bewerken';

  @override
  String get editProfileCompetitiveNote =>
      'Rating, niveau, punten en XP komen uit geverifieerde uitslagen en kunnen niet worden aangepast.';

  @override
  String get editProfilePhoto => 'Foto wijzigen';

  @override
  String get editProfilePhotoHint =>
      'JPG, PNG of WebP · max. 4 MB. Wordt ook gebruikt voor je 3D-identiteit.';

  @override
  String get editProfileSaved => 'Profiel opgeslagen';

  @override
  String get fieldBio => 'Bio';

  @override
  String get fieldDateOfBirth => 'Geboortedatum';

  @override
  String get fieldGender => 'Geslacht';

  @override
  String get fieldSide => 'Speelkant';

  @override
  String get changePasswordTitle => 'Wachtwoord wijzigen';

  @override
  String get fieldCurrentPassword => 'Huidig wachtwoord';

  @override
  String get fieldNewPassword => 'Nieuw wachtwoord';

  @override
  String get passwordChanged =>
      'Wachtwoord gewijzigd. Andere sessies zijn uitgelogd.';

  @override
  String get premiumTitle => 'Premium';

  @override
  String get premiumHeadline => 'Slimmer trainen. Eerlijk spelen.';

  @override
  String get premiumSubhead =>
      'Analyses en statistieken alleen gebaseerd op je echte, geverifieerde wedstrijden.';

  @override
  String premiumNeverAffects(String items) {
    return 'Premium heeft nooit invloed op je $items.';
  }

  @override
  String get premiumNeverAffectsDefault =>
      'Premium heeft nooit invloed op je Skill Rating, seizoensranking, plaatsing of deelnamerecht.';

  @override
  String get neverSkillRating => 'Skill Rating';

  @override
  String get neverSeasonRanking => 'seizoensranking';

  @override
  String get neverSeeding => 'plaatsing';

  @override
  String get neverEligibility => 'deelnamerecht aan toernooien';

  @override
  String get neverOfficialResults => 'officiële uitslagen';

  @override
  String get premiumFeatureAi => 'AI-analyses';

  @override
  String get premiumFeatureAiBody =>
      'Dagoverzichten, prestatieoverzichten en aanbevelingen.';

  @override
  String get premiumFeatureAnalytics => 'Geavanceerde statistieken';

  @override
  String get premiumFeatureAnalyticsBody =>
      'Per fase, beslissende sets, slagen en fouten.';

  @override
  String get premiumFeature3d => '3D-atleetidentiteit';

  @override
  String get premiumFeature3dBody =>
      'Een draaiende 3D-avatar op basis van je profielfoto.';

  @override
  String get premiumFeatureBadges => 'Premium-badges';

  @override
  String get premiumFeatureBadgesBody =>
      'Cosmetische badges, duidelijk gescheiden van sportieve medailles.';

  @override
  String get premiumPlansTitle => 'Kies een abonnement';

  @override
  String premiumPlanMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maanden',
      one: '1 maand',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlansUnavailable =>
      'Abonnementen verschijnen hier zodra de prijzen bekend zijn.';

  @override
  String get premiumCheckoutSoon => 'Online betalen komt binnenkort';

  @override
  String get premiumSubscribe => 'Verder naar betalen';

  @override
  String get premiumActive => 'Je bent Premium';

  @override
  String premiumActiveUntil(String date) {
    return 'Actief tot $date';
  }

  @override
  String get premiumOpenAi => 'AI-analyses openen';

  @override
  String get premiumOpen3d => '3D-identiteit openen';

  @override
  String get paymentsTitle => 'Betalingen';

  @override
  String get paymentsEmpty => 'Nog geen betalingen';

  @override
  String get paymentStatusTitle => 'Betaalstatus';

  @override
  String get paymentWaiting => 'Wachten op bevestiging van de betaalprovider…';

  @override
  String get paymentOpenCheckout => 'Betaalpagina openen';

  @override
  String get paymentSecureTitle => 'Veilig betalen';

  @override
  String get paymentSucceeded => 'Betaling bevestigd';

  @override
  String get paymentFailedTitle => 'Betaling niet gelukt';

  @override
  String paymentReference(String ref) {
    return 'Referentie $ref';
  }

  @override
  String get paymentOnlyBackend =>
      'We markeren een betaling pas als betaald wanneer de server het bevestigt.';

  @override
  String get aiTitle => 'AI-analyses';

  @override
  String get aiGenerate => 'Maken';

  @override
  String get aiRefresh => 'Vernieuwen';

  @override
  String get aiWorking => 'Je wedstrijden worden geanalyseerd…';

  @override
  String get aiFailed => 'Deze analyse kon niet worden gemaakt.';

  @override
  String get aiNotGenerated => 'Nog niet gemaakt';

  @override
  String aiCoverage(String level) {
    return 'Gegevensdekking: $level';
  }

  @override
  String get aiCoverageNone => 'geen';

  @override
  String get aiCoverageLow => 'laag';

  @override
  String get aiCoverageMedium => 'gemiddeld';

  @override
  String get aiCoverageHigh => 'hoog';

  @override
  String aiMatchesUsed(int count) {
    return '$count wedstrijden gebruikt';
  }

  @override
  String get aiHighlights => 'Hoogtepunten';

  @override
  String get aiRecommendations => 'Aanbevelingen';

  @override
  String get aiFacts => 'De feiten';

  @override
  String aiGeneratedAt(String when) {
    return 'Gemaakt $when';
  }

  @override
  String get aiTypePlayerInsights => 'Spelersanalyse';

  @override
  String get aiTypePerformanceSummary => 'Prestatieoverzicht';

  @override
  String get aiTypePartnerRecommendation => 'Partneradvies';

  @override
  String get aiTypeTournamentRecommendation => 'Toernooiadvies';

  @override
  String get aiTypeCoachRecommendation => 'Trainersadvies';

  @override
  String get aiTypeDevelopmentRecommendation => 'Ontwikkelplan';

  @override
  String get aiTypeDailyBrief => 'Dagoverzicht';

  @override
  String get threeDTitle => '3D-identiteit';

  @override
  String get threeDGenerate => 'Mijn 3D-identiteit maken';

  @override
  String get threeDRegenerate => 'Opnieuw maken';

  @override
  String get threeDProcessing =>
      'Je 3D-identiteit wordt gemaakt. Dit kan een paar minuten duren.';

  @override
  String get threeDNeedsPhoto =>
      'Upload eerst een profielfoto — daarmee wordt je 3D-identiteit gemaakt.';

  @override
  String get threeDUploadPhoto => 'Foto uploaden';

  @override
  String get threeDFailed => 'Maken mislukt. Je kunt het opnieuw proberen.';

  @override
  String get threeDEmpty => 'Nog geen 3D-identiteit';

  @override
  String get bookingStatus => 'Status';

  @override
  String get bookingPrice => 'Prijs';

  @override
  String get bookingDuration => 'Duur';

  @override
  String get bookingLocation => 'Locatie';

  @override
  String get bookingTrainingType => 'Type training';

  @override
  String get bookingNotes => 'Notities';

  @override
  String get bookingFeedback => 'Feedback van de trainer';

  @override
  String bookingXpAwarded(int xp) {
    return '+$xp XP verdiend';
  }

  @override
  String get bookingCancel => 'Boeking annuleren';

  @override
  String get bookingCancelReason => 'Reden (optioneel)';

  @override
  String get bookingCancelled => 'Boeking geannuleerd';

  @override
  String get bookingCancelWindow =>
      'Bevestigde boekingen kunnen tot 24 uur voor de start worden geannuleerd.';

  @override
  String get bookingReview => 'Beoordeel deze sessie';

  @override
  String get bookingReviewComment => 'Opmerking (optioneel)';

  @override
  String get bookingReviewThanks => 'Bedankt voor je beoordeling';

  @override
  String get bookingYourReview => 'Jouw beoordeling';

  @override
  String bookingRejectedReason(String reason) {
    return 'Afgewezen: $reason';
  }

  @override
  String bookingCancelledBy(String who) {
    return 'Geannuleerd door $who';
  }

  @override
  String get bookingByPlayer => 'speler';

  @override
  String get bookingByCoach => 'trainer';

  @override
  String get bookingProgressRecorded => 'Voortgang vastgelegd';

  @override
  String get bookingDetailTitle => 'Trainingssessie';

  @override
  String get competeTitle => 'Competitie';

  @override
  String get competeTabTournaments => 'Toernooien';

  @override
  String get competeTabLive => 'Nu live';

  @override
  String get competeSearchHint => 'Toernooien zoeken';

  @override
  String get filterRanked => 'Ranking';

  @override
  String get filterCertified => 'Officieel';

  @override
  String get filterSocial => 'Sociaal';

  @override
  String get filterUpcoming => 'Binnenkort';

  @override
  String get liveNowEmptyTitle => 'Er wordt nu niet gespeeld';

  @override
  String get liveNowEmptyMessage =>
      'Live wedstrijden verschijnen hier zodra een scoreteller er een start.';

  @override
  String get tournamentTabOverview => 'Overzicht';

  @override
  String get tournamentTabLive => 'Live';

  @override
  String get tournamentTabSchedule => 'Schema';

  @override
  String get tournamentTabResults => 'Uitslagen';

  @override
  String get tournamentRules => 'Regels';

  @override
  String get tournamentAbout => 'Over';

  @override
  String get tournamentOpenMap => 'Openen in kaarten';

  @override
  String tournamentRegistrationWindow(String from, String to) {
    return 'Inschrijving $from – $to';
  }

  @override
  String get tournamentChampion => 'Kampioen';

  @override
  String get tournamentNoLive => 'Nu geen live wedstrijden in dit toernooi.';

  @override
  String get tournamentNoSchedule => 'Het schema is nog niet gepubliceerd.';

  @override
  String get tournamentNoResults => 'Nog geen geverifieerde uitslagen.';

  @override
  String get tournamentRankedNote =>
      'Geverifieerde uitslagen hier veranderen Skill Rating en seizoenspunten.';

  @override
  String get tournamentUnrankedNote =>
      'Uitslagen hier hebben geen invloed op Skill Rating of seizoensranking.';

  @override
  String get categoryRegister => 'Inschrijven';

  @override
  String get categoryJoinWaitlist => 'Op wachtlijst';

  @override
  String get categoryRegistered => 'Ingeschreven';

  @override
  String get categoryView => 'Teams, poules en schema';

  @override
  String categoryWaitlist(int count) {
    return '$count op de wachtlijst';
  }

  @override
  String get categoryTabTeams => 'Teams';

  @override
  String get categoryTabGroups => 'Poules';

  @override
  String get categoryTabBracket => 'Schema';

  @override
  String get categoryNoTeams => 'Nog geen teams';

  @override
  String get categoryNoGroups => 'Poules verschijnen na de loting.';

  @override
  String get categoryNoBracket => 'Het schema wordt na de poulefase gemaakt.';

  @override
  String get teamWithdrawn => 'Teruggetrokken';

  @override
  String get teamDisqualified => 'Gediskwalificeerd';

  @override
  String teamSeed(int seed) {
    return 'Geplaatst $seed';
  }

  @override
  String get standingsPlayed => 'G';

  @override
  String get standingsWins => 'W';

  @override
  String get standingsLosses => 'V';

  @override
  String get standingsSetDiff => 'SV';

  @override
  String get standingsGameDiff => 'GV';

  @override
  String get standingsPoints => 'Ptn';

  @override
  String get standingsTeam => 'Team';

  @override
  String get groupFinished => 'Afgerond';

  @override
  String registerTitle2(String category) {
    return 'Inschrijven voor $category';
  }

  @override
  String get registerPartner => 'Partner';

  @override
  String get registerPickPartner => 'Kies een partner';

  @override
  String get registerChangePartner => 'Partner wijzigen';

  @override
  String get registerCheckEligibility => 'Deelnamerecht controleren…';

  @override
  String get registerEligible => 'Je mag meedoen';

  @override
  String get registerYourIssues => 'Jij';

  @override
  String get registerPartnerIssues => 'Je partner';

  @override
  String get registerClosed => 'Inschrijving is gesloten';

  @override
  String get registerFullWaitlist =>
      'Deze categorie is vol — je komt op de wachtlijst en schuift automatisch door als er een plek vrijkomt.';

  @override
  String registerFeeNote(String amount) {
    return 'Inschrijfgeld $amount. De betaling wordt bevestigd door het systeem van de organisator.';
  }

  @override
  String get registerSubmit => 'Inschrijving bevestigen';

  @override
  String get registerDone => 'Je bent ingeschreven';

  @override
  String get registerWaitlisted => 'Je staat op de wachtlijst';

  @override
  String get myRegistrationsTitle => 'Mijn inschrijvingen';

  @override
  String get myRegistrationsEmpty =>
      'Je hebt je nog niet ingeschreven voor een toernooi';

  @override
  String get registrationCancel => 'Inschrijving annuleren';

  @override
  String get statsForm => 'Vorm (laatste 10 wedstrijden)';

  @override
  String get statsLast10 => 'Laatste 10';

  @override
  String get statsOverall => 'Totaal';

  @override
  String get statsByRound => 'Per ronde';

  @override
  String get statsSetsAnalysis => 'Sets';

  @override
  String get statsWonFirstSet => 'Na winst van de eerste set';

  @override
  String get statsLostFirstSet => 'Na verlies van de eerste set';

  @override
  String get statsTiebreaks => 'Sets met tiebreak';

  @override
  String get statsComebacks => 'Comebackoverwinningen';

  @override
  String get statsServeAndPoints => 'Opslag en punten';

  @override
  String get statsAces => 'Aces';

  @override
  String get statsDoubleFaults => 'Dubbele fouten';

  @override
  String get statsPointsWon => 'Gewonnen punten';

  @override
  String get statsPointsShare => 'Aandeel gewonnen punten';

  @override
  String get statsByPartner => 'Met elke partner';

  @override
  String get statsByOpponent => 'Tegen tegenstanders';

  @override
  String get statsPerMatch => 'Wedstrijd voor wedstrijd';

  @override
  String get statsSeeAll => 'Alle statistieken';

  @override
  String get predictionsTitle => 'Voorspellingen';

  @override
  String get predictionsTabOpen => 'Wedstrijden';

  @override
  String get predictionsTabMine => 'Mijn voorspellingen';

  @override
  String get predictionsTabLeaderboard => 'Beste voorspellers';

  @override
  String predictionsRules(int winner, int exact) {
    return 'Alleen gecertificeerde toernooien. Juiste winnaar: $winner punten · exacte sets: +$exact.';
  }

  @override
  String get predictionsEmpty =>
      'Er zijn nu geen wedstrijden om te voorspellen.';

  @override
  String get predictionsMineEmpty => 'Je hebt nog geen wedstrijd voorspeld.';

  @override
  String get predictionsLeaderboardEmpty => 'Nog geen voorspellers.';

  @override
  String get predictionPointsLabel => 'Voorspellingspunten';

  @override
  String predictionPosition(int position) {
    return 'Positie #$position';
  }

  @override
  String predictionWonCount(int won, int settled) {
    return '$won/$settled goed';
  }

  @override
  String predictionCrowdCount(int count) {
    return '$count voorspellingen';
  }

  @override
  String get predictionPredict => 'Voorspellen';

  @override
  String get predictionEdit => 'Wijzigen';

  @override
  String get predictionClosed => 'Gesloten';

  @override
  String predictionStatusWon(int points) {
    return 'Goed +$points';
  }

  @override
  String get predictionStatusLost => 'Fout';

  @override
  String get predictionStatusVoid => 'Vervallen';

  @override
  String get predictionStatusPending => 'Wacht op uitslag';

  @override
  String get predictionSaved => 'Voorspelling opgeslagen';

  @override
  String get predictionPick => 'Wie wint?';

  @override
  String get predictionExactScore => 'Exacte sets (optioneel, extra punten)';

  @override
  String get predictionSave => 'Voorspelling opslaan';

  @override
  String get coinsTitle => 'Mijn punten';

  @override
  String get coinsBalance => 'Saldo Playmaker Coins';

  @override
  String get coinsStore => 'Winkel';

  @override
  String coinsRate(int coins) {
    return '$coins B = 1 JOD';
  }

  @override
  String get coinsBuy => 'Kopen';

  @override
  String get coinsHistory => 'Geschiedenis';

  @override
  String get coinsHistoryEmpty => 'Nog geen transacties.';

  @override
  String get coinsSeparateNote =>
      'Playmaker Coins staan los van populariteitsedelstenen.';

  @override
  String get popularityTitle => 'Populariteit';

  @override
  String popularityGems(int count) {
    return '$count edelstenen';
  }

  @override
  String popularityGifts(int count) {
    return '$count cadeaus ontvangen';
  }

  @override
  String popularityNextRank(int gems, String rank) {
    return 'Nog $gems edelstenen tot $rank';
  }

  @override
  String get popularityTopRank => 'Hoogste rang bereikt';

  @override
  String get popularityReceivedTitle => 'Ontvangen cadeaus';

  @override
  String get popularityLatest => 'Laatste cadeaus';

  @override
  String get popularityEmpty =>
      'Nog geen cadeaus — stuur als eerste een cadeau!';

  @override
  String get popularityNote =>
      'Edelstenen tonen alleen populariteit — ze worden nooit uitgegeven of omgezet.';

  @override
  String get giftsTitle => 'Cadeaus en populariteit';

  @override
  String get giftsSend => 'Cadeau sturen';

  @override
  String giftsSendTitle(String name) {
    return 'Stuur een cadeau naar $name';
  }

  @override
  String get giftsDailyClaim => 'Cadeau van vandaag ophalen';

  @override
  String get giftsDailyClaimed => 'Cadeau van vandaag opgehaald';

  @override
  String get giftsDailyClaimedSnack =>
      'Het cadeau van vandaag is van jou — stuur het naar een speler!';

  @override
  String get giftsMyStock => 'Mijn gratis cadeaus';

  @override
  String get giftsStockEmpty =>
      'Nog geen gratis cadeaus. Haal het dagelijkse cadeau op, speel geverifieerde wedstrijden of doe mee aan toernooien om ze te verdienen.';

  @override
  String get giftsSendToPlayers => 'Zoek een speler om cadeaus te sturen';

  @override
  String get giftsCatalog => 'Alle cadeaus';

  @override
  String get giftsFree => 'Gratis';

  @override
  String get giftsNoneLeft => 'Op';

  @override
  String get giftsPaidSection => 'Premium-cadeaus';

  @override
  String get giftsMinorCantBuy => 'Cadeaus kopen kan pas vanaf 18 jaar.';

  @override
  String get giftsSent => 'Cadeau verstuurd!';

  @override
  String get statWinners => 'Winner';

  @override
  String get statWinnersHint => 'Punten gewonnen met een directe winnende slag';

  @override
  String get statErrors => 'Loser';

  @override
  String get statErrorsHint => 'Punten verloren door eigen fouten';

  @override
  String get rankingsFilters => 'Filters';

  @override
  String get rankingsFilterGender => 'Jongens / Meisjes';

  @override
  String get rankingsFilterNationality => 'Nationaliteit';

  @override
  String get rankingsFilterAge => 'Leeftijdsgroep';

  @override
  String get rankingsFiltersApply => 'Toepassen';

  @override
  String get rankingsFiltersClear => 'Alles wissen';

  @override
  String get filterGenderMale => 'Jongens / Mannen';

  @override
  String get filterGenderFemale => 'Meisjes / Vrouwen';

  @override
  String get filterJordanian => 'Jordaans';

  @override
  String get filterForeign => 'Niet-Jordaans';

  @override
  String ageUnder(int age) {
    return 'Onder $age';
  }

  @override
  String get ageAdults => 'Volwassenen (18+)';

  @override
  String ageOver(int age) {
    return '$age+';
  }

  @override
  String tournamentEntryFee(String amount) {
    return 'Inschrijfgeld $amount per team';
  }

  @override
  String get registerPaymentMethod => 'Betaling';

  @override
  String get registerPayOnline => 'Nu online betalen';

  @override
  String get registerPayOnlineHint =>
      'Kaartbetaling via MEPS — je inschrijving is meteen rond';

  @override
  String get registerPayCash => 'Contant op locatie';

  @override
  String get registerPayCashHint =>
      'Betaal de organisator; die bevestigt je betaling';

  @override
  String get registerSubmitAndPay => 'Inschrijven en betalen';

  @override
  String registrationCashDue(String amount) {
    return 'Betaal $amount contant aan de organisator.';
  }

  @override
  String get registrationPayOnlineInstead => 'Toch online betalen';

  @override
  String get scoreDeuce => 'Deuce';

  @override
  String get scoreAdvantage => 'ADV';

  @override
  String get scoreGoldenPoint => 'Gouden punt';

  @override
  String get registerTeamName => 'Teamnaam';

  @override
  String get registerTeamNameHint => 'Verplicht — bijv. Smash Brothers';

  @override
  String get registrationRenameTeam => 'Teamnaam wijzigen';

  @override
  String get registrationTeamRenamed => 'Teamnaam bijgewerkt';

  @override
  String registrationPartnerInvite(String name) {
    return '$name wil jou als partner in dit toernooi. Bevestig om het naar de organisator te sturen.';
  }

  @override
  String get registrationPartnerAccept => 'Accepteren';

  @override
  String get registrationPartnerDecline => 'Weigeren';

  @override
  String get registrationPartnerDeclineConfirm =>
      'Weigeren om als duo mee te doen aan dit toernooi?';

  @override
  String get registrationPartnerAcceptedSnack =>
      'Bevestigd — de organisator bekijkt nu de inschrijving';

  @override
  String get registrationPartnerDeclinedSnack => 'Uitnodiging geweigerd';

  @override
  String get registrationAwaitingPartnerHint =>
      'Wacht op bevestiging van je partner voordat de organisator het bekijkt.';

  @override
  String get registrationPartnerDeclinedHint =>
      'Je partner heeft geweigerd. Kies een andere partner of annuleer de inschrijving.';

  @override
  String get registrationCancelConfirm => 'Je plek komt vrij.';

  @override
  String get registrationCancelled => 'Inschrijving geannuleerd';

  @override
  String get registrationPay => 'Nu betalen';

  @override
  String get registrationPartnerChanged => 'Partner bijgewerkt';

  @override
  String registrationPromoted(String date) {
    return 'Van de wachtlijst gehaald op $date';
  }

  @override
  String get liveTitle => 'Wedstrijdcentrum';

  @override
  String get livePointFeed => 'Punt voor punt';

  @override
  String get livePointFeedEmpty => 'Nog geen punten geregistreerd.';

  @override
  String get liveTiebreak => 'Tiebreak';

  @override
  String get liveMatchOver => 'Wedstrijd voorbij';

  @override
  String liveWinnerTitle(String team) {
    return '$team wint!';
  }

  @override
  String get liveResultPending => 'Uitslag wacht op verificatie';

  @override
  String get livePartialDetail => 'Gedeeltelijke details';

  @override
  String livePointBy(String team) {
    return 'Punt voor $team';
  }

  @override
  String get liveNotStarted => 'Niet begonnen';

  @override
  String get liveCorrected => 'Gecorrigeerd';

  @override
  String get rankingsTabSeason => 'Seizoen';

  @override
  String get rankingsTabSkill => 'Skill';

  @override
  String get rankingsTabXp => 'XP';

  @override
  String get rankingsYou => 'Jij';

  @override
  String get rankingsSeasonPicker => 'Seizoen';

  @override
  String get rankingsSearchHint => 'Zoeken in de ranking';

  @override
  String get rankingsXpNote =>
      'XP beloont activiteit. Het heeft nooit invloed op ranking of plaatsing.';

  @override
  String get rankingsSkillNote =>
      'Skill Rating verandert alleen door geverifieerde uitslagen van rankingtoernooien.';

  @override
  String get rankingsSeasonNote =>
      'Seizoenspunten tellen je beste fase per categorie.';

  @override
  String rankingsLevelPosition(int position, String level) {
    return '#$position in $level';
  }

  @override
  String get playTitle => 'Spelen';

  @override
  String get playTabCasual => 'Vriendschappelijk';

  @override
  String get playTabCoaches => 'Trainers';

  @override
  String get casualMyMatches => 'Mijn wedstrijden';

  @override
  String get casualCreated => 'Aangemaakt';

  @override
  String get casualJoined => 'Meegedaan';

  @override
  String get casualDetailTitle => 'Vriendschappelijke wedstrijd';

  @override
  String get casualParticipants => 'Spelers';

  @override
  String get casualRequests => 'Verzoeken om mee te doen';

  @override
  String get casualNoRequests => 'Geen openstaande verzoeken';

  @override
  String get casualLeave => 'Wedstrijd verlaten';

  @override
  String get casualCancelGame => 'Wedstrijd annuleren';

  @override
  String get casualCancelConfirm => 'Iedereen die meedeed krijgt een melding.';

  @override
  String get casualLeft => 'Je hebt de wedstrijd verlaten';

  @override
  String get casualCancelled => 'Wedstrijd geannuleerd';

  @override
  String get fieldVenue => 'Locatie (optioneel)';

  @override
  String get fieldCourt => 'Baan (optioneel)';

  @override
  String get venueAny => 'Elke locatie';

  @override
  String get courtAny => 'Elke baan';

  @override
  String get venuesTitle => 'Locaties';

  @override
  String venueCourts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count banen',
      one: '1 baan',
    );
    return '$_temp0';
  }

  @override
  String get venueUpcoming => 'Komende toernooien';

  @override
  String get venuesEmpty => 'Geen locaties gevonden';

  @override
  String get coachesFilterAll => 'Alle';

  @override
  String get coachesSortRating => 'Best beoordeeld';

  @override
  String get coachesSortPrice => 'Prijs';

  @override
  String get coachesSortName => 'Naam';

  @override
  String get coachesSearchHint => 'Zoek trainers of stad';

  @override
  String get coachLanguages => 'Talen';

  @override
  String get coachExperience => 'Ervaring';

  @override
  String get coachTrainingTypes => 'Soorten training';

  @override
  String get coachAvailability => 'Beschikbaarheid';

  @override
  String get coachNoSlots => 'Geen vrije tijden op deze dag';

  @override
  String get coachReviews => 'Beoordelingen';

  @override
  String get coachNoReviews =>
      'Nog geen beoordelingen — geef er als eerste een na je sessie.';

  @override
  String get coachBook => 'Sessie boeken';

  @override
  String coachBookSlot(String time) {
    return '$time boeken';
  }

  @override
  String get bookingSheetTitle => 'Boeking bevestigen';

  @override
  String get bookingPickSlot => 'Kies eerst een tijdslot';

  @override
  String get bookingSummary => 'Overzicht';

  @override
  String get bookingTotal => 'Totaal';

  @override
  String get bookingConfirm => 'Boeking aanvragen';

  @override
  String get bookingRequested =>
      'Boeking aangevraagd — de trainer bevestigt deze.';

  @override
  String get bookingSlotTaken =>
      'Dat tijdslot is net bezet. Hier is de actuele beschikbaarheid.';

  @override
  String get myBookingsTitle => 'Mijn trainingen';

  @override
  String get myBookingsUpcoming => 'Komend';

  @override
  String get myBookingsPast => 'Voorbij';

  @override
  String get myBookingsEmpty => 'Geen sessies';

  @override
  String get trainingProgressTitle => 'Trainingsvoortgang';

  @override
  String get trainingProgressEmpty =>
      'De beoordelingen van je trainer verschijnen hier na de sessies.';

  @override
  String trainingLatest(int score) {
    return 'Laatste $score/10';
  }

  @override
  String trainingAssessments(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count beoordelingen',
      one: '1 beoordeling',
    );
    return '$_temp0';
  }

  @override
  String get coachPortalTitle => 'Trainersportaal';

  @override
  String get coachPortalToday => 'Volgende sessies';

  @override
  String get coachPortalPending => 'Te beantwoorden verzoeken';

  @override
  String get coachPortalAvailability => 'Beschikbaarheid';

  @override
  String get coachPortalBookings => 'Boekingen';

  @override
  String get coachPortalProfile => 'Trainersprofiel';

  @override
  String get coachPortalSwitchToPlayer => 'Spelersapp';

  @override
  String get coachPortalOpen => 'Trainersportaal';

  @override
  String get slotAdd => 'Tijdsloten toevoegen';

  @override
  String get slotDate => 'Datum';

  @override
  String get slotStart => 'Start';

  @override
  String get slotEnd => 'Einde';

  @override
  String get slotRepeat => 'Wekelijks herhalen';

  @override
  String slotRepeatWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nog $count weken',
      one: 'Nog 1 week',
      zero: 'Niet herhalen',
    );
    return '$_temp0';
  }

  @override
  String get slotActive => 'Boekbaar';

  @override
  String get slotBooked => 'Geboekt';

  @override
  String get slotDeleteConfirm => 'Dit tijdslot verwijderen?';

  @override
  String get slotsCreated => 'Tijdsloten toegevoegd';

  @override
  String get slotsEmptyDay => 'Geen tijdsloten op deze dag';

  @override
  String get bookingConfirmAction => 'Bevestigen';

  @override
  String get bookingRejectAction => 'Afwijzen';

  @override
  String get bookingCompleteAction => 'Markeren als afgerond';

  @override
  String get bookingFeedbackAction => 'Feedback sturen';

  @override
  String get bookingProgressAction => 'Voortgang vastleggen';

  @override
  String get bookingReasonOptional => 'Reden (optioneel)';

  @override
  String get bookingFeedbackHint =>
      'Wat ging goed, waar moet aan gewerkt worden';

  @override
  String get bookingUpdated => 'Boeking bijgewerkt';

  @override
  String get progressSkill => 'Vaardigheid';

  @override
  String get progressScore => 'Score (1–10)';

  @override
  String get progressAddSkill => 'Vaardigheid toevoegen';

  @override
  String get progressSaved => 'Voortgang opgeslagen';

  @override
  String get coachFieldCity => 'Stad';

  @override
  String get coachFieldPrice => 'Prijs per uur';

  @override
  String get coachFieldYears => 'Jaren ervaring';

  @override
  String get coachFieldSpecialties => 'Specialiteiten';

  @override
  String get coachFieldLanguages => 'Talen (gescheiden door komma\'s)';

  @override
  String get coachProfileSaved => 'Trainersprofiel opgeslagen';

  @override
  String get notificationsMarkAllRead => 'Alles als gelezen markeren';

  @override
  String get notificationsFilterUnread => 'Ongelezen';

  @override
  String get notificationsFilterAll => 'Alle';

  @override
  String get settingsNotifications => 'Meldingen';

  @override
  String get settingsPushEnabled => 'Pushmeldingen staan aan';

  @override
  String get settingsPushDisabled => 'Pushmeldingen staan uit';

  @override
  String get settingsPushUnavailable => 'Push is in deze versie niet ingesteld';

  @override
  String get settingsPushEnable => 'Inschakelen';

  @override
  String get settingsAccount => 'Account';

  @override
  String get settingsPremium => 'Premium';

  @override
  String get settingsPayments => 'Betalingen';

  @override
  String get settingsMyTraining => 'Mijn trainingen';

  @override
  String get settingsStaff => 'Scores bijhouden (personeel)';

  @override
  String settingsVersion(String version) {
    return 'Versie $version';
  }

  @override
  String get settingsLogOutConfirm => 'Je moet dan opnieuw inloggen.';

  @override
  String get scorekeeperTitle => 'Scoreteller';

  @override
  String get scorekeeperLogin => 'Inloggen personeel';

  @override
  String get scorekeeperLoginField => 'Gebruikersnaam personeel';

  @override
  String get scorekeeperMatches => 'Toegewezen wedstrijden';

  @override
  String get scorekeeperNoMatches => 'Nu geen wedstrijden toegewezen.';

  @override
  String get scorekeeperPointTo => 'Punt';

  @override
  String get scorekeeperUndo => 'Laatste punt ongedaan maken';

  @override
  String get scorekeeperEndMatch => 'Wedstrijd beëindigen';

  @override
  String get scorekeeperEndMatchTitle => 'Wedstrijd beëindigen — wie won?';

  @override
  String get scorekeeperEndMatchHelp =>
      'De wedstrijd eindigt nu met de huidige stand (tijdslimiet, baan nodig...). Je kunt hem heropenen met ongedaan maken.';

  @override
  String get scorekeeperEndReason => 'Reden (optioneel)';

  @override
  String get scorekeeperMatchEnded => 'Wedstrijd beëindigd';

  @override
  String get scorekeeperReopen => 'Wedstrijd heropenen';

  @override
  String get scorekeeperAddDetail => 'Detail toevoegen';

  @override
  String get scorekeeperDetailOptional =>
      'Optioneel — het punt is al geregistreerd.';

  @override
  String get scorekeeperEndingType => 'Hoe het eindigde';

  @override
  String get scorekeeperShot => 'Slag';

  @override
  String get scorekeeperError => 'Fout';

  @override
  String get scorekeeperServe => 'Opslag';

  @override
  String get scorekeeperPlayer => 'Speler';

  @override
  String get scorekeeperSaved => 'Detail opgeslagen';

  @override
  String get scorekeeperRecordPoint => 'Punt registreren';

  @override
  String get scorekeeperEditLastPoint => 'Laatste punt bewerken';

  @override
  String get scorekeeperReasonHelp =>
      'Kies hoe het punt eindigde en de vereiste details.';

  @override
  String get scorekeeperPlayerWinning => 'Speler (team dat het punt won)';

  @override
  String get scorekeeperPlayerLosing => 'Speler (team dat het punt verloor)';

  @override
  String get scorekeeperLogout => 'Scoretellermodus verlaten';

  @override
  String get pmPhoneKicker => 'Welkom bij de community';

  @override
  String get pmPhoneTitle => 'Stap de baan op';

  @override
  String get pmPhoneSubtitle =>
      'Log in met je telefoonnummer en bouw je sportidentiteit op.';

  @override
  String get pmPhoneLabel => 'Telefoonnummer';

  @override
  String get pmPhoneHint => 'We sturen je een verificatiecode per sms';

  @override
  String get pmPhoneInvalid => 'Het nummer moet beginnen met 77, 78 of 79';

  @override
  String get pmContinue => 'Doorgaan';

  @override
  String get pmOrContinueWith => 'Of ga verder met';

  @override
  String get pmLegalPrefix => 'Door verder te gaan ga je akkoord met de ';

  @override
  String get pmLegalTerms => 'Gebruiksvoorwaarden';

  @override
  String get pmLegalAnd => ' en het ';

  @override
  String get pmLegalPrivacy => 'Privacybeleid';

  @override
  String get pmStaffSignIn => 'Inloggen scoretellers';

  @override
  String get pmBack => 'Terug';

  @override
  String get pmOtpKicker => 'Laatste stap';

  @override
  String get pmOtpTitle => 'Voer de verificatiecode in';

  @override
  String get pmOtpSentTo => 'We hebben een code van 6 cijfers gestuurd naar';

  @override
  String get pmOtpEdit => 'Wijzigen';

  @override
  String get pmOtpLabel => 'Verificatiecode';

  @override
  String get pmOtpNotReceived => 'Geen code ontvangen?';

  @override
  String get pmOtpResend => 'Opnieuw versturen';

  @override
  String get pmOtpConfirm => 'Bevestigen en inloggen';

  @override
  String get pmWelcomeTitle => 'Je identiteit is klaar';

  @override
  String get pmWelcomeSubtitle => 'Welkom bij Playmaker — de baan wacht op je';

  @override
  String get failureInvalidPhone =>
      'Voer een geldig Jordaans mobiel nummer in.';

  @override
  String get failureOtpExpired => 'De code is verlopen. Vraag een nieuwe aan.';

  @override
  String get failureOtpSessionInvalid =>
      'Deze verificatie is niet meer geldig. Vraag een nieuwe code aan.';

  @override
  String get failureOtpResendTooSoon =>
      'Wacht even voordat je een nieuwe code aanvraagt.';

  @override
  String get failureOtpResendLimit =>
      'Je hebt het maximum aantal keer opnieuw versturen bereikt. Probeer het later.';

  @override
  String get failureOtpTooManyAttempts =>
      'Te veel onjuiste pogingen. Vraag een nieuwe code aan.';

  @override
  String get failureOtpProviderUnavailable =>
      'De sms-dienst is tijdelijk niet beschikbaar. Probeer het zo opnieuw.';

  @override
  String get failureSocialTokenInvalid =>
      'We konden je account niet verifiëren. Probeer het opnieuw.';

  @override
  String get failureSocialUnavailable =>
      'Deze inlogoptie is nu niet beschikbaar.';

  @override
  String get fieldCountry => 'Land';

  @override
  String get partnerEnded => 'Partnerschap beëindigd';

  @override
  String get duo3dTitle => 'Duo-3D-identiteit';

  @override
  String get duo3dBody =>
      'Een 3D-scène van jou en je partner samen op de baan.';

  @override
  String get duo3dGenerate => 'Onze scène maken';

  @override
  String get duo3dRegenerate => 'Een nieuwe maken';

  @override
  String get duo3dProcessing =>
      'Jullie duoscène wordt gemaakt… dit kan een paar minuten duren.';

  @override
  String get duo3dFailed =>
      'De laatste poging is mislukt. Probeer het opnieuw.';

  @override
  String get duo3dNeedsPhotos =>
      'Jij en je partner hebben allebei een profielfoto nodig.';

  @override
  String get duo3dComingSoon => 'Duoscènes komen binnenkort.';

  @override
  String get duo3dPremium => 'Duoscènes horen bij Premium.';

  @override
  String get casualMatchName => 'Naam van de wedstrijd (optioneel)';

  @override
  String get casualMatchNameHint => 'bijv. Vrijdagavond-padel';

  @override
  String get casualEditMatch => 'Wedstrijd bewerken';

  @override
  String get casualEditHint =>
      'Spelers krijgen een melding als je de tijd of baan wijzigt.';

  @override
  String get casualInvitePlayer => 'Een speler uitnodigen';

  @override
  String get casualInviteSearchHint => 'Zoek op naam of speler-ID';

  @override
  String get casualInvite => 'Uitnodigen';

  @override
  String get casualInvitationSent => 'Uitnodiging verstuurd';

  @override
  String get casualCancelledNotFull =>
      'Deze wedstrijd is automatisch geannuleerd: er waren 2 uur voor de start niet genoeg spelers.';

  @override
  String get casualCancelledByCreator =>
      'De organisator heeft deze wedstrijd geannuleerd.';

  @override
  String get casualUpdated => 'Wedstrijd bijgewerkt';

  @override
  String get casualInvitedStatus => 'Uitgenodigd';

  @override
  String casualYouAreInvited(String name) {
    return '$name heeft je uitgenodigd voor deze wedstrijd';
  }

  @override
  String get casualInvitationAccepted => 'Je doet mee! Tot op de baan.';

  @override
  String get notificationSettingsTitle => 'Meldingsinstellingen';

  @override
  String get notificationSettingsHint =>
      'Kies welke meldingen je ontvangt. Aankondigingen van het platform worden altijd verstuurd.';

  @override
  String get myRegistrationsShort => 'Mijn inschrijvingen';

  @override
  String get myTrainingsShort => 'Mijn trainingen';

  @override
  String get registrationOrganizerNote => 'Opmerking van de organisator';

  @override
  String get registrationChangesHint =>
      'Pas je inschrijving aan (bijv. andere partner) en ze gaat terug ter beoordeling.';

  @override
  String get openInGoogleMaps => 'Openen in Google Maps';

  @override
  String get premiumPlanMonthly => 'Maandelijks';

  @override
  String get premiumPlanYearly => 'Jaarlijks';

  @override
  String premiumDaysLeft(int count) {
    return 'Nog $count dagen';
  }

  @override
  String get findPartner => 'Partner zoeken';

  @override
  String get findPartnerHint =>
      'Zoek op naam of speler-ID, open het profiel en tik op \"Vragen als vaste partner\".';

  @override
  String get characterTitle => '3D-personage';

  @override
  String get characterChange => 'Wijzigen';

  @override
  String get characterPick => 'Kies je gratis 3D-personage';

  @override
  String get characterPickHint =>
      'Gratis voor iedereen. Premium-leden kunnen ook hun eigen foto omzetten in een persoonlijk 3D-personage.';

  @override
  String get characterEmpty => 'Nog geen personages';

  @override
  String get characterSaved => 'Je personage is opgeslagen.';

  @override
  String get characterCurrent => 'Jouw personage';

  @override
  String get characterUse => 'Dit personage gebruiken';

  @override
  String get characterRemove => 'Personage verwijderen';

  @override
  String get levelsTitle => 'Niveaus';

  @override
  String levelsYourRating(int rating) {
    return 'Jouw Skill Rating: $rating';
  }

  @override
  String levelsToNext(int points, String level) {
    return 'Nog $points punten tot $level';
  }

  @override
  String get levelsTop => 'Je zit op het hoogste niveau!';

  @override
  String get levelsHint =>
      'Je niveau volgt je Skill Rating, die stijgt en daalt met elke geverifieerde officiële wedstrijd. Niveaus lopen van D- (start) tot A+ (top).';

  @override
  String levelsRange(int from, int to) {
    return '$from – $to punten';
  }

  @override
  String levelsFrom(int from) {
    return '$from+ punten';
  }

  @override
  String get resultsLockedTitle => 'Resultaten voor volgers';

  @override
  String get resultsLockedBody =>
      'Volg deze speler om de resultaten en statistieken te zien.';

  @override
  String get giftFromPlaymaker => 'Van Playmaker · juiste voorspelling';

  @override
  String get sponsoredBy => 'Gesponsord door';

  @override
  String get avatarTitle => 'Mijn personage';

  @override
  String get avatarCreate => 'Maak je personage';

  @override
  String get avatarCreateHint =>
      'Huid, haar, kleding en je padelracket — gratis.';

  @override
  String get avatarEdit => 'Bewerken';

  @override
  String get avatarSave => 'Personage opslaan';

  @override
  String get avatarSaved => 'Je personage is opgeslagen.';

  @override
  String get avatarColors => 'Kleuren';

  @override
  String get avatarNone => 'Geen';

  @override
  String get avatarPremiumToSave =>
      'Premium-items gekozen — word Premium om op te slaan';

  @override
  String get avatarLoadFailed => 'Het 3D-personage kon niet laden.';

  @override
  String get avatarDebug => 'Debugpaneel';

  @override
  String get avatarDebugCopied => 'Gegevens gekopieerd.';
}
