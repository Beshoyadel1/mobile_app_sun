import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class RowImageWithTwoText extends StatelessWidget {
 final String imagePath,text1,text2;
  const RowImageWithTwoText({
    super.key,
    required this.imagePath,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Image.asset(imagePath),
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text: text1,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.blackColor44,
            ),
            TextInAppWidget(
              text: text2,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
            ),
          ],
        )
      ],
    );
  }
}
