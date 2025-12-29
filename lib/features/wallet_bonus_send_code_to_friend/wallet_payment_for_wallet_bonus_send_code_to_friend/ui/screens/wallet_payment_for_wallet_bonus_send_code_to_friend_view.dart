import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/page_choose_payment_details/ui/screens/container_list_visa.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/ui/screens/last_button_wallet_payment_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/ui/screens/first_part_wallet_payment_for_wallet_bonus_send_code_to_friend_view.dart';
import '../../../../../core/theming/colors.dart';

class WalletPaymentForWalletBonusSendCodeToFriendView extends StatelessWidget {
  const WalletPaymentForWalletBonusSendCodeToFriendView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      FirstPartWalletPaymentForWalletBonusSendCodeToFriendView(),
                      ContainerListVisa(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LastButtonWalletPaymentForWalletBonusSendCodeToFriend(),
    );
  }
}
