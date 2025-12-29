import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';


class ContainerBestOffer extends StatelessWidget {
  const ContainerBestOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:30,
      width: 120,
      decoration: BoxDecoration(
        color: AppColors.redColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.redColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImageKeys.divide, width: 15),
          const SizedBox(width: 5),
          Flexible(
            child: TextInAppWidget(
              text: AppLanguageKeys.bestOffer,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.redColor,
            ),
          ),
        ],
      ),
    );
  }
}
