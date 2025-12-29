import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/ui/screens/first_part_for_send_code_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/ui/screens/second_part_for_send_code_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/ui/screens/third_part_for_send_code_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class SendCodeForWalletBonusSendCodeToFriend extends StatelessWidget {
  const SendCodeForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: AppLanguageKeys.sendToFriend,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SizedBox(
              width: 500,
              child: SingleChildScrollView(
                  child: Column(
                    spacing: 60,
                    children: [
                      FirstPartForSendCodeForWalletBonusSendCodeToFriend(),
                      SecondPartForSendCodeForWalletBonusSendCodeToFriend(),
                      ThirdPartForSendCodeForWalletBonusSendCodeToFriend()
                    ],
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
