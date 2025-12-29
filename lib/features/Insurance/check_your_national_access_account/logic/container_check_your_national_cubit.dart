import 'package:bloc/bloc.dart';
import 'container_check_your_national_state.dart';

class ContainerCheckYourNationalCubit extends Cubit<ContainerCheckYourNationalState> {
  ContainerCheckYourNationalCubit() : super(ContainerInitialState());

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
