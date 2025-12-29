
import 'package:flutter/material.dart';

import '../../../core/language/language_constant.dart';
import '../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../auth/login/widgets/register_widget.dart';

class CarName extends StatelessWidget {
  const CarName({super.key, this.textController, this.onChanged});
  final TextEditingController? textController ;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


     TextActionRow(
    mainTextColor: AppColors.darkGreyColor,
    actionTextColor: AppColors.greenColor,
    mainAxisAlignment: MainAxisAlignment.start,
    mainText: AppLanguageKeys.yourCarName,
    actionText:AppLanguageKeys.exampleModelName,
    onPressed: () {
    },
    decorationText: TextDecoration.none,
    decorationTextColor: Colors.transparent,
    ),

    TextFormFieldWidget(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
    isColumn: false,
    textFormController: textController ?? TextEditingController(),
    textSize: 14,
    textColor: AppColors.darkGreyColor,
    fillColor: AppColors.whiteColor,
    borderColor: AppColors.lightGreyColor,
    fontWeightIndex: FontSelectionData.semiBoldFontFamily,
    isValidator: true,
      onChanged: onChanged,
    ),
    ]);
    }
}
