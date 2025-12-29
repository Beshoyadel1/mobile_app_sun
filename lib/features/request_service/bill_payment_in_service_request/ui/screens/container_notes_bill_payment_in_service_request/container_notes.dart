import 'package:flutter/cupertino.dart';
import '../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/first_row_container_notes_payment_in_service_request.dart';

class ContainerNotesPaymentInServiceRequest extends StatelessWidget {
  const ContainerNotesPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomContainer(
      onTap: (){},
      isSelected: true,
      borderRadius: BorderRadius.circular(10),
      border: Border(),
      containerColor: AppColors.whiteColor,

      typeWidget:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          FirstRowContainerNotesPaymentInServiceRequest(),
          TextInAppWidget(
            text: 'لمبة المكينة شغالة، أرجو فحصها بجهاز OBD',
            textSize: 13,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
          ),
        ],
      ),
    );
  }
}
