import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/services_item.dart';
import '../services_cubit/services_cubit.dart';
import 'service_center_details_state.dart';


import 'package:bloc/bloc.dart';

class ServiceCenterDetailsCubit extends Cubit<ServiceCenterDetailsState> {
  ServiceCenterDetailsCubit() : super(ServiceCenterDetailsInitial());
  final List<ServiceCenterDetailsState> _stateStack = [];




  void goBack(BuildContext context) {
    if (_stateStack.isNotEmpty) {
      emit(_stateStack.removeLast());
    }else {
      Navigator.of(context).pop();
      ServicesCubit().selectTypeService(0);

    }
  }


  void startBooking() {
    emit(ServiceDateState());
  }

  void selectDay(int index) {
    final current = state as ServiceDateState;
    emit(current.copyWith(selectedDayIndex: index));
  }

  void selectTime(int index) {
    final current = state as ServiceDateState;
    emit(current.copyWith(selectedTimeIndex: index));
  }

  void bookService() {
    _stateStack.add(state);
    emit(SelectServicesState(
      selectedTab: 'services',
      services: services,
      packages: packages,
      specificServices: specificServices,
    ));
  }

  void selectTab(String tab) {
    final currentState = state as SelectServicesState;
    emit(SelectServicesState(
      selectedTab: tab,
      services: currentState.services,
      packages: currentState.packages,
      specificServices:currentState.specificServices,
    ));
  }


  void toggleServiceCheckbox(int index) {
    final currentState = state as SelectServicesState;
    final updatedServices = List<ServiceItem>.from(currentState.services);
    updatedServices[index] = ServiceItem(
      name: updatedServices[index].name,
      price: updatedServices[index].price,
      image: updatedServices[index].image,
      isChecked: !updatedServices[index].isChecked,
    );
    final updatedSpecificServices = List<ServiceItem>.from(currentState.specificServices);
    updatedSpecificServices[index] = ServiceItem(
      name: updatedSpecificServices[index].name,
      price: updatedSpecificServices[index].price,
      image: updatedSpecificServices[index].image,
      isChecked: !updatedSpecificServices[index].isChecked,
    );
    emit(SelectServicesState(
      selectedTab: currentState.selectedTab,
      services: updatedServices,
      packages: currentState.packages,
      specificServices:updatedSpecificServices,
    ));
  }

  void togglePackageCheckbox(int index) {
    final currentState = state as SelectServicesState;
    final updatedPackages = List<PackageItem>.from(currentState.packages);
    updatedPackages[index] = PackageItem(
      name: updatedPackages[index].name,
    );
    emit(SelectServicesState(
      selectedTab: currentState.selectedTab,
      services: currentState.services,
      packages: updatedPackages,
      specificServices:currentState.specificServices,
      selectedPackageIndex: index,
    ));
  }
}