import 'package:flutter_bloc/flutter_bloc.dart';
import 'comprehensive_insurance_state.dart';

class ComprehensiveInsuranceCubit extends Cubit<ComprehensiveInsuranceState> {
  ComprehensiveInsuranceCubit() : super(ComprehensiveInsuranceInitialState());

  static ComprehensiveInsuranceCubit get(context) => BlocProvider.of<ComprehensiveInsuranceCubit>(context);

  int selectedIndex=0;

  void selectCompany(int index) {
    selectedIndex = index;
    emit(ComprehensiveInsuranceChangedState(index));
  }
}
