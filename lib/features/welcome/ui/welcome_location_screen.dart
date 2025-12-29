
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

import '../../../core/language/language_constant.dart';
import '../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../core/theming/assets.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../main/ui/widgets/flutter_map_widget.dart';
import '../logic/location_cubit/location_cubit.dart';
import '../logic/location_cubit/location_state.dart';
import '../widgets/appbar_profile.dart';
import '../widgets/botton_sheet.dart';
import '../widgets/custom_text_with_circular_progress.dart';
import 'welcome_favorite.dart';
import 'welcome_select_car_screen.dart';


class WelcomeLocationScreen extends StatelessWidget {
   WelcomeLocationScreen({super.key});

  final TextEditingController searchController = TextEditingController();
  final MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
  create: (context) => LocationCubit(),
  child: Scaffold(
      appBar: AppbarProfile(
          pageToNavigate: const WelcomeSelectCarScreen(),
          image: AppImageKeys.notification),
      bottomSheet: BottonSheet(
        containerHeight: 90,
        onTap: () {
          Navigator.of(context).pushReplacement(
            NavigateToPageWidget(const WelcomeFavorite()),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: CustomTextWithCircularProgress(
              textTitle: AppLanguageKeys.yourLocation,
              textDescription: AppLanguageKeys.nearbyServices,
              current: 3,
              total: 4,
            ),
          ),
          const SizedBox(height: 32),
          Expanded(
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
                  final center = state.latLng;
                  return Stack(
                    children: [
                      FlutterMapWidget(centerLocation: center, mapController: mapController,),
                      Positioned(
                        top: 16, left: 16, right: 16,
                        child: TextFormFieldWidget(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                          isColumn: false,
                          textFormController: searchController,
                          textSize: 14,
                          textColor: AppColors.darkGreyColor,
                          fillColor: AppColors.whiteColor,
                          borderColor: AppColors.lightGreyColor,
                          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                          isValidator: true,
                          onChanged: (val) => context.read<LocationCubit>().searchLocation(val),
                        ),
                      )
                    ],
                  );
                }
                if (state is LocationError) {
                  return Center(child: Text(state.message));
                }
                return const SizedBox.shrink();
              },

            ),
          ),
        ],
      ),
    ),
);
  }
}
