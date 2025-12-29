import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class RowListSunWarrantyFeaturesWidget extends StatelessWidget {
  final String text;
  const RowListSunWarrantyFeaturesWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Image.asset(AppImageKeys.correct,width: 20,),
        Expanded(
          child: TextInAppWidget(
            text: text,
            textSize: 11,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
          ),
        ),
      ],
    );
  }
}
