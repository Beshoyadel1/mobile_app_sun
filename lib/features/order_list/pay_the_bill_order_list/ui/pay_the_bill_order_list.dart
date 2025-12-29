import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/order_list/pay_the_bill_order_list/ui/screens/list_data_pay_the_bill_order_list.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../features/request_service/bill_payment_in_service_request/ui/screens/last_button_with_background_.dart';

class PayTheBillOrderList extends StatelessWidget {
  const PayTheBillOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Align(
        alignment: AlignmentDirectional.center,
        child: SizedBox(
          width: 500,
          child: Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarProfileWidget(title: 'طلب 44121',),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                            child: ListDataPayTheBillOrderList()
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: LastButtonWithBackGround(),
          ),
        ),
      ),
    );
  }
}
