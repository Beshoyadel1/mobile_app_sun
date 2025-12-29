import 'package:flutter/cupertino.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_contact_a_maintenance_representative_bill_payment_in_service_request/part_one_row_image_name_icon_container_contact_a_maintenance_representative.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_contact_a_maintenance_representative_bill_payment_in_service_request/part_two_row_image_name_icon_container_contact_a_maintenance_representative.dart';

class RowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest extends StatelessWidget {
  const RowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PartOneRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest(),
        PartTwoRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest()
      ],
    );
  }
}
