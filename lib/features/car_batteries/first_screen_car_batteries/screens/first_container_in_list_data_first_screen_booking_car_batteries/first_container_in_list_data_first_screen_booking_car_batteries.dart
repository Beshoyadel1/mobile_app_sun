import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/second_row_text_in_first_container_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/third_row_text_in_first_container_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/stack_data_in_first_container_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../core/theming/colors.dart';

class FirstContainerInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  final String? imagePath;
  const FirstContainerInListDataFirstScreenBookingCarBatteries({super.key ,this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsGeometry.all(5),
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
          spacing: 10,
          children: [
            StackDataInFirstContainerInListDataFirstScreenBookingCarBatteries(
              imagPath: imagePath,
            ),
            SecondRowTextInFirstContainerInListDataFirstScreenBookingCarBatteries(),
            ThirdRowTextInFirstContainerInListDataFirstScreenBookingCarBatteries()
          ],
        )
    );
  }
}
