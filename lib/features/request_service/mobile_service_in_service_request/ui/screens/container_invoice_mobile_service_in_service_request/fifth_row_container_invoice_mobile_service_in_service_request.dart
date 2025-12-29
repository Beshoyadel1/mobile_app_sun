import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';


class FifthRowContainerInvoiceMobileServiceInServiceRequest extends StatelessWidget {
  const FifthRowContainerInvoiceMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 5,
          children: [
            TextInAppWidget(
              text: AppLanguageKeys.paidBy,
              textSize: 10,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
            ),
            Image.asset(AppImageKeys.visa3,width: 80,)
          ],
        ),
        TextInAppWidget(
          text: '2 يناير ',
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
