import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class FirstRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const FirstRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.sparePartsAndProducts,
          textSize: 12,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor:AppColors.darkColor,
        ),
        Row(
          spacing: 5,
          children: [
            Image.asset(AppImageKeys.packet),
            TextInAppWidget(
              text:AppLanguageKeys.viewAll,
              textSize: 12,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor:AppColors.orangeColor,
              decorationText: TextDecoration.underline,
              decorationTextColor: AppColors.orangeColor,
            ),
          ],
        )
      ],
    );
  }
}
