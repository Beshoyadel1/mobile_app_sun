import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/custom_widget/loading_widget.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/screens/insurance_info_content.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/details_annual_payments/details_annual_payments.dart';
import '../../../../../features/Insurance/your_insurance_information/logic/your_insurance_info_cubit.dart';
import '../../../../../features/Insurance/your_insurance_information/logic/your_Insurance_info_state.dart';

class DataChangeInsuranceInfoView extends StatelessWidget {
  const DataChangeInsuranceInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YourInsuranceInfoCubit, YourInsuranceInfoState>(
      buildWhen: (previous, current) {
        return current is InsuranceInfoLoading || current is InsuranceInfoSuccess || current is InsuranceInfoInitial;
      },
      builder: (context, state) {
        if (state is InsuranceInfoSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.of(context).push(
              NavigateToPageWidget(DetailsAnnualPayments()),
            );
            context.read<YourInsuranceInfoCubit>().reset();
          });
        }
        if (state is InsuranceInfoLoading) {
          return const LoadingWidget();
        }
        return const InsuranceInfoContent();
      },
    );
  }
}
