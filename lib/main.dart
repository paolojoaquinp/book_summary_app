import 'package:book_summary_app/features/home_screen/presenter/home_screen.dart';
import 'package:book_summary_app/features/home_screen/presenter/widgets/swiper_example.dart';
import 'package:book_summary_app/features/onboarding_screen/presenter/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Summary App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SwiperExample()
    );
  }
}
