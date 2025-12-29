import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/service_model.dart';
import 'favorite_state.dart';

class FavoriteServicesCubit extends Cubit<FavoriteServicesState> {
  FavoriteServicesCubit() : super(FavoriteServicesState(selectedServices: []));

  void toggleService(ServiceModel service) {
    final current = List<ServiceModel>.from(state.selectedServices);
    if (current.contains(service)) {
      current.remove(service);
    } else {
      current.add(service);
    }
    emit(state.copyWith(selectedServices: current));
  }
}