import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';
import '../../../../../core/language/language_constant.dart';

class FirstNameTextfieldIdentityVerificationNew extends StatelessWidget {
  const FirstNameTextfieldIdentityVerificationNew({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textFormController = TextEditingController();
    return FirstNameTextfieldIdentityVerificationNewWidget(
        name: AppLanguageKeys.beneficiaryName,
        hint: 'عمرو محي الدين',
    );
  }
}
