import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class SecondColumnOfDesignRowFinancialTransactions extends StatelessWidget {
  const SecondColumnOfDesignRowFinancialTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: TextInAppWidget(
            text: AppLanguageKeys.paidBy,
            textSize: 8,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkBlueColor,
          ),
        ),
        Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              spacing: 10,
              children: [
                TextInAppWidget(
                  text: '1000',
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor: AppColors.orangeColor,
                ),
                Image.asset(AppImageKeys.coin)
              ],
            ),
            Image.asset(AppImageKeys.visa3)
          ],
        )
      ],
    );
  }
}
