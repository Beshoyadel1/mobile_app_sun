import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/theming/assets.dart';


class RowImageWithTwoTextInLastRowContainerOnTheWay extends StatelessWidget {
  const RowImageWithTwoTextInLastRowContainerOnTheWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImageKeys.test100, width: 50),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:AppLanguageKeys.maintenanceAndRepair,
              textSize: 10,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.greyColor,
            ),
            const SizedBox(height: 5),
            TextInAppWidget(
              text: 'أسم مركز الاصلاح',
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.darkColor,
            ),
          ],
        ),
      ],
    );
  }
}
