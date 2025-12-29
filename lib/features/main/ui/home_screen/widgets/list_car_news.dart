
import 'package:flutter/material.dart';


import '../../../../../core/AppDataList.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../auth/login/widgets/register_widget.dart';
import 'service_centers.dart';

class ListCarNews extends StatelessWidget {
  const ListCarNews({super.key});

  @override
  Widget build(BuildContext context) {

    final  carNewsData = AppData.carNewsData;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 24,),
          TextActionRow(
            mainText: AppLanguageKeys.carNews,
            mainTextColor: AppColors.darkGreyColor,
            actionText:  AppLanguageKeys.viewAll,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            onPressed:(){},),
          Wrap(
            spacing: 19,
            runSpacing: 14,
            children: carNewsData.map((item) {
              return SizedBox(
                width: 188,
                height: 138,
                child: Center(
                  child: ServiceCenters(
                    image: item.image,
                    bottomTexts: [
                      BottomTextData(
                        text: item.title,
                        color: AppColors.orangeColor,
                        fontSize: 11,
                      ),
                      BottomTextData(
                        text: item.description,
                        color: AppColors.whiteColor,
                        fontSize: 11,
                      ),
                    ],
                    topWidget: item.topText != null
                        ? TextInAppWidget(
                      text: item.topText!,
                      textSize: 10,
                      fontWeightIndex: FontSelectionData.mediumFontFamily,
                      textColor: AppColors.whiteColor,
                    )
                        : const SizedBox.shrink(),
                    height: 45,
                    topAlignment: Alignment.topLeft,
                    widgetContiner: 188,
                    heightContainer: 138,
                  ),
                ),
              );
            }).toList(),
          )

        ],
     ),
    );

  }
}



