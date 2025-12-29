import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/check_your_national_access_account/logic/container_check_your_national_cubit.dart';
import '../../../../../features/Insurance/check_your_national_access_account/ui/screens/container_content.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerCheckYourNationalAccessAccount extends StatelessWidget {
  const ContainerCheckYourNationalAccessAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContainerCheckYourNationalCubit(),
      child: ContainerContent(),
    );
  }
}
