import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_list_tile.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_state.dart';
import '../../../../../models/services_center_model.dart';
import '../../../../../models/services_item.dart';



class ServicesList extends StatelessWidget {
  ServicesList({super.key, required this.center});
  final ServiceCenter center;
  final serviceCenters=AppData.serviceCenters;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceCenterDetailsCubit, ServiceCenterDetailsState>(
      builder: (context, state) {
        final services = state is SelectServicesState ?

        center.name==serviceCenters[0]?   state.services : state.specificServices:
        <ServiceItem>[];
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: services.length,
          itemBuilder: (context, index) {
            final service = services[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: CustomListTile(
                containerColor: AppColors.whiteColor,
                leading: CircleAvatar(
                  backgroundColor: AppColors.veryLightOrangeColor.withAlpha(60),
                  radius: 32,
                  child: Image.asset(
                    service.image,
                    height: 25,
                    width: 25,
                  ),
                ),
                title: TextInAppWidget(
                  text: service.name,
                  textSize: 16,
                  textColor: AppColors.darkColor,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                ),
                subtitle: TextInAppWidget(
                  text: '${service.price.toStringAsFixed(2)}',
                  textSize: 10,
                  textColor: AppColors.orangeColor,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                ),
                trailing: GestureDetector(
                  onTap: () {
                    context.read<ServiceCenterDetailsCubit>().toggleServiceCheckbox(index);
                  },
                  child: Icon(
                    service.isChecked ? Icons.check_box : Icons.check_box_outline_blank_outlined,
                    color: service.isChecked ? AppColors.orangeColor : AppColors.darkColor,
                    size: 32,
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

