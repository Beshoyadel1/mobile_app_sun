import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/ui/screens/wallet_payment_for_wallet_bonus_send_code_to_friend_view.dart';

class WalletPaymentForWalletBonusSendCodeToFriend extends StatelessWidget {
  const WalletPaymentForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RadioPaymentCubit(),
      child: WalletPaymentForWalletBonusSendCodeToFriendView(),
    );
  }
}
