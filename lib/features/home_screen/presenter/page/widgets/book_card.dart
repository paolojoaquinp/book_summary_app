import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    required this.title,
    required this.subtitle,
    required this.background,
  });

  final String title;
  final String subtitle;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: NetworkImage('https://cataas.com/cat',),
          fit: BoxFit.cover
        ),
        boxShadow: [
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
