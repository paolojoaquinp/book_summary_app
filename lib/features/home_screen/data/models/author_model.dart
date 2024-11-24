import 'package:book_summary_app/features/home_screen/domain/entities/author_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/followers_entity.dart';

class AuthorModel extends AuthorEntity {
  const AuthorModel({
    required String id,
    required String typename,
    required int legacyId,
    required String name,
    required String description,
    required bool isGrAuthor,
    required String profileImageUrl,
    required String webUrl,
    required dynamic user,
    required dynamic viewerIsFollowing,
  }) : super(
          id: id,
          typename: typename,
          legacyId: legacyId,
          name: name,
          description: description,
          isGrAuthor: isGrAuthor,
          works: null,
          profileImageUrl: profileImageUrl,
          webUrl: webUrl,
          user: user,
          viewerIsFollowing: viewerIsFollowing,
          followers: null,
        );

  factory AuthorModel.fromJson(Map<String, dynamic> json) {
    return AuthorModel(
      id: json['id'] ?? '',
      typename: json['typename'] ?? '',
      legacyId: json['legacyId'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      isGrAuthor: json['isGrAuthor'] ?? false,
      profileImageUrl: json['profileImageUrl'] ?? '',
      webUrl: json['webUrl'] ?? '',
      user: json['user'],
      viewerIsFollowing: json['viewerIsFollowing'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'typename': typename,
      'legacyId': legacyId,
      'name': name,
      'description': description,
      'isGrAuthor': isGrAuthor,
      'profileImageUrl': profileImageUrl,
      'webUrl': webUrl,
      'user': user,
      'viewerIsFollowing': viewerIsFollowing,
    };
  }
}
