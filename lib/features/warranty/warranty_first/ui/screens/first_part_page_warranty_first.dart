import 'package:flutter/cupertino.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';
class FirstPartPageWarrantyFirst extends StatelessWidget {
  const FirstPartPageWarrantyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SizedBox(height: 10,),
        Image.asset(AppImageKeys.shield),
        TextInAppWidget(
          text: AppLanguageKeys.sunWarranty,
          textSize: 28,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.orangeColor,
        ),
        TextInAppWidget(
          text: AppLanguageKeys.warrantyPeriod,
          textSize: 20,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.darkColor,
        ),
        SizedBox(height: 10,),
        RowNumberCoinWidget(
            numberText: '400',
            sizeText: 34,
            imageSrc: AppImageKeys.coin2,
        ),
      ],
    );
  }
}
