import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/Insurance/custom_widget/container_invoice_widget.dart';
import '../../../../../../features/Insurance/finish_third_payment_details/ui/screens/container_installment_finish_third_payment_details.dart';
import '../../../../../../features/Insurance/finish_third_payment_details/ui/screens/first_row_text_finish_third_payment_details.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';

class FinishThirdPaymentDetails extends StatelessWidget {
  final String selectedImage;
  const FinishThirdPaymentDetails({super.key, required this.selectedImage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: SizedBox(
                width: 500,
                child: Column(
                  children: [
                    FirstRowTextFinishThirdPaymentDetails(),
                    SizedBox(height: 20,),
                    ContainerInstallmentFinishThirdPaymentDetails(),
                    SizedBox(height: 20,),
                     ContainerInvoiceWidget(
                      textTimeFinishPay: '2 يناير ',
                      isFinished: true,
                      priceInsuranceInstallment: '1000',
                      priceTaxes: '00.00',
                      priceTotal: '1000.00',
                      selectedImage: selectedImage,
                     ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
