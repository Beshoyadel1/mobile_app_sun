import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ImageLabelDividerContainerCheckYourNationalAccessAccountNew extends StatelessWidget {
  const ImageLabelDividerContainerCheckYourNationalAccessAccountNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImageKeys.nafathLogo,width: 80,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            TextInAppWidget(
              text: AppLanguageKeys.loginViaAbsher,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: AppColors.greyColor,
              thickness: 1,
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}
