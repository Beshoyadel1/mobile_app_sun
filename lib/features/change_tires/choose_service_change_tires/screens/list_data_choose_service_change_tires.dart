import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/custom_widget/container_list_data_choose_service_car_batteries_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';


class ListDataChooseServiceChangeTires extends StatelessWidget {
  const ListDataChooseServiceChangeTires({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.selectServices,
          textSize: 12,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.greyColor,
        ),
        ContainerListDataChooseServiceCarBatteriesWidget(
            imagePath: AppImageKeys.tires1,
            title: AppLanguageKeys.tireBalancing,
            price: '500'
        ),
        ContainerListDataChooseServiceCarBatteriesWidget(
            imagePath: AppImageKeys.tires1,
            title: AppLanguageKeys.wheelAlignment,
            price: '450'
        ),
      ],
    );
  }
}
