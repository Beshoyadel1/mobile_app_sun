import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';

class RowFirstContainerAnnualPayment extends StatelessWidget {
  const RowFirstContainerAnnualPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.annualPayment,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        //RowFirstContainerAnnualPayment
        Row(
          children: [
            TextInAppWidget(
              text: '12000',
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkGreyColor,
            ),
            SizedBox(width: 10,),
            Image.asset(AppImageKeys.coin,width: 12,color:AppColors.darkGreyColor,)
          ],
        )
      ],
    );
  }
}
