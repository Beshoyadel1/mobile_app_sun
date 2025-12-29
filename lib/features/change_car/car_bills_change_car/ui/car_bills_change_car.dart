import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/profile/financial_transactions/ui/screens/list_design_row_financial_transactions_widget.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';

class CarBillsChangeCar extends StatelessWidget {
  const CarBillsChangeCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: const AppbarProfileWidget(
        title: AppLanguageKeys.carBills,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: ListDesignRowFinancialTransactionsWidget(),
          ),
        ),
      ),
    );
  }
}
