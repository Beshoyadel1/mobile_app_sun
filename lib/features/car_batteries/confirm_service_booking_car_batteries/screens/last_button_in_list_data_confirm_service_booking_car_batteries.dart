import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';

class LastButtonInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const LastButtonInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child:ButtonWidget(
          text: AppLanguageKeys.payment,
          textColor: AppColors.darkColor,
          buttonColor: AppColors.whiteColor,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          heightContainer: 40,
          borderRadius: 30,
          onTap: () {

          }

      )
    );
  }
}
