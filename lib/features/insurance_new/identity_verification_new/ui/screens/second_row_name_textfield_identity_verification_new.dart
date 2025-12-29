import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';
import '../../../../../core/language/language_constant.dart';

class SecondRowNameTextfieldIdentityVerificationNew extends StatelessWidget {
  const SecondRowNameTextfieldIdentityVerificationNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FirstNameTextfieldIdentityVerificationNewWidget(
            name: AppLanguageKeys.carPlateNumber,
          ),
        ),
        SizedBox(width: 10), // optional spacing
        Expanded(
          child: FirstNameTextfieldIdentityVerificationNewWidget(
            name: AppLanguageKeys.chassisNumber,
          ),
        ),
      ],
    );
  }
}
