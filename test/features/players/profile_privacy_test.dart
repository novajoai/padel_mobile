import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:padel/features/engagement/domain/engagement_entities.dart';
import 'package:padel/features/players/data/models/player_profile_mapper.dart';
import 'package:padel/features/players/presentation/widgets/social_action_bar.dart';
import 'package:padel/l10n/gen/app_localizations.dart';

Map<String, dynamic> _profile({required bool visible, bool friend = false}) => {
      'player_id': 'PDL-1',
      'name': 'Sara',
      'level': 'B-',
      'skill_rating': visible ? 1250 : null,
      'season_ranking_points': visible ? 40 : null,
      'xp': visible ? 90 : null,
      'results_visible': visible,
      'rankings': null,
      'partners': null,
      'social': {
        'followers': visible ? 3 : null,
        'following': visible ? 5 : null,
        'respects': 2,
        'is_following': visible,
        'follows_you': friend,
        'is_friend': friend,
      },
    };

void main() {
  group('profile for a visitor', () {
    test('a non-follower gets no ratings or follower counts, and parsing still works', () {
      final p = PlayerProfileMapper.fromJson(_profile(visible: false));
      expect(p.resultsVisible, isFalse);
      expect(p.player.skillRating, 0);
      expect(p.social.followers, 0);
      expect(p.social.respects, 2);
      expect(p.social.isFriend, isFalse);
    });

    test('friends: following back someone who follows you makes you friends', () {
      final p = PlayerProfileMapper.fromJson(_profile(visible: true, friend: true));
      expect(p.social.isFriend, isTrue);
      final unfollowed = p.social.copyWith(isFollowing: false);
      expect(unfollowed.isFriend, isFalse);
      expect(unfollowed.copyWith(isFollowing: true).isFriend, isTrue);
    });
  });

  test('certified tournament parses with its open matches', () {
    final t = PredictionTournament.fromJson({'id': 7, 'name': 'Amman Open', 'start_date': '2026-11-20', 'competition_type': 'ranked', 'open_matches': 0});
    expect(t.openMatches, 0);
    expect(t.competitionType, 'ranked');
    expect(t.startDate, DateTime(2026, 11, 20));
  });

  group('social action bar', () {
    Future<void> pumpBar(WidgetTester tester, {required Locale locale, VoidCallback? onChallenge}) async {
      tester.view.physicalSize = const Size(320 * 3, 640 * 3); // a small phone
      tester.view.devicePixelRatio = 3;
      addTearDown(tester.view.reset);
      await tester.pumpWidget(MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SocialActionBar(
              isFollowing: false,
              onFollowToggle: () {},
              onRespect: () {},
              onChallenge: onChallenge,
              onRequestPartner: () {},
              onGift: () {},
            ),
          ),
        ),
      ));
      await tester.pumpAndSettle();
    }

    for (final locale in const [Locale('ar'), Locale('en'), Locale('de')]) {
      testWidgets('the Follow label fits on a small phone with every button (${locale.languageCode})', (tester) async {
        await pumpBar(tester, locale: locale, onChallenge: () {});
        expect(tester.takeException(), isNull); // no overflow
        final l10n = await AppLocalizations.delegate.load(locale);
        final label = find.text(l10n.actionFollow);
        expect(label, findsOneWidget);
        // Shown whole (scaled down if needed), never clipped.
        final text = tester.widget<Text>(label);
        expect(text.maxLines, 1);
        expect(find.ancestor(of: label, matching: find.byType(FittedBox)), findsOneWidget);
      });
    }

    testWidgets('no challenge button for a non-friend', (tester) async {
      await pumpBar(tester, locale: const Locale('en'));
      expect(find.byIcon(Icons.sports_tennis_rounded), findsNothing);
      await pumpBar(tester, locale: const Locale('en'), onChallenge: () {});
      expect(find.byIcon(Icons.sports_tennis_rounded), findsOneWidget);
    });
  });
}
