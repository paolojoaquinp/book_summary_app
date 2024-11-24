import 'package:book_summary_app/features/home_screen/domain/entities/author_from_book_entity.dart';

class AuthorFromBookModel extends AuthorFromBookEntity {
  const AuthorFromBookModel({
    required String id,
    required String name,
  }) : super(
          id: id,
          name: name,
        );

  factory AuthorFromBookModel.fromJson(Map<String, dynamic> json) {
    return AuthorFromBookModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}