import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_cubit/app_cubit.dart';
import '../../../../core/theming/colors.dart';

class DifferentMoodWidget extends StatelessWidget {
  const DifferentMoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return      DropdownButtonFormField<int>(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.lightGreyColor
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.lightGreyColor
          ),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      value: context.watch<AppCubit>().selectedType,
      onChanged: (int? value) {
        if (value != null) {
          context.read<AppCubit>().changeSelectedType(value);
        }
      },
      items: const [
        DropdownMenuItem(
          value: 0,
          child: Text('Admin'),
        ),
        DropdownMenuItem(
          value: 1,
          child: Text('Client'),
        ),
      ],
    );

  }
}
