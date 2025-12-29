import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';



class InvoiceWidget extends StatelessWidget {
  const InvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomContainer(
      isSelected: false,
      onTap: () {},
      borderRadius: BorderRadius.circular(14),
      border: Border(),
      typeWidget: Padding(
          padding: const EdgeInsets.all(8.0),
          child:const Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInAppWidget(text: AppLanguageKeys.invoice, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
              SizedBox(height: 5,),
              InvoiceRow(title: AppLanguageKeys.totalServices, value: AppLanguageKeys.price300,),
              InvoiceRow(title: AppLanguageKeys.taxes, value: AppLanguageKeys.price300,),
              Divider(color: AppColors.greyColor, thickness: 1),
              InvoiceRow(title: AppLanguageKeys.taxes, value:  AppLanguageKeys.price300, valueSize: 14, valueColor: AppColors.orangeColor,
              ),
            ],
          )

      ),
    );
  }
}




class InvoiceRow extends StatelessWidget {final String title;final String value;final double valueSize;final Color valueColor;
const InvoiceRow({super.key, required this.title, required this.value, this.valueSize = 12, this.valueColor = AppColors.darkColor,});
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(text: title, textSize: 12, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
        TextInAppWidget(text: value, textSize: valueSize, textColor: valueColor, fontWeightIndex: FontSelectionData.mediumFontFamily,),
      ],
    ),
  );
}
}