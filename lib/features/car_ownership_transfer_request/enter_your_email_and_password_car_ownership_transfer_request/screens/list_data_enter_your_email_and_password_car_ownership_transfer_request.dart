import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class ListDataEnterYourEmailAndPasswordCarOwnershipTransferRequest extends StatelessWidget {
  const ListDataEnterYourEmailAndPasswordCarOwnershipTransferRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        FirstNameTextfieldIdentityVerificationNewWidget(
          name: AppLanguageKeys.newUserEmailOrPhone,
          hint: 'amr@gmail,com',
        ),
        FirstNameTextfieldIdentityVerificationNewWidget(
          name: AppLanguageKeys.password,
          hint: AppLanguageKeys.reasonForTransfer,
          maxLines: 5,
        ),
        TextInAppWidget(
          text: AppLanguageKeys.transferNotice,
          textSize: 12,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.greyColor,
        ),
      ],
    );
  }
}
