import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/profile/personal_data/ui/screens/list_first_name_text_field_personal_data_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/theming/assets.dart';
import '../../../welcome/widgets/appbar_profile.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
       appBar:  AppbarProfile(
         title: AppLanguageKeys.personalData,
         image: AppImageKeys.notification,
         showDefaultProfileImage: true,
         showBackButton: true,
         onBack: () {
           Navigator.pop(context);
         },
       ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: SizedBox(
                width: 500,
                child: ListFirstNameTextFieldPersonalDataWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
