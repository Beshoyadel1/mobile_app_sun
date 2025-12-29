import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/container_contact_a_maintenance_representative.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../models/services_center_model.dart';
import '../../../../map_screen/ui/delivery_location_screeen.dart';
import 'widgets/confirm_company_request_services.dart';





class CompanyRequestService extends StatelessWidget {
  CompanyRequestService({super.key, required this.center, this.textController});

  final ServiceCenter center;
  final serviceCenters = AppData.serviceCenters;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppbarProfile(
          image: AppImageKeys.notification,
          title: AppLanguageKeys.requestService,
          showDefaultProfileImage: true,

        ),
        body:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SafeArea(
              child: SingleChildScrollView(
                child:  Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConfirmCompanyRequestServices(),
                      // TextInAppWidget(text: AppLanguageKeys.requestSentToCompany,
                      //     textSize: 22,fontWeightIndex: FontSelectionData.mediumFontFamily,
                      //     textAlign: TextAlign.center,
                      //     textColor: AppColors.darkColor),
                      //         InkWell(
                      //       onTap: () {
                      //         center.name != serviceCenters[3].name?
                      //         Navigator.of(context).push(
                      //           NavigateToPageWidget(
                      //             BlocProvider.value(
                      //               value: context.read<ServiceCenterDetailsCubit>(),
                      //               child: ServicesPaymentScreen(center: center),
                      //             ),
                      //           ),
                      //         ):    Navigator.of(context).push(
                      //           NavigateToPageWidget(
                      //             BlocProvider(
                      //               create: (context) => getIt<ServiceCenterDetailsCubit>(),
                      //               child: ContactHighwayCenterScreen(center: center),
                      //             ),
                      //           ),
                      //         );
                      //       },
                      //             child: TextInAppWidget(text: AppLanguageKeys.waitingForApproval,textSize: 20,fontWeightIndex: FontSelectionData.mediumFontFamily,textColor: AppColors.orangeColor)),
                            ]
                )))),
        ));
  }
}

