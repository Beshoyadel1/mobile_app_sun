import 'package:flutter/cupertino.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/logic/wallet_cubit.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/logic/wallet_state.dart';

class FirstPartWalletPaymentForWalletBonusSendCodeToFriendView
    extends StatefulWidget {
  const FirstPartWalletPaymentForWalletBonusSendCodeToFriendView({super.key});

  @override
  State<FirstPartWalletPaymentForWalletBonusSendCodeToFriendView> createState() =>
      _FirstPartWalletPaymentForWalletBonusSendCodeToFriendViewState();
}

class _FirstPartWalletPaymentForWalletBonusSendCodeToFriendViewState
    extends State<FirstPartWalletPaymentForWalletBonusSendCodeToFriendView> {
  late TextEditingController textFormController;

  @override
  void initState() {
    super.initState();
    textFormController = TextEditingController();
  }

  @override
  void dispose() {
    textFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      bloc: walletCubit,
      buildWhen: (prev, curr) => prev.rechargeAmount != curr.rechargeAmount,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text: AppLanguageKeys.currentBalance,
              textSize: 16,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.darkColor,
            ),
            TextFormFieldWidget(
              isDigitDot: true,
              textFormController: textFormController,
              fillColor: AppColors.transparent,
              borderColor: AppColors.darkColor.withOpacity(0.2),
              hintTextSize: 15,
              hintTextColor: AppColors.darkColor.withOpacity(0.4),
              textSize: 15,
              textFormWidth: 500,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              onChanged: (value) {
                walletCubit.updateRechargeAmount(value);
              },
            ),
          ],
        );
      },
    );
  }
}
