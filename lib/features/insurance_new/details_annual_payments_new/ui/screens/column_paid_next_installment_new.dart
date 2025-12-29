import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import "../../../../../features/Insurance/custom_widget/container_installment.dart";

class ColumnPaidNextInstallmentNew extends StatelessWidget {
  const ColumnPaidNextInstallmentNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        ContainerInstallment(
          isNextInstallment: true,
          textInstallment: AppLanguageKeys.fourthInstallment,
          textIsPaid: AppLanguageKeys.nextInstallmentJuly,
          textMoney: '1000',
        ),
        ContainerInstallment(
          isNextInstallment: true,
          textInstallment: AppLanguageKeys.fourthInstallment,
          textIsPaid: AppLanguageKeys.nextInstallmentAugust,
          textMoney: '1000',
        ),
        ContainerInstallment(
          isNextInstallment: true,
          textInstallment: AppLanguageKeys.fourthInstallment,
          textIsPaid: AppLanguageKeys.nextInstallmentAugust,
          textMoney: '1000',
        ),
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
