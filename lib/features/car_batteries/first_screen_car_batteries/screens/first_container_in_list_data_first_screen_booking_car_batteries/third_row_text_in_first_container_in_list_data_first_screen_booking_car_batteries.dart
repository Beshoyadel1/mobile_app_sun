import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/request_service/map_background_in_service_request/ui/map_background_in_service_request.dart';
import '../../../../../features/car_batteries/custom_widget/row_text_icon_orange.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/stack_data_in_first_container_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ThirdRowTextInFirstContainerInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const ThirdRowTextInFirstContainerInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 3,

      children: [
        RowTextIconOrange(
            text: '48 ساعة',
            imagePath: AppImageKeys.clock_orange
        ),
        RowTextIconOrange(
            text: AppLanguageKeys.mobile,
            imagePath: AppImageKeys.car_orange
        ),
        RowTextIconOrange(
            text: '4.7',
            imagePath: AppImageKeys.star_orange
        ),
        RowTextIconOrange(
          isMap: true,
          text: AppLanguageKeys.openMap,
          imagePath: AppImageKeys.map1,
        ),
      ],
    );
  }
}
