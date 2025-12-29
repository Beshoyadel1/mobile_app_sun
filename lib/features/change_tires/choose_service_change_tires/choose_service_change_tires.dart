import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/change_tires/choose_time_change_tires/choose_time_change_tires.dart';
import '../../../../../features/change_tires/choose_service_change_tires/screens/list_data_choose_service_change_tires.dart';
import '../../../../../features/car_batteries/choose_service_car_batteries/screens/last_button_in_list_data_choose_service_car_batteries.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';


class ChooseServiceChangeTires extends StatelessWidget {
  const ChooseServiceChangeTires({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:'أسم المركز',),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment:AlignmentDirectional.center,
            child: SizedBox(
              width: 500,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: ListDataChooseServiceChangeTires(

                        )
                    ),
                  ),
                  LastButtonInListDataChooseServiceCarBatteries(
                      widget: ChooseTimeChangeTires(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
