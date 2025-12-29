import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/custom_widget/column_in_second_row_in_container_spare_parts_and_products_in_list_data_first_screen_booking_car_batteries_widget.dart';
import '../../../../../core/theming/assets.dart';

class SecondRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const SecondRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ColumnInSecondRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteriesWidget(
          title:'زيوت',
          subTitle:'زيت OIL CAR',
          imagePath:AppImageKeys.test101,
          price: '450',
        ),
        ColumnInSecondRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteriesWidget(
          title:'زيوت',
          subTitle:'زيت OIL CAR',
          imagePath:AppImageKeys.test102,
          price: '450',
        ),
        ColumnInSecondRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteriesWidget(
          isNew: true,
          title:'زيوت',
          subTitle:'إطار  30 ميشيل',
          imagePath:AppImageKeys.test101,
          price: '450',
        ),
      ],
    );
  }
}
