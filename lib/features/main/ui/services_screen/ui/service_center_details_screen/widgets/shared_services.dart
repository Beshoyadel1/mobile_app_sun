import 'package:flutter/material.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';


class SharedServices extends StatelessWidget {
  const SharedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: TextInAppWidget(text: AppLanguageKeys.sharedServices, textSize: 14, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),),
              Image.asset(AppImageKeys.steeringWheel, height: 22,),
              const SizedBox(width: 4),
              TextInAppWidget(text:AppLanguageKeys.sunWarranty, textSize: 11, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: AppData.services.take(3).map((service) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    service.image ?? "",
                    width: 62,
                    height: 62,
                  ),
                  const SizedBox(height: 6),
                  TextInAppWidget(text: service.title, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
