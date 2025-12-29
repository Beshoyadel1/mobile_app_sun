import 'package:flutter/material.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';

import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../welcome/widgets/appbar_profile.dart';
import '../widgets/enter_details_car.dart';
import '../widgets/file_pdf.dart';

class CompanyDetailsSettingsScreen extends StatelessWidget {
  const CompanyDetailsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        bottomSheet: CustomContainer(
            isSelected: true, onTap: (){},
            containerColor: AppColors.orangeColor,
            border: Border(),
            borderRadius: BorderRadius.circular(50),
          containerHeight: 60,
          containerWidth: 385,
            typeWidget: Center(child: TextInAppWidget(text:AppLanguageKeys.useThisCarForWork,textSize: 18,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.whiteColor)),
          ),
        appBar: AppbarProfile(
          title:AppLanguageKeys.carPlateAndModel,
          image: AppImageKeys.notification,
          showDefaultProfileImage: true,
          showBackButton:true,
          onBack: (){
            Navigator.pop(context);
          },

        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child:  SingleChildScrollView(
                child: Center(
                  child: Column(
                    spacing: 16,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16,),
                      EnterDetailsCar(),
                      TextInAppWidget(text: AppLanguageKeys.carFiles,textSize: 16,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.darkGreyColor),
                      Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          FilePdf(),
                          FilePdf()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

        ));
        }
}
