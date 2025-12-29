import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/car_ownership_transfer_request/enter_your_email_and_password_car_ownership_transfer_request/enter_your_email_and_password_car_ownership_transfer_request.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/car_ownership_transfer_request/enter_your_password_car_ownership_transfer_request/screens/last_button_orange_without_icon.dart';
import '../../../../../features/car_ownership_transfer_request/enter_your_password_car_ownership_transfer_request/screens/list_data_enter_your_password_car_ownership_transfer_request.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';


class EnterYourPasswordCarOwnershipTransferRequest extends StatelessWidget {
  const EnterYourPasswordCarOwnershipTransferRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:'نقل السيارة لمستخدم أخر',),
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
                        child: ListDataEnterYourPasswordCarOwnershipTransferRequest()
                    ),
                  ),
                  LastButtonOrangeWithoutIcon(
                    text: AppLanguageKeys.next,
                    onTap:(){
                      Navigator.of(context).push(
                        NavigateToPageWidget(EnterYourEmailAndPasswordCarOwnershipTransferRequest()),
                      );
                    },
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