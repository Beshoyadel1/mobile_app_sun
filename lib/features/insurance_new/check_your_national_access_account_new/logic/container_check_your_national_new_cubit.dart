import 'package:bloc/bloc.dart';
import 'container_check_your_national_new_state.dart';

class ContainerCheckYourNationalNewCubit extends Cubit<ContainerCheckYourNationalNewState> {
  ContainerCheckYourNationalNewCubit() : super(ContainerInitialState());

  void goToInitial() => emit(ContainerInitialState());

  void goToReplaced() => emit(ContainerReplacedState());

  void goToNavigated() => emit(ContainerNavigatedState());

  void onButtonPressed() {
    if (state is ContainerInitialState) {
      goToReplaced();
    } else if (state is ContainerReplacedState) {
      goToNavigated();
    }
  }
}
