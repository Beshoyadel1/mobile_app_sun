import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_state.dart';
import '../../../../../models/services_center_model.dart';
import '../../../../home_screen/widgets/card_services.dart';
import '../widgets/packages_widget.dart';
import '../widgets/ratings_widget.dart';
import '../widgets/service_center_botton_sheet.dart';
import '../widgets/shared_services.dart';
import '../widgets/spare_parts_and_products.dart';




class ServiceCenterDetailsScreen extends StatelessWidget {
  final ServiceCenter center;
  final serviceCenters = AppData.serviceCenters;

  ServiceCenterDetailsScreen({super.key, required this.center});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarProfile(
        image: AppImageKeys.notification,
        title: AppLanguageKeys.centernName,
        showDefaultProfileImage: true,

      ),
      body: BlocBuilder<ServiceCenterDetailsCubit, ServiceCenterDetailsState>(
                builder: (context, state) {

                  return Stack(
                    children: [
                  Center(
                  child: SingleChildScrollView(
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
                    spacing: 16,
                  children: [
                            CardServices(center: center),
                            SharedServices(),
                            center.name == serviceCenters[1].name || center.name == serviceCenters[4].name?
                            PackagesWidget() : SparePartsAndProducts(),
                            RatingsWidget(),
                            const SizedBox(height: 140),
                          ],
                        )))])]))),

                      ServiceCenterBotonSheet(center: center,)
                    ],
                  );
                },
              )

    );
  }
}

