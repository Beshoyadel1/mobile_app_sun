import 'package:flutter/cupertino.dart';
import '../../../../../../features/order_list/create_new_order_in_order_list/ui/screens/create_new_order/container_create_new_order.dart';
import '../../../../../../features/order_list/create_new_order_in_order_list/ui/screens/last_button_in_create_new_order_in_order_list.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/container_notes.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_service_bill_payment_in_service_request/container_service.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_address/container_address.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/container_contact_a_maintenance_representative.dart';
import '../../../../../core/constants.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ListDataCreateNewOrderInOrderList extends StatelessWidget {
  const ListDataCreateNewOrderInOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        ContainerCreateNewOrder(),
        ContainerServiceBillPaymentInServiceRequest(),
        AppConstants.isIndividual?    ContainerNotesPaymentInServiceRequest():const SizedBox(),
        AppConstants.isIndividual?  ContainerAddress():const SizedBox(),
        AppConstants.isIndividual?  ContainerContactAMaintenanceRepresentative():const SizedBox(),
        AppConstants.isIndividual?  LastButtonInCreateNewOrderInOrderList():const SizedBox(),
        AppConstants.isIndividual?const SizedBox():  Image.asset(AppImageKeys.successRightIcon, width: 99, height: 99,),
        AppConstants.isIndividual?const SizedBox():  TextInAppWidget(text: 'تم انتهاء صيانة الخدمة',
          textSize: 20,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.darkColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
