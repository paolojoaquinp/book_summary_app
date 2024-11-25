import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:book_summary_app/features/home_screen/domain/repositories/books_repository.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.repository,}) : super(const HomeInitial()) {
    on<HomeInitialEvent>(_onHomeInitialEvent);
    on<NavigationAnimationEventInitial>(_onNavigationAnimationEventInitial);
  }

  final BooksRepository repository;

  Future<void> _onNavigationAnimationEventInitial(
    NavigationAnimationEventInitial event,
    Emitter<HomeState> emit,
  ) async {
    emit(const NavigationAnimationState());
    await Future.delayed(const Duration(milliseconds: 2100)).then((_){
      emit(const HomeInitial());
    });
  }

  Future<void> _onHomeInitialEvent(HomeEvent event, Emitter<HomeState> emit) async {
    // emit(const HomeLoadingState());
    // try {
    //   final result = await repository.getBooksFromAuthorId('1077326');
    //   result.when(ok: (data) {
    //     if(data.isNotEmpty) {
    //       print(data);
    //       emit(HomeLoadedState(data: data));
    //     }
    //   }, err: (err) {
    //             print(err.toString());
    //     emit(HomeErrorState(message: err));
    //   });
    // } catch (err){
    //   emit(HomeErrorState(message: err.toString()));
    // }
  }
}
