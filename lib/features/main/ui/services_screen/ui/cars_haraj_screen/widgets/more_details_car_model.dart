import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/car_auction_item_model.dart';

class MoreDetailsCarModel extends StatelessWidget {
  const MoreDetailsCarModel({super.key, required this.car});
  final CarAuctionItemModel car;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 28,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextInAppWidget(text: AppLanguageKeys.price300, textSize: 26, fontWeightIndex: FontSelectionData.mediumFontFamily, textColor: AppColors.orangeColor, maxLines: 1,),
            Spacer(),
            Image.asset(AppImageKeys.steeringWheel, height: 34, width: 34,),
            TextInAppWidget(text: AppLanguageKeys.sunWarranty, textSize: 14, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
          ],
        ),

        Row(
          spacing: 10,
          children: [
            Image.asset(AppImageKeys.automaticIcon, height: 15, width: 15,),
            TextInAppWidget(text: AppLanguageKeys.automatic, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor, maxLines: 1,),
            Image.asset(AppImageKeys.banzenIcon, height: 15, width: 15,),
            TextInAppWidget(text:AppLanguageKeys.gasoline, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor, maxLines: 1,),
            Image.asset(AppImageKeys.timerIconOrange, height: 15, width: 15,),
            TextInAppWidget(text: '50KM', textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor, maxLines: 1,),
            Spacer(),
            TextInAppWidget(text: AppLanguageKeys.model2022, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkGreyColor,),
          ],
        ),
        TextInAppWidget(text: car.description, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkGreyColor,),

      ],
    );
  }
}
