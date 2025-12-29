import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_on_the_way/container_since_two_day_ago.dart';

class FirstRowContainerOnTheWay extends StatelessWidget {
  const FirstRowContainerOnTheWay ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.onTheWay,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        ContainerSinceTwoDayAgo(),
      ],
    );
  }
}
//