import 'package:book_summary_app/features/home_screen/domain/entities/book_genre_entity.dart';

class TaggingEntity {
  final TaggingTypename typename;
  final BookGenreEntity tag;

  const TaggingEntity({
    required this.typename,
    required this.tag,
  });
}

enum TaggingTypename { TAGGING }
