import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/points_for_wallet_bonus_send_code_to_friend/ui/screens/first_part_for_points_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/points_for_wallet_bonus_send_code_to_friend/ui/screens/second_part_for_points_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/colors.dart';
import '../../../profile/custom_widget/appbar_profile_widget.dart';

class PointsForWalletBonusSendCodeToFriend extends StatelessWidget {
  const PointsForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: AppLanguageKeys.points,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
              child: Column(
                spacing: 50,
                children: [
                  FirstPartForPointsForWalletBonusSendCodeToFriend(),
                  SecondPartForPointsForWalletBonusSendCodeToFriend()
                ],
              )
          ),
        ),
      ),
    );
  }
}
