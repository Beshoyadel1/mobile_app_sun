import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/order_list/mobile_service_order_list/ui/screens/list_data_mobile_service_order_list.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class MobileServiceOrderList extends StatelessWidget {
  const MobileServiceOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: 'طلب 44121',),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional.center,
          child: SizedBox(
            width: 500,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                          child: ListDataOnTheWayOrderList()
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
