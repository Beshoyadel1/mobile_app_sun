import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../features/delivery_laundry/confirm_your_location_delivery_laundry/confirm_your_location_delivery_laundry.dart';
import '../../../../features/car_batteries/first_screen_car_batteries/screens/container_rating_in_list_data_first_screen_booking_car_batteries/container_rating_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../features/car_batteries/first_screen_car_batteries/screens/last_button_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../features/delivery_laundry/first_screen_delivery_laundry/screens/Container_packages_first_screen_delivery_laundry/Container_packages_first_screen_delivery_laundry.dart';
import '../../../../features/car_batteries/first_screen_car_batteries/screens/container_shared_services_in_list_data_first_screen_booking_car_batteries/container_shared_services_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/first_container_in_list_data_first_screen_booking_car_batteries.dart';

class ListDataFirstScreenDeliveryLaundry extends StatelessWidget {
  const ListDataFirstScreenDeliveryLaundry({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        FirstContainerInListDataFirstScreenBookingCarBatteries(),
        ContainerSharedServicesInListDataFirstScreenBookingCarBatteries(),
        ContainerPackagesFirstScreenDeliveryLaundry(),
        ContainerRatingInListDataFirstScreenBookingCarBatteries(),
        LastButtonInListDataFirstScreenBookingCarBatteries(
          widget: ConfirmYourLocationDeliveryLaundry(),
        )
      ],
    );
  }
}