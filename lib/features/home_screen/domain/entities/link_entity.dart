class LinkEntity {
  final SeriesLinkTypename typename;
  final String name;
  final String url;
  final String? ref;

  const LinkEntity({
    required this.typename,
    required this.name,
    required this.url,
    required this.ref,
  });
}

enum SeriesLinkTypename {
  BOOK_LINK,
  SERIES_LINK
}
