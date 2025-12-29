import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/custom_widget/container_list_data_choose_service_car_batteries_widget.dart';
import '../../../../../features/car_batteries/choose_service_car_batteries/logic/check_box_car_batteries_cubit.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';


class ListDataChooseServiceCarBatteries extends StatelessWidget {
  const ListDataChooseServiceCarBatteries({super.key});

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
            imagePath: AppImageKeys.test50,
            title: 'بطاريات B',
            price: '500'
        ),
        ContainerListDataChooseServiceCarBatteriesWidget(
            imagePath: AppImageKeys.test50,
            title: 'بطااريات A+',
            price: '450'
        ),
      ],
    );
  }
}
