import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_cubit/app_cubit.dart';
import '../../../../core/app_cubit/app_states.dart';
import '../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';





class PasswordRegisterTextField extends StatefulWidget {
  const PasswordRegisterTextField ({super.key, required this.passwordController, required this.textPasscode});

  final TextEditingController passwordController;
  final String textPasscode;

  @override
  State<PasswordRegisterTextField> createState() => _PasswordRegisterTextFieldState();
}

class _PasswordRegisterTextFieldState extends State<PasswordRegisterTextField> {

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      buildWhen: (previous, current) => current is ChangeSecureState,
      builder: (BuildContext context, AppStates state) {
        return TextFormFieldWidget(

          text:widget.textPasscode,
          textFormController: widget.passwordController,
          textSize: 14,
          textColor: AppColors.darkGreyColor,
          isColumn: true,
          fillColor: AppColors.whiteColor,
          borderColor: AppColors.lightGreyColor,
          contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 10),
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          isValidator: true,
          obscureText: isObscure,

          suffixIcon: isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
          suffixIconSize: 20,
          suffixOnPressed: (){
            isObscure = !isObscure;
            context.read<AppCubit>().changeSecure();
          },

        );
      },
    );
  }
}



