import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/delivery_laundry/write_your_notes_delivery_laundry/write_your_notes_delivery_laundry.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';


class LastButtonInListDataConfirmYourLocationDeliveryLaundry extends StatelessWidget {
  const LastButtonInListDataConfirmYourLocationDeliveryLaundry({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text:AppLanguageKeys.confirmCarLocation,
      textColor: AppColors.whiteColor,
      buttonColor: AppColors.orangeColor,
      textSize: 12,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 40,
      widthContainer:300,
      borderRadius: 30,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(WriteYourNotesDeliveryLaundry()),
        );
      },
    );
  }
}
