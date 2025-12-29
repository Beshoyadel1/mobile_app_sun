import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/custom_widget/container_package_widget.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';

class ColumnPackageWidget extends StatelessWidget {
  final String packageText;
  const ColumnPackageWidget({super.key,required this.packageText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 20,
        children: [
          ContainerPackageWidget(text:packageText,),
          RowNumberCoinWidget(
              numberText: '450',
              sizeText: 15,
              imageSrc: AppImageKeys.coin
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: texts.length,
              itemBuilder: (context, index) {
                return Row(
                  spacing: 5,
                  children: [
                    Image.asset(AppImageKeys.correct,width: 20,),
                    Flexible(
                      child: TextInAppWidget(
                        text:texts[index],
                        textSize: 10,
                        fontWeightIndex: FontSelectionData.regularFontFamily,
                        textColor:AppColors.darkColor,
                        maxLines: 1,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
List<String> texts = [
  AppLanguageKeys.fullCleaning ,
  AppLanguageKeys.interiorPolishing,
  AppLanguageKeys.oilChange
];
