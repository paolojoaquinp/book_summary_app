import 'dart:math';
import 'dart:ui';

import 'package:book_summary_app/core/constants/app_colors.dart';
import 'package:book_summary_app/features/detail_book/presenter/detail_book_screen.dart';
import 'package:book_summary_app/features/home_screen/presenter/page/widgets/book_card.dart';
import 'package:book_summary_app/features/home_screen/presenter/page/widgets/book_swipper/bloc/books_swipper_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

final List<Color> selectedColors = [
    AppColors.greenLime,
    AppColors.violetTropitalIndigo,
    AppColors.yellowSelective,
    AppColors.violetTropitalIndigo,
    AppColors.yellowSelective,
  ];


class BooksSwipper extends StatelessWidget {
  const BooksSwipper({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BooksSwipperBloc>(
      create: (_) => BooksSwipperBloc()..add(const BooksPageInitialized()),
      child: _Body(onPressed: onPressed,),
    );
  }
}

class _Body extends StatelessWidget {

  const _Body({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksSwipperBloc, BooksSwipperState>(
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
                      onTap: () {
                        onPressed();
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(milliseconds: 1200),
                              reverseTransitionDuration: const Duration(milliseconds: 1200),
                              pageBuilder: (context, animation, secondaryAnimation) {
                                return DetailBookScreen(
                                  index: index,
                                  background: selectedColors[index],
                                );
                              },
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ));
                      },
                      child: Transform.translate(
                        offset: Offset(0, diff.abs() * 65),
                        child: Transform.rotate(
                          angle: rotation,
                          child: Hero(
                            tag: 'title $index',
                            flightShuttleBuilder: (flightContext,
                                animation,
                                flightDirection,
                                fromHeroContext,
                                toHeroContext) {
                              Widget current;
                              if (flightDirection == HeroFlightDirection.push) {
                                current = toHeroContext.widget;
                              } else {
                                current = fromHeroContext.widget;
                              }
                              return AnimatedBuilder(
                                animation: animation,
                                builder: (context, _) {
                                  final newValue =
                                      lerpDouble(0.0, 2 * pi, animation.value);
                                  return Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..setEntry(3, 2, 0.001)
                                      ..rotateY(newValue ?? 0),
                                    child: current,
                                  );
                                },
                              );
                            },
                            child: BookCard(
                                index: index,
                                background: selectedColors[index],
                                title: 'title $index',
                                subtitle: 'subtitle $index'),
                          ),
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
    );
  }
}
