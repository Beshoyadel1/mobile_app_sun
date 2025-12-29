import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/Insurance/custom_widget/container_installment_payment_widget.dart';

class ContainerInstallmentFinishThirdPaymentDetails extends StatelessWidget {
  const ContainerInstallmentFinishThirdPaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerInstallmentPaymentWidget(
      title: AppLanguageKeys.thirdInstallmentDetails,
      isFinished: true,
      nameCompany:AppLanguageKeys.insuranceOffersOnly,
      date:'20/3/2025',
      logoCompany:AppImageKeys.company1,
      price:'1000',
    );
  }
}
