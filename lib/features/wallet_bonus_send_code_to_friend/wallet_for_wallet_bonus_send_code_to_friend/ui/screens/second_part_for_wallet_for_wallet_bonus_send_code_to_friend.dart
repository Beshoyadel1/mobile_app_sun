import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/custom_widget/row_date_text_money.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_for_wallet_bonus_send_code_to_friend/ui/screens/row_second_part_for_wallet_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../core/language/language_constant.dart';

class SecondPartForWalletForWalletBonusSendCodeToFriend extends StatelessWidget {
  const SecondPartForWalletForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        RowSecondPartForWalletForWalletBonusSendCodeToFriend(),
        RowDateTextMoney(
          date: '1/1/2025',
          text: AppLanguageKeys.bonusBalance,
          money: '+ 10ريال',
        ),
        RowDateTextMoney(
          isPlus: false,
          date: '1/1/2025',
          text: AppLanguageKeys.payMaintenanceService,
          money: '- 10ريال',
        ),
        RowDateTextMoney(
          date: '1/1/2025',
          text: AppLanguageKeys.rechargeFromVisa,
          money: '+ 10ريال',
        ),
        RowDateTextMoney(
          isPlus: false,
          date: '1/1/2025',
          text: AppLanguageKeys.payMaintenanceService,
          money: '- 10ريال',
        ),
      ],
    );
  }
}
