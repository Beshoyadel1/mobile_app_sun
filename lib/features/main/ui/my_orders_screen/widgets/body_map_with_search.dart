import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

import '../../../../../core/AppDataList.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../welcome/logic/location_cubit/location_cubit.dart';
import '../../../../welcome/logic/location_cubit/location_state.dart';

import '../../../logic/service_center_details_cubit/service_center_details_cubit.dart';

import '../../../models/services_center_model.dart';

import '../../services_screen/ui/services_date_screen/ui/services_date_screen.dart';


import '../../widgets/flutter_map_widget.dart';

class BodyMapWithSearch extends StatelessWidget {
   BodyMapWithSearch({super.key, required this.center});
  final ServiceCenter center;
  final serviceCenters=AppData.serviceCenters;
  final TextEditingController searchController = TextEditingController();
  final MapController mapController = MapController();
  @override
  Widget build(BuildContext context) {
    return     Expanded(
      child: BlocConsumer<LocationCubit, LocationState>(
        listener: (context, state) {
          if (state is LocationLoaded) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              mapController.move(state.latLng, 13);
            });
          } else if (state is LocationError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is LocationInitial) {
            context.read<LocationCubit>().getUserLocation();
            return const Center(child: CircularProgressIndicator());
          }
          if (state is LocationLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is LocationLoaded) {
            final centerLocation = state.latLng;
            return Stack(
              children: [
                FlutterMapWidget(centerLocation: centerLocation, mapController: mapController,),
                Positioned(
                  top: 66, left: 16, right: 16,
                  child: TextFormFieldWidget(
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20),
                    isColumn: false,
                    textFormController: searchController,
                    textSize: 14,
                    textColor: AppColors.darkGreyColor,
                    fillColor: AppColors.whiteColor,
                    borderColor: AppColors.lightGreyColor,
                    fontWeightIndex:
                    FontSelectionData.semiBoldFontFamily,
                    isValidator: true,
                    onChanged: (val) => context.read<LocationCubit>().searchLocation(val),
                  ),
                ),
                Positioned(
                  top: 29, left: 20, right: 20,
                  child: TextInAppWidget(text: AppLanguageKeys.searchYourAddress, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkGreyColor,),
                ),
                Positioned(
                  bottom: 49, left: 20, right: 20,
                  child: ButtonWidget(
                    heightContainer: 60,
                    widthContainer: 385,
                    borderRadius: 50,
                    text: AppLanguageKeys.confirmCarLocation,
                    textColor: AppColors.whiteColor,
                    fontWeightIndex:
                    FontSelectionData.regularFontFamily,
                    buttonColor: AppColors.orangeColor,
                    onTap: () {
                      //center.name == serviceCenters[3].name?
                      Navigator.of(context).push(
                        NavigateToPageWidget(
                          BlocProvider.value(
                            value: context.read<ServiceCenterDetailsCubit>(),
                            child: ServicesDateScreen(center: center,),
                          ),
                        ),
                      );

                    },
                    textSize: 18,
                    isTextCenter: true,
                  ),
                ),
              ],
            );
          }
          if (state is LocationError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
