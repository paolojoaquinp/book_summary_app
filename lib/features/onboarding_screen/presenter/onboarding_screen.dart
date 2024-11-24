import 'package:animate_do/animate_do.dart';
import 'package:book_summary_app/features/onboarding_screen/presenter/bloc/on_boarding_bloc.dart';
import 'package:book_summary_app/features/onboarding_screen/presenter/widgets/chip_button.dart';
import 'package:book_summary_app/features/shared/app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

final List<String> categories = [
  "Self Acceptance",
  "Fears",
  "Memory",
  "Personal boundaries",
  "Parents",
  "Doubts",
  "Controlling emotions",
  "Parenting",
  "Personal boundaries_1",
  "Self Acceptance_1",
  "Fears_1",
  "Controlling emotions_1",
  "Parents_1",
  "Doubts_1",
  "Parenting_1",
  "Memory_1",
  "Fears_2",
  "Self Acceptance_2",
  "Parents_2",
  "Personal boundaries_2",
  "Parenting_2",
  "Doubts_2",
  "Controlling emotions_2",
  "Memory_2",
  "Parenting_",
  "Memory_",
  "Personal boundaries_",
  "Doubts_",
  "Parents_",
  "Fears_",
  "Controlling emotions_",
  "Self Acceptance_",
];

class OnboardingScreen extends StatelessWidget {
  final int itemCount = categories.length;
  final ValueNotifier<int> selectedPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final int itemsPerPage = 12;
    final int pageCount = (itemCount / itemsPerPage).ceil();

    return BlocProvider<OnBoardingBloc>(
      create: (context) => OnBoardingBloc(),
      child: _Page(
        selectedPageNotifier: selectedPageNotifier,
        pageCount: pageCount,
        itemCount: itemCount,
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({
    super.key,
    required this.selectedPageNotifier,
    required this.pageCount,
    required this.itemCount,
  });

  final ValueNotifier<int> selectedPageNotifier;
  final int pageCount;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: kToolbarHeight,
              ),
              ValueListenableBuilder<int>(
                valueListenable: selectedPageNotifier,
                builder: (context, selectedPage, _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FadeOutRight(
                        animate: state.shouldAnimate,
                        duration: const Duration(milliseconds: 800),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          padding: EdgeInsets.only(right: 16.0),
                          child: PageViewDotIndicator(
                            padding: EdgeInsets.all(0),
                            alignment: Alignment.centerRight,
                            fadeEdges: false,
                            margin: EdgeInsets.only(left: 8.0),
                            currentItem: selectedPage,
                            count: pageCount,
                            unselectedColor: Colors.grey,
                            selectedColor: Colors.white,
                            boxShape: BoxShape.rectangle,
                            unselectedSize: Size(8, 8),
                            size: Size(18, 8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.07,
              ),
              FadeOutUp(
                animate: state.shouldAnimate,
                duration: const Duration(milliseconds: 800),
                child: const Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Choose\nyour goals',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollUpdateNotification) {
                    final currentPage = (scrollNotification.metrics.pixels /
                            scrollNotification.metrics.viewportDimension)
                        .round();
                    selectedPageNotifier.value = currentPage;
                  }
                  return true;
                },
                child: FadeOutLeft(
                  animate: state.shouldAnimate,
                  duration: const Duration(milliseconds: 800),
                  child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: List.generate(4, (rowIndex) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                bottom: 16,
                              ),
                              child: Row(
                                children: List.generate(
                                  itemCount ~/ 4,
                                  (columnIndex) {
                                    final int itemIndex =
                                        rowIndex * (itemCount ~/ 4) + columnIndex;
                                    final bool isAdded = state.categories
                                        .contains(categories[itemIndex]);
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                        right: 16,
                                      ),
                                      child: ChipButton(
                                        isAdded: isAdded,
                                        label: categories[itemIndex],
                                        onPressed: () {
                                          final bool isAlreadySelected = state
                                              .categories
                                              .contains(categories[itemIndex]);
                                          if (state.categories.length < 3 && !isAlreadySelected) {
                                            context.read<OnBoardingBloc>().add(AddCategoryEvent(category: categories[itemIndex]));
                                            if (state.categories.length == 2) {
                                              Future.delayed(const Duration(milliseconds: 700));
                                              context.read<OnBoardingBloc>().add(NavigateToNewScreenEvent());
                                              Future.delayed(const Duration(milliseconds: 800), () {
                                                Navigator.push(
                                                  context,
                                                  PageRouteBuilder(
                                                    transitionDuration: const Duration(milliseconds: 500),
                                                    reverseTransitionDuration: const Duration(milliseconds: 500),
                                                    pageBuilder: (context, animation, secondaryAnimation) {
                                                      return AppShell();
                                                    },
                                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                      return FadeTransition(
                                                        opacity: animation,
                                                        child: child,
                                                      );
                                                    },
                                                  ));
                                              });
                                            }
                                          }
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }),
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: kBottomNavigationBarHeight,
              ),
            ],
          ),
        );
      },
    );
  }
}
