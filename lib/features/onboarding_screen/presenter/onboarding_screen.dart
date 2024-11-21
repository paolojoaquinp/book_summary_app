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
                  Container(
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
                      borderRadius:
                          BorderRadius.circular(5), //only for rectangle shape
                    ),
                  )
                ],
              );
            },
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.07,
          ),
          const Padding(
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
          const Expanded(child: SizedBox()),
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
                        bottom: 16,),
                    child: Row(
                      children: List.generate(itemCount ~/ 4, (columnIndex) {
                        int itemIndex = rowIndex * (itemCount ~/ 4) + columnIndex;
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 16,),
                          child: ChipButton(
                              label: itemIndex.isOdd
                                  ? 'textTest'
                                  : 'asdasdasdasdas',
                              isActivated: true),
                        );
                      }),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: kBottomNavigationBarHeight,
          ),
        ],
      ),
    );
  }
}
