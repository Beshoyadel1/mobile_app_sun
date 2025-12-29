import 'package:flutter/material.dart';

import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../ui/company_settings_screen.dart';

class CompanyCarCard extends StatelessWidget {
  const CompanyCarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return    Center(
      child: CustomContainer(
        isSelected: false, onTap: (){},
        containerColor: AppColors.whiteColor,
        containerHeight: 67,
        containerWidth: 363,
        border: Border(),
        borderRadius: BorderRadius.circular(20),
        typeWidget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextInAppWidget(text: 'نيسان صني',textSize: 14,fontWeightIndex: FontSelectionData.regularFontFamily,),
                TextInAppWidget(text: 'س ث ب 245',textSize: 14,fontWeightIndex: FontSelectionData.regularFontFamily,)
              ],
            ),
            Image.asset(AppImageKeys.cr_v_car,width: 67,height: 38,),
            CustomContainer(

              border: Border(),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              borderRadius: BorderRadius.circular(24),
              containerColor: AppColors.orangeColor,
              isSelected: true, onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CompanySettingsScreen()),
                );
            },
              typeWidget: Center(child: TextInAppWidget(text: 'الإعدادت',textSize: 16,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.whiteColor,)),
            ),

          ],
        ),

      ),
    );
  }
}
