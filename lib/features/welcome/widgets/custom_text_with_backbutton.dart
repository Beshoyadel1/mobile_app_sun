
import 'package:flutter/material.dart';

import '../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/theming/text_styles.dart';
import 'back_button_circle.dart';

class CustomTextWithBackbutton extends StatelessWidget {
  const CustomTextWithBackbutton({
    super.key,
    required this.text,
    this.pageToNavigate,
    this.onBack,
    required this.showBackButton,
  });

  final String text;
  final Widget? pageToNavigate;
  final VoidCallback? onBack;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        if (showBackButton)
          InkWell(
            onTap: () {
              if (onBack != null) {
                onBack!();
              } else if (pageToNavigate != null) {
                Navigator.of(context).push(
                  NavigateToPageWidget(pageToNavigate!),
                );
              } else {
                Navigator.of(context).pop();
              }
            },
            child: const BackButtonCircle(),
          ),
        TextInAppWidget(
          text: text,
          textSize: 18,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
      ],
    );
  }
}

