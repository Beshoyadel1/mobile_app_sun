import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../logic/basic_services_cubit/basic_services_cubit.dart';
import '../../../logic/basic_services_cubit/basic_services_state.dart';
import '../../widgets/custom_filter_chip.dart';

class WarrantyStatus extends StatelessWidget {
  const WarrantyStatus({super.key,required this.cubit});
final BasicServicesCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextInAppWidget(text:  AppLanguageKeys.warrantyStatus, textSize: 16, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
        BlocBuilder<BasicServicesCubit, BasicServicesState>(
          builder: (context, state) {
            return Wrap(
              spacing: 8,
              children: [AppLanguageKeys.all, AppLanguageKeys.sunWarranty].map((option) {
                final isSelected = cubit.selectedWarranties.contains(option);
                return CustomFilterChip(
                  label: option,
                  selected: isSelected,
                  onTap: () => cubit.toggleWarranty(option),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}
