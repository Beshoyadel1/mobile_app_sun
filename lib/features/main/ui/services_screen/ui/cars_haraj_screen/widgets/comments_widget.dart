import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      CustomContainer(
        isSelected: false,
        onTap: () {},
        border: Border(),
        borderRadius: BorderRadius.circular(10),
        typeWidget: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 15,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextInAppWidget(text: AppLanguageKeys.comments20, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                  CustomContainer(
                    isSelected: true,
                    onTap: () {},
                    typeWidget: TextInAppWidget(text:AppLanguageKeys.addComment, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.whiteColor,),
                    borderRadius: BorderRadius.circular(24),
                    border: Border(),
                  ),
                ],
              ),

              CustomContainer(
                isSelected: false,
                onTap: () {},
                typeWidget: Row(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors
                          .veryLightOrangeColor
                          .withAlpha(150),
                    ),
                    TextInAppWidget(text:AppLanguageKeys.askPrice, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                    Spacer(),
                    TextInAppWidget(text: '8:10pm', textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.lightGreyColor,),
              ),
              CustomContainer(
                isSelected: false,
                onTap: () {},
                typeWidget: Row(
                  spacing: 10,
                  children: [
                    CircleAvatar(radius: 20, backgroundColor: AppColors.veryLightOrangeColor.withAlpha(150),),
                    TextInAppWidget(text: AppLanguageKeys.askPrice, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.darkColor,
                    ),
                    Spacer(),
                    TextInAppWidget(text: '8:10pm', textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.darkColor,
                    ),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.lightGreyColor,),
              ),
            ],
          ),
        ),
      );
  }
}
