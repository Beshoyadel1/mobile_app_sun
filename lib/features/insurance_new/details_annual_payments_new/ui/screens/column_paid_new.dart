import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/Insurance/custom_widget/container_installment.dart';

class ColumnPaidNew extends StatelessWidget {
  const ColumnPaidNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        ContainerInstallment(
          textButton: AppLanguageKeys.details,
          textInstallment: AppLanguageKeys.firstInstallment,
          textIsPaid: AppLanguageKeys.paid,
          textMoney: '1000',
        ),
      ],
    );
  }
}
