import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/custom_widget/container_installment_payment_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';

class ContainerInstallmentPayment extends StatelessWidget {
  const ContainerInstallmentPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerInstallmentPaymentWidget(
      title: AppLanguageKeys.payInstallment,
        nameCompany:AppLanguageKeys.insuranceOffersOnly,
        date:'20/3/2025',
        logoCompany:AppImageKeys.company1,
        price:'1000',
    );
  }
}
