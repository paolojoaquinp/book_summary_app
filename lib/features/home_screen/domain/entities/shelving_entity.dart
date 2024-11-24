import 'package:book_summary_app/features/home_screen/domain/entities/book_genre_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/tagging_entity.dart';

class ShelvingEntity {
  final ShelvingTypename typename;
  final BookGenreEntity shelf;
  final List<TaggingEntity> taggings;
  final String webUrl;

  const ShelvingEntity({
    required this.typename,
    required this.shelf,
    required this.taggings,
    required this.webUrl,
  });
}
enum ShelvingTypename { SHELVING }
