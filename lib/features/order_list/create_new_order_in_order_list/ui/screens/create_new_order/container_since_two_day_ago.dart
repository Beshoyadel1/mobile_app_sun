import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';


class ContainerSinceTwoDayAgoCreateNewOrder extends StatelessWidget {
  const ContainerSinceTwoDayAgoCreateNewOrder ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      width: 80,
      decoration: BoxDecoration(
        color: AppColors.pinkColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.transparent
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child:TextInAppWidget(
        text: AppLanguageKeys.daysAgo,
        textSize: 11,
        fontWeightIndex: FontSelectionData.regularFontFamily,
        textColor: AppColors.orangeColor,
      ),
    );
  }
}
