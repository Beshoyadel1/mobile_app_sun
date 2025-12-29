import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/Insurance/page_choose_payment_details/ui/screens/page_choose_payment_details_view.dart';
import '../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';

class PageChoosePaymentDetails extends StatelessWidget {
  const PageChoosePaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RadioPaymentCubit(),
      child: PageChoosePaymentDetailsView(),
    );
  }
}
