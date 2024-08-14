class Tariff {
  final int id;
  final double priceInUsd;
  final double priceInKzt;
  final double priceInRub;
  final String tariffType;
  final String infoInRu;
  final String infoInEn;
  final String infoInKz;
  final String image;
  final List<String> links;

  Tariff({
    required this.id,
    required this.priceInUsd,
    required this.priceInKzt,
    required this.priceInRub,
    required this.tariffType,
    required this.infoInRu,
    required this.infoInEn,
    required this.infoInKz,
    required this.image,
    required this.links,
  });

  factory Tariff.fromJson(Map<String, dynamic> json) {
    return Tariff(
      id: json['id'],
      priceInUsd: json['price_in_usd'],
      priceInKzt: json['price_in_kzt'],
      priceInRub: json['price_in_rub'],
      tariffType: json['tariff_type'],
      infoInRu: json['info_in_ru'],
      infoInEn: json['info_in_en'],
      infoInKz: json['info_in_kz'],
      image: json['image'],
      links: List<String>.from(json['links']),
    );
  }
}
