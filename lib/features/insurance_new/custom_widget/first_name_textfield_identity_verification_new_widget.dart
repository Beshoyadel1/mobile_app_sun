import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class FirstNameTextfieldIdentityVerificationNewWidget extends StatefulWidget {
  final String name;
  final String? hint;
  final bool isPassword;
  final int? maxLines;
  const FirstNameTextfieldIdentityVerificationNewWidget({
    super.key,
    required this.name,
    this.hint,
    this.maxLines,
    this.isPassword = false,
  });

  @override
  State<FirstNameTextfieldIdentityVerificationNewWidget> createState() =>
      _FirstNameTextfieldIdentityVerificationNewWidgetState();
}

class _FirstNameTextfieldIdentityVerificationNewWidgetState
    extends State<FirstNameTextfieldIdentityVerificationNewWidget> {
  final TextEditingController textFormController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 7,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text: widget.name,
          textSize: 12,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.greyColor,
        ),
        TextFormFieldWidget(
          textFormController: textFormController,
          fillColor: AppColors.transparent,
          borderColor: AppColors.darkColor.withOpacity(0.2),
          hintText: widget.hint,
          contentPadding: const EdgeInsets.all(10),
          hintTextSize: 10,
          hintTextColor: AppColors.darkColor.withOpacity(0.4),
          textSize: 15,
          textFormWidth: 500,
          obscureText: widget.isPassword ? _obscureText : false,
          suffixIcon: widget.isPassword
              ? (_obscureText ? Icons.visibility_off : Icons.visibility)
              : null,
          suffixOnPressed: widget.isPassword
              ? () => setState(() => _obscureText = !_obscureText)
              : null,
          maxLines:widget.maxLines,
        ),
      ],
    );
  }
}
