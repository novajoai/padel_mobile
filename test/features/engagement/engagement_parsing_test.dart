import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:padel/core/network/api_envelope.dart';
import 'package:padel/features/engagement/domain/engagement_entities.dart';
import 'package:padel/features/players/data/models/player_profile_mapper.dart';
import 'package:padel/features/players/data/models/player_stats_model.dart';
import 'package:padel/features/players/domain/entities/player_stats.dart';
import 'package:padel/features/premium/data/models/premium_models.dart';

/// Real responses produced by the Laravel API (test/fixtures/engagement),
/// parsed with the app's own code — catches shape mismatches early.
Response<dynamic> _fixture(String name) => Response(
      requestOptions: RequestOptions(path: name),
      data: jsonDecode(File('test/fixtures/engagement/$name.json').readAsStringSync()),
    );

void main() {
  test('predictions: open matches, mine (with meta) and leaderboard', () {
    final open = ApiEnvelope.paginated(_fixture('predictions'), PredictionMatch.fromJson);
    expect(open.items, hasLength(1));
    final p = open.items.first;
    expect(p.open, isTrue);
    expect(p.setsToWin, 2);
    expect(p.mine?.setsTeamOne, 2);
    expect(p.mine?.setsTeamTwo, 1);
    expect(p.crowd?.total, 1);
    expect(p.match.teamOne, isNotNull);

    final mine = ApiEnvelope.paginated(_fixture('mine'), PredictionMatch.fromJson);
    expect(mine.items.first.mine?.status, 'pending');
    expect(mine.extra?['points'], 0);

    final board = ApiEnvelope.paginated(_fixture('leaderboard'), PredictionLeader.fromJson);
    expect(board.items, isEmpty);
  });

  test('coins wallet and coin checkout payment', () {
    final wallet = CoinsWallet.fromJson(ApiEnvelope.map(_fixture('coins')));
    expect(wallet.symbol, 'B');
    expect(wallet.coinsPerJod, 10);
    expect(wallet.packages.first.coins, 50);
    expect(wallet.packages.first.price, 5);

    final payment = paymentFromJson(ApiEnvelope.map(_fixture('coins_checkout')));
    expect(payment.checkoutUrl, 'https://pay.test');
  });

  test('gift catalog, popularity, profile popularity and Winner/Loser stats', () {
    final catalog = GiftCatalog.fromJson(ApiEnvelope.map(_fixture('gifts')));
    expect(catalog.free.map((g) => g.key), containsAll(['ball', 'wristband', 'star']));
    expect(catalog.paid.first.price, isNotNull);
    expect(catalog.dailyClaimed, isTrue);

    final popularity = Popularity.fromJson(ApiEnvelope.map(_fixture('popularity')));
    expect(popularity.gems, 1);
    expect(popularity.rankKey, 'rising');
    expect(popularity.nextAt, 50);
    expect(popularity.latest.first.sender, isNotNull);

    final profile = PlayerProfileMapper.fromJson(ApiEnvelope.map(_fixture('profile')));
    expect(profile.popularity?.gems, 1);

    final stats = playerStatsFromJson((ApiEnvelope.map(_fixture('stats'))['summary'] as Map).cast<String, dynamic>());
    expect(stats.winners, isNull); // no recorded points yet → "—"
    expect(stats.errors, isNull);
  });
  test('premium deep dive analytics parse from the real stats response', () {
    final bundle = playerStatsBundleFromJson(ApiEnvelope.map(_fixture('stats_premium')));
    final deep = bundle.advanced?.deepDive;
    expect(deep, isNotNull);
    expect(deep!.overall, const WinRecord(matches: 2, wins: 1));
    expect(deep.form, hasLength(2));
    expect(deep.aces, 1);
    expect(deep.byPartner.single.record.matches, 2);
    expect(deep.byOpponent, hasLength(2));
    expect(deep.pointsShare, 0.5);
    expect(deep.perMatch, hasLength(2));
    expect(deep.byRound.keys, containsAll(['final', 'semi_final']));
    expect(bundle.summary.winners, 1);
  });
}
