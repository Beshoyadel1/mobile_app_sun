

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/AppDataList.dart';
import 'basic_services_state.dart';

class BasicServicesCubit extends Cubit<BasicServicesState> {
  BasicServicesCubit() : super(BasicServicesInitial(AppData.serviceCenters));

  List<String> selectedServices = [];
  String? selectedOrder;
  List<String> selectedFeatures = [];
  List<String> selectedWarranties = [];


  final ScrollController scrollController = ScrollController();

  int selectedIndex = 0;

  void _scrollToSelected(int index) {
    if (scrollController.hasClients) {
      final position = index * 190.0;
      scrollController.animateTo(
        position,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void setSelectedIndex(int index) {
    selectedIndex = index;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSelected(index);
    });

    emit(BasicServicesInitial(AppData.serviceCenters));
  }


  void toggleService(String service) {
    if (selectedServices.contains(service)) {
      selectedServices.remove(service);
    } else {
      selectedServices.add(service);
    }
    applyFilter();
  }

  void toggleFeature(String feature) {
    if (selectedFeatures.contains(feature)) {
      selectedFeatures.remove(feature);
    } else {
      selectedFeatures.add(feature);
    }
    applyFilter();
  }

  void toggleWarranty(String warranty) {
    if (selectedWarranties.contains(warranty)) {
      selectedWarranties.remove(warranty);
    } else {
      selectedWarranties.add(warranty);
    }
    applyFilter();
  }

  void setOrder(String? order) {
    selectedOrder = order;
    applyFilter();
  }

  void applyFilter() {
    var filtered = AppData.serviceCenters;
    if (selectedServices.isNotEmpty) {
      filtered = filtered.where((c) =>
          selectedServices.any((s) => c.description.toLowerCase().contains(s.toLowerCase()))
      ).toList();
    }
    if (selectedFeatures.isNotEmpty) {
      filtered = filtered.where((c) =>
          selectedFeatures.any((f) => c.delivery.toLowerCase().contains(f.toLowerCase()))
      ).toList();
    }
    if (selectedWarranties.isNotEmpty && !selectedWarranties.contains("جميع المراكز")) {
      filtered = filtered.where((c) =>
          selectedWarranties.any((w) => c.description.toLowerCase().contains(w.toLowerCase()))
      ).toList();
    }

    if (selectedOrder != null) {
      if (selectedOrder == "الأعلى تقييم") {
        filtered.sort((a, b) => double.parse(b.rating).compareTo(double.parse(a.rating)));
      } else if (selectedOrder == "الأقل سعر") {
        // TODO: sorting logic
      } else if (selectedOrder == "الأعلى سعر") {
        // TODO: sorting logic
      }
    }

    emit(BasicServicesFiltered(filtered));
  }

  void resetFilter() {
    selectedServices.clear();
    selectedOrder = null;
    selectedFeatures.clear();
    selectedWarranties.clear();
    emit(BasicServicesInitial(AppData.serviceCenters));
  }
}
