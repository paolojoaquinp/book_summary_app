import 'package:book_summary_app/features/home_screen/data/models/author_from_book_model.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/book_from_author_entity.dart';

class BookFromAuthorModel extends BookFromAuthorEntity {
  const BookFromAuthorModel({
    required String imageUrl,
    required String bookId,
    required String workId,
    required String bookUrl,
    required String title,
    required List<AuthorFromBookModel> authors,
    required String rating,
    required String totalRatings,
    required String publishedYear,
    required String totalEditions,
  }) : super(
          imageUrl: imageUrl,
          bookId: bookId,
          workId: workId,
          bookUrl: bookUrl,
          title: title,
          authors: authors,
          rating: rating,
          totalRatings: totalRatings,
          publishedYear: publishedYear,
          totalEditions: totalEditions,
        );

  factory BookFromAuthorModel.fromJson(Map<String, dynamic> json) {
    return BookFromAuthorModel(
      imageUrl: json['imageUrl'] ?? '',
      bookId: json['bookId'] ?? '',
      workId: json['workId'] ?? '',
      bookUrl: json['bookUrl'] ?? '',
      title: json['title'] ?? '',
      authors: (json['author'] as List<dynamic>?)
              ?.map((author) => AuthorFromBookModel.fromJson(author))
              .toList() ??
          [],
      rating: json['rating'] ?? '',
      totalRatings: json['totalRatings'] ?? '',
      publishedYear: json['publishedYear'] ?? '',
      totalEditions: json['totalEditions'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
      'bookId': bookId,
      'workId': workId,
      'bookUrl': bookUrl,
      'title': title,
      'author': (authors).map((author) => author.toJson()).toList(),
      'rating': rating,
      'totalRatings': totalRatings,
      'publishedYear': publishedYear,
      'totalEditions': totalEditions,
    };
  }

  BookFromAuthorModel copyWith({
    String? imageUrl,
    String? bookId,
    String? workId,
    String? bookUrl,
    String? title,
    List<AuthorFromBookModel>? authors,
    String? rating,
    String? totalRatings,
    String? publishedYear,
    String? totalEditions,
  }) {
    return BookFromAuthorModel(
      imageUrl: imageUrl ?? this.imageUrl,
      bookId: bookId ?? this.bookId,
      workId: workId ?? this.workId,
      bookUrl: bookUrl ?? this.bookUrl,
      title: title ?? this.title,
      authors: authors ?? this.authors,
      rating: rating ?? this.rating,
      totalRatings: totalRatings ?? this.totalRatings,
      publishedYear: publishedYear ?? this.publishedYear,
      totalEditions: totalEditions ?? this.totalEditions,
    );
  }
}
