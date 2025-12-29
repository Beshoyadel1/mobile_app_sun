import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class RowNumberCoinWidget extends StatelessWidget {
  final String numberText,imageSrc;
  final double sizeText;
  final MainAxisAlignment? mainAxisAlignment;

   RowNumberCoinWidget({
     super.key,
     required this.numberText,
     required this.sizeText,
     required this.imageSrc,
     this.mainAxisAlignment,
   });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ?? MainAxisAlignment.center,
      spacing: 5,
      children: [
        TextInAppWidget(
          text: numberText,
          textSize: sizeText,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.orangeColor,
        ),
        Image.asset(imageSrc)
      ],
    );
  }
}
