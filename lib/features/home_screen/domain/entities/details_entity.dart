import 'package:book_summary_app/features/home_screen/domain/entities/language_entity.dart';

class DetailsEntity {
  final String typename;
  final dynamic asin;
  final String format;
  final int numPages;
  final int publicationTime;
  final String publisher;
  final dynamic isbn;
  final dynamic isbn13;
  final LanguageEntity language;

  const DetailsEntity({
    required this.typename,
    required this.asin,
    required this.format,
    required this.numPages,
    required this.publicationTime,
    required this.publisher,
    required this.isbn,
    required this.isbn13,
    required this.language,
  });
}