import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../features/request_service/map_background_in_service_request/ui/map_background_in_service_request.dart';

class RowMapWithIconInFirstRowInContainerMap extends StatelessWidget {
  const RowMapWithIconInFirstRowInContainerMap({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Row(
        spacing: 5,
        children: [
          Image.asset(AppImageKeys.map1),
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(
                    MapBackgroundInServiceRequest()
                ),
              );
            },
            child: TextInAppWidget(
              text: AppLanguageKeys.openMap,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
              decorationText: TextDecoration.underline,
              decorationTextColor:AppColors.orangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
