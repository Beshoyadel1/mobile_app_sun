import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/colors.dart';

class TextFormFieldInListDataWriteYourNotesDeliveryLaundry extends StatelessWidget {
  final TextEditingController textFormController;
  const TextFormFieldInListDataWriteYourNotesDeliveryLaundry({super.key,required this.textFormController});

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      textFormController: textFormController,
      fillColor: AppColors.transparent,
      borderColor: AppColors.darkColor.withOpacity(0.2),
      hintTextSize: 10,
      hintTextColor: AppColors.darkColor.withOpacity(0.4),
      textSize: 15,
      textFormWidth: 500,
      contentPadding: EdgeInsetsGeometry.all(10),
      maxLines: 5,
    );
  }
}
