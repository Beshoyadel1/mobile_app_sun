
import '../../models/service_model.dart';

class FavoriteServicesState {
  final List<ServiceModel> selectedServices;

  FavoriteServicesState({required this.selectedServices});

  FavoriteServicesState copyWith({List<ServiceModel>? selectedServices}) {
    return FavoriteServicesState(
      selectedServices: selectedServices ?? this.selectedServices,
    );
  }
}
