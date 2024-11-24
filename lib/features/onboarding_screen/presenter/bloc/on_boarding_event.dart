part of 'on_boarding_bloc.dart';

sealed class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();

}

class AddCategoryEvent extends OnBoardingEvent {
  const AddCategoryEvent({
    required this.category,
  });

  final String category;

  @override
  List<Object> get props => [category];
}

class NavigateToNewScreenEvent extends OnBoardingEvent {
  const NavigateToNewScreenEvent();
  
  @override
  List<Object?> get props => [];
}