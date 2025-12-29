import 'package:flutter/material.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      spacing: 32,
      runSpacing: 16,
      children: [
        SizedBox(
          width: 195,
          child: TextFormFieldWidget(
            textFormController: TextEditingController(),
            hintText: ' 00/00/0000',
            isColumn: false,
            text: AppLanguageKeys.searchFrom,
            textSize: 14,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            suffixIcon: Icons.keyboard_arrow_down_outlined,
            suffixIconSize: 24,
            fillColor: AppColors.whiteColor,
            hintTextColor: AppColors.darkColor34,
            hintTextSize: 14,
            borderColor: AppColors.greyColor,
            textAlign: TextAlign.center,
            textFormWidth: 136,
            textFormHeight: 32,
          ),
        ),
        SizedBox(
          width: 195,
          child: TextFormFieldWidget(
            textFormController: TextEditingController(),
            hintText: ' 00/00/0000',
            isColumn: false,
            text: AppLanguageKeys.searchTo,
            textSize: 14,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            suffixIcon: Icons.keyboard_arrow_down_outlined,
            suffixIconSize: 24,
            fillColor: AppColors.whiteColor,
            hintTextColor: AppColors.darkColor34,
            hintTextSize: 14,
            borderColor: AppColors.greyColor,
            textAlign: TextAlign.center,
            textFormWidth: 136,
            textFormHeight: 32,
          ),
        ),
      ],
    );
  }
}
