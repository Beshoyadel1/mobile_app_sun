import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../models/services_center_model.dart';



import '../../contact_highway_center_screen/ui/contact_highway_center_screen.dart';
import '../../services_payment_screen/ui/services_payment_screen.dart';
import '../widgets/date_body.dart';

class ServicesDateScreen extends StatelessWidget {
  ServicesDateScreen({super.key, required this.center, this.textController});

  final ServiceCenter center;
  final serviceCenters = AppData.serviceCenters;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppbarProfile(
        image: AppImageKeys.notification,
        title: AppLanguageKeys.centernName,
        showDefaultProfileImage: true,

      ),
      body:

      Padding(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if( center.name == serviceCenters[2].name ||
                  center.name == serviceCenters[3].name)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 20,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextInAppWidget(text: AppLanguageKeys.writeNotes, textSize: 16, textColor: AppColors.darkGreyColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                    ),
                    TextFormFieldWidget(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 60),
                      isColumn: false,
                      textFormController: textController ??
                          TextEditingController(),
                      textSize: 14,
                      textColor: AppColors.darkGreyColor,
                      fillColor: AppColors.whiteColor,
                      borderColor: AppColors.lightGreyColor,
                      textFormHeight: 113,
                      fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                      isValidator: true,
                      focusedBorderRadius: BorderRadius.circular(14),
                      enabledBorderRadius: BorderRadius.circular(14),
                    ),
                  ],
                ),
              if(center.name != serviceCenters[3].name)
              DateBody(),
              const SizedBox(height: 66),
              //const Spacer(),
              Center(
                child: ButtonWidget(
                  heightContainer: 60,
                  widthContainer: 385,
                  borderRadius: 50,
                  text: center.name != serviceCenters[3].name?AppLanguageKeys.bookTime:AppLanguageKeys.sendOrder,
                  textColor: AppColors.whiteColor,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  buttonColor: AppColors.orangeColor,
                  onTap: () {
                    center.name != serviceCenters[3].name?
                    Navigator.of(context).push(
                      NavigateToPageWidget(
                        BlocProvider.value(
                          value: context.read<ServiceCenterDetailsCubit>(),
                          child: ServicesPaymentScreen(center: center),
                        ),
                      ),
                    ):    Navigator.of(context).push(
                      NavigateToPageWidget(
                        BlocProvider(
                          create: (context) => getIt<ServiceCenterDetailsCubit>(),
                          child: ContactHighwayCenterScreen(center: center),
                        ),
                      ),
                    );
                   },
                  textSize: 18,
                  isTextCenter: true,
                ),
              ),
            ],
          ),
        ),
      ),)
    );
  }

}