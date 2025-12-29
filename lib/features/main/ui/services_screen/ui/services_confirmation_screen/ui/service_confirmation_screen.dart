import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/constants.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_state.dart';
import '../../../../../models/services_center_model.dart';

import '../../company_request_service/ui/company_request_service.dart';
import '../../services_date_screen/ui/services_date_screen.dart';
import '../../spare_and_products_screen/ui/spare_and_products_screen.dart';
import '../widgets/packages_list.dart';
import '../widgets/select_services.dart';
import '../widgets/services_list.dart';

class ServiceConfirmationScreen extends StatelessWidget {
  ServiceConfirmationScreen({super.key, required this.center});
final ServiceCenter center;
  final serviceCenters=AppData.serviceCenters;
  @override
  Widget build(BuildContext context) {
    context.read<ServiceCenterDetailsCubit>().bookService();

    return Scaffold(
      appBar:  AppbarProfile(
        image: AppImageKeys.notification,
        title: AppLanguageKeys.centernName,
        showDefaultProfileImage: true,),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInAppWidget(
                    text:AppLanguageKeys.selectNeededServices,
                    textSize: 16,
                    textColor: AppColors.darkColor,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                  ),
                  const SizedBox(height: 20),
                  SelectServices(),
                  const SizedBox(height: 20),
                  BlocBuilder<ServiceCenterDetailsCubit, ServiceCenterDetailsState>(

                    builder: (context, state) {
                      final selectedTab = state is SelectServicesState ? state.selectedTab : 'services';
                      return selectedTab == 'services' ?
                      ServicesList(center:center,) :
                      PackagesList();
                    },
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ButtonWidget(
                heightContainer: 60,
                widthContainer: 300,
                borderRadius: 50,
                text: AppLanguageKeys.confirmService,
                textColor: AppColors.whiteColor,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                buttonColor: AppColors.orangeColor,
                onTap: () {
                  center.name == serviceCenters[0].name?
                  Navigator.of(context).push(
                    NavigateToPageWidget(
                      BlocProvider.value(
                        value: context.read<ServiceCenterDetailsCubit>(),
                        child: AppConstants.isIndividual?
                        ServicesDateScreen(center: center):
                        CompanyRequestService(center: center,),
                      ),
                    ),
                  ):   Navigator.of(context).push(
                    NavigateToPageWidget(
                      BlocProvider.value(
                        value: context.read<ServiceCenterDetailsCubit>(),
                        child: SpareAndProductsScreen(center: center,),
                      ),
                    ),
                  );
                 },
                textSize: 18,
                isTextCenter: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}