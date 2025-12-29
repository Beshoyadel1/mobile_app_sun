
import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/car_auction_item_model.dart';
import '../../../../widgets/custom_image_card.dart';

class CarAuctionWidget extends StatelessWidget {

  const CarAuctionWidget({super.key, required this.item, this.heightImage,});

  final CarAuctionItemModel item;
  final double? heightImage;
  @override
  Widget build(BuildContext context) {
    return  CustomImageCard(
      height: heightImage??180,
      image: item.image,
      overlay: Padding(
        padding: const EdgeInsets.only(bottom: 62, left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AppImageKeys.steeringWheel, height: 34, width: 34),
            CircleAvatar(
              radius: 14,
              backgroundColor: AppColors.whiteColor.withAlpha(200),
              child: Icon(Icons.favorite, size: 16, color: AppColors.greyColor),
            ),
          ],
        ),
      ),
      bottomContent: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5,),
          Row(
            spacing: 10,
            children: [
              Image.asset(AppImageKeys.automaticIcon, height: 15, width: 15),
              TextInAppWidget(
                text: AppLanguageKeys.automatic,
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkGreyColor,
                maxLines: 1,
              ),
              Image.asset(AppImageKeys.banzenIcon, height: 15, width: 15),
              TextInAppWidget(
                text: AppLanguageKeys.gasoline,
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkGreyColor,
                maxLines: 1,
              ),
              Image.asset(AppImageKeys.timerIconOrange, height: 15, width: 15),
              TextInAppWidget(
                text: '50 KM',
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkGreyColor,
                maxLines: 1,
              ),
              Spacer(),
              TextInAppWidget(
                text: AppLanguageKeys.price300,
                textSize: 16,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.orangeColor,
                maxLines: 1,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInAppWidget(
                text: AppLanguageKeys.audiA80,
                textSize: 20,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor: AppColors.darkColor,
              ),
              TextInAppWidget(
                text: AppLanguageKeys.model2022,
                textSize: 16,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkGreyColor,
              ),
            ],
          ),
        ],
      ),
    );

  }
}
