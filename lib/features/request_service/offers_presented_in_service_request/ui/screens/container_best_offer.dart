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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: 100,
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.redColor
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        spacing: 5,
        children: [
          Image.asset(AppImageKeys.divide),
          TextInAppWidget(
            text: AppLanguageKeys.bestOffer,
            textSize: 10,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.redColor,
          ),
        ],
      ),
    );
  }
}
