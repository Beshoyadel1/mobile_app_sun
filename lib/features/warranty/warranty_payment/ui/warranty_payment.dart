import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/warranty/warranty_payment/ui/screens/warranty_payment_view.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';

class WarrantyPayment extends StatelessWidget {
  const WarrantyPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RadioPaymentCubit(),
      child: WarrantyPaymentView(),
    );
  }
}
