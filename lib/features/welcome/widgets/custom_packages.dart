
import 'package:flutter/material.dart';

import '../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/theming/text_styles.dart';
import '../../main/ui/widgets/custom_feature_row.dart';

class CustomPackages extends StatelessWidget {
  const CustomPackages({super.key});
  @override
  Widget build(BuildContext context) {
    return       CustomContainer(
        isSelected:false,
        border: Border(),
        onTap: (){},
        borderRadius: BorderRadius.circular(14),
        typeWidget: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: AppColors.seaBlueColor,
                      child:    TextInAppWidget(text: 'باقه\nجولد', textSize: 16, textColor: AppColors.whiteColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                    ),
                  ),
                  Center(child: TextInAppWidget(text: '450.00 ريال', textSize: 16, textColor: AppColors.orangeColor, fontWeightIndex: FontSelectionData.regularFontFamily,),),
                  CustomFeatureRow(text: 'شامل جميع النظافة',icon: Icons.check_circle,iconColor: AppColors.greenColor,iconSize: 13,textSize: 10,),
                  CustomFeatureRow(text: 'تلميع داخلي للسيارة',icon: Icons.check_circle,iconColor: AppColors.greenColor,iconSize: 13,textSize: 10,),
                  CustomFeatureRow(text: 'تغيير زيت للسيارة    ',icon: Icons.check_circle,iconColor: AppColors.greenColor,iconSize: 13,textSize: 10,),

                ],
              ),
            ),
          ],
        )
    );
  }
}
