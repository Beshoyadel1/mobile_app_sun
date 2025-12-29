import 'package:flutter/material.dart';


import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import 'square_map_widget.dart';

class LocationAddress extends StatelessWidget {
 const LocationAddress({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      isSelected: false,
      onTap: () {},
      borderRadius: BorderRadius.circular(14),
      border: Border(),
      typeWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            Row(
              spacing: 4,
              children: [
                TextInAppWidget(text:AppLanguageKeys.address, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                const Spacer(),
                Image.asset(AppImageKeys.editIcon, height: 18, width: 18,),
                TextInAppWidget(text: AppLanguageKeys.edit, textSize: 14, textColor: AppColors.darkorangeColor, fontWeightIndex: FontSelectionData.regularFontFamily, decorationText: TextDecoration.underline, decorationTextColor: AppColors.darkorangeColor,
                ),
              ],
            ),
            SquareMapWidget()
          ],
        ),
      ),
    );
  }
}
