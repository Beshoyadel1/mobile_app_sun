
import '../../models/specific_service_model.dart';

class ServicesState {}

class ServicesInitial extends ServicesState {}

class PremiumServiceSelected extends ServicesState {
  final SpecificServiceModel service;
  PremiumServiceSelected(this.service);
}
class TypeServiceSelected extends ServicesState {
  final int selectedIndex;

  TypeServiceSelected(this.selectedIndex);
}

class SelectSizeIndex extends ServicesState {
  final int selectedSizeIndex;

  SelectSizeIndex(this.selectedSizeIndex);
}
