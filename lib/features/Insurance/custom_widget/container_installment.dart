import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';

class ContainerInstallment extends StatelessWidget {
  final bool? isNextInstallment,isNotPaid;
  final String textInstallment,textIsPaid,textMoney;
  final String? textButton;
  final void Function()?onTap;

   ContainerInstallment({super.key,
     this.isNextInstallment=false,
     this.isNotPaid=false,
      this.textButton,
     required this.textInstallment,
     required this.textIsPaid,
     required this.textMoney,
     this.onTap
   }
   );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(vertical: 10,horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInAppWidget(
                  text: textInstallment,
                  textSize: 11,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: isNextInstallment!?AppColors.greyColor:AppColors.darkGreyColor,
                ),
                SizedBox(height: 10,),
                TextInAppWidget(
                  text: textIsPaid,
                  textSize: 11,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: isNextInstallment!?AppColors.greyColor
                      : isNotPaid!? AppColors.redColor
                      :AppColors.darkBlueColor
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    TextInAppWidget(
                      text: textMoney,
                      textSize: 11,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: isNextInstallment!?AppColors.greyColor
                                  :AppColors.darkColor
                    ),

                    SizedBox(width: 10,),

                    Image.asset(AppImageKeys.coin,width: 12,
                      color:isNextInstallment!?AppColors.greyColor
                        :AppColors.darkColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                if(isNextInstallment==false)
                  Container(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 5,horizontal: 15),
                    decoration: BoxDecoration(
                      color: isNotPaid!?AppColors.orangeColor:AppColors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color:AppColors.orangeColor.withOpacity(0.5),
                        width: 1,
                      ),
                    ),
                    child: TextInAppWidget(
                      text: textButton!,
                      textSize: 11,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: isNotPaid!?AppColors.whiteColor:AppColors.orangeColor,
                    ),

                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
