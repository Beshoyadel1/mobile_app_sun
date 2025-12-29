import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class SecondRowInContainerModelCarInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const SecondRowInContainerModelCarInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        TextInAppWidget(
          text:'CR  - V',
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.darkColor,
        ),
        Image.asset(AppImageKeys.car1)
      ],
    );
  }
}
