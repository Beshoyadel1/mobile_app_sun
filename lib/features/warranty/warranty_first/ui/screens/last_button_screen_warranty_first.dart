import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/warranty/custom_widget/show_modal_bottom_sheet_widget.dart';
import '../../../../../features/warranty/warranty_payment/ui/warranty_payment.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class LastButtonScreenWarrantyFirst extends StatelessWidget {
  const LastButtonScreenWarrantyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text:AppLanguageKeys.warrantySubscription,
      textColor: AppColors.whiteColor,
      buttonColor: AppColors.orangeColor,
      textSize: 12,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 40,
      widthContainer:180,
      borderRadius: 30,
      onTap: (){
        showCustomBottomSheet(context: context, child: WarrantyPayment(),height: 500,);
      },
    );
  }
}
