import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, 
    required this.title,
    required this.subtitle, 
    required this.background,
    required this.index,
  });

  final String title;
  final String subtitle;
  final Color background;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage('https://covers.openlibrary.org/b/id/${index + 1}-M.jpg',),
          fit: BoxFit.cover
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
