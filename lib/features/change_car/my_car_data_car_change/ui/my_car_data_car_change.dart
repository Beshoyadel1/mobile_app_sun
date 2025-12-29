import 'package:flutter/material.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/add_information_car_change_car.dart';
import '../../../../../features/profile/custom_widget/end_button_profile_widget.dart';
import '../../../../../features/change_car/my_car_data_car_change/ui/screens/list_my_car_in_data_car_change.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class MyCarDataCarChange extends StatelessWidget {
  const MyCarDataCarChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: AppLanguageKeys.myCarData,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                    child: ListMyCarInDataCarChange()
                ),
              ),
              EndButtonProfileWidget(
                textButton: AppLanguageKeys.addAddress,
                onTap: (){
                  Navigator.of(context).push(
                    NavigateToPageWidget(AddInformationCarChangeCar()),
                  );
                },
              )
            ],
          ),
        ),
      ),
     // bottomNavigationBar: L,
    );
  }
}
