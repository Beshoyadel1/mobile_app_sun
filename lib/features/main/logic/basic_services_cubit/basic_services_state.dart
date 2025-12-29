
import '../../models/services_center_model.dart';


abstract class BasicServicesState {}

class BasicServicesInitial extends BasicServicesState {
  final List<ServiceCenter> centers;
  BasicServicesInitial(this.centers);
}

class BasicServicesFiltered extends BasicServicesState {
  final List<ServiceCenter> filteredCenters;
  BasicServicesFiltered(this.filteredCenters);
}

class BasicServicesSelectionChanged extends BasicServicesState {

  BasicServicesSelectionChanged();
}

class BasicServicesIndexChanged extends BasicServicesState{}