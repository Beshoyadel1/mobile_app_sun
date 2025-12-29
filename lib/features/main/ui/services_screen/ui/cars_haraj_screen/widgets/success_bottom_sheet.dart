
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';

import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

import '../../../../my_orders_screen/widgets/order_details_widget.dart';
class SuccessBottomSheet extends StatelessWidget {
  const SuccessBottomSheet({
    super.key,
    this.textShow,
    this.showOrderReceived = true,
    this.showPleaseAttend = true,
    this.showOrderDetailsButton = true,
  });

  final String? textShow;
  final bool showOrderReceived;
  final bool showPleaseAttend;
  final bool showOrderDetailsButton;

  @override
  Widget build(BuildContext context) {
    final orders = AppData.orders;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: Column(
          spacing: 20,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppImageKeys.requestSuccessIcon,
              width: 260,
              height: 181,
            ),
            if (showOrderReceived)
              TextInAppWidget(
                text: textShow ?? AppLanguageKeys.orderReceived,
                textSize: 20,
                textColor: AppColors.darkColor,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
              ),
            if (showPleaseAttend)
              const TextInAppWidget(
                text: AppLanguageKeys.pleaseAttend,
                textSize: 18,
                textColor: AppColors.darkColor,
                fontWeightIndex: FontSelectionData.regularFontFamily,
              ),
            const SizedBox(height: 20),
            if (showOrderDetailsButton)
              ButtonWidget(
                heightContainer: 60,
                widthContainer: 385,
                text: AppLanguageKeys.orderDetails,
                textSize: 18,
                borderRadius: 100,
                textColor: AppColors.whiteColor,
                buttonColor: AppColors.orangeColor,
                onTap: () {
                  context.read<AppCubit>().changeIndex(0);
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.of(context).push(
                    NavigateToPageWidget(
                      OrderDetailsWidget(order: orders[0]),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }


  static void show(
      BuildContext context, {
        String? textShow,
        bool showOrderReceived = true,
        bool showPleaseAttend = true,
        bool showOrderDetailsButton = true,
      }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SuccessBottomSheet(
          textShow: textShow,
          showOrderReceived: showOrderReceived,
          showPleaseAttend: showPleaseAttend,
          showOrderDetailsButton: showOrderDetailsButton,
        );
      },
    );
  }
}