import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../logic/services_cubit/services_cubit.dart';
import '../../../../../logic/services_cubit/services_state.dart';



class ChooseSize extends StatelessWidget {
 ChooseSize({super.key});
  final List<String> optionsNum = ["1", "2", "3"];
  @override
  Widget build(BuildContext context) {
    return    BlocBuilder<ServicesCubit, ServicesState>(
      builder: (context, state) {
        int selectedSizeIndex = -1;
        if (state is SelectSizeIndex) {
          selectedSizeIndex = state.selectedSizeIndex;
        }
        return Row(
          spacing: 10,
          children: List.generate(optionsNum.length, (index) {
            final isSelected = selectedSizeIndex == index;
            return ButtonWidget(
              heightContainer: 48,
              widthContainer: 48,
              borderRadius: 24,
              borderColor: AppColors.lightGreyColor,
              text: optionsNum[index],
              textColor:
              isSelected
                  ? AppColors.whiteColor
                  : AppColors.greyColor,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              buttonColor:
              isSelected
                  ? AppColors.orangeColor
                  : AppColors.whiteColor,
              onTap: () {
                context.read<ServicesCubit>().selectSizeIndex(index);
              },
              textSize: 14,
              isTextCenter: true,
            );
          }),
        );
      },
    );
  }
}
