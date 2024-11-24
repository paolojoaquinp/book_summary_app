class BookGenreEntity {
  final BookGenreTypename typename;
  final String name;
  final String webUrl;

  const BookGenreEntity({
    required this.typename,
    required this.name,
    required this.webUrl,
  });
}

enum BookGenreTypename {
  CHARACTER,
  GENRE,
  SHELF,
  TAG
}