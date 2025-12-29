import 'package:flutter/material.dart';

import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';




class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController});
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      text: AppLanguageKeys.email,
      textFormController: emailController,
      textColor: AppColors.darkGreyColor,
      textSize: 14,
      isColumn: true,
      fillColor: AppColors.whiteColor,
      borderColor: AppColors.lightGreyColor,
      contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 10),
      fontWeightIndex: FontSelectionData.semiBoldFontFamily,
      isValidator: true,
    );
  }
}
