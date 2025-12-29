import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/details_annual_payments/ui/screens/column_not_paid.dart';
import '../../../../../features/Insurance/details_annual_payments/ui/screens/column_paid.dart';
import '../../../../../features/Insurance/details_annual_payments/ui/screens/column_paid_next_installment.dart';
import '../../../../../features/Insurance/details_annual_payments/ui/screens/row_first_container_annual_payment.dart';

class ContainerAnnualPayment extends StatelessWidget {
  const ContainerAnnualPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 13,horizontal: 20),
      //  margin: EdgeInsetsGeometry.all(20),
      decoration: BoxDecoration(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color:AppColors.greyColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          RowFirstContainerAnnualPayment(),
          ColumnPaid(),
          ColumnNotPaid(),
          ColumnPaidNextInstallment()
        ],
      ),
    );
  }
}
