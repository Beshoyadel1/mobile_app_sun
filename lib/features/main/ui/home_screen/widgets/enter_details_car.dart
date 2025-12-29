import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';

class EnterDetailsCar extends StatelessWidget {
  const EnterDetailsCar({super.key});

  @override
  Widget build(BuildContext context) {
    return        Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        SizedBox(
          width: 200,
          child: TextFormFieldWidget(
            isColumn: true,
            text: AppLanguageKeys.carPlateNumber,
            textColor: AppColors.darkGreyColor,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textSize: 16,
            textFormController: TextEditingController(),
            fillColor: AppColors.whiteColor,
            borderColor: AppColors.lightGreyColor,

          ),
        ),
        SizedBox(
          width: 200,
          child: TextFormFieldWidget(
            isColumn: true,
            text:AppLanguageKeys.carChassisNumber,
            textColor: AppColors.darkGreyColor,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textSize: 16,
            textFormController: TextEditingController(),
            fillColor: AppColors.whiteColor,
            borderColor: AppColors.lightGreyColor,
          ),
        ),
      ],
    );
  }
}
