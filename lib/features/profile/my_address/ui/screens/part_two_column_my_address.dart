import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';

class PartTwoColumnMyAddress extends StatelessWidget {
  const PartTwoColumnMyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.carModel,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextInAppWidget(
              text: 'CR  - V',
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor34,
            ),
            Image.asset(AppImageKeys.car1)
          ],
        ),

      ],
    );
  }
}
