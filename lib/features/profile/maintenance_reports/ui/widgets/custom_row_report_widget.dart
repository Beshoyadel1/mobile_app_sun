import 'package:flutter/material.dart';

import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class CustomRowReportWidget extends StatelessWidget {
  const CustomRowReportWidget({super.key, required this.title});
final String title;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextInAppWidget(text:title, textColor: AppColors.blackColor44, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily,),
            Spacer(),
            TextInAppWidget(text:'200.00', textColor: AppColors.orangeColor, textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily,),
            Image.asset(AppImageKeys.coin,height: 19,width: 21,)
          ],
        ),
        Divider(color: AppColors.lightGreyColor, thickness: 1,)
      ],
    );
  }
}
