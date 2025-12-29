import 'package:flutter_bloc/flutter_bloc.dart';

class HeightCubit extends Cubit<double> {
  HeightCubit(double initialHeight) : super(initialHeight);

  void changeHeight(double newHeight) => emit(newHeight);
}
