import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/insurance_new/check_your_national_access_account_new/ui/screens/container_check_your_national_access_account_new.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';


class CheckYournNationalAccessAccountNew extends StatelessWidget {
  const CheckYournNationalAccessAccountNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    TextInAppWidget(
                      text:AppLanguageKeys.checkAbsherAccount,
                      textSize: 16,
                      fontWeightIndex: FontSelectionData.mediumFontFamily,
                      textColor:AppColors.darkColor,
                    ),
                    ContainerCheckYourNationalAccessAccountNew(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
