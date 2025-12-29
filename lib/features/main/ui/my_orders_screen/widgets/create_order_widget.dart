import 'package:flutter/material.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';


class CreateOrderWidget extends StatelessWidget {
  const CreateOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return     CustomContainer(
      padding: const EdgeInsets.all(0),
        onTap: () {},
        borderRadius: BorderRadius.circular(14),
        border: Border(),
        typeWidget: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 20,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextInAppWidget(text: AppLanguageKeys.newOrder, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                    CustomContainer(
                      padding: const EdgeInsets.all(0),
                      containerHeight: 28,
                      containerWidth: 82,

                      border: Border(),
                      typeWidget:  Center(
                        child: TextInAppWidget(text:AppLanguageKeys.twoDaysAgo, textSize: 14, textColor: AppColors.orangeColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                      ), onTap: () {  }, isSelected: true,
                      containerColor: AppColors.veryLightOrangeColor.withAlpha(60),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 64,
                      height: 4,
                      decoration: BoxDecoration(
                        color: index == 0
                            ? AppColors.orangeColor
                            : AppColors.veryLightOrangeColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }),
                ),

                Row(
                  spacing: 16,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(AppImageKeys.serviceCenters1),
                    ),Column(
                        children: [
                          TextInAppWidget(text:AppLanguageKeys.repairAndMaintenance, textSize: 10, textColor: AppColors.greyColor, fontWeightIndex: FontSelectionData.mediumFontFamily,),
                          TextInAppWidget(text:AppLanguageKeys.centerName, textSize: 12, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                        ]
                    ),
                    Spacer(),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextInAppWidget(text:AppLanguageKeys.dateExample,
                            textSize: 14,
                            textColor: AppColors.darkColor,
                            fontWeightIndex: FontSelectionData.regularFontFamily,
                          ),TextInAppWidget(

                            text:AppLanguageKeys.timeExample,
                            textSize: 12,
                            textColor: AppColors.orangeColor,
                            fontWeightIndex: FontSelectionData.mediumFontFamily,
                          ),

                        ]
                    )

                  ],
                ),
              ],
            )), isSelected: false,);
  }
}
