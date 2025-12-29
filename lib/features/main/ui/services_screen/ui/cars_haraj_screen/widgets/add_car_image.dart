import 'package:flutter/material.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class AddCarImage extends StatelessWidget {
  const AddCarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 20,

        children: [
          TextInAppWidget(
            text: AppLanguageKeys.attachCarImages,
            textSize: 15.7,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkGreyColor,
          ),
          CircleAvatar(
            radius: 44,
            backgroundColor: AppColors.veryLightOrangeColor.withAlpha(
              100,
            ),
            child: Icon(
              Icons.add,
              color: AppColors.orangeColor,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}
