import 'dart:convert';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:padel/core/error/failure.dart';
import 'package:padel/features/avatar/data/avatar_repository.dart';
import 'package:padel/features/avatar/domain/avatar_entities.dart';
import 'package:padel/features/avatar/presentation/avatar_editor_cubit.dart';
import 'package:padel/features/avatar/presentation/avatar_profile_section.dart';

/// Fixtures are real responses from the Laravel API (seeded prototype catalog).
Map<String, dynamic> _fixture(String name) =>
    (jsonDecode(File('test/fixtures/avatar/$name').readAsStringSync()) as Map<String, dynamic>)['data'] as Map<String, dynamic>;

class _Repo extends Mock implements AvatarRepository {}

void main() {
  setUpAll(() => registerFallbackValue(const AvatarChoice()));

  group('parsing', () {
    test('catalog: slots, items per body, locked premium item, colors', () {
      final c = AvatarCatalog.fromJson(_fixture('catalog.json'));
      expect(c.stageUrl, endsWith('/avatar/stage'));
      expect(c.slots.map((s) => s.key), ['body', 'hair', 'facial_hair', 'outfit', 'racket']);
      expect(c.baseSlot!.key, 'body');
      final outfits = c.slots.firstWhere((s) => s.key == 'outfit');
      expect(outfits.itemsFor('base_female').map((i) => i.key), ['outfit_female_peasant', 'outfit_female_ranger']);
      final diamond = c.slots.firstWhere((s) => s.key == 'racket').items.firstWhere((i) => i.key == 'racket_diamond');
      expect(diamond.locked, isTrue);
      expect(c.channels.firstWhere((ch) => ch.key == 'skin').colors, hasLength(6));
    });

    test('me/avatar: saved choice + the spec the stage draws', () {
      final m = MyAvatar.fromJson(_fixture('me_avatar.json'));
      expect(m.saved!.items['body'], 'base_female');
      expect(m.saved!.colors['skin'], '#c68642');
      expect(m.spec!['base']['key'], 'base_female');
      expect((m.spec!['items'] as List).map((i) => i['slot']), containsAll(['hair', 'outfit', 'racket']));
    });

    test('stage URL is derived from the API base', () {
      expect(AvatarProfileSection.stageUrlFrom('https://playmakerpadel.com/api/v1/'), 'https://playmakerpadel.com/avatar/stage');
      expect(AvatarProfileSection.stageUrlFrom('http://10.0.2.2:8000/api/v1/'), 'http://10.0.2.2:8000/avatar/stage');
    });
  });

  group('editor', () {
    late _Repo repo;
    final catalog = AvatarCatalog.fromJson(_fixture('catalog.json'));
    final spec = <String, dynamic>{'base': {'key': 'base_male'}};

    setUp(() {
      repo = _Repo();
      when(() => repo.catalog()).thenAnswer((_) async => Right(catalog));
      when(() => repo.mine()).thenAnswer((_) async => const Right(MyAvatar()));
      when(() => repo.preview(any())).thenAnswer((_) async => Right(spec));
    });

    blocTest<AvatarEditorCubit, AvatarEditorState>(
      'a new player starts with a complete free character (body, required parts, required colors)',
      build: () => AvatarEditorCubit(repo),
      act: (c) => c.load(),
      wait: const Duration(milliseconds: 50),
      verify: (c) {
        final choice = c.state.choice;
        expect(choice.items['body'], 'base_male');
        expect(choice.items['outfit'], 'outfit_male_peasant');
        expect(choice.items['racket'], 'racket_round');
        expect(choice.items.containsKey('facial_hair'), isFalse); // optional
        expect(choice.colors.keys, containsAll(['skin', 'hair']));
        expect(c.state.spec, spec);
      },
    );

    blocTest<AvatarEditorCubit, AvatarEditorState>(
      'switching body swaps parts that no longer fit (outfit, beard)',
      build: () => AvatarEditorCubit(repo),
      act: (c) async {
        await c.load();
        c.pickItem('facial_hair', 'hair_beard');
        c.pickItem('body', 'base_female');
      },
      wait: const Duration(milliseconds: 200),
      verify: (c) {
        expect(c.state.choice.items['outfit'], 'outfit_female_peasant');
        expect(c.state.choice.items.containsKey('facial_hair'), isFalse);
      },
    );

    blocTest<AvatarEditorCubit, AvatarEditorState>(
      'a premium item can be tried on but the choice is flagged locked',
      build: () => AvatarEditorCubit(repo),
      act: (c) async {
        await c.load();
        c.pickItem('racket', 'racket_diamond');
      },
      wait: const Duration(milliseconds: 200),
      verify: (c) {
        expect(c.state.choice.items['racket'], 'racket_diamond');
        expect(c.state.hasLocked, isTrue);
      },
    );

    blocTest<AvatarEditorCubit, AvatarEditorState>(
      'a server refusal is shown, nothing is marked saved',
      build: () {
        when(() => repo.save(any())).thenAnswer((_) async => const Left(BusinessFailure('This item is for Premium members.', 'AVATAR_PREMIUM_REQUIRED')));
        return AvatarEditorCubit(repo);
      },
      act: (c) async {
        await c.load();
        await c.save();
      },
      wait: const Duration(milliseconds: 50),
      verify: (c) {
        expect(c.state.saved, isFalse);
        expect(c.state.lastFailure?.code, 'AVATAR_PREMIUM_REQUIRED');
      },
    );
  });
}
