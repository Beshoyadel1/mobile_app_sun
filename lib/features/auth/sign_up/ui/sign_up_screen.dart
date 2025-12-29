
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_cubit/app_cubit.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/button_widget.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../core/pages_widgets/general_widgets/snakbar.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../login/ui/details_login_screen.dart';
import '../../login/widgets/phone_text_field.dart';
import '../../login/widgets/register_widget.dart';
import '../../otp/ui/otp_screen.dart';
import '../model/sign-up_model.dart';
import '../widgets/email_text_field.dart';
import '../widgets/password_register_text_field.dart';
import '../widgets/userName_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final _formKey = GlobalKey<FormState>();
  final _customerNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _emailController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _customerNameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _emailController.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: AppColors.scaffoldColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Flexible(
              child: Form(
                key: _formKey,
                child: SizedBox(
                width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 32),
                        Center(child: Image.asset(AppImageKeys.sarLogo, width: 269, height: 76,),),
                        const SizedBox(height: 24),
                        const TextInAppWidget(text: AppLanguageKeys.login, textSize: 22, fontWeightIndex: FontSelectionData.mediumFontFamily, textColor: AppColors.darkColor,),
                        const SizedBox(height: 16),
                        const TextInAppWidget(text: AppLanguageKeys.accountInformation, textSize: 15, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                        const SizedBox(height: 24),
                        UsernameTextField(usernameController:_customerNameController),
                        const SizedBox(height: 12),
                        PhoneTextField(phoneController: _phoneController),
                        const SizedBox(height: 12),
                        EmailTextField(emailController: _emailController,),
                        const SizedBox(height: 12),
                        PasswordRegisterTextField(passwordController: _passwordController, textPasscode: AppLanguageKeys.password,),
                        const SizedBox(height: 12),
                        PasswordRegisterTextField(passwordController: _confirmPasswordController, textPasscode: AppLanguageKeys.resetPassword,),
                        const SizedBox(height: 40),
                          ButtonWidget(
                          heightContainer: 60,
                          widthContainer: 385,
                          borderRadius: 50,
                          text: AppLanguageKeys.createAnAccount,
                          textColor: AppColors.whiteColor,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          buttonColor: AppColors.orangeColor,
                            onTap: (){
                              if(_formKey.currentState!.validate()){
                                if(_passwordController.text != _confirmPasswordController.text){
                                  AppSnackBar.showError('error');
                                }
                                else{
                                  context.read<AppCubit>().signUpFunction(
                                      context: context,
                                      newCustomer: SignUpModel(
                                        id: 0,
                                        Username: _customerNameController.text,
                                        Phone: _phoneController.text,
                                        Password: _passwordController.text,
                                        Email: _emailController.text,
                                      )
                                  );
                                }
                              }
                              else{
                                AppSnackBar.showError('error');
                              }
                            },
                          textSize: 18,
                          isTextCenter: true,
                        ),

                          const SizedBox(height: 24),
                        TextActionRow(mainText: AppLanguageKeys.createAnAccountInTheNameOfACompany, actionText: AppLanguageKeys.registerHere,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              NavigateToPageWidget( DetailsLoginScreen()),
                            );
                        },
                        ),
                      ],
                    )),
              ))])],
                ),
              ),
            ),
          ),

    );
  }
}
