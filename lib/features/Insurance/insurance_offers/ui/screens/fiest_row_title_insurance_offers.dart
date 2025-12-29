import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/utilies/map_of_all_app.dart';

class FiestRowTitleInsuranceOffers extends StatelessWidget {
  const FiestRowTitleInsuranceOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextInAppWidget(
            text:AppLanguageKeys.insuranceOffers,
            textSize: 13,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
            maxLines: 1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(AppImageKeys.filter,width: 40,),
            Image.asset(AppImageKeys.search,width: 40,)
          ],
        )
      ],
    );
  }
}
