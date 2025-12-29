import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class FirstTitleInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const FirstTitleInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInAppWidget(
      text:AppLanguageKeys.confirmServiceBooking,
      textSize: 13,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      textColor:AppColors.greyColor,
    );
  }
}
