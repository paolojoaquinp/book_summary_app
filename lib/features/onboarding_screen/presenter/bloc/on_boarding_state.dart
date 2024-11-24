part of 'on_boarding_bloc.dart';

class OnBoardingState extends Equatable {
  const OnBoardingState({
    required this.categories,
  });

  final List<String> categories;

  OnBoardingState copyWith({List<String>? categories}) {
    return OnBoardingState(categories: categories ?? this.categories);
  }

  @override
  List<Object> get props => [categories];
}

class OnBoardingInitial extends OnBoardingState {
  OnBoardingInitial({required super.categories});
}
