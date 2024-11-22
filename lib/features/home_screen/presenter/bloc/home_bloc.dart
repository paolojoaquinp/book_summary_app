import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<NavigationAnimationEventInitial>(_onNavigationAnimationEventInitial);
  }

  Future<void> _onNavigationAnimationEventInitial(
    NavigationAnimationEventInitial event,
    Emitter<HomeState> emit,
  ) async {
    emit(const NavigationAnimationState());
  }
}
