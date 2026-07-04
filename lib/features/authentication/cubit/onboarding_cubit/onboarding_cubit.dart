import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  final pageController = PageController();
  int currentIndex = 0;

  void updatePageIndicator(int index) {
    currentIndex = index;
  }

  void dotNavigationClick(int index) {
    currentIndex = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentIndex == 2) {
      //
    } else {
      pageController.jumpToPage(++currentIndex);
    }
  }

  void skipPage() {
    pageController.jumpToPage(2);
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
