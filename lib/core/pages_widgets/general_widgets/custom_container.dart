import 'package:flutter/material.dart';

import '../../theming/colors.dart';
import '../../theming/fonts.dart';
import '../../theming/text_styles.dart';
class CustomContainer extends StatelessWidget {
  final String? text;
  final bool isSelected;
  final VoidCallback onTap;
  final Widget? typeWidget;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final double? containerHeight;
  final double? containerWidth;
  final Color? containerColor;
  final EdgeInsets? padding;

  const CustomContainer({
    super.key,
    this.text,
    required this.isSelected,
    required this.onTap,
    this.typeWidget,
    this.borderRadius,
    this.border,
    this.containerHeight,
    this.containerWidth,
    this.containerColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height:containerHeight ,
        width:containerWidth ,

        padding: padding??const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? containerColor??AppColors.orangeColor : AppColors.whiteColor,
          border: border ?? Border.all(
            color: isSelected
                ? AppColors.orangeColor
                : AppColors.lightGreyColor,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(24),
        ),
        child: typeWidget ??
            TextInAppWidget(
              text: text ?? "",
              textSize: 14,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: isSelected ? AppColors.whiteColor : AppColors.greyColor,
            ),
      ),
    );
  }
}
