import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/request_service/offers_presented_in_service_request/ui/screens/list_data_offers_presented_in_service_request.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';


class OffersPresentedInServiceRequest extends StatelessWidget {

  const OffersPresentedInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:AppLanguageKeys.requestService,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                   child: ListDataOffersPresentedInServiceRequest(
                   )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
