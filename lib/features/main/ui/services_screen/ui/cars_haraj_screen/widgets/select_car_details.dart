import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import 'custom_border_container.dart';

class SelectCarDetails extends StatelessWidget {
  const SelectCarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      spacing: 20,
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.defineCarSpecs,
          textSize: 15.7,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkGreyColor,
        ),
        Row(
          spacing: 10,
          children: [
            CustomBorderContainer(text: AppLanguageKeys.gasoline),
            CustomBorderContainer(text: AppLanguageKeys.automatic),
            CustomBorderContainer(text: AppLanguageKeys.manual),
            CustomBorderContainer(text: AppLanguageKeys.electricity),
          ],
        ),
      ],
    );
  }
}
