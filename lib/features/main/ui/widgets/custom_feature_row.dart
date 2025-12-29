
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';


class CustomFeatureRow extends StatelessWidget {
  const CustomFeatureRow({
    super.key,
    this.text,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.textSize,
    this.children,
    this.mainAxisAlignment,
  });

  final String? text;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final double? textSize;
  final MainAxisAlignment? mainAxisAlignment;


  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment?? MainAxisAlignment.start ,
      spacing: 5,
      children: children ??
          [
            Icon(
              icon ?? Icons.check_circle,
              color: iconColor ?? AppColors.greenColor,
              size: iconSize ?? 24,
            ),
            TextInAppWidget(
              text: text ?? '',
              textSize: textSize ?? 16,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
            ),
          ],
    );
  }
}

