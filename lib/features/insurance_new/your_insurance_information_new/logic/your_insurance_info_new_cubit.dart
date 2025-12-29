import 'package:flutter_bloc/flutter_bloc.dart';
import 'your_Insurance_info_new_state.dart';

class YourInsuranceInfoNewCubit extends Cubit<YourInsuranceInfoNewState> {
  YourInsuranceInfoNewCubit() : super(InsuranceInfoInitial());

  void linkInsurance() async {
    emit(InsuranceInfoLoading());

    await Future.delayed(const Duration(seconds: 2));

    emit(InsuranceInfoSuccess());
  }

  void goToNavigated() => emit(InsuranceInfoNavigated());

  void onButtonPressed() {
    if (state is InsuranceInfoInitial) {
      linkInsurance();
    } else if (state is InsuranceInfoSuccess) {
      goToNavigated();
    }
  }

  void reset() => emit(InsuranceInfoInitial());
}
