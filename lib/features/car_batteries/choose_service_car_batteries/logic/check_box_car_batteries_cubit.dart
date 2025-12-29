import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxCarBatteriesCubit extends Cubit<bool> {
  CheckBoxCarBatteriesCubit() : super(false);

  void toggle(bool value) => emit(value);
}
