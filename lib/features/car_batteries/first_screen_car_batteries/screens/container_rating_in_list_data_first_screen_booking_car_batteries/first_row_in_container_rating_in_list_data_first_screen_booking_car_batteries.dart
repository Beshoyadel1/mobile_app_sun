import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/container_rating_in_list_data_first_screen_booking_car_batteries/part_two_of_first_row_in_container_rating_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/container_rating_in_list_data_first_screen_booking_car_batteries/part_one_of_first_row_in_container_rating_in_list_data_first_screen_booking_car_batteries.dart';


class FirstRowInContainerRatingInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const FirstRowInContainerRatingInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PartOneOfFirstRowInContainerRatingInListDataFirstScreenBookingCarBatteries(),
        PartTwoOfFirstRowInContainerRatingInListDataFirstScreenBookingCarBatteries()
      ],
    );
  }
}
