import 'package:flutter/material.dart';

import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../widgets/divider_login.dart';
import '../widgets/register_widget.dart';
import '../widgets/type_account.dart';
import '../widgets/type_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: SizedBox(
                          width: 400,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 30),
                              Center(child: Image.asset(AppImageKeys.sarLogo,width: 269,height: 76,)),
                              const SizedBox(height: 30,),
                              const  TextInAppWidget(text: AppLanguageKeys.login, textSize: 26, fontWeightIndex: FontSelectionData.mediumFontFamily, textColor: AppColors.darkColor,

                              ),
                              const SizedBox(height: 20,),
                              const  TextInAppWidget(text: AppLanguageKeys.loginAsAnIndividualOrCompany, textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,
                              ),
                              const SizedBox(height: 30,),
                              Center(child: const  TypeLogin()),
                              const SizedBox(height: 84,),
                              Center(child: Image.asset(AppImageKeys.imageCar,width: 304,height:166)),
                              const SizedBox(height: 58,),
                              const  DividerLogin(),
                              const SizedBox(height: 32,),
                              const  TypeAccount(),
                              const SizedBox(height: 16,),
                              TextActionRow(
                                mainText:AppLanguageKeys.noAccount,
                                actionText: AppLanguageKeys.registerHere,
                                onPressed:(){},)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
