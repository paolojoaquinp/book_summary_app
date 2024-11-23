import 'package:book_summary_app/features/detail_book/presenter/widgets/animated_text.dart';
import 'package:book_summary_app/features/detail_book/presenter/widgets/card_detail_book.dart';
import 'package:book_summary_app/features/home_screen/presenter/page/widgets/book_card.dart';
import 'package:flutter/material.dart';

class DetailBookScreen extends StatelessWidget {
  const DetailBookScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final int transitionDuration = 2000;
    return Scaffold(
//      backgroundColor: Colors.white,
      backgroundColor: const Color(0xff071018),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "Book Detail",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Color(0xff071018),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cloud,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.transparent,
                height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                      tag: 'title $index',
                      child: Material(
                        color: Colors.transparent,
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.45,
                          child: BookCard(
                            title: 'title $index',
                            subtitle: 'sbutitle $index',
                          ),
                        ),
                      ),
                    ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.all(Radius.circular(20)),
                    //   child: Image.network(
                    //     'https://picsum.photos/250?image=9',
                    //     height: double.maxFinite,
                    //     width: MediaQuery.sizeOf(context).width * 0.45,
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AnimatedFadeInWidget(
                            duration: Duration(
                                milliseconds: transitionDuration + 100),
                            widgetHOW: CardDetailBook(
                                label: 'Raiting',
                                detailLabel: '8.6/10',
                                isIcon: true),
                          ),
                          AnimatedFadeInWidget(
                            duration: Duration(milliseconds: transitionDuration + 350),
                            widgetHOW: CardDetailBook(
                              label: 'Duration',
                              detailLabel: '12 min',
                            ),
                          ),
                          AnimatedFadeInWidget(
                            duration: Duration(milliseconds: transitionDuration + 650),
                            widgetHOW: CardDetailBook(
                              label: 'Emotions',
                              detailLabel: 'Doubts',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedFadeInWidget(
                duration: Duration(
                    milliseconds: transitionDuration + 100), // 1500 delay + 3000 animación,
                widgetHOW: Text(
                  'Don\'t Believe\nEverything You Think',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      height: 1.4),
                ),
              ),
              const SizedBox(height: 6.0),
              AnimatedFadeInWidget(
                duration: Duration(
                    milliseconds: transitionDuration + 250),
                widgetHOW: Text(
                  'Book by Joseph Nguyen',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              AnimatedFadeInWidget(
                duration: Duration(
                    milliseconds: transitionDuration + 350),
                widgetHOW: Text(
                  'In this book, you\'ll discover the root cause of all psychological and emotional suffering and how to achieve freedom of mind to effortlessly create the life you\'ve always wanted to live.\n\nAlthough pain is inevitable, suffering is optional.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              AnimatedFadeInWidget(
                duration: Duration(milliseconds: transitionDuration + 100),
                widgetHOW: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      maximumSize:
                          Size(MediaQuery.sizeOf(context).width * 0.8, 86),
                      minimumSize:
                          Size(MediaQuery.sizeOf(context).width * 0.8, 46),
                      backgroundColor: Colors.lime,
                      foregroundColor: Colors.black,
                    ),
                    child: Text('I want to read'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
