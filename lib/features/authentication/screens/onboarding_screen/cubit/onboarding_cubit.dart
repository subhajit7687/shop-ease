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
      emit(state + 1);
      if(state <= 2) {
        pageController.jumpToPage(state);
      }
   
  }

  void skipPage() {
    emit(3);
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
