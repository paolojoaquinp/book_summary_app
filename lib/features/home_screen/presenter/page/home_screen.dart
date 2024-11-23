import 'package:book_summary_app/features/home_screen/presenter/bloc/home_bloc.dart';
import 'package:book_summary_app/features/home_screen/presenter/page/widgets/avatar_widget.dart';
import 'package:book_summary_app/features/home_screen/presenter/page/widgets/book_swipper/books_swipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({super.key});

  @override
  Widget build(BuildContext context) {
    return _Body();
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, Kelly',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'These books are perfect for you',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: NetworkImage(
                            'https://placehold.co/100x100',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Authors of books',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xFF6B7AFF),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AvatarWidget(name: 'Rene S.'),
                          AvatarWidget(name: 'Gray M.'),
                          AvatarWidget(name: 'Betty S.'),
                          AvatarWidget(name: 'Robert S.'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Books section
                    const Text(
                      'Books for you',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: BooksSwipper(
                        onPressed: () {
                          context
                              .read<HomeBloc>()
                              .add(NavigationAnimationEventInitial());
                        },
                      ),
                    ),
                    SizedBox(
                      height: kBottomNavigationBarHeight,
                    ),
                  ],
                ),
              ),
            ),
            if (state is NavigationAnimationState)
              Expanded(
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  builder: (context, value, child) {
                    return Container(
                      color: Colors.black.withOpacity(value),
                    );
                  },
                ),
              ),
          ],
        );
      },
    );
  }
}
