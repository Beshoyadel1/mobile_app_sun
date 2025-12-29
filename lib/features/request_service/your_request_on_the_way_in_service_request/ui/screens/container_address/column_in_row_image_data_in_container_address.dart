import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';

class ColumnInRowImageDataInContainerAddress extends StatelessWidget {
  const ColumnInRowImageDataInContainerAddress ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.yourCarAddress,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        TextInAppWidget(
          text: '20 شارع ملك فهد - الملز',
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
