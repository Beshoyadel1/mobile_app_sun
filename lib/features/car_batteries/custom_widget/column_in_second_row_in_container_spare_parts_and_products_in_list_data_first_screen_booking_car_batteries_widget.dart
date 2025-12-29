import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../features/car_batteries/custom_widget/Column_image_text_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/container_shared_services_in_list_data_first_screen_booking_car_batteries/first_row_in_container_shared_services_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ColumnInSecondRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteriesWidget extends StatelessWidget {
  final String title,subTitle,imagePath,price;
  final bool isNew;
  const ColumnInSecondRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteriesWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.price,
    this.isNew=false
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        spacing: 5,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInAppWidget(
                text: title,
                textSize: 10,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor: AppColors.greyColor,
              ),
              if (isNew)
                TextInAppWidget(
                  text:AppLanguageKeys.newItem,
                  textSize: 10,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor: AppColors.blueColor,
                ),
            ],
          ),
          Image.asset(imagePath),
          TextInAppWidget(
            text:subTitle,
            textSize: 10,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor:AppColors.darkColor,
          ),
          RowNumberCoinWidget(
              numberText: price,
              sizeText: 13,
              imageSrc: AppImageKeys.coin
          )
        ],
      ),
    );
  }
}
