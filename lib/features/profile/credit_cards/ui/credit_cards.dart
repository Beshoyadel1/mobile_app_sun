import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../features/profile/credit_cards/ui/screens/list_column_visa_data.dart';
import '../../../../features/profile/credit_cards/ui/screens/select_visa.dart';
import '../../../../features/profile/financial_transactions/ui/financial_transactions.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../features/profile/custom_widget/end_button_profile_widget.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';

class CreditCards extends StatelessWidget {
  const CreditCards({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: const AppbarProfileWidget(
        title: AppLanguageKeys.creditCards,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SizedBox(
              width: 500,
              child: Column(
              children: [
              Expanded(
              child: SingleChildScrollView(
              child: Column(
              children: [
              SelectVisa(),
              ListColumnVisaData(),
                  ],
                ),
              ),
            ),
            EndButtonProfileWidget(
              textButton: AppLanguageKeys.addPaymentCard,
              onTap: () {
                Navigator.of(context).push(
                  NavigateToPageWidget(FinancialTransactions()),
                );
              },
              ),
              ],
            ),
            ),
          ),
        ),
      ),
    );
  }
}
