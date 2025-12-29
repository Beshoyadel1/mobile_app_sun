import 'package:flutter/material.dart';

import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class CustomBorderContainer extends StatelessWidget {
  const CustomBorderContainer({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  CustomContainer(
      isSelected: false,
      onTap: () {},
      typeWidget: TextInAppWidget(
        text: text,
        textSize: 14,
        fontWeightIndex:
        FontSelectionData.regularFontFamily,
        textColor: AppColors.darkGreyColor,
      ),
      border: Border.all(
        color: AppColors.lightGreyColor,
      ),
      borderRadius: BorderRadius.circular(24),
    );
  }
}
