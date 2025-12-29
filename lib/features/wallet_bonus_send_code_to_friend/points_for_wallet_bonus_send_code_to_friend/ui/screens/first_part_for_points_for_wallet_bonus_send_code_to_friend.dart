import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class FirstPartForPointsForWalletBonusSendCodeToFriend extends StatelessWidget {
  const FirstPartForPointsForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: TextInAppWidget(
                  text: AppLanguageKeys.myPoints,
                  textSize: 16,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor: AppColors.darkColor,
                ),
              ),
            ],
          ),
        TextInAppWidget(
          text: '500 نقطة',
          textSize: 30,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
