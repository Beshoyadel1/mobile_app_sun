import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../screens/details_report_screen.dart';

class CustomDetailsReportWidget extends StatelessWidget {
  const CustomDetailsReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return          CustomContainer(
      isSelected: true,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              DetailsReportScreen ()),
        );
      },
      borderRadius: BorderRadius.circular(10),
      containerColor: AppColors.whiteColor,
      border: Border.all(color: AppColors.lightGreyColor),
      typeWidget: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInAppWidget(
                text: '#656556',
                textColor: AppColors.blackColor44,
                textSize: 14,
                fontWeightIndex:
                FontSelectionData.regularFontFamily,
              ),
              TextInAppWidget(
                text: '1/1/2025 ',
                textColor: AppColors.blackColor44,
                textSize: 14,
                fontWeightIndex:
                FontSelectionData.regularFontFamily,
              ),
            ],
          ),
          Row(
            children: [
              TextInAppWidget(
                text: 'البترول',
                textColor: AppColors.blackColor44,
                textSize: 14,
                fontWeightIndex:
                FontSelectionData.regularFontFamily,
              ),
              Spacer(),
              TextInAppWidget(
                text: '200.00',
                textColor: AppColors.orangeColor,
                textSize: 14,
                fontWeightIndex:
                FontSelectionData.regularFontFamily,
              ),
              Image.asset(
                AppImageKeys.coin,
                height: 18,
                width: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
