import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/car_ownership_transfer_request/enter_your_password_car_ownership_transfer_request/enter_your_password_car_ownership_transfer_request.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/end_two_button_screen.dart';
import '../../../../../features/car_ownership_transfer_request/first_screen_car_ownership_transfer_request/screens/list_data_first_screen_car_ownership_transfer_request.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class FirstScreenCarOwnershipTransferRequest extends StatelessWidget {
  const FirstScreenCarOwnershipTransferRequest({super.key});

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
              width: 350,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: ListDataFirstScreenCarOwnershipTransferRequest()
                    ),
                  ),
                  EndTwoButtonScreen(
                    onTapTransfer: (){
                      Navigator.of(context).push(
                        NavigateToPageWidget(EnterYourPasswordCarOwnershipTransferRequest()),
                      );
                    },
                    onTapDelete: (){},
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