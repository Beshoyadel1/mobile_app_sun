import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class DesignLastTextInSecondPartListCarInAddInformationCarChangeCar extends StatelessWidget {
  const DesignLastTextInSecondPartListCarInAddInformationCarChangeCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.carFiles,
          textSize: 12,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor:AppColors.greyColor,
        ),
      ],
    );
  }
}
