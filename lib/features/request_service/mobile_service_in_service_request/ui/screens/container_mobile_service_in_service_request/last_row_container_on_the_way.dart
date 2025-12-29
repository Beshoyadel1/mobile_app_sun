import 'package:flutter/cupertino.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_mobile_service_in_service_request/column_two_text_in_in_last_row_container_on_the_way.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_mobile_service_in_service_request/row_image_with_two_text_in_last_row_container_on_the_way.dart';

class LastRowContainerMobileServiceInServiceRequest extends StatelessWidget {
  const LastRowContainerMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowImageWithTwoTextInLastRowContainerMobileServiceInServiceRequest(),
        ColumnTwoTextInInLastRowContainerMobileServiceInServiceRequest(),
      ],
    );
  }
}
