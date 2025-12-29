import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import "../../../../../features/Insurance/custom_widget/container_installment.dart";

class ColumnPaidNextInstallment extends StatelessWidget {
  const ColumnPaidNextInstallment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerInstallment(
          isNextInstallment: true,
          textInstallment: AppLanguageKeys.fourthInstallment,
          textIsPaid: AppLanguageKeys.nextInstallmentJuly,
          textMoney: '1000',
        ),
        SizedBox(height: 30,),
        ContainerInstallment(
          isNextInstallment: true,
          textInstallment: AppLanguageKeys.fourthInstallment,
          textIsPaid: AppLanguageKeys.nextInstallmentAugust,
          textMoney: '1000',
        ),
      ],
    );
  }
}
