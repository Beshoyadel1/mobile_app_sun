import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

import 'custom_details_report_widget.dart';

class DetailsReportWidget extends StatelessWidget {
  const DetailsReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomContainer(
      isSelected: true,
      onTap: () {
         },
      borderRadius: BorderRadius.circular(10),
      border: Border(),
      containerColor: AppColors.whiteColor,
      typeWidget: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          TextInAppWidget(
            text: AppLanguageKeys.invoiceDetailsInPeriod,
            textColor: AppColors.blackColor44,
            textSize: 16,
            fontWeightIndex: FontSelectionData.regularFontFamily,
          ),

          CustomDetailsReportWidget(),
          CustomDetailsReportWidget(),
          CustomDetailsReportWidget(),
          CustomDetailsReportWidget(),
        ],
      ),
    );
  }
}
