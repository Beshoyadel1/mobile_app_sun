import 'package:flutter/material.dart';
import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/car_auction_item_model.dart';
import '../../../../widgets/custom_image_card.dart';
import '../ui/car_details_screen.dart';



class ViewAuctionList extends StatelessWidget {
  ViewAuctionList({super.key});
  final cars = AppData.cars;
  @override
  Widget build(BuildContext context) {
    return    Column(
      children: cars.map((car) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: SizedBox(
            width: 371,
            height: 194,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    NavigateToPageWidget(CarDetailsScreen(car: car,selectedIndex: 1,)));
              },
              child: ViewAuctionWidget(
                item: car,

              ),
            ),
          ),
        );
      }).toList(),
    );

  }
}
class ViewAuctionWidget extends StatelessWidget {
  const ViewAuctionWidget({super.key, required this.item});
  final CarAuctionItemModel item;
  @override
  Widget build(BuildContext context) {
    return  CustomImageCard(
      borderRadius: 20,
      fullImage: true,
      height: 194,
      width: double.infinity,
      image:item.image,
      overlay: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Padding(
          padding: const EdgeInsets.only(top: 92,left: 12,right: 12),
          child: TextInAppWidget(text: item.description, textSize: 20, fontWeightIndex: FontSelectionData.mediumFontFamily, textColor: AppColors.whiteColor, maxLines: 1,),
        ),
       Padding(
         padding: const EdgeInsets.only(top: 112,left: 12,right: 12),

         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             TextInAppWidget(text:AppLanguageKeys.auction, textSize: 16, fontWeightIndex: FontSelectionData.boldFontFamily, textColor: AppColors.whiteColor, maxLines: 1,),
             TextInAppWidget(text: item.price, textSize: 16, fontWeightIndex: FontSelectionData.boldFontFamily, textColor: AppColors.veryLightOrangeColor, maxLines: 1,),
           ]

          ),
       ),])


    );
  }
}

