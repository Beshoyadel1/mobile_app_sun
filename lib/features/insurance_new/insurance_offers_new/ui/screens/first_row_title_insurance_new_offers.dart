import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/utilies/map_of_all_app.dart';

class FirstRowTitleInsuranceNewOffers extends StatelessWidget {
  const FirstRowTitleInsuranceNewOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInAppWidget(
      text:AppLanguageKeys.selectInsuranceType,
      textSize: 13,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      textColor: AppColors.darkColor,
      maxLines: 1,
    );
  }
}
