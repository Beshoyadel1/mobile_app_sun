import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/specific_service_model.dart';
import 'services_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(ServicesInitial());

  final List<ServicesState> _history = [];

  void _pushState(ServicesState state) {
    _history.add(this.state);
    emit(state);
  }

  void selectSizeIndex(int index) {
    emit(SelectSizeIndex(index));
  }

  void selectService(SpecificServiceModel service) {
    _pushState(PremiumServiceSelected(service));
  }

  int selectedPaymentIndex = -1;

  void selectPaymentMethod(int index) {
    selectedPaymentIndex = index;
    emit(TypeServiceSelected(index));
  }

  void selectTypeService(int index) {
    _pushState(TypeServiceSelected(index));
  }

  void reset() {
    _history.clear();
    emit(ServicesInitial());
  }

  void goBack() {
    if (_history.isNotEmpty) {
      final lastState = _history.removeLast();
      emit(lastState);
    } else {
      emit(ServicesInitial());
    }
  }
}
