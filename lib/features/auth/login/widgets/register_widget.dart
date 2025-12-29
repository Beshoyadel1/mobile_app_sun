
import 'package:flutter/material.dart';


import '../../../../core/pages_widgets/button_widget.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';


class TextActionRow extends StatelessWidget {
  final Widget? mainTextWidget;
  final String? mainText;
  final String actionText;
  final VoidCallback onPressed;
  final MainAxisAlignment mainAxisAlignment;
  final TextDecoration? decorationText;
  final Color? decorationTextColor;
  final Color? mainTextColor;
  final Color? actionTextColor;
  final int? fontWeightIndex;

  const TextActionRow({
    super.key,
    this.mainTextWidget,
    this.mainText,
    required this.actionText,
    required this.onPressed,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.decorationText,
    this.decorationTextColor,
    this.mainTextColor,
    this.actionTextColor,
    this.fontWeightIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        mainTextWidget ??
            TextInAppWidget(
              text: mainText ?? '',
              textSize: 14,
              fontWeightIndex: fontWeightIndex ?? FontSelectionData.semiBoldFontFamily,
              textColor: mainTextColor ?? AppColors.darkColor,
            ),
        ButtonWidget(
          text: actionText,
          decorationText: decorationText ?? TextDecoration.underline,
          onTap: onPressed,
          textColor: actionTextColor ?? AppColors.orangeColor,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          buttonColor: Colors.transparent,
          decorationTextColor: AppColors.orangeColor,

        ),

      ],
    );
  }
}

