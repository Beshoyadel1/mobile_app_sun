
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';



class CustomFilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const CustomFilterChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? AppColors.orangeColor : AppColors.whiteColor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: selected?AppColors.orangeColor: AppColors.lightGreyColor),
        ),
        child: TextInAppWidget(
          text:  label,
          textSize: 15,
          textColor: selected ? AppColors.whiteColor: AppColors.greyColor,
        ),
      ),

    );
  }
}

