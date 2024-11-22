import 'package:book_summary_app/features/home_screen/presenter/page/home_screen.dart';
import 'package:book_summary_app/features/shared/app_shell/bloc/app_shell_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key});

  static final List<Widget> _pages = [
    const HomeScreen(),
    const Center(
      child: Text('data'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppShellBloc(),
      child: BlocBuilder<AppShellBloc, AppShellState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xff071018),
            body: IndexedStack(
              index: state.currentPageIndex,
              children: _pages,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.currentPageIndex,
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              iconSize: 26.0,
              onTap: (index) => context
                  .read<AppShellBloc>()
                  .add(AppShellPageChangedEvent(index)),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/triangle-fixed.svg',
                    alignment: Alignment.center,
                    height: 22,
                    width: 22,
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                      Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/triangle-fixed.svg',
                    height: 22,
                    width: 22,
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                      Colors.blue,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite_border,),
                  activeIcon: const Icon(Icons.favorite, color: Colors.blue,),
                  label: '',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
