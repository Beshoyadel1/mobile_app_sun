import 'package:flutter/material.dart';

import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/services_item.dart';


class ServicesTypeFile extends StatelessWidget {
  const ServicesTypeFile({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      spacing: 10,
      children: services.map((service) {
        return Row(
          spacing: 20,
          children: [
            CircleAvatar(
              backgroundColor:
              AppColors.veryLightOrangeColor.withAlpha(60),
              radius: 27,
              child: Image.asset(
                AppImageKeys.fileIcon,
                height: 25,
                width: 25,
              ),
            ),
            Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInAppWidget(
                  text: service.name,
                  textSize: 14,
                  textColor: AppColors.darkColor,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                ),
                TextInAppWidget(
                  text: '${service.price.toStringAsFixed(2)}',
                  textSize: 10,
                  textColor: AppColors.orangeColor,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                ),
              ],
            ),
          ],
        );
      }).toList(),);
  }
}
