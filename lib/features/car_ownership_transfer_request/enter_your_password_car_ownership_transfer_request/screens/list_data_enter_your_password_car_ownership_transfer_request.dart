import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';

class ListDataEnterYourPasswordCarOwnershipTransferRequest extends StatelessWidget {
  const ListDataEnterYourPasswordCarOwnershipTransferRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        FirstNameTextfieldIdentityVerificationNewWidget(
          name: AppLanguageKeys.yourPassword,
          hint: 'عمرو محي الدين',
          isPassword: true,
        ),
      ],
    );
  }
}
