import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/insurance_new/details_annual_payments_new/details_annual_payments_new.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/custom_widget/loading_widget.dart';
import '../../../../../features/insurance_new/your_insurance_information_new/logic/your_Insurance_info_new_state.dart';
import '../../../../../features/insurance_new/your_insurance_information_new/logic/your_insurance_info_new_cubit.dart';
import '../../../../../features/insurance_new/your_insurance_information_new/ui/screens/insurance_info_content_new.dart';


class DataChangeInsuranceInfoViewNew extends StatelessWidget {
  const DataChangeInsuranceInfoViewNew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YourInsuranceInfoNewCubit, YourInsuranceInfoNewState>(
      buildWhen: (previous, current) {
        return current is InsuranceInfoLoading || current is InsuranceInfoSuccess || current is InsuranceInfoInitial;
      },
      builder: (context, state) {
        if (state is InsuranceInfoSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.of(context).push(
              NavigateToPageWidget(DetailsAnnualPaymentsNew()),
            );
            context.read<YourInsuranceInfoNewCubit>().reset();
          });
        }
        if (state is InsuranceInfoLoading) {
          return const LoadingWidget();
        }
        return const InsuranceInfoContentNew();
      },
    );
  }
}
