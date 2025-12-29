import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/spare_part_model.dart';



class SparePartCard extends StatelessWidget {
  final SparePartModel part;

  const SparePartCard({super.key, required this.part});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 120,
        height: 160,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextInAppWidget(text: part.partName, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkGreyColor,),
                  if (part.isNew) ...[
                    const SizedBox(width: 4),
                    const TextInAppWidget(
                      text: AppLanguageKeys.newKey,
                      textSize: 12,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.seaBlueColor,
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(height: 16),
            SizedBox(width: 72, height: 57, child: Image.asset(part.image, fit: BoxFit.fill),),
            const SizedBox(height: 8),
            TextInAppWidget(text: part.description, textSize: 10, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor, maxLines: 2,),
            const SizedBox(height: 4),
            TextInAppWidget(text: part.price, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.orangeColor,
            ),
          ],
        ),
      ),
    );
  }
}
