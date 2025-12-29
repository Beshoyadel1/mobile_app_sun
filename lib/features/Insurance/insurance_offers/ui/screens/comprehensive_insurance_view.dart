import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/insurance_offers/logic/select_company_cubit/comprehensive_insurance_state.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/custom_widget/widget_container_comprehensive_insurance.dart';
import '../../logic/select_company_cubit/comprehensive_insurance_cubit.dart';

class ComprehensiveInsuranceView extends StatefulWidget {
  const ComprehensiveInsuranceView({super.key});

  @override
  State<ComprehensiveInsuranceView> createState() => _ComprehensiveInsuranceViewState();
}

class _ComprehensiveInsuranceViewState extends State<ComprehensiveInsuranceView> {
  late ComprehensiveInsuranceCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<ComprehensiveInsuranceCubit>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: List.generate(companies.length, (index) {
              return BlocBuilder<ComprehensiveInsuranceCubit, ComprehensiveInsuranceState>(
                buildWhen: (previous, current) =>
                current is ComprehensiveInsuranceChangedState,
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      cubit.selectCompany(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: WidgetContainerComprehensiveInsurance(
                        imageSrc: companies[index],
                        nameCompany: AppLanguageKeys.cooperativeInsurance,
                        isSelected: cubit.selectedIndex == index,
                      ),
                    ),
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

final List<String> companies = [
  AppImageKeys.company1,
  AppImageKeys.company2,
  AppImageKeys.company3,
  AppImageKeys.company4,
  AppImageKeys.company1,
  AppImageKeys.company2,
  AppImageKeys.company3,
  AppImageKeys.company4,
];
