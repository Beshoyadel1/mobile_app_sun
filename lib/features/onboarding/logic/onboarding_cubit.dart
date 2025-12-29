import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState());

  void setPage(int index) {
    emit(OnboardingState(currentPage: index));
  }

  void nextPage(int maxPage) {
    if (state.currentPage < maxPage - 1) {
      emit(OnboardingState(currentPage: state.currentPage + 1));
    }
  }
}