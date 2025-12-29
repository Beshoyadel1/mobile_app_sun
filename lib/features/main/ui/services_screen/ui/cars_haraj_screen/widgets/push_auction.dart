import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import 'success_bottom_sheet.dart';

class PushAuction extends StatelessWidget {
  const PushAuction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          const SizedBox(height: 20,),
          TextFormFieldWidget(
            text: AppLanguageKeys.enterAuctionNumber,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            isColumn: true,
            textFormController:  TextEditingController(),
            textSize: 14,
            textColor: AppColors.darkGreyColor,
            fillColor: AppColors.whiteColor,
            borderColor: AppColors.lightGreyColor,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            isValidator: true,
            contentTextColor: AppColors.orangeColor,
          ),
          const TextInAppWidget(
            text: AppLanguageKeys.minAuctionPrice,
            textSize: 14,
            textColor: AppColors.darkGreyColor,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
          ),
          const SizedBox(height: 62,),
          ButtonWidget(
            heightContainer: 60,
            widthContainer: double.infinity,
            text: AppLanguageKeys.raiseAuction,
            textSize: 18,
            borderRadius: 30,
            textColor: AppColors.whiteColor,
            buttonColor: AppColors.orangeColor,
            onTap: () {
              Navigator.pop(context);
              SuccessBottomSheet.show(
                context,
                textShow:AppLanguageKeys.auctionCreatedSuccess,
                showOrderDetailsButton: false,
                showOrderReceived: true,
                showPleaseAttend: false,
              );
            },
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
