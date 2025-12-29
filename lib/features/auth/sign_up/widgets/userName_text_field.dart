
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_cubit/app_cubit.dart';
import '../../../../core/app_cubit/app_states.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';



class UsernameTextField extends StatefulWidget {
  const UsernameTextField({super.key, required this.usernameController});

  final TextEditingController usernameController;

  @override
  State<UsernameTextField> createState() => _UsernameTextFieldState();
}

class _UsernameTextFieldState extends State<UsernameTextField> {

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      buildWhen: (previous, current) => current is ChangeSecureState,
      builder: (BuildContext context, AppStates state) {
        return TextFormFieldWidget(
          text:AppLanguageKeys.userName,
          textFormController: widget.usernameController,
          textSize: 14,
          textColor: AppColors.darkGreyColor,
          isColumn: true,
          fillColor: AppColors.whiteColor,
          borderColor: AppColors.lightGreyColor,
          contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 10),
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          isValidator: true,
        );
      },
    );
  }
}