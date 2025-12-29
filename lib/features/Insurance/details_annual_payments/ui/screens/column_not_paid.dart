import 'package:flutter/cupertino.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/page_choose_payment_details/ui/page_choose_payment_details.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/Insurance/custom_widget/container_installment.dart';
class ColumnNotPaid extends StatelessWidget {
  const ColumnNotPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        ContainerInstallment(
          isNotPaid: true,
          textButton: AppLanguageKeys.payInstallment,
          textInstallment: AppLanguageKeys.thirdInstallment,
          textIsPaid: AppLanguageKeys.notPaid,
          textMoney: '1000',
          onTap: (){
            Navigator.of(context).push(
             NavigateToPageWidget(PageChoosePaymentDetails()),
            );
          },
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}
