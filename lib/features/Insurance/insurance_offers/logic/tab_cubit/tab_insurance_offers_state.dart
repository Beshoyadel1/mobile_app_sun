abstract class TabInsuranceOffersState {}

class TabInsuranceInitialState extends TabInsuranceOffersState {}

class TabInsuranceChangedState extends TabInsuranceOffersState {
  final int index;
  TabInsuranceChangedState(this.index);
}
