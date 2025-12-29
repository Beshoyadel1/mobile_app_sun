import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_state.dart';

class RadioPaymentCubit extends Cubit<RadioPaymentState> {
  RadioPaymentCubit() : super(RadioPaymentState());

  void selectOption(int index, String imagePath) {
    emit(RadioPaymentState(selectedIndex: index, selectedImage: imagePath));
  }

  void initializeDefault() {
    if (state.selectedIndex == null && state.selectedImage == null) {
      emit(RadioPaymentState(selectedIndex: 0, selectedImage: AppImageKeys.visa1));
    }
  }
}
