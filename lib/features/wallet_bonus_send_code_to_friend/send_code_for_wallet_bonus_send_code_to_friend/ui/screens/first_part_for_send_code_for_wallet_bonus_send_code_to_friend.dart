import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class FirstPartForSendCodeForWalletBonusSendCodeToFriend extends StatelessWidget {
  const FirstPartForSendCodeForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:20),
          Row(
            children: [
              Expanded(
                child: TextInAppWidget(
                  text: AppLanguageKeys.inviteFriendText,
                  textSize: 16,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor: AppColors.darkColor,
                ),
              ),
            ],
          ),
        SizedBox(height:50),
        RowNumberCoinWidget(
              numberText: '10.00',
              sizeText: 30,
              imageSrc: AppImageKeys.coin3
          )
      ],
    );
  }
}
