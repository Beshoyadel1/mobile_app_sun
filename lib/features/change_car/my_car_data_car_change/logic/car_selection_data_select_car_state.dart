abstract class CarSelectionDataSelectCarState {}

class CarInitial extends CarSelectionDataSelectCarState {}

class CarSelected extends CarSelectionDataSelectCarState {
  final int index;
  CarSelected(this.index);
}