import 'package:book_summary_app/features/home_screen/domain/entities/followers_entity.dart';

class AuthorEntity {
  final String id;
  final String typename;
  final int legacyId;
  final String name;
  final String description;
  final bool isGrAuthor;
  final FollowersEntity? works;
  final String profileImageUrl;
  final String webUrl;
  final dynamic user;
  final dynamic viewerIsFollowing;
  final FollowersEntity? followers;

  const AuthorEntity({
    required this.id,
    required this.typename,
    required this.legacyId,
    required this.name,
    required this.description,
    required this.isGrAuthor,
    required this.works,
    required this.profileImageUrl,
    required this.webUrl,
    required this.user,
    required this.viewerIsFollowing,
    required this.followers,
  });
}