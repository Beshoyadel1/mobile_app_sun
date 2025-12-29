import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/insurance_new/check_your_national_access_account_new/logic/container_check_your_national_new_cubit.dart';
import '../../../../../features/insurance_new/check_your_national_access_account_new/ui/screens/container_content_new.dart';

class ContainerCheckYourNationalAccessAccountNew extends StatelessWidget {
  const ContainerCheckYourNationalAccessAccountNew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContainerCheckYourNationalNewCubit(),
      child: ContainerContentNew(),
    );
  }
}
