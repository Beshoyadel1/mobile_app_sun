import 'package:flutter/cupertino.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/part_one_row_image_name_icon_container_contact_a_maintenance_representative.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/part_two_row_image_name_icon_container_contact_a_maintenance_representative.dart';

class RowImageNameIconContainerContactAMaintenanceRepresentative extends StatelessWidget {
  const RowImageNameIconContainerContactAMaintenanceRepresentative({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PartOneRowImageNameIconContainerContactAMaintenanceRepresentative(),
        PartTwoRowImageNameIconContainerContactAMaintenanceRepresentative()
      ],
    );
  }
}
