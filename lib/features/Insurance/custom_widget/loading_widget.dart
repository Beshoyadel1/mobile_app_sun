import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/language/language_constant.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(height: 50),
          CircularProgressIndicator(),
          SizedBox(height: 10),
          TextInAppWidget(
            text: AppLanguageKeys.pleaseWait,
            textSize: 20,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor: AppColors.darkColor,
          ),
        ],
      ),
    );
  }
}

