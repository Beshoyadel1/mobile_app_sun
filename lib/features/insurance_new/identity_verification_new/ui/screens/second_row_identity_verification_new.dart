import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class SecondRowIdentityVerificationNew extends StatelessWidget {
  const SecondRowIdentityVerificationNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 10,
          children: [
            Image.asset(AppImageKeys.company5,width: 25,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInAppWidget(
                  text:'سايكو',
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor:AppColors.darkColor,
                ),
                TextInAppWidget(
                  text:AppLanguageKeys.comprehensiveInsurance,
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor:AppColors.orangeColor,
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              spacing: 5,
              children: [
                TextInAppWidget(
                  text:'900.00',
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor:AppColors.orangeColor,
                ),
                Image.asset(AppImageKeys.coin)
              ],
            ),
            TextInAppWidget(
              text:AppLanguageKeys.annualPayment,
              textSize: 14,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor:AppColors.greyColor,
            ),
          ],
        )
      ],
    );
  }
}
