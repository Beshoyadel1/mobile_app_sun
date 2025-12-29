import 'package:flutter/cupertino.dart';
import '../../../../../features/profile/financial_transactions/ui/screens/first_Column_of_design_row_financial_transactions.dart';
import '../../../../../features/profile/financial_transactions/ui/screens/second_Column_of_design_row_financial_transactions.dart';

class DesignRowFinancialTransactionsWidget extends StatelessWidget {
  final String imagePath,firstText,secondText;

  const DesignRowFinancialTransactionsWidget({
     super.key,
     required this.imagePath,
     required this.firstText,
     required this.secondText
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: FirstColumnOfDesignRowFinancialTransactions(
            imagePath: imagePath,
            firstText: firstText,
            secondText: secondText,
          ),
        ),
        Expanded(child: SecondColumnOfDesignRowFinancialTransactions())
      ],
    );
  }
}
