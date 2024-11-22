part of 'books_swipper_bloc.dart';

sealed class BooksSwipperState extends Equatable {
  const BooksSwipperState();

}

final class BooksSwipperInitial extends BooksSwipperState {
  @override
  List<Object> get props => [];
}


class BooksWidgetLoading extends BooksSwipperState {
  @override
  List<Object> get props => [];
}

class BooksWidgetLoaded extends BooksSwipperState {
  final PageController pageController;
  final double currentPage;

  BooksWidgetLoaded({
    required this.pageController,
    required this.currentPage,
  });

  @override
  List<Object> get props => [pageController, currentPage];
}