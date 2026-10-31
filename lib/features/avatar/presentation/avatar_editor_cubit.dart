import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/error/failure.dart';
import '../data/avatar_repository.dart';
import '../domain/avatar_entities.dart';

class AvatarEditorState extends Equatable {
  final AvatarCatalog? catalog;
  final AvatarChoice choice;

  /// What the stage draws for [choice] (server preview).
  final Map<String, dynamic>? spec;
  final bool loading;
  final bool saving;
  final bool saved;
  final Failure? loadFailure;
  final Failure? lastFailure;

  const AvatarEditorState({
    this.catalog,
    this.choice = const AvatarChoice(),
    this.spec,
    this.loading = true,
    this.saving = false,
    this.saved = false,
    this.loadFailure,
    this.lastFailure,
  });

  String? get baseKey => catalog?.baseSlot == null ? null : choice.items[catalog!.baseSlot!.key];

  /// Locked (premium) picks in the current choice: can be previewed, not saved.
  bool get hasLocked {
    final c = catalog;
    if (c == null) return false;
    for (final s in c.slots) {
      final key = choice.items[s.key];
      if (s.items.any((i) => i.key == key && i.locked)) return true;
    }
    for (final ch in c.channels) {
      final hex = choice.colors[ch.key];
      if (ch.colors.any((col) => col.hex == hex && col.locked)) return true;
    }
    return false;
  }

  AvatarEditorState copyWith({
    AvatarCatalog? catalog,
    AvatarChoice? choice,
    Map<String, dynamic>? spec,
    bool? loading,
    bool? saving,
    bool? saved,
    Failure? loadFailure,
    Failure? lastFailure,
    bool clearFailure = false,
  }) =>
      AvatarEditorState(
        catalog: catalog ?? this.catalog,
        choice: choice ?? this.choice,
        spec: spec ?? this.spec,
        loading: loading ?? this.loading,
        saving: saving ?? this.saving,
        saved: saved ?? this.saved,
        loadFailure: loadFailure ?? this.loadFailure,
        lastFailure: clearFailure ? null : (lastFailure ?? this.lastFailure),
      );

  @override
  List<Object?> get props => [catalog, choice, spec, loading, saving, saved, loadFailure, lastFailure];
}

/// Character editor: loads the catalog and the saved character, previews every change through
/// the server (same rules as saving) and saves. Picks that no longer fit the body are swapped.
class AvatarEditorCubit extends Cubit<AvatarEditorState> {
  final AvatarRepository repository;
  Timer? _debounce;
  int _previewSeq = 0;

  AvatarEditorCubit(this.repository) : super(const AvatarEditorState());

  Future<void> load() async {
    emit(const AvatarEditorState());
    final catalog = await repository.catalog();
    final mine = await repository.mine();
    if (isClosed) return;
    catalog.match(
      (f) => emit(state.copyWith(loading: false, loadFailure: f)),
      (c) {
        final saved = mine.fold((_) => null, (m) => m.saved);
        final choice = _complete(c, saved ?? const AvatarChoice());
        emit(AvatarEditorState(catalog: c, choice: choice, loading: false, spec: mine.fold((_) => null, (m) => saved == null ? null : m.spec)));
        _preview(immediate: true);
      },
    );
  }

  void pickItem(String slot, String? item) {
    final c = state.catalog;
    if (c == null) return;
    emit(state.copyWith(choice: _complete(c, state.choice.withItem(slot, item)), saved: false, clearFailure: true));
    _preview();
  }

  void pickColor(String channel, String hex) {
    emit(state.copyWith(choice: state.choice.withColor(channel, hex), saved: false, clearFailure: true));
    _preview();
  }

  Future<void> save() async {
    if (state.saving) return;
    emit(state.copyWith(saving: true, clearFailure: true));
    final result = await repository.save(state.choice);
    if (isClosed) return;
    result.match(
      (f) => emit(state.copyWith(saving: false, lastFailure: f)),
      (m) => emit(state.copyWith(saving: false, saved: true, spec: m.spec)),
    );
  }

  // A body first; required slots filled; picks that don't fit the body replaced; required colors set.
  AvatarChoice _complete(AvatarCatalog c, AvatarChoice choice) {
    final items = {...choice.items};
    final base = c.baseSlot;
    if (base != null && !(base.items.any((i) => i.key == items[base.key]))) {
      final first = base.items.where((i) => !i.locked).firstOrNull ?? base.items.firstOrNull;
      if (first != null) items[base.key] = first.key;
    }
    final baseKey = base == null ? null : items[base.key];
    for (final s in c.slots.where((s) => !s.isBase)) {
      final fitting = s.itemsFor(baseKey);
      final current = items[s.key];
      if (current != null && !fitting.any((i) => i.key == current)) items.remove(s.key);
      if (s.isRequired && items[s.key] == null) {
        final first = fitting.where((i) => !i.locked).firstOrNull ?? fitting.firstOrNull;
        if (first != null) items[s.key] = first.key;
      }
    }
    final colors = {...choice.colors};
    for (final ch in c.channels.where((ch) => ch.required)) {
      if (!ch.colors.any((col) => col.hex == colors[ch.key]) && ch.colors.isNotEmpty) {
        colors[ch.key] = (ch.colors.where((col) => !col.locked).firstOrNull ?? ch.colors.first).hex;
      }
    }
    return AvatarChoice(items: items, colors: colors);
  }

  void _preview({bool immediate = false}) {
    _debounce?.cancel();
    _debounce = Timer(immediate ? Duration.zero : const Duration(milliseconds: 120), () async {
      final seq = ++_previewSeq;
      final result = await repository.preview(state.choice);
      if (isClosed || seq != _previewSeq) return;
      result.match((f) => emit(state.copyWith(lastFailure: f)), (spec) => emit(state.copyWith(spec: spec)));
    });
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
