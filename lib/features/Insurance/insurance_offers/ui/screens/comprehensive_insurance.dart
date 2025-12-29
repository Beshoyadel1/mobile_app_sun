import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/select_company_cubit/comprehensive_insurance_cubit.dart';
import '../../../../../features/Insurance/insurance_offers/ui/screens/comprehensive_insurance_view.dart';

class ComprehensiveInsurance extends StatelessWidget {
  const ComprehensiveInsurance({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ComprehensiveInsuranceCubit(),
      child: const ComprehensiveInsuranceView(),
    );
  }
}
