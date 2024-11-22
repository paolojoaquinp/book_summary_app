part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

}


class NavigationAnimationEventInitial extends HomeEvent {
  const NavigationAnimationEventInitial();
  
  @override
  List<Object?> get props => [];
}



