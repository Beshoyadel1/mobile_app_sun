abstract class SelectDayInChooseTimeCarBatteriesState {}

class SelectTimeInitial extends SelectDayInChooseTimeCarBatteriesState {}

class SelectTimeChanged extends SelectDayInChooseTimeCarBatteriesState {
  final int selectedIndex;
  SelectTimeChanged(this.selectedIndex);
}
