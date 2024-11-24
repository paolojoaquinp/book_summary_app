part of 'on_boarding_bloc.dart';

enum AnimationStep { initial, header, list, button, completed }

class OnBoardingState extends Equatable {
  const OnBoardingState({
    required this.categories,
    required this.shouldAnimate,
  });

  final List<String> categories;
  final bool shouldAnimate;

  OnBoardingState copyWith({
    List<String>? categories,
    bool? shouldAnimate,
  }) {
    return OnBoardingState(
      categories: categories ?? this.categories,
      shouldAnimate: shouldAnimate ?? this.shouldAnimate,
    );
  }

  @override
  List<Object> get props => [categories, shouldAnimate];
}

class OnBoardingInitial extends OnBoardingState {
  OnBoardingInitial({required super.categories, required super.shouldAnimate});
}
