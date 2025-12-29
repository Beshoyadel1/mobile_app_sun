import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';


class RowImageTextInsuranceNewOffersPartOne extends StatelessWidget {
  const RowImageTextInsuranceNewOffersPartOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Image.asset(AppImageKeys.company5,width: 35,),
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:'سايكو',
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
              maxLines: 1,
            ),
            TextInAppWidget(
              text:AppLanguageKeys.integrativeInsurance,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
              maxLines: 1,
            )
          ],
        )
      ],
    );
  }
}
