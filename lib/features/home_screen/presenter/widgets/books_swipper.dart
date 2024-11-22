import 'package:book_summary_app/features/home_screen/presenter/widgets/book_card.dart';
import 'package:flutter/material.dart';

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
    return Container(
      color: Colors.blue,
      height: 400,
      child: PageView.builder(
        clipBehavior: Clip.none,
        itemCount: 5,
        controller: _pageController,
        itemBuilder: (context, index) {
          final diff = _currentPage - index;
          final rotation = -(diff * 0.1);
          return Transform.translate(
            offset: Offset(0, diff.abs() * 90),
            child: Transform.rotate(
              angle: rotation,
              child:
                  BookCard(title: 'title $index', subtitle: 'subtitle $index'),
            ),
          );
        },
      ),
    );
  }
}
