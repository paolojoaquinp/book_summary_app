import 'package:book_summary_app/features/home_screen/data/models/author_model.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/author_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/awards_won_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/book_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/book_genre_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/place_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/review_entity.dart';

class BookModel extends BookEntity {
  const BookModel({
    required String id,
    required String typename,
    required int legacyId,
    required String webUrl,
    required String title,
    required String titleComplete,
    required String description,
    required String imageUrl,
    required List<BookGenreEntity> bookGenres,
    required List<AwardsWonEntity> awardsWon,
    required List<PlaceEntity> places,
    required List<BookGenreEntity> characters,
    required List<ReviewEntity> reviews,
    required AuthorModel author,
  }) : super(
          id: id,
          typename: typename,
          legacyId: legacyId,
          webUrl: webUrl,
          title: title,
          titleComplete: titleComplete,
          description: description,
          imageUrl: imageUrl,
          bookGenres: bookGenres,
          details: null, // Ignorado
          author: author,  // Ignorado
          awardsWon: awardsWon,
          places: places,
          characters: characters,
          stats: null,   // Ignorado
          reviews: reviews,
          links: null,   // Ignorado
        );

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'] ?? '',
      typename: json['typename'] ?? '',
      legacyId: json['legacyId'] ?? 0,
      webUrl: json['webUrl'] ?? '',
      title: json['title'] ?? '',
      titleComplete: json['titleComplete'] ?? '',
      description: json['description'] ?? '',
      author: AuthorModel.fromJson(json['author'] ?? {}),
      imageUrl: json['imageUrl'] ?? '',
      bookGenres: [],
      awardsWon: [],
      places: [],
      characters: [],
      reviews: [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'typename': typename,
      'legacyId': legacyId,
      'webUrl': webUrl,
      'title': title,
      'titleComplete': titleComplete,
      'description': description,
      'imageUrl': imageUrl,
      'author': author.toJson(),
      'bookGenres': [],
      'awardsWon': [],
      'places': [],
      'characters': [],
      'reviews': [],
    };
  }
}

  // [COMPLETE MODE]

  // factory BookModel.fromJson(Map<String, dynamic> json) {
  //   return BookModel(
  //     id: json['id'] ?? '',
  //     typename: json['typename'] ?? '',
  //     legacyId: json['legacyId'] ?? 0,
  //     webUrl: json['webUrl'] ?? '',
  //     title: json['title'] ?? '',
  //     titleComplete: json['titleComplete'] ?? '',
  //     description: json['description'] ?? '',
  //     imageUrl: json['imageUrl'] ?? '',
  //     bookGenres: (json['bookGenres'] as List<dynamic>? ?? [])
  //         .map((e) => BookGenreEntity.fromJson(e as Map<String, dynamic>))
  //         .toList(),
  //     details: DetailsEntity.fromJson(json['details'] ?? {}),
  //     author: AuthorEntity.fromJson(json['author'] ?? {}),
  //     awardsWon: (json['awardsWon'] as List<dynamic>? ?? [])
  //         .map((e) => AwardsWonEntity.fromJson(e as Map<String, dynamic>))
  //         .toList(),
  //     places: (json['places'] as List<dynamic>? ?? [])
  //         .map((e) => PlaceEntity.fromJson(e as Map<String, dynamic>))
  //         .toList(),
  //     characters: (json['characters'] as List<dynamic>? ?? [])
  //         .map((e) => BookGenreEntity.fromJson(e as Map<String, dynamic>))
  //         .toList(),
  //     stats: StatsEntity.fromJson(json['stats'] ?? {}),
  //     reviews: (json['reviews'] as List<dynamic>? ?? [])
  //         .map((e) => ReviewEntity.fromJson(e as Map<String, dynamic>))
  //         .toList(),
  //     links: LinksEntity.fromJson(json['links'] ?? {}),
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'typename': typename,
  //     'legacyId': legacyId,
  //     'webUrl': webUrl,
  //     'title': title,
  //     'titleComplete': titleComplete,
  //     'description': description,
  //     'imageUrl': imageUrl,
  //     'bookGenres': bookGenres.map((e) => e.toJson()).toList(),
  //     'details': details.toJson(),
  //     'author': author.toJson(),
  //     'awardsWon': awardsWon.map((e) => e.toJson()).toList(),
  //     'places': places.map((e) => e.toJson()).toList(),
  //     'characters': characters.map((e) => e.toJson()).toList(),
  //     'stats': stats.toJson(),
  //     'reviews': reviews.map((e) => e.toJson()).toList(),
  //     'links': links.toJson(),
  //   };
  // }
