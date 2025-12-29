import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/theming/text_styles.dart';
import 'circular_progress_widget.dart';

class CustomTextWithCircularProgress extends StatelessWidget {
  const CustomTextWithCircularProgress({super.key, required this.textTitle, required this.textDescription, required this.current, required this.total, });

  final String textTitle;
  final String textDescription;
final int current;
final int total;
  @override
  Widget build(BuildContext context) {
    return   Wrap(
      spacing: 10,
      runSpacing: 5,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        CircularProgressWidget(current: current, total: total),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text: textTitle,
              textSize: 20,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.darkColor,
              maxLines: null,
              isEllipsisTextOverflow: false,
            ),
            TextInAppWidget(
              text: textDescription,
              textSize: 15.7,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
              maxLines: null,
              isEllipsisTextOverflow: false,
            ),
          ],
        ),
      ],
    );

  }
}
