import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theming/assets.dart';
import '../../../../features/insurance_new/page_choose_payment_details_new/logic/radio_payment_new_state.dart';

class RadioPaymentNewCubit extends Cubit<RadioPaymentNewState> {
  RadioPaymentNewCubit() : super(RadioPaymentNewState());

  void selectOption(int index, String imagePath) {
    emit(RadioPaymentNewState(selectedIndex: index, selectedImage: imagePath));
  }

  void initializeDefault() {
    if (state.selectedIndex == null && state.selectedImage == null) {
      emit(RadioPaymentNewState(selectedIndex: 0, selectedImage: AppImageKeys.visa1));
    }
  }
}
