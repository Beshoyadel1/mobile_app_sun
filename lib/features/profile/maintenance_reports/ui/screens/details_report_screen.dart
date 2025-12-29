import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../order_list/create_new_order_in_order_list/ui/screens/create_new_order/last_row_container_on_the_way.dart';
import '../../../../request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/container_notes.dart';
import '../../../../request_service/bill_payment_in_service_request/ui/screens/container_service_bill_payment_in_service_request/container_service.dart';
import '../../../../welcome/widgets/appbar_profile.dart';

class DetailsReportScreen extends StatelessWidget {
  const DetailsReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        appBar: AppbarProfile(
          title: "#656556",
          image: AppImageKeys.notification,
          showDefaultProfileImage: true,
          showBackButton: true,
          onBack: () {
            Navigator.pop(context);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 24,
            children: [
              CustomContainer(
                onTap: (){},
                isSelected: true,
                borderRadius: BorderRadius.circular(10),
                border: Border(),
                containerColor: AppColors.whiteColor,
               typeWidget: LastRowContainerCreateNewOrder(
                  title: '#656556',
                  subtitle: '1/1/2025',
                ),
              ),
              ContainerNotesPaymentInServiceRequest(),
              ContainerServiceBillPaymentInServiceRequest(),


            ],
          ),
        )
      );
  }
}
