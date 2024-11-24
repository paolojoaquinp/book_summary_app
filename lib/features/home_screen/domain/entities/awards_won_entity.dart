class AwardsWonEntity {
  final String typename;
  final String name;
  final String webUrl;
  final int awardedAt;
  final String? category;
  final String designation;

  const AwardsWonEntity({
    required this.typename,
    required this.name,
    required this.webUrl,
    required this.awardedAt,
    required this.category,
    required this.designation,
  });
}