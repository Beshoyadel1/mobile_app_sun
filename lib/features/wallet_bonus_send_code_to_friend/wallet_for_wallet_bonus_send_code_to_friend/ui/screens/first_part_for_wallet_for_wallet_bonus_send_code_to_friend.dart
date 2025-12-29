import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/logic/wallet_cubit.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/logic/wallet_state.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/ui/wallet_payment_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../features/warranty/custom_widget/show_modal_bottom_sheet_widget.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class FirstPartForWalletForWalletBonusSendCodeToFriend extends StatelessWidget {
  const FirstPartForWalletForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,

      children: [
        SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: TextInAppWidget(
                  text: AppLanguageKeys.currentBalance,
                  textSize: 16,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor: AppColors.darkColor,
                ),
              ),
              ButtonWidget(
                text:AppLanguageKeys.rechargeWallet,
                textColor: AppColors.whiteColor,
                buttonColor: AppColors.orangeColor,
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                heightContainer: 40,
                widthContainer:100,
                borderRadius: 30,
                onTap: (){
                  showCustomBottomSheet(context: context, child: WalletPaymentForWalletBonusSendCodeToFriend(),height: 600);
                },
              )
            ],
          ),

        BlocBuilder<WalletCubit, WalletState>(
          bloc: walletCubit,
          buildWhen: (previous, current) => previous.balance != current.balance,
          builder: (context, state) {
            return RowNumberCoinWidget(
              numberText: state.balance,
              sizeText: 30,
              imageSrc: AppImageKeys.coin3,
            );
          },
        ),
      ],
    );
  }
}
