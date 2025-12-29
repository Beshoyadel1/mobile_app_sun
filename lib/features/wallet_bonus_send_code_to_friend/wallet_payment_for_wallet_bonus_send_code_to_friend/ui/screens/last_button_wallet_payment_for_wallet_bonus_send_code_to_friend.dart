import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_done_for_wallet_bonus_send_code_to_friend/ui/wallet_done_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/logic/wallet_cubit.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/logic/wallet_state.dart';
import '../../../../../features/warranty/custom_widget/height_cubit.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/custom_widget/app_snack_bar.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_state.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';


class LastButtonWalletPaymentForWalletBonusSendCodeToFriend extends StatefulWidget {
  const LastButtonWalletPaymentForWalletBonusSendCodeToFriend({super.key});

  @override
  State<LastButtonWalletPaymentForWalletBonusSendCodeToFriend> createState() =>
      _LastButtonWalletPaymentForWalletBonusSendCodeToFriendState();
}

class _LastButtonWalletPaymentForWalletBonusSendCodeToFriendState
    extends State<LastButtonWalletPaymentForWalletBonusSendCodeToFriend> {
  late RadioPaymentCubit cubit;
  late HeightCubit cubit2;

  @override
  void initState() {
    super.initState();
    cubit = context.read<RadioPaymentCubit>();
    cubit2 = context.read<HeightCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioPaymentCubit, RadioPaymentState>(
      builder: (context, state) {
        return Container(
          width: 500,
          decoration: BoxDecoration(
            color: AppColors.orangeColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: BlocBuilder<WalletCubit, WalletState>(
            bloc: walletCubit,
            buildWhen: (previous, current) => previous.balance != current.balance,
            builder: (context, walletState) {
              return ButtonWidget(
                text: AppLanguageKeys.payment,
                textColor: AppColors.darkColor,
                buttonColor: AppColors.whiteColor,
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                heightContainer: 40,
                borderRadius: 30,
                  onTap: () {
                    if (state.selectedIndex != null && state.selectedImage != null) {
                      walletCubit.addRechargeToBalance();
                      cubit2.changeHeight(300);

                      Navigator.of(context).push(
                        NavigateToPageWidget(
                          const WalletDoneForWalletBonusSendCodeToFriend(),
                        ),
                      );
                    } else {
                      AppSnackBarWidget.show(
                        context,
                        AppLanguageKeys.selectPaymentOptionFirst,
                      );
                    }
                  }

              );
            },
          ),
        );
      },
    );
  }
}
