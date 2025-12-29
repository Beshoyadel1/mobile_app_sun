import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../../../core/app_cubit/app_cubit.dart';
import '../../../../core/app_cubit/app_states.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/button_widget.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../ui/details_login_screen.dart';


class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.passwordController, this.text});

  final TextEditingController passwordController;
  final String? text;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      buildWhen: (previous, current) => current is ChangeSecureState,
      builder: (BuildContext context, AppStates state) {
        return TextFormFieldWidget(
          text:widget.text??AppLanguageKeys.password,
          textFormController: widget.passwordController,
          textSize: 14,
          isColumn: true,
          textColor: AppColors.darkGreyColor,
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
