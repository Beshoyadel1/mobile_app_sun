import 'package:flutter/cupertino.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_mobile_service_in_service_request/first_row_container_bill_payment_in_service_request.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_mobile_service_in_service_request/last_row_container_on_the_way.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_mobile_service_in_service_request/row_lines_container_on_the_way.dart';

class ContainerMobileServiceInServiceRequest extends StatelessWidget {
  const ContainerMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.transparent
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        spacing: 10,
        children: [
          FirstRowContainerMobileServiceInServiceRequest(),
          RowLinesContainerMobileServiceInServiceRequest(),
          LastRowContainerMobileServiceInServiceRequest(),
        ],
      ),
    );
  }
}
