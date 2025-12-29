import 'package:flutter/material.dart';


import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../widgets/custom_feature_row.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 10,
          children: [
            CircleAvatar(
              backgroundColor:
              AppColors.veryLightOrangeColor.withAlpha(60),
              radius: 27,
              child: Image.asset(AppImageKeys.washingCleaningService,
                  height: 30, width: 30),
            ),
            TextInAppWidget(text: AppLanguageKeys.premiumPackage, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.mediumFontFamily,),
          ],
        ),
        CustomFeatureRow(text: AppLanguageKeys.fullCleaning, icon: Icons.check_circle, iconColor: AppColors.greenColor, iconSize: 13, textSize: 10,),
        CustomFeatureRow(text: AppLanguageKeys.interiorPolish, icon: Icons.check_circle, iconColor: AppColors.greenColor, iconSize: 13, textSize: 10,),
        CustomFeatureRow(text: AppLanguageKeys.oilChange, icon: Icons.check_circle, iconColor: AppColors.greenColor, iconSize: 13, textSize: 10,
        ),
      ],
    );
  }
}
