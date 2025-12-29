import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/assets.dart';
import '../../../logic/basic_services_cubit/basic_services_cubit.dart';
import 'filter_dialog.dart';

import '../../widgets/custom_white_circle.dart';

class ActionFilter extends StatelessWidget {
  const ActionFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return      GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (dialogContext) {
            return BlocProvider.value(
              value: context.read<BasicServicesCubit>(),
              child: const FilterDialog(),
            );
          },
        );
      },
      child: CustomWhiteCircle(
        typeWidget: Image.asset(
          AppImageKeys.filterOrangeIcon,
          height: 21,
          width: 21,
        ),
      ),
    );
  }
}
