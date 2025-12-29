import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/org_location_widget_first_page_in_service_request.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart'
;
class MapInListDataInFirstPageInServiceRequest extends StatelessWidget {
  const MapInListDataInFirstPageInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.selectCurrentLocation,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        OrgLocationWidgetFirstPageInServiceRequest(location: "30.0444,31.2357"),
      ],
    );
  }
}
