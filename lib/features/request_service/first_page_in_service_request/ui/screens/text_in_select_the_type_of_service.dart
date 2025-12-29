import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class TextInSelectTheTypeOfService extends StatelessWidget {
  final String text;
  const TextInSelectTheTypeOfService({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextInAppWidget(
          text: text,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
      ],
    );
  }
}
