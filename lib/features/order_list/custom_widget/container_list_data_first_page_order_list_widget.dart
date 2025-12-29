import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../core/constants.dart';

class ContainerListDataFirstPageOrderListWidget extends StatelessWidget {
  final bool? isCreateNewOrder,isDone;
  final String imagPath,title,subTitle,orderNumber,price,time;
  final void Function()? onTab;
  const ContainerListDataFirstPageOrderListWidget({
    super.key,
    required this.imagPath,
    required this.title,
    required this.subTitle,
    required this.orderNumber,
    required this.price,
    required this.time,
    this.isCreateNewOrder=false,
    this.isDone=false,
    this.onTab
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTab,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor.withOpacity(0.8),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              color:AppColors.transparent
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkColor.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    CircleAvatar(
                        radius: 20,
                        child: Image.asset(imagPath)
                    ),
                    Column(
                      spacing: 5,
                      children: [
                        TextInAppWidget(
                          text: title,
                          textSize: 10,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                          textColor: AppColors.greyColor,
                        ),
                        TextInAppWidget(
                          text: subTitle,
                          textSize: 12,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor: AppColors.darkColor,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    TextInAppWidget(
                      text: orderNumber,
                      textSize: 10,
                      fontWeightIndex: FontSelectionData.mediumFontFamily,
                      textColor: AppColors.darkColor,
                    ),
                    AppConstants.isIndividual?  RowNumberCoinWidget(
                        numberText: price,
                        sizeText: 15,
                        imageSrc: AppImageKeys.coin
                    ):const SizedBox(),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                      decoration: BoxDecoration(
                        color: isDone!? AppColors.blueColorDE: AppColors.pinkColor.withOpacity(0.8),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color:isDone!? AppColors.blueColorBF:AppColors.transparent
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.darkColor.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextInAppWidget(
                        text:isDone! ? AppLanguageKeys.requestReceived:
                        isCreateNewOrder!? AppLanguageKeys.createNewRequest:
                        AppLanguageKeys.onTheWayToYou,
                        textSize: 10,
                        fontWeightIndex: FontSelectionData.regularFontFamily,
                        textColor:isDone! ? AppColors.secondaryColor: AppColors.orangeColor,
                      ),
                    ),
                  ],
                ),
                TextInAppWidget(
                  text: time,
                  textSize: 10,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor: AppColors.darkColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
