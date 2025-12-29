import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/custom_widget/row_date_text_money.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/points_for_wallet_bonus_send_code_to_friend/ui/screens/row_second_part_for_points_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../core/language/language_constant.dart';


class SecondPartForPointsForWalletBonusSendCodeToFriend extends StatelessWidget {
  const SecondPartForPointsForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        RowSecondPartForPointsForWalletBonusSendCodeToFriend(),
        RowDateTextMoney(
          date: '1/1/2025',
          text: AppLanguageKeys.bonusPoints,
          money: '+ 10ريال',
        ),
        RowDateTextMoney(
          isPlus: false,
          date: '1/1/2025',
          text: AppLanguageKeys.redeemPointsService,
          money: '- 10ريال',
        ),
        RowDateTextMoney(
          date: '1/1/2025',
          text: AppLanguageKeys.rechargeFromVisaPoints,
          money: '+ 10ريال',
        ),
        RowDateTextMoney(
          isPlus: false,
          date: '1/1/2025',
          text: AppLanguageKeys.redeemPointsService,
          money: '- 10ريال',
        ),
      ],
    );
  }
}
