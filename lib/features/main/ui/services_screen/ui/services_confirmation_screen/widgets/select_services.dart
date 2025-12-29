import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_state.dart';



class SelectServices extends StatelessWidget {
  const SelectServices({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceCenterDetailsCubit, ServiceCenterDetailsState>(
      builder: (context, state) {
        final selectedTab = state is SelectServicesState ? state.selectedTab : 'services';
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 15,
          children: [
            ButtonWidget(
              heightContainer: 36,
              widthContainer: 120,
              borderRadius: 50,
              text: AppLanguageKeys.selectService,
              textColor: selectedTab == 'services' ? AppColors.whiteColor : AppColors.greyColor,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              buttonColor: selectedTab == 'services' ? AppColors.orangeColor : AppColors.whiteColor,
              borderColor: selectedTab == 'services' ? null : AppColors.lightGreyColor,
              onTap: () {
                context.read<ServiceCenterDetailsCubit>().selectTab('services');
              },
              textSize: 16,
              isTextCenter: true,
            ),
            ButtonWidget(
              heightContainer: 36,
              widthContainer: 120,
              borderRadius: 50,
              text: AppLanguageKeys.sharedPackages,
              textColor: selectedTab == 'packages' ? AppColors.whiteColor : AppColors.greyColor,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              buttonColor: selectedTab == 'packages' ? AppColors.orangeColor : AppColors.whiteColor,
              borderColor: selectedTab == 'packages' ? null : AppColors.lightGreyColor,
              onTap: () {
                context.read<ServiceCenterDetailsCubit>().selectTab('packages');
              },
              textSize: 16,
              isTextCenter: true,
            ),
          ],
        );
      },
    );
  }
}