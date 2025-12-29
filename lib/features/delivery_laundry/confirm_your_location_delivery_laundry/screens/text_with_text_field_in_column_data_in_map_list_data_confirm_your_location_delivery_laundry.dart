import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class TextWithTextFieldInColumnDataInMapListDataConfirmYourLocationDeliveryLaundry extends StatelessWidget {
  final TextEditingController textFormController;

  const TextWithTextFieldInColumnDataInMapListDataConfirmYourLocationDeliveryLaundry({
    super.key,
    required this.textFormController
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.searchYourAddress,
          textSize: 15,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.greyColor,
        ),
        TextFormFieldWidget(
          textFormController: textFormController,
          fillColor: AppColors.whiteColor,
          borderColor: AppColors.darkColor.withOpacity(0.2),
          hintTextColor: AppColors.darkColor.withOpacity(0.4),
          textSize: 15,
          textFormWidth: 500,
        ),
      ],
    );
  }
}
