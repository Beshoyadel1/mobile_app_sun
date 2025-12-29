import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../welcome/widgets/appbar_profile.dart';
import '../widgets/date_widget.dart';
import '../widgets/details_report_widget.dart';
import '../widgets/separated_donut_chart.dart';
import '../widgets/total_price_report_widget.dart';

class MaintenanceReportsScreen extends StatelessWidget {
  const MaintenanceReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfile(
        title: "تقارير الصيانة",
        image: AppImageKeys.notification,
        showDefaultProfileImage: true,
        showBackButton: true,
        onBack: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextInAppWidget(text:  AppLanguageKeys.maintenanceReportsByPeriod, textColor: AppColors.blackColor44, textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily,),
              DateWidget(),
              TotalPriceReportWidget(),
              SeparatedDonutChart(),
              DetailsReportWidget()
            ],
          ),
        ),
      ),
    );
  }
}




