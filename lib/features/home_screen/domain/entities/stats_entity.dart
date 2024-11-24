import 'package:book_summary_app/features/home_screen/domain/entities/text_reviews_language_count_entity.dart';

class StatsEntity {
  final String typename;
  final double averageRating;
  final int ratingsCount;
  final List<int> ratingsCountDist;
  final int textReviewsCount;
  final List<TextReviewsLanguageCountEntity> textReviewsLanguageCounts;

  const StatsEntity({
    required this.typename,
    required this.averageRating,
    required this.ratingsCount,
    required this.ratingsCountDist,
    required this.textReviewsCount,
    required this.textReviewsLanguageCounts,
  });
}
