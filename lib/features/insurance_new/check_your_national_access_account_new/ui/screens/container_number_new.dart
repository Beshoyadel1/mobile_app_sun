import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ContainerNumberNew extends StatelessWidget {
  const ContainerNumberNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.lightCyanColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextInAppWidget(
        text: '55',
        textSize: 26,
        fontWeightIndex: FontSelectionData.mediumFontFamily,
        textColor: AppColors.darkColor,
      ),
    );
  }
}
