import 'package:book_summary_app/features/home_screen/presenter/page/widgets/book_card.dart';
import 'package:book_summary_app/features/home_screen/presenter/page/widgets/book_swipper/bloc/books_swipper_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class BooksSwipper extends StatelessWidget {
  const BooksSwipper({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BooksSwipperBloc>(
      create: (_) => BooksSwipperBloc()..add(BooksPageInitialized()),
      child: BlocBuilder<BooksSwipperBloc, BooksSwipperState>(
        builder: (context, state) {
          if (state is BooksWidgetLoaded) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: PageView.builder(
                    clipBehavior: Clip.none,
                    itemCount: 5,
                    controller: state.pageController,
                    itemBuilder: (context, index) {
                      final diff = state.currentPage - index;
                      final rotation = -(diff * 0.1);
                      return GestureDetector(
                        onTap: onPressed,
                        child: Transform.translate(
                          offset: Offset(0, diff.abs() * 65),
                          child: Transform.rotate(
                            angle: rotation,
                            child: BookCard(
                                title: 'title $index',
                                subtitle: 'subtitle $index'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: -50,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 24,
                    child: PageViewDotIndicator(
                      padding: const EdgeInsets.all(0),
                      alignment: Alignment.center,
                      fadeEdges: false,
                      margin: const EdgeInsets.only(left: 8.0),
                      currentItem: state.currentPage.toInt(),
                      count: 5,
                      unselectedColor: Colors.grey,
                      selectedColor: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
