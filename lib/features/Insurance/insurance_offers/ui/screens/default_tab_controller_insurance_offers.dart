import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/insurance_offers/ui/screens/screen_default_tab_controller.dart';
import '../../../../../features/Insurance/insurance_offers/logic/tab_cubit/tab_insurance_offers_cubit.dart';

class DefaultTabControllerInsuranceOffers extends StatelessWidget {
  const DefaultTabControllerInsuranceOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceOffersCubit(),
      child: ScreenDefaultTabController(),
    );
  }
}

