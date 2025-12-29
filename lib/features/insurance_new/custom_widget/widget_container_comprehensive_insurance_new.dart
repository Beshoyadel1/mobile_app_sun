import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';

class WidgetContainerComprehensiveInsuranceNew extends StatelessWidget {
  final String nameAnnual;
  final String numberPayMonthly;
  final String price;
  void Function()? onTap;

   WidgetContainerComprehensiveInsuranceNew({
    super.key,
    required this.nameAnnual,
    required this.numberPayMonthly,
    required this.price,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 10,
        children: [
          Container(
            width: 50,
            height: 60,
            decoration: const BoxDecoration(
              color: AppColors.pinkColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: TextInAppWidget(
                text: nameAnnual,
                textSize: 8,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkColor,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              TextInAppWidget(
                text: numberPayMonthly,
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkColor,
              ),
              Row(
                spacing: 5,
                children: [
                  TextInAppWidget(
                    text: price,
                    textSize: 11,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.orangeColor,
                  ),
                  Image.asset(AppImageKeys.coin)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
