import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/custom_widget/app_snack_bar.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/logic/copy_cubit.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/logic/copy_state.dart' hide CopyCubit;
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class PartCopyCode extends StatelessWidget {
  const PartCopyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CopyCubit, CopyState>(
      buildWhen: (previous, current) => previous.copied != current.copied,
      builder: (context, state) {
        if (state.copied) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            AppSnackBarWidget.show(context, AppLanguageKeys.codeCopiedSuccessfully);
            Future.delayed(const Duration(seconds: 2), () {
              if (context.mounted) {
                context.read<CopyCubit>().reset();
              }
            });
          });
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                context.read<CopyCubit>().copyCode(AppLanguageKeys.referralCode, context);
              },
              icon: Icon(
                state.copied ? Icons.check : Icons.copy,
                color: state.copied
                    ? AppColors.greyColor
                    : AppColors.greyColor,
              ),
            ),
            TextInAppWidget(
              text:AppLanguageKeys.copyCode,
              textSize: 16,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.greyColor,
            ),
          ],
        );
      },
    );
  }
}
