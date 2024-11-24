import 'package:book_summary_app/features/home_screen/domain/entities/stats_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/text_reviews_language_count_entity.dart';

class StatsModel extends StatsEntity {
  const StatsModel({
    required String typename,
    required double averageRating,
    required int ratingsCount,
    required List<int> ratingsCountDist,
    required int textReviewsCount,
    required List<TextReviewsLanguageCountEntity> textReviewsLanguageCounts,
  }) : super(
          typename: typename,
          averageRating: averageRating,
          ratingsCount: ratingsCount,
          ratingsCountDist: ratingsCountDist,
          textReviewsCount: textReviewsCount,
          textReviewsLanguageCounts: textReviewsLanguageCounts,
        );

  factory StatsModel.fromJson(Map<String, dynamic> json) {
    return StatsModel(
      typename: json['typename'] ?? '',
      averageRating: (json['averageRating'] ?? 0.0).toDouble(),
      ratingsCount: json['ratingsCount'] ?? 0,
      ratingsCountDist:
          List<int>.from(json['ratingsCountDist'] ?? const []),
      textReviewsCount: json['textReviewsCount'] ?? 0,
      textReviewsLanguageCounts: [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'typename': typename,
      'averageRating': averageRating,
      'ratingsCount': ratingsCount,
      'ratingsCountDist': ratingsCountDist,
      'textReviewsCount': textReviewsCount,
      'textReviewsLanguageCounts': [],
    };
  }
}