import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';


class FourthRowContainerInvoiceMobileServiceInServiceRequest extends StatelessWidget {
  const FourthRowContainerInvoiceMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.total,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        RowNumberCoinWidget(
            numberText: '450',
            sizeText: 15,
            imageSrc: AppImageKeys.coin
        ),
      ],
    );
  }
}
