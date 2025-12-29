import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class DesignFirstTextInSecondPartListCarInAddInformationCarChangeCar extends StatelessWidget {
  const DesignFirstTextInSecondPartListCarInAddInformationCarChangeCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.carLicense,
          textSize: 12,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor:AppColors.greyColor,
        ),
      ],
    );
  }
}
