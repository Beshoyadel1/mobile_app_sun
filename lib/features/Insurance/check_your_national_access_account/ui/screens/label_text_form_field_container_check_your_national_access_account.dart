import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';

class LabelTextFormFieldContainerCheckYourNationalAccessAccount extends StatelessWidget {
  const LabelTextFormFieldContainerCheckYourNationalAccessAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textFormController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.nationalIdOrIqama,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,

        ),
        SizedBox(
          height: 10,
        ),
        TextFormFieldWidget(
          textFormController: textFormController,
          fillColor: AppColors.transparent,
          borderColor: AppColors.darkColor.withOpacity(0.2),
          hintText: AppLanguageKeys.nationalIdOrIqama,
          hintTextSize: 10,
          hintTextColor: AppColors.darkColor.withOpacity(0.4),
          textSize: 15,
          textFormWidth: 500,
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
