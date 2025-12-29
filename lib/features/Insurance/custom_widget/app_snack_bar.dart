import 'package:flutter/material.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class AppSnackBarWidget {
  static void show(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: TextInAppWidget(
          text: text,
          textSize: 11,
          maxLines: 1,
          textColor: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.greyColor,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(
          top: 20, left: 16, right: 16,bottom: 10
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
