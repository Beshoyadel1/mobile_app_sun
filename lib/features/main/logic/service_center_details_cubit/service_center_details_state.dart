import '../../models/services_item.dart';
import '../../models/spare_part_model.dart';

abstract class ServiceCenterDetailsState {}

class ServiceCenterDetailsInitial extends ServiceCenterDetailsState {}

class ServiceCenterDetailsBooked extends ServiceCenterDetailsState {}

class SparePartsAndProductsState extends ServiceCenterDetailsState {}





class SparePartDetailsState extends ServiceCenterDetailsState {
  final SparePartModel part;
  SparePartDetailsState(this.part);
}

class SelectServicesState extends ServiceCenterDetailsState {
  final String selectedTab;
  final List<ServiceItem> services;
  final List<ServiceItem> specificServices;
  final List<PackageItem> packages;
  final int? selectedPackageIndex;

  SelectServicesState({
    required this.selectedTab,
    required this.services,
    required this.specificServices,
    required this.packages,
    this.selectedPackageIndex,
  });
}


class ServiceDateState extends ServiceCenterDetailsState {
  final int selectedDayIndex;
  final int selectedTimeIndex;

  ServiceDateState({
    this.selectedDayIndex = -1,
    this.selectedTimeIndex = -1,
  });

  ServiceDateState copyWith({
    int? selectedDayIndex,
    int? selectedTimeIndex,
  }) {
    return ServiceDateState(
      selectedDayIndex: selectedDayIndex ?? this.selectedDayIndex,
      selectedTimeIndex: selectedTimeIndex ?? this.selectedTimeIndex,
    );
  }
}

class ServicePaymentState extends ServiceCenterDetailsState {}

class ContactHighwayCenterState extends ServiceCenterDetailsState {}

