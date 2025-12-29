import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/stack_data_in_first_container_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class FirstTitleInListDataChooseTimeCarBatteries extends StatelessWidget {
  const FirstTitleInListDataChooseTimeCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInAppWidget(
      text:AppLanguageKeys.confirmBookingTime,
      textSize: 13,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      textColor:AppColors.greyColor,
    );
  }
}
