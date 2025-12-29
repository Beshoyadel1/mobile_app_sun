import 'package:flutter/cupertino.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/page_choose_payment_details_new.dart';
import '../../../../../features/Insurance/custom_widget/end_button_screen.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class ButtonIdentityVerificationNew extends StatelessWidget {
  const ButtonIdentityVerificationNew({super.key});

  @override
  Widget build(BuildContext context) {
    return EndButtonScreen(
        text: AppLanguageKeys.insuranceAccountRegistration,
        textColor: AppColors.whiteColor,
        buttonColor: AppColors.orangeColor,
        onTap:(){
          Navigator.of(context).push(
            NavigateToPageWidget(PageChoosePaymentDetailsNew()),
          );
        }
    );
  }
}
