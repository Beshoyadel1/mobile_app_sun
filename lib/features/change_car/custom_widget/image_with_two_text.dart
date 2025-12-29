import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class ImageWithTwoText extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String subTitle;
   ImageWithTwoText({
     super.key,
     required this.imageSrc,
     required this.title,
     required this.subTitle,
   });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imageSrc, width: 50),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:title,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
            ),
            const SizedBox(height: 5),
            TextInAppWidget(
              text: subTitle,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.orangeColor,
            ),
          ],
        ),
      ],
    );
  }
}
