import 'package:flutter/material.dart';

import '../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';


class OneTextFormWidget extends StatelessWidget {
  const OneTextFormWidget({super.key, required this.textEditingController});

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 67,
        width: 67,
        child: TextFormFieldWidget(
          contentPadding: EdgeInsets.all(16),
            textFormController: textEditingController,
            textSize: 24,
            textAlign: TextAlign.center,
            isDigitDot: true,
            fillColor: Colors.white,
            borderColor: AppColors.whiteColor,
            focusBorderColor: AppColors.orangeColor,
            contentTextColor: AppColors.orangeColor,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            maxLength: 1,
            selectionColor: AppColors.lightGreyColor,
            focusedBorderRadius: BorderRadius.circular(15),
            enabledBorderRadius: BorderRadius.circular(15),
          ),
      ),

    );
  }
}
