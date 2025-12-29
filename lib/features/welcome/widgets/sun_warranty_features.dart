import 'package:flutter/material.dart';

import '../../../core/language/language_constant.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/theming/text_styles.dart';
import '../../main/ui/widgets/custom_feature_row.dart';


class SunWarrantyFeatures extends StatelessWidget {
  const SunWarrantyFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 18,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.sunWarrantyFeatures,
          textSize: 17,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.darkColor,
        ),
        CustomFeatureRow(text: AppLanguageKeys.warrantyCenters,textSize: 15,iconSize: 20,),
        CustomFeatureRow(text:  AppLanguageKeys.carWarrantyAuction,textSize: 15,iconSize: 20,),
        CustomFeatureRow(text: AppLanguageKeys.freeMaintenance,textSize: 15,iconSize: 20,)
      ],
    );
  }
}

