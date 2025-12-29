import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_bill_payment_in_service_request/container_since_two_day_ago.dart';

class FirstRowContainerMobileServiceInServiceRequest extends StatelessWidget {
  const FirstRowContainerMobileServiceInServiceRequest ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.mobileService,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        ContainerSinceTwoDayAgoBillPaymentInServiceRequest(),
      ],
    );
  }
}
//