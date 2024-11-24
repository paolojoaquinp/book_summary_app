class PrimaryAffiliateLinkEntity {
  final String typename;
  final String name;
  final String url;
  final String ref;
  final String ebookPrice;
  final bool kuEligible;
  final bool primeEligible;

  const PrimaryAffiliateLinkEntity({
    required this.typename,
    required this.name,
    required this.url,
    required this.ref,
    required this.ebookPrice,
    required this.kuEligible,
    required this.primeEligible,
  });
}
