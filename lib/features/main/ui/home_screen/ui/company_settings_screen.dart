import 'package:flutter/material.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../welcome/widgets/appbar_profile.dart';
import 'company_details_settings_screen.dart';

class CompanySettingsScreen extends StatelessWidget {
  const CompanySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        appBar: AppbarProfile(
          title: AppLanguageKeys.carSettings,
          image: AppImageKeys.notification,
          showDefaultProfileImage: true,
          showBackButton:true,
          onBack: (){
            Navigator.pop(context);
          },

        ),
        body:   Padding(
          padding: const EdgeInsets.all(16.0),
          child:  CustomContainer(
              containerHeight: 125,
              isSelected: false, onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CompanyDetailsSettingsScreen()),
                );
          },
              containerColor: AppColors.whiteColor,
              border: Border.all(color: AppColors.orangeColor),
              borderRadius: BorderRadius.circular(10),
              typeWidget: Column(
                spacing: 14,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    spacing: 14,
                    children: [
                      Image.asset(AppImageKeys.cr_v_car,width: 67,height: 38,),
                      Column(
                        children: [
                          TextInAppWidget(text: AppLanguageKeys.nissanSunny,textSize: 14,fontWeightIndex: FontSelectionData.regularFontFamily,),
                          TextInAppWidget(text: 'س ث ب 245',textSize: 14,fontWeightIndex: FontSelectionData.regularFontFamily,)
                        ],
                      ),
                      Spacer(),
                      CustomContainer(
                        border: Border(),
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                        borderRadius: BorderRadius.circular(24),
                        containerColor: AppColors.orangeColor,
                        isSelected: true, onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const CompanyDetailsSettingsScreen()),
                        );
                      },
                        typeWidget: Center(child: TextInAppWidget(text: AppLanguageKeys.carAccount,textSize: 16,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.whiteColor,)),
                      ),
                    ],
                  ),
                  TextInAppWidget(text: AppLanguageKeys.useThisCarForWork,textSize: 12,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.orangeColor),
                ],
              ),


          ),
        )
      );
  }
}
