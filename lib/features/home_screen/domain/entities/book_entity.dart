import 'package:book_summary_app/features/home_screen/data/models/author_model.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/author_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/awards_won_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/book_genre_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/details_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/links_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/place_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/review_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/stats_entity.dart';

class BookEntity {
  final String id;
  final String typename;
  final int legacyId;
  final String webUrl;
  final String title;
  final String titleComplete;
  final String description;
  final String imageUrl;
  final List<BookGenreEntity> bookGenres;
  final DetailsEntity? details;
  final AuthorModel author;
  final List<AwardsWonEntity> awardsWon;
  final List<PlaceEntity> places;
  final List<BookGenreEntity> characters;
  final StatsEntity? stats;
  final List<ReviewEntity> reviews;
  final LinksEntity? links;

  const BookEntity({
    required this.id,
    required this.typename,
    required this.legacyId,
    required this.webUrl,
    required this.title,
    required this.titleComplete,
    required this.description,
    required this.imageUrl,
    required this.bookGenres,
    required this.details,
    required this.author,
    required this.awardsWon,
    required this.places,
    required this.characters,
    required this.stats,
    required this.reviews,
    required this.links,
  });
}