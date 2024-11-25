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

class HomeLoadingState extends HomeState {
  const HomeLoadingState();
  
  @override
  List<Object?> get props => [];
}
class HomeLoadedState extends HomeState {
  const HomeLoadedState({
    required this.data,
  });
  
  final List<BookFromAuthorModel> data;

  @override
  List<Object?> get props => [data];
}

class HomeErrorState extends HomeState {
  const HomeErrorState({required this.message});

  final String message;
  
  @override
  List<Object?> get props => [message];
}