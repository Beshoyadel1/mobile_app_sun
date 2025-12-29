import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class FirstRowInsuranceOffersNew extends StatelessWidget {
  const FirstRowInsuranceOffersNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.yourInsuranceData,
          textSize: 13,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.darkColor,
        ),
        Row(
          children: [
            Image.asset(AppImageKeys.file),
            SizedBox(width: 5,),
            TextInAppWidget(
              text: AppLanguageKeys.insuranceOffersOnly,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
              decorationText: TextDecoration.underline,
              decorationTextColor: AppColors.orangeColor,
            ),
          ],
        )
      ],
    );
  }
}
