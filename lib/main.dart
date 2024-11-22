import 'package:book_summary_app/features/detail_book/presenter/detail_book_screen.dart';
import 'package:book_summary_app/features/home_screen/presenter/page/home_screen.dart';
import 'package:book_summary_app/features/home_screen/presenter/page/widgets/book_swipper/books_swipper.dart';
import 'package:book_summary_app/features/onboarding_screen/presenter/onboarding_screen.dart';
import 'package:book_summary_app/features/shared/app_shell/app_shell.dart';
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
      home: AppShell()
    );
  }
}
