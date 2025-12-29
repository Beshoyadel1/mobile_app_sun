import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';

class ColumnTwoTextInInLastRowContainerCreateNewOrder extends StatelessWidget {
  const ColumnTwoTextInInLastRowContainerCreateNewOrder({super.key, this.title, this.subtitle});
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        TextInAppWidget(
          text: title??AppLanguageKeys.expectedArrival,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        TextInAppWidget(
          text: subtitle??'بعد 20 دقيقة',
          textSize: 11,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
