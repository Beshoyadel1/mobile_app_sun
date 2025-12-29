import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/car_batteries/choose_time_car_batteries/logic/select_day_in_choose_time_car_batteries_state.dart';

class SelectDayInChooseTimeCarBatteriesCubit extends Cubit<SelectDayInChooseTimeCarBatteriesState> {
  SelectDayInChooseTimeCarBatteriesCubit() : super(SelectTimeInitial());

  void selectIndex(int index) {
    emit(SelectTimeChanged(index));
  }
}
