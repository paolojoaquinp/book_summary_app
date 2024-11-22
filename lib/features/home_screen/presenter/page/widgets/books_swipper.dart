import 'package:book_summary_app/features/home_screen/presenter/page/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class BooksSwiper extends StatefulWidget {
  @override
  State<BooksSwiper> createState() => _BooksSwiperState();
}

class _BooksSwiperState extends State<BooksSwiper> {
  late PageController _pageController;
  double _currentPage = 1.0; // Página inicial

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.7,
      initialPage: 1,
    );

    // Escucha los cambios de posición del controlador
    _pageController.addListener(() {
      setState(() {
        _currentPage =
            _pageController.page ?? _pageController.initialPage.toDouble();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose(); // Libera los recursos del controlador
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: PageView.builder(
            clipBehavior: Clip.none,
            itemCount: 5,
            controller: _pageController,
            itemBuilder: (context, index) {
              final diff = _currentPage - index;
              final rotation = -(diff * 0.1);
              return Transform.translate(
                offset: Offset(0, diff.abs() * 65),
                child: Transform.rotate(
                  angle: rotation,
                  child: BookCard(
                      title: 'title $index', subtitle: 'subtitle $index'),
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
              padding: EdgeInsets.all(0),
              alignment: Alignment.center,
              fadeEdges: false,
              margin: EdgeInsets.only(left: 8.0),
              currentItem: _currentPage.toInt(),
              count: 5,
              unselectedColor: Colors.grey,
              selectedColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
