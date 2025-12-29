import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';


class FourthRowContainerServiceRequestMobileService extends StatelessWidget {
  const FourthRowContainerServiceRequestMobileService({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.serviceRating,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        TextInAppWidget(
          text: AppLanguageKeys.notRatedYet,
          textSize: 11,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
