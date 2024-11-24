import 'package:book_summary_app/features/home_screen/domain/entities/creator_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/shelving_entity.dart';

class ReviewEntity {
  final String id;
  final ReviewTypename typename;
  final CreatorEntity creator;
  final String? recommendFor;
  final int updatedAt;
  final int createdAt;
  final bool spoilerStatus;
  final int lastRevisionAt;
  final String text;
  final int rating;
  final ShelvingEntity? shelving;
  final int? likeCount;
  final dynamic viewerHasLiked;
  final int? commentCount;

  const ReviewEntity({
    required this.id,
    required this.typename,
    required this.creator,
    required this.recommendFor,
    required this.updatedAt,
    required this.createdAt,
    required this.spoilerStatus,
    required this.lastRevisionAt,
    required this.text,
    required this.rating,
    required this.shelving,
    required this.likeCount,
    required this.viewerHasLiked,
    required this.commentCount,
  });
}

enum ReviewTypename {
    REVIEW
}