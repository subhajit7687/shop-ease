import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  final pageController = PageController();

  void updatePageIndicator(int index) {
    emit(index);
  }

  void dotNavigationClick(int index) {
    emit(index);
    pageController.jumpToPage(state);
  }

  void nextPage() {
    if (state == 2) {
      //
    } else {
      emit(state + 1);
      pageController.jumpToPage(state);
    }
  }

  void skipPage() {
    emit(2);
    pageController.jumpToPage(state);
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
