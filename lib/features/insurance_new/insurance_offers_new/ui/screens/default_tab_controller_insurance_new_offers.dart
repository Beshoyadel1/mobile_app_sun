import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';
import '../../../../../features/insurance_new/insurance_offers_new/ui/screens/screen_default_tab_new_controller.dart';

class DefaultTabControllerInsuranceNewOffers extends StatelessWidget {
  const DefaultTabControllerInsuranceNewOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: ScreenDefaultTabNewController(),
    );
  }
}

