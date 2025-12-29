import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';
import '../../../../features/Insurance/details_annual_payments/ui/screens/container_annual_payment.dart';
import '../../../../features/Insurance/details_annual_payments/ui/screens/first_row_Insurance_offers.dart';
import '../../../../features/Insurance/details_annual_payments/ui/screens/row_image_label_button_money_details_annual_payments.dart';

class DetailsAnnualPayments extends StatelessWidget {
  const DetailsAnnualPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: SizedBox(
                width: 500,
                child: Column(
                  spacing: 40,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FirstRowInsuranceOffers(),
                    RowImageLabelButtonMoneyDetailsAnnualPayments(),
                    ContainerAnnualPayment()
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
