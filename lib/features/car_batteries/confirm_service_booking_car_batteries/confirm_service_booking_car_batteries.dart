import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/last_button_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/list_data_confirm_service_booking_car_batteries.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';


class ConfirmServiceBookingCarBatteries extends StatelessWidget {
  const ConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Align(
        alignment: AlignmentDirectional.center,
        child: SizedBox(
          width: 500,
          child: Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarProfileWidget(title:'أسم المركز',),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                          child: ListDataConfirmServiceBookingCarBatteries()
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: LastButtonInListDataConfirmServiceBookingCarBatteries(),
          ),
        ),
      ),
    );
  }
}
