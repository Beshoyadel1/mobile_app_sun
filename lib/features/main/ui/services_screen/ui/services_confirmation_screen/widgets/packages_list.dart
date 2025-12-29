
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_state.dart';
import '../../../../widgets/custom_feature_row.dart';

class PackagesList extends StatelessWidget {
  const PackagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceCenterDetailsCubit, ServiceCenterDetailsState>(
      builder: (context, state) {
        if (state is! SelectServicesState) {
          return const SizedBox.shrink();
        }

        final packages = state.packages;
        final selectedIndex = state.selectedPackageIndex;

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: packages.length,
          itemBuilder: (context, index) {
            final isSelected = selectedIndex == index;

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomContainer(
                isSelected: false,
                border: Border.all(
                  color: isSelected ? AppColors.orangeColor : AppColors.whiteColor,

                ),
                onTap: () {
                  context.read<ServiceCenterDetailsCubit>().togglePackageCheckbox(index);
                },
                typeWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    spacing: 12,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextInAppWidget(text: packages[index].name, textSize: 14, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isSelected ? AppColors.orangeColor : AppColors.lightGreyColor,
                                width: 2,
                              ),
                              color: isSelected ? AppColors.orangeColor : Colors.transparent,
                              ),
                          ),
                        ],
                      ),

                      CustomFeatureRow(text: AppLanguageKeys.fullCleaning, icon: Icons.check_circle, iconColor: AppColors.greenColor, iconSize: 13, textSize: 10,),
                      CustomFeatureRow(text: AppLanguageKeys.interiorPolish, icon: Icons.check_circle, iconColor: AppColors.greenColor, iconSize: 13, textSize: 10,),
                      CustomFeatureRow(text: AppLanguageKeys.oilChange, icon: Icons.check_circle, iconColor: AppColors.greenColor, iconSize: 13, textSize: 10,),
                      TextInAppWidget(text: AppLanguageKeys.price300, textSize: 14, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.orangeColor,),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
