import 'package:flutter/material.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';

import '../../../../../../../core/theming/colors.dart';

import '../../cars_haraj_screen/widgets/success_bottom_sheet.dart';

class BottomSheetSuccessRequest extends StatelessWidget {
  BottomSheetSuccessRequest({
    super.key,
    this.text,
    this.textColor,
    this.buttonColor,
    this.showOrderReceived = true,
    this.showPleaseAttend = true,
    this.showOrderDetailsButton = true,
    this.textShow,
  });

  final orders = AppData.orders;
  final String? text;
  final Color? textColor;
  final Color? buttonColor;
  final String? textShow;

  final bool showOrderReceived;
  final bool showPleaseAttend;
  final bool showOrderDetailsButton;

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      heightContainer: 62,
      widthContainer: 369,
      text: text ?? AppLanguageKeys.payment,
      textSize: 18,
      borderRadius: 30,
      textColor: textColor ?? AppColors.darkColor,
      buttonColor: buttonColor ?? AppColors.whiteColor,
      onTap: () {
        SuccessBottomSheet.show(
          context,
          textShow: textShow,
          showOrderDetailsButton: showOrderDetailsButton,
          showOrderReceived: showOrderReceived,
          showPleaseAttend: showPleaseAttend,
        );

      },
    );
  }
}


