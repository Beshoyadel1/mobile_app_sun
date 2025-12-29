import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';


class FirstRowContainerInvoiceMobileServiceInServiceRequest extends StatelessWidget {
  const FirstRowContainerInvoiceMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.invoice,
          textSize: 10,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        Container(
          width: 80,
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 7),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: AppColors.greyColor,
            )
          ),
          child: Center(
            child: TextInAppWidget(
              text: AppLanguageKeys.details,
              textSize: 10,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
            ),
          ),
        )
      ],
    );
  }
}
