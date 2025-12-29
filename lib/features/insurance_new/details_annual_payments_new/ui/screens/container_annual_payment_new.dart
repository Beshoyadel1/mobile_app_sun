import 'package:flutter/cupertino.dart';
import '../../../../../features/insurance_new/details_annual_payments_new/ui/screens/column_not_paid_new.dart';
import '../../../../../features/insurance_new/details_annual_payments_new/ui/screens/column_paid_next_installment_new.dart';
import '../../../../../features/insurance_new/details_annual_payments_new/ui/screens/row_first_container_annual_payment_new.dart';
import '../../../../../core/theming/colors.dart';

class ContainerAnnualPaymentNew extends StatelessWidget {
  const ContainerAnnualPaymentNew({super.key});

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
          RowFirstContainerAnnualPaymentNew(),
          ColumnNotPaidNew(),
          ColumnPaidNextInstallmentNew()
        ],
      ),
    );
  }
}
