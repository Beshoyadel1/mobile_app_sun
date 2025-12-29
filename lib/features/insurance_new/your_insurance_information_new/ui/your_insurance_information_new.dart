import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/insurance_new/your_insurance_information_new/logic/your_insurance_info_new_cubit.dart';
import '../../../../features/insurance_new/your_insurance_information_new/ui/screens/insurance_info_view_new.dart';

class YourInsuranceInformationNew extends StatelessWidget {
  const YourInsuranceInformationNew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => YourInsuranceInfoNewCubit(),
      child: const InsuranceInfoViewNew(),
    );
  }
}
