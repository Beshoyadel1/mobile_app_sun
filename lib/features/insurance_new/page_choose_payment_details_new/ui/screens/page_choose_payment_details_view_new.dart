import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/screens/first_label_page_choose_payment_details_view_new.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/screens/container_installment_payment_new.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/screens/container_invoice_new.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/screens/container_list_visa_new.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/screens/last_button_container_page_choose_payment_details_new.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';

class PageChoosePaymentDetailsViewNew extends StatelessWidget {
  const PageChoosePaymentDetailsViewNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional.center,
          child: SizedBox(
            width: 500,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      spacing: 40,
                      children: const [
                        FirstLabelPageChoosePaymentDetailsViewNew(),
                        ContainerInstallmentPaymentNew(),
                        ContainerInvoiceNew(),
                        ContainerListVisaNew(),
                      ],
                    ),
                  ),
                ),
                LastButtonContainerPageChoosePaymentDetailsNew()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
