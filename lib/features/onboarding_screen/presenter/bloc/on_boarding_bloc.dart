import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState(categories: [], shouldAnimate: false,)) {
    on<OnBoardingEvent>((event, emit) {
    });
    on<AddCategoryEvent>(_onAddCategoryEvent);
    on<NavigateToNewScreenEvent>(_onNavigateToNewScreenEvent);
  }

  void _onAddCategoryEvent(AddCategoryEvent event, Emitter<OnBoardingState> emit) {
    final category = event.category;
    final updateCategories = List<String>.from(state.categories)..add(category);
    emit(state.copyWith(categories: updateCategories));
  }

  void _onNavigateToNewScreenEvent(NavigateToNewScreenEvent event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(shouldAnimate: true));
  }
}
