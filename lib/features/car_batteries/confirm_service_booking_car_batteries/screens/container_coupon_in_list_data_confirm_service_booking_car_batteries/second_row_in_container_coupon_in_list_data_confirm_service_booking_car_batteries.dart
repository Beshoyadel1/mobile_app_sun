import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_service_in_list_data_confirm_service_booking_car_batteries/column_in_second_row_in_container_service_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class SecondRowInContainerCouponInListDataConfirmServiceBookingCarBatteries extends StatefulWidget {
  const SecondRowInContainerCouponInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  State<SecondRowInContainerCouponInListDataConfirmServiceBookingCarBatteries> createState() => _SecondRowInContainerCouponInListDataConfirmServiceBookingCarBatteriesState();
}

class _SecondRowInContainerCouponInListDataConfirmServiceBookingCarBatteriesState extends State<SecondRowInContainerCouponInListDataConfirmServiceBookingCarBatteries> {
  late TextEditingController textFormController;

  @override
  void initState() {
    super.initState();
    textFormController = TextEditingController();
  }
  @override
  void dispose() {
    textFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 170,
          height: 35,
          child: TextFormFieldWidget(
              textFormController: textFormController,
              borderColor: AppColors.greyColor,
              fillColor: AppColors.whiteColor,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 7),
          decoration: BoxDecoration(
            color: AppColors.orangeColor,
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
          child: TextInAppWidget(
            text:AppLanguageKeys.apply,
            textSize: 14,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:AppColors.whiteColor,
          ),
        )
      ],
    );
  }
}
