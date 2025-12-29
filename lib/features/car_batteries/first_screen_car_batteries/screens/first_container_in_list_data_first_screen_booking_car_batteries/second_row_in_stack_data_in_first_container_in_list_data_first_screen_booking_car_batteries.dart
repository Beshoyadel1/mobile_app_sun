import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class SecondRowInStackDataInFirstContainerInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const SecondRowInStackDataInFirstContainerInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Image.asset(AppImageKeys.shield,width: 30,),
        TextInAppWidget(
          text:'أسم مركز الصيانة',
          textSize: 15,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor:AppColors.whiteColor,
        ),
      ],
    );
  }
}
