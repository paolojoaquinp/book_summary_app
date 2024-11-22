import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'books_swipper_event.dart';
part 'books_swipper_state.dart';

class BooksSwipperBloc extends Bloc<BooksSwipperEvent, BooksSwipperState> {
  BooksSwipperBloc() : super(BooksSwipperInitial()) {
    on<BooksPageInitialized>(_onInitialized);
    on<BooksPageChanged>(_onPageChanged);
  }

  Future<void> _onInitialized(BooksPageInitialized event, Emitter<BooksSwipperState> emit) async {
    final pageController = PageController(viewportFraction: 0.7, initialPage: 1);
    pageController.addListener(() {
      add(BooksPageChanged(pageController.page ?? 1.0));
    });
    emit(BooksWidgetLoaded(pageController: pageController, currentPage: 1.0));
  }

  Future<void> _onPageChanged(BooksPageChanged event, Emitter<BooksSwipperState> emit) async {
    if (state is BooksWidgetLoaded) {
      final currentState = state as BooksWidgetLoaded;
      emit(BooksWidgetLoaded(
        pageController: currentState.pageController,
        currentPage: event.currentPage,
      ));
    }
  }
}
