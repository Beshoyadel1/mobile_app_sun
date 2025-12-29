import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/contact_the_highway_maintenance_center_delivery_laundry/screens/list_data_contact_the_highway_maintenance_center_delivery_laundry.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';


class ContactTheHighwayMaintenanceCenterDeliveryLaundry extends StatelessWidget {
  const ContactTheHighwayMaintenanceCenterDeliveryLaundry({super.key});

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
                        child: ListDataContactTheHighwayMaintenanceCenterDeliveryLaundry()
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
