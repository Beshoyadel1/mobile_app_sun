import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/custom_container.dart';
import 'package:sun_system_app/core/pages_widgets/text_form_field_widget.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';

import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../../welcome/widgets/botton_sheet.dart';
import '../../../../../models/car_auction_item_model.dart';
import '../../../../widgets/custom_image_card.dart';
import '../widgets/body_details_car.dart';
import '../widgets/call_botton_sheet.dart';
import '../widgets/push_auction.dart';

class CarDetailsScreen extends StatelessWidget {
  final CarAuctionItemModel car;
   CarDetailsScreen({super.key, required this.car, required this.selectedIndex});
  final int selectedIndex;
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfile(
        image: AppImageKeys.notification,
        title: AppLanguageKeys.audiA80,
        showDefaultProfileImage: true,
      ),
      bottomSheet: Builder(
        builder: (context) {
      if (selectedIndex == 0) {
        return CallBottonSheet();
      } else if (selectedIndex == 1) {
        return BottonSheet(
          containerHeight: 100,
          containerColor: AppColors.orangeColor,
          buttonWidget: CustomContainer(
                borderRadius: BorderRadius.circular(24),
                border: Border(),
                containerColor: AppColors.whiteColor,
                typeWidget: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120.0),
                  child: TextInAppWidget(text: AppLanguageKeys.requestAuction,textSize: 18,fontWeightIndex: FontSelectionData.mediumFontFamily,textColor: AppColors.orangeColor,),
                ),
                isSelected: false,
                onTap: (){
                  showModalBottomSheet(
                    backgroundColor: AppColors.whiteColor,
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    builder: (context) {
                      return PushAuction();
                    },
                  );
                },) , onTap: (){},
        );
      } else {
        return SizedBox.shrink();
      }
    },
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SizedBox(
              width: 388,
              child: CustomImageCard(
                color: AppColors.scaffoldColor,
                height: 250,
                image: car.image,
                borderRadius: 27,
                bottomContent: BodyDetailsCar(car: car)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
