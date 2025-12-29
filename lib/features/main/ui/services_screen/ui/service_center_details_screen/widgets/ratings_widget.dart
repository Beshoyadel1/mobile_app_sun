import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';


class RatingsWidget extends StatelessWidget {
  const RatingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: AppColors.whiteColor),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Row(
              children: [
                TextInAppWidget(text: AppLanguageKeys.reviews, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                const SizedBox(width: 4),
                TextInAppWidget(text: '4.7', textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                const SizedBox(width: 4),
                Image.asset(AppImageKeys.starOrangeIcon, height: 20, width: 20,),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ButtonWidget(text: AppLanguageKeys.showReviews, textSize: 14, buttonColor: AppColors.lightOrangeColor, heightContainer: 50, widthContainer: double.infinity, borderRadius: 24,),
          ),
        ],
      ),
    );
  }
}
