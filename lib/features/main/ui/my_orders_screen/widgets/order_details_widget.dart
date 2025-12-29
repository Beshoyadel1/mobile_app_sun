import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../welcome/logic/location_cubit/location_cubit.dart';
import '../../../../welcome/widgets/appbar_profile.dart';
import '../../../models/order_model.dart';

import '../../main_screen.dart';
import 'create_order_widget.dart';
import '../../services_screen/ui/contact_highway_center_screen/widgets/delivery_communication.dart';
import '../../services_screen/ui/services_payment_screen/widgets/invoice_widget.dart';
import '../../services_screen/ui/services_payment_screen/widgets/location_address.dart';
import 'package_widget.dart';
import '../../services_screen/ui/services_payment_screen/widgets/products_widget.dart';
import 'rating_services_Dialog.dart';
import 'service_address.dart';
import '../../widgets/custom_feature_row.dart';



class OrderDetailsWidget extends StatelessWidget {
  final OrderModel order;
  final Widget? pageToNavigate;
  const OrderDetailsWidget({super.key, required this.order, this.pageToNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarProfile(
        image: AppImageKeys.notification,
        showDefaultProfileImage: true,
        title: '${AppLanguageKeys.order} ${order.orderCode}',
        showBackButton: true,
        onBack: () {
          if (pageToNavigate != null) {
            Navigator.of(context).pushReplacement(
              NavigateToPageWidget(MainScreen()),
            );
          } else {
            Navigator.pop(context);
          }
        },
      ),
      body: BlocProvider(
        create: (context) => LocationCubit(),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CreateOrderWidget(),
              CustomContainer(
                isSelected: false,
                onTap: () {},
                borderRadius: BorderRadius.circular(14),
                border: Border(),
                typeWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      TextInAppWidget(
                        text: AppLanguageKeys.services,
                        textSize: 14,
                        textColor: AppColors.darkColor,
                        fontWeightIndex: FontSelectionData.regularFontFamily,
                      ),
                      PackageWidget(),
                    ],
                  ),
                ),
              ),
              ProductsWidget(),
              ServiceAddress(),
              CustomContainer(
                isSelected: false,
                onTap: () {},
                borderRadius: BorderRadius.circular(14),
                border: Border(),
                typeWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PackageWidget(),
                ),
              ),
              DeliveryCommunication(),
              CustomContainer(
                isSelected: false,
                onTap: () {},
                borderRadius: BorderRadius.circular(14),
                border: Border(),
                typeWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TimelineRow(
                        leftText: AppLanguageKeys.requestService,
                        rightText: '1 يناير - - 4:00 م',
                      ),
                      TimelineRow(
                        leftText: AppLanguageKeys.providerArrival,
                        rightText: '1 يناير - - 4:00 م',
                      ),
                      TimelineRow(
                        leftText: AppLanguageKeys.serviceEnded,
                        rightText: '1 يناير - - 4:00 م',
                      ),
                      Divider(color: AppColors.greyColor, thickness: 1),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return RatingServicesDialog();
                            },
                          );
                        },
                        child: TimelineRow(
                          leftText: AppLanguageKeys.rateService,
                          rightText: AppLanguageKeys.notRatedYet,
                          rightTextColor: AppColors.orangeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const InvoiceWidget(),
              LocationAddress(),
            ],
          ),
        ),
      ),
    );
  }
}




class TimelineRow extends StatelessWidget {
  const TimelineRow({
    super.key,
    required this.leftText,
    required this.rightText,
   this.rightTextColor,
  });
  final String leftText;
  final String rightText;
  final Color? rightTextColor;
  @override
  Widget build(BuildContext context) {
    return CustomFeatureRow(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(text: leftText, textSize: 12, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
        TextInAppWidget(text: rightText, textSize: 12, textColor:rightTextColor ??AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
      ],
    );
  }
}
