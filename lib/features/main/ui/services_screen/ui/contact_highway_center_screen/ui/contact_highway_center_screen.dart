import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../models/services_center_model.dart';

import '../../../../map_screen/ui/delivery_location_screeen.dart';
import '../widgets/delivery_communication.dart';

class ContactHighwayCenterScreen extends StatelessWidget {
  const ContactHighwayCenterScreen({super.key, required this.center});
  final ServiceCenter center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppbarProfile(
        image: AppImageKeys.notification,
        title: AppLanguageKeys.centernName,
        showDefaultProfileImage: true,),
      body:  Stack(
        alignment: Alignment.center,
        children: [
          DeliveryCommunication(),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  NavigateToPageWidget(  BlocProvider(
                      create: (context) => getIt<ServiceCenterDetailsCubit>(),
                     child: DeliveryLocationScreen())));
            },
              child: Icon(Icons.location_on_outlined,size: 30,)),
          FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 130),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: CircularProgressIndicator(strokeWidth: 5, valueColor: AlwaysStoppedAnimation<Color>(AppColors.orangeColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      TextInAppWidget(text: AppLanguageKeys.waitingApproval, textSize: 20, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    builder: (context) {
                      return SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 50),
                          child: Column(
                            spacing: 20,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(AppImageKeys.requestSuccessIcon, width: 260, height: 181,),
                              const TextInAppWidget(text: AppLanguageKeys.orderAccepted, textSize: 20, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.mediumFontFamily,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                });
                return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }
}

