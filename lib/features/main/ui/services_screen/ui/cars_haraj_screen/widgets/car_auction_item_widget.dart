import 'package:flutter/material.dart';


import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/car_auction_item_model.dart';
import '../../../../widgets/custom_image_card.dart';


class CarAuctionItemWidget extends StatelessWidget {

 const CarAuctionItemWidget({super.key, required this.item, this.heightImage,});

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
          Container(
            decoration: BoxDecoration(
              color: AppColors.orangeColor,
                borderRadius: BorderRadius.circular(10),),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 16, color: AppColors.whiteColor,),
                    TextInAppWidget(text: item.location, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.whiteColor,),

                  ],
                ),
              ),
      )
                ,
            CircleAvatar(
              radius: 14,
              backgroundColor: AppColors.whiteColor.withAlpha(150),
              child: Icon(Icons.favorite, size: 16, color: AppColors.greyColor),
            ),
          ],
        ),
      ),
      bottomContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInAppWidget(
            text: item.description,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
            maxLines: 1,
          ),
          TextInAppWidget(
            text: item.price,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.greyColor,
          ),
        ],
      ),
    );

  }
}
