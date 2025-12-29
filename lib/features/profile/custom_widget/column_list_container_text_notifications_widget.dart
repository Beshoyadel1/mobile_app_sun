import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';

class ColumnListContainerTextNotificationsWidget extends StatelessWidget {
  final String firstText,secondText;
  bool isFinancialTransactions;
   ColumnListContainerTextNotificationsWidget({super.key,required this.firstText,required this.secondText,this.isFinancialTransactions=false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:firstText,
          textSize:isFinancialTransactions?10: 14,
          fontWeightIndex:isFinancialTransactions?FontSelectionData.mediumFontFamily: FontSelectionData.regularFontFamily,
          textColor:isFinancialTransactions?AppColors.greyColor: AppColors.darkColor,
        ),
        TextInAppWidget(
          text: secondText,
          textSize:isFinancialTransactions?10: 10,
          fontWeightIndex:isFinancialTransactions? FontSelectionData.regularFontFamily: FontSelectionData.mediumFontFamily,
          textColor:isFinancialTransactions? AppColors.darkColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
