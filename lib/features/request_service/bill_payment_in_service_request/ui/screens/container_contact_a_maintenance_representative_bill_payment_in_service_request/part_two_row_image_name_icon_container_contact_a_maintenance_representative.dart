import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../features/request_service/calling_in_service_request/ui/calling_in_service_request.dart';
import '../../../../../../features/request_service/chat_in_service_request/ui/chat_in_service_request.dart';
import '../../../../../../features/request_service/custom_widget/Container_icon_widget.dart';

class PartTwoRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest extends StatelessWidget {
  const PartTwoRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ContainerIconWidget(
          imagPath: AppImageKeys.call,
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                  CallingInServiceRequest()
              ),
            );
          },
        ),
        ContainerIconWidget(
          imagPath: AppImageKeys.message,
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                  ChatInServiceRequest()
              ),
            );
          },
        ),
      ],
    );
  }
}
