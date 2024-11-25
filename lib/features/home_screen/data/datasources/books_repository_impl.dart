import 'package:book_summary_app/features/home_screen/domain/repositories/books_repository.dart';

class BooksRepositoryImpl implements BooksRepository {



  // GetFutureBooksFromAuthor getBooksFromAuthorId(String idAuthor) async {
  //   try {
  //     final response = await _dio.get(
  //       '$_baseUrl/getAuthorBooks',
  //       queryParameters: {
  //         'authorID': '1077326',
  //       },
  //       options: Options(
  //         headers: {
  //           'x-rapidapi-key': _apiKey,
  //           'x-rapidapi-host': _apiHost,
  //           'Content-Type': 'application/json',
  //           'Accept': '*/*',
  //         },
  //       ),
  //     );

  //     if (response.statusCode == 200) {
  //       // final json = response.data;
  //       // // Asumiendo que la respuesta contiene una lista de libros
  //       // final List<dynamic> booksJson = json['books'] ?? []; // Ajusta según la estructura real de tu JSON
  //       // final List<BookFromAuthorModel> books = booksJson
  //       //     .map((bookJson) => BookFromAuthorModel.fromJson(bookJson))
  //       //     .toList();
        
  //       // return Ok(books);
  //     }
  //     return Err('Failed to fetch books: ${response.statusCode}');
  //   } catch (e) {
  //     return Err('An unexpected error occurred: $e');
  //   }
  // }
}