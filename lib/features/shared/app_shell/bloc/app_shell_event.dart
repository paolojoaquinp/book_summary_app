part of 'app_shell_bloc.dart';

sealed class AppShellEvent extends Equatable {
  const AppShellEvent();

  @override
  List<Object> get props => [];
}
class AppShellPageChangedEvent extends AppShellEvent {
  const AppShellPageChangedEvent(this.pageIndex);

  final int pageIndex;

  @override
  List<Object> get props => [pageIndex];
}
