part of 'app_shell_bloc.dart';

class AppShellState extends Equatable {
  final int currentPageIndex;

  const AppShellState({
    this.currentPageIndex = 0,
  });

  AppShellState copyWith({
    int? currentPageIndex,
  }) {
    return AppShellState(
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
    );
  }

  @override
  List<Object> get props => [currentPageIndex];
}