import 'package:book_summary_app/features/onboarding_screen/presenter/widgets/chip_button.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  final int itemCount = 36;
  final ValueNotifier<int> selectedPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final int itemsPerPage = 12;
    final int pageCount = (itemCount / itemsPerPage).ceil();


    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SizedBox(
            height: kToolbarHeight,
          ),
          Text(
            'Choose your goals',
            style: TextStyle(color: Colors.red),
          ),
          Expanded(child: SizedBox()),
          NotificationListener<ScrollNotification>(
             onNotification: (scrollNotification) {
                if (scrollNotification is ScrollUpdateNotification) {
                  // Calcula la página actual basándote en el desplazamiento
                  final currentPage = (scrollNotification.metrics.pixels /
                          scrollNotification.metrics.viewportDimension)
                      .round();
                  selectedPageNotifier.value = currentPage;
                }
                return true;
              },
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: List.generate(4, (rowIndex) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 16), // Espaciado entre filas
                    child: Row(
                      children: List.generate(itemCount ~/ 4, (columnIndex) {
                        int itemIndex = rowIndex * (itemCount ~/ 4) + columnIndex;
                        
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 16), // Espaciado entre columnas
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.center,
                            child: ChipButton(
                                label: itemIndex.isOdd
                                    ? 'textTest'
                                    : 'asdasdasdasdas',
                                isActivated: true),
                          ),
                        );
                      }),
                    ),
                  );
                }),
              ),
            ),
          ),
          ValueListenableBuilder<int>(
            valueListenable: selectedPageNotifier,
            builder: (context, selectedPage, _) {
              return PageViewDotIndicator(
                currentItem: selectedPage,
                count: pageCount,
                unselectedColor: Colors.black26,
                selectedColor: Colors.blue,
              );
            },
          ),
          SizedBox(
            height: kBottomNavigationBarHeight,
          ),
        ],
      ),
    );
  }
}
