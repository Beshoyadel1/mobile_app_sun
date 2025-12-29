import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ContainerSelectTheTypeOfServiceWidget extends StatelessWidget {
  final String imgPath, text, imgPathSelect;
  final bool isSelected;

  const ContainerSelectTheTypeOfServiceWidget({
    super.key,
    required this.text,
    required this.imgPath,
    required this.isSelected,
    required this.imgPathSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: isSelected ? AppColors.orangeColor : AppColors.transparent,
          width: isSelected ? 1 : 0,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        spacing: 5,
        children: [
          Image.asset(isSelected?imgPathSelect:imgPath, width: 40),
          TextInAppWidget(
            text: text,
            textSize: 7,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:isSelected? AppColors.darkColor:AppColors.greyColor,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
