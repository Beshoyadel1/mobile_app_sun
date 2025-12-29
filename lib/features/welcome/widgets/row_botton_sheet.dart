

import 'package:flutter/material.dart';
import '../../../core/language/language_constant.dart';
import '../../../core/pages_widgets/button_widget.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';

class RowBottonSheet extends StatelessWidget {
  const RowBottonSheet({super.key, required this.onTap, this.skipText, this.nextText});
final Function onTap;
final String? skipText;
final String? nextText;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 35,
      children: [
        ButtonWidget(
          borderRadius: 50,
          heightContainer:57 ,
          widthContainer: 132,
          text:skipText ??AppLanguageKeys.skipLater,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.secondaryColor,
          onTap: (){
         //   Navigator.of(context).pushReplacement(
           //   NavigateToPageWidget(const DetailsLoginScreen()),
          //  );
          },
          textSize: 18,
          isTextCenter: true,

        ),
        ButtonWidget(
          heightContainer:57 ,
          widthContainer: 182,
          borderRadius: 50,
          text:nextText ??AppLanguageKeys.next,
          textColor: AppColors.whiteColor,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          buttonColor: AppColors.orangeColor,
          onTap: ()=> onTap(),
          textSize: 18,
          isTextCenter: true,

        ),
      ],
    );
  }
}