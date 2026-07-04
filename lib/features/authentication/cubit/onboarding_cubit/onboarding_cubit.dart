import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  void updatePageIndicator(int index) {}

  void dotNavigationClick(int index) {}

  void nextPage() {}

  void skipPage() {}
}
