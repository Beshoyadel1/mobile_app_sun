import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/custom_widget/row_text_icon_orange.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class PartOneOfFirstRowInContainerRatingInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const PartOneOfFirstRowInContainerRatingInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.reviews,
          textSize: 12,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor:AppColors.darkColor,
        ),
        RowTextIconOrange(
            text: '4,7',
            imagePath: AppImageKeys.star_orange
        )
      ],
    );
  }
}
