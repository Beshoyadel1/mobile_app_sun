import 'package:flutter_bloc/flutter_bloc.dart';

import 'select_care_state.dart';




class SelectedCarCubit extends Cubit<SelectedCarState> {
  SelectedCarCubit() : super(SelectedCarState());

  void changeCar(String name) {
    emit(SelectedCarState(selectedCarName: name));
  }
}
