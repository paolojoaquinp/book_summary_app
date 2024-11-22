part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

}

final class HomeInitial extends HomeState {
  const HomeInitial();

  @override
  List<Object> get props => [];
}

class NavigationAnimationState extends HomeState {
  const NavigationAnimationState();

  @override
  List<Object> get props => [];

}