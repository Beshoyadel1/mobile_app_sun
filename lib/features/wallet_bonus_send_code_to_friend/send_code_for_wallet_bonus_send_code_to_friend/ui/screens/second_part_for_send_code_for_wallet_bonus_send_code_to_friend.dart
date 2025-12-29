import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/logic/copy_cubit.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/ui/screens/part_copy_code.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';


class SecondPartForSendCodeForWalletBonusSendCodeToFriend extends StatelessWidget {
  const SecondPartForSendCodeForWalletBonusSendCodeToFriend({super.key});

  final String referralCode = 'RX164S';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CopyCubit(),
      child: Column(
        spacing: 20,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInAppWidget(
                text: AppLanguageKeys.referralCode,
                textSize: 16,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor: AppColors.darkColor,
              ),
              TextInAppWidget(
                text: referralCode,
                textSize: 16,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor: AppColors.blueColor,
              ),
            ],
          ),
          PartCopyCode()
        ],
      ),
    );
  }
}
