import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldColor,
       appBar: AppbarProfileWidget(title: AppLanguageKeys.privacyTitle,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: TextInAppWidget(
                text: AppLanguageKeys.privacyIntro,
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.blackColor44,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
