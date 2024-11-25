

class BookFromAuthorEntity {
  final String imageUrl;
  final String bookId;
  final String workId;
  final String bookUrl;
  final String title;
  // final List<AuthorFromBookModel> authors;
  final String rating;
  final String totalRatings;
  final String publishedYear;
  final String totalEditions;

  const BookFromAuthorEntity({
    required this.imageUrl,
    required this.bookId,
    required this.workId,
    required this.bookUrl,
    required this.title,
    // required this.authors,
    required this.rating,
    required this.totalRatings,
    required this.publishedYear,
    required this.totalEditions,
  });
}