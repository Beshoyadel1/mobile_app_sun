import 'package:flutter/material.dart';
import '../../../../../features/change_the_glass/choose_time_change_the_glass/choose_time_change_the_glass.dart';
import '../../../../../features/change_the_glass/choose_service_change_the_glass/screens/list_data_choose_service_change_the_glass.dart';
import '../../../../../features/car_batteries/choose_service_car_batteries/screens/last_button_in_list_data_choose_service_car_batteries.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class ChooseServiceChangeTheGlass extends StatelessWidget {
  const ChooseServiceChangeTheGlass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: const AppbarProfileWidget(title: 'أسم المركز'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SizedBox(
              width: 500,
              child: Column(
                children: [
                  Expanded(
                    child: ListDataChooseServiceChangeTheGlass(),
                  ),
                  LastButtonInListDataChooseServiceCarBatteries(
                    widget: ChooseTimeChangeTheGlass(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
