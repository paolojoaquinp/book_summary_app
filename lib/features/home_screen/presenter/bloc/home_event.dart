part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

}

class HomeInitialEvent extends HomeEvent {
  const HomeInitialEvent();
  @override
  List<Object?> get props => [];
}


class NavigationAnimationEventInitial extends HomeEvent {
  const NavigationAnimationEventInitial();
  
  @override
  List<Object?> get props => [];
}



