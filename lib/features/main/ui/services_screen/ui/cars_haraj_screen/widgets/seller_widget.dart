import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class SellerWidget extends StatelessWidget {
  const SellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        TextInAppWidget(text:AppLanguageKeys.seller, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkGreyColor,),
        Row(
          spacing: 10,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.lightGreyColor,
              radius: 25,
              child: Icon(Icons.person_2_rounded, color: AppColors.whiteColor, size: 36,),
            ),
            TextInAppWidget(text: AppLanguageKeys.sellerName, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
          ],
        ),
      ],
    );
  }
}
