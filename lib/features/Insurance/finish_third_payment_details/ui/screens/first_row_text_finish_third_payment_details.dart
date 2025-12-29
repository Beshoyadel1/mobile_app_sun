import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';

class FirstRowTextFinishThirdPaymentDetails extends StatelessWidget {
  const FirstRowTextFinishThirdPaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.thirdInstallmentDetails,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
      ],
    );
  }
}
