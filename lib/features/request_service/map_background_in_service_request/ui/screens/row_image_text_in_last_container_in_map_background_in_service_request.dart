import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';


class RowImageTextInLastContainerInMapBackgroundInServiceRequest extends StatelessWidget {
  const RowImageTextInLastContainerInMapBackgroundInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            AppImageKeys.emp,
          ),
        ),
        TextInAppWidget(
          text:'اسم الفني',
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.darkColor,
        ),
      ],
    );
  }
}
