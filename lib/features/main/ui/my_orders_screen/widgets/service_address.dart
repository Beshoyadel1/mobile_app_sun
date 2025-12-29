import 'package:flutter/material.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';



class ServiceAddress extends StatelessWidget {
  const ServiceAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomContainer(
        isSelected: false,
        onTap: () {},
        borderRadius: BorderRadius.circular(14),
        border: Border(),
        typeWidget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Row(
                  children: [
                    TextInAppWidget(text: AppLanguageKeys.serviceAddress, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                    Spacer(),
                    const Icon(Icons.location_on_outlined,color: AppColors.darkorangeColor,),
                    const TextInAppWidget(
                      text: AppLanguageKeys.openMap,
                      textSize: 14,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.darkorangeColor,
                      decorationText: TextDecoration.underline,
                      decorationTextColor: AppColors.orangeColor,
                    ),

                  ],
                ),
                Row(
                    spacing: 16,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.veryLightOrangeColor.withAlpha(60),
                        radius: 27,
                        child: Icon(Icons.location_on_outlined,color: AppColors.darkorangeColor,),
                      ),
                      Column(
                        crossAxisAlignment:   CrossAxisAlignment.start,
                        children: [
                          TextInAppWidget(text:AppLanguageKeys.serviceAddress, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),

                          TextInAppWidget(text:AppLanguageKeys.mainServiceAddress, textSize: 14, textColor: AppColors.orangeColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                        ],
                      ),

                    ]
                )

              ],
            )));
  }
}
