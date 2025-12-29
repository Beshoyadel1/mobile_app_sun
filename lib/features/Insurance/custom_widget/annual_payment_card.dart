import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';

class AnnualPaymentCard extends StatelessWidget {
  final String companyImage;
  final String title;
  final String subTitle;
  final String buttonText;
  final String amount;
  final String paymentType;
  final VoidCallback? onButtonTap;

  const AnnualPaymentCard({
    super.key,
    required this.companyImage,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.amount,
    required this.paymentType,
    this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(companyImage, width: 40, height: 40),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInAppWidget(
                          text: title,
                          textSize: 14,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor: AppColors.darkColor,
                        ),
                        TextInAppWidget(
                          text: subTitle,
                          textSize: 14,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor: AppColors.orangeColor,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: onButtonTap,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: AppColors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColors.orangeColor,
                        width: 1,
                      ),
                    ),
                    child: TextInAppWidget(
                      text: buttonText,
                      textSize: 12,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.orangeColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextInAppWidget(
                    text: amount,
                    textSize: 15,
                    fontWeightIndex: FontSelectionData.mediumFontFamily,
                    textColor: AppColors.orangeColor,
                  ),
                  const SizedBox(width: 5),
                  Image.asset(AppImageKeys.coin, width: 15),
                ],
              ),
              const SizedBox(height: 10),
              TextInAppWidget(
                text: paymentType,
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.greyColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
