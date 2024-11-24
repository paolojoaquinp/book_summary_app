class PlaceEntity {
  final String typename;
  final String name;
  final String? countryName;
  final String webUrl;
  final dynamic year;

  const PlaceEntity({
    required this.typename,
    required this.name,
    required this.countryName,
    required this.webUrl,
    required this.year,
  });
}