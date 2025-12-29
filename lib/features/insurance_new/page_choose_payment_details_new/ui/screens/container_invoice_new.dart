import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/custom_widget/container_invoice_widget.dart';

class ContainerInvoiceNew extends StatelessWidget {
  const ContainerInvoiceNew({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerInvoiceWidget(
        priceInsuranceInstallment: '1000',
        priceTaxes: '00.00',
        priceTotal: '1000.00'
    );
  }
}
