

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/custom_container.dart';

import '../../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/container_contact_a_maintenance_representative.dart';
import '../../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../map_screen/ui/delivery_location_screeen.dart';


class ConfirmCompanyRequestServices extends StatelessWidget {
  const ConfirmCompanyRequestServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Image.asset(AppImageKeys.successRightIcon, width: 99, height: 99,),
        TextInAppWidget(text:AppLanguageKeys.requestApproved,
          textSize: 20,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.darkColor,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 80,),
        ContainerContactAMaintenanceRepresentative(),
        const SizedBox(height: 20,),
        CustomContainer(isSelected: true, onTap: (){
          Navigator.of(context).push(
            NavigateToPageWidget(
              BlocProvider.value(
                value: context.read<ServiceCenterDetailsCubit>(),
                child: DeliveryLocationScreen(),
              ),
            ),
          );
        },
          containerColor: AppColors.orangeColor,
          borderRadius: BorderRadius.circular(50),
          containerWidth: 385,
          typeWidget: Center(
            child: TextInAppWidget(text: AppLanguageKeys.showMapLocation,
              textSize: 16,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.whiteColor,


            ),
          ),
        )

      ],
    );
  }
}
