
import 'package:flutter/material.dart';
import '../../../../core/constants.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/button_widget.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../main/ui/main_screen.dart';
import '../../../profile/custom_widget/appbar_profile_widget.dart';
import '../../../welcome/ui/welcome_select_car_screen.dart';
import '../../forget_password/forget_password_screen.dart';
import '../widgets/register_widget.dart';
import '../../sign_up/ui/sign_up_screen.dart';
import '../widgets/password_text_field.dart';
import '../widgets/phone_text_field.dart';


class DetailsLoginScreen extends StatefulWidget {
  const DetailsLoginScreen({super.key});

  @override
  State<DetailsLoginScreen> createState() => _DetailsLoginScreenState();
}

class _DetailsLoginScreenState extends State<DetailsLoginScreen> {

  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {

    _phoneController.dispose();
    _passwordController.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar:  AppbarProfileWidget(title: '',isImage: false,),
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
                        child:Form(
                          key: _formKey,
                          child:  SizedBox(
                          width: 400,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 32),
                              Center(child: Image.asset(AppImageKeys.sarLogo, width: 269, height: 76)),
                              const SizedBox(height: 32),
                              TextInAppWidget(
                                text: AppConstants.isIndividual?AppLanguageKeys.login:AppLanguageKeys.companyEmlopyeeLogin,
                                textSize: 22,
                                fontWeightIndex: FontSelectionData.mediumFontFamily,
                                textColor: AppColors.darkColor,
                              ),
                              const SizedBox(height: 24),
                              const TextInAppWidget(
                                text: AppLanguageKeys.pleaseEnterYourPhoneNumberAndPassword,
                                textSize: 15,
                                fontWeightIndex: FontSelectionData.regularFontFamily,
                                textColor: AppColors.darkColor,
                              ),
                              const SizedBox(height: 48),
                              Center(child: PhoneTextField(phoneController: _phoneController)),
                              const SizedBox(height: 24),
                              Center(child: PasswordTextField(passwordController: _passwordController)),
                              const SizedBox(height: 12),
                              TextActionRow(
                                mainText: AppLanguageKeys.forgotPassword,
                                actionText: AppLanguageKeys.redeemFromHere,
                                mainAxisAlignment: MainAxisAlignment.start,
                                onPressed: () {
                                  Navigator.of(context).push(NavigateToPageWidget(const ForgetPasswordScreen()),);

                                },
                              ),
                              const SizedBox(height: 12),
                              ButtonWidget(
                                heightContainer: 60,
                                widthContainer: double.infinity,
                                borderRadius: 50,
                                text: AppLanguageKeys.login,
                                textColor: AppColors.whiteColor,
                                fontWeightIndex: FontSelectionData.regularFontFamily,
                                buttonColor: AppConstants.isIndividual?AppColors.orangeColor:AppColors.secondaryColor,
                                onTap: () {
                                  Navigator.of(context).push(NavigateToPageWidget(AppConstants.isIndividual? WelcomeSelectCarScreen():MainScreen()),);

                                  // if(_formKey.currentState!.validate()){
                                  //   context.read<AppCubit>().loginFunction(
                                  //       context: context,
                                  //       newCustomer: LogInModel(
                                  //         Phone: _phoneController.text,
                                  //         Password: _passwordController.text,
                                  //
                                  //       )
                                  //   );
                                  //                                   }
                                  // else{
                                  //   AppSnackBar.showError('error');
                                  // }
                                },
                                textSize: 18,
                                isTextCenter: true,
                              ),
                              const SizedBox(height: 8),
                              TextButton(
                                onPressed: () {},
                                child: TextInAppWidget(
                                  text: AppLanguageKeys.loginAsAGuestUser,
                                  decorationText: TextDecoration.underline,
                                  decorationTextColor: AppColors.darkGreyColor,
                                  textSize: 14,
                                  fontWeightIndex: FontSelectionData.regularFontFamily,
                                  textColor: AppColors.darkGreyColor,
                                ),
                              ),
                              const SizedBox(height: 24),
                              Center(child: Image.asset(AppImageKeys.faceScan, width: 66, height: 70)),
                              const SizedBox(height: 12),
                              TextActionRow(
                                mainText: AppLanguageKeys.noAccount,
                                actionText: AppLanguageKeys.registerHere,
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    NavigateToPageWidget(const SignupScreen()),
                                  );
                                },
                              ),
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );

  }
}
