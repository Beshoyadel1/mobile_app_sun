import 'package:flutter/material.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../models/services_center_model.dart';
import '../../my_orders_screen/ui/service_location_screen.dart';
import '../../widgets/custom_image_card.dart';

class CardServices extends StatelessWidget {
  const CardServices({super.key, required this.center});
  final ServiceCenter center;

  @override
  Widget build(BuildContext context) {
    return CustomImageCard(
      width: double.infinity,
      height: 253,
      image: center.image,
      enableGradientOverlay: true,
      overlay: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 29,
                  width: 62,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor.withAlpha(200),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child:
                     Row(
                      children: [
                        const Icon(Icons.location_on_outlined, size: 16, color: AppColors.orangeColor),
                        TextInAppWidget(text: center.distance, textSize: 13, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.orangeColor,),
                      ],
                    ),

                ), CircleAvatar(radius: 17, backgroundColor: AppColors.whiteColor.withAlpha(200), child: const Icon(Icons.favorite,size: 20, color: AppColors.greyColor),),
              ],
            ), Row(
              children: [
                Image.asset(AppImageKeys.steeringWheel,
                    height: 34, width: 34),
                TextInAppWidget(text: center.name, textSize: 20, fontWeightIndex: FontSelectionData.mediumFontFamily, textColor: AppColors.whiteColor),
              ],
            ),
          ],
        ),
      ),
      bottomContent: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInAppWidget(text: center.description, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor, maxLines: 1,),
          Row(
            spacing: 10,
            children: [
             TextInAppWidget(text:center.clock, textSize: 11, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
              Image.asset(AppImageKeys.clockOrangeIcon,height: 20,width: 20,),
             TextInAppWidget(text: center.delivery, textSize: 11, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
              Image.asset(AppImageKeys.deliveryOrangeIcon,height: 20,width: 20,),
              TextInAppWidget(text: center.rating, textSize: 11, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
             Image.asset(AppImageKeys.starOrangeIcon,height: 20,width: 20),
              const Spacer(),
              const Icon(Icons.location_on_outlined,color: AppColors.darkorangeColor,),
              InkWell(onTap: (){   Navigator.of(context).push(NavigateToPageWidget(ServiceLocationScreen(center: center,)),);},
                child:  TextInAppWidget(text:AppLanguageKeys.openMap, textSize: 14, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkorangeColor, decorationText: TextDecoration.underline, decorationTextColor: AppColors.orangeColor,),
              ),

            ],
          )
        ],
      ),
    );
  }
}
