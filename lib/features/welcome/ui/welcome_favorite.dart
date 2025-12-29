import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/features/welcome/ui/welcome_home_page.dart';
import 'package:sun_system_app/features/welcome/ui/welcome_location_screen.dart';

import '../../../core/language/language_constant.dart';
import '../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../core/theming/assets.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/theming/text_styles.dart';
import '../logic/favorite_cubit/favorite_cubit.dart';
import '../logic/favorite_cubit/favorite_state.dart';
import '../models/service_model.dart';
import '../widgets/appbar_profile.dart';
import '../widgets/botton_sheet.dart';
import '../widgets/custom_text_with_circular_progress.dart';


class WelcomeFavorite extends StatelessWidget {
  const WelcomeFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ServiceModel> services = [
      ServiceModel(AppLanguageKeys.maintenanceAndRepair),
      ServiceModel(AppLanguageKeys.oilChange),
      ServiceModel(AppLanguageKeys.highways),
      ServiceModel(AppLanguageKeys.carElectricity),
      ServiceModel(AppLanguageKeys.spareParts),
      ServiceModel(AppLanguageKeys.mobileMaintenance),
      ServiceModel(AppLanguageKeys.carAuction),
      ServiceModel(AppLanguageKeys.transportService),
    ];

    return BlocProvider(
      create: (context) => FavoriteServicesCubit(),
      child: Scaffold(
        appBar: AppbarProfile(
          pageToNavigate:  WelcomeLocationScreen(),
          image: AppImageKeys.notification,
        ),
        bottomSheet: BottonSheet(
          containerHeight: 90,
          onTap: () {
            Navigator.of(context).pushReplacement(
              NavigateToPageWidget(const WelcomeHomePage()),
            );
          },
        ),
        body:SafeArea(
          child:  SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Flexible(
              child: SizedBox(
              width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              const SizedBox(height: 32),
              CustomTextWithCircularProgress(
                textTitle: AppLanguageKeys.favoriteServices,
                textDescription: AppLanguageKeys.selectFavoriteServices,
                current: 4,
                total: 4,
              ),
              const SizedBox(height: 32),
              TextInAppWidget(
                text: AppLanguageKeys.chooseFavoriteServices,
                textSize: 14,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkColor,
              ),
              const SizedBox(height: 16),
              BlocBuilder<FavoriteServicesCubit, FavoriteServicesState>(
                buildWhen: (previous, current) =>
                previous.selectedServices != current.selectedServices,
                builder: (context, state) {
                  return Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: services.map((service) {
                      return CustomContainer(
                        text: service.title,
                        isSelected: state.selectedServices.contains(service),
                        onTap: () =>
                            context.read<FavoriteServicesCubit>().toggleService(
                                service),
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          )))])]))),
        ),

    );
  }
}
