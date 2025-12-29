import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../logic/basic_services_cubit/basic_services_cubit.dart';
import '../../../logic/basic_services_cubit/basic_services_state.dart';
import '../../widgets/custom_filter_chip.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key,required this.cubit});
  final BasicServicesCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextInAppWidget(text:  AppLanguageKeys.services, textSize: 16, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
        BlocBuilder<BasicServicesCubit, BasicServicesState>(
          builder: (context, state) {
            return Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [AppLanguageKeys.spareParts, AppLanguageKeys.transportService, AppLanguageKeys.cleaningAndWashing,  AppLanguageKeys.oilServices, AppLanguageKeys.periodicMaintenance,AppLanguageKeys.speedWay]
                  .map((option) {
                final isSelected = cubit.selectedServices.contains(option);
                return CustomFilterChip(
                  label: option,
                  selected: isSelected,
                  onTap: () => cubit.toggleService(option),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}
