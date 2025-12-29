import 'package:flutter/cupertino.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/container_notes.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_service_bill_payment_in_service_request/container_service.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_invoice_mobile_service_in_service_request/container_invoice_mobile_service_in_service_request.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_mobile_service_in_service_request/container_mobile_service_in_service_request.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_service_request/container_service_request.dart';

class ListDataOnTheWayOrderList extends StatelessWidget {
  const ListDataOnTheWayOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerMobileServiceInServiceRequest(),
        ContainerServiceBillPaymentInServiceRequest(),
        ContainerNotesPaymentInServiceRequest(),
        ContainerServiceRequest(),
        ContainerInvoiceMobileServiceInServiceRequest(),
      ],
    );
  }
}
