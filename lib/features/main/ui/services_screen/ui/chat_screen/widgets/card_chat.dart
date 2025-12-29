import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';



class CardChat extends StatelessWidget {
  const CardChat({super.key});

  @override
  Widget build(BuildContext context) {
    return       Row(
        spacing: 10,
        children: [
          Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextInAppWidget(text: '8:10pm',textSize: 12,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.darkColor),
              Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.veryLightOrangeColor.withAlpha(150),
                  ),
                  CustomContainer(
                    borderRadius: BorderRadius.circular(10),
                    typeWidget: TextInAppWidget(text:AppLanguageKeys.greeting,textSize: 16,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.whiteColor),
                    border: Border(),
                    isSelected: true,
                    onTap: () {  }, ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Icon(Icons.done_all,size: 16,color: AppColors.orangeColor,),
          ),
        ]
    );

  }
}
