import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class FirstPartWarrantySubscription extends StatelessWidget {
  const FirstPartWarrantySubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Image.asset(AppImageKeys.shield,width: 50,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInAppWidget(
                text: AppLanguageKeys.sunWarranty,
                textSize: 20,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor: AppColors.orangeColor,
              ),
              TextInAppWidget(
                text: 'لمدة 5 سنوات - سينتهي 2/2030',
                textSize: 13,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor: AppColors.darkColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
