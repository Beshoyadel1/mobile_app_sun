import 'package:flutter/cupertino.dart';
import '../../../../../features/Insurance/custom_widget/annual_payment_card.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/language/language_constant.dart';

class RowImageLabelButtonMoneyDetailsAnnualPayments extends StatelessWidget {
  const RowImageLabelButtonMoneyDetailsAnnualPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnualPaymentCard(
      companyImage: AppImageKeys.company3,
      title: AppLanguageKeys.scienceInsurance,
      subTitle: AppLanguageKeys.comprehensiveInsurance,
      buttonText: AppLanguageKeys.policyData,
      amount: "12000",
      paymentType: AppLanguageKeys.annualPayment,
      onButtonTap: () {},
    );
  }
}
