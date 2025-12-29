import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_invoice_mobile_service_in_service_request/fifth_row_container_invoice_mobile_service_in_service_request.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_invoice_mobile_service_in_service_request/first_row_container_invoice_mobile_service_in_service_request.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_invoice_mobile_service_in_service_request/fourth_row_container_invoice_mobile_service_in_service_request.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_invoice_mobile_service_in_service_request/second_row_container_invoice_mobile_service_in_service_request.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/screens/container_invoice_mobile_service_in_service_request/third_row_container_invoice_mobile_service_in_service_request.dart';

class ContainerInvoiceMobileServiceInServiceRequest extends StatelessWidget {
  const ContainerInvoiceMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: EdgeInsetsGeometry.symmetric(vertical: 13,horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              spacing: 20,
              children: [
                FirstRowContainerInvoiceMobileServiceInServiceRequest(),
                SecondRowContainerInvoiceMobileServiceInServiceRequest(),
                ThirdRowContainerInvoiceMobileServiceInServiceRequest(),
                Divider(
                  thickness: 1,
                  color:AppColors.greyColor,
                ),
                FourthRowContainerInvoiceMobileServiceInServiceRequest(),
                Divider(
                  thickness: 1,
                  color:AppColors.greyColor,
                ),
                FifthRowContainerInvoiceMobileServiceInServiceRequest()
              ],
            ),
          )
        ],
      ),
    );
  }
}
