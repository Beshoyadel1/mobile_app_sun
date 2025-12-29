import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/custom_container.dart';
import 'package:sun_system_app/features/welcome/logic/location_cubit/location_cubit.dart';

import '../../../../../../core/AppDataList.dart';
import '../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../models/services_center_model.dart';
import '../../../my_orders_screen/widgets/order_details_widget.dart';
import '../cars_haraj_screen/widgets/add_car_image.dart';
import '../services_payment_screen/widgets/services.dart';
import '../services_payment_screen/widgets/square_map_widget.dart';

class FlatbedTrackScreen extends StatelessWidget {
   FlatbedTrackScreen({super.key, required this.center});
  final ServiceCenter center;
  final serviceCenters = AppData.serviceCenters;
   final orders = AppData.orders;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LocationCubit(),
  child: Scaffold(
        appBar: AppbarProfile(
          image: AppImageKeys.notification,
          title:AppLanguageKeys.requestTowTruck,
          showDefaultProfileImage: true,

        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Services(center: center, serviceCenters: serviceCenters),
                  AddCarImage(),
                  TextFormFieldWidget(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 60,
                    ),
                    isColumn: true,
                    text: AppLanguageKeys.writeNote,
                    textFormController: TextEditingController(),
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
                  const SizedBox(height: 16),
                  TextInAppWidget(text: AppLanguageKeys.setCurrentLocation, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                  SquareMapWidget(),
                  const SizedBox(height: 16),
                  Center(
                    child: CustomContainer(isSelected: true, onTap: (){
                      context.read<AppCubit>().changeIndex(0);
                      Navigator.of(context).popUntil((route) => route.isFirst);

                      Navigator.of(context).push(
                        NavigateToPageWidget(
                          OrderDetailsWidget(order: orders[0]),
                        ),
                      );
                    },
                      typeWidget: TextInAppWidget(text: AppLanguageKeys.createServiceRequest, textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.whiteColor,),
                      padding: EdgeInsets.symmetric(horizontal: 133,vertical: 10),
                      containerColor: AppColors.orangeColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
);
  }
}
