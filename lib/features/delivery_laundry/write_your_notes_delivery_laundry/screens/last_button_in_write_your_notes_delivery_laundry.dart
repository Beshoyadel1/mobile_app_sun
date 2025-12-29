import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/the_request_has_been_accepted_delivery_laundry/the_request_has_been_accepted_delivery_laundry.dart';
import '../../../../../features/warranty/custom_widget/show_modal_bottom_sheet_widget.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';


class LastButtonInWriteYourNotesDeliveryLaundry extends StatelessWidget {
  const LastButtonInWriteYourNotesDeliveryLaundry({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text:AppLanguageKeys.sendRequest,
      textColor: AppColors.whiteColor,
      buttonColor: AppColors.orangeColor,
      textSize: 12,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 40,
      widthContainer:300,
      borderRadius: 30,
      onTap: () {
        showCustomBottomSheet(
            context: context,
            child: TheRequestHasBeenAcceptedDeliveryLaundry(),
          height: 300,
        );
      },
    );
  }
}
