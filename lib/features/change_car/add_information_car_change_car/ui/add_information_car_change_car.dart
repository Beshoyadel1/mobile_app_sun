import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/end_two_button_screen.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/list_car_in_add_information_car_change_car.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';



class AddInformationCarChangeCar extends StatelessWidget {
  const AddInformationCarChangeCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:'سيارة CR  - V',),
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
                        child: ListCarInAddInformationCarChangeCar()
                    ),
                  ),
                  EndTwoButtonScreen()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
