import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/change_the_glass/choose_service_change_the_glass/choose_service_change_the_glass.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/last_button_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../features/car_batteries/first_screen_car_batteries/screens/container_rating_in_list_data_first_screen_booking_car_batteries/container_rating_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../features/car_batteries/first_screen_car_batteries/screens/container_spare_parts_and_products_in_list_data_first_screen_booking_car_batteries/container_spare_parts_and_products_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../features/car_batteries/first_screen_car_batteries/screens/container_shared_services_in_list_data_first_screen_booking_car_batteries/container_shared_services_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/first_container_in_list_data_first_screen_booking_car_batteries.dart';

class ListDataFirstScreenChangeTheGlass extends StatelessWidget {
  const ListDataFirstScreenChangeTheGlass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        FirstContainerInListDataFirstScreenBookingCarBatteries(
          imagePath: AppImageKeys.glass,
        ),
        ContainerSharedServicesInListDataFirstScreenBookingCarBatteries(
          imagePath: AppImageKeys.glass2,
          text: AppLanguageKeys.glassReplacement,
        ),
        ContainerSparePartsAndProductsInListDataFirstScreenBookingCarBatteries(),
        ContainerRatingInListDataFirstScreenBookingCarBatteries(),
        LastButtonInListDataFirstScreenBookingCarBatteries(
          widget: ChooseServiceChangeTheGlass(),
        )
      ],
    );
  }
}
