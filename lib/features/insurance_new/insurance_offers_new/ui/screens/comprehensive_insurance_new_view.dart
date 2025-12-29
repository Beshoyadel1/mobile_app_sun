import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/insurance_new/check_your_national_access_account_new/ui/check_yourn_national_access_account_new.dart';
import '../../../../../features/insurance_new/custom_widget/widget_container_comprehensive_insurance_new.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class ComprehensiveInsuranceNewView extends StatelessWidget {
  const ComprehensiveInsuranceNewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            spacing: 10,
            children: List.generate(monthlyPayments.length, (index) {
              return WidgetContainerComprehensiveInsuranceNew(
                price: priceMonthlyPayments[index],
                nameAnnual: circleAnnual[index],
                numberPayMonthly: monthlyPayments[index],
                onTap: () {
                  Navigator.of(context).push(
                    NavigateToPageWidget(CheckYournNationalAccessAccountNew()),
                  );
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}

final List<String> circleAnnual = [
  AppLanguageKeys.semiAnnual,
  AppLanguageKeys.annual,
];
final List<String> priceMonthlyPayments = [
  '6000',
  '12000',
];
final List<String> monthlyPayments = [
  AppLanguageKeys.sixMonthlyPayments,
  AppLanguageKeys.twelveMonthlyPayments,
];
