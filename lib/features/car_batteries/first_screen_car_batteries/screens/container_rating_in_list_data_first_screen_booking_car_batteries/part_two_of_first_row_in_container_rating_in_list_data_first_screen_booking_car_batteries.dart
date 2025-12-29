import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class PartTwoOfFirstRowInContainerRatingInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const PartTwoOfFirstRowInContainerRatingInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsGeometry.all(10),
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              color: AppColors.transparent
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkColor.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
       child: TextInAppWidget(
        text:AppLanguageKeys.viewReviews,
        textSize: 11,
        fontWeightIndex: FontSelectionData.mediumFontFamily,
        textColor:AppColors.whiteColor,
      ),
    );
  }
}
