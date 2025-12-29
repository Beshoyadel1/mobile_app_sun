import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_service_in_list_data_confirm_service_booking_car_batteries/column_in_second_row_in_container_service_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../../core/theming/colors.dart';

class SecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  final String? text,price,imagePath;

  const SecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries({super.key,
  this.imagePath,
  this.text,
  this.price
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.pinkColor,
          child: Image.asset(imagePath?? AppImageKeys.test50,width: 25,),
        ),
        ColumnInSecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries(
          text: text,
          price: price,
        )
      ],
    );
  }
}
