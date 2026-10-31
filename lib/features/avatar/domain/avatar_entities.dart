import 'package:equatable/equatable.dart';

import '../../../core/utils/json_utils.dart';

/// Modular character (`GET avatar/catalog`): slots with their items, color channels, the stage URL.
/// Everything comes from the server, so new items and new slots need no app update.
class AvatarCatalog extends Equatable {
  final String stageUrl;
  final bool isPremium;
  final List<AvatarSlotOption> slots;
  final List<AvatarChannel> channels;

  const AvatarCatalog({required this.stageUrl, this.isPremium = false, this.slots = const [], this.channels = const []});

  factory AvatarCatalog.fromJson(Map<String, dynamic> j) => AvatarCatalog(
        stageUrl: Json.string(j['stage_url']) ?? '',
        isPremium: Json.boolean(j['is_premium']),
        slots: Json.listOfMaps(j['slots']).map(AvatarSlotOption.fromJson).toList(),
        channels: Json.listOfMaps(j['channels']).map(AvatarChannel.fromJson).toList(),
      );

  AvatarSlotOption? get baseSlot => slots.where((s) => s.isBase).firstOrNull;

  @override
  List<Object?> get props => [stageUrl, isPremium, slots, channels];
}

class AvatarSlotOption extends Equatable {
  final String key;
  final String name;

  /// base | skinned | attached
  final String kind;
  final bool isRequired;
  final List<AvatarItemOption> items;

  const AvatarSlotOption({required this.key, required this.name, required this.kind, this.isRequired = false, this.items = const []});

  factory AvatarSlotOption.fromJson(Map<String, dynamic> j) => AvatarSlotOption(
        key: Json.string(j['key']) ?? '',
        name: Json.string(j['name']) ?? '',
        kind: Json.string(j['kind']) ?? 'skinned',
        isRequired: Json.boolean(j['is_required']),
        items: Json.listOfMaps(j['items']).map(AvatarItemOption.fromJson).toList(),
      );

  bool get isBase => kind == 'base';

  /// Items that fit the chosen body.
  List<AvatarItemOption> itemsFor(String? baseKey) => items.where((i) => i.fitsBase(baseKey)).toList();

  @override
  List<Object?> get props => [key, name, kind, isRequired, items];
}

class AvatarItemOption extends Equatable {
  final String key;
  final String name;
  final String? thumbnailUrl;
  final List<String>? compatibleBases;
  final bool isPremium;

  /// Premium item and the player isn't Premium: can be tried on, not saved.
  final bool locked;

  const AvatarItemOption({required this.key, required this.name, this.thumbnailUrl, this.compatibleBases, this.isPremium = false, this.locked = false});

  factory AvatarItemOption.fromJson(Map<String, dynamic> j) => AvatarItemOption(
        key: Json.string(j['key']) ?? '',
        name: Json.string(j['name']) ?? '',
        thumbnailUrl: Json.string(j['thumbnail_url']),
        compatibleBases: j['compatible_bases'] is List ? Json.strings(j['compatible_bases']) : null,
        isPremium: Json.boolean(j['is_premium']),
        locked: Json.boolean(j['locked']),
      );

  bool fitsBase(String? baseKey) => compatibleBases == null || compatibleBases!.isEmpty || (baseKey != null && compatibleBases!.contains(baseKey));

  @override
  List<Object?> get props => [key, name, thumbnailUrl, compatibleBases, isPremium, locked];
}

class AvatarChannel extends Equatable {
  final String key;
  final String name;
  final bool required;
  final List<AvatarColorOption> colors;

  const AvatarChannel({required this.key, required this.name, this.required = false, this.colors = const []});

  factory AvatarChannel.fromJson(Map<String, dynamic> j) => AvatarChannel(
        key: Json.string(j['key']) ?? '',
        name: Json.string(j['name']) ?? '',
        required: Json.boolean(j['required']),
        colors: Json.listOfMaps(j['colors']).map(AvatarColorOption.fromJson).toList(),
      );

  @override
  List<Object?> get props => [key, name, required, colors];
}

class AvatarColorOption extends Equatable {
  final String hex;
  final String? name;
  final bool isPremium;
  final bool locked;

  const AvatarColorOption({required this.hex, this.name, this.isPremium = false, this.locked = false});

  factory AvatarColorOption.fromJson(Map<String, dynamic> j) => AvatarColorOption(
        hex: Json.string(j['hex']) ?? '#000000',
        name: Json.string(j['name']),
        isPremium: Json.boolean(j['is_premium']),
        locked: Json.boolean(j['locked']),
      );

  @override
  List<Object?> get props => [hex, name, isPremium, locked];
}

/// A player's choice: slot → item key, channel → hex.
class AvatarChoice extends Equatable {
  final Map<String, String> items;
  final Map<String, String> colors;

  const AvatarChoice({this.items = const {}, this.colors = const {}});

  factory AvatarChoice.fromJson(Map<String, dynamic>? j) => AvatarChoice(
        items: {for (final e in (Json.map(j?['items']) ?? const {}).entries) if (e.value is String) e.key: e.value as String},
        colors: {for (final e in (Json.map(j?['colors']) ?? const {}).entries) if (e.value is String) e.key: e.value as String},
      );

  AvatarChoice withItem(String slot, String? item) => AvatarChoice(
        items: {...items}..removeWhere((k, _) => k == slot)..addAll({slot: ?item}),
        colors: colors,
      );

  AvatarChoice withColor(String channel, String hex) => AvatarChoice(items: items, colors: {...colors, channel: hex});

  Map<String, dynamic> toJson() => {'items': items, 'colors': colors};

  @override
  List<Object?> get props => [items, colors];
}

/// `GET me/avatar`.
class MyAvatar extends Equatable {
  final AvatarChoice? saved;

  /// What the stage draws (passed through as-is).
  final Map<String, dynamic>? spec;

  const MyAvatar({this.saved, this.spec});

  factory MyAvatar.fromJson(Map<String, dynamic> j) => MyAvatar(
        saved: Json.map(j['saved']) == null ? null : AvatarChoice.fromJson(Json.map(j['saved'])),
        spec: Json.map(j['spec']),
      );

  @override
  List<Object?> get props => [saved, spec];
}
