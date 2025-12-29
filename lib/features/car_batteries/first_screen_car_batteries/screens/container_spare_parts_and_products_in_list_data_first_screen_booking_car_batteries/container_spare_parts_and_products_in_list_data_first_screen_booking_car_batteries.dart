import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/container_spare_parts_and_products_in_list_data_first_screen_booking_car_batteries/second_row_in_container_spare_parts_and_products_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/container_spare_parts_and_products_in_list_data_first_screen_booking_car_batteries/first_row_in_container_spare_parts_and_products_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../core/theming/colors.dart';


class ContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const ContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsGeometry.all(10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              color: AppColors.transparent
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkColor.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 30,
          children: [
            FirstRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries(),
            SecondRowInContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries()
          ],
        )
    );
  }
}
