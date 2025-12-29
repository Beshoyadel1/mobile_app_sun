import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';
import '../../../../features/Insurance/identity_verification/ui/screens/button_identity_verification.dart';

class IdentityVerification extends StatelessWidget {
  const IdentityVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textFormController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SizedBox(
              width: 500,
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInAppWidget(
                    text:AppLanguageKeys.enterPolicyData,
                    textSize: 16,
                    fontWeightIndex: FontSelectionData.mediumFontFamily,
                    textColor:AppColors.darkColor,
                  ),
                  TextInAppWidget(
                    text:AppLanguageKeys.policyNumber,
                    textSize: 14,
                    fontWeightIndex: FontSelectionData.mediumFontFamily,
                    textColor:AppColors.darkColor,
                  ),
                  TextFormFieldWidget(
                    textFormController: textFormController,
                    fillColor: AppColors.whiteColor,
                    borderColor:AppColors.darkColor.withOpacity(0.2),
                    textFormWidth: 300,
                  ),
                  ButtonIdentityVerification()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
