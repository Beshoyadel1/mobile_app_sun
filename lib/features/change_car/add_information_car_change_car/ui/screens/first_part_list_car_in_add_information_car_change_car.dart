import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';

class FirstPartListCarInAddInformationCarChangeCar extends StatelessWidget {
  const FirstPartListCarInAddInformationCarChangeCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        FirstNameTextfieldIdentityVerificationNewWidget(
            name: AppLanguageKeys.carOwner,
            hint: 'عمرو محي الدين',
        ),
        Row(
          spacing: 10,
          children: [
            Expanded(
              child: FirstNameTextfieldIdentityVerificationNewWidget(
                name: AppLanguageKeys.carPlateNumber,
                hint: '  ي ف س 323',
              ),
            ),
            Expanded(
              child: FirstNameTextfieldIdentityVerificationNewWidget(
                name: AppLanguageKeys.carChassisNumber,
                hint: '5353AS',
              ),
            )
          ],
        )
      ],
    );
  }
}
