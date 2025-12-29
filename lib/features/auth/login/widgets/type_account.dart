import 'package:flutter/cupertino.dart';


import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/button_widget.dart';

import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';


class TypeAccount extends StatelessWidget {
  const TypeAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:Wrap(
        alignment: WrapAlignment.center,
        spacing: 20,
        runSpacing: 10,
        children: [
          ButtonWidget(
            heightContainer: 48,
            widthContainer: 157,
            borderRadius: 10,
            image: AppImageKeys.apple,
            imageHeight: 22,
            imageWidth: 22,
            text: AppLanguageKeys.appleAccount,
            textColor: AppColors.darkColor,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            buttonColor: AppColors.lightGreenColor,
            onTap: () {},
            textSize: 16,
          ),
          ButtonWidget(
            heightContainer: 48,
            widthContainer: 157,
            borderRadius: 10,
            image: AppImageKeys.google,
            imageHeight: 22,
            imageWidth: 22,
            text: AppLanguageKeys.googleAccount,
            textColor: AppColors.darkColor,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            buttonColor: AppColors.lightGreenColor,
            onTap: () {},
            textSize: 16,
          ),
        ],
      )

    );
  }
}
