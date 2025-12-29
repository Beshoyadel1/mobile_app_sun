import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_map/row_map_with_icon_in_first_row_in_container_map.dart';

class FirstRowInContainerMap extends StatelessWidget {
  const FirstRowInContainerMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.trackTechnician,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        RowMapWithIconInFirstRowInContainerMap(),
      ],
    );
  }
}
