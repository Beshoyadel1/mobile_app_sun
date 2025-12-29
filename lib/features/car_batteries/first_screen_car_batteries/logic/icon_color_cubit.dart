import 'package:flutter_bloc/flutter_bloc.dart';

class IconColorCubit extends Cubit<bool> {
  IconColorCubit() : super(false);

  void toggleColor() => emit(!state);
}
