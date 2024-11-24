import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState(categories: [], shouldAnimate: false,)) {
    on<OnBoardingEvent>((event, emit) {
      // TODO: implement event handler
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
   // Primero activamos la animación del header
    emit(state.copyWith(shouldAnimate: true));
  }
}
