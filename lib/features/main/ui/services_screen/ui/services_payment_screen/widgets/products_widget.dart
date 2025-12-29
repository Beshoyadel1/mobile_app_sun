import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';


class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomContainer(
        isSelected: false,
        onTap: () {},
        borderRadius: BorderRadius.circular(14),
        border: Border(),
        typeWidget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                TextInAppWidget(
                  text:AppLanguageKeys.products,
                  textSize: 14,
                  textColor: AppColors.darkColor,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                ),
                Row(
                  spacing: 12,
                  children: [
                    CircleAvatar(
                      backgroundColor:
                      AppColors.veryLightOrangeColor.withAlpha(60),
                      radius: 27,
                      child: Image.asset(
                        AppImageKeys.spareParts4,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Column(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInAppWidget(
                          text:AppLanguageKeys.bridgestoneTire,
                          textSize: 14,
                          textColor: AppColors.darkColor,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                        ),
                        TextInAppWidget(
                          text: AppLanguageKeys.price450,
                          textSize: 10,
                          textColor: AppColors.orangeColor,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )));
  }
}
