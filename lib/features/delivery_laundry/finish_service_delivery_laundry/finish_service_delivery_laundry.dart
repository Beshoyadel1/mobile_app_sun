import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/finish_service_delivery_laundry/screens/list_data_finish_service_delivery_laundry.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';


class FinishServiceDeliveryLaundry extends StatelessWidget {
  const FinishServiceDeliveryLaundry({super.key});

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
              width: 350,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: ListDataFinishServiceDeliveryLaundry()
                    ),
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
