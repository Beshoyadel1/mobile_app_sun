import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/theming/assets.dart';

class PartOneRowImageNameIconContainerContactAMaintenanceRepresentative extends StatelessWidget {
  const PartOneRowImageNameIconContainerContactAMaintenanceRepresentative({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Image.asset(AppImageKeys.person10,height: 35,),
        TextInAppWidget(
          text: AppLanguageKeys.maintenanceRep,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
      ],
    );
  }
}
