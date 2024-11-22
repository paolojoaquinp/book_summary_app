import 'package:flutter/material.dart';

class DetailBookScreen extends StatelessWidget {
  const DetailBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff071018),
      appBar: AppBar(
        title: Text(
          "Book Detail",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
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
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.network(
                        'https://picsum.photos/250?image=9',
                        height: double.maxFinite,
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _cardDetailBook(
                              label: 'Raiting',
                              detailLabel: '8.6/10',
                              isIcon: true),
                          _cardDetailBook(
                            label: 'Duration',
                            detailLabel: '12 min',
                          ),
                          _cardDetailBook(
                            label: 'Emotions',
                            detailLabel: 'Doubts',
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
              Text(
                'Don\'t Believe\nEverything You Think',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    height: 1.4),
              ),
              SizedBox(height: 6.0),
              Text(
                'Book by Joseph Nguyen',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'In this book, you\'ll discover the root cause of all psychological and emotional suffering and how to achieve freedom of mind to effortlessly create the life you\'ve always wanted to live.\n\nAlthough pain is inevitable, suffering is optional.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Align(
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardDetailBook(
      {required String label,
      bool isIcon = false,
      required String detailLabel}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xff161E26),
      ),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
      width: double.maxFinite,
      child: Row(
        children: [
          if (isIcon)
            Icon(
              Icons.star,
              color: Color(0xff8482FD),
            ),
          if (isIcon)
            const SizedBox(
              width: 6.0,
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
              Text(
                detailLabel,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
