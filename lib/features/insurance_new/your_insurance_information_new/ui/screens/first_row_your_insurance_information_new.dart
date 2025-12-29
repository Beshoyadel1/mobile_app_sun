import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';


class FirstRowYourInsuranceInformationNew extends StatelessWidget {
  const FirstRowYourInsuranceInformationNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            children: [
              Image.asset(AppImageKeys.company3, width: 22),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInAppWidget(
                    text: AppLanguageKeys.scienceInsurance,
                    textSize: 14,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.darkColor,
                  ),
                  TextInAppWidget(
                    text: AppLanguageKeys.comprehensiveInsurance,
                    textSize: 14,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.orangeColor,
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextInAppWidget(
                  text: '900',
                  textSize: 15,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor: AppColors.orangeColor,
                ),
                const SizedBox(width: 5),
                Image.asset(AppImageKeys.coin, width: 15),
              ],
            ),
            const SizedBox(height: 10),
            TextInAppWidget(
              text: AppLanguageKeys.annualPayment,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.greyColor,
            ),
          ],
        ),
      ],
    );
  }
}
