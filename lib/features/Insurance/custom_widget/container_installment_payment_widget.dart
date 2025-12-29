import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class ContainerInstallmentPaymentWidget extends StatelessWidget {
  final bool? isFinished;
  final String date,logoCompany,nameCompany,price,title;
   const ContainerInstallmentPaymentWidget({this.isFinished=false,required this.title,required this.nameCompany,required this.date,required this.logoCompany,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: EdgeInsetsGeometry.symmetric(vertical: 13,horizontal: 20),
      //  margin: EdgeInsetsGeometry.all(20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInAppWidget(
                text: title,
                textSize: 10,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkColor,
              ),
              Container(
                padding: EdgeInsetsGeometry.symmetric(vertical: 5,horizontal: 10),
                //  margin: EdgeInsetsGeometry.all(20),
                decoration: BoxDecoration(
                  color: AppColors.pinkColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:TextInAppWidget(
                  text:date,
                  textSize: 10,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: AppColors.orangeColor,
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              const Expanded(
                child: Divider(
                  thickness: 5,
                  color: AppColors.orangeColor,
                  radius: BorderRadiusGeometry.all(Radius.circular(15)),
                ),
              ),
              const SizedBox(width: 10), // space between the two lines
              Expanded(
                child: Divider(
                  thickness: 5,
                  color: isFinished! ? AppColors.orangeColor : AppColors.pinkColor,
                  radius: const BorderRadiusGeometry.all(Radius.circular(15)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(logoCompany, width: 30,),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInAppWidget(
                          text: AppLanguageKeys.comprehensiveInsurance,
                          textSize: 10,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                          textColor: AppColors.orangeColor,
                        ),
                        const SizedBox(height: 10),
                        TextInAppWidget(
                          text: nameCompany,
                          textSize: 12,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor: AppColors.darkColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  TextInAppWidget(
                    text: isFinished!?AppLanguageKeys.paid:AppLanguageKeys.notPaid,
                    textSize: 12,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: isFinished! ?AppColors.greenColor:AppColors.orangeColor,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextInAppWidget(
                        text:price,
                        textSize: 10,
                        fontWeightIndex: FontSelectionData.mediumFontFamily,
                        textColor: AppColors.greyColor,
                      ),
                      const SizedBox(width: 5),
                      Image.asset(AppImageKeys.coin, width: 15,color: AppColors.greyColor,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
