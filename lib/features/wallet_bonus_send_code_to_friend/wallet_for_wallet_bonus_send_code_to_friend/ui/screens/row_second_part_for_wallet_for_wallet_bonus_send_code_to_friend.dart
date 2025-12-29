import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class RowSecondPartForWalletForWalletBonusSendCodeToFriend extends StatefulWidget {
  const RowSecondPartForWalletForWalletBonusSendCodeToFriend({super.key});

  @override
  State<RowSecondPartForWalletForWalletBonusSendCodeToFriend> createState() => _RowSecondPartForWalletForWalletBonusSendCodeToFriendState();
}

class _RowSecondPartForWalletForWalletBonusSendCodeToFriendState extends State<RowSecondPartForWalletForWalletBonusSendCodeToFriend> {

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: TextInAppWidget(
            text: AppLanguageKeys.walletTransactionDetails,
            textSize: 12,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor: AppColors.darkColor,
          ),
        ),
        ButtonWidget(
          text:AppLanguageKeys.viewAll,
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.blueColor,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          heightContainer: 40,
          widthContainer:100,
          borderRadius: 30,
          onTap: (){
          },
        )
      ],
    );
  }
}
