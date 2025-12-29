import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';

class ColumnTwoTextInInLastRowContainerOnTheWay extends StatelessWidget {
  const ColumnTwoTextInInLastRowContainerOnTheWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.expectedArrival,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        TextInAppWidget(
          text: 'بعد 20 دقيقة',
          textSize: 11,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
