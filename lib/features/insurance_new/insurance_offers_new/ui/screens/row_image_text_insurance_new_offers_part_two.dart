import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class RowImageTextInsuranceNewOffersPartTwo extends StatelessWidget {
  const RowImageTextInsuranceNewOffersPartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          spacing: 5,
          children: [
            TextInAppWidget(
              text:AppLanguageKeys.carModel,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
              maxLines: 1,
            ),
            Icon(Icons.edit,color:AppColors.orangeColor,size: 11,),
            TextInAppWidget(
              text:AppLanguageKeys.edit,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
              maxLines: 1,
              decorationText: TextDecoration.underline,
              decorationTextColor: AppColors.orangeColor,
            ),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            TextInAppWidget(
              text:'CR  - V',
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
              maxLines: 1,
            ),
            Image.asset(AppImageKeys.car1,width: 70)
          ],
        )
      ],
    );
  }
}
