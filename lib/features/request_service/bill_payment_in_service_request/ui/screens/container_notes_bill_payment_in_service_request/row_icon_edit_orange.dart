import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/theming/assets.dart';

class RowIconEditOrange extends StatelessWidget {
  const RowIconEditOrange({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Image.asset(AppImageKeys.edit5),
        TextInAppWidget(
          text: AppLanguageKeys.edit,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.orangeColor,
          decorationText: TextDecoration.underline,
          decorationTextColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
