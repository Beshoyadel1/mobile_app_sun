import 'package:flutter/cupertino.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_address/container_address.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/container_contact_a_maintenance_representative.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_map/container_map.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_on_the_way/container_on_the_way.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_service/container_service.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_notes/container_notes.dart';

class ListDataYourRequestOnTheWayInServiceRequest extends StatelessWidget {
  const ListDataYourRequestOnTheWayInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerOnTheWay(),
        ContainerService(),
        ContainerNotes(),
        ContainerAddress(),
        ContainerContactAMaintenanceRepresentative(),
        ContainerMap()
      ],
    );
  }
}
