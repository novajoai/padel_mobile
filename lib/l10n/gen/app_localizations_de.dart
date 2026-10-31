// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Playmaker Padel';

  @override
  String get navHome => 'Start';

  @override
  String get navTournaments => 'Turniere';

  @override
  String get navRankings => 'Ranglisten';

  @override
  String get navCasual => 'Freundschaftsspiele';

  @override
  String get navProfile => 'Profil';

  @override
  String get actionRetry => 'Erneut versuchen';

  @override
  String get actionCancel => 'Abbrechen';

  @override
  String get actionSend => 'Senden';

  @override
  String get actionCreate => 'Erstellen';

  @override
  String get actionCreateOne => 'Eins erstellen';

  @override
  String get filterAll => 'Alle';

  @override
  String get premiumLabel => 'Premium';

  @override
  String get tieBreakLabel => 'TIEBREAK';

  @override
  String get ptsLabel => 'Pkt.';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get settingsLanguageArabic => 'Arabisch';

  @override
  String get settingsLanguageEnglish => 'Englisch';

  @override
  String get settingsAppearance => 'Darstellung';

  @override
  String get themeSystem => 'Systemstandard';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get settingsLogOut => 'Abmelden';

  @override
  String get deleteAccountTitle => 'Konto löschen';

  @override
  String get deleteAccountConfirm =>
      'Möchtest du dein Konto wirklich dauerhaft löschen? Das passiert sofort und kann nicht rückgängig gemacht werden: Alle deine Daten und Spiele werden gelöscht.';

  @override
  String get deleteAccountSuccess => 'Dein Konto wurde gelöscht.';

  @override
  String get deleteAccountLoading => 'Konto wird gelöscht...';

  @override
  String homeWelcomeBack(String name) {
    return 'Willkommen zurück, $name';
  }

  @override
  String get homeUnranked => 'Ohne Ranking';

  @override
  String homeLevelPoints(String level, int points) {
    return '$level • $points Saisonpunkte';
  }

  @override
  String get homeLiveNow => 'Jetzt live';

  @override
  String get homeSeeAll => 'Alle ansehen';

  @override
  String get homeNoLiveTournaments => 'Gerade laufen keine Turniere live.';

  @override
  String get fieldPassword => 'Passwort';

  @override
  String get errorPasswordRequired => 'Passwort ist erforderlich';

  @override
  String get actionLogIn => 'Anmelden';

  @override
  String get fieldFullName => 'Vollständiger Name';

  @override
  String get errorNameRequired => 'Name ist erforderlich';

  @override
  String get fieldPhoneOptional => 'Telefon (optional)';

  @override
  String get errorPasswordLength => 'Mindestens 8 Zeichen';

  @override
  String get fieldConfirmPassword => 'Passwort bestätigen';

  @override
  String get errorPasswordsMismatch => 'Passwörter stimmen nicht überein';

  @override
  String get notificationsTitle => 'Benachrichtigungen';

  @override
  String get emptyNotificationsTitle => 'Noch keine Benachrichtigungen';

  @override
  String get emptyNotificationsMessage =>
      'Du bist auf dem neuesten Stand — neue Benachrichtigungen erscheinen hier.';

  @override
  String get casualMatchesTitle => 'Freundschaftsspiele';

  @override
  String get casualFilterLookingForMatch => 'Suche ein Spiel';

  @override
  String get casualFilterLookingForPartner => 'Suche einen Partner';

  @override
  String get casualFilterNeed1 => '1 fehlt noch';

  @override
  String get casualFilterNeed2 => '2 fehlen noch';

  @override
  String get casualFilterNeed3 => '3 fehlen noch';

  @override
  String get emptyCasualTitle => 'Keine Freundschaftsspiele in der Nähe';

  @override
  String get emptyCasualMessage =>
      'Organisiere als Erster eins und lade Spieler ein.';

  @override
  String get joinRequestSent => 'Anfrage gesendet.';

  @override
  String get statusClosed => 'Geschlossen';

  @override
  String labelLevel(String level) {
    return 'Level $level';
  }

  @override
  String labelSide(String side) {
    return 'Seite: $side';
  }

  @override
  String byCreator(String name) {
    return 'Von $name';
  }

  @override
  String get actionRequested => 'Angefragt';

  @override
  String get actionJoin => 'Mitspielen';

  @override
  String get createMatchTitle => 'Freundschaftsspiel erstellen';

  @override
  String get fieldMatchType => 'Spielart';

  @override
  String get fieldDateTime => 'Datum und Uhrzeit';

  @override
  String get selectFutureDateTime =>
      'Wähle ein Datum und eine Uhrzeit in der Zukunft';

  @override
  String get errorPickFutureDateTime =>
      'Wähle ein Datum und eine Uhrzeit in der Zukunft';

  @override
  String get fieldRequiredLevelOptional => 'Benötigtes Level (optional)';

  @override
  String get fieldPreferredSideOptional => 'Bevorzugte Seite (optional)';

  @override
  String get fieldNotesOptional => 'Notizen (optional)';

  @override
  String get actionCreateMatch => 'Spiel erstellen';

  @override
  String get coachesTitle => 'Trainer';

  @override
  String get emptyCoachesTitle => 'Keine Trainer verfügbar';

  @override
  String get emptyCoachesMessage => 'Schau bald wieder vorbei.';

  @override
  String coachPricePerHourLong(String price) {
    return '$price / Stunde';
  }

  @override
  String coachPricePerHourShort(String price) {
    return '$price/Std.';
  }

  @override
  String get statusUnavailable => 'Nicht verfügbar';

  @override
  String get sectionAbout => 'Über mich';

  @override
  String get sectionSpecialties => 'Spezialgebiete';

  @override
  String get rankingsTitle => 'Ranglisten';

  @override
  String get emptyRankingsTitle => 'Noch keine Ranglisten';

  @override
  String get emptyRankingsMessage =>
      'Ranglisten erscheinen hier, sobald Spieler Punkte sammeln.';

  @override
  String get liveMatchTitle => 'Live-Spiel';

  @override
  String get vsLabel => 'vs';

  @override
  String get currentGame => 'Aktuelles Spiel';

  @override
  String gamesScore(int teamOne, int teamTwo) {
    return '$teamOne - $teamTwo Spiele';
  }

  @override
  String setsScore(int teamOne, int teamTwo) {
    return '$teamOne - $teamTwo Sätze';
  }

  @override
  String get matchCompleted => 'Spiel beendet';

  @override
  String teamWon(String team) {
    return '$team hat gewonnen';
  }

  @override
  String get rankingEligible => 'Ranglistenwertung';

  @override
  String get venueTba => 'Ort folgt';

  @override
  String get categoriesSection => 'Kategorien';

  @override
  String teamsCount(int active, int max) {
    return '$active/$max Teams';
  }

  @override
  String feeSuffix(String fee) {
    return ' • $fee Startgebühr';
  }

  @override
  String get statusFull => 'Voll';

  @override
  String get tournamentsTitle => 'Turniere';

  @override
  String get filterOpen => 'Offen';

  @override
  String get filterLive => 'Live';

  @override
  String get filterCompleted => 'Beendet';

  @override
  String get emptyTournamentsTitle => 'Hier keine Turniere';

  @override
  String get emptyTournamentsMessage =>
      'Probiere einen anderen Filter oder schau bald wieder vorbei.';

  @override
  String get statusDraft => 'Entwurf';

  @override
  String get statusRegistrationOpen => 'Anmeldung offen';

  @override
  String get statusRegistrationClosed => 'Anmeldung geschlossen';

  @override
  String get statusOngoing => 'Läuft';

  @override
  String get statusCompleted => 'Beendet';

  @override
  String get statusCancelled => 'Abgesagt';

  @override
  String get achievementsSection => 'Erfolge';

  @override
  String get statLevel => 'Level';

  @override
  String get statRating => 'Rating';

  @override
  String get statSeasonPts => 'Saisonpunkte';

  @override
  String get statXp => 'XP';

  @override
  String get actionFollowing => 'Folge ich';

  @override
  String get actionFollow => 'Folgen';

  @override
  String get tooltipRespect => 'Respekt';

  @override
  String get tooltipChallenge => 'Herausfordern';

  @override
  String challengeSentTo(String name) {
    return 'Herausforderung an $name gesendet';
  }

  @override
  String challengeTitle(String name) {
    return '$name herausfordern';
  }

  @override
  String get hintAddMessage => 'Nachricht hinzufügen (optional)';

  @override
  String get failureSessionExpired => 'Sitzung abgelaufen.';

  @override
  String get failureNoInternet => 'Keine Internetverbindung.';

  @override
  String get failureServerError => 'Bei uns ist etwas schiefgelaufen.';

  @override
  String get failureUnknown => 'Ein unerwarteter Fehler ist aufgetreten.';

  @override
  String get failureRequestCancelled => 'Anfrage abgebrochen.';

  @override
  String get failureSecureConnectionFailed =>
      'Sichere Verbindung fehlgeschlagen.';

  @override
  String get failureValidationFailed => 'Validierung fehlgeschlagen.';

  @override
  String get failureRequestFailed => 'Anfrage fehlgeschlagen.';

  @override
  String get failureInvalidCredentials =>
      'Falsche E-Mail oder falsches Passwort.';

  @override
  String get failurePremiumRequired => 'Dies ist eine Premium-Funktion.';

  @override
  String get failureCoachOnly => 'Nur Trainerkonten können das.';

  @override
  String get failurePlayerProfileRequired =>
      'Dafür ist ein Spielerprofil nötig.';

  @override
  String get failureStaffOnly => 'Nur das Turnierpersonal kann das.';

  @override
  String get failureForbidden => 'Du hast keinen Zugriff darauf.';

  @override
  String get failureAccountInactive => 'Dieses Konto ist inaktiv.';

  @override
  String get failureNotFound => 'Das haben wir nicht gefunden.';

  @override
  String get failureRateLimited =>
      'Zu viele Versuche. Versuche es gleich noch einmal.';

  @override
  String get failureProviderUnavailable => 'Noch nicht verfügbar.';

  @override
  String get actionClose => 'Schließen';

  @override
  String get actionConfirm => 'Bestätigen';

  @override
  String get actionSave => 'Speichern';

  @override
  String get actionEdit => 'Bearbeiten';

  @override
  String get actionDelete => 'Löschen';

  @override
  String get actionAccept => 'Annehmen';

  @override
  String get actionDecline => 'Ablehnen';

  @override
  String get actionRefresh => 'Aktualisieren';

  @override
  String get actionViewAll => 'Alle ansehen';

  @override
  String get actionLearnMore => 'Mehr erfahren';

  @override
  String get actionGoPremium => 'Premium holen';

  @override
  String get actionBack => 'Zurück';

  @override
  String get actionSearch => 'Suchen';

  @override
  String get actionApply => 'Anwenden';

  @override
  String get actionReset => 'Zurücksetzen';

  @override
  String get actionContinue => 'Weiter';

  @override
  String get actionLeave => 'Verlassen';

  @override
  String get actionOpen => 'Öffnen';

  @override
  String get stateEmptyTitle => 'Hier ist noch nichts';

  @override
  String get stateOfflineTitle => 'Du bist offline';

  @override
  String get stateOfflineMessage =>
      'Prüfe deine Verbindung und versuche es erneut.';

  @override
  String get stateOfflineBanner => 'Offline — wir zeigen, was wir haben';

  @override
  String get stateErrorTitle => 'Etwas ist schiefgelaufen';

  @override
  String get stateComingSoonTitle => 'Demnächst';

  @override
  String get stateComingSoonPayments =>
      'Online-Zahlungen kommen bald. Es wurde nichts berechnet.';

  @override
  String get stateComingSoon3d =>
      'Die 3D-Identität ist noch nicht verfügbar. Wir sagen dir Bescheid.';

  @override
  String get stateInsufficientDataTitle => 'Noch nicht genug Daten';

  @override
  String get statePremiumTitle => 'Mit Premium freischalten';

  @override
  String get statePremiumMessage =>
      'Premium bietet Analysen und Statistiken. Es beeinflusst nie dein Rating oder Ranking.';

  @override
  String progressOf(int current, int target) {
    return '$current/$target';
  }

  @override
  String get valueDash => '—';

  @override
  String get liveBadge => 'LIVE';

  @override
  String get liveRealtime => 'Live · Echtzeit';

  @override
  String liveUpdatingEvery(int seconds) {
    return 'Live · alle $seconds s aktualisiert';
  }

  @override
  String get correctedToast => 'Spielstand vom Punktezähler korrigiert';

  @override
  String get metricSkillRating => 'Skill Rating';

  @override
  String get metricSeasonPoints => 'Saisonpunkte';

  @override
  String get metricXp => 'XP';

  @override
  String metricPosition(int position) {
    return '#$position';
  }

  @override
  String get metricLevel => 'Level';

  @override
  String get metricUnranked => 'Ohne Ranking';

  @override
  String movementUp(int n) {
    return '$n hoch';
  }

  @override
  String movementDown(int n) {
    return '$n runter';
  }

  @override
  String get movementSame => 'Unverändert';

  @override
  String get competitionRanked => 'VERIFIZIERT · RANGLISTE';

  @override
  String get competitionCertified => 'OFFIZIELL';

  @override
  String get competitionSocial => 'SOZIAL';

  @override
  String get officialNote =>
      'Nur verifizierte Ergebnisse aus Ranglistenturnieren verändern dein Skill Rating und Saisonranking.';

  @override
  String get casualNote =>
      'Freundschaftsspiele beeinflussen nie dein Rating oder Ranking.';

  @override
  String get rarityCommon => 'Gewöhnlich';

  @override
  String get rarityRare => 'Selten';

  @override
  String get rarityEpic => 'Episch';

  @override
  String get rarityLegendary => 'Legendär';

  @override
  String xpReward(int xp) {
    return '+$xp XP';
  }

  @override
  String get newCoach => 'Neuer Trainer';

  @override
  String reviewsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Bewertungen',
      one: '1 Bewertung',
    );
    return '$_temp0';
  }

  @override
  String get timeNow => 'jetzt';

  @override
  String timeInMinutes(int n) {
    return 'in $n Min.';
  }

  @override
  String timeMinutesAgo(int n) {
    return 'vor $n Min.';
  }

  @override
  String timeInHours(int n) {
    return 'in $n Std.';
  }

  @override
  String timeHoursAgo(int n) {
    return 'vor $n Std.';
  }

  @override
  String timeInDays(int n) {
    return 'in $n T.';
  }

  @override
  String timeDaysAgo(int n) {
    return 'vor $n T.';
  }

  @override
  String get dayToday => 'Heute';

  @override
  String get dayYesterday => 'Gestern';

  @override
  String get navCompete => 'Wettkampf';

  @override
  String get navPlay => 'Spielen';

  @override
  String homeGreeting(String name) {
    return 'Hallo, $name';
  }

  @override
  String get homeLiveYouAreIn => 'Du bist auf dem Platz';

  @override
  String get homeNextMatch => 'Dein nächstes Spiel';

  @override
  String get homeLiveFollowing => 'Spieler, denen du folgst';

  @override
  String get homeMyTournaments => 'Meine Turniere';

  @override
  String get homeYourSeason => 'Deine Saison';

  @override
  String get homeStats => 'Deine Zahlen';

  @override
  String get homeLatestAchievement => 'Neuester Erfolg';

  @override
  String get homeRecommendedTournaments => 'Turniere für dich';

  @override
  String get homeCasualOpportunities => 'Spiele suchen Spieler';

  @override
  String get homeRecommendedPartner => 'Vorgeschlagener Partner';

  @override
  String get homeRecommendedCoach => 'Trainer für dich';

  @override
  String get homeUpcomingTraining => 'Anstehende Trainings';

  @override
  String homePendingRequests(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count offene Partneranfragen',
      one: '1 offene Partneranfrage',
    );
    return '$_temp0';
  }

  @override
  String get homeReviewRequests => 'Ansehen';

  @override
  String get homeAiDailyBrief => 'Tagesüberblick';

  @override
  String get homePremiumTeaserTitle => 'Dein Spiel, erklärt';

  @override
  String get homePremiumTeaserBody =>
      'Tagesüberblicke, erweiterte Statistiken und eine 3D-Athletenidentität — nur aus deinen echten Spielen.';

  @override
  String get homeInsufficientRanking =>
      'Spiele verifizierte Ranglistenspiele, um im Saisonranking zu erscheinen.';

  @override
  String get homeInsufficientGeneric =>
      'Das füllen wir, sobald genug echte Daten da sind.';

  @override
  String get homeEmptyTitle => 'Deine Saison beginnt hier';

  @override
  String get homeEmptyMessage =>
      'Nimm an einem Turnier oder Freundschaftsspiel teil, um deinen Feed zu füllen.';

  @override
  String get homeFindTournament => 'Turnier finden';

  @override
  String get matchVs => 'vs';

  @override
  String get matchTbd => 'Steht noch aus';

  @override
  String get matchBye => 'Freilos';

  @override
  String matchCourt(String name) {
    return 'Platz $name';
  }

  @override
  String matchSetLabel(int n) {
    return 'Satz $n';
  }

  @override
  String get matchWinner => 'Sieger';

  @override
  String get matchScheduled => 'Geplant';

  @override
  String matchStartsAt(String time) {
    return 'Beginnt $time';
  }

  @override
  String get matchWalkover => 'Walkover';

  @override
  String get matchPendingVerification => 'Wartet auf Verifizierung';

  @override
  String get matchVerified => 'Verifiziert';

  @override
  String get matchServing => 'Aufschlag';

  @override
  String get matchGames => 'Spiele';

  @override
  String get matchPoints => 'Punkte';

  @override
  String tournamentSpotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Noch $count Plätze',
      one: 'Noch 1 Platz',
      zero: 'Voll',
    );
    return '$_temp0';
  }

  @override
  String tournamentLiveCount(int count) {
    return '$count live';
  }

  @override
  String get tournamentFree => 'Kostenlos';

  @override
  String tournamentFee(String amount) {
    return 'Gebühr $amount';
  }

  @override
  String get reasonComplementarySide => 'Ergänzende Seite';

  @override
  String get reasonSimilarRating => 'Ähnliches Skill Rating';

  @override
  String get reasonPreviousPartnership => 'Schon zusammen gespielt';

  @override
  String get reasonActiveRecently => 'Kürzlich aktiv';

  @override
  String get reasonSameCountry => 'Gleiches Land';

  @override
  String coachPerHour(String price) {
    return '$price / Stunde';
  }

  @override
  String coachNextAvailable(String time) {
    return 'Nächster Termin: $time';
  }

  @override
  String coachYearsExperience(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Jahre',
      one: '1 Jahr',
    );
    return '$_temp0';
  }

  @override
  String casualSpotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Noch $count Plätze',
      one: 'Noch 1 Platz',
      zero: 'Voll',
    );
    return '$_temp0';
  }

  @override
  String get casualRequestPending => 'Anfrage ausstehend';

  @override
  String get casualYouAreIn => 'Du bist dabei';

  @override
  String get casualYourGame => 'Dein Spiel';

  @override
  String bookingWith(String name) {
    return 'mit $name';
  }

  @override
  String get achievementLocked => 'Gesperrt';

  @override
  String achievementUnlockedOn(String date) {
    return 'Freigeschaltet am $date';
  }

  @override
  String get statMatches => 'Spiele';

  @override
  String get statWins => 'Siege';

  @override
  String get statLosses => 'Niederlagen';

  @override
  String get statWinRate => 'Siegquote';

  @override
  String get statStreak => 'Serie';

  @override
  String get statTitles => 'Titel';

  @override
  String get statFinals => 'Finals';

  @override
  String get statTournaments => 'Turniere';

  @override
  String get statSets => 'Sätze gewonnen–verloren';

  @override
  String get statGames => 'Spiele gewonnen–verloren';

  @override
  String get statBestStreak => 'Längste Siegesserie';

  @override
  String get statWalkovers => 'Walkovers S–N';

  @override
  String streakWins(int n) {
    return '${n}S';
  }

  @override
  String streakLosses(int n) {
    return '${n}N';
  }

  @override
  String statLastPlayed(String date) {
    return 'Zuletzt gespielt $date';
  }

  @override
  String get partnerMain => 'Fester Partner';

  @override
  String get partnerBestHistorical => 'Bester Partner aller Zeiten';

  @override
  String get partnerMostPlayed => 'Häufigster Partner';

  @override
  String get partnerRecommended => 'Empfohlene Partner';

  @override
  String get partnerNotSet => 'Noch kein fester Partner';

  @override
  String get partnerNotSetHint =>
      'Sende eine Anfrage — sie wird offiziell, wenn sie angenommen wird.';

  @override
  String partnerUnlockHint(int count) {
    return 'Spiele $count verifizierte Spiele mit demselben Partner, um das freizuschalten.';
  }

  @override
  String get partnerNoHistory =>
      'Noch keine verifizierten Spiele mit einem Partner.';

  @override
  String partnerRecord(int won, int played) {
    return '$won S · $played gespielt';
  }

  @override
  String get partnerHistory => 'Partnerschaftsverlauf';

  @override
  String get partnerRequestAsMain => 'Als festen Partner anfragen';

  @override
  String get partnerRequestSent => 'Partneranfrage gesendet';

  @override
  String get partnerRemoveMain => 'Partnerschaft beenden';

  @override
  String get partnerRemoveMainConfirm =>
      'Er oder sie ist dann nicht mehr dein fester Partner. Du kannst später eine neue Anfrage senden.';

  @override
  String get partnerRequestsTitle => 'Partneranfragen';

  @override
  String get partnerRequestsIncoming => 'Erhalten';

  @override
  String get partnerRequestsOutgoing => 'Gesendet';

  @override
  String get partnerRequestsEmpty => 'Gerade keine Partneranfragen.';

  @override
  String partnerRequestFrom(String name) {
    return '$name möchte dein fester Partner sein';
  }

  @override
  String partnerRequestTo(String name) {
    return 'Warte auf $name';
  }

  @override
  String get partnerRequestAccepted => 'Ihr seid jetzt feste Partner';

  @override
  String get partnerRecommendedEmpty =>
      'Spiele ein paar verifizierte Spiele und wir schlagen dir passende Partner vor.';

  @override
  String partnerRecommendedBasis(String rating, int matches) {
    return 'Basierend auf deinem Rating $rating und $matches verifizierten Spielen';
  }

  @override
  String factRatingDiff(String value) {
    return 'Ratingunterschied $value';
  }

  @override
  String factTogether(int wins, int matches) {
    return '$wins/$matches Siege zusammen';
  }

  @override
  String factVerifiedMatches(int count) {
    return '$count verifizierte Spiele';
  }

  @override
  String factWinRate(String value) {
    return 'Siegquote $value';
  }

  @override
  String factLastPlayed(String when) {
    return 'Gespielt $when';
  }

  @override
  String get profileTabOverview => 'Übersicht';

  @override
  String get profileTabResults => 'Ergebnisse';

  @override
  String get profileTabAchievements => 'Erfolge';

  @override
  String get profileTabPartners => 'Partner';

  @override
  String get profileTabStats => 'Statistiken';

  @override
  String profileMemberSince(String date) {
    return 'Mitglied seit $date';
  }

  @override
  String get profileFollowers => 'Follower';

  @override
  String get profileFollowing => 'Folge ich';

  @override
  String get profileRespects => 'Respekt';

  @override
  String get profileEdit => 'Profil bearbeiten';

  @override
  String get profileContact => 'Kontakt (nur für dich sichtbar)';

  @override
  String get profileRecentResults => 'Letzte Ergebnisse';

  @override
  String get profileTournamentHistory => 'Turnierverlauf';

  @override
  String get profileNoResults => 'Noch keine verifizierten Ergebnisse';

  @override
  String get profileNoResultsHint =>
      'Offizielle Ergebnisse erscheinen hier, sobald das Personal sie verifiziert.';

  @override
  String get profile3dIdentity => '3D-Identität';

  @override
  String get profileRatingHistory => 'Ratingverlauf';

  @override
  String get profileSeasonHistory => 'Saisonpunkte';

  @override
  String get profileRespectSent => 'Respekt gesendet';

  @override
  String get resultWon => 'S';

  @override
  String get resultLost => 'N';

  @override
  String get resultRanked => 'Rangliste';

  @override
  String get resultUnranked => 'Keine Rangliste';

  @override
  String resultWithPartner(String name) {
    return 'mit $name';
  }

  @override
  String get placementChampion => 'Sieger';

  @override
  String get placementFinalist => 'Finalist';

  @override
  String get achievementsTitle => 'Erfolge';

  @override
  String achievementsProgress(int unlocked, int total) {
    return '$unlocked von $total freigeschaltet';
  }

  @override
  String get achievementsCompetitive => 'Wettkampf';

  @override
  String get achievementsSocial => 'Sozial';

  @override
  String get achievementsPremiumShelf => 'Premium-Abzeichen';

  @override
  String get achievementsPremiumNote =>
      'Premium-Abzeichen sind kosmetisch — sie beeinflussen nie Rating oder Ranking.';

  @override
  String get achievementsEmpty => 'Noch keine Erfolge';

  @override
  String get achievementAutomatic => 'Wird automatisch freigeschaltet';

  @override
  String get statsAdvanced => 'Erweiterte Statistiken';

  @override
  String get statsByStage => 'Nach Phase';

  @override
  String get statsGroupStage => 'Gruppenphase';

  @override
  String get statsKnockout => 'K.-o.-Runde';

  @override
  String get statsDecidingSets => 'Entscheidungssätze';

  @override
  String get statsByCompetition => 'Rangliste vs. keine Rangliste';

  @override
  String get statsPointAnalytics => 'Punktanalyse';

  @override
  String statsCoverage(String value) {
    return 'Abdeckung $value';
  }

  @override
  String get statsLimitedData => 'Begrenzte Daten';

  @override
  String get statsWinnersByShot => 'Winner nach Schlag';

  @override
  String get statsErrorsByType => 'Fehler nach Art';

  @override
  String get statsRatingTimeline => 'Ratingverlauf';

  @override
  String get statsAdvancedLocked =>
      'Erweiterte Statistiken sind für Premium-Mitglieder im eigenen Profil verfügbar.';

  @override
  String statsRecord(int wins, int matches) {
    return '$wins/$matches';
  }

  @override
  String get followersTitle => 'Follower';

  @override
  String get followingTitle => 'Folge ich';

  @override
  String get followersEmpty => 'Noch niemand';

  @override
  String get ratingHistoryTitle => 'Ratingverlauf';

  @override
  String get ratingReasonOfficial => 'Offizielles Ergebnis';

  @override
  String get ratingReasonCorrection => 'Rücknahme nach Korrektur';

  @override
  String get ratingReasonInactivity => 'Inaktivität';

  @override
  String get ratingBreakdown => 'So wurde gerechnet';

  @override
  String get ratingExpected => 'Erwartetes Ergebnis';

  @override
  String get ratingKFactor => 'Effektives K';

  @override
  String get ratingOwnStrength => 'Stärke deines Teams';

  @override
  String get ratingOpponentStrength => 'Stärke des Gegners';

  @override
  String get ratingUpset => 'Überraschung';

  @override
  String get ratingStage => 'Phase';

  @override
  String get ratingHistoryEmpty => 'Noch keine Ratingänderungen';

  @override
  String get seasonPointsTitle => 'Saisonpunkte';

  @override
  String get seasonBestStageNote =>
      'Jede Kategorie zählt einmal — die beste Phase, die du erreicht hast.';

  @override
  String get challengesTitle => 'Herausforderungen';

  @override
  String get challengesIncoming => 'Erhalten';

  @override
  String get challengesOutgoing => 'Gesendet';

  @override
  String get challengesEmpty => 'Keine Herausforderungen';

  @override
  String challengeFrom(String name) {
    return '$name hat dich herausgefordert';
  }

  @override
  String challengeTo(String name) {
    return 'Du hast $name herausgefordert';
  }

  @override
  String get searchPlayersTitle => 'Spieler finden';

  @override
  String get searchPlayersHint => 'Name oder Spieler-ID';

  @override
  String get searchPlayersEmpty => 'Keine Spieler gefunden';

  @override
  String get editProfileTitle => 'Profil bearbeiten';

  @override
  String get editProfileCompetitiveNote =>
      'Rating, Level, Punkte und XP stammen aus verifizierten Ergebnissen und können nicht bearbeitet werden.';

  @override
  String get editProfilePhoto => 'Foto ändern';

  @override
  String get editProfilePhotoHint =>
      'JPG, PNG oder WebP · bis 4 MB. Wird auch für deine 3D-Identität verwendet.';

  @override
  String get editProfileSaved => 'Profil gespeichert';

  @override
  String get fieldBio => 'Bio';

  @override
  String get fieldDateOfBirth => 'Geburtsdatum';

  @override
  String get fieldGender => 'Geschlecht';

  @override
  String get fieldSide => 'Spielseite';

  @override
  String get changePasswordTitle => 'Passwort ändern';

  @override
  String get fieldCurrentPassword => 'Aktuelles Passwort';

  @override
  String get fieldNewPassword => 'Neues Passwort';

  @override
  String get passwordChanged =>
      'Passwort geändert. Andere Sitzungen wurden abgemeldet.';

  @override
  String get premiumTitle => 'Premium';

  @override
  String get premiumHeadline => 'Smarter trainieren. Fair spielen.';

  @override
  String get premiumSubhead =>
      'Analysen und Statistiken nur aus deinen echten, verifizierten Spielen.';

  @override
  String premiumNeverAffects(String items) {
    return 'Premium beeinflusst nie dein $items.';
  }

  @override
  String get premiumNeverAffectsDefault =>
      'Premium beeinflusst nie dein Skill Rating, Saisonranking, deine Setzung oder Startberechtigung.';

  @override
  String get neverSkillRating => 'Skill Rating';

  @override
  String get neverSeasonRanking => 'Saisonranking';

  @override
  String get neverSeeding => 'Setzung';

  @override
  String get neverEligibility => 'Startberechtigung';

  @override
  String get neverOfficialResults => 'offizielle Ergebnisse';

  @override
  String get premiumFeatureAi => 'KI-Analysen';

  @override
  String get premiumFeatureAiBody =>
      'Tagesüberblicke, Leistungsberichte und Empfehlungen.';

  @override
  String get premiumFeatureAnalytics => 'Erweiterte Statistiken';

  @override
  String get premiumFeatureAnalyticsBody =>
      'Nach Phasen, Entscheidungssätze, Schläge und Fehler.';

  @override
  String get premiumFeature3d => '3D-Athletenidentität';

  @override
  String get premiumFeature3dBody =>
      'Ein drehbarer 3D-Avatar aus deinem Profilfoto.';

  @override
  String get premiumFeatureBadges => 'Premium-Abzeichen';

  @override
  String get premiumFeatureBadgesBody =>
      'Kosmetische Abzeichen, klar getrennt von Wettkampfmedaillen.';

  @override
  String get premiumPlansTitle => 'Wähle einen Tarif';

  @override
  String premiumPlanMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Monate',
      one: '1 Monat',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlansUnavailable =>
      'Tarife erscheinen hier, sobald die Preise veröffentlicht sind.';

  @override
  String get premiumCheckoutSoon => 'Online-Zahlung kommt bald';

  @override
  String get premiumSubscribe => 'Weiter zur Zahlung';

  @override
  String get premiumActive => 'Du bist Premium';

  @override
  String premiumActiveUntil(String date) {
    return 'Aktiv bis $date';
  }

  @override
  String get premiumOpenAi => 'KI-Analysen öffnen';

  @override
  String get premiumOpen3d => '3D-Identität öffnen';

  @override
  String get paymentsTitle => 'Zahlungen';

  @override
  String get paymentsEmpty => 'Noch keine Zahlungen';

  @override
  String get paymentStatusTitle => 'Zahlungsstatus';

  @override
  String get paymentWaiting => 'Warte auf Bestätigung des Zahlungsanbieters…';

  @override
  String get paymentOpenCheckout => 'Zahlungsseite öffnen';

  @override
  String get paymentSecureTitle => 'Sichere Zahlung';

  @override
  String get paymentSucceeded => 'Zahlung bestätigt';

  @override
  String get paymentFailedTitle => 'Zahlung nicht erfolgreich';

  @override
  String paymentReference(String ref) {
    return 'Referenz $ref';
  }

  @override
  String get paymentOnlyBackend =>
      'Wir markieren eine Zahlung erst als bezahlt, wenn der Server sie bestätigt.';

  @override
  String get aiTitle => 'KI-Analysen';

  @override
  String get aiGenerate => 'Erstellen';

  @override
  String get aiRefresh => 'Aktualisieren';

  @override
  String get aiWorking => 'Deine Spiele werden analysiert…';

  @override
  String get aiFailed => 'Diese Analyse konnte nicht erstellt werden.';

  @override
  String get aiNotGenerated => 'Noch nicht erstellt';

  @override
  String aiCoverage(String level) {
    return 'Datenabdeckung: $level';
  }

  @override
  String get aiCoverageNone => 'keine';

  @override
  String get aiCoverageLow => 'niedrig';

  @override
  String get aiCoverageMedium => 'mittel';

  @override
  String get aiCoverageHigh => 'hoch';

  @override
  String aiMatchesUsed(int count) {
    return '$count Spiele verwendet';
  }

  @override
  String get aiHighlights => 'Highlights';

  @override
  String get aiRecommendations => 'Empfehlungen';

  @override
  String get aiFacts => 'Die Fakten';

  @override
  String aiGeneratedAt(String when) {
    return 'Erstellt $when';
  }

  @override
  String get aiTypePlayerInsights => 'Spieleranalyse';

  @override
  String get aiTypePerformanceSummary => 'Leistungsübersicht';

  @override
  String get aiTypePartnerRecommendation => 'Partnerempfehlung';

  @override
  String get aiTypeTournamentRecommendation => 'Turnierempfehlung';

  @override
  String get aiTypeCoachRecommendation => 'Trainerempfehlung';

  @override
  String get aiTypeDevelopmentRecommendation => 'Entwicklungsplan';

  @override
  String get aiTypeDailyBrief => 'Tagesüberblick';

  @override
  String get threeDTitle => '3D-Identität';

  @override
  String get threeDGenerate => 'Meine 3D-Identität erstellen';

  @override
  String get threeDRegenerate => 'Neu erstellen';

  @override
  String get threeDProcessing =>
      'Deine 3D-Identität wird erstellt. Das kann ein paar Minuten dauern.';

  @override
  String get threeDNeedsPhoto =>
      'Lade zuerst ein Profilfoto hoch — daraus wird deine 3D-Identität erstellt.';

  @override
  String get threeDUploadPhoto => 'Foto hochladen';

  @override
  String get threeDFailed =>
      'Erstellung fehlgeschlagen. Du kannst es erneut versuchen.';

  @override
  String get threeDEmpty => 'Noch keine 3D-Identität';

  @override
  String get bookingStatus => 'Status';

  @override
  String get bookingPrice => 'Preis';

  @override
  String get bookingDuration => 'Dauer';

  @override
  String get bookingLocation => 'Ort';

  @override
  String get bookingTrainingType => 'Trainingsart';

  @override
  String get bookingNotes => 'Notizen';

  @override
  String get bookingFeedback => 'Feedback des Trainers';

  @override
  String bookingXpAwarded(int xp) {
    return '+$xp XP erhalten';
  }

  @override
  String get bookingCancel => 'Buchung stornieren';

  @override
  String get bookingCancelReason => 'Grund (optional)';

  @override
  String get bookingCancelled => 'Buchung storniert';

  @override
  String get bookingCancelWindow =>
      'Bestätigte Buchungen können bis 24 Stunden vor Beginn storniert werden.';

  @override
  String get bookingReview => 'Bewerte diese Einheit';

  @override
  String get bookingReviewComment => 'Kommentar (optional)';

  @override
  String get bookingReviewThanks => 'Danke für deine Bewertung';

  @override
  String get bookingYourReview => 'Deine Bewertung';

  @override
  String bookingRejectedReason(String reason) {
    return 'Abgelehnt: $reason';
  }

  @override
  String bookingCancelledBy(String who) {
    return 'Storniert von $who';
  }

  @override
  String get bookingByPlayer => 'Spieler';

  @override
  String get bookingByCoach => 'Trainer';

  @override
  String get bookingProgressRecorded => 'Fortschritt erfasst';

  @override
  String get bookingDetailTitle => 'Trainingseinheit';

  @override
  String get competeTitle => 'Wettkampf';

  @override
  String get competeTabTournaments => 'Turniere';

  @override
  String get competeTabLive => 'Jetzt live';

  @override
  String get competeSearchHint => 'Turniere suchen';

  @override
  String get filterRanked => 'Rangliste';

  @override
  String get filterCertified => 'Offiziell';

  @override
  String get filterSocial => 'Sozial';

  @override
  String get filterUpcoming => 'Demnächst';

  @override
  String get liveNowEmptyTitle => 'Gerade wird nicht gespielt';

  @override
  String get liveNowEmptyMessage =>
      'Live-Spiele erscheinen hier, sobald ein Punktezähler eins startet.';

  @override
  String get tournamentTabOverview => 'Übersicht';

  @override
  String get tournamentTabLive => 'Live';

  @override
  String get tournamentTabSchedule => 'Spielplan';

  @override
  String get tournamentTabResults => 'Ergebnisse';

  @override
  String get tournamentRules => 'Regeln';

  @override
  String get tournamentAbout => 'Über';

  @override
  String get tournamentOpenMap => 'In Karten öffnen';

  @override
  String tournamentRegistrationWindow(String from, String to) {
    return 'Anmeldung $from – $to';
  }

  @override
  String get tournamentChampion => 'Sieger';

  @override
  String get tournamentNoLive => 'Gerade keine Live-Spiele in diesem Turnier.';

  @override
  String get tournamentNoSchedule =>
      'Der Spielplan ist noch nicht veröffentlicht.';

  @override
  String get tournamentNoResults => 'Noch keine verifizierten Ergebnisse.';

  @override
  String get tournamentRankedNote =>
      'Verifizierte Ergebnisse hier verändern Skill Rating und Saisonpunkte.';

  @override
  String get tournamentUnrankedNote =>
      'Ergebnisse hier beeinflussen weder Skill Rating noch Saisonranking.';

  @override
  String get categoryRegister => 'Anmelden';

  @override
  String get categoryJoinWaitlist => 'Auf die Warteliste';

  @override
  String get categoryRegistered => 'Angemeldet';

  @override
  String get categoryView => 'Teams, Gruppen & Tableau';

  @override
  String categoryWaitlist(int count) {
    return '$count auf der Warteliste';
  }

  @override
  String get categoryTabTeams => 'Teams';

  @override
  String get categoryTabGroups => 'Gruppen';

  @override
  String get categoryTabBracket => 'Tableau';

  @override
  String get categoryNoTeams => 'Noch keine Teams';

  @override
  String get categoryNoGroups => 'Gruppen erscheinen nach der Auslosung.';

  @override
  String get categoryNoBracket =>
      'Das Tableau wird nach der Gruppenphase erstellt.';

  @override
  String get teamWithdrawn => 'Zurückgezogen';

  @override
  String get teamDisqualified => 'Disqualifiziert';

  @override
  String teamSeed(int seed) {
    return 'Setzplatz $seed';
  }

  @override
  String get standingsPlayed => 'Sp';

  @override
  String get standingsWins => 'S';

  @override
  String get standingsLosses => 'N';

  @override
  String get standingsSetDiff => 'SD';

  @override
  String get standingsGameDiff => 'GD';

  @override
  String get standingsPoints => 'Pkt';

  @override
  String get standingsTeam => 'Team';

  @override
  String get groupFinished => 'Beendet';

  @override
  String registerTitle2(String category) {
    return 'Anmeldung für $category';
  }

  @override
  String get registerPartner => 'Partner';

  @override
  String get registerPickPartner => 'Partner wählen';

  @override
  String get registerChangePartner => 'Partner ändern';

  @override
  String get registerCheckEligibility => 'Startberechtigung wird geprüft…';

  @override
  String get registerEligible => 'Du bist startberechtigt';

  @override
  String get registerYourIssues => 'Du';

  @override
  String get registerPartnerIssues => 'Dein Partner';

  @override
  String get registerClosed => 'Die Anmeldung ist geschlossen';

  @override
  String get registerFullWaitlist =>
      'Diese Kategorie ist voll — du kommst auf die Warteliste und rückst automatisch nach, wenn ein Platz frei wird.';

  @override
  String registerFeeNote(String amount) {
    return 'Startgebühr $amount. Die Zahlung wird vom System des Veranstalters bestätigt.';
  }

  @override
  String get registerSubmit => 'Anmeldung bestätigen';

  @override
  String get registerDone => 'Du bist angemeldet';

  @override
  String get registerWaitlisted => 'Du stehst auf der Warteliste';

  @override
  String get myRegistrationsTitle => 'Meine Anmeldungen';

  @override
  String get myRegistrationsEmpty =>
      'Du hast dich noch für kein Turnier angemeldet';

  @override
  String get registrationCancel => 'Anmeldung stornieren';

  @override
  String get statsForm => 'Form (letzte 10 Spiele)';

  @override
  String get statsLast10 => 'Letzte 10';

  @override
  String get statsOverall => 'Gesamt';

  @override
  String get statsByRound => 'Nach Runde';

  @override
  String get statsSetsAnalysis => 'Sätze';

  @override
  String get statsWonFirstSet => 'Nach gewonnenem ersten Satz';

  @override
  String get statsLostFirstSet => 'Nach verlorenem ersten Satz';

  @override
  String get statsTiebreaks => 'Tiebreak-Sätze';

  @override
  String get statsComebacks => 'Siege nach Rückstand';

  @override
  String get statsServeAndPoints => 'Aufschlag & Punkte';

  @override
  String get statsAces => 'Asse';

  @override
  String get statsDoubleFaults => 'Doppelfehler';

  @override
  String get statsPointsWon => 'Gewonnene Punkte';

  @override
  String get statsPointsShare => 'Anteil gewonnener Punkte';

  @override
  String get statsByPartner => 'Mit jedem Partner';

  @override
  String get statsByOpponent => 'Gegen Gegner';

  @override
  String get statsPerMatch => 'Spiel für Spiel';

  @override
  String get statsSeeAll => 'Alle Statistiken';

  @override
  String get predictionsTitle => 'Tipps';

  @override
  String get predictionsTabOpen => 'Spiele';

  @override
  String get predictionsTabMine => 'Meine Tipps';

  @override
  String get predictionsTabLeaderboard => 'Beste Tipper';

  @override
  String predictionsRules(int winner, int exact) {
    return 'Nur zertifizierte Turniere. Richtiger Sieger: $winner Punkte · exakte Sätze: +$exact.';
  }

  @override
  String get predictionsEmpty => 'Gerade sind keine Spiele zum Tippen offen.';

  @override
  String get predictionsMineEmpty => 'Du hast noch kein Spiel getippt.';

  @override
  String get predictionsLeaderboardEmpty => 'Noch keine Tipper.';

  @override
  String get predictionPointsLabel => 'Tipppunkte';

  @override
  String predictionPosition(int position) {
    return 'Platz #$position';
  }

  @override
  String predictionWonCount(int won, int settled) {
    return '$won/$settled richtig';
  }

  @override
  String predictionCrowdCount(int count) {
    return '$count Tipps';
  }

  @override
  String get predictionPredict => 'Tippen';

  @override
  String get predictionEdit => 'Ändern';

  @override
  String get predictionClosed => 'Geschlossen';

  @override
  String predictionStatusWon(int points) {
    return 'Richtig +$points';
  }

  @override
  String get predictionStatusLost => 'Falsch';

  @override
  String get predictionStatusVoid => 'Ungültig';

  @override
  String get predictionStatusPending => 'Wartet auf das Ergebnis';

  @override
  String get predictionSaved => 'Tipp gespeichert';

  @override
  String get predictionPick => 'Wer gewinnt?';

  @override
  String get predictionExactScore => 'Exakte Sätze (optional, Bonuspunkte)';

  @override
  String get predictionSave => 'Tipp speichern';

  @override
  String get coinsTitle => 'Meine Punkte';

  @override
  String get coinsBalance => 'Playmaker-Coins-Guthaben';

  @override
  String get coinsStore => 'Shop';

  @override
  String coinsRate(int coins) {
    return '$coins B = 1 JOD';
  }

  @override
  String get coinsBuy => 'Kaufen';

  @override
  String get coinsHistory => 'Verlauf';

  @override
  String get coinsHistoryEmpty => 'Noch keine Buchungen.';

  @override
  String get coinsSeparateNote =>
      'Playmaker Coins sind getrennt von den Beliebtheits-Edelsteinen.';

  @override
  String get popularityTitle => 'Beliebtheit';

  @override
  String popularityGems(int count) {
    return '$count Edelsteine';
  }

  @override
  String popularityGifts(int count) {
    return '$count Geschenke erhalten';
  }

  @override
  String popularityNextRank(int gems, String rank) {
    return 'Noch $gems Edelsteine bis $rank';
  }

  @override
  String get popularityTopRank => 'Höchster Rang erreicht';

  @override
  String get popularityReceivedTitle => 'Erhaltene Geschenke';

  @override
  String get popularityLatest => 'Neueste Geschenke';

  @override
  String get popularityEmpty =>
      'Noch keine Geschenke — schick als Erster eins!';

  @override
  String get popularityNote =>
      'Edelsteine zeigen nur Beliebtheit — sie werden nie ausgegeben oder umgewandelt.';

  @override
  String get giftsTitle => 'Geschenke & Beliebtheit';

  @override
  String get giftsSend => 'Geschenk senden';

  @override
  String giftsSendTitle(String name) {
    return 'Geschenk an $name senden';
  }

  @override
  String get giftsDailyClaim => 'Heutiges Geschenk abholen';

  @override
  String get giftsDailyClaimed => 'Heutiges Geschenk abgeholt';

  @override
  String get giftsDailyClaimedSnack =>
      'Das Geschenk von heute gehört dir — schick es einem Spieler!';

  @override
  String get giftsMyStock => 'Meine kostenlosen Geschenke';

  @override
  String get giftsStockEmpty =>
      'Noch keine kostenlosen Geschenke. Hol das tägliche Geschenk ab, spiele verifizierte Spiele oder nimm an Turnieren teil.';

  @override
  String get giftsSendToPlayers => 'Spieler zum Beschenken finden';

  @override
  String get giftsCatalog => 'Alle Geschenke';

  @override
  String get giftsFree => 'Kostenlos';

  @override
  String get giftsNoneLeft => 'Keine mehr';

  @override
  String get giftsPaidSection => 'Premium-Geschenke';

  @override
  String get giftsMinorCantBuy =>
      'Geschenke kaufen ist erst ab 18 Jahren möglich.';

  @override
  String get giftsSent => 'Geschenk gesendet!';

  @override
  String get statWinners => 'Winner';

  @override
  String get statWinnersHint => 'Punkte mit einem direkten Gewinnschlag';

  @override
  String get statErrors => 'Loser';

  @override
  String get statErrorsHint => 'Punkte durch eigene Fehler verloren';

  @override
  String get rankingsFilters => 'Filter';

  @override
  String get rankingsFilterGender => 'Jungen / Mädchen';

  @override
  String get rankingsFilterNationality => 'Nationalität';

  @override
  String get rankingsFilterAge => 'Altersklasse';

  @override
  String get rankingsFiltersApply => 'Anwenden';

  @override
  String get rankingsFiltersClear => 'Alle löschen';

  @override
  String get filterGenderMale => 'Jungen / Männer';

  @override
  String get filterGenderFemale => 'Mädchen / Frauen';

  @override
  String get filterJordanian => 'Jordanier';

  @override
  String get filterForeign => 'Nicht-Jordanier';

  @override
  String ageUnder(int age) {
    return 'U$age';
  }

  @override
  String get ageAdults => 'Erwachsene (18+)';

  @override
  String ageOver(int age) {
    return '$age+';
  }

  @override
  String tournamentEntryFee(String amount) {
    return 'Startgebühr $amount pro Team';
  }

  @override
  String get registerPaymentMethod => 'Zahlung';

  @override
  String get registerPayOnline => 'Jetzt online bezahlen';

  @override
  String get registerPayOnlineHint =>
      'Kartenzahlung über MEPS — deine Anmeldung ist sofort abgeschlossen';

  @override
  String get registerPayCash => 'Bar vor Ort';

  @override
  String get registerPayCashHint =>
      'Bezahle beim Veranstalter; er bestätigt deine Zahlung';

  @override
  String get registerSubmitAndPay => 'Anmelden und bezahlen';

  @override
  String registrationCashDue(String amount) {
    return 'Zahle $amount bar beim Veranstalter.';
  }

  @override
  String get registrationPayOnlineInstead => 'Doch online bezahlen';

  @override
  String get scoreDeuce => 'Deuce';

  @override
  String get scoreAdvantage => 'ADV';

  @override
  String get scoreGoldenPoint => 'Golden Point';

  @override
  String get registerTeamName => 'Teamname';

  @override
  String get registerTeamNameHint => 'Pflichtfeld — z. B. Smash Brothers';

  @override
  String get registrationRenameTeam => 'Team umbenennen';

  @override
  String get registrationTeamRenamed => 'Teamname aktualisiert';

  @override
  String registrationPartnerInvite(String name) {
    return '$name möchte dich als Partner für dieses Turnier. Bestätige, um es an den Veranstalter zu senden.';
  }

  @override
  String get registrationPartnerAccept => 'Annehmen';

  @override
  String get registrationPartnerDecline => 'Ablehnen';

  @override
  String get registrationPartnerDeclineConfirm =>
      'Ablehnen, in diesem Turnier als Duo zu spielen?';

  @override
  String get registrationPartnerAcceptedSnack =>
      'Bestätigt — der Veranstalter prüft jetzt die Anmeldung';

  @override
  String get registrationPartnerDeclinedSnack => 'Einladung abgelehnt';

  @override
  String get registrationAwaitingPartnerHint =>
      'Wartet auf die Bestätigung deines Partners, bevor der Veranstalter prüft.';

  @override
  String get registrationPartnerDeclinedHint =>
      'Dein Partner hat abgelehnt. Wähle einen anderen Partner oder storniere die Anmeldung.';

  @override
  String get registrationCancelConfirm => 'Dein Platz wird freigegeben.';

  @override
  String get registrationCancelled => 'Anmeldung storniert';

  @override
  String get registrationPay => 'Jetzt bezahlen';

  @override
  String get registrationPartnerChanged => 'Partner aktualisiert';

  @override
  String registrationPromoted(String date) {
    return 'Von der Warteliste nachgerückt am $date';
  }

  @override
  String get liveTitle => 'Spielzentrale';

  @override
  String get livePointFeed => 'Punkt für Punkt';

  @override
  String get livePointFeedEmpty => 'Noch keine Punkte erfasst.';

  @override
  String get liveTiebreak => 'Tiebreak';

  @override
  String get liveMatchOver => 'Spiel vorbei';

  @override
  String liveWinnerTitle(String team) {
    return '$team gewinnt!';
  }

  @override
  String get liveResultPending => 'Ergebnis wartet auf Verifizierung';

  @override
  String get livePartialDetail => 'Teilweise Details';

  @override
  String livePointBy(String team) {
    return 'Punkt für $team';
  }

  @override
  String get liveNotStarted => 'Nicht begonnen';

  @override
  String get liveCorrected => 'Korrigiert';

  @override
  String get rankingsTabSeason => 'Saison';

  @override
  String get rankingsTabSkill => 'Skill';

  @override
  String get rankingsTabXp => 'XP';

  @override
  String get rankingsYou => 'Du';

  @override
  String get rankingsSeasonPicker => 'Saison';

  @override
  String get rankingsSearchHint => 'Rangliste durchsuchen';

  @override
  String get rankingsXpNote =>
      'XP belohnt Aktivität. Es beeinflusst nie Ranking oder Setzung.';

  @override
  String get rankingsSkillNote =>
      'Das Skill Rating ändert sich nur durch verifizierte Ergebnisse aus Ranglistenturnieren.';

  @override
  String get rankingsSeasonNote =>
      'Saisonpunkte zählen deine beste Phase pro Kategorie.';

  @override
  String rankingsLevelPosition(int position, String level) {
    return '#$position in $level';
  }

  @override
  String get playTitle => 'Spielen';

  @override
  String get playTabCasual => 'Freundschaftsspiele';

  @override
  String get playTabCoaches => 'Trainer';

  @override
  String get casualMyMatches => 'Meine Spiele';

  @override
  String get casualCreated => 'Erstellt';

  @override
  String get casualJoined => 'Beigetreten';

  @override
  String get casualDetailTitle => 'Freundschaftsspiel';

  @override
  String get casualParticipants => 'Spieler';

  @override
  String get casualRequests => 'Teilnahmeanfragen';

  @override
  String get casualNoRequests => 'Keine offenen Anfragen';

  @override
  String get casualLeave => 'Spiel verlassen';

  @override
  String get casualCancelGame => 'Spiel absagen';

  @override
  String get casualCancelConfirm => 'Alle Teilnehmer werden benachrichtigt.';

  @override
  String get casualLeft => 'Du hast das Spiel verlassen';

  @override
  String get casualCancelled => 'Spiel abgesagt';

  @override
  String get fieldVenue => 'Ort (optional)';

  @override
  String get fieldCourt => 'Platz (optional)';

  @override
  String get venueAny => 'Beliebiger Ort';

  @override
  String get courtAny => 'Beliebiger Platz';

  @override
  String get venuesTitle => 'Orte';

  @override
  String venueCourts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Plätze',
      one: '1 Platz',
    );
    return '$_temp0';
  }

  @override
  String get venueUpcoming => 'Anstehende Turniere';

  @override
  String get venuesEmpty => 'Keine Orte gefunden';

  @override
  String get coachesFilterAll => 'Alle';

  @override
  String get coachesSortRating => 'Bestbewertet';

  @override
  String get coachesSortPrice => 'Preis';

  @override
  String get coachesSortName => 'Name';

  @override
  String get coachesSearchHint => 'Trainer oder Stadt suchen';

  @override
  String get coachLanguages => 'Sprachen';

  @override
  String get coachExperience => 'Erfahrung';

  @override
  String get coachTrainingTypes => 'Trainingsarten';

  @override
  String get coachAvailability => 'Verfügbarkeit';

  @override
  String get coachNoSlots => 'An diesem Tag keine freien Termine';

  @override
  String get coachReviews => 'Bewertungen';

  @override
  String get coachNoReviews =>
      'Noch keine Bewertungen — sei der Erste nach deiner Einheit.';

  @override
  String get coachBook => 'Einheit buchen';

  @override
  String coachBookSlot(String time) {
    return '$time buchen';
  }

  @override
  String get bookingSheetTitle => 'Buchung bestätigen';

  @override
  String get bookingPickSlot => 'Wähle zuerst ein Zeitfenster';

  @override
  String get bookingSummary => 'Übersicht';

  @override
  String get bookingTotal => 'Gesamt';

  @override
  String get bookingConfirm => 'Buchung anfragen';

  @override
  String get bookingRequested =>
      'Buchung angefragt — der Trainer bestätigt sie.';

  @override
  String get bookingSlotTaken =>
      'Dieser Termin wurde gerade vergeben. Hier ist die aktuelle Verfügbarkeit.';

  @override
  String get myBookingsTitle => 'Mein Training';

  @override
  String get myBookingsUpcoming => 'Anstehend';

  @override
  String get myBookingsPast => 'Vergangen';

  @override
  String get myBookingsEmpty => 'Keine Einheiten';

  @override
  String get trainingProgressTitle => 'Trainingsfortschritt';

  @override
  String get trainingProgressEmpty =>
      'Die Einschätzungen deines Trainers erscheinen hier nach den Einheiten.';

  @override
  String trainingLatest(int score) {
    return 'Zuletzt $score/10';
  }

  @override
  String trainingAssessments(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einschätzungen',
      one: '1 Einschätzung',
    );
    return '$_temp0';
  }

  @override
  String get coachPortalTitle => 'Trainerportal';

  @override
  String get coachPortalToday => 'Nächste Einheiten';

  @override
  String get coachPortalPending => 'Offene Anfragen';

  @override
  String get coachPortalAvailability => 'Verfügbarkeit';

  @override
  String get coachPortalBookings => 'Buchungen';

  @override
  String get coachPortalProfile => 'Trainerprofil';

  @override
  String get coachPortalSwitchToPlayer => 'Spieler-App';

  @override
  String get coachPortalOpen => 'Trainerportal';

  @override
  String get slotAdd => 'Termine hinzufügen';

  @override
  String get slotDate => 'Datum';

  @override
  String get slotStart => 'Beginn';

  @override
  String get slotEnd => 'Ende';

  @override
  String get slotRepeat => 'Wöchentlich wiederholen';

  @override
  String slotRepeatWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Noch $count Wochen',
      one: 'Noch 1 Woche',
      zero: 'Nicht wiederholen',
    );
    return '$_temp0';
  }

  @override
  String get slotActive => 'Buchbar';

  @override
  String get slotBooked => 'Gebucht';

  @override
  String get slotDeleteConfirm => 'Diesen Termin löschen?';

  @override
  String get slotsCreated => 'Termine hinzugefügt';

  @override
  String get slotsEmptyDay => 'An diesem Tag keine Termine';

  @override
  String get bookingConfirmAction => 'Bestätigen';

  @override
  String get bookingRejectAction => 'Ablehnen';

  @override
  String get bookingCompleteAction => 'Als abgeschlossen markieren';

  @override
  String get bookingFeedbackAction => 'Feedback senden';

  @override
  String get bookingProgressAction => 'Fortschritt erfassen';

  @override
  String get bookingReasonOptional => 'Grund (optional)';

  @override
  String get bookingFeedbackHint =>
      'Was lief gut, woran gearbeitet werden sollte';

  @override
  String get bookingUpdated => 'Buchung aktualisiert';

  @override
  String get progressSkill => 'Fähigkeit';

  @override
  String get progressScore => 'Bewertung (1–10)';

  @override
  String get progressAddSkill => 'Fähigkeit hinzufügen';

  @override
  String get progressSaved => 'Fortschritt gespeichert';

  @override
  String get coachFieldCity => 'Stadt';

  @override
  String get coachFieldPrice => 'Preis pro Stunde';

  @override
  String get coachFieldYears => 'Jahre Erfahrung';

  @override
  String get coachFieldSpecialties => 'Spezialgebiete';

  @override
  String get coachFieldLanguages => 'Sprachen (durch Kommas getrennt)';

  @override
  String get coachProfileSaved => 'Trainerprofil gespeichert';

  @override
  String get notificationsMarkAllRead => 'Alle als gelesen markieren';

  @override
  String get notificationsFilterUnread => 'Ungelesen';

  @override
  String get notificationsFilterAll => 'Alle';

  @override
  String get settingsNotifications => 'Benachrichtigungen';

  @override
  String get settingsPushEnabled => 'Push-Benachrichtigungen sind an';

  @override
  String get settingsPushDisabled => 'Push-Benachrichtigungen sind aus';

  @override
  String get settingsPushUnavailable =>
      'Push ist in dieser Version nicht eingerichtet';

  @override
  String get settingsPushEnable => 'Aktivieren';

  @override
  String get settingsAccount => 'Konto';

  @override
  String get settingsPremium => 'Premium';

  @override
  String get settingsPayments => 'Zahlungen';

  @override
  String get settingsMyTraining => 'Mein Training';

  @override
  String get settingsStaff => 'Punktezählung (Personal)';

  @override
  String settingsVersion(String version) {
    return 'Version $version';
  }

  @override
  String get settingsLogOutConfirm => 'Du musst dich danach erneut anmelden.';

  @override
  String get scorekeeperTitle => 'Punktezähler';

  @override
  String get scorekeeperLogin => 'Personal-Login';

  @override
  String get scorekeeperLoginField => 'Personal-Benutzername';

  @override
  String get scorekeeperMatches => 'Zugewiesene Spiele';

  @override
  String get scorekeeperNoMatches => 'Gerade keine Spiele zugewiesen.';

  @override
  String get scorekeeperPointTo => 'Punkt';

  @override
  String get scorekeeperUndo => 'Letzten Punkt rückgängig';

  @override
  String get scorekeeperEndMatch => 'Spiel beenden';

  @override
  String get scorekeeperEndMatchTitle => 'Spiel beenden — wer hat gewonnen?';

  @override
  String get scorekeeperEndMatchHelp =>
      'Das Spiel endet jetzt mit dem aktuellen Stand (Zeitlimit, Platz benötigt...). Mit Rückgängig kannst du es wieder öffnen.';

  @override
  String get scorekeeperEndReason => 'Grund (optional)';

  @override
  String get scorekeeperMatchEnded => 'Spiel beendet';

  @override
  String get scorekeeperReopen => 'Spiel wieder öffnen';

  @override
  String get scorekeeperAddDetail => 'Detail hinzufügen';

  @override
  String get scorekeeperDetailOptional =>
      'Optional — der Punkt ist bereits erfasst.';

  @override
  String get scorekeeperEndingType => 'Wie er endete';

  @override
  String get scorekeeperShot => 'Schlag';

  @override
  String get scorekeeperError => 'Fehler';

  @override
  String get scorekeeperServe => 'Aufschlag';

  @override
  String get scorekeeperPlayer => 'Spieler';

  @override
  String get scorekeeperSaved => 'Detail gespeichert';

  @override
  String get scorekeeperRecordPoint => 'Punkt erfassen';

  @override
  String get scorekeeperEditLastPoint => 'Letzten Punkt bearbeiten';

  @override
  String get scorekeeperReasonHelp =>
      'Wähle, wie der Punkt endete, und die nötigen Details.';

  @override
  String get scorekeeperPlayerWinning => 'Spieler (Team, das den Punkt gewann)';

  @override
  String get scorekeeperPlayerLosing => 'Spieler (Team, das den Punkt verlor)';

  @override
  String get scorekeeperLogout => 'Punktezählmodus verlassen';

  @override
  String get pmPhoneKicker => 'Willkommen in der Community';

  @override
  String get pmPhoneTitle => 'Ab auf den Platz';

  @override
  String get pmPhoneSubtitle =>
      'Melde dich mit deiner Telefonnummer an und baue deine sportliche Identität auf.';

  @override
  String get pmPhoneLabel => 'Telefonnummer';

  @override
  String get pmPhoneHint => 'Wir schicken dir einen Bestätigungscode per SMS';

  @override
  String get pmPhoneInvalid => 'Die Nummer muss mit 77, 78 oder 79 beginnen';

  @override
  String get pmContinue => 'Weiter';

  @override
  String get pmOrContinueWith => 'Oder weiter mit';

  @override
  String get pmLegalPrefix => 'Mit dem Fortfahren akzeptierst du die ';

  @override
  String get pmLegalTerms => 'Nutzungsbedingungen';

  @override
  String get pmLegalAnd => ' und die ';

  @override
  String get pmLegalPrivacy => 'Datenschutzerklärung';

  @override
  String get pmStaffSignIn => 'Login für Punktezähler';

  @override
  String get pmBack => 'Zurück';

  @override
  String get pmOtpKicker => 'Letzter Schritt';

  @override
  String get pmOtpTitle => 'Bestätigungscode eingeben';

  @override
  String get pmOtpSentTo => 'Wir haben einen 6-stelligen Code gesendet an';

  @override
  String get pmOtpEdit => 'Ändern';

  @override
  String get pmOtpLabel => 'Bestätigungscode';

  @override
  String get pmOtpNotReceived => 'Keinen Code erhalten?';

  @override
  String get pmOtpResend => 'Erneut senden';

  @override
  String get pmOtpConfirm => 'Bestätigen und anmelden';

  @override
  String get pmWelcomeTitle => 'Deine Identität ist bereit';

  @override
  String get pmWelcomeSubtitle => 'Willkommen bei Playmaker — der Platz wartet';

  @override
  String get failureInvalidPhone =>
      'Gib eine gültige jordanische Mobilnummer ein.';

  @override
  String get failureOtpExpired =>
      'Der Code ist abgelaufen. Fordere einen neuen an.';

  @override
  String get failureOtpSessionInvalid =>
      'Diese Bestätigung ist nicht mehr gültig. Fordere einen neuen Code an.';

  @override
  String get failureOtpResendTooSoon =>
      'Bitte warte kurz, bevor du einen neuen Code anforderst.';

  @override
  String get failureOtpResendLimit =>
      'Du hast das Limit für erneutes Senden erreicht. Versuche es später.';

  @override
  String get failureOtpTooManyAttempts =>
      'Zu viele falsche Versuche. Fordere einen neuen Code an.';

  @override
  String get failureOtpProviderUnavailable =>
      'Der SMS-Dienst ist vorübergehend nicht verfügbar. Versuche es gleich noch einmal.';

  @override
  String get failureSocialTokenInvalid =>
      'Wir konnten dein Konto nicht bestätigen. Bitte versuche es erneut.';

  @override
  String get failureSocialUnavailable =>
      'Diese Anmeldeoption ist gerade nicht verfügbar.';

  @override
  String get fieldCountry => 'Land';

  @override
  String get partnerEnded => 'Partnerschaft beendet';

  @override
  String get duo3dTitle => 'Duo-3D-Identität';

  @override
  String get duo3dBody =>
      'Eine 3D-Szene von dir und deinem Partner zusammen auf dem Platz.';

  @override
  String get duo3dGenerate => 'Unsere Szene erstellen';

  @override
  String get duo3dRegenerate => 'Neue erstellen';

  @override
  String get duo3dProcessing =>
      'Eure Duo-Szene wird erstellt … das kann ein paar Minuten dauern.';

  @override
  String get duo3dFailed =>
      'Der letzte Versuch ist fehlgeschlagen. Versuche es erneut.';

  @override
  String get duo3dNeedsPhotos =>
      'Du und dein Partner braucht beide ein Profilfoto.';

  @override
  String get duo3dComingSoon => 'Duo-Szenen kommen bald.';

  @override
  String get duo3dPremium => 'Duo-Szenen sind Teil von Premium.';

  @override
  String get casualMatchName => 'Name des Spiels (optional)';

  @override
  String get casualMatchNameHint => 'z. B. Padel am Freitagabend';

  @override
  String get casualEditMatch => 'Spiel bearbeiten';

  @override
  String get casualEditHint =>
      'Spieler werden benachrichtigt, wenn du Uhrzeit oder Platz änderst.';

  @override
  String get casualInvitePlayer => 'Spieler einladen';

  @override
  String get casualInviteSearchHint => 'Nach Name oder Spieler-ID suchen';

  @override
  String get casualInvite => 'Einladen';

  @override
  String get casualInvitationSent => 'Einladung gesendet';

  @override
  String get casualCancelledNotFull =>
      'Dieses Spiel wurde automatisch abgesagt: 2 Stunden vor Beginn waren nicht genug Spieler dabei.';

  @override
  String get casualCancelledByCreator =>
      'Der Veranstalter hat dieses Spiel abgesagt.';

  @override
  String get casualUpdated => 'Spiel aktualisiert';

  @override
  String get casualInvitedStatus => 'Eingeladen';

  @override
  String casualYouAreInvited(String name) {
    return '$name hat dich zu diesem Spiel eingeladen';
  }

  @override
  String get casualInvitationAccepted =>
      'Du bist dabei! Wir sehen uns auf dem Platz.';

  @override
  String get notificationSettingsTitle => 'Benachrichtigungseinstellungen';

  @override
  String get notificationSettingsHint =>
      'Wähle, welche Benachrichtigungen du erhältst. Ankündigungen der Plattform werden immer zugestellt.';

  @override
  String get myRegistrationsShort => 'Meine Anmeldungen';

  @override
  String get myTrainingsShort => 'Mein Training';

  @override
  String get registrationOrganizerNote => 'Hinweis des Veranstalters';

  @override
  String get registrationChangesHint =>
      'Aktualisiere deine Anmeldung (z. B. Partner ändern), dann wird sie erneut geprüft.';

  @override
  String get openInGoogleMaps => 'In Google Maps öffnen';

  @override
  String get premiumPlanMonthly => 'Monatlich';

  @override
  String get premiumPlanYearly => 'Jährlich';

  @override
  String premiumDaysLeft(int count) {
    return 'Noch $count Tage';
  }

  @override
  String get findPartner => 'Partner finden';

  @override
  String get findPartnerHint =>
      'Suche nach Name oder Spieler-ID, öffne das Profil und tippe auf „Als festen Partner anfragen\".';

  @override
  String get characterTitle => '3D-Charakter';

  @override
  String get characterChange => 'Ändern';

  @override
  String get characterPick => 'Wähle deinen kostenlosen 3D-Charakter';

  @override
  String get characterPickHint =>
      'Kostenlos für alle. Premium-Mitglieder können auch ihr eigenes Foto in einen persönlichen 3D-Charakter verwandeln.';

  @override
  String get characterEmpty => 'Noch keine Charaktere';

  @override
  String get characterSaved => 'Dein Charakter wurde gespeichert.';

  @override
  String get characterCurrent => 'Dein Charakter';

  @override
  String get characterUse => 'Diesen Charakter verwenden';

  @override
  String get characterRemove => 'Charakter entfernen';

  @override
  String get levelsTitle => 'Level';

  @override
  String levelsYourRating(int rating) {
    return 'Dein Skill Rating: $rating';
  }

  @override
  String levelsToNext(int points, String level) {
    return 'Noch $points Punkte bis $level';
  }

  @override
  String get levelsTop => 'Du bist auf dem höchsten Level!';

  @override
  String get levelsHint =>
      'Dein Level folgt deinem Skill Rating, das mit jedem verifizierten offiziellen Spiel steigt oder fällt. Die Level gehen von D- (Start) bis A+ (Spitze).';

  @override
  String levelsRange(int from, int to) {
    return '$from – $to Punkte';
  }

  @override
  String levelsFrom(int from) {
    return '$from+ Punkte';
  }

  @override
  String get resultsLockedTitle => 'Ergebnisse für Follower';

  @override
  String get resultsLockedBody =>
      'Folge diesem Spieler, um seine Ergebnisse und Statistiken zu sehen.';

  @override
  String get giftFromPlaymaker => 'Von Playmaker · richtige Vorhersage';

  @override
  String get sponsoredBy => 'Gesponsert von';

  @override
  String get avatarTitle => 'Mein Charakter';

  @override
  String get avatarCreate => 'Erstelle deinen Charakter';

  @override
  String get avatarCreateHint =>
      'Haut, Haare, Outfit und dein Padelschläger — kostenlos.';

  @override
  String get avatarEdit => 'Bearbeiten';

  @override
  String get avatarSave => 'Charakter speichern';

  @override
  String get avatarSaved => 'Dein Charakter wurde gespeichert.';

  @override
  String get avatarColors => 'Farben';

  @override
  String get avatarNone => 'Keine';

  @override
  String get avatarPremiumToSave =>
      'Premium-Artikel gewählt — werde Premium zum Speichern';

  @override
  String get avatarLoadFailed =>
      'Der 3D-Charakter konnte nicht geladen werden.';

  @override
  String get avatarDebug => 'Debug-Panel';

  @override
  String get avatarDebugCopied => 'Daten kopiert.';
}
