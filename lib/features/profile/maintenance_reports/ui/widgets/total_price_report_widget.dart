import 'package:flutter/material.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/colors.dart';
import 'custom_row_report_widget.dart';

class TotalPriceReportWidget extends StatelessWidget {
  const TotalPriceReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    CustomContainer(
      isSelected: true,
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      border: Border(),
      containerColor: AppColors.whiteColor,
      typeWidget: Column(
        spacing: 10,
        children: [
          CustomRowReportWidget(title: AppLanguageKeys.totalInvoices),
          CustomRowReportWidget(title: AppLanguageKeys.totalFuel),
          CustomRowReportWidget(title:AppLanguageKeys.serviceCenterMaintenanceCount),
          CustomRowReportWidget(title: AppLanguageKeys.refuelCount),
        ],
      ),
    );
  }
}
