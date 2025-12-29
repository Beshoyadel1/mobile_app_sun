import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_ownership_transfer_request/you_car_details_car_ownership_transfer_request/screens/list_data_you_car_details_car_ownership_transfer_request.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';


class YouCarDetailsCarOwnershipTransferRequest extends StatelessWidget {
  const YouCarDetailsCarOwnershipTransferRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:'سيارة CR  - V',),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                    child: ListDataYouCarDetailsCarOwnershipTransferRequest()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}