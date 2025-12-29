import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

import '../../../../../../welcome/widgets/spare_parts_ui.dart';
import '../../../../../logic/basic_services_cubit/basic_services_cubit.dart';
import '../../../../../logic/basic_services_cubit/basic_services_state.dart';

import '../../../../../models/services_center_model.dart';
import '../../../../home_screen/widgets/action_filter.dart';
import '../../../../home_screen/widgets/container_services_basic_list.dart';
import '../../../../widgets/custom_white_circle.dart';
import '../../../../home_screen/widgets/image_slider.dart';
import 'service_centers_list.dart';



class BasicServices extends StatelessWidget {
  final int selectedIndex;

  const BasicServices({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BasicServicesCubit()..setSelectedIndex(selectedIndex),
      child: BlocBuilder<BasicServicesCubit, BasicServicesState>(
        builder: (context, state) {
          final cubit = context.read<BasicServicesCubit>();
          List<ServiceCenter> centers = [];
          bool isFiltered = false;
          if (state is BasicServicesInitial) {
            centers = state.centers;
          } else if (state is BasicServicesFiltered) {
            centers = state.filteredCenters;
            isFiltered = true;
          }
          final selectedFilters = [
            ...cubit.selectedServices,
            ...cubit.selectedFeatures,
            ...cubit.selectedWarranties,
            if (cubit.selectedOrder != null) cubit.selectedOrder!,
          ];

          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!isFiltered) ...[
                      Center(child: ImageSlider()),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          TextInAppWidget(text: AppLanguageKeys.basicServices, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkGreyColor,),
                          const Spacer(),
                          CustomWhiteCircle(typeWidget: Image.asset(AppImageKeys.searchOrangeIcon, height: 21, width: 21,),
                          ),
                          const SizedBox(width: 20), ActionFilter(),
                        ],
                      ),
                      ContainerServicesBasicList(),
                      const SizedBox(height: 16),
                    ] else ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TextInAppWidget(text: AppLanguageKeys.searchResult,textSize: 16,textColor: AppColors.darkGreyColor,fontWeightIndex: FontSelectionData.regularFontFamily),
                          ActionFilter(),
                        ],
                      ),
                      const SizedBox(height: 8),
                      if (selectedFilters.isNotEmpty)
                      TextInAppWidget(text:selectedFilters.join(" , "),textSize: 16,textColor: AppColors.orangeColor,fontWeightIndex: FontSelectionData.regularFontFamily),
                      const SizedBox(height: 16),
                    ],

                    Center(
                      child: _buildServiceUI(context, cubit.selectedIndex, centers),
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget _buildServiceUI(BuildContext context, int selectedIndex, List<ServiceCenter> centers) {
  final service = AppData.specificServicesPage(context)[selectedIndex];
  switch (service.title) {
    case  AppLanguageKeys.sparePartsService:
      return  SparePartsUi(centers: centers);

    default:
      return ServiceCentersList(centers: centers);
  }
}

