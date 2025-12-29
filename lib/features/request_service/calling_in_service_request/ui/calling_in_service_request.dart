import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/request_service/calling_in_service_request/ui/screens/list_data_calling_in_service_request.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';


class CallingInServiceRequest  extends StatelessWidget {
  const CallingInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:'',),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
           // alignment: AlignmentGeometry.topCenter,
            child: SizedBox(
              width: 500,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                     //  child: ListDataCallingInServiceRequest()
                    ),
                  ),
                  ListDataCallingInServiceRequest()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
