import 'package:flutter/cupertino.dart';
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
import '../../../core/app_cubit/app_states.dart';
import '../login/model/log_in_model.dart';
import '../login/widgets/different_mood_widget.dart';
import '../login/widgets/password_text_field.dart';
import '../login/widgets/phone_text_field.dart';
import 'model/forget_password_model.dart';
import 'new_password_screen.dart';




class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {



  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();




  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {

    _phoneController.dispose();


    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                                const TextInAppWidget(
                                  text: AppLanguageKeys.forgotPassword,
                                  textSize: 22,
                                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                                  textColor: AppColors.darkColor,
                                ),
                                const SizedBox(height: 24),
                                const TextInAppWidget(
                                  text:'  برجاء ادخال رقم الهاتف ',
                                  textSize: 15,
                                  fontWeightIndex: FontSelectionData.regularFontFamily,
                                  textColor: AppColors.darkColor,
                                ),
                                const SizedBox(height: 48),
                                Center(child: PhoneTextField(phoneController: _phoneController)),
                                const SizedBox(height: 24),
                                const SizedBox(height: 12),
                                DifferentMoodWidget(),
                                const SizedBox(height: 32),
                                ButtonWidget(
                                  heightContainer: 60,
                                  widthContainer: double.infinity,
                                  borderRadius: 50,
                                  text: 'موافق',
                                  isLoading: context.watch<AppCubit>().state is LoadingInCheckInAccountFunctionState,

                                  textColor: AppColors.whiteColor,
                                  fontWeightIndex: FontSelectionData.regularFontFamily,
                                  buttonColor: AppColors.orangeColor,
                                  onTap: () {
                                    if(_formKey.currentState!.validate()){
                                      context.read<AppCubit>().checkInAccountFunction(
                                          context: context,
                                          phone: _phoneController.text
                                      );
                                    }
                                    else{
                                      AppSnackBar.showError('error');
                                    }
                                  },
                                  textSize: 18,
                                  isTextCenter: true,
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
