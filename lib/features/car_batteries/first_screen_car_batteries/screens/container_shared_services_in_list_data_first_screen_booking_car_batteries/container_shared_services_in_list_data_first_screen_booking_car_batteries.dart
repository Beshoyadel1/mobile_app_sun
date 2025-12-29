import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/custom_widget/Column_image_text_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/container_shared_services_in_list_data_first_screen_booking_car_batteries/first_row_in_container_shared_services_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';

class ContainerSharedServicesInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  final String? imagePath,text;
  const ContainerSharedServicesInListDataFirstScreenBookingCarBatteries({
    super.key,
    this.imagePath,
    this.text
  });

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
          spacing: 10,
          children: [
            FirstRowInContainerSharedServicesInListDataFirstScreenBookingCarBatteries(),
            ColumnImageTextWidget(
                imagePath: imagePath ?? AppImageKeys.test50,
                text: text ?? AppLanguageKeys.batteries,
            ),
          ],
        )
    );
  }
}
