import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/logic/location_cubit/location_cubit.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../../welcome/widgets/botton_sheet.dart';
import '../../../../../models/services_center_model.dart';
import '../widgets/appointment.dart';
import '../widgets/bottom_sheet_success_request.dart';
import '../widgets/coupon.dart';
import '../widgets/invoice_widget.dart';
import '../widgets/location_address.dart';
import '../widgets/payment_method.dart';
import '../widgets/products_widget.dart';
import '../widgets/services.dart';
import '../widgets/services_model.dart';


class ServicesPaymentScreen extends StatelessWidget {
  ServicesPaymentScreen({super.key, required this.center});
  final ServiceCenter center;
  final serviceCenters = AppData.serviceCenters;
  final orders = AppData.orders;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationCubit(),
      child: Scaffold(
        appBar:  AppbarProfile(
          image: AppImageKeys.notification,
          title: AppLanguageKeys.centernName,
          showDefaultProfileImage: true,),
        body:  Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextInAppWidget(text: AppLanguageKeys.confirmServiceBooking, textSize: 16, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                  const ServicesModel(),
                  Services(center: center, serviceCenters: serviceCenters),
                  if (center.name != serviceCenters[0].name) ProductsWidget(),
                  const Appointment(),
                  center.name != serviceCenters[2].name
                      ? Column(
                    spacing: 20,
                        children: [
                          const Coupon(),
                          const InvoiceWidget(),
                          const PaymentMethods(),
                        ],
                      )
                      : LocationAddress(),


                  const SizedBox(height: 120),
                ],
              ),
            ),

              center.name != serviceCenters[2].name
                ? Align(
                  alignment: Alignment.bottomCenter,
                  child: BottonSheet(
                    containerHeight: 90,
                    containerColor: AppColors.orangeColor,
                    buttonWidget: BottomSheetSuccessRequest(),
                    onTap: () {},
                  ),
                )
                : Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: BottomSheetSuccessRequest(
                      text: AppLanguageKeys.confirmServiceBooking,
                      textColor: AppColors.whiteColor,
                      buttonColor: AppColors.orangeColor,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
