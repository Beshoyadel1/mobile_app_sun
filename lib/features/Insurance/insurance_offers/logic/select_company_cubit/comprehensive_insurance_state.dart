
abstract class ComprehensiveInsuranceState {}

class ComprehensiveInsuranceInitialState extends ComprehensiveInsuranceState {}

class ComprehensiveInsuranceChangedState extends ComprehensiveInsuranceState {
  final int index;
  ComprehensiveInsuranceChangedState(this.index);
}

