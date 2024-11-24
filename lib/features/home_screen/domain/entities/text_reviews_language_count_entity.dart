class TextReviewsLanguageCountEntity {
  final TextReviewsLanguageCountTypename typename;
  final int count;
  final String isoLanguageCode;

  const TextReviewsLanguageCountEntity({
    required this.typename,
    required this.count,
    required this.isoLanguageCode,
  });
}

enum TextReviewsLanguageCountTypename {
    TEXT_REVIEW_LANGUAGE_COUNT
}