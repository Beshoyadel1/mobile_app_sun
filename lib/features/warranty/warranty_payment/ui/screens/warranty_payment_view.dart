import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/warranty/warranty_payment/ui/screens/last_button_warranty_payment.dart';
import '../../../../../features/Insurance/page_choose_payment_details/ui/screens/container_list_visa.dart';
import '../../../../../features/warranty/warranty_payment/ui/screens/first_part_warranty_payment.dart';
import '../../../../../core/theming/colors.dart';

class WarrantyPaymentView extends StatelessWidget {
  const WarrantyPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Scrollable content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      FirstPartWarrantyPayment(),
                      ContainerListVisa(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LastButtonWarrantyPayment(),
    );
  }
}
