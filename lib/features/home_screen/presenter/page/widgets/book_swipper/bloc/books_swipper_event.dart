part of 'books_swipper_bloc.dart';

sealed class BooksSwipperEvent extends Equatable {
  const BooksSwipperEvent();


}
class BooksPageInitialized extends BooksSwipperEvent {
  const BooksPageInitialized();

  @override
  List<Object> get props => [];
}



class BooksPageChanged extends BooksSwipperEvent {
  final double currentPage;

  const BooksPageChanged(this.currentPage);

  @override
  List<Object> get props => [];
}
