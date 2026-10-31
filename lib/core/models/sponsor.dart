import 'package:equatable/equatable.dart';

import '../utils/json_utils.dart';

/// A tournament sponsor / home banner advertiser.
class Sponsor extends Equatable {
  final int id;
  final String name;
  final String? logoUrl;

  /// Wide image for the home banner.
  final String? bannerUrl;
  final String? linkUrl;

  const Sponsor({required this.id, required this.name, this.logoUrl, this.bannerUrl, this.linkUrl});

  factory Sponsor.fromJson(Map<String, dynamic> j) => Sponsor(
        id: Json.integer(j['id']) ?? 0,
        name: Json.string(j['name']) ?? '',
        logoUrl: Json.string(j['logo_url']),
        bannerUrl: Json.string(j['banner_url']),
        linkUrl: Json.string(j['link_url']),
      );

  static List<Sponsor> listFromJson(Object? raw) => Json.listOfMaps(raw).map(Sponsor.fromJson).toList();

  @override
  List<Object?> get props => [id, name, logoUrl, bannerUrl, linkUrl];
}
