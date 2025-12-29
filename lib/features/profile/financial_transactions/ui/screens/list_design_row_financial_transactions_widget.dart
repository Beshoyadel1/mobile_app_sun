import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../features/profile/custom_widget/design_row_financial_transactions_widget.dart';
import '../../../../../core/language/language_constant.dart';
class ListDesignRowFinancialTransactionsWidget extends StatelessWidget {
  const ListDesignRowFinancialTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DesignRowFinancialTransactionsWidget(
          imagePath: AppImageKeys.spare_parts,
          firstText:AppLanguageKeys.spareParts ,
          secondText: AppLanguageKeys.tires,
        ),
        DesignRowFinancialTransactionsWidget(
          imagePath: AppImageKeys.person2,
          firstText:AppLanguageKeys.mobileMaintenance ,
          secondText: AppLanguageKeys.maintenanceAndRepair,
        ),
        DesignRowFinancialTransactionsWidget(
          imagePath: AppImageKeys.spare_parts,
          firstText:AppLanguageKeys.comprehensiveInsurance ,
          secondText: AppLanguageKeys.tires,
        ),
        DesignRowFinancialTransactionsWidget(
          imagePath: AppImageKeys.person2,
          firstText:AppLanguageKeys.mobileMaintenance ,
          secondText: AppLanguageKeys.maintenanceAndRepair,
        ),
      ],
    );
  }
}
