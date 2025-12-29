import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class ColumnInSecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  final String? text,price;
  const ColumnInSecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries({
    super.key,
    this.text,
    this.price
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        TextInAppWidget(
          text:text?? AppLanguageKeys.batteries,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.darkColor,
        ),
        RowNumberCoinWidget(
            numberText:price?? '500',
            sizeText: 13,
            imageSrc: AppImageKeys.coin
        )
      ],
    );
  }
}
