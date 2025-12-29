import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/screens/design_cubit_list_visa_new.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class ContainerListVisaNew extends StatelessWidget {
  const ContainerListVisaNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: EdgeInsetsGeometry.symmetric(vertical: 13,horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInAppWidget(
            text: AppLanguageKeys.paymentMethod,
            textSize: 14,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
          ),
          SizedBox(height: 15,),
          DesignCubitListVisaNew(),
        ],
      ),
    );
  }
}
