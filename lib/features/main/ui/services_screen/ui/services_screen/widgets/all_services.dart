import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../features/main/ui/services_screen/ui/services_screen/widgets/types_services.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';

import '../../../../../../../core/pages_widgets/general_widgets/custom_list_tile.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../logic/services_cubit/services_cubit.dart';

class AllServices extends StatelessWidget {
  const AllServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),

            TypesServices(
              title: AppLanguageKeys.basicServices,
              onTypeSelected: (index) {
                context.read<ServicesCubit>().selectTypeService(index);
              }, services: AppData.specificServicesPage(context),
            ),

            const SizedBox(height: 16),
            TextInAppWidget(
              text: AppLanguageKeys.premiumServices,
              textSize: 16,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkGreyColor,
            ),

            Column(
              children: List.generate(
                AppData.specificServicesPage(context).length,
                    (index) {
                  final service = AppData.specificServicesPage(context)[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: InkWell(
                      onTap: () {
                        context.read<ServicesCubit>().selectService(service);
                      },
                      child: CustomListTile(
                        leading: Image.asset(
                          service.image!,
                          width: 55,
                          height: 55,
                        ),
                        title: TextInAppWidget(
                          text: service.title,
                          fontWeightIndex:
                          FontSelectionData.regularFontFamily,
                          textSize: 12,
                          textColor: AppColors.darkColor,
                        ),
                        containerColor: AppColors.whiteColor,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
