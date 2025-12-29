import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';


class RowDateTextMoney extends StatelessWidget {
  final String date,text,money;
  final bool? isPlus;
  const RowDateTextMoney({
    super.key,
    required this.date,
    required this.text,
    required this.money,
    this.isPlus=true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text: date,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.greyColor,
            ),
            TextInAppWidget(
              text: text,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
            ),
          ],
        ),
        TextInAppWidget(
          text: money,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:isPlus!?AppColors.greenColor:AppColors.redColor,
        ),
      ],
    );
  }
}
