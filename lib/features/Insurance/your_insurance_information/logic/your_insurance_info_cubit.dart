import 'package:flutter_bloc/flutter_bloc.dart';
import 'your_Insurance_info_state.dart';

class YourInsuranceInfoCubit extends Cubit<YourInsuranceInfoState> {
  YourInsuranceInfoCubit() : super(InsuranceInfoInitial());

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
