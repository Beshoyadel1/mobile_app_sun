import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/request_service/mobile_service_in_service_request/ui/screens/list_data_your_bill_payment_in_mobile_service_in_service_request.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';


class MobileServiceInServiceRequest  extends StatelessWidget {
  const MobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:AppLanguageKeys.requestNumber,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SizedBox(
              width: 500,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: ListDataYourBillPaymentInMobileServiceInServiceRequest()
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
