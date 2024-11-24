import 'package:book_summary_app/features/home_screen/data/models/book_from_author_model.dart';
import 'package:oxidized/oxidized.dart';

typedef GetFutureBooksFromAuthor = Future<Result<List<BookFromAuthorModel>,String>>;

abstract class BooksRepository {
  //Future<Result<>> getBooks();
  GetFutureBooksFromAuthor getBooksFromAuthorId(String idAuthor);
}