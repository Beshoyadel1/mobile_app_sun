
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/theming/assets.dart';

import '../../../core/language/language_constant.dart';
import '../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../logic/select_car_cubit/select_car_cubit.dart';

class CarCategory extends StatelessWidget {
  const CarCategory({super.key, this.textController});
  final TextEditingController? textController ;
  @override
  Widget build(BuildContext context) {
    return    Builder(
        builder: (context) {
          return   SizedBox(
            width: 270, child: TextFormFieldWidget(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            text:AppLanguageKeys.chooseYourCarModel,
            textFormController: textController ?? TextEditingController(),
            hintText: AppLanguageKeys.youCanSearchToSelectYourCarCategory,
            hintTextSize: 12,
            hintTextColor: AppColors.greyColor,
            prefixIcon: AppImageKeys.searchIcon,
            prefixIconWidth: 19,
            prefixIconHeight: 19,
            textSize: 14,
            textColor: AppColors.darkGreyColor,
            isColumn: true,
            fillColor: AppColors.whiteColor,
            borderColor: AppColors.lightGreyColor,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            isValidator: true,
            onChanged: (value) {
              context.read<SelectedCarCubit>().changeCar(value);
            },
          ),
          );});
  }
}
