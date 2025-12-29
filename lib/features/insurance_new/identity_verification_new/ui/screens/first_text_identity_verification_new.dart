import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class FirstTextIdentityVerificationNew extends StatelessWidget {
  const FirstTextIdentityVerificationNew({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInAppWidget(
      text:AppLanguageKeys.yourInsuranceData,
      textSize: 16,
      fontWeightIndex: FontSelectionData.mediumFontFamily,
      textColor:AppColors.darkColor,
    );
  }
}
