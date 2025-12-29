import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/order_list/create_new_order_in_order_list/ui/screens/create_new_order/container_since_two_day_ago.dart';

class FirstRowContainerCreateNewOrder extends StatelessWidget {
  const FirstRowContainerCreateNewOrder ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.createNewRequest,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        ContainerSinceTwoDayAgoCreateNewOrder(),
      ],
    );
  }
}
//