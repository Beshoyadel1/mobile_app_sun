import 'package:flutter_bloc/flutter_bloc.dart';
import 'car_selection_data_select_car_state.dart';

class CarSelectionDataSelectCarCubit extends Cubit<CarSelectionDataSelectCarState> {
  CarSelectionDataSelectCarCubit() : super(CarSelected(0));

  void select(int index) => emit(CarSelected(index));

  void reset() => emit(CarInitial());
}
