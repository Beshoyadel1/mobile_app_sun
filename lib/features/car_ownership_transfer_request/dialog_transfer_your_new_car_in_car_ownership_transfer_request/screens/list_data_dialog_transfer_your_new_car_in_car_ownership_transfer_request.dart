import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../features/car_ownership_transfer_request/enter_your_password_car_ownership_transfer_request/screens/last_button_orange_without_icon.dart';
import '../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ListDataDialogTransferYourNewCarInCarOwnershipTransferRequest extends StatelessWidget {
  const ListDataDialogTransferYourNewCarInCarOwnershipTransferRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 30,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.transferYourNewCar,
          textSize: 15,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.orangeColor,
        ),
        TextInAppWidget(
          textAlign: TextAlign.center,
          text: 'قام المالك [اسم المالك القديم] بطلب نقل ملكية السيارة إلى حسابك يرجى التأكيد لإتمام عملية النقل',
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor,
        ),
        ImageWithTwoText(
            imageSrc: AppImageKeys.car1,
            title: 'هوندا',
            subTitle: 'CR  - V'
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LastButtonOrangeWithoutIcon(
                text: AppLanguageKeys.completeTransfer,
                onTap:(){
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
