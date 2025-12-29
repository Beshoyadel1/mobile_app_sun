import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../core/language/language_constant.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';


class DividerLogin extends StatelessWidget {
  const DividerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: AppColors.lightGreyColor,
              thickness: 1,
              endIndent: 10,
            ),
          ),
          TextInAppWidget(
            text: AppLanguageKeys.orRegisterVia,
            textSize: 18,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
          ),
          Expanded(
            child: Divider(
              color: AppColors.lightGreyColor,
              thickness:  1,
              indent: 10,
            ),
          ),
        ],
      ),
    );
  }
}
