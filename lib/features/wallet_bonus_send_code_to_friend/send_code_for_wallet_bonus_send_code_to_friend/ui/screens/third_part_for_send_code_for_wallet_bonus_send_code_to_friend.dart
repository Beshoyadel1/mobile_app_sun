import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class ThirdPartForSendCodeForWalletBonusSendCodeToFriend extends StatelessWidget {
  const ThirdPartForSendCodeForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.shareLink,
          textSize: 16,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.darkColor,
        ),
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImageKeys.app1),
            Image.asset(AppImageKeys.app2),
            Image.asset(AppImageKeys.app3),
            Image.asset(AppImageKeys.app4)
          ],
        )
      ],
    );
  }
}
