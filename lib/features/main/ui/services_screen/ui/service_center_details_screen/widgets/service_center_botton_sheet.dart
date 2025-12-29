import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../welcome/widgets/botton_sheet.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../models/services_center_model.dart';
import '../../../../my_orders_screen/ui/service_location_screen.dart';
import '../../flatbed_track_screen/flatbed_track_screen.dart';
import '../../services_confirmation_screen/ui/service_confirmation_screen.dart';




class ServiceCenterBotonSheet extends StatefulWidget {
  const ServiceCenterBotonSheet({super.key, required this.center});
  final ServiceCenter center;

  @override
  State<ServiceCenterBotonSheet> createState() => _ServiceCenterBotonSheetState();
}

class _ServiceCenterBotonSheetState extends State<ServiceCenterBotonSheet> {
  final serviceCenters=AppData.serviceCenters;

  @override
  Widget build(BuildContext context) {
    return    Align(
      alignment: Alignment.bottomCenter,
      child: BottonSheet(
        containerHeight:widget.center.name == serviceCenters[2].name? 172:100,
        buttonWidget: Column(
          spacing: 16,
          children: [
            const SizedBox(height: 10,),
            ButtonWidget(
              heightContainer: 60,
              widthContainer: 385,
              image: AppImageKeys.date,
              imageWidth: 31,
              imageHeight: 31,
              borderRadius: 50,
              text: widget.center.name == serviceCenters[4].name?'طلب الخدمة':AppLanguageKeys.bookService,
              textColor: AppColors.whiteColor,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              buttonColor: AppColors.orangeColor,
              iconSize: 31,
              onTap: () {
                widget.center.name == serviceCenters[3].name
                    ? Navigator.push(
                  context,
                  NavigateToPageWidget(
                    BlocProvider.value(
                      value: context.read<ServiceCenterDetailsCubit>(),
                      child: ServiceLocationScreen(center: widget.center),
                    ),
                  ),
                ):widget.center.name == serviceCenters[4].name
                    ? Navigator.push(
                  context,
                  NavigateToPageWidget(
                    BlocProvider.value(
                      value: context.read<ServiceCenterDetailsCubit>(),
                      child: FlatbedTrackScreen(center: widget.center),
                    ),
                  ),
                ):
                Navigator.of(context).push(
                  NavigateToPageWidget(
                    BlocProvider.value(
                      value: context.read<ServiceCenterDetailsCubit>()..bookService(),
                      child: ServiceConfirmationScreen(center: widget.center),
                    ),
                  ),
                );},
              textSize: 18,
              isTextCenter: true,
            ),
            if (widget.center.name == serviceCenters[2].name)
              ButtonWidget(
                heightContainer: 60,
                widthContainer: 385,
                borderRadius: 50,
                text: AppLanguageKeys.mobileMaintenance,
                textColor: AppColors.whiteColor,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                buttonColor: AppColors.secondaryColor,
                image: AppImageKeys.carWhite,
                imageWidth: 31,
                imageHeight: 31,
                iconSize: 31,
                onTap: () {
                  Navigator.of(context).push(
                    NavigateToPageWidget(
                      BlocProvider.value(
                        value: context.read<ServiceCenterDetailsCubit>(),
                        child: ServiceLocationScreen(center: widget.center,),
                      ),
                    ),
                  );
                },
                textSize: 18,
                isTextCenter: true,
              ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
