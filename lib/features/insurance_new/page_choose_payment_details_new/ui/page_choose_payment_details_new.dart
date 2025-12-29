import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/logic/radio_payment_new_cubit.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/screens/page_choose_payment_details_view_new.dart';

class PageChoosePaymentDetailsNew extends StatelessWidget {
  const PageChoosePaymentDetailsNew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RadioPaymentNewCubit(),
      child: PageChoosePaymentDetailsViewNew(),
    );
  }
}
