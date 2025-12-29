import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class SecondRowInContainerTimeInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const SecondRowInContainerTimeInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          TextInAppWidget(
            text:'1 يناير',
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:AppColors.darkColor,
          ),
          TextInAppWidget(
            text:'الثلاثاء 3:00 م ',
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:AppColors.orangeColor,
          ),
        ],
      ),
    );
  }
}
