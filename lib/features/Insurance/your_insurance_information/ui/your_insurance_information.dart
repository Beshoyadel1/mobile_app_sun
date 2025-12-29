import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/your_insurance_information/logic/your_insurance_info_cubit.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/screens/insurance_info_view.dart';

class YourInsuranceInformation extends StatelessWidget {
  const YourInsuranceInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => YourInsuranceInfoCubit(),
      child: const InsuranceInfoView(),
    );
  }
}
