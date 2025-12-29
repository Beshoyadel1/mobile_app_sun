import 'package:flutter/cupertino.dart';
import '../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/row_icon_edit_orange.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class FirstRowInContainerServiceInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const FirstRowInContainerServiceInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.services,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.darkColor,
        ),
        RowIconEditOrange()
      ],
    );
  }
}
