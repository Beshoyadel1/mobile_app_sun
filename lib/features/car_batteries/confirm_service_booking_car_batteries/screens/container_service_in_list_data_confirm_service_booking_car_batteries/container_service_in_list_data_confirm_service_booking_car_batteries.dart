import 'package:flutter/cupertino.dart';
import '../../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_service_in_list_data_confirm_service_booking_car_batteries/first_row_in_container_service_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_service_in_list_data_confirm_service_booking_car_batteries/second_row_in_container_service_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../../core/theming/colors.dart';

class ContainerServiceInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  final String? text,price,imagePath;

  const ContainerServiceInListDataConfirmServiceBookingCarBatteries({
    super.key,
    this.imagePath,
    this.text,
    this.price
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
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
      child: Column(
        spacing: 15,
        children: [
          FirstRowInContainerServiceInListDataConfirmServiceBookingCarBatteries(),
          SecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries(
            imagePath: imagePath,
            text: text,
            price: price,
          )
        ],
      ),
    );
  }
}
